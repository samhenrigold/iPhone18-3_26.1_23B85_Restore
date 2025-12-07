uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_partial(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *__dst, char *a3, int a4, int a5)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 >= a5)
  {
    v5 = a5;
  }

  else
  {
    v5 = a4;
  }

  if (!v5)
  {
    return 0;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (this + a3);
  v8 = &__dst[v5];
  v52 = (v7 - 8);
  v9 = v7 - 15;
  v10 = v8 - 12;
  v11 = (v7 - 4);
  v50 = (v7 - 4);
  v51 = v7;
  v12 = (v7 - 2);
  v49 = this;
  v13 = this;
  v14 = __dst;
  while (1)
  {
    while (1)
    {
      v15 = (v13 + 1);
      v16 = *v13;
      v17 = v16 >> 4;
      if ((v16 >> 4) == 15)
      {
        if (v15 >= v9)
        {
          LODWORD(v13) = v13 + 1;
          return (~v13 + v49);
        }

        LODWORD(v18) = 0;
        v19 = v13 + 2;
        v13 = (v13 + 1);
        do
        {
          v21 = *v13;
          v13 = (v13 + 1);
          v20 = v21;
          v18 = (v18 + v21);
          ++v19;
        }

        while (v13 < v9 && v20 == 255);
        v17 = v18 + 15;
        if (__CFADD__(v14, v18 + 15) || v17 > -v19)
        {
          return (~v13 + v49);
        }

        goto LABEL_15;
      }

      if (v15 >= v52 || v14 > v8 - 32)
      {
        break;
      }

      *v14 = *v15;
      v22 = &v14[v17];
      v34 = (v15 + v17);
      v32 = v16 & 0xF;
      v35 = *v34;
      v13 = (v34 + 1);
      v28 = v35;
      v31 = &v14[v17 - v35];
      if ((v16 & 0xF) == 0xF || v28 < 8 || v31 < __dst)
      {
        v29 = v13;
        goto LABEL_46;
      }

      *v22 = *v31;
      *(v22 + 1) = *(v31 + 1);
      *(v22 + 8) = *(v31 + 8);
      v14 = &v22[v32 + 4];
    }

    v13 = (v13 + 1);
LABEL_15:
    v22 = &v14[v17];
    v23 = (v13 + v17);
    if (&v14[v17] > v10 || v23 > v11)
    {
      if (v23 > v11 && v23 != v51)
      {
        return (~v13 + v49);
      }

      if (v22 > v8)
      {
        memmove(v14, v13, v8 - v14);
LABEL_77:
        LODWORD(v22) = v8;
        return (v22 - __dst);
      }

      memmove(v14, v13, v17);
      v11 = v50;
      if (v22 == v8 || v23 == v51)
      {
        return (v22 - __dst);
      }
    }

    else
    {
      do
      {
        v27 = *v13;
        v13 = (v13 + 8);
        *v14 = v27;
        v14 += 8;
      }

      while (v14 < v22);
    }

    v30 = *v23;
    v29 = (v23 + 1);
    v28 = v30;
    v31 = &v22[-v30];
    v32 = v16 & 0xF;
LABEL_46:
    if (v32 == 15)
    {
      break;
    }

    v13 = v29;
LABEL_54:
    if (v31 < __dst)
    {
      return (~v13 + v49);
    }

    v14 = &v22[v32 + 4];
    if (v14 <= v10)
    {
      if (v28 <= 7)
      {
        *v22 = 0;
        *v22 = *v31;
        v22[1] = v31[1];
        v22[2] = v31[2];
        v22[3] = v31[3];
        v47 = &v31[dword_29B436458[v28]];
        *(v22 + 1) = *v47;
        v42 = &v47[-dword_29B436478[v28]];
      }

      else
      {
        v43 = *v31;
        v42 = v31 + 8;
        *v22 = v43;
      }

      *(v22 + 1) = *v42;
      if (v32 >= 0xD)
      {
        v44 = v22 + 16;
        v45 = (v42 + 8);
        do
        {
          v46 = *v45++;
          *v44 = v46;
          v44 += 8;
        }

        while (v44 < v14);
      }
    }

    else
    {
      if (v32 + 4 >= v8 - v22)
      {
        v40 = v8 - v22;
      }

      else
      {
        v40 = v32 + 4;
      }

      v14 = &v22[v40];
      if (&v31[v40] <= v22)
      {
        memcpy(v22, v31, v40);
        v11 = v50;
      }

      else if (v8 != v22)
      {
        do
        {
          v41 = *v31++;
          *v22++ = v41;
        }

        while (v22 < v14);
      }

      if (v14 == v8)
      {
        goto LABEL_77;
      }
    }
  }

  LODWORD(v38) = 0;
  while (1)
  {
    v13 = (v29 + 1);
    if (v29 + 1 >= v12)
    {
      return (~v13 + v49);
    }

    v39 = *v29;
    v38 = (v38 + v39);
    v29 = (v29 + 1);
    if (v39 != 255)
    {
      v32 = v38 + 15;
      if (__CFADD__(v22, v32))
      {
        return (~v13 + v49);
      }

      goto LABEL_54;
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_withPrefix64k(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3, int a4)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    if (a3 == 1)
    {
      if (*this)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = (this + a3);
  v6 = &a2[a4];
  v7 = a4;
  v8 = v6 - 32;
  v9 = v5 - 15;
  v10 = v6 - 12;
  v11 = v6 - 7;
  v12 = v6 - 5;
  v13 = this;
  while (1)
  {
    v14 = &a2[v4];
    v16 = (v13 + 1);
    v15 = *v13;
    v17 = v15 >> 4;
    if ((v15 >> 4) == 15)
    {
      break;
    }

    if (v16 >= v5 - 1 || v14 > v8)
    {
      v13 = (v13 + 1);
      goto LABEL_12;
    }

    *v14 = *v16;
    v22 = v4 + v17;
    v29 = v15 & 0xF;
    v13 = (v16 + v17 + 2);
    v27 = *(v16 + v17);
    v28 = v22 - v27;
    if ((v15 & 0xF) != 0xF && v27 >= 8)
    {
      v44 = &a2[v28];
      v45 = &a2[v22];
      *v45 = *v44;
      *(v45 + 1) = *(v44 + 1);
      *(v45 + 8) = *(v44 + 8);
      v4 = v29 + v22 + 4;
    }

    else
    {
LABEL_26:
      v32 = &a2[v22];
      if (v29 == 15)
      {
        LODWORD(v33) = 0;
        v34 = v13;
        while (1)
        {
          v13 = (v34 + 1);
          if (v34 + 1 >= (v5 - 2))
          {
            return (~v13 + this);
          }

          v35 = *v34;
          v33 = (v33 + v35);
          v34 = (v34 + 1);
          if (v35 != 255)
          {
            v29 = v33 + 15;
            if (__CFADD__(v32, v29))
            {
              return (~v13 + this);
            }

            break;
          }
        }
      }

      if (v28 < -65536)
      {
        return (~v13 + this);
      }

      v36 = &a2[v28];
      if (v27 <= 7)
      {
        *v32 = 0;
        *v32 = *v36;
        v32[1] = v36[1];
        v32[2] = v36[2];
        v32[3] = v36[3];
        v46 = &v36[dword_29B436458[v27]];
        *(v32 + 1) = *v46;
        v37 = &v46[-dword_29B436478[v27]];
      }

      else
      {
        v38 = *v36;
        v37 = v36 + 8;
        *v32 = v38;
      }

      v4 = v22 + v29 + 4;
      v39 = &a2[v4];
      v40 = v32 + 8;
      if (&a2[v4] > v10)
      {
        if (v39 > v12)
        {
          return (~v13 + this);
        }

        if (v40 < v11)
        {
          v47 = v37;
          v48 = v32 + 8;
          do
          {
            v49 = *v47;
            v47 += 8;
            *v48 = v49;
            v48 += 8;
          }

          while (v48 < v11);
          v37 += v11 - v40;
          v40 = v11;
        }

        while (v40 < v39)
        {
          v50 = *v37++;
          *v40++ = v50;
        }
      }

      else
      {
        *v40 = *v37;
        if (v29 >= 0xD)
        {
          v41 = v32 + 16;
          v42 = (v37 + 8);
          do
          {
            v43 = *v42++;
            *v41 = v43;
            v41 += 8;
          }

          while (v41 < v39);
        }
      }
    }
  }

  if (v16 >= v9)
  {
    LODWORD(v13) = v13 + 1;
    return (~v13 + this);
  }

  LODWORD(v18) = 0;
  v19 = v13 + 2;
  v13 = (v13 + 1);
  do
  {
    v21 = *v13;
    v13 = (v13 + 1);
    v20 = v21;
    v18 = (v18 + v21);
    ++v19;
  }

  while (v13 < v9 && v20 == 255);
  v17 = v18 + 15;
  if (__CFADD__(v14, v17) || v17 > -v19)
  {
    return (~v13 + this);
  }

LABEL_12:
  v22 = v17 + v4;
  v23 = &a2[v17 + v4];
  v24 = (v13 + v17);
  if (v23 <= v10 && v24 <= v5 - 4)
  {
    do
    {
      v26 = *v13;
      v13 = (v13 + 8);
      *v14 = v26;
      v14 += 8;
    }

    while (v14 < v23);
    v27 = *v24;
    v28 = v22 - v27;
    v29 = v15 & 0xF;
    v13 = (v24 + 1);
    goto LABEL_26;
  }

  if (v24 != v5 || v22 > v7)
  {
    return (~v13 + this);
  }

  memmove(v14, v13, v17);
  return v22;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_forceExtDict(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *__dst, char *a3, int a4, uint64_t a5, unint64_t a6)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a5 + a6;
  if (!a5)
  {
    v7 = 0;
  }

  v60 = v7;
  if (!a4)
  {
    if (a3 == 1)
    {
      if (*this)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (this + a3);
  v10 = &__dst[a4];
  v63 = v10 - 32;
  v64 = (v9 - 8);
  v11 = v9 - 15;
  v12 = v10 - 12;
  v57 = v10;
  v58 = v9;
  v13 = (v9 - 2);
  v56 = v10 - 7;
  v61 = v10 - 5;
  v62 = (v9 - 4);
  v59 = this;
  v14 = this;
  v15 = __dst;
  while (1)
  {
    while (1)
    {
      v17 = (v14 + 1);
      v16 = *v14;
      v18 = v16 >> 4;
      if ((v16 >> 4) == 15)
      {
        break;
      }

      if (v17 >= v64 || v15 > v63)
      {
        v14 = (v14 + 1);
        goto LABEL_14;
      }

      *v15 = *v17;
      v23 = &v15[v18];
      v31 = v16 & 0xF;
      v14 = (v17 + v18 + 2);
      v27 = *(v17 + v18);
      v30 = &v15[v18 - v27];
      if (v31 == 15 || v27 < 8 || v30 < __dst)
      {
        v28 = v14;
        goto LABEL_32;
      }

      *v23 = *v30;
      *(v23 + 1) = *(v30 + 8);
      *(v23 + 8) = *(v30 + 16);
      v15 = &v23[v31 + 4];
    }

    if (v17 >= v11)
    {
      LODWORD(v14) = v14 + 1;
      return (~v14 + v59);
    }

    LODWORD(v19) = 0;
    v20 = v14 + 2;
    v14 = (v14 + 1);
    do
    {
      v22 = *v14;
      v14 = (v14 + 1);
      v21 = v22;
      v19 = (v19 + v22);
      ++v20;
    }

    while (v14 < v11 && v21 == 255);
    v18 = v19 + 15;
    if (__CFADD__(v15, v19 + 15) || v18 > -v20)
    {
      return (~v14 + v59);
    }

LABEL_14:
    v23 = &v15[v18];
    v24 = (v14 + v18);
    if (&v15[v18] > v12 || v24 > v62)
    {
      break;
    }

    do
    {
      v26 = *v14;
      v14 = (v14 + 8);
      *v15 = v26;
      v15 += 8;
    }

    while (v15 < v23);
    v29 = *v24;
    v28 = (v24 + 1);
    v27 = v29;
    v30 = &v23[-v29];
    v31 = v16 & 0xF;
LABEL_32:
    if (v31 == 15)
    {
      LODWORD(v35) = 0;
      while (1)
      {
        v14 = (v28 + 1);
        if (v28 + 1 >= v13)
        {
          return (~v14 + v59);
        }

        v36 = *v28;
        v35 = (v35 + v36);
        v28 = (v28 + 1);
        if (v36 != 255)
        {
          v31 = v35 + 15;
          if (__CFADD__(v23, v31))
          {
            return (~v14 + v59);
          }

          goto LABEL_40;
        }
      }
    }

    v14 = v28;
LABEL_40:
    if (!(a6 >> 16) && v30 + a6 < __dst)
    {
      return (~v14 + v59);
    }

    v37 = v31 + 4;
    v15 = &v23[v31 + 4];
    if (v30 >= __dst)
    {
      if (v27 <= 7)
      {
        *v23 = 0;
        *v23 = *v30;
        v23[1] = *(v30 + 1);
        v23[2] = *(v30 + 2);
        v23[3] = *(v30 + 3);
        v49 = (v30 + dword_29B436458[v27]);
        *(v23 + 1) = *v49;
        v43 = v49 - dword_29B436478[v27];
      }

      else
      {
        v44 = *v30;
        v43 = (v30 + 8);
        *v23 = v44;
      }

      v45 = v23 + 8;
      if (v15 > v12)
      {
        if (v15 > v61)
        {
          return (~v14 + v59);
        }

        if (v45 < v56)
        {
          v50 = v43;
          v51 = v23 + 8;
          do
          {
            v52 = *v50++;
            *v51 = v52;
            v51 += 8;
          }

          while (v51 < v56);
          v43 += v56 - v45;
          v45 = v56;
        }

        while (v45 < v15)
        {
          v53 = *v43++;
          *v45 = v53;
          v45 = (v45 + 1);
        }
      }

      else
      {
        *v45 = *v43;
        if (v31 >= 0xD)
        {
          v46 = v23 + 16;
          v47 = (v43 + 8);
          do
          {
            v48 = *v47++;
            *v46 = v48;
            v46 += 8;
          }

          while (v46 < v15);
        }
      }
    }

    else
    {
      if (v15 > v61)
      {
        return (~v14 + v59);
      }

      v38 = &__dst[-v30];
      v39 = v37 - &__dst[-v30];
      if (v37 <= &__dst[-v30])
      {
        memmove(v23, (v60 - v38), v37);
      }

      else
      {
        memcpy(v23, (v60 - v38), v38);
        v40 = &v38[v23];
        if (v39 <= &v38[v23] - __dst)
        {
          memcpy(v40, __dst, v39);
        }

        else
        {
          v41 = __dst;
          do
          {
            v42 = *v41++;
            *v40++ = v42;
          }

          while (v40 < v15);
          v15 = v40;
        }
      }
    }
  }

  if (v24 == v58 && v23 <= v57)
  {
    memmove(v15, v14, v18);
    return (v23 - __dst);
  }

  return (~v14 + v59);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_continue(void *a1, char *__src, char *__dst, int a4, int a5)
{
  v5 = __dst;
  v6 = a1;
  v7 = a1[3];
  if (v7)
  {
    v8 = a1[2];
    if (v8 == __dst)
    {
      if (v7 >= 0xFFFF)
      {
        v70 = sub_29A0E8DD8(a1, __src);
        result = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_withPrefix64k(v70, v71, v72, v73);
        goto LABEL_81;
      }

      v9 = a1[1];
      if (!v9)
      {
        v74 = sub_29A0E8DD8(a1, __src);
        result = sub_29B28C74C(v74, v75, v76, v77, v78);
        goto LABEL_81;
      }

      if (__src)
      {
        if (*a1)
        {
          v10 = *a1 + v9;
        }

        else
        {
          v10 = 0;
        }

        v85 = v10;
        if (a5)
        {
          if (a4)
          {
            v83 = __src;
            v11 = &__src[a4];
            v12 = &__dst[a5];
            v13 = &__dst[-v7];
            v88 = v12 - 32;
            v89 = v11 - 16;
            v14 = v11 - 15;
            v15 = v12 - 12;
            v81 = v12;
            v82 = v11;
            v16 = (v11 - 4);
            v79 = v12 - 7;
            v80 = __dst;
            v86 = v12 - 5;
            v87 = v11 - 8;
            v17 = __src;
            while (1)
            {
              v19 = v17 + 1;
              v18 = *v17;
              v20 = v18 >> 4;
              if ((v18 >> 4) == 15)
              {
                break;
              }

              if (v19 >= v89 || v5 > v88)
              {
                ++v17;
LABEL_19:
                v25 = &v5[v20];
                v26 = &v17[v20];
                if (&v5[v20] > v15 || v26 > v87)
                {
                  if (v26 == v82 && v25 <= v81)
                  {
                    memmove(v5, v17, v20);
                    result = (v25 - v80);
                    goto LABEL_80;
                  }

LABEL_79:
                  result = (~v17 + v83);
LABEL_80:
                  v6 = a1;
LABEL_81:
                  if (result >= 1)
                  {
                    v58 = v6[3] + result;
                    v59 = (v6[2] + result);
                    goto LABEL_83;
                  }

                  return result;
                }

                do
                {
                  v28 = *v17;
                  v17 += 8;
                  *v5 = v28;
                  v5 += 8;
                }

                while (v5 < v25);
                v31 = *v26;
                v30 = (v26 + 1);
                v29 = v31;
                v32 = &v25[-v31];
                v33 = v18 & 0xF;
LABEL_37:
                if (v33 == 15)
                {
                  LODWORD(v37) = 0;
                  while (1)
                  {
                    v17 = v30 + 1;
                    if ((v30 + 1) >= v16)
                    {
                      goto LABEL_79;
                    }

                    v38 = *v30;
                    v37 = (v37 + v38);
                    ++v30;
                    if (v38 != 255)
                    {
                      v33 = v37 + 15;
                      if (__CFADD__(v25, v33))
                      {
                        goto LABEL_79;
                      }

                      goto LABEL_45;
                    }
                  }
                }

                v17 = v30;
LABEL_45:
                if (!(v9 >> 16) && v32 + v9 < v13)
                {
                  goto LABEL_79;
                }

                v39 = v33 + 4;
                v5 = &v25[v33 + 4];
                if (v32 >= v13)
                {
                  if (v29 <= 7)
                  {
                    *v25 = 0;
                    *v25 = *v32;
                    v25[1] = *(v32 + 1);
                    v25[2] = *(v32 + 2);
                    v25[3] = *(v32 + 3);
                    v51 = (v32 + dword_29B436458[v29]);
                    *(v25 + 1) = *v51;
                    v45 = v51 - dword_29B436478[v29];
                  }

                  else
                  {
                    v46 = *v32;
                    v45 = (v32 + 8);
                    *v25 = v46;
                  }

                  v47 = v25 + 8;
                  if (v5 > v15)
                  {
                    if (v5 > v86)
                    {
                      goto LABEL_79;
                    }

                    if (v47 < v79)
                    {
                      v52 = v45;
                      v53 = v25 + 8;
                      do
                      {
                        v54 = *v52++;
                        *v53 = v54;
                        v53 += 8;
                      }

                      while (v53 < v79);
                      v45 += v79 - v47;
                      v47 = v79;
                    }

                    while (v47 < v5)
                    {
                      v55 = *v45++;
                      *v47 = v55;
                      v47 = (v47 + 1);
                    }
                  }

                  else
                  {
                    *v47 = *v45;
                    if (v33 >= 0xD)
                    {
                      v48 = v25 + 16;
                      v49 = (v45 + 8);
                      do
                      {
                        v50 = *v49++;
                        *v48 = v50;
                        v48 += 8;
                      }

                      while (v48 < v5);
                    }
                  }
                }

                else
                {
                  if (v5 > v86)
                  {
                    goto LABEL_79;
                  }

                  v40 = &v13[-v32];
                  v41 = v39 - &v13[-v32];
                  if (v39 <= &v13[-v32])
                  {
                    memmove(v25, (v85 - v40), v39);
                  }

                  else
                  {
                    memcpy(v25, (v85 - v40), v40);
                    v42 = &v25[v40];
                    if (v41 <= &v25[v40] - v13)
                    {
                      memcpy(v42, v13, v41);
                    }

                    else
                    {
                      v43 = v13;
                      do
                      {
                        v44 = *v43++;
                        *v42++ = v44;
                      }

                      while (v42 < v5);
                      v5 = v42;
                    }
                  }
                }
              }

              else
              {
                *v5 = *v19;
                v25 = &v5[v20];
                v33 = v18 & 0xF;
                v17 = v19 + v20 + 2;
                v29 = *(v19 + v20);
                v32 = &v5[v20 - v29];
                if (v33 == 15 || v29 < 8 || v32 < v13)
                {
                  v30 = v17;
                  goto LABEL_37;
                }

                *v25 = *v32;
                *(v25 + 1) = *(v32 + 8);
                *(v25 + 8) = *(v32 + 16);
                v5 = &v25[v33 + 4];
              }
            }

            if (v19 >= v14)
            {
              LODWORD(v17) = v17 + 1;
              goto LABEL_79;
            }

            LODWORD(v21) = 0;
            v22 = (v17 + 2);
            ++v17;
            do
            {
              v24 = *v17++;
              v23 = v24;
              v21 = (v21 + v24);
              ++v22;
            }

            while (v17 < v14 && v23 == 255);
            v20 = v21 + 15;
            if (__CFADD__(v5, v21 + 15) || v20 > -v22)
            {
              goto LABEL_79;
            }

            goto LABEL_19;
          }
        }

        else if (a4 == 1)
        {
          if (*__src)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }

    *a1 = &v8[-v7];
    a1[1] = v7;
    v64 = sub_29A0E8DD8(a1, __src);
    result = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_forceExtDict(v64, v65, v66, v67, v69, v68);
  }

  else
  {
    v60 = sub_29A0E8DD8(a1, __src);
    result = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe(v60, v61, v62, v63);
  }

  if (result >= 1)
  {
    v58 = result;
    v59 = &v5[result];
LABEL_83:
    v6[2] = v59;
    v6[3] = v58;
  }

  return result;
}

uint64_t sub_29B28C74C(unsigned __int8 *a1, char *__dst, int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    if (a3 == 1)
    {
      if (*a1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = &a1[a3];
  v7 = &__dst[a4];
  v8 = &__dst[-a5];
  v9 = v6 - 15;
  v10 = v7 - 12;
  v11 = v7 - 7;
  v12 = a1;
  v13 = __dst;
  while (1)
  {
    while (1)
    {
      v15 = v12 + 1;
      v14 = *v12;
      v16 = v14 >> 4;
      if ((v14 >> 4) == 15)
      {
        break;
      }

      if (v15 >= v6 - 16 || v13 > v7 - 32)
      {
        ++v12;
        goto LABEL_12;
      }

      *v13 = *v15;
      v21 = &v13[v16];
      v29 = v14 & 0xF;
      v12 = &v15[v16 + 2];
      v25 = *&v15[v16];
      v28 = &v21[-v25];
      if (v29 == 15 || v25 < 8 || v28 < v8)
      {
        v26 = v12;
        goto LABEL_30;
      }

      *v21 = *v28;
      *(v21 + 1) = *(v28 + 8);
      *(v21 + 8) = *(v28 + 16);
      v13 = &v21[v29 + 4];
    }

    if (v15 >= v9)
    {
      LODWORD(v12) = v12 + 1;
      return (~v12 + a1);
    }

    LODWORD(v17) = 0;
    v18 = (v12 + 2);
    ++v12;
    do
    {
      v20 = *v12++;
      v19 = v20;
      v17 = (v17 + v20);
      ++v18;
    }

    while (v12 < v9 && v19 == 255);
    v16 = v17 + 15;
    if (__CFADD__(v13, v16) || v16 > -v18)
    {
      return (~v12 + a1);
    }

LABEL_12:
    v21 = &v13[v16];
    v22 = &v12[v16];
    if (&v13[v16] > v10 || v22 > v6 - 8)
    {
      break;
    }

    do
    {
      v24 = *v12;
      v12 += 8;
      *v13 = v24;
      v13 += 8;
    }

    while (v13 < v21);
    v27 = *v22;
    v26 = v22 + 2;
    v25 = v27;
    v28 = &v21[-v27];
    v29 = v14 & 0xF;
LABEL_30:
    if (v29 == 15)
    {
      LODWORD(v33) = 0;
      while (1)
      {
        v12 = v26 + 1;
        if (v26 + 1 >= v6 - 4)
        {
          return (~v12 + a1);
        }

        v34 = *v26;
        v33 = (v33 + v34);
        ++v26;
        if (v34 != 255)
        {
          v29 = v33 + 15;
          if (__CFADD__(v21, v29))
          {
            return (~v12 + a1);
          }

          goto LABEL_38;
        }
      }
    }

    v12 = v26;
LABEL_38:
    if (v28 < v8)
    {
      return (~v12 + a1);
    }

    if (v25 <= 7)
    {
      *v21 = 0;
      *v21 = *v28;
      v21[1] = *(v28 + 1);
      v21[2] = *(v28 + 2);
      v21[3] = *(v28 + 3);
      v41 = (v28 + dword_29B436458[v25]);
      *(v21 + 1) = *v41;
      v35 = v41 - dword_29B436478[v25];
    }

    else
    {
      v36 = *v28;
      v35 = (v28 + 8);
      *v21 = v36;
    }

    v13 = &v21[v29 + 4];
    v37 = v21 + 8;
    if (v13 > v10)
    {
      if (v13 > v7 - 5)
      {
        return (~v12 + a1);
      }

      if (v37 < v11)
      {
        v42 = v35;
        v43 = v21 + 8;
        do
        {
          v44 = *v42++;
          *v43 = v44;
          v43 += 8;
        }

        while (v43 < v11);
        v35 += v11 - v37;
        v37 = v7 - 7;
      }

      while (v37 < v13)
      {
        v45 = *v35++;
        *v37++ = v45;
      }
    }

    else
    {
      *v37 = *v35;
      if (v29 >= 0xD)
      {
        v38 = v21 + 16;
        v39 = (v35 + 8);
        do
        {
          v40 = *v39++;
          *v38 = v40;
          v38 += 8;
        }

        while (v38 < v13);
      }
    }
  }

  if (v22 == v6 && v21 <= v7)
  {
    memmove(v13, v12, v16);
    return (v21 - __dst);
  }

  return (~v12 + a1);
}

void pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_limitedOutput(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3)
{
  v3 = MEMORY[0x2A1C7C4A8](this);
  v11 = sub_29A0E8E34(v3, v4, v5, v6, v7, v8, v9, v10, v16);
  pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState(v11, v12, v13, v14, v15);
  sub_29A0E9094();
}

void pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3)
{
  v20 = v8;
  v21 = v7;
  v22 = v9;
  v23 = v10;
  v18 = v3;
  v19 = v4;
  v16 = v5;
  v17 = v6;
  MEMORY[0x2A1C7C4A8](this);
  pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState(&v15, v11, v12, v13, v14);
  sub_29A0E9094();
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_withState(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *a2, char *a3, char *a4, int a5, int a6, int a7)
{
  if (a4 <= 0x7E000000)
  {
    v7 = a4 + a4 / 0xFF + 16;
  }

  else
  {
    v7 = 0;
  }

  return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_limitedOutput_withState(this, a2, a3, a4, v7, a6, a7);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_continue(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (a4 <= 0x7E000000)
  {
    v4 = a4 + a4 / 0xFF + 16;
  }

  else
  {
    v4 = 0;
  }

  return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_limitedOutput_continue(a1, a2, a3, a4, v4);
}

void sub_29B28CB5C(uint64_t a1, _BYTE *a2)
{
  v2 = sub_29A0E8F58(a1, a2);
  *(v2 + 3) = v3;
  v6 = (v5 + dword_29B436458[v4]);
  *(v2 + 4) = *v6;
  sub_29A0E8E00(v4, v7, v6);
}

uint64_t (*sub_29B28CBCC(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t (*sub_29B28CC2C(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B28CC8C(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B28CCD0(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void *sub_29B28CD60(uint64_t *a1, void *a2, char *a3)
{
  do
  {
    v5 = sub_29A0EA214(a1, a2, a3);
    v6 = sub_29B28CBCC(v5);
    if (v7 & 1 | v6)
    {
      v9 = sub_29A0EA214(a1, v7, v8);
      sub_29A0EA294(v9);
    }

    result = sub_29A0EA2E4(a1);
  }

  while (*a1 != *a2);
  return result;
}

void *sub_29B28CDE0(uint64_t *a1, void *a2, char *a3)
{
  do
  {
    v5 = sub_29A0EA214(a1, a2, a3);
    v6 = sub_29B28CBCC(v5);
    if (v7 & 1 | v6)
    {
      v9 = sub_29A0EA214(a1, v7, v8);
      sub_29A0EA294(v9);
    }

    result = sub_29A0EA2E4(a1);
  }

  while (*a1 != *a2);
  return result;
}

uint64_t sub_29B28CF5C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      sub_29A0ED7AC();
      return (*(v3 + 8))(v4, v5);
    }
  }

  return result;
}

void sub_29B28CFAC(void ***__p)
{
  do
  {
    v2 = __p;
    __p = *__p;
    v3 = v2[3];
    if (v3)
    {
      v4 = sub_29A0ED76C(v3);
      if (v5)
      {
        (*(*v4 + 8))(v4);
      }
    }

    operator delete(v2);
  }

  while (__p);
}

uint64_t sub_29B28D020(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t sub_29B28D068(uint64_t a1)
{
  result = sub_29A0ED78C(a1);
  if (v2)
  {
    sub_29A0ED7AC();
    return (*(v3 + 8))(v4, v5);
  }

  return result;
}

uint64_t sub_29B28D0B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_29A0ED78C(a1);
  if (v4)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a2;
  if (*a2)
  {
    result = sub_29A0ED78C(result);
    if (v4)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B28D130()
{
  sub_29A0ED77C();
  do
  {
    v1 = *(v0 - 8);
    if (v1)
    {
      v2 = sub_29A0ED76C(v1);
      if (v3)
      {
        (*(*v2 + 8))(v2);
      }
    }

    sub_29A0ED7A0();
  }

  while (!v3);
}

uint64_t sub_29B28D194()
{
  sub_29A0ED77C();
  do
  {
    result = *(v1 + 8);
    if (result)
    {
      result = sub_29A0ED76C(result);
      if (v3)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1 += 16;
  }

  while (v1 != v0);
  return result;
}

uint64_t sub_29B28D1FC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  do
  {
    *a2 = result - 16;
    v5 = *(result - 8);
    if (v5)
    {
      v6 = sub_29A0ED76C(v5);
      if (v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    result = *a2;
  }

  while (*a2 != a3);
  return result;
}

unint64_t sub_29B28D274(pxrInternal__aapl__pxrReserved__::TfBits *a1, unint64_t this)
{
  if (*a1 <= this)
  {
    return *a1;
  }

  if ((*(*(a1 + 5) + ((this >> 3) & 0x1FFFFFFFFFFFFFF8)) >> this))
  {
    return this;
  }

  return pxrInternal__aapl__pxrReserved__::TfBits::_FindNextSet(a1, this, this & 0x3F);
}

uint64_t sub_29B28D2B0(pxrInternal__aapl__pxrReserved__::TfBits *a1, unint64_t this)
{
  if (*a1 <= this)
  {
    return *a1;
  }

  if ((*(*(a1 + 5) + ((this >> 3) & 0x1FFFFFFFFFFFFFF8)) >> this))
  {
    return this;
  }

  return pxrInternal__aapl__pxrReserved__::TfBits::_FindPrevSet(a1, this, this & 0x3F);
}

void sub_29B28D2EC(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.cpp";
  *(a1 + 8) = "operator&=";
  *(a1 + 16) = 213;
  *(a1 + 24) = "TfBits &pxrInternal__aapl__pxrReserved__::TfBits::operator&=(const TfBits &)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "_num == rhs._num");
}

uint64_t sub_29B28D344(uint64_t a1)
{
  *a1 = "tf/bits.cpp";
  *(a1 + 8) = "operator|=";
  *(a1 + 16) = 248;
  *(a1 + 24) = "TfBits &pxrInternal__aapl__pxrReserved__::TfBits::operator|=(const TfBits &)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "_num == rhs._num", 0);
}

uint64_t sub_29B28D390(uint64_t a1)
{
  *a1 = "tf/bits.cpp";
  *(a1 + 8) = "OrSubset";
  *(a1 + 16) = 308;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::TfBits::OrSubset(const TfBits &)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "_num >= rhs._num", 0);
}

void sub_29B28D3DC(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.cpp";
  *(a1 + 8) = "operator^=";
  *(a1 + 16) = 315;
  *(a1 + 24) = "TfBits &pxrInternal__aapl__pxrReserved__::TfBits::operator^=(const TfBits &)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "_num == rhs._num");
}

void sub_29B28D434(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.cpp";
  *(a1 + 8) = "operator-=";
  *(a1 + 16) = 354;
  *(a1 + 24) = "TfBits &pxrInternal__aapl__pxrReserved__::TfBits::operator-=(const TfBits &)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "_num == rhs._num");
}

void sub_29B28D48C(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.cpp";
  *(a1 + 8) = "_ClearTrailingBits";
  *(a1 + 16) = 423;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::TfBits::_ClearTrailingBits()";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "numUsedBitsInLastWord > 0 && numUsedBitsInLastWord <= 63");
}

void sub_29B28D4E4(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.h";
  *(a1 + 8) = "IsSet";
  *(a1 + 16) = 414;
  *(a1 + 24) = "BOOL pxrInternal__aapl__pxrReserved__::TfBits::IsSet(size_t) const";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "index < _num");
}

unint64_t sub_29B28D53C(pxrInternal__aapl__pxrReserved__::TfBits *a1, unint64_t a2)
{
  if (*a1 <= a2)
  {
    return *a1;
  }

  if ((*(*(a1 + 5) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2))
  {
    return pxrInternal__aapl__pxrReserved__::TfBits::_FindNextUnset(a1, a2, a2 & 0x3F);
  }

  return a2;
}

void sub_29B28D574(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.h";
  *(a1 + 8) = "Set";
  *(a1 + 16) = 379;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::TfBits::Set(size_t)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "index < _num");
}

void sub_29B28D5CC(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.h";
  *(a1 + 8) = "Set";
  *(a1 + 16) = 386;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::TfBits::Set(size_t)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "numSet == size_t(-1) || numSet < _num");
}

void sub_29B28D624(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.h";
  *(a1 + 8) = "Clear";
  *(a1 + 16) = 355;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::TfBits::Clear(size_t)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "index < _num");
}

void sub_29B28D67C(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bits.h";
  *(a1 + 8) = "Clear";
  *(a1 + 16) = 362;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::TfBits::Clear(size_t)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "numSet == size_t(-1) || numSet > 0");
}

uint64_t sub_29B28D6D4(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = (sub_29A0E98EC() + 4 * a1);
  v7 = off_29F2952D8[a1];
  v8 = atomic_load(&qword_2A14F61F0);
  if (!v8)
  {
    v8 = sub_29A0F0370(&qword_2A14F61F0);
  }

  result = sub_29A0F1A10(v8, v6, v7);
  v10 = atomic_load(a2);
  *a3 = v10;
  return result;
}

void sub_29B28D758(uint64_t a1, uint64_t a2, char *a3)
{
  v3[0] = "tf/iterator.h";
  v3[1] = "operator->";
  v3[2] = 270;
  v3[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::TfHashMap<const pxrInternal__aapl__pxrReserved__::TfErrorMark *, std::vector<unsigned long>, pxrInternal__aapl__pxrReserved__::TfHash>>::operator->() [T = pxrInternal__aapl__pxrReserved__::TfHashMap<const pxrInternal__aapl__pxrReserved__::TfErrorMark *, std::vector<unsigned long>, pxrInternal__aapl__pxrReserved__::TfHash>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

void sub_29B28D7B4()
{
  v0[0] = "tf/fastCompression.cpp";
  v0[1] = "DecompressFromBuffer";
  v0[2] = 134;
  v0[3] = "static size_t pxrInternal__aapl__pxrReserved__::TfFastCompression::DecompressFromBuffer(const char *, char *, size_t, size_t)";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 3, "Failed to decompress data. Invalid chunk size.");
}

uint64_t sub_29B28D80C(uint64_t a1)
{
  *a1 = "tf/fileUtils.cpp";
  *(a1 + 8) = "Tf_WalkDirsRec";
  *(a1 + 16) = 514;
  *(a1 + 24) = "BOOL pxrInternal__aapl__pxrReserved__::Tf_WalkDirsRec(const string &, const TfWalkFunction &, BOOL, const TfWalkErrorHandler &, BOOL, Tf_FileIdSet *)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "linkTargets", 0);
}

uint64_t sub_29B28D8FC(uint64_t a1)
{
  if (!*a1 && v1)
  {
    v4 = *(a1 + 16);
    if (*(a1 + 8) == v4)
    {
      v5 = (qword_2A153F018 + 16);
    }

    else
    {
      v5 = (v4 - 8);
    }

    v6 = *v5;
    v12 = qword_2A153F018;
    v13 = -1;
    sub_29A1081D8(&v12);
    v7 = qword_2A153F018;
    v16 = v1;
    sub_29A107FD8(&v15, 0);
    if (*(*v6 + 16))
    {
      pxrInternal__aapl__pxrReserved__::Tf_MallocGlobalData::_CaptureStackOrDebug(v7, v6, v1, v2);
    }

    *&v14 = v2;
    *(&v14 + 1) = v6;
    sub_29A108268(v7 + 5, v3 - 33, &v16, &v14);
    atomic_fetch_add_explicit(v6 + 1, v2, memory_order_relaxed);
    v9 = *v6;
    v8 = v6 + 2;
    atomic_fetch_add_explicit((v9 + 8), v2, memory_order_relaxed);
    v10 = atomic_fetch_add_explicit(v7 + 3, v2, memory_order_relaxed) + v2;
    if (v10 <= v7[4])
    {
      v10 = v7[4];
    }

    v7[4] = v10;
    atomic_fetch_add(v8, 1uLL);
    *v15 = 0;
    sub_29A104D64(&v12);
  }

  return v1;
}

void sub_29B28D9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  *a14 = 0;
  sub_29A104D64(&a10);
  _Unwind_Resume(a1);
}

void sub_29B28DA1C()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B28DA68()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B28DAB4()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

uint64_t sub_29B28DB18(_DWORD *a1)
{
  if (!*a1)
  {
    return 1;
  }

  off_2A153F038(v1);
  return 0;
}

void sub_29B28DB48(void *a1)
{
  *a1 = "tf/mallocTag.cpp";
  a1[1] = "_Initialize";
  v1 = sub_29A1101D4(a1, "static BOOL pxrInternal__aapl__pxrReserved__::TfMallocTag::_Initialize(std::string *)");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "!_mallocGlobalData");
}

void sub_29B28DB9C(void *a1)
{
  *a1 = "tf/mallocTag.cpp";
  a1[1] = "_GetCallSites";
  v1 = sub_29A1101D4(a1, "void pxrInternal__aapl__pxrReserved__::_GetCallSites(TfMallocTag::CallTree::PathNode *, Tf_MallocCallSiteTable *)");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "table");
}

void sub_29B28DBF0(void *a1)
{
  *a1 = "tf/mallocTag.cpp";
  a1[1] = "_GetCallSites";
  v1 = sub_29A1101D4(a1, "void pxrInternal__aapl__pxrReserved__::_GetCallSites(TfMallocTag::CallTree::PathNode *, Tf_MallocCallSiteTable *)");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "node");
}

void sub_29B28DC44(void *a1)
{
  *a1 = "tf/mallocTag.cpp";
  a1[1] = "_TemporaryDisabler";
  v1 = sub_29A1101D4(a1, "pxrInternal__aapl__pxrReserved__::_TemporaryDisabler::_TemporaryDisabler(TfMallocTag::_ThreadData *)");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "_tls._taggingState == _TaggingEnabled");
}

void sub_29B28DC98(void *a1)
{
  *a1 = "tf/bigRWMutex.h";
  a1[1] = "AcquireWrite";
  v1 = sub_29A1101D4(a1, "void pxrInternal__aapl__pxrReserved__::TfBigRWMutex::ScopedLock::AcquireWrite()");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "_acqState == NotAcquired");
}

void sub_29B28DCEC(void *a1)
{
  *a1 = "tf/bigRWMutex.h";
  a1[1] = "AcquireRead";
  v1 = sub_29A1101D4(a1, "void pxrInternal__aapl__pxrReserved__::TfBigRWMutex::ScopedLock::AcquireRead()");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "_acqState == NotAcquired");
}

void sub_29B28DD40(void *a1)
{
  *a1 = "tf/bigRWMutex.h";
  a1[1] = "_ReleaseWrite";
  v1 = sub_29A1101D4(a1, "void pxrInternal__aapl__pxrReserved__::TfBigRWMutex::ScopedLock::_ReleaseWrite()");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "_acqState == WriteAcquired");
}

void sub_29B28DD94(void *a1)
{
  *a1 = "tf/bigRWMutex.h";
  a1[1] = "_ReleaseRead";
  v1 = sub_29A1101D4(a1, "void pxrInternal__aapl__pxrReserved__::TfBigRWMutex::ScopedLock::_ReleaseRead()");
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(v1, "Failed axiom: ' %s '", v2, "_acqState >= 0");
}

void sub_29B28DDE8()
{
  v0 = __cxa_guard_acquire(byte_2A14F6250);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6240);
    __cxa_atexit(sub_29A10A878, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6250);
  }
}

void sub_29B28DE54()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B28DEA0()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B28DEEC()
{
  v0 = __cxa_guard_acquire(byte_2A14F6280);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6258);
    __cxa_atexit(sub_29A1080F0, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6280);
  }
}

atomic_uint *sub_29B28DF58(uint64_t a1, uint64_t a2)
{
  do
  {
    result = *(a1 - 8);
    if (result)
    {
      if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
      {
        result = (*(*result + 8))(result);
      }
    }

    a1 -= 16;
  }

  while (a1 != a2);
  return result;
}

void sub_29B28DFD0()
{
  if (__cxa_guard_acquire(byte_2A153F040))
  {
    unk_2A153F058 = 0;
    xmmword_2A153F048 = 0uLL;
    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A153F048, &dword_299FE7000);

    __cxa_guard_release(byte_2A153F040);
  }
}

void sub_29B28E0F8(uint64_t a1, int *a2, char *a3)
{
  *a1 = "tf/registryManager.cpp";
  *(a1 + 8) = "ClearActiveLibrary";
  *(a1 + 16) = 293;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl::ClearActiveLibrary(const char *)";
  *(a1 + 32) = 0;
  v3 = *a2;
  *(a1 + 36) = *(a2 + 3);
  *(a1 + 40) = 4;
  *(a1 + 33) = v3;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "libraryName && libraryName[0]");
}

uint64_t sub_29B28E15C(uint64_t a1, const char *a2, char *a3)
{
  *a1 = "tf/registryManager.cpp";
  *(a1 + 8) = "AddRegistrationFunction";
  *(a1 + 16) = 310;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl::AddRegistrationFunction(const char *, RegistrationFunction, const char *)";
  *(a1 + 32) = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("TfRegistryManager: Ignoring library with no name", a2, a3);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "libraryName && libraryName[0]", v4);
}

uint64_t sub_29B28E1C4(uint64_t a1, const char *a2, char *a3)
{
  *a1 = "tf/registryManager.cpp";
  *(a1 + 8) = "AddRegistrationFunction";
  *(a1 + 16) = 316;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl::AddRegistrationFunction(const char *, RegistrationFunction, const char *)";
  *(a1 + 32) = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("TfRegistryManager: Ignoring registration with no type in %s", a2, a3, a2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "typeName && typeName[0]", v4);
}

void sub_29B28E238(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/registryManager.cpp";
  *(a1 + 8) = "AddRegistrationFunction";
  *(a1 + 16) = 343;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Tf_RegistryManagerImpl::AddRegistrationFunction(const char *, RegistrationFunction, const char *)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "active.identifier");
}

_BYTE *sub_29B28E290()
{
  v0 = off_2A1B71A48(&off_2A1B71A48);
  sub_29A11B2E0(v0, v0);
  result = off_2A1B71A60();
  *result = 1;
  return result;
}

void sub_29B28E2DC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_29B28E308()
{
  if (__cxa_guard_acquire(byte_2A173F090))
  {
    byte_2A173F098 = 0;
    qword_2A173F0A8 = 0;
    unk_2A173F0B0 = 0;
    qword_2A173F0A0 = 0;
    qword_2A173F088 = &byte_2A173F098;

    __cxa_guard_release(byte_2A173F090);
  }
}

uint64_t sub_29B28E364(unsigned int *a1)
{
  v1 = 32;
  while (1)
  {
    __yield();
    v2 = atomic_load(a1);
    if ((v2 & 1) == 0)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return 1;
}

void sub_29B28E38C()
{
  if (__cxa_guard_acquire(byte_2A173F118))
  {
    dword_2A173F120 = 0;
    qword_2A173F128 = "inf";
    unk_2A173F130 = "nan";
    byte_2A173F138 = 101;
    unk_2A173F13C = xmmword_29B43BF10;
    dword_2A173F14C = 0;

    __cxa_guard_release(byte_2A173F118);
  }
}

void sub_29B28E4BC()
{
  if (__cxa_guard_acquire(byte_2A173F150))
  {
    qword_2A173F160 = 0;
    unk_2A173F168 = 0;
    qword_2A173F158 = 0;
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A173F158, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F150);
  }
}

void sub_29B28E534(uint64_t a1, uint64_t a2, char *a3)
{
  v3[0] = "tf/iterator.h";
  v3[1] = "operator->";
  v3[2] = 270;
  v3[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<std::pair<unsigned long, unsigned long>>>::operator->() [T = std::vector<std::pair<unsigned long, unsigned long>>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

void sub_29B28E640(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "tf/bigRWMutex.h";
  *(a1 + 8) = "UpgradeToWriter";
  *(a1 + 16) = 154;
  *(a1 + 24) = "BOOL pxrInternal__aapl__pxrReserved__::TfBigRWMutex::ScopedLock::UpgradeToWriter()";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "_acqState >= 0");
}

uint64_t sub_29B28E6F0(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    sub_29A0ED7AC();
    return (*(v1 + 8))(v2, v3);
  }

  return result;
}

uint64_t sub_29B28E73C(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      sub_29A0ED7AC();
      return (*(v2 + 8))(v3, v4);
    }
  }

  return result;
}

uint64_t sub_29B28E790(uint64_t a1, uint64_t *a2)
{
  *(a1 + 13) = 1;
  result = *a2;
  if (*a2)
  {
    if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      sub_29A0ED7AC();
      return (*(v3 + 8))(v4, v5);
    }
  }

  return result;
}

void sub_29B28E89C(uint64_t a1, int *a2, char *a3)
{
  *a1 = "gf/multiInterval.cpp";
  *(a1 + 8) = "GetPriorNonContainingInterval";
  *(a1 + 16) = 149;
  *(a1 + 24) = "GfMultiInterval::const_iterator pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetPriorNonContainingInterval(double) const";
  *(a1 + 32) = 0;
  v3 = *a2;
  *(a1 + 36) = *(a2 + 3);
  *(a1 + 40) = 4;
  *(a1 + 33) = v3;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "!i->Contains(x)");
}

void sub_29B28E958(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "gf/multiInterval.cpp";
  *(a1 + 8) = "_AssertInvariants";
  *(a1 + 16) = 328;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::GfMultiInterval::_AssertInvariants() const";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "*last < *i");
}

void sub_29B28E9B0(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "gf/multiInterval.cpp";
  *(a1 + 8) = "_AssertInvariants";
  *(a1 + 16) = 329;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::GfMultiInterval::_AssertInvariants() const";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "!last->Intersects(*i)");
}

void sub_29B28EA08(uint64_t a1, int *a2, char *a3)
{
  *a1 = "gf/multiInterval.cpp";
  *(a1 + 8) = "_AssertInvariants";
  *(a1 + 16) = 324;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::GfMultiInterval::_AssertInvariants() const";
  *(a1 + 32) = 0;
  v3 = *a2;
  *(a1 + 36) = *(a2 + 3);
  *(a1 + 40) = 4;
  *(a1 + 33) = v3;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "!i->IsEmpty()");
}

uint64_t sub_29B28EAC4(unsigned int *a1, uint64_t **a2, __n128 a3)
{
  v5 = *(a1 + 11);
  switch(v5 & 7)
  {
    case 0:

      return sub_29A14B6C0(a2);
    case 1:
      v12 = a2;
      v13 = 0;
      goto LABEL_26;
    case 2:
      v12 = a2;
      v13 = 1;
LABEL_26:

      return sub_29A14B85C(v12, v13);
    case 3:
      if (!sub_29A14BB1C(a2))
      {
        return 0;
      }

      if (!*a1)
      {
        goto LABEL_51;
      }

      v14 = *(a1 + 1) + 24;
      while (1)
      {
        v15 = (*(v14 - 2) & 0x1000) != 0 ? v14 - 24 : *(v14 - 16);
        v16 = (*(v14 - 2) & 0x1000) != 0 ? 21 - *(v14 - 3) : *(v14 - 24);
        if (!sub_29A14BAB0(a2, v15, v16))
        {
          break;
        }

        v17 = sub_29A1505D0();
        if ((sub_29B28EAC4(v17, v18, v19) & 1) == 0)
        {
          break;
        }

        v14 += 48;
        sub_29A1505C0();
        if (v14 - 24 == v20)
        {
LABEL_51:

          return sub_29A14BB8C(a2);
        }
      }

      return 0;
    case 4:
      if (!sub_29A14BC1C(a2))
      {
        return 0;
      }

      if (!*a1)
      {
        goto LABEL_48;
      }

      v7 = *(a1 + 1);
      break;
    case 5:
      if ((*(a1 + 11) & 0x1000) != 0)
      {
        v21 = a1;
      }

      else
      {
        v21 = *(a1 + 1);
      }

      if ((*(a1 + 11) & 0x1000) != 0)
      {
        v22 = 21 - *(a1 + 21);
      }

      else
      {
        v22 = *a1;
      }

      return sub_29A14BAB0(a2, v21, v22);
    default:
      if ((*(a1 + 11) & 0x200) != 0)
      {
        a3.n128_u64[0] = *a1;

        return sub_29A14BA30(a2, a3);
      }

      else if ((v5 & 0x20) != 0)
      {
        v24 = *a1;

        return sub_29A14B8C0(a2, v24);
      }

      else if ((v5 & 0x40) != 0)
      {
        v25 = *a1;

        return sub_29A14B91C(a2, v25);
      }

      else
      {
        v23 = *a1;
        if ((v5 & 0x80) != 0)
        {

          return sub_29A14B978(a2, v23);
        }

        else
        {

          return sub_29A14B9D4(a2, v23);
        }
      }
  }

  do
  {
    v8 = sub_29A1505D0();
    if ((sub_29B28EAC4(v8, v9, v10) & 1) == 0)
    {
      return 0;
    }

    v7 += 24;
    sub_29A1505C0();
  }

  while (v7 != v11);
LABEL_48:

  return sub_29A14BC90(a2);
}

void sub_29B28EDD4(unsigned int *a1, char *a2, __n128 a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 11);
  switch(v5 & 7)
  {
    case 0:
      sub_29A14FE8C(a2);
      sub_29A1505A8();

      sub_29A1500C8(v6);
      break;
    case 1:
    case 2:
      sub_29A14FE8C(a2);
      sub_29A1505A8();

      sub_29A1501EC(v21, v22);
      break;
    case 3:
      if (!sub_29A14FA48(a2))
      {
        goto LABEL_53;
      }

      if (*a1)
      {
        v14 = *(a1 + 1) + 24;
        do
        {
          if ((*(v14 - 2) & 0x1000) != 0)
          {
            v15 = v14 - 24;
          }

          else
          {
            v15 = *(v14 - 16);
          }

          if ((*(v14 - 2) & 0x1000) != 0)
          {
            v16 = 21 - *(v14 - 3);
          }

          else
          {
            v16 = *(v14 - 24);
          }

          sub_29A14FE8C(a2);
          if (!sub_29A150444(a2, v15, v16))
          {
            goto LABEL_53;
          }

          v17 = sub_29A1505D0();
          sub_29B28EDD4(v17, v18, v19);
          if ((v20 & 1) == 0)
          {
            goto LABEL_53;
          }

          v14 += 48;
        }

        while (v14 - 24 != *(a1 + 1) + 48 * *a1);
      }

      sub_29A1505A8();

      sub_29A14FAB8(v36);
      break;
    case 4:
      if (!sub_29A14FB34(a2))
      {
        goto LABEL_53;
      }

      if (*a1)
      {
        v8 = *(a1 + 1);
        do
        {
          v9 = sub_29A1505D0();
          sub_29B28EDD4(v9, v10, v11);
          if ((v12 & 1) == 0)
          {
            goto LABEL_53;
          }

          v8 += 24;
          sub_29A1505C0();
        }

        while (v8 != v13);
      }

      sub_29A1505A8();

      sub_29A14FBA8(v34);
      break;
    case 5:
      sub_29A14FE8C(a2);
      sub_29A1505A8();

      sub_29A150444(v27, v28, v29);
      break;
    default:
      if ((*(a1 + 11) & 0x200) != 0)
      {
        a3.n128_u64[0] = *a1;
        pxrInternal__aapl__pxrReserved__::TfDoubleToString(__s, a3, 0x20, 1);
        v44 = strlen(__s);
        sub_29A14FE8C(a2);
        sub_29B28F364(a2, __s, v44);
LABEL_53:
        sub_29A1505A8();
      }

      else if ((v5 & 0x20) != 0)
      {
        sub_29A1505A8();

        sub_29A14FC2C(v31, v32);
      }

      else if ((v5 & 0x40) != 0)
      {
        sub_29A1505A8();

        sub_29A14FCD0(v38, v39);
      }

      else if ((v5 & 0x80) != 0)
      {
        sub_29A1505A8();

        sub_29A14FD5C(v41, v42);
      }

      else
      {
        sub_29A1505A8();

        sub_29A14FE00(v24, v25);
      }

      break;
  }
}

uint64_t sub_29B28F26C(void **a1, uint64_t a2, unint64_t a3)
{
  sub_29A14A39C(a1);
  if (a3)
  {
    v5 = 0;
    do
    {
      std::ostream::put();
      ++v5;
    }

    while (v5 < a3);
  }

  if (a1[4] == a1[3])
  {
    std::ostream::flush();
  }

  return 1;
}

uint64_t sub_29B28F2E8(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  sub_29A14B714(a1);
  if (a3)
  {
    v5 = 0;
    do
    {
      std::ostream::put();
      ++v5;
    }

    while (v5 < a3);
  }

  if (a1[4] == a1[3])
  {
    std::ostream::flush();
  }

  return 1;
}

uint64_t sub_29B28F364(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  if (v6[4] - v6[3] < a3)
  {
    sub_29A14D7E8(v6, a3);
    if (!a3)
    {
      return 1;
    }
  }

  else if (!a3)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = *(a2 + v7);
    v9 = *(*a1 + 24);
    *(*a1 + 24) = v9 + 1;
    *v9 = v8;
    ++v7;
  }

  while (v7 < a3);
  return 1;
}

uint64_t sub_29B28F3E8(uint64_t a1, uint64_t **a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v4 = a3;
  std::ostream::put();
  result = std::ostream::put();
  if (v4 == 117)
  {
    std::ostream::put();
    std::ostream::put();
    std::ostream::put();

    return std::ostream::put();
  }

  return result;
}

void sub_29B28F4A8(uint64_t a1, uint64_t a2, void **a3, _DWORD *a4)
{
  sub_29A14BF08(a1, a2, a3);
  if (!*a4)
  {
    v8 = 0;
    while (1)
    {
      v9 = *a2;
      for (i = *a2; ; ++i)
      {
        v11 = *i;
        v12 = v11 > 0x20;
        v13 = (1 << v11) & 0x100002600;
        if (v12 || v13 == 0)
        {
          break;
        }

        ++v9;
      }

      ++v8;
      *a2 = i;
      v15 = *i;
      if (v15 != 44)
      {
        break;
      }

      v16 = i + 1;
      *a2 = i + 1;
      while (1)
      {
        v17 = *v16;
        v12 = v17 > 0x20;
        v18 = (1 << v17) & 0x100002600;
        if (v12 || v18 == 0)
        {
          break;
        }

        ++v16;
      }

      *a2 = v16;
      sub_29A14BF08(a1, a2, a3);
      if (*a4)
      {
        return;
      }
    }

    if (v15 == 93)
    {
      *a2 = i + 1;

      sub_29A14E01C(a3, v8);
    }

    else
    {
      v20 = &v9[-*(a2 + 8)];
      *a4 = 7;
      *(a1 + 56) = v20;
    }
  }
}

void sub_29B28F5E4(_BYTE *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = a1 + 1;
  *a2 = a1 + 1;
  if (a1[1] == 97 && (v4 = a1 + 2, *a2 = a1 + 2, a1[2] == 108) && (v4 = a1 + 3, *a2 = a1 + 3, a1[3] == 115) && (v4 = a1 + 4, *a2 = a1 + 4, a1[4] == 101))
  {
    *a2 = a1 + 5;
    sub_29A14D304(a4, 0);
  }

  else
  {
    sub_29A150590(a2, a3, v4);
  }
}

void sub_29B28F64C(_BYTE *a1, void *a2, uint64_t a3, void *a4)
{
  v4 = a1 + 1;
  *a2 = a1 + 1;
  if (a1[1] == 114 && (v4 = a1 + 2, *a2 = a1 + 2, a1[2] == 117) && (v4 = a1 + 3, *a2 = a1 + 3, a1[3] == 101))
  {
    *a2 = a1 + 4;
    sub_29A14D304(a4, 1);
  }

  else
  {
    sub_29A150590(a2, a3, v4);
  }
}

void sub_29B28F6A0()
{
  if (__cxa_guard_acquire(byte_2A14F6878))
  {
    qword_2A14F6808[0] = 0xA000000000000000;
    dword_2A14F6810 = -60;
    qword_2A14F6818 = 0xC800000000000000;
    dword_2A14F6820 = -57;
    qword_2A14F6828 = 0xFA00000000000000;
    dword_2A14F6830 = -54;
    qword_2A14F6838 = 0x9C40000000000000;
    dword_2A14F6840 = -50;
    qword_2A14F6848 = 0xC350000000000000;
    dword_2A14F6850 = -47;
    qword_2A14F6858 = 0xF424000000000000;
    dword_2A14F6860 = -44;
    qword_2A14F6868 = 0x9896800000000000;
    dword_2A14F6870 = -40;

    __cxa_guard_release(byte_2A14F6878);
  }
}

_BYTE *sub_29B28F760(_BYTE *result, uint64_t a2, char a3, unsigned __int8 a4)
{
  *result = 92;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = v4 + 1;
  *v4 = a3;
  if (a3 == 117)
  {
    v5 = *(*a2 + 24);
    *(*a2 + 24) = v5 + 1;
    *v5 = 48;
    v6 = *(*a2 + 24);
    *(*a2 + 24) = v6 + 1;
    *v6 = 48;
    LOBYTE(v5) = a0123456789abcd_1[a4 >> 4];
    v7 = *(*a2 + 24);
    *(*a2 + 24) = v7 + 1;
    *v7 = v5;
    LOBYTE(v5) = a0123456789abcd_1[a4 & 0xF];
    v8 = *(*a2 + 24);
    *(*a2 + 24) = v8 + 1;
    *v8 = v5;
  }

  return result;
}

uint64_t (*sub_29B28F7F8(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B28F858(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void sub_29B28F89C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = *(a1 + 40);
  v8 = v7 + *(a1 + 32);
  if (v6 == v8)
  {
    sub_29A153790(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40);
    v8 = v7 + *(a1 + 32);
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1u, memory_order_relaxed);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
}

uint64_t sub_29B28F93C(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  --a1[5];

  return sub_29A153BF4(a1, 1);
}

uint64_t sub_29B28F9E0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      sub_29A0ED7AC();
      return (*(v3 + 8))(v4, v5);
    }
  }

  return result;
}

uint64_t sub_29B28FAA4(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  *a2 = *a1;
  result = *a3;
  v5 = *a4;
  *a3 = *a4;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v6)
    {
      sub_29A0ED7AC();
      return (*(v7 + 8))(v8, v9);
    }
  }

  return result;
}

void sub_29B28FB14(uint64_t a1, void *__p)
{
  if (*(a1 + 16) == 1)
  {
    v2 = __p[2];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  operator delete(__p);
}

void sub_29B28FB54(uint64_t a1, void *__p)
{
  if (*(a1 + 16) == 1)
  {
    v2 = __p[5];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  operator delete(__p);
}

void sub_29B28FB94(uint64_t a1)
{
  *a1 = &unk_2A20410C8;
  sub_29A160214((a1 + 176), 0);
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  sub_29A1601D8((a1 + 144), 0);
  v6 = (a1 + 120);
  sub_29A15EE8C(&v6);
  v6 = (a1 + 96);
  sub_29A160250(&v6);
  v4 = *(a1 + 80);
  if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 32);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0F6078((a1 + 16), v3);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

uint64_t sub_29B28FC84(uint64_t a1)
{
  *a1 = "trace/aggregateTree.cpp";
  *(a1 + 8) = "AddCounter";
  *(a1 + 16) = 46;
  *(a1 + 24) = "BOOL pxrInternal__aapl__pxrReserved__::TraceAggregateTree::AddCounter(const TfToken &, int, double)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "index >= 0", 0);
}

uint64_t sub_29B28FCD0(uint64_t a1)
{
  *a1 = "trace/aggregateTree.cpp";
  *(a1 + 8) = "AddCounter";
  *(a1 + 16) = 51;
  *(a1 + 24) = "BOOL pxrInternal__aapl__pxrReserved__::TraceAggregateTree::AddCounter(const TfToken &, int, double)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "_counters.find(key) == _counters.end()", 0);
}

atomic_uint **sub_29B28FD1C(atomic_uint **a1, atomic_uint **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 2, 1u, memory_order_relaxed);
  }

  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t sub_29B28FD98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  result = *a2;
  if (*a2)
  {
    result = sub_29A0ED78C(result);
    if (v5)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B28FE20(uint64_t *a1, int a2, _DWORD *a3)
{
  result = *a1;
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t sub_29B28FE7C(unsigned int a1, uint64_t *a2, void *a3)
{
  if ((a1 & 0x80000000) == 0)
  {
    --*(*a3 + 24 * a1 + 20);
  }

  v4 = *a2;
  result = *(*a2 - 16);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v6)
    {
      result = (*(*result + 8))(result);
    }
  }

  *a2 = v4 - 24;
  return result;
}

uint64_t sub_29B28FEF8(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B28FF4C(uint64_t a1)
{
  result = sub_29A0ED78C(a1);
  if (v2)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B28FF8C()
{
  sub_29A0ED77C();
  do
  {
    result = *(v1 - 16);
    if (result)
    {
      result = sub_29A0ED76C(result);
      if (v3)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1 -= 24;
  }

  while (v1 != v0);
  return result;
}

uint64_t sub_29B28FFF4(uint64_t a1)
{
  result = sub_29A0ED78C(a1);
  if (v2)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_29B290040()
{
  sub_29A0ED77C();
  do
  {
    result = *(v1 + 8);
    if (result)
    {
      result = sub_29A0ED76C(result);
      if (v3)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1 += 24;
  }

  while (v1 != v0);
  return result;
}

uint64_t sub_29B2900A8(uint64_t result, uint64_t *a2, uint64_t a3)
{
  do
  {
    *a2 = result - 24;
    v5 = *(result - 16);
    if (v5)
    {
      v6 = sub_29A0ED76C(v5);
      if (v7)
      {
        (*(*v6 + 8))(v6);
      }
    }

    result = *a2;
  }

  while (*a2 != a3);
  return result;
}

atomic_uint *sub_29B290120(atomic_uint *result)
{
  if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uint *sub_29B290170(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void *sub_29B290244(void *result)
{
  do
  {
    v1 = *result;
    v2 = result[2];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(result);
    result = v1;
  }

  while (v1);
  return result;
}

uint64_t sub_29B290288(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29B2903EC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a3;
  *a3 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  __cxa_atexit(sub_29B290288, &qword_2A173F2D8, &dword_299FE7000);
  __cxa_guard_release(&qword_2A173F2D0);
}

void *sub_29B2904AC(void *result)
{
  v1 = unk_2A173F2E0;
  *result = qword_2A173F2D8;
  result[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29B2904D8(uint64_t a1, void *a2, _OWORD *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 36) = 0;
  *a1 = &unk_2A2041628;
  v6 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  (*(*a4 + 16))(a4, a1 + 56);
  *(a1 + 88) = *a3;
  return a1;
}

void sub_29B290578(_Unwind_Exception *a1, const void *a2)
{
  v4 = *(v2 + 6);
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v4 + 8))(v4, a2);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(v2, a2);
  _Unwind_Resume(a1);
}

void sub_29B2905CC(uint64_t a1)
{
  *a1 = &unk_2A2041628;
  (**(a1 + 56))();
  v3 = *(a1 + 48);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(a1, v2);
}

void sub_29B290680(uint64_t a1)
{
  *a1 = &unk_2A2041628;
  (**(a1 + 56))();
  v3 = *(a1 + 48);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::_DelivererBase::~_DelivererBase(a1, v2);

  operator delete(v4);
}

uint64_t sub_29B290738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a1[6])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B290898(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  result = *(a2 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v5)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B290994()
{
  v0 = operator new(8uLL);
  v1 = v0;
  v2 = 0;
  v0->__t_ = 0;
  atomic_compare_exchange_strong(&qword_2A173F2F8, &v2, v0);
  if (v2)
  {
    std::thread::~thread(v0);

    operator delete(v3);
  }

  else
  {
    DetachedDispatcher = pxrInternal__aapl__pxrReserved__::Work_GetDetachedDispatcher(v0);
    sub_29A1735A8(&v4.__t_, &DetachedDispatcher);
    if (v1->__t_)
    {
      std::terminate();
    }

    v1->__t_ = v4.__t_;
    v4.__t_ = 0;
    std::thread::~thread(&v4);
    std::thread::detach(v1);
  }
}

void sub_29B290AAC()
{
  if (__cxa_guard_acquire(byte_2A173F308))
  {
    qword_2A173F320 = 0;
    qword_2A173F318 = 0;
    qword_2A173F310 = &qword_2A173F318;
    __cxa_atexit(sub_29A174AD8, &qword_2A173F310, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F308);
  }
}

void sub_29B290B2C(int a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter *this)
{
  if (!this)
  {
    return;
  }

  v3 = *(this + 2);
  if (v3 < 0)
  {
    if (v3 == -2)
    {
      v5 = 4294967294;
    }

    else
    {
      v5 = *(this + 2);
      atomic_compare_exchange_strong_explicit(this + 2, &v5, v3 + 1, memory_order_release, memory_order_relaxed);
      if (v5 == v3)
      {
        if (v3 != -1)
        {
          return;
        }

        goto LABEL_4;
      }
    }

    if (!pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_RemoveRefMaybeLocked(this, v5))
    {
      return;
    }

    goto LABEL_4;
  }

  if (atomic_fetch_add_explicit(this + 2, 0xFFFFFFFF, memory_order_release) != 1)
  {
    return;
  }

LABEL_4:
  v4 = *(*this + 8);

  v4(this);
}

uint64_t (*sub_29B290C20(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void sub_29B290C80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_29B290D08(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void sub_29B290D4C()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B290E0C()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B290E58()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

uint64_t sub_29B290EA4(uint64_t a1, void *a2)
{
  result = a2[1];
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v6)
    {
      sub_29A0ED7AC();
      return (*(v7 + 8))(v8, v9);
    }
  }

  return result;
}

void sub_29B290F10(int a1, uint64_t *a2, int a3, std::mutex *this)
{
  if (*a2)
  {
    v5 = sub_29A0ED78C(*a2);
    if (v6)
    {
      (*(*v5 + 8))(v5);
    }
  }

  std::mutex::unlock(this);
}

uint64_t sub_29B290F6C(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_29A0ED78C(a1);
  if (v6)
  {
    (*(*v5 + 8))(v5);
  }

  result = *a2;
  *a3 = 0;
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v6)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B290FF4()
{
  if (__cxa_guard_acquire(byte_2A14F6918))
  {
    dword_2A14F68F0 = 0;
    word_2A14F68F4 = -1;
    byte_2A14F68F6 = 1;
    __cxa_atexit(sub_29A1813A4, &dword_2A14F68F0, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6918);
  }
}

void sub_29B291070(void ***__p)
{
  do
  {
    v2 = __p;
    __p = *__p;
    v3 = v2[4];
    if (v3)
    {
      v4 = sub_29A0ED76C(v3);
      if (v5)
      {
        (*(*v4 + 8))(v4);
      }
    }

    operator delete(v2);
  }

  while (__p);
}

uint64_t sub_29B2910E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void *sub_29B29112C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  result = tbb::internal::concurrent_vector_base_v3::internal_push_back((a1 + 8), 16, &v10, a3);
  v11 = result;
  v7 = a2[1];
  *result = *a2;
  result[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    result = v11;
  }

  v8 = v10;
  *a4 = a1;
  a4[1] = v8;
  a4[2] = result;
  return result;
}

uint64_t sub_29B29119C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;
  *(a2 + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  *a2 = 0;
  return a1;
}

uint64_t (*sub_29B291214(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B291274(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void sub_29B2912B8(uint64_t a1, pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins *this)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  pxrInternal__aapl__pxrReserved__::PlugNotice::DidRegisterPlugins::~DidRegisterPlugins(this);
}

void sub_29B291314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_29B291378()
{
  if (__cxa_guard_acquire(byte_2A173F3B0))
  {
    unk_2A173F3D8 = 0u;
    *algn_2A173F3C8 = 0u;
    xmmword_2A173F3B8 = 0u;
    byte_2A173F3E8 = 1;
    __cxa_atexit(sub_29A183994, &xmmword_2A173F3B8, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F3B0);
  }
}

void sub_29B291400(uint64_t a1)
{
  v4[0] = "plug/registry.cpp";
  v4[1] = "_RegisterPlugin";
  v4[2] = 76;
  v4[3] = "void pxrInternal__aapl__pxrReserved__::PlugRegistry::_RegisterPlugin(const Plug_RegistrationMetadata &, ConcurrentVector *) [ConcurrentVector = tbb::concurrent_vector<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::PlugPlugin>>]";
  v5 = 0;
  v3 = *(a1 + 32);
  v1 = a1 + 32;
  v2 = v3;
  if (*(v1 + 23) >= 0)
  {
    v2 = v1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Tried to register a plugin of unknown type (maybe from %s)", v2);
}

uint64_t sub_29B29146C(uint64_t result)
{
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B291508(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = (a2 + 16 * a1);
  do
  {
    result = *v3;
    if (*v3)
    {
      result = sub_29A0ED76C(result);
      if (v5)
      {
        result = (*(*result + 8))(result);
      }
    }

    v3 -= 2;
    --v2;
  }

  while (v2);
  return result;
}

void sub_29B2915AC(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "vt/dictionary.h";
  *(a1 + 8) = "GetUnderlyingIterator";
  *(a1 + 16) = 130;
  *(a1 + 24) = "UnderlyingIterator pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string, pxrInternal__aapl__pxrReserved__::VtValue, std::less<void>> *, std::__map_iterator<std::__tree_iterator<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, std::__tree_node<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, void *> *, long>>>::GetUnderlyingIterator(UnderlyingMapPtr) const [UnderlyingMapPtr = std::map<std::string, pxrInternal__aapl__pxrReserved__::VtValue, std::less<void>> *, UnderlyingIterator = std::__map_iterator<std::__tree_iterator<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, std::__tree_node<std::__value_type<std::string, pxrInternal__aapl__pxrReserved__::VtValue>, void *> *, long>>]";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "!_underlyingMap || _underlyingMap == map");
}

uint64_t sub_29B291604(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = (*(result + 8) & 3) == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    result = (*((v2 & 0xFFFFFFFFFFFFFFF8) + 32))(result);
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_29B29164C(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v4, a2);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

void sub_29B2916CC()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<float>::_DetachIfNotUnique() [T = float]", v3);
  v4 = sub_29A1A307C();
  sub_29A18E590(v4, v5);
  if (v0)
  {
    sub_29A1A3144();
    do
    {
      v8 = *v1++;
      *v7++ = v8;
      v6 -= 4;
    }

    while (v6);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t sub_29B291738()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2917A4()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::pxr_half::half]", v3);
  v4 = sub_29A1A307C();
  v6 = sub_29A18F4AC(v4, v5);
  if (v0)
  {
    v7 = 2 * v0;
    v8 = v6;
    do
    {
      v9 = *v1++;
      *v8++ = v9;
      v7 -= 2;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

uint64_t sub_29B291814()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291880()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<double>::_DetachIfNotUnique() [T = double]", v3);
  v4 = sub_29A1A307C();
  sub_29A18FFF4(v4, v5);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      v8 = *v1++;
      *v7++ = v8;
      v6 -= 8;
    }

    while (v6);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

uint64_t sub_29B2918EC()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291958()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2f]", v2);
  v3 = sub_29A1A307C();
  sub_29A190EBC(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

uint64_t sub_29B2919BC()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291A28()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2h]", v2);
  v3 = sub_29A1A307C();
  sub_29A1919AC(v3, v4);
  if (v0)
  {
    sub_29A1A3144();
    do
    {
      sub_29A1A310C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

uint64_t sub_29B291A8C()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291AF8()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2d]", v2);
  v3 = sub_29A1A307C();
  sub_29A1924CC(v3, v4);
  if (v0)
  {
    sub_29A1A312C();
    do
    {
      sub_29A1A30B8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

uint64_t sub_29B291B5C()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291BC8()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3f]", v3);
  v4 = sub_29A1A307C();
  v6 = sub_29A193530(v4, v5);
  if (v0)
  {
    v7 = 12 * v0;
    v8 = v6;
    do
    {
      v9 = *v1;
      *(v8 + 2) = *(v1 + 2);
      *v8 = v9;
      v8 = (v8 + 12);
      v1 = (v1 + 12);
      v7 -= 12;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29B291C48()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291CB4()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3h]", v3);
  v4 = sub_29A1A307C();
  v6 = sub_29A194030(v4, v5);
  if (v0)
  {
    v7 = 6 * v0;
    v8 = v6;
    do
    {
      v9 = *v1;
      *(v8 + 2) = *(v1 + 2);
      *v8 = v9;
      v8 = (v8 + 6);
      v1 = (v1 + 6);
      v7 -= 6;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

uint64_t sub_29B291D34()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291DA0()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3d]", v2);
  v3 = sub_29A1A307C();
  sub_29A194C30(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A1A30F0();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

uint64_t sub_29B291E0C()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291E78()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4f]", v2);
  v3 = sub_29A1A307C();
  sub_29A195B34(v3, v4);
  if (v0)
  {
    sub_29A1A312C();
    do
    {
      sub_29A1A30B8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

uint64_t sub_29B291EDC()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B291F48()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4h]", v2);
  v3 = sub_29A1A307C();
  sub_29A196658(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

uint64_t sub_29B291FAC()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292018()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4d]", v2);
  v3 = sub_29A1A307C();
  sub_29A19719C(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A1A311C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

uint64_t sub_29B292080()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2920EC()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4d]", v3);
  v4 = *v0;
  v5 = *v1;
  v6 = sub_29A1981B0(v1, *v1);
  if (v5)
  {
    v7 = v5 << 7;
    v8 = v6;
    do
    {
      memcpy(v8, v4, 0x80uLL);
      v4 += 128;
      v8 += 128;
      v7 -= 128;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::_DecRef();
}

uint64_t sub_29B292178()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2921E4()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix4f]", v3);
  v4 = sub_29A1A307C();
  v6 = sub_29A198D38(v4, v5);
  if (v0)
  {
    v7 = v0 << 6;
    v8 = v6;
    do
    {
      v9 = *v1;
      v10 = v1[1];
      v11 = v1[3];
      v8[2] = v1[2];
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
      v8 += 4;
      v1 += 4;
      v7 -= 64;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::_DecRef();
}

uint64_t sub_29B292260()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2922CC()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatf]", v2);
  v3 = sub_29A1A307C();
  sub_29A1999E0(v3, v4);
  if (v0)
  {
    sub_29A1A312C();
    do
    {
      sub_29A1A30B8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
}

uint64_t sub_29B292330()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B29239C()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuath]", v2);
  v3 = sub_29A1A307C();
  sub_29A19A50C(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuath>::_DecRef();
}

uint64_t sub_29B292400()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B29246C()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfQuatd]", v2);
  v3 = sub_29A1A307C();
  sub_29A19B034(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A1A311C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatd>::_DecRef();
}

uint64_t sub_29B2924D4()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292540()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DetachIfNotUnique() [T = unsigned short]", v3);
  v4 = sub_29A1A307C();
  v6 = sub_29A19C2B0(v4, v5);
  if (v0)
  {
    v7 = 2 * v0;
    v8 = v6;
    do
    {
      v9 = *v1++;
      *v8++ = v9;
      v7 -= 2;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned short>::_DecRef();
}

uint64_t sub_29B2925B0()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B29261C()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DetachIfNotUnique() [T = unsigned int]", v2);
  v3 = sub_29A1A307C();
  sub_29A19CE64(v3, v4);
  if (v0)
  {
    sub_29A1A3144();
    do
    {
      sub_29A1A310C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

uint64_t sub_29B292680()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2926EC()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<int>::_DetachIfNotUnique() [T = int]", v2);
  v3 = sub_29A1A307C();
  sub_29A19DB58(v3, v4);
  if (v0)
  {
    sub_29A1A3144();
    do
    {
      sub_29A1A310C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t sub_29B292750()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2927BC()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DetachIfNotUnique() [T = unsigned char]", v3);
  v4 = *v0;
  v5 = *v1;
  v6 = sub_29A19E470(v1, *v1);
  if (v5)
  {
    v7 = v6;
    do
    {
      v8 = *v4++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

uint64_t sub_29B292834()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B2928A0()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfRange1d]", v2);
  v3 = sub_29A1A307C();
  sub_29A19F128(v3, v4);
  if (v0)
  {
    sub_29A1A312C();
    do
    {
      sub_29A1A30B8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1d>::_DecRef();
}

uint64_t sub_29B292904()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292970()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfRange1f]", v2);
  v3 = sub_29A1A307C();
  sub_29A19FA80(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange1f>::_DecRef();
}

uint64_t sub_29B2929D4()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292A40()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfRange2d]", v2);
  v3 = sub_29A1A307C();
  sub_29A1A0550(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A1A311C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2d>::_DecRef();
}

uint64_t sub_29B292AA8()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292B14()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfRange2f]", v2);
  v3 = sub_29A1A307C();
  sub_29A1A1030(v3, v4);
  if (v0)
  {
    sub_29A1A312C();
    do
    {
      sub_29A1A30B8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange2f>::_DecRef();
}

uint64_t sub_29B292B78()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292BE4()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfRange3d]", v3);
  v4 = sub_29A1A307C();
  v6 = sub_29A1A1D10(v4, v5);
  if (v0)
  {
    v7 = 48 * v0;
    v8 = v6;
    do
    {
      v9 = *v1;
      v10 = v1[2];
      v8[1] = v1[1];
      v8[2] = v10;
      *v8 = v9;
      v8 += 3;
      v1 += 3;
      v7 -= 48;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3d>::_DecRef();
}

uint64_t sub_29B292C64()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void sub_29B292CD0()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfRange3f]", v2);
  v3 = sub_29A1A307C();
  sub_29A1A291C(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A1A30F0();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfRange3f>::_DecRef();
}

uint64_t sub_29B292D3C()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

char *sub_29B292DA8(pxrInternal__aapl__pxrReserved__::VtValue *a1, std::type_info *a2)
{
  Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(a1, a2);
  result = pxrInternal__aapl__pxrReserved__::TfType::GetTypeName(&Type);
  if (result[23] < 0)
  {
    return sub_29A008D14(a2, *result, *(result + 1));
  }

  v4 = *result;
  a2[1].__vftable = *(result + 2);
  *a2 = v4;
  return result;
}

void sub_29B292E08()
{
  if (__cxa_guard_acquire(byte_2A173F418))
  {
    qword_2A173F430 = 0;
    qword_2A173F428 = 0;
    qword_2A173F420 = &qword_2A173F428;
    __cxa_atexit(sub_29A1B0D50, &qword_2A173F420, &dword_299FE7000);
    __cxa_guard_release(byte_2A173F418);
  }
}

uint64_t sub_29B292E70(uint64_t a1)
{
  *a1 = "ts/binary.cpp";
  *(a1 + 8) = "GetBinaryData";
  *(a1 + 16) = 219;
  *(a1 + 24) = "static void pxrInternal__aapl__pxrReserved__::Ts_BinaryDataAccess::GetBinaryData(const TsSpline &, std::vector<uint8_t> *const, const std::unordered_map<TsTime, VtDictionary> **const)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "buf->size() <= bufSize", 0);
}

void sub_29B292EBC(void *a1)
{
  if (__cxa_guard_acquire(byte_2A173F478))
  {
    *algn_2A173F490 = 0u;
    xmmword_2A173F480 = 0u;
    dword_2A173F4A0 = 1065353216;
    __cxa_atexit(sub_29A1B1D08, &xmmword_2A173F480, &dword_299FE7000);
    __cxa_guard_release(byte_2A173F478);
  }

  *a1 = &xmmword_2A173F480;
}

uint64_t sub_29B292F5C(void *a1)
{
  *a1 = "ts/eval.cpp";
  a1[1] = "_FindMonotonicZero";
  v1 = sub_29A1B5030(a1, 206);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "!aZero || !bZero || !cZero", 0);
}

uint64_t sub_29B292FA4(void *a1)
{
  *a1 = "ts/eval.cpp";
  a1[1] = "_EvalBezier";
  v1 = sub_29A1B5030(a1, 261);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "t > -epsilon", 0);
}

uint64_t sub_29B292FEC(void *a1)
{
  *a1 = "ts/eval.cpp";
  a1[1] = "_EvalBezier";
  v1 = sub_29A1B5030(a1, 266);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "t < 1 + epsilon", 0);
}

uint64_t sub_29B293034(void *a1)
{
  *a1 = "ts/eval.cpp";
  a1[1] = "_GetExtrapolationSlope";
  v1 = sub_29A1B5030(a1, 355);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "extrap.mode == TsExtrapLinear", 0);
}

void sub_29B2930A0(void *a1)
{
  v2 = 0;
  atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::TsEditBehaviorBlock,true>::value, &v2, a1);
  if (v2)
  {
    v3 = sub_29A1BE02C(a1);

    operator delete(v3);
  }
}

void sub_29B2930E4(void *a1)
{
  v2 = 0;
  atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::TsAntiRegressionAuthoringSelector,true>::value, &v2, a1);
  if (v2)
  {
    v3 = sub_29A1BE48C(a1);

    operator delete(v3);
  }
}

uint64_t sub_29B293184(uint64_t a1)
{
  v7 = (a1 + 160);
  sub_29A012C90(&v7);
  v2 = *(a1 + 144);
  if (v2)
  {
    v3 = sub_29A0ED78C(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  std::mutex::~mutex((a1 + 56));
  result = *(a1 + 32);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v4)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B293238(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v5)
  {
    sub_29A1D4904(v5);
  }

  *(v2 + 16) = v3[2];
  *(v2 + 24) = *v4 != 0;
  *(v2 + 32) = 850045863;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  v6 = v4[1];
  *(v2 + 96) = *v4;
  *(v2 + 104) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v3[1];
  *(v2 + 112) = *v3;
  *(v2 + 120) = v7;
  if (v7)
  {
    sub_29A1D4904(v7);
  }

  v8 = v3[2];
  *(v2 + 136) = 0;
  sub_29A1D48E8(v2 + 136, v8);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B2932E8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  sub_29B293330(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29B293330(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  std::mutex::~mutex((a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return a1;
}

uint64_t sub_29B29339C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_29A1D4928(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = sub_29A0ED78C(v9);
    if (v11)
    {
      (*(*v10 + 8))(v10);
    }
  }

  return v8;
}

uint64_t sub_29B2933FC(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  std::mutex::~mutex((a1 + 56));
  result = *(a1 + 32);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v4)
    {
      v5 = *(*result + 8);

      return v5();
    }
  }

  return result;
}

void sub_29B29348C(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v4)
  {
    sub_29A1D4904(v4);
  }

  v5 = *(v3 + 16);
  *(v2 + 24) = 0;
  sub_29A1D48E8(v2 + 24, v5);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29B2934D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B293518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_29A1D4928(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  result = *(v8 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v10)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

__n128 sub_29B2935DC(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

BOOL sub_29B293620(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return *a2 == 0;
}

uint64_t sub_29B293680(uint64_t a1)
{
  *a1 = "ar/resolver.cpp";
  *(a1 + 8) = "_UnbindContext";
  *(a1 + 16) = 666;
  *(a1 + 24) = "virtual void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_UnbindContext(const ArResolverContext &, VtValue *)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "bindingData->IsHolding<_ResolverContextData>()", 0);
}

uint64_t sub_29B2936CC(uint64_t a1)
{
  *a1 = "ar/resolver.cpp";
  *(a1 + 8) = "_EndCacheScope";
  *(a1 + 16) = 1000;
  *(a1 + 24) = "virtual void pxrInternal__aapl__pxrReserved__::(anonymous namespace)::_DispatchingResolver::_EndCacheScope(VtValue *)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "cacheScopeData->IsHolding<_ResolverCacheData>()", 0);
}

uint64_t sub_29B293798(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v4, a2);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

uint64_t sub_29B293818(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B29386C()
{
  if (__cxa_guard_acquire(byte_2A173F650))
  {
    qword_2A173F670 = 0;

    __cxa_guard_release(byte_2A173F650);
  }
}

uint64_t sub_29B2938E4(uint64_t a1)
{
  *a1 = "sdf/assetPathResolver.cpp";
  *(a1 + 8) = "Sdf_ComputeAnonLayerIdentifier";
  *(a1 + 16) = 212;
  *(a1 + 24) = "string pxrInternal__aapl__pxrReserved__::Sdf_ComputeAnonLayerIdentifier(const string &, const SdfLayer *)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "layer", 0);
}

uint64_t sub_29B2939C8(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t (*sub_29B293A0C(void *a1))(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B293AF8(uint64_t a1, const char *a2, char *a3)
{
  *a1 = "sdf/changeManager.cpp";
  *(a1 + 8) = "_CloseChangeBlock";
  *(a1 + 16) = 92;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::Sdf_ChangeManager::_CloseChangeBlock(const SdfChangeBlock *, const void *)";
  *(a1 + 32) = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Improperly nested SdfChangeBlocks!", a2, a3);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "data.outermostBlock == block", v4);
}

atomic_uint *sub_29B293B60(atomic_uint **a1)
{
  result = *a1;
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B293BB8()
{
  if (__cxa_guard_acquire(byte_2A173F690))
  {
    atomic_store(1uLL, &byte_2A173F690[8]);
    qword_2A173F688 = &byte_2A173F690[8];
    __cxa_guard_release(byte_2A173F690);
  }
}

void sub_29B293BF8(uint64_t a1, uint64_t a2, char *a3)
{
  v3[0] = "tf/iterator.h";
  v3[1] = "operator->";
  v3[2] = 270;
  v3[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<std::vector<pxrInternal__aapl__pxrReserved__::SdfSpec>>::operator->() [T = std::vector<pxrInternal__aapl__pxrReserved__::SdfSpec>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

atomic_uint *sub_29B293C54(atomic_uint *result)
{
  if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_29B293C98(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v2 = *(result + 8);
    if ((v2 & 0x80000000) == 0)
    {
      atomic_fetch_add_explicit((result + 8), 1u, memory_order_relaxed);
      return result;
    }

    if (v2 == -1)
    {
      v3 = 0xFFFFFFFFLL;
      return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked(result, v3);
    }

    v3 = *(result + 8);
    atomic_compare_exchange_strong_explicit((result + 8), &v3, v2 - 1, memory_order_relaxed, memory_order_relaxed);
    if (v3 != v2)
    {
      return pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter::_AddRefMaybeLocked(result, v3);
    }
  }

  return result;
}

double sub_29B293CE4(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, void *a5, int a6)
{
  v6 = *a2;
  *a1 = *a2;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 8) = *a3;
  v7 = *a4;
  *(a1 + 16) = *a4;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 16) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 24) = a6;
  v8 = a5[1];
  *(a1 + 32) = *a5;
  *(a1 + 40) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  *(a1 + 48) = 850045863;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 97) = 0u;
  return result;
}

atomic_uint *sub_29B293D88(uint64_t a1, uint64_t a2)
{
  sub_29A1E68F8((a2 + 120));
  std::mutex::~mutex((a2 + 48));
  result = *(a2 + 40);
  if (result && atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    result = (*(*result + 8))(result);
  }

  v4 = *(a2 + 16);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a2 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_29B293E28()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B293E74()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1F3B5C();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B293EC4()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1F3B5C();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

uint64_t sub_29B293F14(uint64_t a1)
{
  sub_29A1DE3A4((a1 + 16));
  result = *(a1 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v3)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B293F70()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator*";
  sub_29A1F3B5C();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B293FC0()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29400C()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B294058()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B2940A4()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void *sub_29B2940F0(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  return __dst;
}

void sub_29B29415C(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a3 + 16) = a4;
  if (*(a2 + 71) < 0)
  {
    operator delete(*a1);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_29B2941B0(uint64_t a1)
{
  v1 = sub_29A0ED78C(a1);
  if (v2)
  {
    (*(*v1 + 8))(v1);
  }

  result = sub_29A200000();
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B294234(uint64_t *a1, uint64_t a2)
{
  sub_29A1FFFD0(a2, *a1);
  sub_29A1FFFD0(a2, a1[1]);
  v4 = a1[5];
  if (v4)
  {
    v5 = sub_29A0ED78C(v4);
    if (v6)
    {
      (*(*v5 + 8))(v5);
    }
  }

  operator delete(a1);
}

void sub_29B2942B8()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DetachIfNotUnique() [T = BOOL]", v3);
  v4 = sub_29A223258();
  v6 = sub_29A20D160(v4, v5);
  if (v0)
  {
    v7 = v6;
    do
    {
      v8 = *v1++;
      *v7++ = v8;
      --v0;
    }

    while (v0);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29B294324()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DetachIfNotUnique() [T = long long]", v2);
  v3 = sub_29A1A307C();
  sub_29A2100A8(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

void sub_29B294388()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DetachIfNotUnique() [T = unsigned long long]", v2);
  v3 = sub_29A1A307C();
  sub_29A21110C(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>::_DecRef();
}

atomic_ullong *sub_29B2943EC(atomic_ullong *result, atomic_ullong **a2)
{
  if (atomic_fetch_add_explicit(result, 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
  {
    __dmb(9u);
    result = *a2;
    v2 = (*a2)[1];
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void sub_29B294414()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v3, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfTimeCode>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfTimeCode]", v4);
  v5 = sub_29A1A307C();
  v7 = sub_29A2134F8(v5, v6);
  if (v2)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v8);
  }

  sub_29A213190(v1);
  *v0 = v7;
}

void sub_29B294478()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v0, "void pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DetachIfNotUnique() [T = std::string]", v1);
  v2 = sub_29A22321C();
  sub_29A214158(v2, v3);
  v4 = sub_29A223248();
  sub_29A2142B4(v4, v5, v6);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29B2944DC()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::TfToken]", v3);
  sub_29A21508C(v1, *v0, *v1, *v1);
  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
}

void sub_29B294534()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfAssetPath>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfAssetPath]", v3);
  v4 = sub_29A22321C();
  v6 = sub_29A216374(v4, v5);
  v7 = sub_29A223248();
  sub_29A21651C(v7, v8, v9);
  sub_29A216064(v1);
  *v0 = v6;
}

void sub_29B294598()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfOpaqueValue>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfOpaqueValue]", v3);
  v4 = sub_29A216EB0(v1, *v1);
  sub_29A213190(v1);
  *v0 = v4;
}

void sub_29B2945E8()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::SdfPathExpression>::_DetachIfNotUnique() [ELEM = pxrInternal__aapl__pxrReserved__::SdfPathExpression]", v3);
  v4 = sub_29A22321C();
  v6 = sub_29A21971C(v4, v5);
  v7 = sub_29A223248();
  sub_29A2198B0(v7, v8, v9);
  sub_29A219394(v1);
  *v0 = v6;
}

void sub_29B29464C()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec2i]", v2);
  v3 = sub_29A1A307C();
  sub_29A21A654(v3, v4);
  if (v0)
  {
    sub_29A1A3138();
    do
    {
      sub_29A1A30C8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29B2946B0()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec3i]", v2);
  v3 = sub_29A1A307C();
  sub_29A21C644(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A22322C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29B29471C()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfVec4i]", v2);
  v3 = sub_29A1A307C();
  sub_29A21E6F4(v3, v4);
  if (v0)
  {
    sub_29A1A312C();
    do
    {
      sub_29A1A30B8();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29B294780()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v1, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix2d]", v2);
  v3 = sub_29A1A307C();
  sub_29A221658(v3, v4);
  if (v0)
  {
    do
    {
      sub_29A1A311C();
    }

    while (!v5);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix2d>::_DecRef();
}

void sub_29B2947E8()
{
  sub_29A1A30A0();
  pxrInternal__aapl__pxrReserved__::Vt_ArrayBase::_DetachCopyHook(v2, "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DetachIfNotUnique() [T = pxrInternal__aapl__pxrReserved__::GfMatrix3d]", v3);
  v4 = sub_29A22326C();
  v6 = sub_29A2227C8(v4, v5);
  if (v1)
  {
    v7 = 72 * v1;
    v8 = v6;
    do
    {
      memcpy(v8, v0, 0x48uLL);
      v0 += 72;
      v8 += 72;
      v7 -= 72;
    }

    while (v7);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfMatrix3d>::_DecRef();
}

void sub_29B294874(void *a1)
{
  {
    pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy,std::string>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty = 0;
    *algn_2A14F69F8 = 0;
    qword_2A14F6A00 = 0;
    __cxa_atexit(sub_29A1C9440, &pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy,std::string>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty, &dword_299FE7000);
  }

  *a1 = &pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfSubLayerTypePolicy,std::string>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty;
}

void sub_29B2948E4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_29B2948F8()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294964()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B2949D0()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294A3C()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294AA8()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

void *sub_29B294B14(void *result)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

uint64_t sub_29B294B30(void *a1)
{
  v1 = sub_29A2835C4(a1, "sdf/textParserHelpers.h");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "context.currentValue.IsHolding<ArrayType>() || context.currentValue.IsEmpty()", 0);
}

uint64_t sub_29B294B74(void *a1)
{
  v1 = sub_29A2835C4(a1, "sdf/textParserHelpers.h");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "context.currentValue.IsHolding<ArrayType>() || context.currentValue.IsEmpty()", 0);
}

uint64_t sub_29B294BB8(void *a1)
{
  v1 = sub_29A2835C4(a1, "sdf/textParserHelpers.h");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "context.currentValue.IsHolding<ArrayType>() || context.currentValue.IsEmpty()", 0);
}

uint64_t sub_29B294BFC(void *a1)
{
  v1 = sub_29A2835C4(a1, "sdf/textParserHelpers.h");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "context.currentValue.IsHolding<ArrayType>() || context.currentValue.IsEmpty()", 0);
}

uint64_t sub_29B294C40(void *a1)
{
  v1 = sub_29A2835C4(a1, "sdf/textParserHelpers.h");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "context.currentValue.IsHolding<ArrayType>() || context.currentValue.IsEmpty()", 0);
}

uint64_t sub_29B294C84(void *a1)
{
  v1 = sub_29A2835C4(a1, "sdf/textParserHelpers.h");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "context.currentValue.IsHolding<ArrayType>() || context.currentValue.IsEmpty()", 0);
}

uint64_t sub_29B294CC8()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294D34()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294DA0()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294E0C()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294E78()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294EE4()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294F50()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B294FBC(uint64_t a1, const char *a2, char *a3)
{
  *a1 = "sdf/valueTypeRegistry.cpp";
  *(a1 + 8) = "_AddType";
  *(a1 + 16) = 275;
  *(a1 + 24) = "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddType(Sdf_ValueTypeImpl **, Sdf_ValueTypeImpl **, const TfToken &, const TfType &, const TfType &, const std::string &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, const VtValue &, TfEnum)";
  *(a1 + 32) = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Types must have names", a2, a3);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "!name.IsEmpty()", v4);
}

uint64_t sub_29B295024(void *a1)
{
  *a1 = "sdf/valueTypeRegistry.cpp";
  a1[1] = "_AddType";
  sub_29A286104(a1, "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddType(Sdf_ValueTypeImpl **, Sdf_ValueTypeImpl **, const TfToken &, const TfType &, const TfType &, const std::string &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, const VtValue &, TfEnum)");
  if (v4)
  {
    v5 = "";
  }

  else
  {
    sub_29A286118();
    if (v6 < 0)
    {
      v5 = *v5;
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Type '%s' must have C++ names", v2, v3, v5);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "!cppTypeName.empty() || !arrayCppTypeName.empty()", v7);
}

uint64_t sub_29B2950B0(void *a1)
{
  *a1 = "sdf/valueTypeRegistry.cpp";
  a1[1] = "_AddType";
  sub_29A286104(a1, "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddType(Sdf_ValueTypeImpl **, Sdf_ValueTypeImpl **, const TfToken &, const TfType &, const TfType &, const std::string &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, const VtValue &, TfEnum)");
  if (v4)
  {
    v5 = "";
  }

  else
  {
    sub_29A286118();
    if (v6 < 0)
    {
      v5 = *v5;
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Type '%s' must have a C++ type", v2, v3, v5);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "!type.IsUnknown() || !arrayType.IsUnknown()", v7);
}

uint64_t sub_29B29513C(void *a1)
{
  *a1 = "sdf/valueTypeRegistry.cpp";
  a1[1] = "_AddType";
  sub_29A286104(a1, "BOOL pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddType(Sdf_ValueTypeImpl **, Sdf_ValueTypeImpl **, const TfToken &, const TfType &, const TfType &, const std::string &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, const VtValue &, TfEnum)");
  if (v4)
  {
    v5 = "";
  }

  else
  {
    sub_29A286118();
    if (v6 < 0)
    {
      v5 = *v5;
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Type '%s' already exists", v2, v3, v5);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "existing == Sdf_ValueTypePrivate::GetEmptyTypeName()", v7);
}

uint64_t sub_29B2951C8(void *a1)
{
  *a1 = "sdf/valueTypeRegistry.cpp";
  a1[1] = "_AddCoreType";
  sub_29A286104(a1, "const Registry::CoreType *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddCoreType(const TfToken &, const TfType &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, TfEnum)");
  if (v4)
  {
    v5 = "";
  }

  else
  {
    sub_29A286118();
    if (v6 < 0)
    {
      v5 = *v5;
    }
  }

  v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Internal error: unknown TfType for '%s'", v2, v3, v5);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "!tfType.IsUnknown()", v7);
}

uint64_t sub_29B295254(void *a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = "sdf/valueTypeRegistry.cpp";
  a1[1] = "_AddCoreType";
  sub_29A286104(a1, "const Registry::CoreType *pxrInternal__aapl__pxrReserved__::(anonymous namespace)::Registry::_AddCoreType(const TfToken &, const TfType &, const std::string &, const TfToken &, const SdfTupleDimensions &, const VtValue &, TfEnum)");
  if (v9)
  {
    v10 = "";
  }

  else
  {
    sub_29A286118();
    if (v11 < 0)
    {
      v10 = *v10;
    }
  }

  v12 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Internal error: TfType<void> for '%s'", v7, v8, v10);
  if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "tfType != TfType::Find<void>()", v12))
  {
    return 1;
  }

  result = 0;
  *a4 = *a3;
  return result;
}

uint64_t sub_29B295308(uint64_t a1)
{
  *a1 = "sdf/variableExpressionImpl.cpp";
  *(a1 + 8) = "operator()";
  *(a1 + 16) = 597;
  *(a1 + 24) = "EvalResult pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_ComparisonVisitor<std::equal_to>::operator()(const VtValue &) const [Comparator = std::equal_to]";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "x.IsEmpty() && _y.IsEmpty()", 0);
}

uint64_t sub_29B295354(uint64_t a1)
{
  *a1 = "sdf/variableExpressionImpl.cpp";
  *(a1 + 8) = "operator()";
  *(a1 + 16) = 597;
  *(a1 + 24) = "EvalResult pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_ComparisonVisitor<std::not_equal_to>::operator()(const VtValue &) const [Comparator = std::not_equal_to]";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "x.IsEmpty() && _y.IsEmpty()", 0);
}

uint64_t sub_29B2953A0(uint64_t a1, void *a2)
{
  sub_29A1A3090();
  v4(v6, v3);
  sub_29A18606C(a2, v6);
  return sub_29A186B14(v6);
}

void sub_29B295418()
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  sub_29A2D21EC();
  if (v0)
  {
    sub_29A2D220C();
    if (!v2)
    {
      ++v1;
    }
  }

  else
  {
    v1 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

void sub_29B295484()
{
  sub_29A2D21D0();
  do
  {
    sub_29A2D21FC();
  }

  while (!v5);
  v6 = sub_29A20D160(v0, v4);
  if (v1)
  {
    v7 = v1;
    v8 = v6;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      --v7;
    }

    while (v7);
  }

  *(v6 + v1) = *v2;
  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

uint64_t sub_29B2954F8(uint64_t a1, void *a2)
{
  sub_29A1A3090();
  v4(v6, v3);
  sub_29A18606C(a2, v6);
  return sub_29A186B14(v6);
}

void sub_29B295570()
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  sub_29A2D21EC();
  if (v0)
  {
    sub_29A2D220C();
    if (!v2)
    {
      ++v1;
    }
  }

  else
  {
    v1 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

void sub_29B2955DC()
{
  sub_29A2D21D0();
  do
  {
    sub_29A2D21FC();
  }

  while (!v5);
  v6 = sub_29A2100A8(v0, v4);
  if (v1)
  {
    v7 = 8 * v1;
    v8 = v6;
    do
    {
      v9 = *v3++;
      *v8++ = v9;
      v7 -= 8;
    }

    while (v7);
  }

  v6[v1] = *v2;
  pxrInternal__aapl__pxrReserved__::VtArray<long long>::_DecRef();
}

uint64_t sub_29B295650(uint64_t a1, void *a2)
{
  sub_29A1A3090();
  v4(v6, v3);
  sub_29A18606C(a2, v6);
  return sub_29A186B14(v6);
}

void sub_29B2956C8()
{
  v3[0] = "vt/array.h";
  v3[1] = "emplace_back";
  sub_29A2D21EC();
  if (v0)
  {
    sub_29A2D220C();
    if (!v2)
    {
      ++v1;
    }
  }

  else
  {
    v1 = 2;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Array rank %u != 1", v1);
}

void sub_29B295734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  do
  {
    sub_29A2D21FC();
  }

  while (!v8);
  v9 = sub_29A214158(a1, v7);
  v10 = 3 * a2;
  sub_29A2142B4(v6, (v6 + 8 * v10), v9);
  v11 = *(a3 + 16);
  v12 = &v9[8 * v10];
  *v12 = *a3;
  *(v12 + 2) = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

uint64_t sub_29B2957C8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = *a2;
  *a2 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  result = *a3;
  *a3 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *a6 = a4;
  *(a6 + 8) = a5;
  return result;
}

uint64_t sub_29B2958C0(uint64_t a1)
{
  *a1 = "sdf/abstractData.cpp";
  *(a1 + 8) = "VisitSpecs";
  *(a1 + 16) = 243;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::SdfAbstractData::VisitSpecs(SdfAbstractDataSpecVisitor *) const";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "visitor", 0);
}

void sub_29B295980()
{
  if (__cxa_guard_acquire(byte_2A173F7D0))
  {
    qword_2A173F7E0 = 0;
    unk_2A173F7E8 = 0;
    qword_2A173F7D8 = 0;
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A173F7D8, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F7D0);
  }
}

uint64_t sub_29B2959F8(pxrInternal__aapl__pxrReserved__::SdfChangeBlock *a1, uint64_t a2)
{
  sub_29A1DD644(a1);
  result = *(a2 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v4)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B295A50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  result = *(a4 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v5)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B295ABC(_DWORD *a1, uint64_t a2)
{
  sub_29A1DE3A4(a1);
  result = *(a2 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v4)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B295B14()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B295B60()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B295BAC()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B295BF8(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "sdf/changeList.cpp";
  *(a1 + 8) = "GetEntry";
  *(a1 + 16) = 141;
  *(a1 + 24) = "const SdfChangeList::Entry &pxrInternal__aapl__pxrReserved__::SdfChangeList::GetEntry(const SdfPath &) const";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "!path.IsEmpty()");
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v4)
  {
    sub_29A1D4904(v4);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v6)
  {
    sub_29A2F7BDC(v5);
    if ((v7 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  v8 = *(v3 + 32);
  *(v2 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
  }

  return sub_29A2F7B90();
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::Sdf_Children(uint64_t a1, void *a2, _DWORD *a3, uint64_t *a4, atomic_uint **a5)
{
  v9 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v9;
  if (v9)
  {
    sub_29A1D4904(v9);
  }

  sub_29A1E21F4((a1 + 16), a3);
  sub_29A1E2240((a1 + 20), a3 + 1);
  v10 = *a4;
  *(a1 + 24) = *a4;
  if ((v10 & 7) != 0)
  {
    sub_29A2F7BDC(v10);
    if ((v11 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  v12 = *a5;
  *(a1 + 32) = *a5;
  if (v12)
  {
    atomic_fetch_add(v12, 1u);
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void sub_29B295F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

void sub_29B296348()
{
  sub_29A2F7D3C();
  sub_29A1DCEA8(v1);
  _Unwind_Resume(v0);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void sub_29B296524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::GetChild()
{
  sub_29A2F7CC0();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29B296AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::GetChild()
{
  sub_29A2F7CC0();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29B297044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::Find()
{
  sub_29A2F7D0C();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::IsValid();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::GetChild()
{
  sub_29A2F7CC0();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29B2975D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::Find()
{
  sub_29A2F7D0C();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::IsValid();
}

{
    ;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::GetChild()
{
  sub_29A2F7CC0();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29B297B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::Sdf_Children(void *a1, void *a2)
{
  sub_29A1D4914(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7E98();
  sub_29A2F7E80();
  sub_29A2F7C50();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

{
  sub_29A2F7BA4(a1, a2);
  if (v2)
  {
    sub_29A1D4904(v2);
  }

  sub_29A2F7F10();
  sub_29A2F7EF8();
  sub_29A2F7C70();
  if (!v4)
  {
    sub_29A2F7BDC(v3);
    if ((v5 & 1) == 0)
    {
      sub_29A2F7BCC();
    }
  }

  return sub_29A2F7B90();
}

BOOL pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::IsValid(uint64_t a1)
{
  sub_29B293A0C(a1);
  sub_29A2F7D24();
  return v2 && pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 16));
}

void pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::GetChild()
{
  sub_29A2F7CC0();
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::IsValid();
}

{
    ;
  }
}

void sub_29B2980F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A2F7D3C();
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v5);
  sub_29A1DCEA8(va);
  _Unwind_Resume(v4);
}

uint64_t sub_29B2984B8(_BYTE *a1, void *a2)
{
  sub_29A2F7CD0(a1, a2);
  sub_29A2F7D24();
  if (!v3)
  {
    sub_29A2F7D60();
    if (!v5)
    {
      do
      {
        sub_29A2F7DB4();
        if (!v5)
        {
          sub_29A2F7D9C();
        }
      }

      while (v6 != v4);
    }

    sub_29A2F7D78(v4);
  }

  return v2;
}

uint64_t sub_29B298508(void *a1, void *a2)
{
  *a1 = "sdf/children.cpp";
  a1[1] = "GetChild";
  v3 = sub_29A1B5030(a1, 64);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "IsValid()", 0))
  {
    return 1;
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_29B298570(void *a1)
{
  *a1 = "sdf/children.cpp";
  a1[1] = "Find";
  v1 = sub_29A1B5030(a1, 88);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "IsValid()", 0);
}

void sub_29B2985B8(void *a1)
{
  *a1 = "sdf/children.cpp";
  a1[1] = "FindKey";
  v1 = sub_29A1B5030(a1, 108);
  if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "IsValid()", 0) & 1) == 0)
  {
    sub_29A2F7DA8();
  }
}

BOOL sub_29B298620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = sub_29A0ED78C(v5);
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return a1 == a2;
}

uint64_t sub_29B298680(void *a1)
{
  *a1 = "sdf/children.cpp";
  a1[1] = "Copy";
  v1 = sub_29A1B5030(a1, 145);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "IsValid()", 0);
}

uint64_t sub_29B2986C8(void *a1)
{
  *a1 = "sdf/children.cpp";
  a1[1] = "Insert";
  v1 = sub_29A1B5030(a1, 159);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "IsValid()", 0);
}

uint64_t sub_29B298710(void *a1)
{
  *a1 = "sdf/children.cpp";
  a1[1] = "Erase";
  v1 = sub_29A1B5030(a1, 173);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "IsValid()", 0);
}

uint64_t sub_29B298758(_BYTE *a1, void *a2)
{
  sub_29A2F7CD0(a1, a2);
  sub_29A2F7D24();
  if (!v4)
  {
    v6 = *(v2 + 40);
    for (i = *(v2 + 48); i != v6; sub_29A1E230C(v2 + 40, i))
    {
      i -= 2;
    }

    v3 = 0;
    *(v2 + 48) = v6;
  }

  return v3;
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_MapperArgChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_ExpressionChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PrimChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_VariantSetChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_RelationshipTargetChildPolicy>::CreateSpec();
}

void pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CreateSpec(uint64_t a1)
{
  sub_29A31C958(a1);
  if (v1)
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29A31C9A4();

  pxrInternal__aapl__pxrReserved__::Sdf_ChildrenUtils<pxrInternal__aapl__pxrReserved__::Sdf_AttributeConnectionChildPolicy>::CreateSpec();
}

uint64_t sub_29B298B54(uint64_t a1)
{
  v2 = sub_29A31C9D4(a1);
  if (v2)
  {
    v3 = sub_29A0ED78C(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (v1)
  {
    return 1;
  }

  else
  {
    return sub_29A31C9C4();
  }
}

BOOL sub_29B298BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A31C994(a1, a2, a3);
  if (v5)
  {
    v6 = sub_29A0ED78C(v5);
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return v4 == v3;
}

BOOL sub_29B298C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29A31C984(a1, a2, a3);
  if (v5)
  {
    v6 = sub_29A0ED78C(v5);
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return v4 == v3;
}

uint64_t sub_29B298C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29A31C970(a1, a2, a3);
  if (v6)
  {
    v7 = sub_29A0ED78C(v6);
    if (v8)
    {
      (*(*v7 + 8))(v7);
    }
  }

  if (v5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (v4 == v3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void sub_29B298CD0()
{
  v0 = operator new(0x20uLL);
  v1 = 0;
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  *(v0 + 24) = 0;
  atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::Tf_ExportedStackedStorage<pxrInternal__aapl__pxrReserved__::SdfCleanupEnabler,false>::value, &v1, v0);
  if (v1)
  {
    v2 = v0;
    v3 = *v0;
    if (v3)
    {
      v2[1] = v3;
      operator delete(v3);
    }

    operator delete(v2);
  }
}

uint64_t sub_29B298D4C(pxrInternal__aapl__pxrReserved__::SdfSpec *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(a1);
  result = *(a2 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v4)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B298DA4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return a2 & 1;
}

uint64_t sub_29B298DFC(void *a1)
{
  v1 = sub_29A326970(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298E40(void *a1)
{
  v1 = sub_29A32697C(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298E84(void *a1)
{
  v1 = sub_29A326970(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298EC8(void *a1)
{
  v1 = sub_29A32697C(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298F0C(void *a1)
{
  v1 = sub_29A326970(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298F50(void *a1)
{
  v1 = sub_29A32697C(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298F94(void *a1)
{
  v1 = sub_29A326970(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B298FD8(void *a1)
{
  v1 = sub_29A32697C(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B29901C(void *a1)
{
  v1 = sub_29A326970(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "srcChildrenValue.IsHolding<ChildrenVector>() || srcChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B299060(void *a1)
{
  v1 = sub_29A32697C(a1, "sdf/copyUtils.cpp");
  v3 = sub_29A1B5030(v1, v2);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "dstChildrenValue.IsHolding<ChildrenVector>() || dstChildrenValue.IsEmpty()", 0);
}

uint64_t sub_29B2990A4()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B299110()
{
  sub_29A1A3090();
  v2 = sub_29A1A30AC(v0, v1);
  v4 = v3(v2);
  sub_29A1A30D8(v4, v5);
  return sub_29A186B14(v7);
}

uint64_t sub_29B29917C(void *a1, uint64_t a2)
{
  *a1 = "sdf/data.cpp";
  a1[1] = "EraseSpec";
  v3 = sub_29A3296D4(a1, a2, 54);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v3);
  v7 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No spec to erase at <%s>", v5, v6, Text);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "i != _data.end()", v7);
}

uint64_t sub_29B2991F0(void *a1, uint64_t a2)
{
  *a1 = "sdf/data.cpp";
  a1[1] = "MoveSpec";
  v3 = sub_29A3296D4(a1, a2, 73);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(v3);
  if (*(String + 23) >= 0)
  {
    v7 = String;
  }

  else
  {
    v7 = *String;
  }

  v8 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No spec to move at <%s>", v5, v6, v7);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "old != _data.end()", v8);
}

uint64_t sub_29B299274(uint64_t a1)
{
  *a1 = "sdf/data.cpp";
  *(a1 + 8) = "MoveSpec";
  *(a1 + 16) = 82;
  *(a1 + 24) = "virtual void pxrInternal__aapl__pxrReserved__::SdfData::MoveSpec(const SdfPath &, const SdfPath &)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "inserted", 0);
}

uint64_t sub_29B2992C0(uint64_t a1)
{
  *a1 = "sdf/data.cpp";
  *(a1 + 8) = "CreateSpec";
  *(a1 + 16) = 108;
  *(a1 + 24) = "virtual void pxrInternal__aapl__pxrReserved__::SdfData::CreateSpec(const SdfPath &, SdfSpecType)";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "specType != SdfSpecTypeUnknown", 0);
}

void sub_29B29930C()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

uint64_t sub_29B299358(void *a1, uint64_t a2, void *a3)
{
  *a1 = "sdf/data.cpp";
  a1[1] = "_GetOrCreateFieldValue";
  v5 = sub_29A3296D4(a1, a2, 297);
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v5);
  v9 = *a3 & 0xFFFFFFFFFFFFFFF8;
  if (v9)
  {
    v10 = (v9 + 16);
    if (*(v9 + 39) < 0)
    {
      v10 = *v10;
    }
  }

  else
  {
    v10 = "";
  }

  v11 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("No spec at <%s> when trying to set field '%s'", v7, v8, Text, v10);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "i != _data.end()", v11);
}

void sub_29B2993F8()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

uint64_t sub_29B299444(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v4, a2);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

uint64_t (*sub_29B2994C4(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t (*sub_29B299524(void *a1))()
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B299584(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

uint64_t sub_29B2995C8(void *a1)
{
  if (a1[1])
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  return 0;
}

void sub_29B29960C()
{
  if (__cxa_guard_acquire(byte_2A173F8C8))
  {
    qword_2A173F8D8 = 0;
    unk_2A173F8E0 = 0;
    qword_2A173F8D0 = 0;
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A173F8D0, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F8C8);
  }
}

uint64_t sub_29B299684(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry::~Sdf_IdentityRegistry(pxrInternal__aapl__pxrReserved__::Sdf_IdentityRegistry *this)
{
  sub_29A32D430(this + 2, 0);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sub_29A0ED78C(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

double sub_29B299750(uint64_t a1, void *a2)
{
  v3 = sub_29A32C850(a1, 0, 0.0, 0.5);
  v4 = a2[1];
  *(v3 + 80) = *a2;
  *(v3 + 88) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  result = 0.0;
  *(v3 + 96) = xmmword_29B4883C0;
  *(v3 + 112) = 0;
  return result;
}

void *sub_29B2997BC(void *result)
{
  if ((atomic_load_explicit(&qword_2A173F8E8, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    v2 = __cxa_guard_acquire(&qword_2A173F8E8);
    result = v1;
    if (v2)
    {
      qword_2A173F8F8 = 0;
      qword_2A173F8F0 = 0;
      __cxa_atexit(sub_29B299684, &qword_2A173F8F0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A173F8E8);
      result = v1;
    }
  }

  *result = &qword_2A173F8F0;
  return result;
}

void sub_29B299850()
{
  if (__cxa_guard_acquire(byte_2A14F6A38))
  {
    dword_2A14F6A20 = 0;
    word_2A14F6A24 = -1;
    byte_2A14F6A26 = 1;
    __cxa_atexit(sub_29A32CB3C, &dword_2A14F6A20, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6A38);
  }
}

void sub_29B2998CC(_BYTE **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    __dmb(0xBu);
    *v3 = 0;
  }

  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = sub_29A0ED78C(v4);
    if (v6)
    {
      (*(*v5 + 8))(v5);
    }
  }

  v7 = (a2 + 8);
  sub_29A32CA80(&v7);
}

uint64_t **sub_29B299948(std::string *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = sub_29B299524(a2);
  if (v7 & 1 | v6)
  {
    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    if (!v8)
    {
      v8 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    }

    if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
    }

    if (a3 + 1 != sub_29A01BCCC(a3, EmptyString))
    {
      sub_29A1DA734(a2);
    }

    if (a3[2])
    {
      sub_29A1DA734(a2);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_GetExtension(a1);
    if (v15 < 0)
    {
      operator delete(v13);
      if (v14)
      {
        return a3;
      }
    }

    else if (v15)
    {
      return a3;
    }

    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    if (!v10)
    {
      v10 = sub_29A32BEAC(&pxrInternal__aapl__pxrReserved__::SdfFileFormatTokens);
    }

    if ((*v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = ((*v10 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
    }

    sub_29A0DCFB4(a3, v11);
  }

  return a3;
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpenRelativeToLayer(void *a1)
{
  v5 = sub_29A34B008(a1);
  if (!(v6 & 1 | v5))
  {
    __p[0] = "sdf/layer.cpp";
    __p[1] = "FindOrOpenRelativeToLayer";
    v9 = 943;
    v10 = "static SdfLayerRefPtr pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpenRelativeToLayer(const SdfLayerHandle &, const string &, const FileFormatArguments &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Anchor layer is invalid");
    goto LABEL_6;
  }

  sub_29A34AFE4();
  if (!v7)
  {
LABEL_6:
    *v1 = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(v4, v3, __p);
  pxrInternal__aapl__pxrReserved__::SdfLayer::FindOrOpen(__p, v2, v1);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B299C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::SdfLayer::FindRelativeToLayer(void *a1)
{
  v5 = sub_29A34B008(a1);
  if (v6 & 1 | v5)
  {
    sub_29A34AFE4();
    if (v7)
    {
      pxrInternal__aapl__pxrReserved__::SdfComputeAssetPathRelativeToLayer(v4, v3, __p);
      pxrInternal__aapl__pxrReserved__::SdfLayer::Find(__p, v2, v1);
    }
  }

  else
  {
    __p[0] = "sdf/layer.cpp";
    __p[1] = "FindRelativeToLayer";
    __p[2] = 1309;
    __p[3] = "static SdfLayerHandle pxrInternal__aapl__pxrReserved__::SdfLayer::FindRelativeToLayer(const SdfLayerHandle &, const string &, const FileFormatArguments &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "Anchor layer is invalid");
  }

  *v1 = 0;
  v1[1] = 0;
}

void sub_29B299D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B299E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    v11 = sub_29A0ED78C(a10);
    if (v12)
    {
      (*(*v11 + 8))(v11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B299F0C(uint64_t a1)
{
  sub_29A186B14(a1 + 192);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_29A01752C(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_29B299FE4(void *a1)
{
  *a1 = &unk_2A204B328;
  v2 = a1[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29B29A064(void *__p)
{
  *__p = &unk_2A204B328;
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

char *sub_29B29A0F4(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A204B328;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29B29A158(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A204B328;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *sub_29B29A198(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void sub_29B29A1DC(void *__p)
{
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

void *sub_29B29A250(void *a1)
{
  *a1 = &unk_2A204B3E8;
  v2 = a1[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29B29A2D0(void *__p)
{
  *__p = &unk_2A204B3E8;
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

char *sub_29B29A360(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A204B3E8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29B29A3C4(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A204B3E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *sub_29B29A404(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void sub_29B29A448(void *__p)
{
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

void *sub_29B29A4BC(void *a1)
{
  *a1 = &unk_2A204B490;
  v2 = a1[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29B29A53C(void *__p)
{
  *__p = &unk_2A204B490;
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

char *sub_29B29A5CC(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A204B490;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29B29A630(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A204B490;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *sub_29B29A670(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void sub_29B29A6B4(void *__p)
{
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

void *sub_29B29A728(void *a1)
{
  *a1 = &unk_2A204B518;
  v2 = a1[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29B29A7A8(void *__p)
{
  *__p = &unk_2A204B518;
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

char *sub_29B29A838(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A204B518;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_29B29A89C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A204B518;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

atomic_uint *sub_29B29A8DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void sub_29B29A920(void *__p)
{
  v2 = __p[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29B29A994(uint64_t a1, void *a2, void *a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  *a1 = *a2;
  sub_29B293C98(a1);
  *(a1 + 8) = *a3;
  sub_29A1E21F4((a1 + 16), a5);
  sub_29A1E2240((a1 + 20), a5 + 1);
  sub_29A1E21F4((a1 + 24), a6);
  sub_29A1E2240((a1 + 28), a6 + 1);
  return a1;
}

uint64_t sub_29B29AA10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B293C98(a1);
  *(a1 + 8) = *(a2 + 8);
  sub_29A1E21F4((a1 + 16), (a2 + 16));
  sub_29A1E2240((a1 + 20), (a2 + 20));
  sub_29A1E21F4((a1 + 24), (a2 + 24));
  sub_29A1E2240((a1 + 28), (a2 + 28));
  return a1;
}

uint64_t sub_29B29AA7C(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimSetTimeSample";
  v1 = sub_29A1B5030(a1, 1542);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AAC4(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimSetTimeSample";
  v1 = sub_29A1B5030(a1, 1542);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AB0C(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimSetField";
  v1 = sub_29A1B5030(a1, 4620);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AB54(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimSetField";
  v1 = sub_29A1B5030(a1, 4620);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AB9C(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimPushChild";
  v1 = sub_29A1B5030(a1, 4658);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29ABE4(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimPushChild";
  v1 = sub_29A1B5030(a1, 4658);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AC2C(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimPopChild";
  v1 = sub_29A1B5030(a1, 4704);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AC74(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimPopChild";
  v1 = sub_29A1B5030(a1, 4704);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29ACBC(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimSetFieldDictValueByKey";
  v1 = sub_29A1B5030(a1, 4750);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29AD04(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimSetFieldDictValueByKey";
  v1 = sub_29A1B5030(a1, 4750);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29ADE8(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_MarkCurrentStateAsClean";
  v1 = sub_29A1B5030(a1, 3193);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

void sub_29B29AE30(tbb::queuing_rw_mutex::scoped_lock *a1, uint64_t a2)
{
  sub_29A344D60(a1);
  sub_29A184A10((a2 + 504), 0);
  sub_29A186B14(a2 + 488);
  v3 = *(a2 + 480);
  *(a2 + 480) = 0;
  if (v3)
  {
    sub_29A346264(a2 + 480, v3);
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher((a2 + 128));
  sub_29A346234((a2 + 120));
}

void sub_29B29AF20()
{
  if (__cxa_guard_acquire(byte_2A173F940))
  {
    __dmb(0xBu);
    qword_2A173F938 = 0;
    __cxa_atexit(nullsub_222, &qword_2A173F938, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F940);
  }
}

uint64_t sub_29B29AF9C(uint64_t a1)
{
  v1 = sub_29A34AF80(a1);
  if (v2)
  {
    (*(*v1 + 8))(v1);
  }

  result = sub_29A200000();
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v2)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B29B018(char *a1, void **a2, uint64_t a3)
{
  if (*a1 < 0)
  {
    operator delete(*a2);
  }

  result = *(a3 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v5)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

BOOL sub_29B29B07C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 & 1;
  v7 = *(a3 + 8);
  if (v7)
  {
    v8 = sub_29A0ED78C(v7);
    if (v9)
    {
      (*(*v8 + 8))(v8);
    }
  }

  v10 = v6 | a1;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  return v10 == 0;
}

uint64_t sub_29B29B0FC(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  if (v5)
  {
    v6 = sub_29A0ED78C(v5);
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  return a3 & 1;
}

void sub_29B29B168(__n128 *a1, __n128 *a2)
{
  sub_29A34AFC8(a1, a2);
  if (v4)
  {
    v5 = sub_29A0ED78C(v4);
    if (v6)
    {
      (*(*v5 + 8))(v5);
    }

    v7 = v3[1];
    *v3 = 0;
    if (v7)
    {
      v8 = sub_29A0ED78C(v7);
      if (v6)
      {
        (*(*v8 + 8))(v8);
      }
    }
  }

  else
  {
    *v3 = 0;
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }
}

void sub_29B29B208()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29B29B254(uint64_t a1)
{
  v2 = sub_29A34AFFC(a1);
  if (v2)
  {
    v3 = sub_29A0ED78C(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return sub_29A32BD28(v1);
}

uint64_t sub_29B29B2AC(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "IsDirty";
  v1 = sub_29A1B5030(a1, 3146);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

void sub_29B29B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = "sdf/layer.cpp";
  v10[1] = "EraseField";
  sub_29A34AFB4();
  if (v6)
  {
    v7 = "";
  }

  else
  {
    v7 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v4);
  v9 = *(a3 + 480);
  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Cannot erase %s on <%s>. Layer @%s@ is not editable.", v7, Text, v9);
}

void sub_29B29B394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = "sdf/layer.cpp";
  v10[1] = "SetField";
  sub_29A34AFB4();
  if (v6)
  {
    v7 = "";
  }

  else
  {
    v7 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v4);
  v9 = *(a3 + 480);
  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Cannot set %s on <%s>. Layer @%s@ is not editable.", v7, Text, v9);
}

void sub_29B29B434(pxrInternal__aapl__pxrReserved__::SdfPath *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(a1);
  pxrInternal__aapl__pxrReserved__::SdfPath::MakeAbsolutePath(v4, a1, v3);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29B29B4A0(atomic_uint **a1, atomic_uint **a2)
{
  v2 = *a1;
  *a2 = *a1;
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
    v3 = *a1;
    if (*a1)
    {
      v4 = *(v3 + 2);
      if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_Identity::_UnregisterOrDelete(v4, v3);
      }
    }
  }
}

void sub_29B29B4EC()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

BOOL sub_29B29B538(uint64_t a1)
{
  v2 = sub_29A34AFFC(a1);
  if (v2)
  {
    v3 = sub_29A0ED78C(v2);
    if (v4)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v5 = atomic_load(&qword_2A173F900);
  *v1 = v5;
  return v5 == 0;
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **sub_29B29B5A0(uint64_t a1, pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **a2, char a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = sub_29A0ED78C(v7);
    if (v9)
    {
      (*(*v8 + 8))(v8);
    }
  }

  result = sub_29A32BD28(a2);
  if (a3)
  {
    sub_29A32D670((a4 + 120));
    sub_29A0ED7AC();
    return (*(v11 + 32))();
  }

  return result;
}

void sub_29B29B638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_29A34AFFC(a1);
  if (v6)
  {
    v7 = sub_29A0ED78C(v6);
    if (v8)
    {
      (*(*v7 + 8))(v7);
    }
  }

  *v4 = *a3;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase>::_AddRef();
}

uint64_t sub_29B29B724(pxrInternal__aapl__pxrReserved__::SdfSpec *a1, uint64_t a2, char a3)
{
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(a1);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = sub_29A0ED78C(v5);
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  return a3 & 1;
}

void sub_29B29B784(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "sdf/layer.cpp";
  *(a1 + 8) = "_UpdatePrimCompositionDependencyPaths";
  *(a1 + 16) = 3400;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::SdfLayer::_UpdatePrimCompositionDependencyPaths(const SdfPrimSpecHandle &, const string &, const string &)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "!oldLayerPath.empty()");
}

void sub_29B29B7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = "sdf/layer.cpp";
  v10[1] = "SetField";
  sub_29A34AFB4();
  if (v6)
  {
    v7 = "";
  }

  else
  {
    v7 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v7 = *v7;
    }
  }

  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(v4);
  v9 = *(a3 + 480);
  if (v9[23] < 0)
  {
    v9 = *v9;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Cannot set %s on <%s>. Layer @%s@ is not editable.", v7, Text, v9);
}

uint64_t sub_29B29B8C8(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimMoveSpec";
  v1 = sub_29A1B5030(a1, 4837);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29B910(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimCreateSpec";
  v1 = sub_29A1B5030(a1, 5000);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

uint64_t sub_29B29B958(void *a1)
{
  *a1 = "sdf/layer.cpp";
  a1[1] = "_PrimDeleteSpec";
  v1 = sub_29A1B5030(a1, 4981);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "_stateDelegate", 0);
}

void sub_29B29B9A0(uint64_t a1)
{
  v2 = sub_29A34AFFC(a1);
  if (v2)
  {
    v5 = sub_29A0ED78C(v2);
    if (v6)
    {
      (*(*v5 + 8))(v5);
    }
  }

  pxrInternal__aapl__pxrReserved__::TfScopeDescription::~TfScopeDescription(v1, v3, v4);
}

uint64_t sub_29B29B9F8(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v3)
    {
      sub_29A0ED7AC();
      return (*(v4 + 8))(v5, v6);
    }
  }

  return result;
}

uint64_t sub_29B29BA48(uint64_t a1)
{
  v2 = sub_29A34AF9C(a1);
  if (v3)
  {
    (*(*v2 + 8))(v2);
  }

  result = *v1;
  if (*v1)
  {
    result = sub_29A0ED78C(result);
    if (v3)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B29BAC4(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x29EDCA608];
  (*((a1 & 0xFFFFFFFFFFFFFFF8) + 176))(v4, a2);
  sub_29A18606C(a2, v4);
  return sub_29A186B14(v4);
}

void sub_29B29BB44()
{
  if (__cxa_guard_acquire(byte_2A173F950))
  {
    xmmword_2A173F960 = xmmword_29B432590;

    __cxa_guard_release(byte_2A173F950);
  }
}

void pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::~SdfLayerStateDelegateBase(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *this, const void *a2)
{
  *this = &unk_2A204BAB0;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = sub_29A0ED78C(v3);
    if (v5)
    {
      (*(*v4 + 8))(v4);
    }
  }

  sub_29A0F6078(this + 2, a2);

  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(this);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::_GetLayer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return this;
}

void sub_29B29BC4C(pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase *a1, const void *a2)
{
  pxrInternal__aapl__pxrReserved__::SdfLayerStateDelegateBase::~SdfLayerStateDelegateBase(a1, a2);

  operator delete(v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::SdfLayerTree::SdfLayerTree(uint64_t a1, void *a2, uint64_t **a3, __int128 *a4)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A204BC50;
  v5 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  v6 = *a4;
  *(a1 + 56) = 0;
  *(a1 + 40) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_29A34BD9C((a1 + 56), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_29B29BD04(_Unwind_Exception *a1, const void *a2)
{
  v5 = *(v2 + 4);
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v5 + 8))(v5, a2);
    }
  }

  sub_29A0F6078(v3, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v2);
  _Unwind_Resume(a1);
}

void sub_29B29BD60(uint64_t a1)
{
  *a1 = &unk_2A204BC50;
  v4 = (a1 + 56);
  sub_29A34BEDC(&v4);
  v3 = *(a1 + 32);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29A0F6078((a1 + 16), v2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
}

void sub_29B29BE04(uint64_t a1)
{
  *a1 = &unk_2A204BC50;
  v5 = (a1 + 56);
  sub_29A34BEDC(&v5);
  v3 = *(a1 + 32);
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  sub_29A0F6078((a1 + 16), v2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(a1);
  operator delete(v4);
}

__n128 sub_29B29BEAC(char *a1, uint64_t a2, __n128 *a3)
{
  if (*a1 < 0)
  {
    operator delete(*a2);
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_29B29BEF0(uint64_t a1, char a2, atomic_uint **a3)
{
  v4 = *a3;
  if (*a3 && atomic_fetch_add_explicit(v4 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v4 + 8))(v4);
  }

  return a2 & 1;
}

void sub_29B29BF54()
{
  v0 = __cxa_guard_acquire(byte_2A14F6AB0);
  if (v0)
  {
    sub_29A382F64(v0, &unk_2A14F6AA8);
    __cxa_atexit(sub_29A36AF00, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6AB0);
  }
}

void sub_29B29BFC0()
{
  v0 = __cxa_guard_acquire(byte_2A14F6AC0);
  if (v0)
  {
    sub_29A382F64(v0, &unk_2A14F6AB8);
    __cxa_atexit(sub_29A36AF18, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6AC0);
  }
}

void sub_29B29C02C()
{
  v0 = __cxa_guard_acquire(byte_2A14F6AD8);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6AC8);
    __cxa_atexit(sub_29A36AF30, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6AD8);
  }
}

void sub_29B29C098()
{
  v0 = __cxa_guard_acquire(byte_2A14F6AF0);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6AE0);
    __cxa_atexit(sub_29A36AF48, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6AF0);
  }
}

void sub_29B29C104()
{
  v0 = __cxa_guard_acquire(byte_2A14F6B18);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6AF8);
    __cxa_atexit(sub_29A36B020, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6B18);
  }
}

void sub_29B29C170()
{
  v0 = __cxa_guard_acquire(byte_2A14F6B30);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6B20);
    __cxa_atexit(sub_29A36B188, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6B30);
  }
}

void sub_29B29C1DC(void *a1)
{
  do
  {
    v3 = sub_29A382F78();
    sub_29A186B14(v3);
    operator delete(a1);
    a1 = v1;
  }

  while (v1);
}

void sub_29B29C214()
{
  v0 = __cxa_guard_acquire(byte_2A14F6B50);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6B38);
    __cxa_atexit(sub_29A36B2E0, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6B50);
  }
}

void sub_29B29C280(void *a1)
{
  do
  {
    v3 = sub_29A382F78();
    sub_29A1E26CC(v3);
    operator delete(a1);
    a1 = v1;
  }

  while (v1);
}

void sub_29B29C2B8()
{
  v0 = __cxa_guard_acquire(byte_2A14F6B68);
  if (v0)
  {
    sub_29A382F64(v0, &unk_2A14F6B58);
    __cxa_atexit(sub_29A36B450, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6B68);
  }
}

void sub_29B29C324(void *a1)
{
  do
  {
    v3 = sub_29A382F78();
    sub_29A36B544(v3);
    operator delete(a1);
    a1 = v1;
  }

  while (v1);
}

void sub_29B29C35C()
{
  v0 = __cxa_guard_acquire(byte_2A14F6BB0);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6B70);
    __cxa_atexit(sub_29A36B6C8, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6BB0);
  }
}

void sub_29B29C3C8(void *a1)
{
  do
  {
    v3 = sub_29A382F78();
    sub_29A36B7E4(v3);
    operator delete(a1);
    a1 = v1;
  }

  while (v1);
}

void sub_29B29C400()
{
  v0 = __cxa_guard_acquire(byte_2A14F6BF0);
  if (v0)
  {
    sub_29A1101BC(v0, &unk_2A14F6BB8);
    __cxa_atexit(sub_29A36B950, v1, &dword_299FE7000);

    __cxa_guard_release(byte_2A14F6BF0);
  }
}

uint64_t sub_29B29C484(void *a1, uint64_t a2)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "Remove";
  v3 = sub_29A1B5030(a1, 343);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "i != _parent->_children->end()", 0))
  {
    return 1;
  }

  MEMORY[0x29C2C1A60](a2, "Coding error: Node not found under parent");
  return 0;
}

uint64_t sub_29B29C4F8(void *a1, uint64_t a2)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "Remove";
  v3 = sub_29A1B5030(a1, 348);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "i->get() == this", 0))
  {
    return 1;
  }

  MEMORY[0x29C2C1A60](a2, "Coding error: Found wrong node by key");
  return 0;
}

uint64_t sub_29B29C56C(void *a1, uint64_t a2, _BYTE *a3)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_Remove";
  v5 = sub_29A1B5030(a1, 497);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "node", 0))
  {
    if (pxrInternal__aapl__pxrReserved__::SdfNamespaceEdit_Namespace::_Node::Remove(0, a2))
    {
      return 1;
    }
  }

  else
  {
    MEMORY[0x29C2C1A60](a2, "Coding error: Object at path doesn't exist");
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t sub_29B29C5F8(void *a1, uint64_t a2)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_Move";
  v3 = sub_29A1B5030(a1, 529);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "node", 0))
  {
    return 1;
  }

  MEMORY[0x29C2C1A60](a2, "Coding error: Object at path doesn't exist");
  return 0;
}

uint64_t sub_29B29C66C(void *a1, uint64_t a2)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_Move";
  v3 = sub_29A1B5030(a1, 536);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "newParent", 0))
  {
    return 1;
  }

  MEMORY[0x29C2C1A60](a2, "Coding error: New parent object doesn't exist");
  return 0;
}

uint64_t sub_29B29C6E0(void *a1)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_AddDeadspace";
  v1 = sub_29A1B5030(a1, 628);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "path != SdfPath::AbsoluteRootPath()", 0);
}

uint64_t sub_29B29C728(void *a1)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_MoveDeadspaceDescendants";
  v1 = sub_29A1B5030(a1, 658);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "from != SdfPath::AbsoluteRootPath()", 0);
}

uint64_t sub_29B29C770(void *a1)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_MoveDeadspaceDescendants";
  v1 = sub_29A1B5030(a1, 659);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "to != SdfPath::AbsoluteRootPath()", 0);
}

uint64_t sub_29B29C7B8(void *a1)
{
  *a1 = "sdf/namespaceEdit.cpp";
  a1[1] = "_RemoveDeadspace";
  v1 = sub_29A1B5030(a1, 639);
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "path != SdfPath::AbsoluteRootPath()", 0);
}

void sub_29B29C800(uint64_t a1, uint64_t a2, char *a3)
{
  v3[0] = "tf/iterator.h";
  v3[1] = "operator->";
  v3[2] = 270;
  v3[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>, pxrInternal__aapl__pxrReserved__::SdfChangeList>>>::operator->() [T = const std::vector<std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::SdfLayer>, pxrInternal__aapl__pxrReserved__::SdfChangeList>>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

uint64_t sub_29B29C85C()
{
  sub_29A0ED77C();
  do
  {
    result = *(v1 - 8);
    if (result)
    {
      result = sub_29A0ED76C(result);
      if (v3)
      {
        result = (*(*result + 8))(result);
      }
    }

    v1 -= 16;
  }

  while (v1 != v0);
  return result;
}

void sub_29B29C8C4()
{
  if (__cxa_guard_acquire(byte_2A173F9E8))
  {
    sub_29A225424(&qword_2A173F9E0);
    __cxa_atexit(sub_29A1DCEA8, &qword_2A173F9E0, &dword_299FE7000);

    __cxa_guard_release(byte_2A173F9E8);
  }
}

_DWORD *sub_29B29C940(void *a1, pxrInternal__aapl__pxrReserved__::SdfPath *this, _DWORD *a3)
{
  v11[0] = "sdf/path.cpp";
  v11[1] = "AppendChild";
  v11[2] = 836;
  v11[3] = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(const TfToken &) const";
  v12 = 0;
  v4 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16);
    if (*(v4 + 39) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = "";
  }

  v7 = *pxrInternal__aapl__pxrReserved__::SdfPath::GetToken(this) & 0xFFFFFFFFFFFFFFF8;
  if (v7)
  {
    v8 = (v7 + 16);
    if (*(v7 + 39) < 0)
    {
      v8 = *v8;
    }
  }

  else
  {
    v8 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v11, "Cannot append child '%s' to path '%s'.", v6, v5, v8);
  pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v9);
  sub_29A1E21F4(a3, &qword_2A173F9E0);
  return sub_29A1E2240(a3 + 1, &qword_2A173F9E0 + 1);
}

uint64_t sub_29B29CA20(uint64_t *a1, uint64_t *a2)
{
  v4 = off_2A1B71AF0;
  if ((*off_2A1B71AF0(&off_2A1B71AF0) & 1) == 0)
  {
    v6 = off_2A1B71AD8;
    v7 = (off_2A1B71AD8(&off_2A1B71AD8) + 8);
    v8 = 0x4000;
    do
    {
      *(v7 - 1) = 0;
      v7 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v7) + 4;
      v8 -= 16;
    }

    while (v8);
    v9 = v6(&off_2A1B71AD8);
    _tlv_atexit(sub_29A3940AC, v9);
    *v4(&off_2A1B71AF0) = 1;
  }

  result = off_2A1B71AD8(&off_2A1B71AD8);
  *a2 = result;
  *a1 = result;
  return result;
}

_DWORD *sub_29B29CAFC(const char *a1, _DWORD *a2)
{
  v5[0] = "sdf/path.cpp";
  v5[1] = "AppendElementToken";
  v5[2] = 1113;
  v5[3] = "SdfPath pxrInternal__aapl__pxrReserved__::SdfPath::AppendElementToken(const TfToken &) const";
  v6 = 0;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Cannot append element '%s' to the EmptyPath.", a1);
  pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v3);
  sub_29A1E21F4(a2, &qword_2A173F9E0);
  return sub_29A1E2240(a2 + 1, &qword_2A173F9E0 + 1);
}

void sub_29B29CB94(uint64_t a1, uint64_t a2, char *a3)
{
  v3[0] = "tf/iterator.h";
  v3[1] = "operator->";
  v3[2] = 270;
  v3[3] = "Iterator &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>>::operator->() [T = const std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>, Reverse = false]";
  v4 = 0;
  v5 = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "iterator exhausted", a3);
}

void sub_29B29CBF0(uint64_t a1, void **a2)
{
  v4 = *(a1 + 16);
  v5 = **a2 & 0xFFFFFFFFFFFFFFF8;
  if (v5)
  {
    v6 = (v5 + 16);
    if (*(v5 + 39) < 0)
    {
      v6 = *v6;
    }
  }

  else
  {
    v6 = "";
  }

  v7[1] = v2;
  v7[2] = v3;
  v7[0] = v6;
  sub_29A392628(v4, v7);
}

uint64_t sub_29B29CC48(uint64_t a1)
{
  *a1 = "sdf/pathPatternParser.h";
  *(a1 + 8) = "apply";
  *(a1 + 16) = 124;
  *(a1 + 24) = "static void pxrInternal__aapl__pxrReserved__::SdfPathPatternActions::PathPatternAction<pxrInternal__aapl__pxrReserved__::SdfPathPatternParser::PathPatStretch>::apply(const Input &, PatternBuilder &) [Input = PXR_INTERNAL_NS_pegtl::internal::action_input<PXR_INTERNAL_NS_pegtl::memory_input<>>]";
  *(a1 + 32) = 0;
  return pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(a1, "builder.pattern.AppendStretchIfPossible()", 0);
}

_BYTE *sub_29B29CCA4()
{
  v0 = off_2A1B71B20();
  sub_29A3AEE5C(v0);
  v1 = off_2A1B71B38();
  return sub_29A3AEE68(v1);
}

_BYTE *sub_29B29CCE0()
{
  v0 = off_2A1B71B68();
  sub_29A3AEE5C(v0);
  v1 = off_2A1B71B80();
  return sub_29A3AEE68(v1);
}

void sub_29B29CD1C()
{
  if (__cxa_guard_acquire(byte_2A1741A98))
  {
    __cxa_atexit(sub_29A3A6CF0, &unk_2A1741AC8, &dword_299FE7000);

    __cxa_guard_release(byte_2A1741A98);
  }
}

void *sub_29B29CD8C(void *result, uint64_t a2, _BYTE **a3)
{
  if ((*result & 7) != 0)
  {
    atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *a3;
  if (*a3)
  {
    __dmb(0xBu);
    *v3 = 0;
  }

  return result;
}

void sub_29B29CDB8()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29CE04()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29CE50()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29CE9C()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29CEE8()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29CF34()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29CF80(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "sdf/pathNode.cpp";
  *(a1 + 8) = "_absoluteRootNode_Tf_StaticDataFactoryImpl";
  *(a1 + 16) = 315;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::_absoluteRootNode_Tf_StaticDataFactoryImpl(std::remove_const_t<const Sdf_PathNode *> *)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "(*_absoluteRootNode)->GetCurrentRefCount() == 1");
}

void sub_29B29CFD8(uint64_t a1, uint64_t a2, char *a3)
{
  *a1 = "sdf/pathNode.cpp";
  *(a1 + 8) = "_relativeRootNode_Tf_StaticDataFactoryImpl";
  *(a1 + 16) = 319;
  *(a1 + 24) = "void pxrInternal__aapl__pxrReserved__::_relativeRootNode_Tf_StaticDataFactoryImpl(std::remove_const_t<const Sdf_PathNode *> *)";
  *(a1 + 32) = 0;
  *(a1 + 40) = 4;
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(a1, "Failed axiom: ' %s '", a3, "(*_relativeRootNode)->GetCurrentRefCount() == 1");
}

void sub_29B29D030(void *a1)
{
  if (__cxa_guard_acquire(byte_2A1741AA0))
  {
    dword_2A1741AF0 = 0;
    word_2A1741AF4 = -1;
    byte_2A1741AF6 = 1;
    __cxa_atexit(sub_29A3AB808, &dword_2A1741AF0, &dword_299FE7000);
    __cxa_guard_release(byte_2A1741AA0);
  }

  *a1 = &dword_2A1741AF0;
}

void sub_29B29D0AC(void *a1)
{
  if (__cxa_guard_acquire(byte_2A1741AA8))
  {
    dword_2A1741B10 = 0;
    word_2A1741B14 = -1;
    byte_2A1741B16 = 1;
    __cxa_atexit(sub_29A3ABEA4, &dword_2A1741B10, &dword_299FE7000);
    __cxa_guard_release(byte_2A1741AA8);
  }

  *a1 = &dword_2A1741B10;
}

void sub_29B29D128(void *a1)
{
  if (__cxa_guard_acquire(byte_2A1741AB0))
  {
    dword_2A1741B50 = 0;
    word_2A1741B54 = -1;
    byte_2A1741B56 = 1;
    __cxa_atexit(sub_29A3AC6E4, &dword_2A1741B50, &dword_299FE7000);
    __cxa_guard_release(byte_2A1741AB0);
  }

  *a1 = &dword_2A1741B50;
}

void sub_29B29D1A4(void *a1)
{
  if (__cxa_guard_acquire(byte_2A1741AB8))
  {
    dword_2A1741B30 = 0;
    word_2A1741B34 = -1;
    byte_2A1741B36 = 1;
    __cxa_atexit(sub_29A3AD080, &dword_2A1741B30, &dword_299FE7000);
    __cxa_guard_release(byte_2A1741AB8);
  }

  *a1 = &dword_2A1741B30;
}

void sub_29B29D220(void *a1)
{
  if (__cxa_guard_acquire(byte_2A1741AC0))
  {
    dword_2A1741AD8 = 0;
    word_2A1741ADC = -1;
    byte_2A1741ADE = 1;
    __cxa_atexit(sub_29A3AE0CC, &dword_2A1741AD8, &dword_299FE7000);
    __cxa_guard_release(byte_2A1741AC0);
  }

  *a1 = &dword_2A1741AD8;
}

pxrInternal__aapl__pxrReserved__::SdfChangeBlock *sub_29B29D2A4(_DWORD *a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::SdfChangeBlock *a4)
{
  sub_29A1DE3A4(a1);
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = sub_29A0ED78C(v7);
    if (v9)
    {
      (*(*v8 + 8))(v8);
    }
  }

  if ((*a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return sub_29A1DD644(a4);
}

uint64_t sub_29B29D32C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  sub_29A1DE3A4(a1);
  result = *(a3 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v5)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B29D384(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = sub_29A0ED78C(v5);
    if (v7)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = sub_29A0ED78C(v8);
    if (v7)
    {
      (*(*v9 + 8))(v9);
    }
  }

  return a3 & 1;
}

uint64_t sub_29B29D414(uint64_t a1, void **a2, uint64_t a3)
{
  sub_29A186B14(a1);
  v7 = a2;
  sub_29A124AB0(&v7);
  result = *(a3 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v6)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_29B29D484()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

void sub_29B29D4D0(pxrInternal__aapl__pxrReserved__::SdfPath **a1)
{
  v2[0] = "sdf/primSpec.cpp";
  v2[1] = "Sdf_CanCreatePrimInLayer";
  v2[2] = 961;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_CanCreatePrimInLayer(SdfLayer *, const _AbsPathHelper &)";
  v3 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*a1);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Cannot create prim at path '%s' because it is not a valid prim or prim variant selection path", Text);
}

void sub_29B29D534(pxrInternal__aapl__pxrReserved__::SdfPath **a1)
{
  v2[0] = "sdf/primSpec.cpp";
  v2[1] = "Sdf_CanCreatePrimInLayer";
  v2[2] = 967;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_CanCreatePrimInLayer(SdfLayer *, const _AbsPathHelper &)";
  v3 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(*a1);
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Cannot create prim at path '%s' in null or expired layer", Text);
}

void sub_29B29D598()
{
  v1[0] = "tf/iterator.h";
  v1[1] = "operator->";
  sub_29A1101A4();
  pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v1, "iterator exhausted", v0);
}

uint64_t sub_29B29D5E4(uint64_t a1)
{
  sub_29A3C01E0(a1);
  result = *(v1 + 8);
  if (result)
  {
    result = sub_29A0ED78C(result);
    if (v3)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint *sub_29B29D638(_DWORD *a1, uint64_t a2)
{
  sub_29A1DE3A4(a1);
  result = *(a2 + 8);
  if (result)
  {
    if (atomic_fetch_add_explicit(result + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t sub_29B29D69C()
{
  sub_29A3C31FC();
  *v0 = "sdf/proxyPolicies.cpp";
  v0[1] = "CanonicalizeType";
  v1 = sub_29A1B5030(v0, 23);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "spec", 0))
  {
    return 1;
  }

  v3 = sub_29A3C31F0();
  sub_29A23F5D8(v3, v4);
  return 0;
}

uint64_t sub_29B29D708()
{
  sub_29A3C31FC();
  *v2 = "sdf/proxyPolicies.cpp";
  v2[1] = "CanonicalizeKey";
  v3 = sub_29A1B5030(v2, 41);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "spec", 0))
  {
    return 1;
  }

  v5 = sub_29A3C31F0();
  sub_29A1E21F4(v5, v6);
  sub_29A1E2240((v1 + 4), (v0 + 4));
  return 0;
}

uint64_t sub_29B29D780()
{
  sub_29A3C31FC();
  *v2 = "sdf/proxyPolicies.cpp";
  v2[1] = "CanonicalizeValue";
  v3 = sub_29A1B5030(v2, 49);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v3, "spec", 0))
  {
    return 1;
  }

  v5 = sub_29A3C31F0();
  sub_29A1E21F4(v5, v6);
  sub_29A1E2240((v1 + 4), (v0 + 4));
  return 0;
}

uint64_t sub_29B29D7F8()
{
  sub_29A3C31FC();
  *v0 = "sdf/proxyPolicies.cpp";
  v0[1] = "CanonicalizePair";
  v1 = sub_29A1B5030(v0, 57);
  if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v1, "spec", 0))
  {
    return 1;
  }

  v3 = sub_29A3C31F0();
  sub_29A23F744(v3, v4);
  return 0;
}

void sub_29B29D8E8(void *a1)
{
  {
    pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy,pxrInternal__aapl__pxrReserved__::TfToken>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty = 0;
    *algn_2A14F7C68 = 0;
    qword_2A14F7C70 = 0;
    __cxa_atexit(sub_29A3C73E0, &pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy,pxrInternal__aapl__pxrReserved__::TfToken>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty, &dword_299FE7000);
  }

  *a1 = &pxrInternal__aapl__pxrReserved__::Sdf_VectorListEditor<pxrInternal__aapl__pxrReserved__::SdfNameTokenKeyPolicy,pxrInternal__aapl__pxrReserved__::TfToken>::_GetOperations(pxrInternal__aapl__pxrReserved__::SdfListOpType)const::empty;
}