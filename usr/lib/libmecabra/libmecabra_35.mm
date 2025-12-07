void sub_2993CDA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 - 160) = a15;
  sub_299259FC8((v15 - 160));
  _Block_object_dispose((v15 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2993CDB14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 112);
  if (!v4)
  {
    return 0;
  }

  if ((a3 - a2) <= 0xFFFE)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2 + 0xFFFF;
  }

  if (v5 <= a2)
  {
    v11 = 0;
    v7 = a2;
    goto LABEL_32;
  }

  v6 = *(a1 + 328);
  v7 = a2;
  while (1)
  {
    v8 = v5 - v7;
    if ((*(a1 + 720) - 3) <= 2)
    {
      break;
    }

    v9 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    if (v8 >= 2 && (v9 & 0xE0) == 0xC0)
    {
      v10 = 2;
      v9 = v7[1] & 0x3F | ((v9 & 0x1F) << 6);
    }

    else
    {
      if (v8 < 3)
      {
        goto LABEL_22;
      }

      if ((v9 & 0xF0) == 0xE0)
      {
        v9 = (v9 << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
        v10 = 3;
      }

      else
      {
        if (v8 == 3)
        {
          goto LABEL_22;
        }

        if ((v9 & 0xF8) == 0xF0)
        {
          v9 = 0;
          v10 = 4;
        }

        else
        {
          if (v8 < 5)
          {
            goto LABEL_22;
          }

          if ((v9 & 0xFC) == 0xF8)
          {
            v9 = 0;
            v10 = 5;
          }

          else
          {
            if (v8 == 5 || (v9 & 0xFE) != 0xFC)
            {
LABEL_22:
              v9 = 0;
LABEL_11:
              v10 = 1;
              goto LABEL_15;
            }

            v9 = 0;
            v10 = 6;
          }
        }
      }
    }

LABEL_15:
    v11 = *(*(a1 + 712) + 4 * v9);
    if ((v6 & v11 & 0x3FFFF) != 0)
    {
      v7 += v10;
      v6 = v11;
      if (v7 < v5)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v8 >= 2)
  {
    v9 = *v7;
    v10 = 2;
    goto LABEL_15;
  }

  v11 = **(a1 + 712);
  if ((v6 & v11 & 0x3FFFF) != 0)
  {
    return 0;
  }

LABEL_32:
  v12 = 0;
  if (v7 && v7 != v5)
  {
    for (i = 0; i != 3072; i += 24)
    {
      v14 = &v39[i];
      *v14 = 0;
      *(v14 + 12) = 0;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
    }

    v15 = 0;
    v12 = 0;
    v29 = v5 - v7;
    v38[0] = *(a1 + 120);
    v38[1] = v4;
    v31 = v7 - a2;
    v16 = v11 >> 18;
    do
    {
      v30 = v15;
      v17 = *(v38 + v15);
      v33 = sub_299386BF8(v17, v7, v29, v39, 0x80uLL);
      if (v33)
      {
        v18 = 0;
        v19 = *(v17 + 352);
        v32 = *(v17 + 856);
        do
        {
          v20 = &v39[24 * v18];
          v21 = *(v20 + 6);
          sub_2992EA57C(&v35, v32, *(v20 + 2));
          v22 = v36;
          v23 = v37;
          if (v36 < v37)
          {
            v24 = *v35;
            do
            {
              v25 = v19 + 12 * *(v24 + 4 * v22);
              if ((*(v25 + 4) & 0x80) == 0)
              {
                sub_29920B70C(*(a4 + 16));
                *(v26 + 80) = 0u;
                *(v26 + 96) = 0u;
                *(v26 + 48) = 0u;
                *(v26 + 64) = 0u;
                *(v26 + 16) = 0u;
                *(v26 + 32) = 0u;
                *v26 = 0u;
                *(v26 + 48) = v7;
                *(v26 + 94) = *(v25 + 2);
                *(v26 + 92) = *(v25 + 6);
                *(v26 + 104) = *(v25 + 4);
                *(v26 + 84) = *v25;
                v27 = *(v17 + 380);
                *(v26 + 72) = *(v25 + 8) + (v27 << 28);
                *(v26 + 88) = v21;
                *(v26 + 90) = v21 + v31;
                v22 = v36;
                v24 = *v35;
                *(v26 + 80) = *(*v35 + 4 * v36) + (v27 << 28);
                *(v26 + 110) = v16;
                *(v26 + 24) = v12;
                v23 = v37;
                v12 = v26;
              }

              v36 = ++v22;
            }

            while (v22 < v23);
          }

          ++v18;
        }

        while (v18 != v33);
      }

      v15 = v30 + 8;
    }

    while (v30 != 8);
  }

  return v12;
}

uint64_t sub_2993CDEA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 80);
  if (v3 >> 28)
  {
    if (v3 >> 28 != 5)
    {
      goto LABEL_7;
    }

    v4 = 120;
  }

  else
  {
    v4 = 112;
  }

  result = *(result + v4);
  if (result)
  {
    return sub_299386CB0(result, v3 & 0xFFFFFFF, a3);
  }

LABEL_7:
  *(a3 + 23) = 0;
  *a3 = 0;
  return result;
}

uint64_t sub_2993CDEDC(uint64_t result, uint64_t a2, std::string::value_type *a3, std::string::size_type a4, void *a5, size_t a6, int a7, int a8)
{
  if (*(result + 1352))
  {
    v8 = a8 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && a7 != 0 && a4 != 0 && (a8 | a7) != 0)
  {
    v18 = result;
    result = sub_2993CDFBC(result, a2, a3, &a3[a4], 0, a7, a8);
    if (result != 0x7FFF)
    {
      v19 = result - 1;
      v20 = *(v18 + 1352);

      return sub_29924D6E4(v20, a3, a4, a5, a6, a7, a8, v19);
    }
  }

  return result;
}

uint64_t sub_2993CDFBC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v75 = *MEMORY[0x29EDCA608];
  v8 = a4 - a3;
  if (a3)
  {
    v9 = (a4 - a3) >> 1;
  }

  else
  {
    v9 = 0;
  }

  v67 = &unk_2A1F74930;
  v68 = 0uLL;
  v69 = 0;
  v70 = 0;
  v10 = *(a1 + 1336);
  v11 = a5 >> 7;
  v12 = a5 >> 8;
  if (v10 && (v13 = *(v10 + 184)) != 0 && (v14 = (*(*v13 + 24))(v13), v10 = *(a1 + 1336), v14))
  {
    v15 = *(v10 + 184);
  }

  else
  {
    sub_2993C727C(a3, v9, v11 & 0xE | v12 & 0x10 | (a5 >> 1) & 0x20, v10, *(a1 + 1344), buf);
    sub_2992726D0(&v68);
    v68 = v72;
    v69 = v73;
    v73 = 0;
    v70 = v74;
    *buf = &unk_2A1F74930;
    v72 = 0uLL;
    *v66 = &v72;
    sub_299259FC8(v66);
    v15 = &v67;
  }

  v60 = v15;
  v16 = sub_2993652F8(5u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_29918C000, v16, OS_LOG_TYPE_DEBUG, "[TokenizerImpl::getMinimumCost]", buf, 2u);
  }

  v17 = *(a1 + 8);
  if (v17 != *(a1 + 16))
  {
    if ((a5 & 0x200C4) == 0xC4)
    {
      v18 = 2304;
    }

    else
    {
      v18 = 2048;
    }

    v19 = ((v11 & 1) << 8) | 0x800;
    if ((a5 & 0x200C4) == 0xC4)
    {
      v20 = 2305;
    }

    else
    {
      v20 = 2049;
    }

    if ((a5 & 0x80000) != 0)
    {
      v19 = v18;
    }

    v21 = v19 | a5 & 0x1000;
    v22 = ((v11 & 1) << 8) | 0x801;
    if ((a5 & 0x80000) != 0)
    {
      v22 = v20;
    }

    v23 = v22 | a5 & 0x1000;
    v24 = a5 & 0x200C0;
    if ((a5 & 0x40) != 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = a5 & 0x1000 | ((v12 & 7) << 13) | ((v11 & 1) << 8);
    }

    if ((a5 & 0x40) != 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = (a5 & 0x1000 | ((v12 & 7) << 13) | ((v11 & 1) << 8)) + 1;
    }

    v27 = v26 & 0xFFFFF8FF;
    if (v24 == 192)
    {
      v27 = v26 | 0x100;
    }

    v55 = v27;
    v56 = v26;
    v28 = v24 != 192 || (a5 & 6) == 0;
    v58 = v25;
    v59 = (a5 >> 3) & 0x10000;
    v29 = v25 | 0x100;
    if (v28)
    {
      v29 = v25 & 0xF800;
    }

    v57 = v29;
    v30 = 0x7FFF;
    while (1)
    {
      if (*(*v17 + 380) == 3)
      {
        goto LABEL_80;
      }

      if ((a5 & 0x1700) == 0)
      {
        break;
      }

      v31 = *(a2 + 136);
      v32 = sub_299237120();
      v33 = v58;
      if (!*v32)
      {
        v33 = v57;
      }

      v34 = *v17;
      *buf = &unk_2A1F78C38;
      v73 = buf;
      v35 = (*(*v34 + 88))(v34, v33 | v59, a3, v8, v60, 0, 0, v31, 512, buf, 0, 0);
      sub_2993872B0(buf);
      if (v35)
      {
        for (i = 0; i != v35; ++i)
        {
          v37 = (*(**v17 + 136))(*v17, v31 + 24 * i);
          if (v37)
          {
            for (j = 0; j != v37; ++j)
            {
              v39 = (*(**v17 + 128))(*v17, v31 + 24 * i, j);
              if (*v39 < v30 && (v8 > 5 || v39[1] == a6 && v39[3] == a7))
              {
                v30 = *v39;
              }
            }
          }
        }

        goto LABEL_61;
      }

      if ((a5 & 4) != 0)
      {
        v45 = *(a2 + 136);
LABEL_66:
        v47 = sub_299237120();
        v48 = v56;
        if (!*v47)
        {
          v48 = v55;
        }

        v46 = v48 | v59;
LABEL_69:
        v49 = (*(**v17 + 80))(*v17, v46, a3, v8, 0, 0, 0, v45, 512);
        if (v49)
        {
          for (k = 0; k != v49; ++k)
          {
            v51 = (*(**v17 + 136))(*v17, v45 + 24 * k);
            if (v51)
            {
              for (m = 0; m != v51; ++m)
              {
                v53 = (*(**v17 + 128))(*v17, v45 + 24 * k, m);
                if (*v53 < v30 && (v8 > 5 || v53[1] == a6 && v53[3] == a7))
                {
                  v30 = *v53;
                }
              }
            }
          }
        }
      }

LABEL_80:
      if (++v17 == *(a1 + 16))
      {
        goto LABEL_83;
      }
    }

    *v66 = 0;
    memset(&v66[4], 0, 20);
    v40 = *v17;
    *buf = &unk_2A1F78CB8;
    v73 = buf;
    v41 = (*(*v40 + 88))(v40, 0, a3, v8, v60, 0, 0, v66, 1, buf, 0, 0);
    sub_2993872B0(buf);
    if (v41)
    {
      v42 = (*(**v17 + 136))(*v17, v66);
      if (v42)
      {
        for (n = 0; n != v42; ++n)
        {
          v44 = (*(**v17 + 128))(*v17, v66, n);
          if (*v44 < v30 && (v8 > 5 || v44[1] == a6 && v44[3] == a7))
          {
            v30 = *v44;
          }
        }
      }
    }

LABEL_61:
    if ((a5 & 4) != 0)
    {
      v45 = *(a2 + 136);
      if ((a5 & 0x1700) != 0)
      {
        goto LABEL_66;
      }

      v46 = 1;
      goto LABEL_69;
    }

    goto LABEL_80;
  }

  v30 = 0x7FFF;
LABEL_83:
  v67 = &unk_2A1F74930;
  *buf = &v68;
  sub_299259FC8(buf);
  return v30;
}

void sub_2993CE6D0(_Unwind_Exception *a1)
{
  *(v2 - 144) = v1;
  sub_299259FC8((v2 - 144));
  _Unwind_Resume(a1);
}

unint64_t sub_2993CE734(uint64_t a1, const void *a2, size_t __n, int a4, int a5, unsigned int a6, void *__dst, unint64_t a8)
{
  result = 0;
  if (__n && a4)
  {
    if (a6)
    {
      result = sub_2993CE7B4(a1, a2, __n, a4, a5, a6, __dst);
      if ((result > a8) | result & 1)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else if (a8 >= __n)
    {
      memcpy(__dst, a2, __n);
      return __n;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2993CE7B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 == v8)
  {
    return 0;
  }

  while (1)
  {
    v14 = *v7;
    if (*(*v7 + 792) == a5)
    {
      break;
    }

    if (++v7 == v8)
    {
      return 0;
    }
  }

  v16 = (a6 >> 2) & 1;
  if ((a6 & 0x10000) != 0)
  {
    v16 = 3;
  }

  v17 = v16 | 0x800;
  v18 = v16 | 0x900;
  v19 = v16 & 0xFFFFFEFF | (((a6 >> 7) & 1) << 8);
  v20 = v19 | 0x800;
  v21 = v19 & 0xFFFF1FFF | (((a6 >> 8) & 7) << 13);
  if ((a6 & 0x200C4) == 0xC4)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  if ((a6 & 0x80000) == 0)
  {
    v22 = v20;
  }

  if ((a6 & 0x40) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if ((*sub_299237120() & 1) == 0)
  {
    if ((a6 & 6) != 0 && (a6 & 0x200C0) == 0xC0)
    {
      v23 |= 0x100u;
    }

    else
    {
      v23 &= ~0x100u;
    }
  }

  v24 = *(*v14 + 96);

  return v24(v14, v23 & 0xFFFFEFFF | (a6 >> 3) & 0x10000, a2, a3, a4 & 0xFFFFFFF, a7);
}

uint64_t sub_2993CE918(void *a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  if (*(a2 + 109) == 11)
  {
    *a3 = sub_299230728(a1[193], *(a2 + 48), *(a2 + 88) >> 1, *(a2 + 72), a4);
    result = (2 * *a4);
    *a4 = result;
  }

  else
  {
    v6 = a1[1];
    v7 = a1[2];
    if (v6 != v7)
    {
      while (*(*v6 + 792) != *(a2 + 108))
      {
        if (++v6 == v7)
        {
          return *a4;
        }
      }

      *a3 = sub_2993856D8(*v6, *(a2 + 72) & 0xFFFFFFF, a4);
    }

    return *a4;
  }

  return result;
}

BOOL sub_2993CE9C4(void *a1, uint64_t a2)
{
  v2 = a1[192];
  if (v2)
  {
    v4 = *(*(a1[188] + (((a1[191] + v2 - 1) >> 9) & 0x7FFFFFFFFFFFF8)) + ((a1[191] + v2 - 1) & 0xFFF));
    a1[192] = v2 - 1;
    sub_2993D21A0(a1 + 187, 1);
    *(a2 + 792) = v4;
  }

  return v2 != 0;
}

uint64_t sub_2993CEA34(void *a1, const char **a2, uint64_t a3, int a4)
{
  v6 = 7;
  if (a4)
  {
    v6 = 10;
  }

  v7 = &a1[v6];
  v8 = a1[1];
  v9 = a1[2];
  while (v8 != v9)
  {
    v10 = *v7;
    v11 = v7[1];
    if (*v7 != v11)
    {
      while (*v10 != *v8)
      {
        if (++v10 == v11)
        {
          goto LABEL_15;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_15:
      ++v8;
    }

    else
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8, a2);
        v9 = a1[2];
      }

      a2 = v8 + 1;
      v12 = v9 - (v8 + 1);
      if (v9 != v8 + 1)
      {
        memmove(v8, a2, v9 - (v8 + 1));
      }

      v9 = (v8 + v12);
      a1[2] = v8 + v12;
    }
  }

  v7[1] = *v7;
  if (a3)
  {
    operator new();
  }

  return 1;
}

void sub_2993CEDA0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993D1F48();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29920B86C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL sub_2993CEE74(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1 + 1;
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        goto LABEL_7;
      }
    }
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_7:
  result = sub_2993CE9C4(a1, a2);
  if (result)
  {
    v7 = a2;
    sub_2993CEDA0(v5, &v7);
    return 1;
  }

  return result;
}

uint64_t sub_2993CEEF8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      v4 += 8;
      if (v4 == v3)
      {
        return 0;
      }
    }
  }

  if (v4 == v3)
  {
    return 0;
  }

  if (*(*v4 + 792) != 255)
  {
    v7 = *(*v4 + 792);
    sub_2993D2210(a1 + 187, &v7);
    v3 = a1[2];
  }

  v5 = v3 - (v4 + 8);
  if (v3 != v4 + 8)
  {
    memmove(v4, (v4 + 8), v3 - (v4 + 8));
  }

  a1[2] = v4 + v5;
  return 1;
}

uint64_t sub_2993CEFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 112);
  while (1)
  {
    v6 = *(&v9 + v5);
    v7 = sub_299385758(v6, a2, a3);
    if (v7)
    {
      result = *(*(v6 + 880) + 4 * v7);
      if (result)
      {
        break;
      }
    }

    v5 += 8;
    if (v5 == 16)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2993CF054(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = 0;
  v8 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 112);
  while (1)
  {
    v4 = *(&v7 + v3);
    if (*(v4 + 896) > a2)
    {
      v5 = *(*(v4 + 888) + 4 * a2);
      if (v5)
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 16)
    {
      return 0;
    }
  }

  return sub_2993856D8(v4, 4 * v5, a3);
}

uint64_t sub_2993CF114(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v19 = *MEMORY[0x29EDCA608];
  sub_2993CBA74(v1);
  sub_299233548(v3, "input-method-language", __p);
  v5 = (v4 + 184);
  if (*(v4 + 1495) < 0)
  {
    operator delete(*v5);
  }

  *v5 = *__p;
  v4[186] = v18;
  sub_299233548(v3, "dicdir", &v15);
  if (sub_2992E88CC(v4 + 42, v3))
  {
    sub_29924BB78(v3, "open-mutable-dictionary");
    operator new();
  }

  std::ios_base::clear((v4 + *(v4[128] - 24) + 1024), 0);
  v6 = sub_2991C0E9C(v4 + 128, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/tokenizer.cpp", 66);
  v7 = sub_2991C0E9C(v6, "(", 1);
  v8 = MEMORY[0x29C29BD30](v7, 347);
  v9 = sub_2991C0E9C(v8, ") [", 3);
  v10 = sub_2991C0E9C(v9, "property_.open(param)", 21);
  v11 = sub_2991C0E9C(v10, "] ", 2);
  v12 = sub_29920B4CC((v4 + 91));
  sub_2991C6CA8(__p, v12);
  if ((SBYTE7(v18) & 0x80u) == 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if ((SBYTE7(v18) & 0x80u) == 0)
  {
    sub_2991C0E9C(v11, v13, BYTE7(v18));
  }

  else
  {
    sub_2991C0E9C(v11, v13, __p[1]);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  return 0;
}

void sub_2993D035C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993D0554(const char *a1, char **a2)
{
  v3 = a1;
  v4 = strlen(a1);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v3[v4];
  v7 = 0x10000;
  do
  {
    v8 = v7;
    for (i = v3; ; ++i)
    {
      v10 = *i;
      if (v10 != 9 && v10 != 32)
      {
        break;
      }

      ++v3;
    }

    if (v10 == 34)
    {
      v11 = ++i;
      v12 = i;
      if (i < v6)
      {
        v11 = i;
        v12 = i;
        do
        {
          v13 = *v12;
          if (v13 == 34)
          {
            v14 = *++v12;
            if (v14 != 34)
            {
              break;
            }
          }

          *v11++ = v13;
          ++v12;
        }

        while (v12 < v6);
      }

      v15 = memchr(v12, 44, v6 - v12);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v6;
      }
    }

    else
    {
      v17 = memchr(i, 44, v6 - v3);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v6;
      }

      v16 = &i[v18 - v3];
      v11 = v16;
    }

    v7 = v8 - 1;
    if (v8 < 2)
    {
      *a2 = i;
      ++v5;
      if (v8 == 1)
      {
        return v5;
      }
    }

    else
    {
      *v11 = 0;
      *a2 = i;
      ++v5;
    }

    ++a2;
    v3 = (v16 + 1);
  }

  while ((v16 + 1) < v6);
  return v5;
}

void sub_2993D0694(uint64_t a1, const char *a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 1;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_2993D2454;
  v2[3] = &unk_29EF221B8;
  v2[6] = 10;
  v2[7] = "supplement";
  v2[8] = a2;
  v2[4] = v3;
  v2[5] = a1;
  sub_2992778EC(a2, v2);
  _Block_object_dispose(v3, 8);
}

uint64_t *sub_2993D0764(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29922F948(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2993D0838(uint64_t a1)
{
  sub_2991C6CA8(&__p, "max-grouping-size");
  v2 = sub_29920B95C(a1 + 8, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v2)
  {
    operator new();
  }

  if (*(v2 + 79) < 0)
  {
    sub_2991A110C(v10, *(v2 + 56), *(v2 + 64));
  }

  else
  {
    *v10 = *(v2 + 56);
    v11 = *(v2 + 72);
  }

  sub_2991D7954(&__p);
  v12 = 0;
  if (v11 >= 0)
  {
    v3 = v10;
  }

  else
  {
    v3 = v10[0];
  }

  if (v11 >= 0)
  {
    v4 = sub_2991C0E9C(&v14, v3, HIBYTE(v11), v10[0]);
  }

  else
  {
    v4 = sub_2991C0E9C(&v14, v3, v10[1], v10[0]);
  }

  if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0 || (v5 = MEMORY[0x29C29BC90](&__p, &v12), (*(v5 + *(*v5 - 24) + 32) & 5) != 0) || (v6 = sub_29920BAF0(&__p), (*(v6 + *(*v6 - 24) + 32) & 2) == 0))
  {
    operator new();
  }

  v9 = v12;
  __p = *MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v14 = v7;
  v15 = MEMORY[0x29EDC9570] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v16);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v18);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v9;
}

void sub_2993D0B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_2992510CC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2993D0BBC(void *a1)
{
  *a1 = &unk_2A1F78990;
  a1[1] = 0;
  sub_2993D0C4C(a1, "");
}

void sub_2993D0C08(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F789D8;
  v3 = v1[1];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993D0CBC(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D0D38(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_2993D0D94(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D0E10(uint64_t a1)
{
  sub_2993D0F14(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D0E48(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2993D0F14(uint64_t a1)
{
  *a1 = &unk_2A1F789F8;
  v2 = a1 + 8;
  sub_299213AB8(a1 + 8);
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 392) = *MEMORY[0x29EDC9538];
  *(a1 + 392 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 400) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  *(a1 + 400) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 408));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 504);
  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  sub_299213950(v2);
  return a1;
}

void sub_2993D1094(void *a1)
{
  sub_2993D10CC(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D10CC(void *a1)
{
  *a1 = &unk_2A1F78A28;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1070C802D7A0B02);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2993D116C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    sub_2993D16C4(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  sub_2993D15C0(a1, &v9);
}

void sub_2993D1594(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_2993D15C0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_2993D16C4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_2993D16C4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2993D177C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78A58;
  a2[1] = v2;
  return result;
}

void *sub_2993D17A8(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v9 = sub_2993D1B2C(v8, v5);
  memcpy(v9, v4, 2 * v5);
  result = sub_2993D1BF4(v8);
  *result = v9;
  *(result + 2) = 2 * v5;
  *(result + 6) = v6;
  *(result + 7) = v7;
  return result;
}

uint64_t sub_2993D1820(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D18DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78AD8;
  a2[1] = v2;
  return result;
}

void *sub_2993D1908(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v9 = sub_2993D1B2C(v8, v5);
  memcpy(v9, v4, 2 * v5);
  result = sub_2993D1BF4(v8);
  *result = v9;
  *(result + 2) = 2 * v5;
  *(result + 6) = v6;
  *(result + 7) = v7;
  return result;
}

uint64_t sub_2993D1980(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78B38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D1A3C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78B58;
  a2[1] = v2;
  return result;
}

void *sub_2993D1A68(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v9 = sub_2993D1B2C(v8, v5);
  memcpy(v9, v4, 2 * v5);
  result = sub_2993D1BF4(v8);
  *result = v9;
  *(result + 2) = 2 * v5;
  *(result + 6) = v6;
  *(result + 7) = v7;
  return result;
}

uint64_t sub_2993D1AE0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78BB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D1B2C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    operator new();
  }

  return sub_2993D1CAC(v2, a2);
}

void *sub_2993D1BF4(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    operator new();
  }

  v1 = *(a1 + 48);

  return sub_2993D1F60(v1);
}

uint64_t sub_2993D1CAC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (a1[2] - v3) >> 4;
  v5 = a1[5];
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (!v6)
  {
LABEL_6:
    operator new[]();
  }

  v8 = a1[4];
  v9 = (v3 + 16 * v5 + 8);
  v10 = v5 + 1;
  while (v8 + a2 >= *(v9 - 1))
  {
    v8 = 0;
    a1[4] = 0;
    a1[5] = v10;
    v9 += 2;
    ++v10;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  result = *v9 + 2 * v8;
  a1[4] = v8 + a2;
  return result;
}

void sub_2993D1E6C(void *a1)
{
  sub_2993D1EA4(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D1EA4(void *a1)
{
  *a1 = &unk_2A1F78BD8;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[2 * v5 + 1])
      {
        MEMORY[0x29C29BF70](v2[2 * v5 + 1], 0x1000C80BDFB0063);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 4);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2993D1F60(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  if (v2 == a1[6])
  {
    v2 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v3 = a1[1];
  if (v1 == (a1[2] - v3) >> 3)
  {
    operator new[]();
  }

  v4 = *(v3 + 8 * v1);
  a1[4] = v2 + 1;
  result = (v4 + 16 * v2);
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_2993D20C8(void *a1)
{
  sub_2993D2100(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D2100(void *a1)
{
  *a1 = &unk_2A1F78C08;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1050C80717B85FCLL);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2993D21A0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 9) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1000)
  {
    a2 = 1;
  }

  if (v5 < 0x2000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_2993D2210(unint64_t *a1, _BYTE *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = ((v4 - v5) << 9) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_2993D116C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  *(*(v5 + ((v7 >> 9) & 0x7FFFFFFFFFFFF8)) + (v7 & 0xFFF)) = *a2;
  ++a1[5];
}

uint64_t sub_2993D232C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D2408(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993D2454(uint64_t a1, char *__s, _BYTE *a3)
{
  v5 = strlen(__s);
  v6 = *(a1 + 48);
  if (v5 > v6)
  {
    v7 = v5;
    v8 = strncmp(__s, *(a1 + 56), *(a1 + 48));
    if (v6 >= 5 && v8 == 0 && !strncmp(&__s[v7 - 4], ".dic", 4uLL))
    {
      operator new();
    }
  }
}

void sub_2993D2704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993D2760(void *a1)
{
  *a1 = &unk_2A1F78D38;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1000C4000313F17);
  }

  return a1;
}

void sub_2993D27BC(void *a1)
{
  *a1 = &unk_2A1F78D38;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BFB0](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D2838(uint64_t a1)
{
  *a1 = &unk_2A1F78960;
  v2 = (a1 + 1360);
  sub_2993126D8((a1 + 1360));
  sub_2993126D8((a1 + 1416));
  sub_2993CBA74(a1);
  sub_2993D0764((a1 + 1544), 0);
  sub_2993D0E48(a1 + 1496);
  if (*(a1 + 1495) < 0)
  {
    operator delete(*(a1 + 1472));
  }

  if (*(a1 + 1439) < 0)
  {
    operator delete(*(a1 + 1416));
  }

  if (*(a1 + 1383) < 0)
  {
    operator delete(*v2);
  }

  if (*(a1 + 1311) < 0)
  {
    operator delete(*(a1 + 1288));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 1024) = *MEMORY[0x29EDC9538];
  *(a1 + 1024 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 1032) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1119) < 0)
  {
    operator delete(*(a1 + 1096));
  }

  *(a1 + 1032) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1040));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 1136);
  sub_2993D0F14(a1 + 336);
  v5 = *(a1 + 296);
  if (v5)
  {
    *(a1 + 304) = v5;
    operator delete(v5);
  }

  sub_2993D10CC((a1 + 240));
  *(a1 + 224) = &unk_2A1F789D8;
  v6 = *(a1 + 232);
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  *(a1 + 208) = &unk_2A1F789D8;
  v7 = *(a1 + 216);
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  std::mutex::~mutex((a1 + 128));
  v8 = *(a1 + 80);
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *(a1 + 64) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    *(a1 + 40) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_2993D2AC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F78D68;
  *(a1 + 24) = xmmword_29942A4E0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = a2;
  *(a1 + 200) = &unk_2A1F68058;
  *(a1 + 208) = 0;
  operator new();
}

void sub_2993D2E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15)
{
  v25 = v17[13];
  if (v25)
  {
    v17[14] = v25;
    operator delete(v25);
  }

  *v16 = v19;
  if (*v18)
  {
    (*(**v18 + 8))(*v18, a2, a3, a4, a5, a6, a7, a8);
  }

  v17[9] = v24;
  v26 = v17[10];
  if (v26)
  {
    (*(*v26 + 8))(v26, a2, a3, a4, a5, a6, a7, a8);
  }

  v17[7] = v23;
  v27 = v17[8];
  if (v27)
  {
    (*(*v27 + 8))(v27, a2, a3, a4, a5, a6, a7, a8);
  }

  v17[5] = v22;
  v28 = v17[6];
  if (v28)
  {
    (*(*v28 + 8))(v28, a2, a3, a4, a5, a6, a7, a8);
  }

  v17[3] = v21;
  v29 = v17[4];
  if (v29)
  {
    (*(*v29 + 8))(v29, a2, a3, a4, a5, a6, a7, a8);
  }

  v17[1] = v20;
  v30 = v17[2];
  if (v30)
  {
    (*(*v30 + 8))(v30, a2, a3, a4, a5, a6, a7, a8);
  }

  MEMORY[0x29C29BFB0](v17, 0xB1C40213A2802, a3, a4, a5, a6, a7, a8);
  *(v15 + 200) = a12;
  v31 = *(v15 + 208);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  a15 = a13;
  sub_2992CF180(&a15);
  v32 = *(v15 + 144);
  if (v32)
  {
    *(v15 + 152) = v32;
    operator delete(v32);
  }

  v33 = *(v15 + 120);
  if (v33)
  {
    *(v15 + 128) = v33;
    operator delete(v33);
  }

  v34 = *a14;
  if (*a14)
  {
    *(v15 + 104) = v34;
    operator delete(v34);
  }

  v35 = *(v15 + 72);
  if (v35)
  {
    *(v15 + 80) = v35;
    operator delete(v35);
  }

  if (*(v15 + 71) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

void sub_2993D3058(void *a1)
{
  if (!((a1[2] - *a1) >> 16))
  {
    operator new();
  }
}

void *sub_2993D3110(void *a1)
{
  *a1 = &unk_2A1F790A8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_2993D317C(uint64_t a1)
{
  *a1 = &unk_2A1F78D68;
  *(a1 + 216) = &unk_2A1F790A8;
  v2 = *(a1 + 224);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 200) = &unk_2A1F68058;
  v3 = *(a1 + 208);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v9 = (a1 + 168);
  sub_2992CF180(&v9);
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

void sub_2993D32C0(uint64_t a1)
{
  sub_2993D317C(a1);

  JUMPOUT(0x29C29BFB0);
}

double sub_2993D32F8(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = v2[2];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  v4 = v2[4];
  if (v4)
  {
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
  }

  v5 = v2[6];
  if (v5)
  {
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
  }

  v6 = v2[8];
  if (v6)
  {
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
  }

  v7 = v2[10];
  if (v7)
  {
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    *(v8 + 8) = 0;
  }

  *(a1 + 104) = *(a1 + 96);
  *(a1 + 80) = *(a1 + 72);
  v10 = *(a1 + 168);
  v9 = *(a1 + 176);
  if (v9 != v10)
  {
    do
    {
      v11 = v9 - 24;
      sub_29921B8CC(v9 - 24, *(v9 - 16));
      v9 = v11;
    }

    while (v11 != v10);
  }

  *(a1 + 176) = v10;
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  result = 0.75;
  *(a1 + 24) = xmmword_29942A4E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 232) = 0;
  return result;
}

uint64_t sub_2993D33C8(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*a1 + 80);

  return v5(a1, __s, v4);
}

void sub_2993D3430(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = a1 + 9;
  (**a1)(a1);
  v7 = a3 + 4;
  sub_2993D3714(v6, a3 + 4);
  v9 = a1[21];
  v8 = a1[22];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
  v11 = a3 + 4 - v10;
  if (a3 + 4 <= v10)
  {
    if (v7 < v10)
    {
      v16 = v9 + 24 * v7;
      if (v8 != v16)
      {
        do
        {
          v17 = v8 - 24;
          sub_29921B8CC(v8 - 24, *(v8 - 16));
          v8 = v17;
        }

        while (v17 != v16);
      }

      a1[22] = v16;
    }
  }

  else
  {
    v12 = a1[23];
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < v11)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v9) >> 3);
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = a3 + 4;
        }

        if (v13 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        v24 = a1 + 21;
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_29919600C();
      }

      sub_299212A8C();
    }

    v18 = v8 + 24 * v11;
    v19 = 24 * a3 - 8 * ((v8 - v9) >> 3) + 96;
    v20 = (v8 + 8);
    do
    {
      *v20 = 0;
      v20[1] = 0;
      *(v20 - 1) = v20;
      v20 += 3;
      v19 -= 24;
    }

    while (v19);
    a1[22] = v18;
  }

  sub_2993D3714(a1 + 12, a3 + 4);
  if (((*(*a1 + 168))(a1, 64) & 1) != 0 || (*(*a1 + 168))(a1, 4))
  {
    v21 = (*(*a1 + 200))(a1);
    v22 = sub_2993D58DC(v21, a3);
    memcpy(v22, a2, a3);
    a2 = v22;
  }

  a1[1] = a2;
  a1[2] = a3;
  bzero(a1[9], 8 * v7);
  v23 = a1[12];

  bzero(v23, 8 * v7);
}

void sub_2993D3714(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_29920B86C(a1, v10);
      }

      sub_29920B608();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t sub_2993D3828(void *a1)
{
  if (!a1[29])
  {
    return 0;
  }

  v1 = (*(*a1 + 200))(a1);
  v2 = sub_29925FDBC(v1);

  return sub_299228AA8(v2);
}

void sub_2993D3884(uint64_t a1, const char *a2)
{
  v83 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 200))(a1);
  v5 = strlen(a2);
  v6 = sub_2993D58DC(v4, v5 + 1);
  strncpy(v6, a2, v5 + 1);
  __p = 0;
  v79 = 0;
  v80 = 0;
  v7 = strlen(a2);
  v8 = strlen(v6);
  if (v7)
  {
    v9 = 0;
    v10 = &v6[v8];
    while (1)
    {
      v11 = v10;
      if (v6 != v10)
      {
        v11 = v6;
        while (*v11 != 10)
        {
          if (++v11 == v10)
          {
            v11 = v10;
            break;
          }
        }
      }

      *v11 = 0;
      v12 = v79;
      if (v79 >= v80)
      {
        v14 = (v79 - __p) >> 3;
        if ((v14 + 1) >> 61)
        {
          sub_29920B608();
        }

        v15 = (v80 - __p) >> 2;
        if (v15 <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        if (v80 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_29920BE54(&__p, v16);
        }

        v17 = (8 * v14);
        *v17 = v6;
        v13 = 8 * v14 + 8;
        v18 = v17 - (v79 - __p);
        memcpy(v18, __p, v79 - __p);
        v19 = __p;
        __p = v18;
        v79 = v13;
        v80 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v79 = v6;
        v13 = (v12 + 8);
      }

      v79 = v13;
      ++v9;
      if (v11 == v10)
      {
        break;
      }

      v6 = v11 + 1;
      if (v9 == v7)
      {
        v9 = v7;
        break;
      }
    }

    v20 = __p;
  }

  else
  {
    v20 = 0;
    v13 = 0;
    v9 = 0;
  }

  if (v9 != (v13 - v20) >> 3)
  {
    v21 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/lattice_impl.cpp", 69);
    v22 = sub_2991C0E9C(v21, "(", 1);
    v23 = MEMORY[0x29C29BD30](v22, 107);
    v24 = sub_2991C0E9C(v23, ") [", 3);
    v25 = sub_2991C0E9C(v24, "lsize == lines.size()", 21);
    sub_2991C0E9C(v25, "] ", 2);
    sub_299233ED4();
  }

  memset(&v77, 0, sizeof(v77));
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (v13 != v20)
  {
    v26 = 0;
    while (2)
    {
      v27 = v20[v26];
      if (strcmp("EOS", v27))
      {
        v81 = 0;
        v82 = 0;
        v28 = strlen(v27);
        v29 = 0;
        v30 = &v27[v28];
        v31 = &v81;
        while (1)
        {
          v32 = v29;
          if (v27 == v30)
          {
            break;
          }

          v33 = v27;
          while (*v33 != 9)
          {
            if (++v33 == v30)
            {
              goto LABEL_39;
            }
          }

          *v33 = 0;
          *v31++ = v27;
          v29 = 1;
          v27 = v33 + 1;
          if (v32)
          {
            goto LABEL_40;
          }
        }

        v27 = v30;
LABEL_39:
        *v30 = 0;
        *v31 = v27;
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_40:
        v34 = v81;
        v35 = strlen(v81);
        std::string::append(&v77, v81, v35);
        sub_2991C6CA8(v69, v34);
        sub_2992E8C28(&v74, v69);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        sub_2991C6CA8(v69, v82);
        sub_2992E8C28(&v71, v69);
        if (v70 < 0)
        {
          operator delete(v69[0]);
        }

        ++v26;
        v20 = __p;
        if (v26 < (v79 - __p) >> 3)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v72 - v71 != v75 - v74)
  {
    v36 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/lattice_impl.cpp", 69);
    v37 = sub_2991C0E9C(v36, "(", 1);
    v38 = MEMORY[0x29C29BD30](v37, 124);
    v39 = sub_2991C0E9C(v38, ") [", 3);
    v40 = sub_2991C0E9C(v39, "features.size() == surfaces.size()", 34);
    sub_2991C0E9C(v40, "] ", 2);
    sub_299233ED4();
  }

  v41 = (*(*a1 + 200))(a1);
  v42 = SHIBYTE(v77.__r_.__value_.__r.__words[2]);
  v43 = v77.__r_.__value_.__r.__words[0];
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v77.__r_.__value_.__l.__size_;
  }

  v45 = sub_2993D58DC(v41, size + 1);
  v46 = v45;
  if (v42 >= 0)
  {
    v47 = &v77;
  }

  else
  {
    v47 = v43;
  }

  strncpy(v45, v47, size + 1);
  (*(*a1 + 72))(a1, v46);
  v48 = (*(*a1 + 200))(a1);
  sub_29920B70C(*(v48 + 16));
  v50 = v49;
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *v49 = 0u;
  *(v49 + 48) = "BOS/EOS";
  *(v49 + 56) = "BOS/EOS";
  *(v49 + 109) = 2;
  v51 = (*(*a1 + 200))(a1);
  sub_29920B70C(*(v51 + 16));
  v53 = v52;
  *(v52 + 80) = 0u;
  *(v52 + 96) = 0u;
  *(v52 + 48) = 0u;
  *(v52 + 64) = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = 0u;
  *v52 = 0u;
  *(v52 + 48) = "BOS/EOS";
  *(v52 + 56) = "BOS/EOS";
  *(v52 + 109) = 3;
  *(v50 + 48) = *(a1 + 8);
  **(a1 + 72) = v50;
  if (v75 == v74)
  {
    v59 = v50;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    do
    {
      v57 = (*(*a1 + 200))(a1);
      sub_29920B70C(*(v57 + 16));
      v59 = v58;
      *(v58 + 104) = 0;
      *(v58 + 88) = 0u;
      *(v58 + 72) = 0u;
      *(v58 + 56) = 0u;
      *(v58 + 40) = 0u;
      *(v58 + 24) = 0u;
      *(v58 + 8) = 0u;
      *v58 = v50;
      *(v50 + 8) = v58;
      *(v58 + 48) = *(a1 + 8) + v56;
      v60 = v74;
      v61 = &v74[v54 * 8];
      v62 = v74[v54 * 8 + 23];
      if (v62 < 0)
      {
        v62 = *(v61 + 1);
      }

      *(v58 + 88) = v62;
      v63 = v61[23];
      if (v63 < 0)
      {
        v63 = *&v60[v54 * 8 + 8];
      }

      *(v58 + 90) = v63;
      *(v58 + 109) = 0;
      *(v58 + 84) = 0;
      *(v58 + 96) = 0;
      v64 = (*(*a1 + 200))(a1);
      v65 = &v71[v54];
      v66 = SHIBYTE(v71[v54 + 2]);
      if (v66 < 0)
      {
        v67 = *v65;
        v66 = v65[1];
      }

      else
      {
        v67 = &v71[v54];
      }

      v68 = sub_2993D58DC(v64, v66 + 1);
      *(v59 + 56) = strncpy(v68, v67, v66 + 1);
      *(*(a1 + 96) + 8 * v56) = v59;
      v56 += *(v59 + 88);
      *(*(a1 + 72) + 8 * v56) = v59;
      ++v55;
      v54 += 3;
      v50 = v59;
    }

    while (v55 < 0xAAAAAAAAAAAAAAABLL * ((v75 - v74) >> 3));
  }

  *(v59 + 8) = v53;
  *v53 = v59;
  v69[0] = &v71;
  sub_299212B90(v69);
  v71 = &v74;
  sub_299212B90(&v71);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v79 = __p;
    operator delete(__p);
  }
}

void sub_2993D3F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  a9 = &a15;
  sub_299212B90(&a9);
  a15 = &a18;
  sub_299212B90(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993D4038(void *a1)
{
  v2 = sub_2993D4138(a1);

  return sub_2993D4074(a1, v2);
}

uint64_t sub_2993D4074(void *a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  v4 = a1[24];
  if (v4)
  {
    if ((sub_2993D724C(v4, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_2993D4250(a1, a2);
  }

  if (sub_29925EC84(a2, 1))
  {
    *(*(a2 + 24) + (*(a2 + 8))++) = 0;
  }

  if ((*(a2 + 33) & 1) != 0 || (result = *(a2 + 24)) == 0)
  {
    (*(*a1 + 320))(a1, "output buffer overflow");
    return 0;
  }

  return result;
}

uint64_t sub_2993D4138(uint64_t a1)
{
  if (!*(a1 + 208))
  {
    operator new();
  }

  return *(a1 + 208);
}

uint64_t sub_2993D41D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = &unk_2A1F68B88;
  v5[1] = 0;
  v5[2] = a3;
  v5[3] = a2;
  v6 = 0;
  v3 = sub_2993D4074(a1, v5);
  sub_29925ED54(v5);
  return v3;
}

void sub_2993D423C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29925ED54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993D4250(uint64_t a1, uint64_t a2)
{
  v3 = *((*(*a1 + 16))(a1) + 8);
  v4 = (v3 + 8);
  if (*(v3 + 8))
  {
    do
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 88);
      if (sub_29925EC84(a2, v6))
      {
        memcpy((*(a2 + 24) + *(a2 + 8)), v5, v6);
        *(a2 + 8) += v6;
      }

      if (sub_29925EC84(a2, 1))
      {
        *(*(a2 + 24) + (*(a2 + 8))++) = 9;
      }

      v7 = sub_29925EDFC(a2, *(v3 + 56));
      if (sub_29925EC84(v7, 1))
      {
        *(*(a2 + 24) + (*(a2 + 8))++) = 10;
      }

      v3 = *v4;
      v8 = *v4;
      v9 = *(v8 + 8);
      v4 = (v8 + 8);
    }

    while (v9);
  }

  return sub_29925EDFC(a2, "EOS\n");
}

uint64_t sub_2993D4384(void *a1, uint64_t a2)
{
  v4 = sub_2993D4138(a1);

  return sub_2993D43C8(a1, a2, v4);
}

uint64_t sub_2993D43C8(void *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if (!a2)
  {
    v7 = "node is NULL";
LABEL_16:
    (*(*a1 + 320))(a1, v7);
    return 0;
  }

  v6 = a1[24];
  if (v6)
  {
    if ((sub_2993D838C(v6, a1, a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 88);
    if (sub_29925EC84(a3, v9))
    {
      memcpy((*(a3 + 24) + *(a3 + 8)), v8, v9);
      *(a3 + 8) += v9;
    }

    if (sub_29925EC84(a3, 1))
    {
      *(*(a3 + 24) + (*(a3 + 8))++) = 9;
    }

    sub_29925EDFC(a3, *(a2 + 56));
  }

  if (sub_29925EC84(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 24)) == 0)
  {
    v7 = "output buffer overflow";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2993D451C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_2A1F68B88;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = sub_2993D43C8(a1, a2, v6);
  sub_29925ED54(v6);
  return v4;
}

void sub_2993D4580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29925ED54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993D4594(void *a1, uint64_t a2)
{
  v4 = sub_2993D4138(a1);

  return sub_2993D45D8(a1, a2, v4);
}

uint64_t sub_2993D45D8(void *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if ((a2 - 513) < 0xFFFFFFFFFFFFFE00)
  {
    v4 = "nbest size must be 1 <= nbest <= 512";
LABEL_17:
    (*(*a1 + 320))(a1, v4);
    return 0;
  }

  v6 = a2;
  do
  {
    if (!(*(*a1 + 128))(a1))
    {
      break;
    }

    v7 = a1[24];
    if (v7)
    {
      if ((sub_2993D724C(v7, a1, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_2993D4250(a1, a3);
    }

    --v6;
  }

  while (v6);
  if (a1[24])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(v10, 0, sizeof(v10));
    BYTE13(v14) = 4;
    v8 = (*(*a1 + 64))(a1);
    *&v11 = v8 + (*(*a1 + 88))(a1);
    if (!sub_2993D838C(a1[24], a1, v10, a3))
    {
      return 0;
    }
  }

  if (sub_29925EC84(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 24)) == 0)
  {
    v4 = "output buffer overflow";
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2993D4794(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_2A1F68B88;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = sub_2993D45D8(a1, a2, v6);
  sub_29925ED54(v6);
  return v4;
}

void sub_2993D47F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29925ED54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993D481C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2 == *(a1 + 152))
  {
    return 0;
  }

  else
  {
    return *(v2 + a2);
  }
}

uint64_t sub_2993D4838(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (v2 == *(a1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void sub_2993D4854(void *a1, uint64_t a2, char a3)
{
  v5 = a1[18];
  if (v5 == a1[19])
  {
    v7 = (*(*a1 + 88))(a1) + 4;
    v5 = a1[18];
    v8 = a1[19];
    if (v7 <= &v8[-v5])
    {
      if (v7 < &v8[-v5])
      {
        a1[19] = v5 + v7;
      }
    }

    else
    {
      v9 = a1[20];
      if (v9 - v8 < v7 - &v8[-v5])
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_299212A8C();
      }

      v10 = v7 + v5;
      bzero(v8, v7 - &v8[-v5]);
      a1[19] = v10;
      v5 = a1[18];
    }
  }

  *(v5 + a2) = a3;
}

void *sub_2993D49B8(void *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 >= a3 || !a4)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  v8 = result + 15;
  if (result[15] == result[16])
  {
    v9 = (*(*result + 88))(result);
    v10 = v9 + 4;
    v11 = v7[15];
    v12 = v7[16];
    v13 = (v12 - v11) >> 3;
    if (v9 + 4 > v13)
    {
      v14 = v10 - v13;
      v15 = v7[17];
      if (v14 > (v15 - v12) >> 3)
      {
        if (!(v10 >> 61))
        {
          v16 = v15 - v11;
          if (v16 >> 2 > v10)
          {
            v10 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v10;
          }

          sub_2991C1E60(v8, v17);
        }

        sub_299212A8C();
      }

      bzero(v7[16], ((8 * v9 - (v12 - v11) + 24) & 0xFFFFFFFFFFFFFFF8) + 8);
      v18 = v12 + 8 * v14;
      goto LABEL_16;
    }

    if (v10 < v13)
    {
      v18 = v11 + 8 * v10;
LABEL_16:
      v7[16] = v18;
    }
  }

  v19 = (*(*v7 + 88))(v7);
  if (v19 < v5)
  {
    v5 = v19;
  }

  (*(*v7 + 288))(v7, a2, 1);
  result = (*(*v7 + 288))(v7, v5, 1);
  v20 = a2 + 1;
  if (a2 + 1 < v5)
  {
    do
    {
      result = (*(*v7 + 288))(v7, v20++, 2);
    }

    while (v5 != v20);
  }

  *(*v8 + 8 * a2) = a4;
  return result;
}

double sub_2993D4D7C(uint64_t a1, float a2)
{
  result = a2;
  *(a1 + 24) = result;
  return result;
}

double sub_2993D4DE4(uint64_t a1)
{
  sub_29920B70C(*(*(a1 + 224) + 16));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  return result;
}

uint64_t sub_2993D4E18(uint64_t a1)
{
  result = a1 + 48;
  if (*(a1 + 71) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_2993D4E3C(void *a1)
{
  *a1 = &unk_2A1F79048;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4EA8(void *a1)
{
  *a1 = &unk_2A1F79018;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4F14(void *a1)
{
  *a1 = &unk_2A1F78FE8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4F80(void *a1)
{
  *a1 = &unk_2A1F78FB8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4FEC(void *a1)
{
  *a1 = &unk_2A1F78F88;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D5058(void *a1)
{
  *a1 = &unk_2A1F78F58;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2993D50C8(void *a1)
{
  sub_2993D55FC(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5104(void *a1)
{
  sub_2993D513C(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D513C(void *a1)
{
  *a1 = &unk_2A1F78F28;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1070C80C36FC988);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2993D51DC(void *a1)
{
  *a1 = &unk_2A1F78F58;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5268(void *a1)
{
  *a1 = &unk_2A1F78F88;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D52F4(void *a1)
{
  *a1 = &unk_2A1F78FB8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5380(void *a1)
{
  *a1 = &unk_2A1F78FE8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D540C(void *a1)
{
  *a1 = &unk_2A1F79018;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5498(void *a1)
{
  *a1 = &unk_2A1F79048;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D5524(void *a1)
{
  *a1 = &unk_2A1F79078;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1060C8043D569EALL);
  }

  return a1;
}

void sub_2993D5580(void *a1)
{
  *a1 = &unk_2A1F79078;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1060C8043D569EALL);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D55FC(void *a1)
{
  *a1 = &unk_2A1F78EF8;
  a1[16] = &unk_2A1F79078;
  v2 = a1[17];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1060C8043D569EALL);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  a1[11] = &unk_2A1F79048;
  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[9] = &unk_2A1F79018;
  v5 = a1[10];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[7] = &unk_2A1F78FE8;
  v6 = a1[8];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  a1[5] = &unk_2A1F78FB8;
  v7 = a1[6];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  a1[3] = &unk_2A1F78F88;
  v8 = a1[4];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  a1[1] = &unk_2A1F78F58;
  v9 = a1[2];
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

void sub_2993D5850(void *a1)
{
  *a1 = &unk_2A1F790A8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D58DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    operator new();
  }

  v3 = a2 + 1;

  return sub_2992572BC(v2, v3);
}

uint64_t sub_2993D59A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  v3 = sub_299277498(a2);
  Default = CFAllocatorGetDefault();
  v6.location = 0;
  v6.length = 0;
  *a1 = CFStringTokenizerCreate(Default, 0, v6, 1uLL, v3);
  CFRelease(v3);
  return a1;
}

const void **sub_2993D5A00(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL sub_2993D5A34(uint64_t a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length < 2)
  {
    return 0;
  }

  v5 = Length;
  v6 = sub_2992793F8();
  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x29EDCA600];
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v7);
    v11 = CharacterAtIndex;
    if ((CharacterAtIndex > 0xFF || (*(v9 + 4 * CharacterAtIndex + 60) & 0x400) == 0) && !CFCharacterSetIsCharacterMember(v6, CharacterAtIndex))
    {
      v12 = *(a1 + 8);
      switch(v12)
      {
        case 1:
          v13 = dword_299418058;
          break;
        case 5:
          v13 = dword_29941C058;
          break;
        case 2:
          v13 = dword_29941A058;
          break;
        default:
          return 0;
      }

      if (((v13[v11 >> 5] >> ~v11) & 1) == 0)
      {
        return 0;
      }

      ++v8;
    }

    ++v7;
  }

  while (v5 != v7);
  return v8 >= 1 && vcvtd_n_f64_u64(v5, 1uLL) <= v8;
}

void sub_2993D5C14(_Unwind_Exception *exception_object)
{
  v1[9] = &unk_2A1F789D8;
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v1[7] = &unk_2A1F789D8;
  v4 = v1[8];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  v1[5] = &unk_2A1F789D8;
  v5 = v1[6];
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  v1[3] = &unk_2A1F789D8;
  v6 = v1[4];
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  v1[1] = &unk_2A1F789D8;
  v7 = v1[2];
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993D5D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 88);
      if (sub_29925EC84(a3, v7))
      {
        memcpy((*(a3 + 24) + *(a3 + 8)), v6, v7);
        *(a3 + 8) += v7;
      }

      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 9;
      }

      v8 = sub_29925EDFC(a3, *(v4 + 56));
      if (sub_29925EC84(v8, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 10;
      }

      v4 = *v5;
      v9 = *v5;
      v10 = *(v9 + 8);
      v5 = (v9 + 8);
    }

    while (v10);
  }

  sub_29925EDFC(a3, "EOS\n");
  return 1;
}

uint64_t sub_2993D5E8C(uint64_t a1)
{
  *a1 = &unk_2A1F790D8;
  v2 = a1 + 88;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 88) = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 96) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  *(a1 + 96) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 104));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 200);
  *(a1 + 72) = &unk_2A1F789D8;
  v5 = *(a1 + 80);
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  *(a1 + 56) = &unk_2A1F789D8;
  v6 = *(a1 + 64);
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  *(a1 + 40) = &unk_2A1F789D8;
  v7 = *(a1 + 48);
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  *(a1 + 24) = &unk_2A1F789D8;
  v8 = *(a1 + 32);
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  *(a1 + 8) = &unk_2A1F789D8;
  v9 = *(a1 + 16);
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  return a1;
}

void sub_2993D60E8(uint64_t a1)
{
  sub_2993D5E8C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D6120(void *a1, uint64_t a2)
{
  sub_299233548(a2, "output-format-type", &v86);
  a1[47] = sub_2993D5D5C;
  a1[48] = 0;
  if ((v88 & 0x80) == 0)
  {
    if (v88 != 4)
    {
      if (v88 != 6)
      {
        goto LABEL_19;
      }

      v4 = v86 == 1634427255 && WORD2(v86) == 26996;
      goto LABEL_12;
    }

    v5 = sub_2993D6DB8;
    if (v86 == 1701736302)
    {
LABEL_118:
      a1[47] = v5;
      a1[48] = 0;
LABEL_234:
      v69 = 1;
      goto LABEL_237;
    }

    v6 = &v86;
LABEL_18:
    v5 = sub_2993D6DC0;
    if (*v6 != 1886221668)
    {
      goto LABEL_19;
    }

    goto LABEL_118;
  }

  if (v87 == 4)
  {
    v6 = v86;
    v5 = sub_2993D6DB8;
    if (*v86 == 1701736302)
    {
      goto LABEL_118;
    }

    goto LABEL_18;
  }

  if (v87 != 6)
  {
    goto LABEL_19;
  }

  v4 = *v86 == 1634427255 && v86[2] == 26996;
LABEL_12:
  v5 = sub_2993D6CA8;
  if (v4)
  {
    goto LABEL_118;
  }

LABEL_19:
  sub_2991C6CA8(&v85, "%m\\t%H\\n");
  sub_2991C6CA8(&v84, "%m\\t%H\\n");
  sub_2991C6CA8(&v83, "");
  sub_2991C6CA8(&v82, "EOS\\n");
  sub_2991C6CA8(&v81, "");
  sub_2991C6CA8(&v80, "node-format");
  sub_2991C6CA8(&v79, "bos-format");
  sub_2991C6CA8(&v78, "eos-format");
  sub_2991C6CA8(&v77, "unk-format");
  sub_2991C6CA8(&v76, "eon-format");
  v7 = v88;
  if ((v88 & 0x80u) != 0)
  {
    v7 = v87;
  }

  if (!v7)
  {
    goto LABEL_61;
  }

  std::string::append(&v80, "-", 1uLL);
  if ((v88 & 0x80u) == 0)
  {
    v8 = &v86;
  }

  else
  {
    v8 = v86;
  }

  if ((v88 & 0x80u) == 0)
  {
    v9 = v88;
  }

  else
  {
    v9 = v87;
  }

  std::string::append(&v80, v8, v9);
  std::string::append(&v79, "-", 1uLL);
  if ((v88 & 0x80u) == 0)
  {
    v10 = &v86;
  }

  else
  {
    v10 = v86;
  }

  if ((v88 & 0x80u) == 0)
  {
    v11 = v88;
  }

  else
  {
    v11 = v87;
  }

  std::string::append(&v79, v10, v11);
  std::string::append(&v78, "-", 1uLL);
  if ((v88 & 0x80u) == 0)
  {
    v12 = &v86;
  }

  else
  {
    v12 = v86;
  }

  if ((v88 & 0x80u) == 0)
  {
    v13 = v88;
  }

  else
  {
    v13 = v87;
  }

  std::string::append(&v78, v12, v13);
  std::string::append(&v77, "-", 1uLL);
  if ((v88 & 0x80u) == 0)
  {
    v14 = &v86;
  }

  else
  {
    v14 = v86;
  }

  if ((v88 & 0x80u) == 0)
  {
    v15 = v88;
  }

  else
  {
    v15 = v87;
  }

  std::string::append(&v77, v14, v15);
  std::string::append(&v76, "-", 1uLL);
  if ((v88 & 0x80u) == 0)
  {
    v16 = &v86;
  }

  else
  {
    v16 = v86;
  }

  if ((v88 & 0x80u) == 0)
  {
    v17 = v88;
  }

  else
  {
    v17 = v87;
  }

  std::string::append(&v76, v16, v17);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v80;
  }

  else
  {
    v18 = v80.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v18, &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_60;
    }

LABEL_212:
    operator delete(__str.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_61;
    }

LABEL_213:
    v59 = 0;
    goto LABEL_214;
  }

  std::ios_base::clear((a1 + *(a1[11] - 24) + 88), 0);
  v60 = sub_2991C0E9C(a1 + 11, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/writer.cpp", 63);
  v61 = sub_2991C0E9C(v60, "(", 1);
  v62 = MEMORY[0x29C29BD30](v61, 57);
  v63 = sub_2991C0E9C(v62, ") [", 3);
  v64 = sub_2991C0E9C(v63, "!tmp.empty()", 12);
  v65 = sub_2991C0E9C(v64, "] ", 2);
  v66 = sub_2991C0E9C(v65, "unkown format type [", 20);
  if ((v88 & 0x80u) == 0)
  {
    v67 = &v86;
  }

  else
  {
    v67 = v86;
  }

  if ((v88 & 0x80u) == 0)
  {
    v68 = sub_2991C0E9C(v66, v67, v88);
  }

  else
  {
    v68 = sub_2991C0E9C(v66, v67, v87);
  }

  sub_2991C0E9C(v68, "]", 1);
  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_212;
  }

LABEL_60:
  if (!size)
  {
    goto LABEL_213;
  }

LABEL_61:
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v80;
  }

  else
  {
    v20 = v80.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v20, &__str);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v79;
  }

  else
  {
    v21 = v79.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v21, &v74);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v78;
  }

  else
  {
    v22 = v78.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v22, &v73);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v77;
  }

  else
  {
    v23 = v77.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v23, &v72);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v76;
  }

  else
  {
    v24 = v76.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v24, &__p);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v85.__r_.__value_.__l.__size_;
  }

  v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = __str.__r_.__value_.__l.__size_;
  }

  if (v25 != v26)
  {
    a1[47] = sub_2993D7138;
    a1[48] = 0;
    goto LABEL_120;
  }

  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v85;
  }

  else
  {
    v27 = v85.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (memcmp(v27, p_str, v25))
  {
    goto LABEL_116;
  }

  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v83.__r_.__value_.__l.__size_;
  }

  v30 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v74.__r_.__value_.__l.__size_;
  }

  if (v29 != v30)
  {
    goto LABEL_116;
  }

  v31 = (v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v83 : v83.__r_.__value_.__r.__words[0];
  v32 = (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v74 : v74.__r_.__value_.__r.__words[0];
  if (memcmp(v31, v32, v29))
  {
    goto LABEL_116;
  }

  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v82.__r_.__value_.__l.__size_;
  }

  v34 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v73.__r_.__value_.__l.__size_;
  }

  if (v33 != v34 || ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v35 = &v82) : (v35 = v82.__r_.__value_.__r.__words[0]), (v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v36 = &v73) : (v36 = v73.__r_.__value_.__r.__words[0]), memcmp(v35, v36, v33) || !sub_2993D70C4(&v84, &v72)))
  {
LABEL_116:
    a1[47] = sub_2993D7138;
    a1[48] = 0;
    if (!memcmp(v27, p_str, v25))
    {
LABEL_121:
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v83.__r_.__value_.__l.__size_;
      }

      v38 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v74.__r_.__value_.__l.__size_;
      }

      if (v37 != v38 || ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v39 = &v83) : (v39 = v83.__r_.__value_.__r.__words[0]), (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v40 = &v74) : (v40 = v74.__r_.__value_.__r.__words[0]), memcmp(v39, v40, v37)))
      {
        std::string::operator=(&v83, &v74);
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v82.__r_.__value_.__l.__size_;
      }

      v42 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v73.__r_.__value_.__l.__size_;
      }

      if (v41 != v42 || ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v43 = &v82) : (v43 = v82.__r_.__value_.__r.__words[0]), (v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v44 = &v73) : (v44 = v73.__r_.__value_.__r.__words[0]), memcmp(v43, v44, v41)))
      {
        std::string::operator=(&v82, &v73);
      }

      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v84.__r_.__value_.__l.__size_;
      }

      v46 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v72.__r_.__value_.__l.__size_;
      }

      v47 = &v72;
      if (v45 == v46)
      {
        v48 = (v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v84 : v84.__r_.__value_.__r.__words[0];
        v49 = (v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v72 : v72.__r_.__value_.__r.__words[0];
        if (!memcmp(v48, v49, v45))
        {
          if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = v85.__r_.__value_.__l.__size_;
          }

          v51 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v51 = __str.__r_.__value_.__l.__size_;
          }

          v47 = &__str;
          if (v50 == v51)
          {
            v52 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
            v53 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            if (!memcmp(v52, v53, v50))
            {
              v47 = &v85;
            }
          }
        }
      }

      std::string::operator=(&v84, v47);
      if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v81.__r_.__value_.__l.__size_;
      }

      v55 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = __p.__r_.__value_.__l.__size_;
      }

      if (v54 != v55 || ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v56 = &v81) : (v56 = v81.__r_.__value_.__r.__words[0]), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v56, p_p, v54)))
      {
        std::string::operator=(&v81, &__p);
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v85;
      }

      else
      {
        v58 = v85.__r_.__value_.__r.__words[0];
      }

      sub_2993D0C4C((a1 + 1), v58);
    }

LABEL_120:
    std::string::operator=(&v85, &__str);
    goto LABEL_121;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v59 = 1;
LABEL_214:
  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
    if (v59)
    {
      goto LABEL_234;
    }
  }

  else if (v59)
  {
    goto LABEL_234;
  }

  v69 = 0;
LABEL_237:
  if (v88 < 0)
  {
    operator delete(v86);
  }

  return v69;
}

void sub_2993D6B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  if (*(v53 - 145) < 0)
  {
    operator delete(*(v53 - 168));
  }

  if (*(v53 - 121) < 0)
  {
    operator delete(*(v53 - 144));
  }

  if (*(v53 - 97) < 0)
  {
    operator delete(*(v53 - 120));
  }

  if (*(v53 - 73) < 0)
  {
    operator delete(*(v53 - 96));
  }

  if (*(v53 - 49) < 0)
  {
    operator delete(*(v53 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993D6CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 88);
      if (sub_29925EC84(a3, v7))
      {
        memcpy((*(a3 + 24) + *(a3 + 8)), v6, v7);
        *(a3 + 8) += v7;
      }

      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v4 = *v5;
      v8 = *v5;
      v9 = *(v8 + 8);
      v5 = (v8 + 8);
    }

    while (v9);
  }

  if (sub_29925EC84(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 10;
  }

  return 1;
}

uint64_t sub_2993D6DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 64))(a2);
  v6 = (*(*a2 + 16))(a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(v7 + 109);
      if (v8 == 3)
      {
        v9 = a3;
        v10 = "EOS";
      }

      else
      {
        if (v8 != 2)
        {
          v18 = *(v7 + 48);
          v19 = *(v7 + 88);
          if (sub_29925EC84(a3, v19))
          {
            memcpy((*(a3 + 24) + *(a3 + 8)), v18, v19);
            *(a3 + 8) += v19;
          }

          goto LABEL_8;
        }

        v9 = a3;
        v10 = "BOS";
      }

      sub_29925EDFC(v9, v10);
LABEL_8:
      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v11 = sub_29925EDFC(a3, *(v7 + 56));
      if (sub_29925EC84(v11, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v12 = sub_2993D7318(a3, *(v7 + 48) - v5);
      if (sub_29925EC84(v12, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v13 = sub_2993D7318(a3, *(v7 + 48) - v5 + *(v7 + 88));
      if (sub_29925EC84(v13, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v14 = sub_2993D73F8(a3, *(v7 + 92));
      if (sub_29925EC84(v14, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v15 = sub_2993D73F8(a3, *(v7 + 94));
      if (sub_29925EC84(v15, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v16 = sub_2993D7318(a3, *(v7 + 109));
      if (sub_29925EC84(v16, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      sub_2993D74C0(a3, *(v7 + 96));
      for (i = *(v7 + 40); i; i = *(i + 8))
      {
        if (sub_29925EC84(a3, 1))
        {
          *(*(a3 + 24) + (*(a3 + 8))++) = 32;
        }

        sub_2993D7318(a3, *(i + 16));
      }

      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 10;
      }

      v7 = *(v7 + 8);
    }

    while (v7);
  }

  return 1;
}

BOOL sub_2993D70C4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_2993D7138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = (*(*a2 + 16))(a2);
  sub_2993D75A0(v6, a2, v5, v6, a3);
}

uint64_t sub_2993D724C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !(*(*a2 + 8))(a2))
  {
    return 0;
  }

  v6 = *(a1 + 376);
  v7 = *(a1 + 384);
  v8 = (a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, a2, a3);
}

uint64_t sub_2993D7318(uint64_t a1, unsigned int a2)
{
  *&v12[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if ((a2 & 0x80000000) != 0)
  {
    p_s = v12;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAu;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v12;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  return sub_29925EDFC(a1, &__s);
}

uint64_t sub_2993D73F8(uint64_t a1, int a2)
{
  *&v10[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if (a2)
  {
    do
    {
      v3 = a2;
      *p_s++ = (a2 % 0xAu) | 0x30;
      LOWORD(a2) = a2 / 0xAu;
    }

    while (v3 >= 0xA);
  }

  else
  {
    p_s = v10;
    __s = 48;
  }

  *p_s = 0;
  v4 = p_s - 1;
  if (v4 > &__s)
  {
    v5 = v10;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
    }

    while (v5++ < v4);
  }

  return sub_29925EDFC(a1, &__s);
}

uint64_t sub_2993D74C0(uint64_t a1, unint64_t a2)
{
  *&v12[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if ((a2 & 0x8000000000000000) != 0)
  {
    p_s = v12;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v12;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  return sub_29925EDFC(a1, &__s);
}

void sub_2993D82EC(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    MEMORY[0x29C29BF70](a20, 0x10C80436913F5, a3, a4, a5, a6, a7, a8);
  }

  if (a23)
  {
    MEMORY[0x29C29BF70](a23, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993D838C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 109);
  if (v4 <= 4)
  {
    sub_2993D75A0(a1, a2, *(a1 + qword_29942A720[v4]), a3, a4);
  }

  return 1;
}

uint64_t sub_2993D83BC(uint64_t a1, const __CFURL *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v3 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x29EDB8ED8], a2, @"VulgarWordUsage.db", 0);
    v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::VulgarWordUsageDatabaseWrapper] database: %@", buf, 0xCu);
    }

    v6 = LXVulgarWordUsageDatabaseCreate();
    sub_2992917C8(a1, v6);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  return a1;
}

void sub_2993D84DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993D854C(uint64_t a1, CFStringRef theString1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!theString1 || (v4 = *(a1 + 8)) == 0 || CFStringCompare(theString1, v4, 0))
  {
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = theString1;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::setAppContext] set appContext: %@", &v7, 0xCu);
      if (!theString1)
      {
        goto LABEL_9;
      }
    }

    else if (!theString1)
    {
      goto LABEL_9;
    }

    if (CFStringGetLength(theString1) >= 1)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString1);
LABEL_10:
      sub_299219AB4((a1 + 8), Copy);
      return;
    }

LABEL_9:
    Copy = 0;
    goto LABEL_10;
  }
}

void sub_2993D8654(uint64_t a1, CFStringRef theString1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (!theString1 || (v4 = *(a1 + 16)) == 0 || CFStringCompare(theString1, v4, 0))
  {
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = theString1;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::setRecipientContext] set recipientContext: %@", &v7, 0xCu);
      if (!theString1)
      {
        goto LABEL_9;
      }
    }

    else if (!theString1)
    {
      goto LABEL_9;
    }

    if (CFStringGetLength(theString1) >= 1)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString1);
LABEL_10:
      sub_299219AB4((a1 + 16), Copy);
      return;
    }

LABEL_9:
    Copy = 0;
    goto LABEL_10;
  }
}

BOOL sub_2993D875C(void *a1, uint64_t a2)
{
  result = 0;
  v14 = *MEMORY[0x29EDCA608];
  if (a2 && *a1)
  {
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1[1];
      v7 = a1[2];
      v8 = 138412802;
      v9 = a2;
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::incrementUsageCount] vulgarWord: %@, app: %@, recipient: %@", &v8, 0x20u);
    }

    return LXVulgarWordUsageDatabaseIncrementUsageCount() != 0;
  }

  return result;
}

uint64_t sub_2993D8854(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  result = *a1;
  if (result)
  {
    CanAutocorrect = LXVulgarWordUsageDatabaseCanAutocorrect();
    v6 = sub_2993652F8(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = a1[1];
      v8 = a1[2];
      v9 = 138413058;
      v10 = a2;
      v11 = 1024;
      v12 = CanAutocorrect;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_29918C000, v6, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::canAutocorrect] vulgarWord: %@, result: %d, app: %@, recipient: %@", &v9, 0x26u);
    }

    return CanAutocorrect != 0;
  }

  return result;
}

BOOL sub_2993D894C(void *a1)
{
  if (!*a1)
  {
    return 0;
  }

  sub_2993D854C(a1, 0);
  sub_2993D8654(a1, 0);
  return LXVulgarWordUsageDatabaseReset() != 0;
}

uint64_t sub_2993D89A8(uint64_t a1, const __CFString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  *a1 = &unk_2A1F79108;
  *(a1 + 8) = CFStringCreateWithSubstring(0, a2, a3);
  *(a1 + 16) = location;
  *(a1 + 24) = length;
  *(a1 + 32) = CFStringGetCharacterAtIndex(a2, length + location - 1) == 39;
  return a1;
}

uint64_t sub_2993D8A28(uint64_t a1)
{
  *a1 = &unk_2A1F79108;
  CFRelease(*(a1 + 8));
  return a1;
}

void sub_2993D8A78(uint64_t a1)
{
  sub_2993D8A28(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D8AB0(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  Length = CFStringGetLength(theString);
  v7 = CFStringGetLength(theString);
  v8 = *(a1 + 24);
  if (v7 - a3 >= v8)
  {
    if (v8 < 1)
    {
LABEL_8:
      v9 = *(a1 + 32) | (a3 == Length);
      return v9 & 1;
    }

    v10 = 0;
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, a3 + v10);
      if (CharacterAtIndex != CFStringGetCharacterAtIndex(*(a1 + 8), v10))
      {
        break;
      }

      if (v8 == ++v10)
      {
        a3 += v10;
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  return v9 & 1;
}

void *sub_2993D8B70(void *a1)
{
  *a1 = &unk_2A1F79128;
  sub_2993D8BC4(a1);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2993D8BC4(void *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v2 != v3)
  {
    do
    {
      result = *v2;
      if (*v2)
      {
        result = (*(*result + 8))(result);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v1[1];
  }

  v1[2] = v2;
  v1[4] = 0;
  return result;
}

void sub_2993D8C40(void *a1)
{
  sub_2993D8B70(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D8C78(void *result, unint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v5 = result[1];
    for (i = result[2]; a2 < (i - v5) >> 3; v2[2] = i)
    {
      result = *(i - 8);
      if (result)
      {
        result = (*(*result + 8))(result);
        v5 = v2[1];
        i = v2[2];
      }

      i -= 8;
    }
  }

  else
  {

    return sub_2993D8BC4(result);
  }

  return result;
}

CFIndex sub_2993D8D10(CFIndex result, CFStringRef theString, CFIndex a3)
{
  if (*(result + 16) - *(result + 8) <= 0x50uLL)
  {
    result = CFStringGetLength(theString);
    if (result > a3)
    {
      v5 = result;
      v6 = result - 1;
      v7 = a3;
      do
      {
        if (v7 == v6 || (result = CFStringGetCharacterAtIndex(theString, v7), result == 39))
        {
          operator new();
        }

        ++v7;
      }

      while (v7 != v5);
    }
  }

  return result;
}

void sub_2993D8E10(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993D9034();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29920B86C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_2993D8EE4(void *a1, CFStringRef theString, int a3)
{
  v3 = a3;
  if (theString && a3)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v8 = 0;
      v7 = a1[4];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      while (sub_2993D8AB0(*(v6 + 8 * v7), theString, v8))
      {
        v6 = a1[1];
        v9 = a1[2];
        v8 += *(*(v6 + 8 * v7++) + 24);
        a1[4] = v7;
        if (v7 >= (v9 - v6) >> 3)
        {
          goto LABEL_14;
        }
      }

      a1[4] = v7;
    }

LABEL_14:
    sub_2993D8C78(a1, v7);

    sub_2993D8D10(a1, theString, v8);
  }

  else
  {
    sub_2993D8BC4(a1);
    if (theString && (v3 & 1) == 0)
    {
      operator new();
    }
  }
}

void sub_2993D904C(uint64_t a1@<X1>, void *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X2>, int a5@<W3>)
{
  v5 = (**(a3 + 8) >> 4) & 0x20 | (((**(a3 + 8) >> 5) & 1) << 7) | (**(a3 + 8) >> 2) & 0x40 | (**(a3 + 8) >> 7) & 0x18;
  if (a5)
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  sub_2992B8778(a1, a2, *a4, *(a4 + 8), v6);
}

void sub_2993D9098(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v55 = a4;
  v56 = a5;
  if ((atomic_load_explicit(&qword_2A1461818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461818))
  {
    qword_2A1461810 = sub_299237120();
    __cxa_guard_release(&qword_2A1461818);
  }

  v7 = sub_2993D94B8();
  if (*qword_2A1461810)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = *a1;
  if (*a1)
  {
    if (*(v9 + 96))
    {
      v38 = *(v9 + 8);
      if (v38)
      {
        if (v56 <= 0x20)
        {
          v10 = v7;
          v41 = *(a3 + 16);
          v37 = v8;
          sub_2992547B8(&v48, v9 + 248, &v41, &v55);
          v11 = v37;
          v12 = 0x7FFFFFFF;
          v13 = v10;
          while (1)
          {
            if (v50 < v13)
            {
              goto LABEL_50;
            }

            v14 = *(v48[13] + 8 * (v50 - v13));
            v15 = ((v54 - __p) >> 1) - v14;
            if (!__p)
            {
              v15 = 0;
            }

            v47[0] = __p + 2 * v14;
            v47[1] = v15;
            if (!v51)
            {
              goto LABEL_50;
            }

            v16 = (v52 - v51) >> 1 == v14 || v15 == 0;
            if (v16 || v15 < v11)
            {
              goto LABEL_50;
            }

            if ((*a1[1] & 2) != 0)
            {
              v19 = *a1[2];
              if (v19)
              {
                v18 = CFArrayGetCount(*(v19 + 32)) == 0;
              }

              else
              {
                v18 = 1;
              }
            }

            else
            {
              v18 = 0;
            }

            sub_2993D904C(v38, &v45, a1, v47, v18);
            v20 = v50 - v13;
            if (v50 >= v13)
            {
              v21 = ((v48[8] - v48[7]) >> 1) - *(v48[13] + 8 * v20);
              if (v21 != -1)
              {
                v22 = *(v48[10] + 8 * v20);
                v23 = ((v48[5] - v48[4]) >> 1) - v22;
                v24 = v49 + 2 * v22;
                if (!v49)
                {
                  v23 = 0;
                }

                v44[0] = v24;
                v44[1] = v23;
                *&v41 = v21;
                *(&v41 + 1) = v23;
                v42 = v13;
                v43 = v44;
                if (v45 != v46)
                {
                  v39 = sub_2993DA26C(*a1[1]);
                  v25 = *(a3 + 48);
                  memset(&v57, 0, sizeof(v57));
                  for (i = *(*a1 + 16); i != *(*a1 + 24); i = (i + 32))
                  {
                    if (i[1].__r_.__value_.__s.__data_[4] == 1)
                    {
                      std::string::operator=(&v57, i);
                      break;
                    }
                  }

                  v27 = v45;
                  if (v46 != v45)
                  {
                    v28 = 0;
                    v29 = 0;
                    v30 = 0;
                    do
                    {
                      v31 = sub_29920B95C(v27 + v28, &v57);
                      v32 = (*(**(v31 + 56) + 16))(*(v31 + 56));
                      v33 = ((v32[1] - *v32) >> 1) - v41;
                      if (v25 <= 0 && v33 <= *(a3 + 40))
                      {
                        v34 = 0;
                      }

                      else
                      {
                        if ((*(a1[1] + 3) & 2) != 0)
                        {
                          goto LABEL_46;
                        }

                        v34 = 2;
                      }

                      v12 = sub_2993DA300(v12, v33, a3);
                      v35 = sub_2993DA3C0(v34, v29, *a1[1]);
                      v36 = sub_2993D9B10(a1, a2, v45 + v28, a3, v12, v35, v34, &v41);
                      if (v30 == 11)
                      {
                        break;
                      }

                      v29 += v36;
                      if (v29 == v39)
                      {
                        break;
                      }

LABEL_46:
                      ++v30;
                      v27 = v45;
                      v28 += 32;
                    }

                    while (v30 < (v46 - v45) >> 5);
                  }

                  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v57.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            *&v41 = &v45;
            sub_299225D98(&v41);
            v11 = v37;
LABEL_50:
            if (--v13 > v10)
            {
              if (__p)
              {
                v54 = __p;
                operator delete(__p);
              }

              if (v51)
              {
                v52 = v51;
                operator delete(v51);
              }

              return;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2993D94B8()
{
  if ((atomic_load_explicit(&qword_2A1461828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461828))
  {
    qword_2A1461820 = sub_299237120();
    __cxa_guard_release(&qword_2A1461828);
  }

  if (*qword_2A1461820)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

void *sub_2993D9544(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2993D9588(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2993D94B8();
  v6 = *a1;
  if (*a1)
  {
    if (*(v6 + 96) == 1)
    {
      v29 = *(v6 + 8);
      if (v29)
      {
        v7 = *(a3 + 184);
        v28 = v5;
        if ((*(*v7 + 24))(v7) <= 0x20)
        {
          v8 = *a1;
          v34 = *(a3 + 96);
          v9 = sub_2992FE060();
          sub_2992547B8(v35, v8 + 248, &v34, v9);
          sub_2993C4710(v35[2], v7, &v34);
          v27 = v38;
          v26 = (v39 - v38) >> 1;
          v10 = v28;
          v11 = v28;
          do
          {
            if (v37 >= v11)
            {
              v12 = *(*(v35[0] + 104) + 8 * (v37 - v11));
              if (v12 != -1)
              {
                if ((*a1[1] & 2) != 0)
                {
                  v14 = *a1[2];
                  if (v14)
                  {
                    v13 = CFArrayGetCount(*(v14 + 32)) == 0;
                  }

                  else
                  {
                    v13 = 1;
                  }
                }

                else
                {
                  v13 = 0;
                }

                sub_2992B8B58(v29, v12, v27, v26, v13, &v32);
                if (v32 != v33)
                {
                  v15 = v37 - v11;
                  if (v37 >= v11)
                  {
                    v18 = ((*(v35[0] + 64) - *(v35[0] + 56)) >> 1) - *(*(v35[0] + 104) + 8 * v15);
                    v19 = *(*(v35[0] + 80) + 8 * v15);
                    v17 = v36 + 2 * v19;
                    if (v36)
                    {
                      v16 = (((*(v35[0] + 40) - *(v35[0] + 32)) >> 1) - v19);
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
                    v18 = -1;
                  }

                  v31[0] = v17;
                  v31[1] = v16;
                  v30[0] = v18;
                  v30[1] = v16;
                  v30[2] = v11;
                  v30[3] = v31;
                  sub_2993DA26C(*a1[1]);
                  memset(&v43, 0, sizeof(v43));
                  for (i = *(*a1 + 16); i != *(*a1 + 24); i = (i + 32))
                  {
                    if (i[1].__r_.__value_.__s.__data_[4] == 1)
                    {
                      std::string::operator=(&v43, i);
                      break;
                    }
                  }

                  if (v33 != v32)
                  {
                    v21 = sub_29920B95C(v32, &v43);
                    (*(**(v21 + 56) + 16))(*(v21 + 56));
                    v22 = (v32 + 24);
                    v23 = *(v32 + 47);
                    if (v23 < 0)
                    {
                      v22 = *v22;
                      v23 = *(v32 + 32);
                    }

                    v24 = v23 - v30[0];
                    if (v22)
                    {
                      v25 = v24;
                    }

                    else
                    {
                      v25 = 0;
                    }

                    v42 = CFStringCreateWithCharacters(0, &v22[v30[0]], v25);
                    operator new();
                  }

                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v43.__r_.__value_.__l.__data_);
                  }
                }

                v30[0] = &v32;
                sub_2992BA7F4(v30);
                v10 = v28;
              }
            }

            v11 = (v11 - 1);
          }

          while (v11 <= v10);
          *&v34 = &unk_2A1F74930;
          v30[0] = &v34 + 1;
          sub_299259FC8(v30);
          if (__p)
          {
            v41 = __p;
            operator delete(__p);
          }

          if (v38)
          {
            v39 = v38;
            operator delete(v38);
          }
        }
      }
    }
  }
}

uint64_t sub_2993D9B10(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, uint64_t *a8)
{
  v66[4] = *MEMORY[0x29EDCA608];
  v12 = sub_2992B8D0C(a3, off_2A145F3B0[0]);
  v13 = sub_2992B8D0C(a3, off_2A145F3B8);
  v51 = sub_2992B8DA4(a3, off_2A145F390[0]);
  v50 = sub_2992B8DA4(a3, off_2A145F388[0]);
  v14 = sub_2992B8D0C(a3, off_2A145F398[0]);
  v15 = *v12;
  v16 = v12[1] - *v12;
  v17 = *v13;
  v18 = v13[1] - *v13;
  v19 = v18 >> 1;
  v65[0] = v17;
  v65[1] = v18 >> 1;
  if (*a8 > (v16 >> 1))
  {
    return 0;
  }

  v20 = v14;
  if (a8[2] > ((v14[1] - *v14) >> 1) || !sub_2992FE1C4(v65, a8[3]))
  {
    return 0;
  }

  v47 = a6;
  v48 = a2;
  v21 = a8[1];
  v22 = v19 - v21;
  v49 = v19 > v21 && *(v17 + 2 * v21) == 32;
  v23 = *a1;
  buf[0] = 0;
  v24 = sub_2993232FC((v23 + 248), buf);
  if (!(buf[0] & 1 | !v24 | v49 | (v17 == 0)) && v19 != v21)
  {
    v25 = (v17 + 2 * v21);
    v26 = MEMORY[0x29EDCA600];
    while (1)
    {
      v28 = *v25++;
      v27 = v28;
      if (!(v28 <= 0x7FuLL ? *(v26 + 4 * v27 + 60) & 0x40000 : __maskrune(v27, 0x40000uLL)))
      {
        break;
      }

      if (!--v22)
      {
        *buf = 0;
        __dst = 0;
        v64 = 0;
        operator new();
      }
    }
  }

  *buf = 0;
  __dst = 0;
  v64 = 0;
  sub_299218E20(buf, v19);
  sub_299218EBC(buf, __dst, (v17 + 2 * a8[1]), (v17 + v18), (v18 - 2 * a8[1]) >> 1);
  v30 = *a8;
  v31 = (v15 + 2 * *a8);
  v60 = 0;
  v61 = 0;
  v59 = 0;
  sub_2992220D8(&v59, v31, (v15 + v16), (v16 - 2 * v30) >> 1);
  v32 = *a8;
  v33 = a8[1];
  v34 = v20[1];
  v35 = *v20 + 2 * a8[2];
  v57 = 0;
  v58 = 0;
  __p = 0;
  if (v35 != v34)
  {
    sub_2991A6584(&__p, (v34 - v35) >> 1);
  }

  v36 = sub_2992DC9CC(a1[3], a4, *(a4 + 16), *(a4 + 24), v59, ((v60 - v59) >> 1), *buf, ((__dst - *buf) >> 1), v51 >> v32, v50 >> v33, &__p, a5, 76, a7, 0, 0);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (*buf)
  {
    __dst = *buf;
    operator delete(*buf);
  }

  if (!v36)
  {
    return 0;
  }

  if (((*(*v36 + 176))(v36) & 1) == 0)
  {
    *buf = v36;
    v39 = sub_29927363C(v48 + 1, buf);
    if (v39)
    {
      v40 = v39[3];
    }

    else
    {
      v40 = -1;
    }

    v41 = *a1[1];
    if ((~v41 & 0x6000000) != 0 && (v41 & 0x10000000) == 0)
    {
      if (v40 != -1)
      {
        v42 = *(v48[6] + 8 * v40);
        v43 = (*(*v42 + 112))(v42);
        (*(*v36 + 488))(v36, v43);
      }

      if (v47)
      {
        v36[1] = v47;
      }

      LOBYTE(v59) = 0;
      (*(*v36 + 528))(v36, 3, "Adding a phrase learning dictionary candidate", 1);
      *buf = v36;
      v66[0] = &unk_2A1F65308;
      v66[3] = v66;
      v37 = sub_2992AB710(v48, buf, 1, &v59, v66);
      sub_29921F128(v66);
      v44 = *buf;
      *buf = 0;
      if (v44)
      {
        (*(*v44 + 16))(v44);
      }

      if (v37)
      {
        v45 = sub_2993652F8(3u);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          return v37;
        }

        *buf = 0;
        v46 = " ∟ Added";
      }

      else if (v59 == 1)
      {
        v45 = sub_2993652F8(3u);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          return v37;
        }

        *buf = 0;
        v46 = " ∟ Replaced";
      }

      else
      {
        v45 = sub_2993652F8(3u);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          return v37;
        }

        *buf = 0;
        v46 = " ∟ REJECTED";
      }

      _os_log_debug_impl(&dword_29918C000, v45, OS_LOG_TYPE_DEBUG, v46, buf, 2u);
      return v37;
    }

    if (v40 != -1)
    {
      v37 = *(v48[6] + 8 * v40);
      if (!v37)
      {
        goto LABEL_27;
      }

      if (((*(*v37 + 88))(v37) & 1) == 0)
      {
        *(v37 + 204) = 76;
        v37 = 1;
        goto LABEL_27;
      }
    }
  }

  v37 = 0;
LABEL_27:
  (*(*v36 + 16))(v36);
  return v37;
}

uint64_t sub_2993DA26C(int a1)
{
  if ((atomic_load_explicit(&qword_2A1461838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461838))
  {
    qword_2A1461830 = sub_299237120();
    __cxa_guard_release(&qword_2A1461838);
  }

  if ((~a1 & 0x6000000) != 0)
  {
    return *(qword_2A1461830 + 416);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2993DA300(int a1, int a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A1461848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461848))
  {
    qword_2A1461840 = sub_299237120();
    __cxa_guard_release(&qword_2A1461848);
  }

  if (a1 != 0x7FFFFFFF)
  {
    return (a1 + 1);
  }

  result = *(qword_2A1461840 + 496);
  v7 = a2 - *(a3 + 40);
  if (v7 >= 1)
  {
    return (*(qword_2A1461840 + 512) + *(qword_2A1461840 + 512) * v7 + result);
  }

  return result;
}

uint64_t sub_2993DA3C0(int a1, int a2, unsigned int a3)
{
  if ((atomic_load_explicit(&qword_2A1461858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461858))
  {
    qword_2A1461850 = sub_299237120();
    __cxa_guard_release(&qword_2A1461858);
  }

  if (((a3 & 0x2000002) != 2) | *qword_2A1461850 & 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = HIBYTE(a3) & 4;
  }

  if (v6)
  {
    v7 = a1 == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 + a2;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_2993DA484(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *a1 = &unk_2A1F79168;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = a4;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  operator new();
}

void sub_2993DA540(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10A0C403A2516C0);
  v4 = *(v1 + 16);
  if (v4)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2993DA580(void *a1)
{
  *a1 = &unk_2A1F79168;
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_2992CD8DC(v2);
    MEMORY[0x29C29BFB0](v3, 0x10A0C403A2516C0);
  }

  v4 = a1[8];
  if (v4)
  {
    v5 = sub_2992CD8DC(v4);
    MEMORY[0x29C29BFB0](v5, 0x10A0C403A2516C0);
  }

  v6 = a1[2];
  if (v6)
  {
    a1[3] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_2993DA60C(void *a1)
{
  sub_2993DA580(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993DA644@<X0>(uint64_t a1@<X0>, void ***a2@<X8>)
{
  sub_2992CE99C(*(a1 + 8), &v6);
  sub_2992A5E4C(a2, &v6);
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = sub_2992A5BE8(v3);
    MEMORY[0x29C29BFB0](v4, 0x20C4093837F09);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

void sub_2993DA6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) && (*(*a1 + 104))(a1))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x4002000000;
    v43 = sub_2993DAB68;
    v44 = sub_2993DAB8C;
    memset(v45, 0, 24);
    v6 = (*(*a1 + 104))(a1, a2);
    v7 = *(a1 + 8);
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 0x40000000;
    v39[2] = sub_2993DABB8;
    v39[3] = &unk_29EF221E0;
    v39[4] = &v40;
    v39[5] = a1;
    sub_2992CEA88(v7, v6, v39);
    v8 = v41[5];
    v9 = v41[6];
    if (v9 != v8)
    {
      v27 = sub_2992B8B44;
      sub_29922619C(v8, v9, &v27, 126 - 2 * __clz(&v9[-v8] >> 5), 1);
      v10 = 0;
      v38 = 0;
      v11 = -1;
      do
      {
        v12 = v41[5];
        if (++v11 >= ((v41[6] - v12) >> 5))
        {
          break;
        }

        v13 = v12 + v10;
        v14 = *(v12 + v10 + 24);
        v33 = 0;
        v34 = 0;
        v35 = v14;
        v36 = 0;
        v37[0] = &v33;
        v16 = *(a1 + 16);
        v15 = *(a1 + 24);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        sub_2991C6CA8(__p, off_2A145F348);
        v17 = sub_29920B95C(v13, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (v41[5] + v10 + 8 != v17)
        {
          v18 = (*(**(v17 + 56) + 16))(*(v17 + 56));
          if (&v30 != v18)
          {
            sub_299223494(&v30, *v18, v18[1], (v18[1] - *v18) >> 1);
          }
        }

        v19 = v41[5];
        sub_2991C6CA8(__p, off_2A145F370[0]);
        v20 = sub_29920B95C(v19 + v10, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (v41[5] + v10 + 8 != v20)
        {
          v21 = (*(**(v20 + 56) + 16))(*(v20 + 56));
          if (&v27 != v21)
          {
            sub_299223494(&v27, *v21, v21[1], (v21[1] - *v21) >> 1);
          }
        }

        if (v31 != v30)
        {
          v22 = v41[5];
          sub_2991C6CA8(__p, off_2A145F3B8);
          v23 = sub_29920B95C(v22 + v10, __p);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          v24 = (*(**(v23 + 56) + 16))(*(v23 + 56));
          sub_2993DE9CC((a1 + 16), v24, &v30, &v27, *(a1 + 40));
          v37[1] = *(a1 + 16) + v15 - v16;
          (*(a3 + 16))(a3, v37, &v38);
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        v10 += 32;
      }

      while ((v38 & 1) == 0);
    }

    _Block_object_dispose(&v40, 8);
    v30 = v45;
    sub_299225D98(&v30);
  }
}

void sub_2993DAAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  _Block_object_dispose((v21 - 152), 8);
  a19 = v20;
  sub_299225D98(&a19);
  _Unwind_Resume(a1);
}

__n128 sub_2993DAB68(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993DABB8(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v15 = 0;
  if (sub_2992CC3A0(*(*(v3 + 48) + 40), a2, &v15, &v16))
  {
    v4 = *(*(a1 + 32) + 8);
    sub_299228338(&v11, &v16);
    v5 = v15;
    v14 = v15;
    v6 = v4[6];
    if (v6 >= v4[7])
    {
      v10 = sub_299225E28(v4 + 5, &v11);
    }

    else
    {
      v7 = v13;
      *v6 = v11;
      v8 = v12;
      *(v6 + 8) = v12;
      *(v6 + 16) = v7;
      v9 = v6 + 8;
      if (v7)
      {
        v8[2] = v9;
        v11 = &v12;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        *v6 = v9;
      }

      *(v6 + 24) = v5;
      v10 = v6 + 32;
    }

    v4[6] = v10;
    sub_299227884(&v11, v12);
  }

  sub_299227884(&v16, v17[0]);
}

void sub_2993DACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  sub_299227884(&a9, a10);
  sub_299227884(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2993DAD04(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a4 = 0;
  v8 = (*(*a1 + 88))(a1, a2, a3);
  v9 = 0;
  if (v8)
  {
    v9 = (*(*a1 + 104))(a1, a2) != 0;
  }

  *a5 = v9;
  return v8;
}

uint64_t sub_2993DADA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = 0;
  if ((*(**v2 + 48))(*v2, *(a2 + 8), &v4))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993DAE48(uint64_t a1)
{
  sub_2992CD9F4(*(a1 + 8));
  result = *(a1 + 64);
  if (result)
  {

    return sub_2992CD9F4(result);
  }

  return result;
}

void *sub_2993DAE94(uint64_t a1)
{
  sub_2992CDBD8(*(a1 + 8));
  result = *(a1 + 64);
  if (result)
  {
    result = sub_2992CDBD8(result);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_2993DAED4(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = sub_2992CDF24(*(a1 + 8), *a2, ((a2[1] - *a2) >> 1), a3);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v9 = *a2;
      v8 = a2[1];
      if (*(a1 + 72) <= ((v8 - *a2) >> 1))
      {
        __src = 0;
        v23 = 0;
        v24 = 0;
        if (v8 == v9)
        {
          v10 = 0;
          v20 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            v8 -= 2;
            if (v10 >= v24)
            {
              v11 = __src;
              v12 = v10 - __src;
              v13 = (v10 - __src) >> 1;
              if (v13 <= -2)
              {
                sub_299212A8C();
              }

              if (v24 - __src <= v13 + 1)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = v24 - __src;
              }

              if (v24 - __src >= 0x7FFFFFFFFFFFFFFELL)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                sub_299212A48(&__src, v15);
              }

              v16 = (v10 - __src) >> 1;
              v17 = (2 * v13);
              v18 = (2 * v13 - 2 * v16);
              *v17 = *v8;
              v10 = (v17 + 1);
              memcpy(v18, v11, v12);
              v19 = __src;
              __src = v18;
              v23 = v10;
              v24 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *v10 = *v8;
              v10 += 2;
            }

            v23 = v10;
          }

          while (v8 != v9);
          v7 = *(a1 + 64);
          v20 = __src;
        }

        sub_2992CDF24(v7, v20, ((v10 - v20) >> 1), a3);
        if (__src)
        {
          v23 = __src;
          operator delete(__src);
        }
      }
    }
  }

  return v6;
}

void sub_2993DB070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993DB090(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = sub_2992CE304(*(a1 + 8), *a2, (a2[1] - *a2) >> 1, a3);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v9 = *a2;
      v8 = a2[1];
      if (*(a1 + 72) <= ((v8 - *a2) >> 1))
      {
        __src = 0;
        v23 = 0;
        v24 = 0;
        if (v8 == v9)
        {
          v10 = 0;
          v20 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            --v8;
            if (v10 >= v24)
            {
              v11 = __src;
              v12 = v10 - __src;
              v13 = (v10 - __src) >> 1;
              if (v13 <= -2)
              {
                sub_299212A8C();
              }

              if (v24 - __src <= v13 + 1)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = v24 - __src;
              }

              if (v24 - __src >= 0x7FFFFFFFFFFFFFFELL)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                sub_299212A48(&__src, v15);
              }

              v16 = (v10 - __src) >> 1;
              v17 = (2 * v13);
              v18 = (2 * v13 - 2 * v16);
              *v17 = *v8;
              v10 = (v17 + 1);
              memcpy(v18, v11, v12);
              v19 = __src;
              __src = v18;
              v23 = v10;
              v24 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *v10 = *v8;
              v10 += 2;
            }

            v23 = v10;
          }

          while (v8 != v9);
          v7 = *(a1 + 64);
          v20 = __src;
        }

        sub_2992CE304(v7, v20, (v10 - v20) >> 1, a3);
        if (__src)
        {
          v23 = __src;
          operator delete(__src);
        }
      }
    }
  }

  return v6;
}

void sub_2993DB22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993DB26C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a2)
    {
      v5 = result;
      result = *(result + 64);
      if (result)
      {
        sub_2992CE99C(result, &v17);
        sub_2992CEA10(*(v5 + 64), &v15);
        v8 = *(v5 + 64);
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 0x40000000;
        v14[2] = sub_2993DB3E4;
        v14[3] = &unk_29EF22230;
        v14[4] = a5;
        v14[5] = v5;
        sub_2992CEB38(v8, &v15, 0, a4 >> 1, v5 + 80, v14);
        v9 = v16;
        v16 = 0;
        if (v9)
        {
          v10 = sub_2992A5BE8(v9);
          MEMORY[0x29C29BFB0](v10, 0x20C4093837F09);
        }

        v11 = v15;
        v15 = 0;
        if (v11)
        {
          MEMORY[0x29C29BFB0](v11, 0x1010C40E4C6A875);
        }

        v12 = v18;
        v18 = 0;
        if (v12)
        {
          v13 = sub_2992A5BE8(v12);
          MEMORY[0x29C29BFB0](v13, 0x20C4093837F09);
        }

        result = v17;
        v17 = 0;
        if (result)
        {
          return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
        }
      }
    }
  }

  return result;
}

void sub_2993DB3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void **);
  v16 = va_arg(va1, void);
  sub_2992A5B54(va);
  sub_2992A5B54(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2993DB3E4(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 40);
    v4 = *(v3 + 64);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = sub_2993DB46C;
    v5[3] = &unk_29EF22208;
    v5[4] = *(result + 32);
    v5[5] = v3;
    v5[6] = a3;
    return sub_2992CEA88(v4, a2, v5);
  }

  return result;
}

void sub_2993DB46C(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v26 = 0;
  if (sub_2992CC3A0(*(*(v3 + 48) + 40), a2, &v26, &v27))
  {
    v20 = 0;
    v21 = 0;
    v22 = v26;
    v23 = 0;
    v24 = &v20;
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_2991C6CA8(__p, off_2A145F348);
    v6 = sub_29920B95C(&v27, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 != v6)
    {
      v7 = (*(*v6[7] + 16))(v6[7]);
      if (&v17 != v7)
      {
        sub_299223494(&v17, *v7, v7[1], (v7[1] - *v7) >> 1);
      }
    }

    sub_2991C6CA8(__p, off_2A145F370[0]);
    v8 = sub_29920B95C(&v27, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 != v8)
    {
      v9 = (*(*v8[7] + 16))(v8[7]);
      if (&v14 != v9)
      {
        sub_299223494(&v14, *v9, v9[1], (v9[1] - *v9) >> 1);
      }
    }

    if (v18 != v17)
    {
      sub_2991C6CA8(__p, off_2A145F3B8);
      v10 = sub_29920B95C(&v27, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = (*(**(v10 + 56) + 16))(*(v10 + 56));
      sub_2993DE9CC((v3 + 16), v11, &v17, &v14, *(v3 + 40));
      v25 = *(v3 + 16) + v5 - v4;
      (*(*(a1 + 32) + 16))();
    }

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (v17)
    {
      v18 = v17;
      operator delete(v17);
    }
  }

  sub_299227884(&v27, v28[0]);
}

void sub_2993DB6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  sub_299227884(v20 - 88, *(v20 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_2993DB770(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 *a4, unsigned int a5, unint64_t a6, uint64_t a7, int a8, int8x8_t a9, uint64_t a10, int a11, unsigned int a12)
{
  v12 = a6;
  v14 = a3;
  v15 = a2;
  v18 = a11;
  v17 = a12;
  result = a2 & 3;
  if ((a2 & 3u) <= 1)
  {
    if ((a2 & 3) == 0)
    {
      return result;
    }

    v21 = (*(a1 + 16) + (a2 - 1));
    v22 = v21[1];
    if (v22)
    {
      if (a6)
      {
        v23 = a4 - a10;
        v24 = *a3;
        v25 = a7 + 24 * *a3;
        if (a12)
        {
          v23 = (a4 - a10) | 0x100;
        }

        *(v25 + 12) = v23;
        *a3 = v24 + 1;
        *(v25 + 8) = v22;
        if (v24 + 1 >= a6)
        {
          return 1;
        }
      }

      else
      {
        ++*a3;
      }
    }

    if (a8 != -1)
    {
      if ((a5 & 1) == 0)
      {
        v36 = *v21;
        if (v36 >= 5)
        {
          v37 = v21 + v36;
          v38 = (v21 + 2);
          v39 = a5 | 1;
          v91 = a4 - a10;
          v92 = v37;
          while (1)
          {
            v41 = v38 + 1;
            v40 = *v38;
            if ((v40 & 1) != 0 && v39 >= v40)
            {
              v42 = *v41;
              if (v42 >= a8)
              {
                if (v42 > a8)
                {
                  return 0;
                }

                v43 = v14;
                v44 = v12;
                v45 = a7;
                v46 = v17;
                if (!v17)
                {
                  a12 = 0;
                }

                v47 = a4;
                v48 = sub_2993DD888((v38 + 2), a4, v40 - 1, a11, &a12);
                a4 = v47;
                a7 = v45;
                v17 = v46;
                v12 = v44;
                v14 = v43;
                v37 = v92;
                if (!v48)
                {
                  if (v12)
                  {
                    v49 = *v43;
                    v50 = a7 + 24 * *v43;
                    *(v50 + 12) = v91 + v40 - 1;
                    v51 = (v50 + 12);
                    if (a12)
                    {
                      *v51 = (v91 + v40 - 1) | 0x100;
                    }

                    v52 = *&v41[v40];
                    *v43 = v49 + 1;
                    *(a7 + 24 * v49 + 8) = v52;
                    if (v49 + 1 >= v12)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                    ++*v43;
                  }
                }
              }
            }

            result = 0;
            v53 = &v41[v40];
            v38 = v53 + 4;
            if (v53 >= v37)
            {
              return result;
            }
          }
        }
      }

      return 0;
    }

    if (a5)
    {
      v54 = *v21;
      if (v54 >= 5)
      {
        v55 = v21 + v54;
        v56 = (v21 + 2);
        v93 = a4 - a10;
        while (1)
        {
          v57 = v56 + 1;
          v58 = *v56;
          if (v58 > a5)
          {
            goto LABEL_48;
          }

          if (a5)
          {
            if ((v58 & 1) == 0)
            {
              goto LABEL_48;
            }

            v68 = *v57;
            v69 = *a4;
            if (v68 < v69)
            {
              goto LABEL_48;
            }

            if (v68 > v69)
            {
              return 0;
            }

            v70 = a7;
            v71 = v17;
            if (!v17)
            {
              a12 = 0;
            }

            v72 = a4;
            v73 = sub_2993DD888((v56 + 2), (a4 + 1), v58 - 1, a11, &a12);
            a4 = v72;
            a7 = v70;
            v17 = v71;
            if (v73)
            {
              goto LABEL_48;
            }

            if (!v12)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v58)
            {
              goto LABEL_48;
            }

            v60 = a7;
            v61 = v17;
            if (!v17)
            {
              a12 = 0;
            }

            v62 = a4;
            v63 = sub_2993DD888((v56 + 1), a4, v58, a11, &a12);
            a4 = v62;
            a7 = v60;
            v17 = v61;
            if (v63)
            {
              goto LABEL_48;
            }

            if (!v12)
            {
LABEL_67:
              ++*v14;
              goto LABEL_48;
            }
          }

          v64 = *v14;
          v65 = a7 + 24 * *v14;
          *(v65 + 12) = v93 + v58;
          v66 = (v65 + 12);
          if (a12)
          {
            *v66 = (v93 + v58) | 0x100;
          }

          v67 = *&v57[v58];
          *v14 = v64 + 1;
          *(a7 + 24 * v64 + 8) = v67;
          if (v64 + 1 >= v12)
          {
            return 1;
          }

LABEL_48:
          result = 0;
          v59 = &v57[v58];
          v56 = v59 + 4;
          if (v59 >= v55)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  if (result == 2)
  {
    v26 = (*(a1 + 8) + (a2 - 2));
    v27 = *v26;
    if (*v26)
    {
      if (!a6)
      {
        ++*a3;
        if (!a5)
        {
          return 0;
        }

LABEL_69:
        if (!a4 || (a5 & 1) != 0 || (v75 = a7, v76 = v17, v77 = a4, v78 = sub_2993C4A54(*a4, a11), a4 = v77, LODWORD(v17) = v76, a7 = v75, v18 = a11, v12 = a6, v14 = a3, !v78))
        {
          v79 = *a4;
          v80 = (v26 + 1);
          v81 = v79 >> 5;
          v82 = v26[(v79 >> 5) + 1];
          if (((v82 >> v79) & 1) == 0)
          {
            return 0;
          }

          v83 = v79 & 0x1F;
          if (v79 >= 0x20)
          {
            v84 = 0;
            do
            {
              v89 = *v80++;
              a9 = vcnt_s8(v89);
              a9.i16[0] = vaddlv_u8(a9);
              v84 += a9.i32[0];
              --v81;
            }

            while (v81);
          }

          else
          {
            v84 = 0;
          }

          a9.i32[0] = v82 & ~(-1 << v83);
          v90 = vcnt_s8(a9);
          v90.i16[0] = vaddlv_u8(v90);
          return sub_2993DB770(a1, v26[v84 + v90.i32[0] + 10], v14, a4 + 1, a5 - 1, v12, a7, -1, v90, a10, v18, v17) != 0;
        }

        return sub_2993DD9C8(a1, v15, v14, a4 + 2, a5 - 2, v12, a7, (v78[1] - *v78) >> 1, a9, *v78, a10, v18, v17);
      }

      v28 = a4 - a10;
      v29 = *a3;
      v30 = a7 + 24 * *a3;
      if (a12)
      {
        v28 = (a4 - a10) | 0x100;
      }

      *(v30 + 12) = v28;
      *a3 = v29 + 1;
      *(v30 + 8) = v27;
      if (v29 + 1 >= a6)
      {
        return 1;
      }
    }

    if (!a5)
    {
      return 0;
    }

    goto LABEL_69;
  }

  v31 = (*(a1 + 8) + (a2 - 3));
  v32 = *v31;
  if (!*v31)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    v33 = a4 - a10;
    v34 = *a3;
    v35 = a7 + 24 * *a3;
    if (a12)
    {
      v33 = (a4 - a10) | 0x100;
    }

    *(v35 + 12) = v33;
    *a3 = v34 + 1;
    *(v35 + 8) = v32;
    if (v34 + 1 >= a6)
    {
      return 1;
    }

LABEL_22:
    if (!a5)
    {
      return 0;
    }

    goto LABEL_76;
  }

  ++*a3;
  if (!a5)
  {
    return 0;
  }

LABEL_76:
  if (a4)
  {
    if ((a5 & 1) == 0)
    {
      v86 = a7;
      v87 = v17;
      v88 = a4;
      v78 = sub_2993C4A54(*a4, a11);
      a4 = v88;
      LODWORD(v17) = v87;
      a7 = v86;
      v18 = a11;
      v12 = a6;
      v14 = a3;
      if (v78)
      {
        return sub_2993DD9C8(a1, v15, v14, a4 + 2, a5 - 2, v12, a7, (v78[1] - *v78) >> 1, a9, *v78, a10, v18, v17);
      }
    }
  }

  result = sub_2993DB770(a1, v31[*a4 + 1], v14, a4 + 1, a5 - 1, v12, a7, -1, a9, a10, v18, v17);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2993DBD10(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x8_t a9, _BYTE *a10, void *a11)
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a2;
  v17 = a10;
  v18 = a11;
  v64 = a6;
  result = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (result == 2)
    {
      v32 = (*(a1 + 8) + (a2 - 2));
      if (a4)
      {
        if (!a3 || (a4 & 1) != 0 || (v35 = a3, v36 = sub_2993C4A54(*a3, 14), a3 = v35, v12 = a7, v17 = a10, v18 = a11, v13 = a6, !v36))
        {
          v37 = *a3;
          if (((*(v32 + ((v37 >> 3) & 0x1C) + 4) >> v37) & 1) == 0)
          {
            return 0;
          }

          *v17 = v37;
          v38 = v17 + 1;
          v39 = *a3;
          if (v39 >= 0x20)
          {
            v40 = 0;
            v59 = v32 + 1;
            v60 = v39 >> 5;
            do
            {
              v61 = *v59++;
              a9 = vcnt_s8(v61);
              a9.i16[0] = vaddlv_u8(a9);
              v40 += a9.i32[0];
              --v60;
            }

            while (v60);
          }

          else
          {
            v40 = 0;
          }

          a9.i32[0] = v32[(v39 >> 5) + 1] & ~(-1 << v39);
          v62 = vcnt_s8(a9);
          v62.i16[0] = vaddlv_u8(v62);
          return sub_2993DBD10(a1, v32[v62.i32[0] + v40 + 10], a3 + 1, v14 - 1, -1, v13, v12, a8, v62, v38, v18) != 0;
        }

        return sub_2993DDD54(a1, v15, a3 + 2, v14 - 2, (v36[1] - *v36) >> 1, *v36, v13, v12, a9, a8, v17, v18);
      }
    }

    else
    {
      v32 = (*(a1 + 8) + (a2 - 3));
      if (a4)
      {
        if (!a3 || (a4 & 1) != 0 || (v43 = a3, v36 = sub_2993C4A54(*a3, 14), a3 = v43, v12 = a7, v17 = a10, v18 = a11, v13 = a6, !v36))
        {
          v45 = *a3;
          *v17 = v45;
          result = sub_2993DBD10(a1, v32[v45 + 1], a3 + 1, v14 - 1, -1, v13, v12, a8, a9, v17 + 1, v18);
          if (!result)
          {
            return result;
          }

          return 1;
        }

        return sub_2993DDD54(a1, v15, a3 + 2, v14 - 2, (v36[1] - *v36) >> 1, *v36, v13, v12, a9, a8, v17, v18);
      }
    }

    if (*v32 == a7)
    {
      v44 = &a10[-a8];
      goto LABEL_31;
    }

    return 0;
  }

  v63 = a8;
  if ((a2 & 3) == 0)
  {
    return result;
  }

  v21 = (*(a1 + 16) + (a2 - 1));
  if (a5 != -1)
  {
    if ((a4 & 1) == 0)
    {
      v22 = *v21;
      if (v22 >= 5)
      {
        v23 = v21 + v22;
        v24 = (v21 + 2);
        v25 = a4 | 1;
        while (1)
        {
          v26 = v24 + 1;
          v27 = *v24;
          if (v25 == v27)
          {
            v28 = *v26;
            if (v28 >= a5)
            {
              if (v28 > a5)
              {
                return 0;
              }

              v29 = v12;
              if (!v13)
              {
                v64 = 0;
              }

              v30 = a3;
              v31 = sub_2993DD888((v24 + 2), a3, v14, 14, &v64);
              a3 = v30;
              v12 = v29;
              v18 = a11;
              if (!v31 && *&v26[v27] == v29)
              {
                break;
              }
            }
          }

          result = 0;
          v24 = &v26[v27 + 4];
          if (&v26[v27] >= v23)
          {
            return result;
          }
        }

        memcpy(a10, v24 + 2, v14);
        v44 = &a10[~v63 + v27];
LABEL_31:
        *v18 = v44;
        return 1;
      }
    }

    return 0;
  }

  if (a4)
  {
    v46 = *v21;
    if (v46 >= 5)
    {
      v47 = v21 + v46;
      v48 = (v21 + 2);
      while (1)
      {
        v50 = v48 + 1;
        v49 = *v48;
        if (v49 == v14)
        {
          if (v14)
          {
            v56 = *v50;
            v57 = *a3;
            if (v56 < v57)
            {
              goto LABEL_49;
            }

            if (v56 > v57)
            {
              return 0;
            }

            v51 = v12;
            if (!v13)
            {
              v64 = 0;
            }

            v52 = (v48 + 2);
            v53 = a3 + 1;
            v54 = a3;
            v55 = v14 - 1;
          }

          else
          {
            v51 = v12;
            if (!v13)
            {
              v64 = 0;
            }

            v52 = (v48 + 1);
            v53 = a3;
            v54 = a3;
            v55 = v14;
          }

          v58 = sub_2993DD888(v52, v53, v55, 14, &v64);
          a3 = v54;
          v12 = v51;
          if (!v58 && *&v50[v49] == v51)
          {
            memcpy(a10, v50, v49);
            v44 = &a10[v49 - v63];
            goto LABEL_31;
          }
        }

LABEL_49:
        result = 0;
        v48 = &v50[v49 + 4];
        if (&v50[v49] >= v47)
        {
          return result;
        }
      }
    }
  }

  else if (v21[1] == a7)
  {
    v44 = &a10[-a8];
    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_2993DC148(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, int8x8_t a9, void *a10)
{
  v13 = a5;
  result = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (result == 2)
    {
      v29 = (*(a1 + 8) + (a2 - 2));
      if (!a4)
      {
        if (!a5 || *v29 != a6)
        {
          v37 = 0;
          v38 = v29 + 1;
          v39 = v29 + 10;
          while (1)
          {
            *a8 = v37;
            v40 = v38[v37 >> 5];
            if ((v40 >> v37))
            {
              if (v37 >= 0x20)
              {
                v41 = 0;
                v42 = v37 >> 5;
                v43 = v38;
                do
                {
                  v44 = *v43++;
                  a9 = vcnt_s8(v44);
                  a9.i16[0] = vaddlv_u8(a9);
                  v41 += a9.i32[0];
                  --v42;
                }

                while (v42);
              }

              else
              {
                v41 = 0;
              }

              a9.i32[0] = v40 & ~(-1 << (v37 & 0x1F));
              v45 = vcnt_s8(a9);
              v45.i16[0] = vaddlv_u8(v45);
              if (sub_2993DC148(a1, v39[v41 + v45.i32[0]], a3, 0, 1, a6, a7, a8 + 1, v45, a10))
              {
                break;
              }
            }

            result = 0;
            if (++v37 == 256)
            {
              return result;
            }
          }

          return 1;
        }

        goto LABEL_38;
      }

      v30 = *a3;
      v31 = v29 + 1;
      if (((*(v29 + ((v30 >> 3) & 0x1C) + 4) >> v30) & 1) == 0)
      {
        return 0;
      }

      *a8 = v30;
      v32 = v29 + 10;
      v33 = *a3;
      if (v33 >= 0x20)
      {
        v34 = 0;
        v47 = v31;
        v48 = v33 >> 5;
        do
        {
          v49 = *v47++;
          a9 = vcnt_s8(v49);
          a9.i16[0] = vaddlv_u8(a9);
          v34 += a9.i32[0];
          --v48;
        }

        while (v48);
      }

      else
      {
        v34 = 0;
      }

      a9.i32[0] = v31[v33 >> 5] & ~(-1 << v33);
      v50 = vcnt_s8(a9);
      v50.i16[0] = vaddlv_u8(v50);
      result = sub_2993DC148(a1, v32[v50.i32[0] + v34], a3 + 1, a4 - 1, a5, a6, a7, a8 + 1, v50, a10);
    }

    else
    {
      v35 = (*(a1 + 8) + (a2 - 3));
      if (!a4)
      {
        if (!a5 || *v35 != a6)
        {
          v51 = 0;
          v52 = v35 + 1;
          while (1)
          {
            *a8 = v51;
            result = sub_2993DC148(a1, v52[v51], a3, 0, 1, a6, a7, a8 + 1, a9, a10);
            if (result)
            {
              break;
            }

            if (++v51 == 256)
            {
              return result;
            }
          }

          return 1;
        }

        goto LABEL_38;
      }

      v36 = *a3;
      *a8 = v36;
      result = sub_2993DC148(a1, v35[v36 + 1], a3 + 1, a4 - 1, a5, a6, a7, a8 + 1, a9, a10);
    }

    if (!result)
    {
      return result;
    }

    return 1;
  }

  if ((a2 & 3) == 0)
  {
    return result;
  }

  v18 = (*(a1 + 16) + (a2 - 1));
  if (a4 || !a5 || v18[1] != a6)
  {
    v19 = *v18;
    if (v19 >= 5)
    {
      v20 = v18 + v19;
      v21 = (v18 + 2);
      while (1)
      {
        v24 = *v21;
        v22 = v21 + 1;
        v23 = v24;
        v25 = v24 >= a4;
        v26 = v24 > a4;
        if (!v13)
        {
          v25 = v26;
        }

        if (v25)
        {
          v27 = memcmp(v22, a3, a4);
          if (v27 > 0)
          {
            return 0;
          }

          if (!v27 && *&v22[v23] == a6)
          {
            break;
          }
        }

        v28 = &v22[v23];
        v21 = &v22[v23 + 4];
        if (v28 >= v20)
        {
          return 0;
        }
      }

      memcpy(a8, v22, v23);
      v46 = &a8[v23 - a7];
      goto LABEL_39;
    }

    return 0;
  }

LABEL_38:
  v46 = &a8[-a7];
LABEL_39:
  *a10 = v46;
  return 1;
}

uint64_t sub_2993DC4C0(unsigned int *a1, char *a2, uint64_t a3, int a4, _BYTE *a5, int8x8_t a6)
{
  v7 = 0;
  sub_2993DC510(a1, *a1, a2, a3, 0, -1, 0, a4, a6, a5, a5, &v7, a2);
  return v7;
}

uint64_t sub_2993DC510(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, int a6, int a7, int a8, int8x8_t a9, uint64_t a10, _BYTE *a11, void *a12, uint64_t a13)
{
  v14 = a4;
  v16 = a2;
  v69 = a7;
  v18 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v18 == 2)
    {
      v28 = (*(a1 + 8) + (a2 - 2));
      if (a4)
      {
        if (a3)
        {
          if ((a4 & 1) == 0)
          {
            v29 = sub_2993C4A54(*a3, 14);
            if (v29)
            {
              v30 = *v29;
              v31 = (v29[1] - *v29) >> 1;

              return sub_2993DE0F8(a1, v16, a3 + 2, v14 - 2, v31, v30, a7, a8, a9, a10, a11, a12, a13);
            }
          }
        }

        v35 = *a3;
        *a11 = v35;
        v36 = v28 + 1;
        v37 = v35 >> 5;
        v38 = v28[(v35 >> 5) + 1];
        if (((v38 >> v35) & 1) == 0)
        {
          return 0;
        }

        v39 = v35 & 0x1F;
        if (v35 >= 0x20)
        {
          v40 = 0;
          do
          {
            v64 = *v36++;
            a9 = vcnt_s8(v64);
            a9.i16[0] = vaddlv_u8(a9);
            v40 += a9.i32[0];
            --v37;
          }

          while (v37);
        }

        else
        {
          v40 = 0;
        }

        a9.i32[0] = v38 & ~(-1 << v39);
        v65 = vcnt_s8(a9);
        v65.i16[0] = vaddlv_u8(v65);
        v42 = sub_2993DC510(a1, v28[v40 + v65.i32[0] + 10], a3 + 1, v14 - 1, 0, -1, a7, a8, v65, a10, a11 + 1, a12, a13);
        return v42 != 0;
      }

      if (!a5 || *v28 != a8)
      {
        v43 = 0;
        v18 = 1;
        do
        {
          *a11 = v43;
          v44 = v28[(v43 >> 5) + 1];
          if ((v44 >> v43))
          {
            if (v43 >= 0x20)
            {
              v45 = 0;
              v46 = v43 >> 5;
              v47 = v28 + 1;
              do
              {
                v48 = *v47++;
                a9 = vcnt_s8(v48);
                a9.i16[0] = vaddlv_u8(a9);
                v45 += a9.i32[0];
                --v46;
              }

              while (v46);
            }

            else
            {
              v45 = 0;
            }

            a9.i32[0] = v44 & ~(-1 << (v43 & 0x1F));
            v49 = vcnt_s8(a9);
            v49.i16[0] = vaddlv_u8(v49);
            if (sub_2993DC510(a1, v28[v45 + v49.i32[0] + 10], a3 + 1, 0, 1, -1, a7, a8, v49, a10, a11 + 1, a12, a13))
            {
              return v18;
            }
          }

          ++v43;
        }

        while (v43 != 256);
        return 0;
      }
    }

    else
    {
      v33 = (*(a1 + 8) + (a2 - 3));
      if (a4)
      {
        if (a3)
        {
          if ((a4 & 1) == 0)
          {
            v34 = sub_2993C4A54(*a3, 14);
            if (v34)
            {
              return sub_2993DE0F8(a1, v16, a3 + 2, v14 - 2, (v34[1] - *v34) >> 1, *v34, a7, a8, a9, a10, a11, a12, a13);
            }
          }
        }

        v41 = *a3;
        *a11 = v41;
        v42 = sub_2993DC510(a1, v33[v41 + 1], a3 + 1, v14 - 1, 0, -1, a7, a8, a9, a10, a11 + 1, a12, a13);
        return v42 != 0;
      }

      if (!a5 || *v33 != a8)
      {
        v62 = 0;
        v63 = v33 + 1;
        do
        {
          *a11 = v62;
          v18 = 1;
          if (sub_2993DC510(a1, v63[v62], a3 + 1, 0, 1, -1, a7, a8, a9, a10, a11 + 1, a12, a13))
          {
            break;
          }

          v18 = 0;
          ++v62;
        }

        while (v62 != 256);
        return v18;
      }
    }

LABEL_54:
    v50 = &a11[-a10];
    goto LABEL_55;
  }

  if ((a2 & 3) == 0)
  {
    return v18;
  }

  v20 = (*(a1 + 16) + (a2 - 1));
  if (!a4 && a5 && v20[1] == a8)
  {
    goto LABEL_54;
  }

  if (a6 == -1)
  {
    v51 = *v20;
    if (v51 >= 5)
    {
      v52 = v20 + v51;
      v53 = (v20 + 2);
      if (&a3[-a13] >= 0)
      {
        v54 = &a3[-a13] & 1;
      }

      else
      {
        v54 = -(&a3[-a13] & 1);
      }

      do
      {
        v56 = v53 + 1;
        v55 = *v53;
        if (a5)
        {
          if (v55 < v14)
          {
            goto LABEL_80;
          }
        }

        else if (v55 <= v14)
        {
          goto LABEL_80;
        }

        if (v14)
        {
          if (v55)
          {
            v57 = *v56;
            v58 = *a3;
            if (v57 >= v58)
            {
              if (v57 > v58)
              {
                return 0;
              }

              if (!a7)
              {
                v69 = 0;
              }

              v59 = (v53 + 2);
              v60 = a3 + 1;
              v61 = v14 - 1;
              goto LABEL_78;
            }
          }
        }

        else if (v14)
        {
          if ((v55 & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (v54 == (v55 & 1))
        {
LABEL_75:
          if (!a7)
          {
            v69 = 0;
          }

          v59 = (v53 + 1);
          v60 = a3;
          v61 = v14;
LABEL_78:
          if (!sub_2993DD888(v59, v60, v61, 14, &v69) && *&v56[v55] == a8)
          {
            memcpy(a11, v56, v55);
            v50 = &a11[v55 - a10];
            goto LABEL_55;
          }
        }

LABEL_80:
        v53 = &v56[v55 + 4];
      }

      while (&v56[v55] < v52);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  v21 = *v20;
  if (v21 < 5)
  {
    return 0;
  }

  v22 = v20 + v21;
  v23 = (v20 + 2);
  v66 = a4 | 1;
  while (1)
  {
    v24 = v23 + 1;
    v25 = *v23;
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (!a5)
    {
      break;
    }

    if (v25 > v14)
    {
      goto LABEL_13;
    }

LABEL_19:
    v18 = 0;
    v27 = &v24[v25];
    v23 = v27 + 4;
    if (v27 >= v22)
    {
      return v18;
    }
  }

  if (v66 >= v25)
  {
    goto LABEL_19;
  }

LABEL_13:
  v26 = *v24;
  if (v26 < a6)
  {
    goto LABEL_19;
  }

  if (v26 > a6)
  {
    return 0;
  }

  if (!a7)
  {
    v69 = 0;
  }

  if (sub_2993DD888((v23 + 2), a3, v14, 14, &v69) || *&v24[v25] != a8)
  {
    goto LABEL_19;
  }

  memcpy(a11, v23 + 2, (v25 - 1));
  v50 = &a11[~a10 + v25];
LABEL_55:
  *a12 = v50;
  return 1;
}

uint64_t sub_2993DCAD8(int *a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, int8x8_t a8)
{
  v29 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = a4;
  if (!sub_2993221DC(a1, *a1, a2, a3, &v21, a5, &v20, a7, a8, 0, a2) && a6 != 0 && a2 != 0 && a3 != 0)
  {
    v18 = sub_299217570(a2, a3 >> 1);
    v19 = 2 * v18;
    if (2 * v18)
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      v24 = 0u;
      v25 = 0;
      v22[0] = a1;
      v22[1] = 0;
      v22[2] = 0;
      v22[3] = a2;
      v22[4] = a3;
      v22[5] = a5;
      v23 = a7;
      LODWORD(v24) = 2;
      v26 = v27 + (a3 - v19) + 2;
      LOBYTE(v27[0]) = 1;
      BYTE1(v27[0]) = a3 != v19;
      sub_2993DCC50(v22, *a1, a2, a3 - v19, &a2[(a3 - v19)], v19, 0, 0, 0.0, &v20, 0, 0);
    }
  }

  return v20;
}

BOOL sub_2993DCC50(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, char *a5, unsigned int a6, unsigned __int16 *a7, unsigned int a8, double a9, uint64_t *a10, BOOL a11, int a12)
{
  v15 = *&a9;
  v121 = a11;
  v126 = *MEMORY[0x29EDCA608];
  v18 = a2 & 3;
  if ((a2 & 2) == 0)
  {
    if (v18 == 1)
    {
      v19 = (*(*a1 + 16) + (a2 - 1));
      v20 = a6 | a4 | a8;
      v21 = *(a1 + 64);
      if (a4 < 2)
      {
        v25 = 0;
      }

      else
      {
        v22 = 16;
        v23 = &word_29945DA3A;
        while (*v23 != *a3)
        {
          ++v23;
          v22 -= 2;
          if (!v22)
          {
            v23 = &unk_29945DA4A;
            break;
          }
        }

        v24 = v23 != &unk_29945DA4A;
        if (v23 == &unk_29945DA4A)
        {
          v23 = 0;
        }

        v25 = v23 - &word_29945DA3A != -2 && v24;
      }

      if (v20 && (v21 != 1 || v25))
      {
        goto LABEL_44;
      }

      v54 = v19[1];
      if (a12)
      {
        v55 = 0;
      }

      else
      {
        v55 = v21 == 2;
      }

      v56 = !v55;
      if (v54 && v56)
      {
        if (*(a1 + 40))
        {
          v57 = 0.0;
          if ((a11 & *(a1 + 81)) != 0)
          {
            v57 = v15;
          }

          v58 = *a10;
          v59 = *(a1 + 48) + 24 * *a10;
          *(v59 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
          *(v59 + 1) = a11;
          *v59 = *(a1 + 82);
          *(v59 + 4) = v57;
          *(v59 + 8) = v54;
          *a10 = v58 + 1;
          if ((v58 + 1) >= *(a1 + 40))
          {
            return 1;
          }
        }

        else
        {
          ++*a10;
        }
      }

      if (v20 || v21 == 2)
      {
LABEL_44:
        v39 = *v19;
        if (v39 >= 5)
        {
          v41 = v19 + v39;
          v42 = (v19 + 2);
          v115 = a1 + 98;
          while (1)
          {
            v45 = *v42;
            v44 = v42 + 1;
            v43 = v45;
            if (v45 >= a4 && (!a4 || !memcmp(v44, a3, a4)))
            {
              v46 = *(a1 + 88);
              v47 = *(a1 + 72);
              v125[0] = v15;
              v124[0] = a11;
              if (sub_2993DE4C4(a1, &v44[a4], (v43 - a4), a5, a6, a7, a8, *(a1 + 56), v124, a12, v125))
              {
                if (*(a1 + 40))
                {
                  v48 = *&v44[v43];
                  v49 = v125[0];
                  v50 = v124[0];
                  if (((v124[0] != 0) & *(a1 + 81)) == 0)
                  {
                    v49 = 0.0;
                  }

                  v51 = *a10;
                  v52 = *(a1 + 48) + 24 * *a10;
                  *(v52 + 12) = *(a1 + 88) - v115 + *(a1 + 72);
                  *(v52 + 1) = v50;
                  *v52 = *(a1 + 82);
                  *(v52 + 4) = v49;
                  *(v52 + 8) = v48;
                  *a10 = v51 + 1;
                  if ((v51 + 1) >= *(a1 + 40))
                  {
                    return 1;
                  }
                }

                else
                {
                  ++*a10;
                }
              }

              *(a1 + 72) = v47;
              *(a1 + 88) = v46;
            }

            v53 = &v44[v43];
            v42 = &v44[v43 + 4];
            if (v53 >= v41)
            {
              return 0;
            }
          }
        }

        return 0;
      }
    }

    return 0;
  }

  v26 = *(*a1 + 8);
  v27 = (v26 + (a2 & 0xFFFFFFFC));
  if (v18 == 3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26 + (a2 & 0xFFFFFFFC);
  }

  if (v18 == 3)
  {
    v29 = v26 + (a2 & 0xFFFFFFFC);
  }

  else
  {
    v29 = 0;
  }

  v30 = *v27;
  v31 = *(a1 + 64);
  if (v31 == 2)
  {
    if (a6 | a4 | a8)
    {
      goto LABEL_99;
    }

    if (a12 && v30)
    {
      if (*(a1 + 40))
      {
        a9 = 0.0;
        if ((a11 & *(a1 + 81)) != 0)
        {
          *&a9 = v15;
        }

        v60 = *a10;
        v61 = *(a1 + 48) + 24 * *a10;
        *(v61 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
        *(v61 + 1) = a11;
        *v61 = *(a1 + 82);
        *(v61 + 4) = LODWORD(a9);
        *(v61 + 8) = v30;
        *a10 = v60 + 1;
        if ((v60 + 1) >= *(a1 + 40))
        {
          return 1;
        }
      }

      else
      {
        ++*a10;
      }
    }

    if (*(a1 + 97) != 1)
    {
      goto LABEL_99;
    }

    v62 = 0;
    v63 = (v28 + 4);
    v114 = v28 + 40;
    v116 = v29 + 4;
    v64 = *(a1 + 72) + 1;
    while (1)
    {
      *(a1 + 72) = v64;
      if (v18 == 3)
      {
        break;
      }

      v66 = v63[v62 >> 5];
      if ((v66 >> v62))
      {
        if (v62 >= 0x20)
        {
          v67 = 0;
          v68 = v62 >> 5;
          v69 = v63;
          do
          {
            v70 = *v69++;
            a9 = COERCE_DOUBLE(vcnt_s8(v70));
            LOWORD(a9) = vaddlv_u8(*&a9);
            v67 += LODWORD(a9);
            --v68;
          }

          while (v68);
        }

        else
        {
          v67 = 0;
        }

        LODWORD(a9) = v66 & ~(-1 << (v62 & 0x1F));
        a9 = COERCE_DOUBLE(vcnt_s8(*&a9));
        LOWORD(a9) = vaddlv_u8(*&a9);
        v65 = *(v114 + 4 * (v67 + LODWORD(a9)));
LABEL_97:
        v71 = 1;
        *&a9 = v15;
        if (sub_2993DCC50(a1, v65, a3, 0, a5, 0, a7, 0, a9, a10, a11, 1))
        {
          return v71;
        }
      }

      v64 = *(a1 + 72);
      *(a1 + 72) = v64 - 1;
      if (++v62 == 256)
      {
        goto LABEL_99;
      }
    }

    v65 = *(v116 + 4 * v62);
    goto LABEL_97;
  }

  if (v31 == 1)
  {
    if (!a4 && v30)
    {
      if (!a6 || a6 <= 3 && (v35 = *(a1 + 88) - (a1 + 98), v35 >= 2) && (v35 & 0x8000000000000001) != 1 && *(a1 + 98 + (v35 & 0xFFFFFFFFFFFFFFFELL) - 2) == *a5)
      {
        if (*(a1 + 40))
        {
          v36 = 0.0;
          if ((a11 & *(a1 + 81)) != 0)
          {
            v36 = v15;
          }

          v37 = *a10;
          v38 = *(a1 + 48) + 24 * *a10;
          *(v38 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
          *(v38 + 1) = a11;
          *v38 = *(a1 + 82);
          *(v38 + 4) = v36;
          *(v38 + 8) = v30;
          *a10 = v37 + 1;
          if ((v37 + 1) >= *(a1 + 40))
          {
            return 1;
          }
        }

        else
        {
          ++*a10;
        }
      }

      goto LABEL_102;
    }
  }

  else if (!v31 && !(a6 | a4 | a8))
  {
    if (v30)
    {
      if (*(a1 + 40))
      {
        v32 = 0.0;
        if ((a11 & *(a1 + 81)) != 0)
        {
          v32 = v15;
        }

        v33 = *a10;
        v34 = *(a1 + 48) + 24 * *a10;
        *(v34 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
        *(v34 + 1) = a11;
        *v34 = *(a1 + 82);
        *(v34 + 4) = v32;
        *(v34 + 8) = v30;
        *a10 = v33 + 1;
        if ((v33 + 1) >= *(a1 + 40))
        {
          return 1;
        }
      }

      else
      {
        ++*a10;
      }
    }

    return 0;
  }

LABEL_99:
  if (a4)
  {
    if (v18 == 3)
    {
      v72 = v27[*a3 + 1];
      v73 = a4 - 1;
      v113 = a12;
      v112 = a11;
      v111 = a10;
      v74 = a1;
      v75 = a3 + 1;
      v76 = a5;
    }

    else
    {
      v81 = *a3;
      v82 = (v27 + 1);
      v83 = v81 >> 5;
      v84 = v27[(v81 >> 5) + 1];
      if (((v84 >> v81) & 1) == 0)
      {
        return 0;
      }

      v85 = v81 & 0x1F;
      if (v81 >= 0x20)
      {
        v86 = 0;
        v76 = a5;
        do
        {
          v109 = *v82++;
          a9 = COERCE_DOUBLE(vcnt_s8(v109));
          LOWORD(a9) = vaddlv_u8(*&a9);
          v86 += LODWORD(a9);
          --v83;
        }

        while (v83);
      }

      else
      {
        v86 = 0;
        v76 = a5;
      }

      LODWORD(a9) = v84 & ~(-1 << v85);
      a9 = COERCE_DOUBLE(vcnt_s8(*&a9));
      LOWORD(a9) = vaddlv_u8(*&a9);
      v72 = v27[v86 + LODWORD(a9) + 10];
      v73 = a4 - 1;
      v113 = a12;
      v112 = a11;
      v75 = a3 + 1;
      v111 = a10;
      v74 = a1;
    }

    *&a9 = v15;
    return sub_2993DCC50(v74, v72, v75, v73, v76, a6, a7, a8, a9, v111, v112, v113);
  }

LABEL_102:
  if (a8)
  {
    if (*(a1 + 81) != 1 || (v77 = a7 - *(a1 + 24), (v77 & 1) != 0) || (v78 = *(a1 + 32), (v78 & 1) != 0) || v78 < 2 || (v79 = *(a1 + 56), (v79 & 1) != 0) || (v80 = sub_299254EB8(*(a1 + 8), *(a1 + 16), v15, (v77 >> 1) + 1, ((v77 & 0xFFFFFFFE) + v79) >> 1, (v79 + v78) >> 1, v125, 0xEuLL)) == 0)
    {
      LOWORD(v125[0]) = *a7;
      v125[1] = v15;
      v80 = 1;
    }

    else
    {
      if (LOWORD(v125[0]) != *a7)
      {
        LOWORD(v125[0]) = *a7;
      }

      if (v80 < 1)
      {
        return 0;
      }
    }

    v87 = v80;
    v88 = 1;
    v89 = v125;
    v90 = v80;
    v91 = 1;
    while (1)
    {
      if (!v121)
      {
        v121 = *v89 != *a7;
      }

      v122 = 0;
      v123 = 0;
      if (*(a1 + 80) == 1 && (*(a1 + 96) & 1) == 0)
      {
        break;
      }

      if (a8 < 4)
      {
        v92 = 0;
      }

      else
      {
        v92 = sub_2993DE948(a7, *(a1 + 24), *(a1 + 56), *v89, *(a1 + 16));
      }

      if (!*(a1 + 8) && !*(a1 + 16) || *(a1 + 82) && (*(a1 + 80) != 1 || (*(a1 + 96) & 1) == 0))
      {
        *v124 = *v89;
        v122 = 0;
        v123 = 0;
LABEL_137:
        v97 = *(a1 + 88);
        v95 = 2;
LABEL_138:
        memcpy(v97, a5, a6);
        v98 = (*(a1 + 88) + a6);
        *(a1 + 88) = v98;
        v96 = v122;
        if (!v122)
        {
          *v98 = *v89;
          *(a1 + 88) += 2;
          v96 = v122;
        }

        goto LABEL_140;
      }

      v93 = sub_299216378(v121, a5, a6, *v89, v124, 16, &v123, &v122, v92);
      v95 = v93;
      if (v93 == -2)
      {
        goto LABEL_142;
      }

      if (v93 == -1)
      {
        return v91;
      }

      v96 = v122;
      if (v122 > 7)
      {
        goto LABEL_142;
      }

      v97 = *(a1 + 88);
      if (v93)
      {
        goto LABEL_138;
      }

LABEL_140:
      *&v94 = v89[1];
      if (sub_2993DCC50(a1, a2, v124, v95, v123, v96, a7 + 1, a8 - 2, v94, a10, v121, a12))
      {
        return v91;
      }

      *(a1 + 88) = v97;
LABEL_142:
      v91 = v88++ < v87;
      v89 += 2;
      if (!--v90)
      {
        return 0;
      }
    }

    *v124 = *v89;
    v122 = 0;
    goto LABEL_137;
  }

  if (!a6)
  {
    return 0;
  }

  if (*(a1 + 96) != 1)
  {
    return 0;
  }

  v99 = *(a1 + 88);
  v100 = sub_299216BF4(a5, a6);
  if (!v100)
  {
    return 0;
  }

  v101 = v100;
  memcpy(*(a1 + 88), a5, a6);
  *(a1 + 88) += a6;
  if (*(a1 + 32) == a6 && *(a1 + 64) == 2)
  {
    *(a1 + 97) = 0;
  }

  v103 = *v101;
  if (v101[1] == *v101)
  {
LABEL_157:
    *(a1 + 88) = v99;
    return 0;
  }

  v104 = 0;
  v105 = 0;
  v71 = 1;
  while (1)
  {
    v106 = v103 + v104;
    v107 = *(v106 + 23);
    if (v107 < 0)
    {
      v108 = *v106;
      v107 = *(v106 + 8);
    }

    else
    {
      v108 = v106;
    }

    *&v102 = v15;
    if (sub_2993DCC50(a1, a2, v108, v107, 0, 0, a7, 0, v102, a10, a11, 1))
    {
      return v71;
    }

    ++v105;
    v103 = *v101;
    v104 += 24;
    if (v105 >= 0xAAAAAAAAAAAAAAABLL * ((v101[1] - *v101) >> 3))
    {
      goto LABEL_157;
    }
  }
}

uint64_t sub_2993DD7C4(unsigned int *a1, uint64_t a2)
{
  v5 = 0;
  *(a2 + 82) = 1;
  *(a2 + 72) = 0;
  if (!sub_2993DCC50(a2, *a1, 0, 0, 0, 0, *(a2 + 24), *(a2 + 32), 0.0, &v5, 0, 0) && (*(a2 + 80) & 1) == 0)
  {
    *(a2 + 82) = 0;
    *(a2 + 72) = 0;
    sub_2993DCC50(a2, *a1, 0, 0, 0, 0, *(a2 + 24), *(a2 + 32), 0.0, &v5, 0, 0);
  }

  return v5;
}

uint64_t sub_2993DD888(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    if (a2)
    {
      if (((a3 - v10) & 1) == 0)
      {
        v11 = sub_2993C4A54(*(a2 + v10), a4);
        if (v11)
        {
          break;
        }
      }
    }

    v16 = *(a1 + v10);
    v17 = *(a2 + v10);
    if (v16 < v17)
    {
      return 0xFFFFFFFFLL;
    }

    if (v16 > v17)
    {
      return 1;
    }

LABEL_13:
    if (++v10 >= a3)
    {
      return 0;
    }
  }

  v12 = v11[1] - *v11;
  if ((v12 >> 1) >= 1)
  {
    v13 = 0;
    v14 = *(a1 + v10);
    v15 = v12 >> 1;
    while (v14 != *(*v11 + 2 * v13))
    {
      if (v15 == ++v13)
      {
        goto LABEL_21;
      }
    }

    if (v13 && !*a5)
    {
      *a5 = 1;
    }

    ++v10;
    goto LABEL_13;
  }

  LOBYTE(v14) = *(a1 + v10);
LABEL_21:
  v19 = *(a2 + v10);
  if (v19 > v14)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 < v14)
  {
    return 1;
  }

  if (*(a1 + v10 + 1) < *(a2 + v10 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2993DD9C8(uint64_t a1, int a2, void *a3, unsigned __int8 *a4, unsigned int a5, unint64_t a6, uint64_t a7, unsigned int a8, int8x8_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13)
{
  if ((a2 & 3) != 2)
  {
    if ((a2 & 3) == 3 && a8 >= 1)
    {
      v16 = 0;
      v17 = *(a1 + 8) + (a2 - 3) + 4;
      v18 = a8;
      do
      {
        if (a13)
        {
          v19 = 1;
        }

        else
        {
          v19 = v16 == 0;
        }

        if (!v19)
        {
          a13 = 1;
        }

        v20 = *(v17 + 4 * *(a10 + 2 * v16));
        v21 = *(v17 + 4 * *(a10 + 2 * v16)) & 3;
        if ((v20 & 3) != 0)
        {
          v22 = *(a10 + 2 * v16 + 1);
          if (v21 == 2)
          {
            v24 = *(a1 + 8) + (v20 - 2);
            v25 = (v24 + 4);
            v26 = v22 >> 5;
            v27 = *(v24 + 4 + 4 * (v22 >> 5));
            if ((v27 >> v22))
            {
              if (v22 >= 0x20)
              {
                v28 = 0;
                do
                {
                  v30 = *v25++;
                  a9 = vcnt_s8(v30);
                  a9.i16[0] = vaddlv_u8(a9);
                  v28 += a9.i32[0];
                  --v26;
                }

                while (v26);
              }

              else
              {
                v28 = 0;
              }

              a9.i32[0] = v27 & ~(-1 << (v22 & 0x1F));
              a9 = vcnt_s8(a9);
              a9.i16[0] = vaddlv_u8(a9);
              v23 = *(v24 + 40 + 4 * (v28 + a9.i32[0]));
LABEL_22:
              v29 = sub_2993DB770(a1, v23, a3, a4, a5, a6, a7, -1, a9, a11, a12, a13);
LABEL_23:
              if (v29)
              {
                return 1;
              }
            }
          }

          else
          {
            if (v21 != 3)
            {
              v29 = sub_2993DB770(a1, v20, a3, a4, a5, a6, a7, v22, a9, a11, a12, a13);
              goto LABEL_23;
            }

            v23 = *(*(a1 + 8) + (v20 - 3) + 4 * v22 + 4);
            if ((v23 & 3) != 0)
            {
              goto LABEL_22;
            }
          }
        }

        ++v16;
      }

      while (v16 != v18);
    }

    return 0;
  }

  if (a8 < 1)
  {
    return 0;
  }

  v31 = 0;
  v32 = *(a1 + 8) + (a2 - 2);
  v33 = (v32 + 4);
  v34 = v32 + 40;
  v35 = a8;
  while (1)
  {
    if (a13)
    {
      v36 = 1;
    }

    else
    {
      v36 = v31 == 0;
    }

    if (!v36)
    {
      a13 = 1;
    }

    v37 = *(a10 + 2 * v31);
    v38 = v37 >> 5;
    v39 = v33[v37 >> 5];
    if (((v39 >> v37) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v37 >= 0x20)
    {
      v40 = 0;
      v41 = v33;
      do
      {
        v42 = *v41++;
        a9 = vcnt_s8(v42);
        a9.i16[0] = vaddlv_u8(a9);
        v40 += a9.i32[0];
        --v38;
      }

      while (v38);
    }

    else
    {
      v40 = 0;
    }

    a9.i32[0] = v39 & ~(-1 << (v37 & 0x1F));
    a9 = vcnt_s8(a9);
    a9.i16[0] = vaddlv_u8(a9);
    v43 = *(v34 + 4 * (v40 + a9.i32[0]));
    v44 = *(a10 + 2 * v31 + 1);
    v45 = *(v34 + 4 * (v40 + a9.i32[0])) & 3;
    if (v45 <= 1)
    {
      if (v45)
      {
        v46 = sub_2993DB770(a1, v43, a3, a4, a5, a6, a7, v44, a9, a11, a12, a13);
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if (v45 != 2)
    {
      break;
    }

    v47 = *(a1 + 8) + (v43 - 2);
    v48 = (v47 + 4);
    v49 = v44 >> 5;
    v50 = *(v47 + 4 + 4 * (v44 >> 5));
    if ((v50 >> v44))
    {
      if (v44 >= 0x20)
      {
        v51 = 0;
        do
        {
          v53 = *v48++;
          a9 = vcnt_s8(v53);
          a9.i16[0] = vaddlv_u8(a9);
          v51 += a9.i32[0];
          --v49;
        }

        while (v49);
      }

      else
      {
        v51 = 0;
      }

      a9.i32[0] = v50 & ~(-1 << (v44 & 0x1F));
      a9 = vcnt_s8(a9);
      a9.i16[0] = vaddlv_u8(a9);
      v52 = *(v47 + 40 + 4 * (v51 + a9.i32[0]));
      goto LABEL_50;
    }

LABEL_52:
    if (++v31 == v35)
    {
      return 0;
    }
  }

  v52 = *(*(a1 + 8) + (v43 - 3) + 4 * v44 + 4);
  if ((v52 & 3) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v46 = sub_2993DB770(a1, v52, a3, a4, a5, a6, a7, -1, a9, a11, a12, a13);
LABEL_51:
  if (!v46)
  {
    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_2993DDD54(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, unsigned int a5, uint64_t a6, int a7, unsigned int a8, int8x8_t a9, uint64_t a10, _BYTE *a11, void *a12)
{
  LODWORD(v12) = a7;
  if ((a2 & 3) != 2)
  {
    if ((a2 & 3) == 3 && a5 >= 1)
    {
      v16 = 0;
      v17 = *(a1 + 8) + (a2 - 3) + 4;
      v18 = a5;
      do
      {
        if (v12)
        {
          v19 = 1;
        }

        else
        {
          v19 = v16 == 0;
        }

        if (v19)
        {
          v12 = v12;
        }

        else
        {
          v12 = 1;
        }

        v20 = *(a6 + 2 * v16);
        *a11 = v20;
        v21 = *(v17 + 4 * v20);
        v22 = *(v17 + 4 * v20) & 3;
        if ((v21 & 3) != 0)
        {
          v23 = *(a6 + 2 * v16 + 1);
          a11[1] = v23;
          if (v22 == 2)
          {
            v25 = *(a1 + 8) + (v21 - 2);
            v26 = (v25 + 4);
            v27 = v23 >> 5;
            v28 = *(v25 + 4 + 4 * (v23 >> 5));
            if ((v28 >> v23))
            {
              if (v23 >= 0x20)
              {
                v29 = 0;
                do
                {
                  v31 = *v26++;
                  a9 = vcnt_s8(v31);
                  a9.i16[0] = vaddlv_u8(a9);
                  v29 += a9.i32[0];
                  --v27;
                }

                while (v27);
              }

              else
              {
                v29 = 0;
              }

              a9.i32[0] = v28 & ~(-1 << (v23 & 0x1F));
              a9 = vcnt_s8(a9);
              a9.i16[0] = vaddlv_u8(a9);
              v24 = *(v25 + 40 + 4 * (v29 + a9.i32[0]));
LABEL_23:
              v30 = sub_2993DBD10(a1, v24, a3, a4, -1, v12, a8, a10, a9, a11 + 2, a12);
LABEL_24:
              if (v30)
              {
                return 1;
              }
            }
          }

          else
          {
            if (v22 != 3)
            {
              v30 = sub_2993DBD10(a1, v21, a3, a4, v23, v12, a8, a10, a9, a11 + 2, a12);
              goto LABEL_24;
            }

            v24 = *(*(a1 + 8) + (v21 - 3) + 4 * v23 + 4);
            if ((v24 & 3) != 0)
            {
              goto LABEL_23;
            }
          }
        }

        ++v16;
      }

      while (v16 != v18);
    }

    return 0;
  }

  if (a5 < 1)
  {
    return 0;
  }

  v32 = 0;
  v33 = *(a1 + 8) + (a2 - 2);
  v34 = (v33 + 4);
  v35 = v33 + 40;
  v55 = a11 + 2;
  v36 = a5;
  while (1)
  {
    if (v12)
    {
      v37 = 1;
    }

    else
    {
      v37 = v32 == 0;
    }

    v38 = *(a6 + 2 * v32);
    if (v37)
    {
      v12 = v12;
    }

    else
    {
      v12 = 1;
    }

    *a11 = v38;
    v39 = v38 >> 5;
    v40 = v34[v38 >> 5];
    if (((v40 >> v38) & 1) == 0)
    {
      goto LABEL_54;
    }

    if (v38 >= 0x20)
    {
      v41 = 0;
      v42 = v34;
      do
      {
        v43 = *v42++;
        a9 = vcnt_s8(v43);
        a9.i16[0] = vaddlv_u8(a9);
        v41 += a9.i32[0];
        --v39;
      }

      while (v39);
    }

    else
    {
      v41 = 0;
    }

    a9.i32[0] = v40 & ~(-1 << (v38 & 0x1F));
    a9 = vcnt_s8(a9);
    a9.i16[0] = vaddlv_u8(a9);
    v44 = *(v35 + 4 * (v41 + a9.i32[0]));
    v45 = *(a6 + 2 * v32 + 1);
    a11[1] = v45;
    if ((v44 & 3u) <= 1)
    {
      if ((v44 & 3) != 0)
      {
        v46 = sub_2993DBD10(a1, v44, a3, a4, v45, v12, a8, a10, a9, v55, a12);
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    if ((v44 & 3) != 2)
    {
      break;
    }

    v47 = *(a1 + 8) + (v44 - 2);
    v48 = (v47 + 4);
    v49 = v45 >> 5;
    v50 = *(v47 + 4 + 4 * (v45 >> 5));
    if ((v50 >> v45))
    {
      if (v45 >= 0x20)
      {
        v51 = 0;
        do
        {
          v53 = *v48++;
          a9 = vcnt_s8(v53);
          a9.i16[0] = vaddlv_u8(a9);
          v51 += a9.i32[0];
          --v49;
        }

        while (v49);
      }

      else
      {
        v51 = 0;
      }

      a9.i32[0] = v50 & ~(-1 << (v45 & 0x1F));
      a9 = vcnt_s8(a9);
      a9.i16[0] = vaddlv_u8(a9);
      v52 = *(v47 + 40 + 4 * (v51 + a9.i32[0]));
      goto LABEL_52;
    }

LABEL_54:
    if (++v32 == v36)
    {
      return 0;
    }
  }

  v52 = *(*(a1 + 8) + (v44 - 3) + 4 * v45 + 4);
  if ((v52 & 3) == 0)
  {
    goto LABEL_54;
  }

LABEL_52:
  v46 = sub_2993DBD10(a1, v52, a3, a4, -1, v12, a8, a10, a9, v55, a12);
LABEL_53:
  if (!v46)
  {
    goto LABEL_54;
  }

  return 1;
}

uint64_t sub_2993DE0F8(uint64_t a1, int a2, char *a3, unsigned int a4, unsigned int a5, uint64_t a6, int a7, int a8, int8x8_t a9, uint64_t a10, _BYTE *a11, void *a12, uint64_t a13)
{
  if ((a2 & 3) != 2)
  {
    if ((a2 & 3) == 3 && a5 >= 1)
    {
      v17 = 0;
      v18 = *(a1 + 8) + (a2 - 3) + 4;
      v19 = a5;
      do
      {
        if (a7)
        {
          v20 = 1;
        }

        else
        {
          v20 = v17 == 0;
        }

        if (!v20)
        {
          a7 = 1;
        }

        v21 = *(a6 + 2 * v17);
        *a11 = v21;
        v22 = *(v18 + 4 * v21);
        v23 = *(v18 + 4 * v21) & 3;
        if ((v22 & 3) != 0)
        {
          v24 = *(a6 + 2 * v17 + 1);
          a11[1] = v24;
          if (v23 == 2)
          {
            v26 = *(a1 + 8) + (v22 - 2);
            v27 = (v26 + 4);
            v28 = v24 >> 5;
            v29 = *(v26 + 4 + 4 * (v24 >> 5));
            if ((v29 >> v24))
            {
              if (v24 >= 0x20)
              {
                v30 = 0;
                do
                {
                  v32 = *v27++;
                  a9 = vcnt_s8(v32);
                  a9.i16[0] = vaddlv_u8(a9);
                  v30 += a9.i32[0];
                  --v28;
                }

                while (v28);
              }

              else
              {
                v30 = 0;
              }

              a9.i32[0] = v29 & ~(-1 << (v24 & 0x1F));
              a9 = vcnt_s8(a9);
              a9.i16[0] = vaddlv_u8(a9);
              v25 = *(v26 + 40 + 4 * (v30 + a9.i32[0]));
LABEL_22:
              v31 = sub_2993DC510(a1, v25, a3, a4, 0, -1, a7, a8, a9, a10, a11 + 2, a12, a13);
LABEL_23:
              if (v31)
              {
                return 1;
              }
            }
          }

          else
          {
            if (v23 != 3)
            {
              v31 = sub_2993DC510(a1, v22, a3, a4, 0, v24, a7, a8, a9, a10, a11 + 2, a12, a13);
              goto LABEL_23;
            }

            v25 = *(*(a1 + 8) + (v22 - 3) + 4 * v24 + 4);
            if ((v25 & 3) != 0)
            {
              goto LABEL_22;
            }
          }
        }

        ++v17;
      }

      while (v17 != v19);
    }

    return 0;
  }

  if (a5 < 1)
  {
    return 0;
  }

  v33 = 0;
  v34 = *(a1 + 8) + (a2 - 2);
  v35 = (v34 + 4);
  v36 = v34 + 40;
  v56 = a11 + 2;
  v37 = a5;
  while (1)
  {
    if (a7)
    {
      v38 = 1;
    }

    else
    {
      v38 = v33 == 0;
    }

    v39 = *(a6 + 2 * v33);
    if (!v38)
    {
      a7 = 1;
    }

    *a11 = v39;
    v40 = v39 >> 5;
    v41 = v35[v39 >> 5];
    if (((v41 >> v39) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (v39 >= 0x20)
    {
      v42 = 0;
      v43 = v35;
      do
      {
        v44 = *v43++;
        a9 = vcnt_s8(v44);
        a9.i16[0] = vaddlv_u8(a9);
        v42 += a9.i32[0];
        --v40;
      }

      while (v40);
    }

    else
    {
      v42 = 0;
    }

    a9.i32[0] = v41 & ~(-1 << (v39 & 0x1F));
    a9 = vcnt_s8(a9);
    a9.i16[0] = vaddlv_u8(a9);
    v45 = *(v36 + 4 * (v42 + a9.i32[0]));
    v46 = *(a6 + 2 * v33 + 1);
    a11[1] = v46;
    if ((v45 & 3u) <= 1)
    {
      if ((v45 & 3) != 0)
      {
        v47 = sub_2993DC510(a1, v45, a3, a4, 0, v46, a7, a8, a9, a10, v56, a12, a13);
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    if ((v45 & 3) != 2)
    {
      break;
    }

    v48 = *(a1 + 8) + (v45 - 2);
    v49 = (v48 + 4);
    v50 = v46 >> 5;
    v51 = *(v48 + 4 + 4 * (v46 >> 5));
    if ((v51 >> v46))
    {
      if (v46 >= 0x20)
      {
        v52 = 0;
        do
        {
          v54 = *v49++;
          a9 = vcnt_s8(v54);
          a9.i16[0] = vaddlv_u8(a9);
          v52 += a9.i32[0];
          --v50;
        }

        while (v50);
      }

      else
      {
        v52 = 0;
      }

      a9.i32[0] = v51 & ~(-1 << (v46 & 0x1F));
      a9 = vcnt_s8(a9);
      a9.i16[0] = vaddlv_u8(a9);
      v53 = *(v48 + 40 + 4 * (v52 + a9.i32[0]));
      goto LABEL_50;
    }

LABEL_52:
    if (++v33 == v37)
    {
      return 0;
    }
  }

  v53 = *(*(a1 + 8) + (v45 - 3) + 4 * v46 + 4);
  if ((v53 & 3) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v47 = sub_2993DC510(a1, v53, a3, a4, 0, -1, a7, a8, a9, a10, v56, a12, a13);
LABEL_51:
  if (!v47)
  {
    goto LABEL_52;
  }

  return 1;
}

uint64_t sub_2993DE4C4(uint64_t a1, char *a2, signed int a3, char *a4, unsigned int a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, _BYTE *a9, int a10, float *a11)
{
  LODWORD(v11) = a5;
  v52 = *MEMORY[0x29EDCA608];
  if (!a7)
  {
    if (!a5)
    {
      v32 = *(a1 + 64);
      if (v32 >= 2)
      {
        if (v32 == 2 && (a3 || a10))
        {
          v33 = *(a1 + 72) + a3;
LABEL_44:
          *(a1 + 72) = v33;
          return 1;
        }

        return 0;
      }

      return a3 == 0;
    }

    if (*(a1 + 96) != 1)
    {
      return 0;
    }

    v21 = *(a1 + 88);
    result = sub_299216BF4(a4, a5);
    if (!result)
    {
      return result;
    }

    v23 = result;
    memcpy(*(a1 + 88), a4, v11);
    *(a1 + 88) += v11;
    if (*(a1 + 32) == v11 && *(a1 + 64) == 2)
    {
      *(a1 + 97) = 0;
    }

    v24 = *v23;
    v25 = v23[1] - *v23;
    if (!v25)
    {
LABEL_33:
      result = 0;
      *(a1 + 88) = v21;
      return result;
    }

    v26 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    while (1)
    {
      if (v24[23] < 0)
      {
        v28 = *(v24 + 1);
        if (a3 < v28)
        {
          goto LABEL_32;
        }

        v29 = *v24;
      }

      else
      {
        LODWORD(v28) = v24[23];
        if (v28 > a3)
        {
          goto LABEL_32;
        }

        v29 = v24;
      }

      if (!memcmp(a2, v29, v28))
      {
        if ((*(a1 + 97) & 1) == 0)
        {
          return v28 == a3;
        }

        v30 = *(a1 + 64);
        if (v30 >= 2)
        {
          if (v30 == 2)
          {
            v33 = *(a1 + 72) + (a3 - v28);
            goto LABEL_44;
          }
        }

        else if (a3 == v28)
        {
          return 1;
        }
      }

LABEL_32:
      v24 += 24;
      if (!--v27)
      {
        goto LABEL_33;
      }
    }
  }

  if (a3)
  {
    v16 = *a11;
    if (*(a1 + 81) == 1)
    {
      v17 = a6 - *(a1 + 24);
      if ((v17 & 1) == 0)
      {
        v18 = *(a1 + 32);
        if ((v18 & 1) == 0 && (a8 & 1) == 0 && v18 >= 2)
        {
          v19 = sub_299254EB8(*(a1 + 8), *(a1 + 16), v16, (v17 >> 1) + 1, ((v17 & 0xFFFFFFFE) + a8) >> 1, (v18 + a8) >> 1, v50, 0xEuLL);
          if (v19)
          {
            if (v19 < 1)
            {
              return 0;
            }

            goto LABEL_47;
          }

          v16 = *a11;
        }
      }
    }

    v50[0] = *a6;
    v51 = v16;
    v19 = 1;
LABEL_47:
    v34 = v50;
    v11 = v11;
    v35 = v19;
    v43 = v11;
    while (1)
    {
      v47 = 0;
      v48 = 0;
      v36 = *a9;
      if (!*a9)
      {
        if (*v34 == *a6)
        {
          v36 = 0;
        }

        else
        {
          v36 = 1;
          *a9 = 1;
        }
      }

      if (a7 < 4)
      {
        v37 = 0;
      }

      else
      {
        v37 = sub_2993DE948(a6, *(a1 + 24), *(a1 + 56), *v34, *(a1 + 16));
        v36 = *a9;
      }

      if (*(a1 + 8) || *(a1 + 16)) && (!*(a1 + 82) || *(a1 + 80) == 1 && (*(a1 + 96)))
      {
        v38 = sub_299216378(v36 != 0, a4, v11, *v34, __s2, 16, &v48, &v47, v37);
        if (v38 == -2)
        {
          goto LABEL_73;
        }

        v39 = v38;
        if (v38 == -1)
        {
          return 0;
        }

        if (v47 > 7)
        {
          goto LABEL_73;
        }

        v40 = *(a1 + 88);
        if (!v38)
        {
LABEL_69:
          if (!memcmp(a2, __s2, v39))
          {
            v46 = *(v34 + 1);
            if (sub_2993DE4C4(a1, &a2[v39], (a3 - v39), v48, v47, a6 + 1, a7 - 2, a8, a9, a10, &v46))
            {
              *a11 = v46;
              return 1;
            }
          }

          v11 = v43;
          goto LABEL_72;
        }
      }

      else
      {
        __s2[0] = *v34;
        v47 = 0;
        v48 = 0;
        v39 = 2;
        v40 = *(a1 + 88);
      }

      memcpy(v40, a4, v11);
      v41 = (*(a1 + 88) + v11);
      *(a1 + 88) = v41;
      if (!v47)
      {
        *v41 = *v34;
        *(a1 + 88) += 2;
      }

      if (v39 <= a3)
      {
        goto LABEL_69;
      }

LABEL_72:
      *(a1 + 88) = v40;
LABEL_73:
      v34 += 4;
      if (!--v35)
      {
        return 0;
      }
    }
  }

  return *(a1 + 64) == 1;
}