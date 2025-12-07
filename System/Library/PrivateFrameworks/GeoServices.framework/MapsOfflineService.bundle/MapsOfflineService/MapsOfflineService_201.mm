__int128 *sub_BF7928(__int128 *result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        goto LABEL_38;
      }

      v10 = a2 - 1;
      result = (*(*v9 + 48))(v9, a2 - 1, v8);
      if (result)
      {
        *v5 = *v10;
        v11 = *v8;
      }

      else
      {
        *v5 = *v8;
        v11 = *v10;
      }

      v5[1] = v11;
    }

    else
    {
      if (a4 == 1)
      {
        *a5 = *result;
        return result;
      }

      if (a4 > 8)
      {
        v21 = a4 >> 1;
        v22 = a4 >> 1;
        v23 = &result[v22];
        sub_BF763C(result, &result[v22], a3, v21, a5, v21);
        result = sub_BF763C(&v8[v22], a2, a3, a4 - v21, &v5[v22], a4 - v21);
        v25 = &v8[v22];
        while (v25 != a2)
        {
          v27 = *(a3 + 24);
          if (!v27)
          {
            goto LABEL_38;
          }

          result = (*(*v27 + 48))(v27, v25, v8);
          if (result)
          {
            v28 = *v25++;
            *v5++ = v28;
            if (v8 == v23)
            {
LABEL_33:
              while (v25 != a2)
              {
                v30 = *v25++;
                *v5++ = v30;
              }

              return result;
            }
          }

          else
          {
            v26 = *v8++;
            *v5++ = v26;
            if (v8 == v23)
            {
              goto LABEL_33;
            }
          }
        }

        while (v8 != v23)
        {
          v29 = *v8++;
          *v5++ = v29;
        }
      }

      else if (result != a2)
      {
        v12 = result + 1;
        *a5 = *result;
        if (result + 1 != a2)
        {
          v13 = 0;
          v14 = a5;
          while (1)
          {
            v17 = *(a3 + 24);
            if (!v17)
            {
              break;
            }

            v18 = v14++;
            result = (*(*v17 + 48))(v17, v12, v18);
            v15 = v14;
            if (result)
            {
              *v14 = *v18;
              v15 = v5;
              if (v18 != v5)
              {
                v19 = v13;
                do
                {
                  v20 = *(a3 + 24);
                  if (!v20)
                  {
                    goto LABEL_38;
                  }

                  result = (*(*v20 + 48))(v20, v12, v5 + v19 - 16);
                  if (!result)
                  {
                    v15 = (v5 + v19);
                    goto LABEL_13;
                  }

                  *(v5 + v19) = *(v5 + v19 - 16);
                  v19 -= 16;
                }

                while (v19);
                v15 = v5;
              }
            }

LABEL_13:
            v16 = *v12++;
            *v15 = v16;
            v13 += 16;
            if (v12 == a2)
            {
              return result;
            }
          }

LABEL_38:
          sub_2B7420();
        }
      }
    }
  }

  return result;
}

__n128 sub_BF7BC8(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, __n128 result)
{
  v49 = a6;
  if (a6)
  {
    while (1)
    {
      if (v49 <= a8 || a5 <= a8)
      {
        sub_BF816C(a1, a2, a3, a4, a5, v49, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = *(a4 + 24);
        if (!v15)
        {
          sub_2B7420();
        }

        if ((*(*v15 + 48))(v15, a2, &a1[v13 / 0x10], result))
        {
          break;
        }

        v13 += 16;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v17 = -v14;
      if (-v14 < v49)
      {
        break;
      }

      if (v14 == -1)
      {
        v53 = a1[v13 / 0x10];
        a1[v13 / 0x10] = *a2;
        result = v53;
        *a2 = v53;
        return result;
      }

      v24 = *(a4 + 24);
      if (v24)
      {
        if (v24 == a4)
        {
          v55 = v54;
          (*(*v24 + 24))(v24, v54);
        }

        else
        {
          v55 = (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v55 = 0;
      }

      v44 = v17 / 2;
      v19 = &a1[v17 / 2 + v13 / 0x10];
      v18 = a2;
      if (a2 != a3)
      {
        v25 = a3 - a2;
        v18 = a2;
        do
        {
          if (!v55)
          {
            sub_2B7420();
          }

          v26 = &v18[v25 >> 1];
          v27 = (*(*v55 + 48))(v55, v26, v19);
          if (v27)
          {
            v25 += ~(v25 >> 1);
          }

          else
          {
            v25 >>= 1;
          }

          if (v27)
          {
            v18 = v26 + 1;
          }
        }

        while (v25);
      }

      if (v55 == v54)
      {
        (*(*v55 + 32))(v55);
      }

      else if (v55)
      {
        (*(*v55 + 40))();
      }

      v45 = v18 - a2;
      v22 = v18;
      v23 = a2 - v19;
      if (a2 != v19)
      {
        goto LABEL_41;
      }

LABEL_63:
      a5 = -v14 - v44;
      v43 = v49 - v45;
      if (v44 + v45 >= v49 - (v44 + v45) - v14)
      {
        result = sub_BF7BC8(v22, v18, a3, a4, -v14 - v44, v49 - v45, a7, a8, result);
        a2 = v19;
        a5 = v44;
        a3 = v22;
        a1 = (a1 + v13);
        v49 = v45;
        if (!v45)
        {
          return result;
        }
      }

      else
      {
        result = sub_BF7BC8(&a1[v13 / 0x10], v19, v22, a4, v44, v45, a7, a8, result);
        a1 = v22;
        a2 = v18;
        v49 -= v45;
        if (!v43)
        {
          return result;
        }
      }
    }

    v45 = v49 / 2;
    v18 = &a2[v49 / 2];
    v19 = a2;
    if (a2 - a1 != v13)
    {
      v20 = (a2 - a1 - v13) >> 4;
      v19 = &a1[v13 / 0x10];
      do
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
          sub_2B7420();
        }

        if ((*(*v21 + 48))(v21, v18, &v19[v20 >> 1]))
        {
          v20 >>= 1;
        }

        else
        {
          v19 += (v20 >> 1) + 1;
          v20 += ~(v20 >> 1);
        }
      }

      while (v20);
    }

    v44 = (v19 - a1 - v13) >> 4;
    v22 = &a2[v49 / 2];
    v23 = a2 - v19;
    if (a2 == v19)
    {
      goto LABEL_63;
    }

LABEL_41:
    v22 = v19;
    if (a2 != v18)
    {
      if (&v19[1] == a2)
      {
        v50 = *v19;
        memmove(v19, a2, v18 - a2);
        v22 = (v19 + v18 - a2);
        result = v50;
        *v22 = v50;
      }

      else if (&a2[1] == v18)
      {
        v22 = v19 + 1;
        v51 = v18[-1];
        if (&v18[-1] != v19)
        {
          memmove(&v19[1], v19, &v18[-1] - v19);
        }

        result = v51;
        *v19 = v51;
      }

      else
      {
        v28 = v23 >> 4;
        v29 = v18 - a2;
        if (v23 >> 4 == v29)
        {
          v30 = v19 + 1;
          v31 = a2 + 1;
          do
          {
            v52 = v30[-1];
            v30[-1] = v31[-1];
            result = v52;
            v31[-1] = v52;
            if (v30 == a2)
            {
              break;
            }

            ++v30;
          }

          while (v31++ != v18);
          v22 = a2;
        }

        else
        {
          v33 = v23 >> 4;
          do
          {
            v34 = v33;
            v33 = v29;
            v29 = v34 % v29;
          }

          while (v29);
          v35 = &v19[v33];
          do
          {
            result = v35[-1];
            v36 = (--v35 + v23);
            v37 = v35;
            do
            {
              v38 = v36;
              *v37 = *v36;
              v39 = v18 - v36;
              v40 = __OFSUB__(v28, v39);
              v42 = v28 - v39;
              v41 = (v42 < 0) ^ v40;
              v36 = &v19[v42];
              if (v41)
              {
                v36 = &v38[v28];
              }

              v37 = v38;
            }

            while (v36 != v35);
            *v38 = result;
          }

          while (v35 != v19);
          v22 = (v19 + v18 - a2);
        }
      }
    }

    goto LABEL_63;
  }

  return result;
}

void sub_BF8140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_BF3B04(va);
  _Unwind_Resume(a1);
}

void sub_BF8154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_BF3B04(va);
  _Unwind_Resume(a1);
}

__int128 *sub_BF816C(__int128 *__dst, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v16 = -__src;
      v17 = __src;
      v18 = __dst;
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        v16 -= 16;
      }

      while (v18 != a2);
      while (v10 != v9)
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
LABEL_33:
          sub_2B7420();
        }

        __dst = (*(*v21 + 48))(v21, v10, v7);
        if (__dst)
        {
          v22 = *v10++;
          *v11++ = v22;
          if (v17 == v7)
          {
            return __dst;
          }
        }

        else
        {
          v20 = *v7++;
          *v11++ = v20;
          if (v17 == v7)
          {
            return __dst;
          }
        }
      }

      return memmove(v11, v7, -(v7 + v16));
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    do
    {
      __src[v12] = a2[v12];
      ++v12;
    }

    while (&a2[v12] != a3);
    v13 = &__src[v12];
    while (v10 != v11)
    {
      v14 = *(a4 + 24);
      if (!v14)
      {
        goto LABEL_33;
      }

      __dst = (*(*v14 + 48))(v14, v13 - 1, v10 - 1);
      if (__dst)
      {
        v15 = v10 - 1;
      }

      else
      {
        v15 = v13 - 1;
      }

      *--v9 = *v15;
      if (__dst)
      {
        --v10;
      }

      else
      {
        --v13;
      }

      if (v13 == v7)
      {
        return __dst;
      }
    }

    if (v13 != v7)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        v9[v23--] = *--v13;
      }

      while (v13 != v7);
    }
  }

  return __dst;
}

double sub_BF8344(__int128 *result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6, __n128 a7)
{
  if (a4 < 2)
  {
    return a7.n128_f64[0];
  }

  v9 = result;
  if (a4 == 2)
  {
    v10 = *(a3 + 24);
    if (v10)
    {
      v11 = (a2 - 1);
      if ((*(*v10 + 48))(v10, a2 - 1, v9))
      {
        a7 = *v9;
        *v9 = *v11;
        *v11 = a7;
      }

      return a7.n128_f64[0];
    }

LABEL_38:
    sub_2B7420();
  }

  if (a4 <= 128)
  {
    if (result == a2)
    {
      return a7.n128_f64[0];
    }

    v12 = result + 1;
    if (result + 1 == a2)
    {
      return a7.n128_f64[0];
    }

    v13 = 0;
    v14 = result;
    while (1)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = v12;
      if ((*(*v16 + 48))(v16, v12, v14))
      {
        v36 = *v17;
        v18 = v13;
        do
        {
          *(v9 + v18 + 16) = *(v9 + v18);
          if (!v18)
          {
            v15 = v9;
            goto LABEL_12;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_38;
          }

          v18 -= 16;
        }

        while (((*(*v19 + 48))(v19, &v36, v9 + v18) & 1) != 0);
        v15 = (v9 + v18 + 16);
LABEL_12:
        a7.n128_u64[0] = v36.n128_u64[0];
        *v15 = v36;
      }

      v12 = v17 + 1;
      v13 += 16;
      v14 = v17;
      if (v17 + 1 == a2)
      {
        return a7.n128_f64[0];
      }
    }
  }

  v20 = a5;
  v21 = a4 >> 1;
  v22 = &result[a4 >> 1];
  v23 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    sub_BF8630(result, v22, a3, a4 >> 1, a5);
    v27 = &v20[v21];
    sub_BF8630(v22, a2, a3, v23, v27);
    v28 = &v20[a4];
    v29 = v27;
    while (v29 != v28)
    {
      v31 = *(a3 + 24);
      if (!v31)
      {
        goto LABEL_38;
      }

      if ((*(*v31 + 48))(v31, v29, v20))
      {
        v32 = *v29++;
        a7.n128_u64[0] = v32.n128_u64[0];
        *v9++ = v32;
        if (v20 == v27)
        {
LABEL_36:
          while (v29 != v28)
          {
            v34 = *v29++;
            a7.n128_u64[0] = v34.n128_u64[0];
            *v9++ = v34;
          }

          return a7.n128_f64[0];
        }
      }

      else
      {
        v30 = *v20++;
        a7.n128_u64[0] = v30;
        *v9++ = v30;
        if (v20 == v27)
        {
          goto LABEL_36;
        }
      }
    }

    while (v20 != v27)
    {
      v33 = *v20++;
      a7.n128_u64[0] = v33.n128_u64[0];
      *v9++ = v33;
    }
  }

  else
  {
    sub_BF8344(result, v22, a3, a4 >> 1, a5, a6);
    sub_BF8344(v22, a2, a3, v23, v20, a6);

    a7.n128_u64[0] = sub_BF88D0(v9, v22, a2, a3, v21, v23, v20, a6, v25).n128_u64[0];
  }

  return a7.n128_f64[0];
}

__int128 *sub_BF8630(__int128 *result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        goto LABEL_38;
      }

      v10 = a2 - 1;
      result = (*(*v9 + 48))(v9, a2 - 1, v8);
      if (result)
      {
        *v5 = *v10;
        v11 = *v8;
      }

      else
      {
        *v5 = *v8;
        v11 = *v10;
      }

      v5[1] = v11;
    }

    else
    {
      if (a4 == 1)
      {
        *a5 = *result;
        return result;
      }

      if (a4 > 8)
      {
        v21 = a4 >> 1;
        v22 = a4 >> 1;
        v23 = &result[v22];
        sub_BF8344(result, &result[v22], a3, v21, a5, v21);
        result = sub_BF8344(&v8[v22], a2, a3, a4 - v21, &v5[v22], a4 - v21);
        v25 = &v8[v22];
        while (v25 != a2)
        {
          v27 = *(a3 + 24);
          if (!v27)
          {
            goto LABEL_38;
          }

          result = (*(*v27 + 48))(v27, v25, v8);
          if (result)
          {
            v28 = *v25++;
            *v5++ = v28;
            if (v8 == v23)
            {
LABEL_33:
              while (v25 != a2)
              {
                v30 = *v25++;
                *v5++ = v30;
              }

              return result;
            }
          }

          else
          {
            v26 = *v8++;
            *v5++ = v26;
            if (v8 == v23)
            {
              goto LABEL_33;
            }
          }
        }

        while (v8 != v23)
        {
          v29 = *v8++;
          *v5++ = v29;
        }
      }

      else if (result != a2)
      {
        v12 = result + 1;
        *a5 = *result;
        if (result + 1 != a2)
        {
          v13 = 0;
          v14 = a5;
          while (1)
          {
            v17 = *(a3 + 24);
            if (!v17)
            {
              break;
            }

            v18 = v14++;
            result = (*(*v17 + 48))(v17, v12, v18);
            v15 = v14;
            if (result)
            {
              *v14 = *v18;
              v15 = v5;
              if (v18 != v5)
              {
                v19 = v13;
                do
                {
                  v20 = *(a3 + 24);
                  if (!v20)
                  {
                    goto LABEL_38;
                  }

                  result = (*(*v20 + 48))(v20, v12, v5 + v19 - 16);
                  if (!result)
                  {
                    v15 = (v5 + v19);
                    goto LABEL_13;
                  }

                  *(v5 + v19) = *(v5 + v19 - 16);
                  v19 -= 16;
                }

                while (v19);
                v15 = v5;
              }
            }

LABEL_13:
            v16 = *v12++;
            *v15 = v16;
            v13 += 16;
            if (v12 == a2)
            {
              return result;
            }
          }

LABEL_38:
          sub_2B7420();
        }
      }
    }
  }

  return result;
}

__n128 sub_BF88D0(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, __n128 result)
{
  v49 = a6;
  if (a6)
  {
    while (1)
    {
      if (v49 <= a8 || a5 <= a8)
      {
        sub_BF8E74(a1, a2, a3, a4, a5, v49, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = *(a4 + 24);
        if (!v15)
        {
          sub_2B7420();
        }

        if ((*(*v15 + 48))(v15, a2, &a1[v13 / 0x10], result))
        {
          break;
        }

        v13 += 16;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v17 = -v14;
      if (-v14 < v49)
      {
        break;
      }

      if (v14 == -1)
      {
        v53 = a1[v13 / 0x10];
        a1[v13 / 0x10] = *a2;
        result = v53;
        *a2 = v53;
        return result;
      }

      v24 = *(a4 + 24);
      if (v24)
      {
        if (v24 == a4)
        {
          v55 = v54;
          (*(*v24 + 24))(v24, v54);
        }

        else
        {
          v55 = (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v55 = 0;
      }

      v44 = v17 / 2;
      v19 = &a1[v17 / 2 + v13 / 0x10];
      v18 = a2;
      if (a2 != a3)
      {
        v25 = a3 - a2;
        v18 = a2;
        do
        {
          if (!v55)
          {
            sub_2B7420();
          }

          v26 = &v18[v25 >> 1];
          v27 = (*(*v55 + 48))(v55, v26, v19);
          if (v27)
          {
            v25 += ~(v25 >> 1);
          }

          else
          {
            v25 >>= 1;
          }

          if (v27)
          {
            v18 = v26 + 1;
          }
        }

        while (v25);
      }

      if (v55 == v54)
      {
        (*(*v55 + 32))(v55);
      }

      else if (v55)
      {
        (*(*v55 + 40))();
      }

      v45 = v18 - a2;
      v22 = v18;
      v23 = a2 - v19;
      if (a2 != v19)
      {
        goto LABEL_41;
      }

LABEL_63:
      a5 = -v14 - v44;
      v43 = v49 - v45;
      if (v44 + v45 >= v49 - (v44 + v45) - v14)
      {
        result = sub_BF88D0(v22, v18, a3, a4, -v14 - v44, v49 - v45, a7, a8, result);
        a2 = v19;
        a5 = v44;
        a3 = v22;
        a1 = (a1 + v13);
        v49 = v45;
        if (!v45)
        {
          return result;
        }
      }

      else
      {
        result = sub_BF88D0(&a1[v13 / 0x10], v19, v22, a4, v44, v45, a7, a8, result);
        a1 = v22;
        a2 = v18;
        v49 -= v45;
        if (!v43)
        {
          return result;
        }
      }
    }

    v45 = v49 / 2;
    v18 = &a2[v49 / 2];
    v19 = a2;
    if (a2 - a1 != v13)
    {
      v20 = (a2 - a1 - v13) >> 4;
      v19 = &a1[v13 / 0x10];
      do
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
          sub_2B7420();
        }

        if ((*(*v21 + 48))(v21, v18, &v19[v20 >> 1]))
        {
          v20 >>= 1;
        }

        else
        {
          v19 += (v20 >> 1) + 1;
          v20 += ~(v20 >> 1);
        }
      }

      while (v20);
    }

    v44 = (v19 - a1 - v13) >> 4;
    v22 = &a2[v49 / 2];
    v23 = a2 - v19;
    if (a2 == v19)
    {
      goto LABEL_63;
    }

LABEL_41:
    v22 = v19;
    if (a2 != v18)
    {
      if (&v19[1] == a2)
      {
        v50 = *v19;
        memmove(v19, a2, v18 - a2);
        v22 = (v19 + v18 - a2);
        result = v50;
        *v22 = v50;
      }

      else if (&a2[1] == v18)
      {
        v22 = v19 + 1;
        v51 = v18[-1];
        if (&v18[-1] != v19)
        {
          memmove(&v19[1], v19, &v18[-1] - v19);
        }

        result = v51;
        *v19 = v51;
      }

      else
      {
        v28 = v23 >> 4;
        v29 = v18 - a2;
        if (v23 >> 4 == v29)
        {
          v30 = v19 + 1;
          v31 = a2 + 1;
          do
          {
            v52 = v30[-1];
            v30[-1] = v31[-1];
            result = v52;
            v31[-1] = v52;
            if (v30 == a2)
            {
              break;
            }

            ++v30;
          }

          while (v31++ != v18);
          v22 = a2;
        }

        else
        {
          v33 = v23 >> 4;
          do
          {
            v34 = v33;
            v33 = v29;
            v29 = v34 % v29;
          }

          while (v29);
          v35 = &v19[v33];
          do
          {
            result = v35[-1];
            v36 = (--v35 + v23);
            v37 = v35;
            do
            {
              v38 = v36;
              *v37 = *v36;
              v39 = v18 - v36;
              v40 = __OFSUB__(v28, v39);
              v42 = v28 - v39;
              v41 = (v42 < 0) ^ v40;
              v36 = &v19[v42];
              if (v41)
              {
                v36 = &v38[v28];
              }

              v37 = v38;
            }

            while (v36 != v35);
            *v38 = result;
          }

          while (v35 != v19);
          v22 = (v19 + v18 - a2);
        }
      }
    }

    goto LABEL_63;
  }

  return result;
}

void sub_BF8E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_BF4098(va);
  _Unwind_Resume(a1);
}

void sub_BF8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_BF4098(va);
  _Unwind_Resume(a1);
}

__int128 *sub_BF8E74(__int128 *__dst, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v16 = -__src;
      v17 = __src;
      v18 = __dst;
      do
      {
        v19 = *v18++;
        *v17++ = v19;
        v16 -= 16;
      }

      while (v18 != a2);
      while (v10 != v9)
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
LABEL_33:
          sub_2B7420();
        }

        __dst = (*(*v21 + 48))(v21, v10, v7);
        if (__dst)
        {
          v22 = *v10++;
          *v11++ = v22;
          if (v17 == v7)
          {
            return __dst;
          }
        }

        else
        {
          v20 = *v7++;
          *v11++ = v20;
          if (v17 == v7)
          {
            return __dst;
          }
        }
      }

      return memmove(v11, v7, -(v7 + v16));
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    do
    {
      __src[v12] = a2[v12];
      ++v12;
    }

    while (&a2[v12] != a3);
    v13 = &__src[v12];
    while (v10 != v11)
    {
      v14 = *(a4 + 24);
      if (!v14)
      {
        goto LABEL_33;
      }

      __dst = (*(*v14 + 48))(v14, v13 - 1, v10 - 1);
      if (__dst)
      {
        v15 = v10 - 1;
      }

      else
      {
        v15 = v13 - 1;
      }

      *--v9 = *v15;
      if (__dst)
      {
        --v10;
      }

      else
      {
        --v13;
      }

      if (v13 == v7)
      {
        return __dst;
      }
    }

    if (v13 != v7)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        v9[v23--] = *--v13;
      }

      while (v13 != v7);
    }
  }

  return __dst;
}

void sub_BF904C(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, _OWORD *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      v8 = &a2[-7];
      if ((*(*v7 + 48))(v7, a2 - 7, a1))
      {
        v34 = a1[1];
        v35 = a1[2];
        v36 = a1[3];
        v10 = a1[5];
        v37 = a1[4];
        v33 = *a1;
        v11 = a1[6].n128_u64[0];
        a1[5].n128_u64[1] = 0;
        a1[6].n128_u64[0] = 0;
        a1[5].n128_u64[0] = 0;
        v12 = a1[6].n128_u8[8];
        v14 = v8[3];
        v13 = v8[4];
        v15 = v8[2];
        a1[1] = v8[1];
        a1[2] = v15;
        a1[3] = v14;
        a1[4] = v13;
        *a1 = *v8;
        a1[5] = a2[-2];
        a1[6].n128_u64[0] = a2[-1].n128_u64[0];
        a1[6].n128_u8[8] = a2[-1].n128_u8[8];
        v8[1] = v34;
        v8[2] = v35;
        v8[3] = v36;
        v8[4] = v37;
        *v8 = v33;
        a2[-2] = v10;
        a2[-1].n128_u64[0] = v11;
        a2[-1].n128_u8[8] = v12;
      }
    }

    else if (a4 <= 0)
    {

      sub_BF9318(a1, a2, a3);
    }

    else
    {
      v17 = a4 >> 1;
      v18 = &a1[7 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v32 = 0;
        *&v33 = a5;
        *(&v33 + 1) = &v32;
        sub_BF9550(a1, &a1[7 * (a4 >> 1)], a3, a4 >> 1, a5);
        v32 = v17;
        v26 = a4 - v17;
        v27 = &a5[7 * v17];
        sub_BF9550(v18, a2, a3, v26, v27);
        v32 = a4;
        sub_BF982C(a5, v27, v27, &a5[7 * a4], a1, a3);
        if (a5)
        {
          v28 = v32;
          if (v32)
          {
            v29 = 0;
            v30 = a5 + 11;
            do
            {
              v31 = *(v30 - 1);
              if (v31)
              {
                *v30 = v31;
                operator delete(v31);
                v28 = v32;
              }

              ++v29;
              v30 += 14;
            }

            while (v29 < v28);
          }
        }
      }

      else
      {
        sub_BF904C(a1, &a1[7 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v23 = a4 - v17;
        sub_BF904C(v18, a2, a3, v23, a5, a6);

        sub_BF9AE8(a1, v18, a2, a3, v17, v23, a5, a6);
      }
    }
  }
}

void sub_BF9304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BF9318(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 7;
    if (a1 + 7 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          sub_2B7420();
        }

        v10 = v5;
        if ((*(*v9 + 48))(v9, v5, v8))
        {
          v31 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v34 = v10[3];
          v35 = v13;
          v32 = v11;
          v33 = v12;
          *v36 = v8[12];
          *&v36[16] = *(v8 + 26);
          *(v8 + 24) = 0;
          *(v8 + 25) = 0;
          *(v8 + 26) = 0;
          v37 = *(v8 + 216);
          v14 = v7;
          while (1)
          {
            v15 = v14;
            v16 = a1 + v14;
            v17 = *(a1 + v14 + 48);
            *(v16 + 9) = *(a1 + v14 + 32);
            *(v16 + 10) = v17;
            *(v16 + 11) = *(a1 + v14 + 64);
            v18 = *(a1 + v14 + 16);
            *(v16 + 7) = *(a1 + v14);
            *(v16 + 8) = v18;
            v20 = a1 + v14 + 192;
            v19 = *v20;
            if (*v20)
            {
              *(v16 + 25) = v19;
              operator delete(v19);
              *v20 = 0;
              *(v20 + 1) = 0;
              *(v20 + 2) = 0;
            }

            *v20 = *(v16 + 5);
            *(v16 + 26) = *(v16 + 12);
            *(v16 + 10) = 0;
            *(v16 + 11) = 0;
            *(v16 + 12) = 0;
            v16[216] = v16[104];
            if (!v15)
            {
              break;
            }

            v21 = *(a3 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            v22 = (*(*v21 + 48))(v21, &v31, a1 + v15 - 112);
            v14 = v15 - 112;
            if ((v22 & 1) == 0)
            {
              v23 = a1 + v15;
              goto LABEL_16;
            }
          }

          v23 = a1;
LABEL_16:
          *v23 = v31;
          v24 = v32;
          v25 = v33;
          v26 = v35;
          *(v23 + 3) = v34;
          *(v23 + 4) = v26;
          *(v23 + 1) = v24;
          *(v23 + 2) = v25;
          v27 = a1 + v15;
          v30 = *(v27 + 10);
          v29 = v27 + 80;
          v28 = v30;
          if (v30)
          {
            *(v23 + 11) = v28;
            operator delete(v28);
            *v29 = 0;
            v29[1] = 0;
            v29[2] = 0;
          }

          *v29 = *v36;
          *(v23 + 88) = *&v36[8];
          memset(v36, 0, sizeof(v36));
          v23[104] = v37;
        }

        v5 = v10 + 7;
        v7 += 112;
        v8 = v10;
      }

      while (v10 + 7 != a2);
    }
  }
}

void sub_BF952C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    v20 = a1;
    operator delete(__p);
    a1 = v20;
  }

  _Unwind_Resume(a1);
}

void sub_BF9550(uint64_t result, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        sub_2B7420();
      }

      v12 = a2 - 7;
      if ((*(*v9 + 48))(v9, a2 - 7, result))
      {
        *a5 = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        *(a5 + 48) = v12[3];
        *(a5 + 64) = v15;
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
        *(a5 + 80) = 0;
        *(a5 + 80) = a2[-2];
        *(a5 + 96) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        *(a5 + 104) = a2[-1].n128_u8[8];
        *(a5 + 112) = *result;
        v16 = *(result + 16);
        v17 = *(result + 32);
        v18 = *(result + 64);
        *(a5 + 160) = *(result + 48);
        *(a5 + 176) = v18;
        *(a5 + 128) = v16;
        *(a5 + 144) = v17;
        *(a5 + 200) = 0;
        *(a5 + 208) = 0;
        *(a5 + 192) = 0;
        *(a5 + 192) = *(result + 80);
        *(a5 + 208) = *(result + 96);
        *(result + 80) = 0;
        *(result + 88) = 0;
        *(result + 96) = 0;
        v19 = (result + 104);
      }

      else
      {
        *a5 = *result;
        v26 = *(result + 16);
        v27 = *(result + 32);
        v28 = *(result + 64);
        *(a5 + 48) = *(result + 48);
        *(a5 + 64) = v28;
        *(a5 + 16) = v26;
        *(a5 + 32) = v27;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
        *(a5 + 80) = 0;
        *(a5 + 80) = *(result + 80);
        *(a5 + 96) = *(result + 96);
        *(result + 80) = 0;
        *(result + 88) = 0;
        *(result + 96) = 0;
        *(a5 + 104) = *(result + 104);
        *(a5 + 112) = *v12;
        v29 = v12[1];
        v30 = v12[2];
        v31 = v12[4];
        *(a5 + 160) = v12[3];
        *(a5 + 176) = v31;
        *(a5 + 128) = v29;
        *(a5 + 144) = v30;
        *(a5 + 200) = 0;
        *(a5 + 208) = 0;
        *(a5 + 192) = 0;
        *(a5 + 192) = a2[-2];
        *(a5 + 208) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v19 = &a2[-1].n128_u8[8];
      }

      *(a5 + 216) = *v19;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
      v6 = *(result + 16);
      v7 = *(result + 32);
      v8 = *(result + 64);
      *(a5 + 48) = *(result + 48);
      *(a5 + 64) = v8;
      *(a5 + 16) = v6;
      *(a5 + 32) = v7;
      *(a5 + 88) = 0;
      *(a5 + 96) = 0;
      *(a5 + 80) = 0;
      *(a5 + 80) = *(result + 80);
      *(a5 + 96) = *(result + 96);
      *(result + 80) = 0;
      *(result + 88) = 0;
      *(result + 96) = 0;
      *(a5 + 104) = *(result + 104);
    }

    else if (a4 > 8)
    {
      v20 = a4 >> 1;
      v21 = 112 * (a4 >> 1);
      sub_BF904C(result, v21 + result, a3, v20, a5, v20);
      sub_BF904C((v21 + result), a2, a3, a4 - v20, a5 + v21, a4 - v20);

      sub_BFA528(result, (v21 + result), (v21 + result), a2, a5, a3);
    }

    else
    {

      sub_BFA20C(result, a2, a5, a3);
    }
  }
}

void sub_BF9818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

__n128 sub_BF982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a2)
  {
LABEL_18:
    if (a3 != a4)
    {
      v27 = a5 + 80;
      do
      {
        *(v27 - 80) = *a3;
        v28 = *(a3 + 16);
        v29 = *(a3 + 32);
        v30 = *(a3 + 64);
        *(v27 - 32) = *(a3 + 48);
        *(v27 - 16) = v30;
        *(v27 - 64) = v28;
        *(v27 - 48) = v29;
        v31 = *v27;
        if (*v27)
        {
          *(v27 + 8) = v31;
          operator delete(v31);
          *v27 = 0;
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
        }

        result = *(a3 + 80);
        *v27 = result;
        *(v27 + 16) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(v27 + 24) = *(a3 + 104);
        a3 += 112;
        v27 += 112;
      }

      while (a3 != a4);
    }
  }

  else
  {
    v10 = a1;
    v11 = a5 + 80;
    while (a3 != a4)
    {
      v13 = *(a6 + 24);
      if (!v13)
      {
        sub_2B7420();
      }

      v14 = (v11 - 80);
      if ((*(*v13 + 48))(v13, a3, v10))
      {
        *v14 = *a3;
        v15 = *(a3 + 16);
        v16 = *(a3 + 32);
        v17 = *(a3 + 64);
        *(v11 - 32) = *(a3 + 48);
        *(v11 - 16) = v17;
        *(v11 - 64) = v15;
        *(v11 - 48) = v16;
        v18 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v18;
          operator delete(v18);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(a3 + 80);
        *v11 = result;
        *(v11 + 16) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(v11 + 24) = *(a3 + 104);
        a3 += 112;
        v11 += 112;
        if (v10 == a2)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v14 = *v10;
        v19 = *(v10 + 16);
        v20 = *(v10 + 32);
        v21 = *(v10 + 64);
        *(v11 - 32) = *(v10 + 48);
        *(v11 - 16) = v21;
        *(v11 - 64) = v19;
        *(v11 - 48) = v20;
        v22 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v22;
          operator delete(v22);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(v10 + 80);
        *v11 = result;
        *(v11 + 16) = *(v10 + 96);
        *(v10 + 80) = 0;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v11 + 24) = *(v10 + 104);
        v10 += 112;
        v11 += 112;
        if (v10 == a2)
        {
LABEL_17:
          a5 = v11 - 80;
          goto LABEL_18;
        }
      }
    }

    while (v10 != a2)
    {
      *(v11 - 80) = *v10;
      v23 = *(v10 + 16);
      v24 = *(v10 + 32);
      v25 = *(v10 + 64);
      *(v11 - 32) = *(v10 + 48);
      *(v11 - 16) = v25;
      *(v11 - 64) = v23;
      *(v11 - 48) = v24;
      v26 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v26;
        operator delete(v26);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      result = *(v10 + 80);
      *v11 = result;
      *(v11 + 16) = *(v10 + 96);
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v11 + 24) = *(v10 + 104);
      v10 += 112;
      v11 += 112;
    }
  }

  return result;
}

uint64_t *sub_BF9A70(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 88);
      do
      {
        v7 = *(v6 - 1);
        if (v7)
        {
          *v6 = v7;
          operator delete(v7);
          v4 = *v3;
        }

        ++v5;
        v6 += 14;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

__n128 sub_BF9AE8(__n128 *a1, __int128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  v61 = a6;
  if (a6)
  {
    while (1)
    {
      if (v61 <= a8 || a5 <= a8)
      {
        sub_BFA76C(a1, a2, a3, a4, a5, v61, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2B7420();
        }

        if ((*(*v14 + 48))(v14, a2, &a1[v12 / 0x10]))
        {
          break;
        }

        v12 += 112;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v17 = -v13;
      if (-v13 >= v61)
      {
        if (v13 == -1)
        {
          v50 = &a1[v12 / 0x10];
          v65 = a1[v12 / 0x10];
          v77 = a1[v12 / 0x10 + 3];
          v81 = a1[v12 / 0x10 + 4];
          v69 = a1[v12 / 0x10 + 1];
          v73 = a1[v12 / 0x10 + 2];
          v51 = a1[v12 / 0x10 + 6].n128_u64[0];
          result = a1[v12 / 0x10 + 5];
          *(v50 + 10) = 0;
          *(v50 + 11) = 0;
          *(v50 + 12) = 0;
          v52 = a1[v12 / 0x10 + 6].n128_i8[8];
          v54 = a2[1];
          v53 = a2[2];
          v55 = a2[4];
          *(v50 + 3) = a2[3];
          *(v50 + 4) = v55;
          *(v50 + 1) = v54;
          *(v50 + 2) = v53;
          *v50 = *a2;
          *(v50 + 5) = a2[5];
          *(v50 + 12) = *(a2 + 12);
          v50[104] = *(a2 + 104);
          a2[2] = v73;
          a2[3] = v77;
          *a2 = v65;
          a2[1] = v69;
          a2[4] = v81;
          a2[5] = result;
          *(a2 + 12) = v51;
          *(a2 + 104) = v52;
          return result;
        }

        v23 = *(a4 + 24);
        if (v23)
        {
          if (v23 == a4)
          {
            v83 = v82;
            (*(*v23 + 24))(v23, v82);
          }

          else
          {
            v83 = (*(*v23 + 16))(v23);
          }
        }

        else
        {
          v83 = 0;
        }

        v56 = v17 / 2;
        v19 = &a1[7 * (v17 / 2) + v12 / 0x10];
        v18 = a2;
        if (a2 != a3)
        {
          v24 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 4);
          v18 = a2;
          do
          {
            if (!v83)
            {
              sub_2B7420();
            }

            v25 = &v18[7 * (v24 >> 1)];
            v26 = (*(*v83 + 48))(v83, v25, v19);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v18 = v25 + 7;
            }
          }

          while (v24);
        }

        if (v83 == v82)
        {
          (*(*v83 + 32))(v83);
        }

        else if (v83)
        {
          (*(*v83 + 40))();
        }

        v57 = 0x6DB6DB6DB6DB6DB7 * (v18 - a2);
        v22 = v18;
        if (a2 != v19)
        {
LABEL_41:
          v22 = v19;
          if (a2 != v18)
          {
            v22 = (v19 + 7);
            v27 = v19 + 7;
            v28 = a2;
            while (1)
            {
              v62 = *(v27 - 7);
              v74 = *(v27 - 4);
              v78 = *(v27 - 3);
              v66 = *(v27 - 6);
              v70 = *(v27 - 5);
              v29 = *(v27 - 2);
              v30 = *(v27 - 2);
              *(v27 - 4) = 0;
              *(v27 - 3) = 0;
              *(v27 - 2) = 0;
              v31 = *(v27 - 8);
              v33 = v28[1];
              v32 = v28[2];
              v34 = v28[4];
              *(v27 - 4) = v28[3];
              *(v27 - 3) = v34;
              *(v27 - 6) = v33;
              *(v27 - 5) = v32;
              *(v27 - 7) = *v28;
              *(v27 - 2) = v28[5];
              *(v27 - 2) = *(v28 + 12);
              *(v27 - 8) = *(v28 + 104);
              v28[2] = v70;
              v28[3] = v74;
              *v28 = v62;
              v28[1] = v66;
              v28[4] = v78;
              v28[5] = v30;
              *(v28 + 12) = v29;
              *(v28 + 104) = v31;
              v28 += 7;
              if (v28 == v18)
              {
                break;
              }

              if (v27 == a2)
              {
                a2 = v28;
              }

              v27 += 7;
              v22 += 112;
            }

            if (v27 != a2)
            {
              v35 = a2;
              while (1)
              {
                v63 = *v27;
                v75 = v27[3];
                v79 = v27[4];
                v67 = v27[1];
                v71 = v27[2];
                v36 = *(v27 + 12);
                v37 = v27[5];
                *(v27 + 11) = 0;
                *(v27 + 12) = 0;
                *(v27 + 10) = 0;
                v38 = *(v27 + 104);
                *v27 = *v35;
                v39 = v35[4];
                v41 = v35[1];
                v40 = v35[2];
                v27[3] = v35[3];
                v27[4] = v39;
                v27[1] = v41;
                v27[2] = v40;
                v27[5] = v35[5];
                *(v27 + 12) = *(v35 + 12);
                *(v27 + 104) = *(v35 + 104);
                v35[3] = v75;
                v35[4] = v79;
                v35[1] = v67;
                v35[2] = v71;
                *v35 = v63;
                v35[5] = v37;
                *(v35 + 12) = v36;
                *(v35 + 104) = v38;
                v27 += 7;
                v35 += 7;
                v42 = v27 == a2;
                if (v35 == v18)
                {
                  if (v27 == a2)
                  {
                    break;
                  }

                  v35 = a2 + 7;
                  while (1)
                  {
                    v64 = *v27;
                    v76 = v27[3];
                    v80 = v27[4];
                    v68 = v27[1];
                    v72 = v27[2];
                    v43 = *(v27 + 12);
                    v44 = v27[5];
                    *(v27 + 11) = 0;
                    *(v27 + 12) = 0;
                    *(v27 + 10) = 0;
                    v45 = *(v27 + 104);
                    v47 = a2[1];
                    v46 = a2[2];
                    v48 = a2[4];
                    v27[3] = a2[3];
                    v27[4] = v48;
                    v27[1] = v47;
                    v27[2] = v46;
                    *v27 = *a2;
                    v27[5] = a2[5];
                    *(v27 + 12) = *(a2 + 12);
                    *(v27 + 104) = *(a2 + 104);
                    *a2 = v64;
                    a2[3] = v76;
                    a2[4] = v80;
                    a2[1] = v68;
                    a2[2] = v72;
                    a2[5] = v44;
                    *(a2 + 12) = v43;
                    *(a2 + 104) = v45;
                    v27 += 7;
                    v42 = v27 == a2;
                    if (v35 != v18)
                    {
                      break;
                    }

                    if (v27 == a2)
                    {
                      goto LABEL_56;
                    }
                  }
                }

                if (v42)
                {
                  a2 = v35;
                }
              }
            }
          }
        }
      }

      else
      {
        v57 = v61 / 2;
        v18 = &a2[7 * (v61 / 2)];
        v19 = a2;
        if (a2 - a1 != v12)
        {
          v20 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1 - v12) >> 4);
          v19 = &a1[v12 / 0x10];
          do
          {
            v21 = *(a4 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            if ((*(*v21 + 48))(v21, v18, &v19[7 * (v20 >> 1)]))
            {
              v20 >>= 1;
            }

            else
            {
              v19 += 7 * (v20 >> 1) + 7;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
        }

        v56 = 0x6DB6DB6DB6DB6DB7 * ((v19 - a1 - v12) >> 4);
        v22 = &a2[7 * (v61 / 2)];
        if (a2 != v19)
        {
          goto LABEL_41;
        }
      }

LABEL_56:
      a5 = -v13 - v56;
      v49 = v61 - v57;
      if (v56 + v57 >= v61 - (v56 + v57) - v13)
      {
        result = sub_BF9AE8(v22, v18, a3, a4, -v13 - v56, v61 - v57, a7, a8);
        a2 = v19;
        a5 = v56;
        a3 = v22;
        a1 = (a1 + v12);
        v61 = v57;
        if (!v57)
        {
          return result;
        }
      }

      else
      {
        result = sub_BF9AE8(&a1[v12 / 0x10], v19, v22, a4, v56, v57, a7, a8);
        a1 = v22;
        a2 = v18;
        v61 -= v57;
        if (!v49)
        {
          return result;
        }
      }
    }
  }

  return result;
}

__n128 sub_BFA20C(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    *(a3 + 48) = *(a1 + 48);
    *(a3 + 64) = v9;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *a3 = *a1;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    result = *(a1 + 80);
    *(a3 + 80) = result;
    *(a3 + 96) = *(a1 + 96);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a3 + 104) = *(a1 + 104);
    v37 = 1;
    v11 = a1 + 112;
    if ((a1 + 112) != a2)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        while (1)
        {
          v18 = *(a4 + 24);
          if (!v18)
          {
LABEL_20:
            sub_2B7420();
          }

          v19 = v11;
          v20 = (v14 + 112);
          if ((*(*v18 + 48))(v18, v11, v14))
          {
            break;
          }

          *v20 = *v19;
          v15 = *(v19 + 16);
          v16 = *(v19 + 32);
          v17 = *(v19 + 64);
          *(v14 + 160) = *(v19 + 48);
          *(v14 + 176) = v17;
          *(v14 + 128) = v15;
          *(v14 + 144) = v16;
          *(v14 + 200) = 0;
          *(v14 + 208) = 0;
          *(v14 + 192) = 0;
          result = v6[12];
          *(v14 + 192) = result;
          *(v14 + 208) = v6[13].n128_u64[0];
          v6[12].n128_u64[0] = 0;
          v6[12].n128_u64[1] = 0;
          v6[13].n128_u64[0] = 0;
          *(v14 + 216) = v6[13].n128_u8[8];
          ++v37;
          v11 = v19 + 112;
          v13 += 112;
          v14 += 112;
          v6 = v19;
          if ((v19 + 112) == a2)
          {
            return result;
          }
        }

        v21 = *(v14 + 48);
        *(v14 + 144) = *(v14 + 32);
        *(v14 + 160) = v21;
        v22 = *(v14 + 80);
        *(v14 + 176) = *(v14 + 64);
        v23 = *(v14 + 16);
        *v20 = *v14;
        *(v14 + 128) = v23;
        *(v14 + 192) = v22;
        *(v14 + 208) = *(v14 + 96);
        *(v14 + 80) = 0;
        *(v14 + 88) = 0;
        *(v14 + 216) = *(v14 + 104);
        ++v37;
        v24 = a3;
        *(v14 + 96) = 0;
        if (v14 != a3)
        {
          v25 = v13;
          do
          {
            v26 = *(a4 + 24);
            if (!v26)
            {
              goto LABEL_20;
            }

            v27 = (a3 + v25);
            if (!(*(*v26 + 48))(v26, v19, a3 + v25 - 112))
            {
              v24 = a3 + v25;
              goto LABEL_16;
            }

            v28 = *(a3 + v25 - 64);
            v27[2] = *(a3 + v25 - 80);
            v27[3] = v28;
            v27[4] = *(a3 + v25 - 48);
            v29 = *(a3 + v25 - 96);
            *v27 = *(a3 + v25 - 112);
            v27[1] = v29;
            v30 = a3 + v25;
            v32 = (a3 + v25 + 80);
            v31 = *v32;
            if (*v32)
            {
              *(v30 + 88) = v31;
              operator delete(v31);
              *v32 = 0;
              *(a3 + v25 + 88) = 0;
              *(a3 + v25 + 96) = 0;
            }

            *v32 = *(v30 - 32);
            *(v30 + 96) = *(v30 - 16);
            *(v30 - 24) = 0;
            *(v30 - 16) = 0;
            *(v30 - 32) = 0;
            *(v30 + 104) = *(v30 - 8);
            v25 -= 112;
          }

          while (v25);
          v24 = a3;
        }

LABEL_16:
        *v24 = *v19;
        v33 = *(v19 + 16);
        v34 = *(v19 + 32);
        v35 = *(v19 + 64);
        *(v24 + 48) = *(v19 + 48);
        *(v24 + 64) = v35;
        *(v24 + 16) = v33;
        *(v24 + 32) = v34;
        v36 = *(v24 + 80);
        if (v36)
        {
          *(v24 + 88) = v36;
          operator delete(v36);
          *(v24 + 80) = 0;
          *(v24 + 88) = 0;
          *(v24 + 96) = 0;
        }

        result = v6[12];
        *(v24 + 80) = result;
        *(v24 + 96) = v6[13].n128_u64[0];
        v6[12].n128_u64[0] = 0;
        v6[12].n128_u64[1] = 0;
        v6[13].n128_u64[0] = 0;
        *(v24 + 104) = v6[13].n128_u8[8];
        v11 = v19 + 112;
        v13 += 112;
        v14 = v20;
        v6 = v19;
      }

      while ((v19 + 112) != a2);
    }
  }

  return result;
}

void sub_BFA4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFA528(void *a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6)
{
  v33 = 0;
  if (a1 == a2)
  {
LABEL_15:
    while (a3 != a4)
    {
      *a5 = *a3;
      v30 = *(a3 + 1);
      v31 = *(a3 + 2);
      v32 = *(a3 + 4);
      *(a5 + 3) = *(a3 + 3);
      *(a5 + 4) = v32;
      *(a5 + 1) = v30;
      *(a5 + 2) = v31;
      *(a5 + 11) = 0;
      *(a5 + 12) = 0;
      *(a5 + 10) = 0;
      result = *(a3 + 5);
      *(a5 + 5) = result;
      *(a5 + 12) = a3[12];
      a3[10] = 0;
      a3[11] = 0;
      a3[12] = 0;
      a5[104] = *(a3 + 104);
      a3 += 14;
      a5 += 112;
    }
  }

  else
  {
    v10 = a1;
    v11 = a5 + 104;
    while (a3 != a4)
    {
      v17 = *(a6 + 24);
      if (!v17)
      {
        sub_2B7420();
      }

      v18 = (*(*v17 + 48))(v17, a3, v10);
      v19 = v11 - 104;
      v20 = v11 - 24;
      if (v18)
      {
        *v19 = *a3;
        v21 = *(a3 + 1);
        v22 = *(a3 + 2);
        v23 = *(a3 + 4);
        *(v11 - 56) = *(a3 + 3);
        *(v11 - 40) = v23;
        *(v11 - 88) = v21;
        *(v11 - 72) = v22;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v20 = 0;
        result = *(a3 + 5);
        *(v11 - 24) = result;
        *(v11 - 1) = a3[12];
        a3[10] = 0;
        a3[11] = 0;
        a3[12] = 0;
        v16 = a3;
        a3 += 14;
      }

      else
      {
        *v19 = *v10;
        v12 = *(v10 + 1);
        v13 = *(v10 + 2);
        v14 = *(v10 + 4);
        *(v11 - 56) = *(v10 + 3);
        *(v11 - 40) = v14;
        *(v11 - 88) = v12;
        *(v11 - 72) = v13;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v20 = 0;
        result = *(v10 + 5);
        *(v11 - 24) = result;
        *(v11 - 1) = v10[12];
        v10[10] = 0;
        v10[11] = 0;
        v10[12] = 0;
        v16 = v10;
        v10 += 14;
      }

      *v11 = *(v16 + 104);
      v11 += 112;
      ++v33;
      if (v10 == a2)
      {
        a5 = v11 - 104;
        goto LABEL_15;
      }
    }

    if (v10 != a2)
    {
      v24 = 0;
      do
      {
        v25 = &v11[v24 * 8];
        v26 = &v10[v24];
        *(v25 - 104) = *&v10[v24];
        v27 = *&v10[v24 + 2];
        v28 = *&v10[v24 + 4];
        v29 = *&v10[v24 + 6];
        *(v25 - 40) = *&v10[v24 + 8];
        *(v25 - 56) = v29;
        *(v25 - 72) = v28;
        *(v25 - 88) = v27;
        *(v25 - 2) = 0;
        *(v25 - 1) = 0;
        *(v25 - 3) = 0;
        result = *&v10[v24 + 10];
        *(v25 - 24) = result;
        *(v25 - 1) = v10[v24 + 12];
        v26[10] = 0;
        v26[11] = 0;
        v26[12] = 0;
        *v25 = v10[v24 + 13];
        v24 += 14;
      }

      while (v26 + 14 != a2);
    }
  }

  return result;
}

void sub_BFA744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA76C(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v30 = 0;
  v28 = a7;
  v29 = &v30;
  if (a5 > a6)
  {
    v10 = a7;
    if (a2 != a3)
    {
      v11 = 0;
      v10 = a7;
      v12 = a2;
      do
      {
        *v10 = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        v10[3] = v12[3];
        v10[4] = v15;
        v10[1] = v13;
        v10[2] = v14;
        v10[5].n128_u64[1] = 0;
        v10[6].n128_u64[0] = 0;
        v10[5].n128_u64[0] = 0;
        v10[5] = v12[5];
        v10[6].n128_u64[0] = v12[6].n128_u64[0];
        v12[5].n128_u64[0] = 0;
        v12[5].n128_u64[1] = 0;
        v12[6].n128_u64[0] = 0;
        v10[6].n128_u8[8] = v12[6].n128_u8[8];
        ++v11;
        v12 += 7;
        v10 += 7;
      }

      while (v12 != a3);
      v30 = v11;
    }

    v27 = a4;
    sub_BFAB24(v10, v10, a7, a7, a2, a2, a1, a1, a3, a3, &v27);
    if (!a7)
    {
      return;
    }

LABEL_13:
    v22 = v29;
    v23 = *v29;
    if (*v29)
    {
      v24 = 0;
      v25 = a7 + 11;
      do
      {
        v26 = *(v25 - 1);
        if (v26)
        {
          *v25 = v26;
          operator delete(v26);
          v23 = *v22;
        }

        ++v24;
        v25 += 14;
      }

      while (v24 < v23);
    }

    return;
  }

  v16 = a7;
  if (a1 != a2)
  {
    v17 = 0;
    v16 = a7;
    v18 = a1;
    do
    {
      *v16 = *v18;
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[4];
      v16[3] = v18[3];
      v16[4] = v21;
      v16[1] = v19;
      v16[2] = v20;
      v16[5].n128_u64[1] = 0;
      v16[6].n128_u64[0] = 0;
      v16[5].n128_u64[0] = 0;
      v16[5] = v18[5];
      v16[6].n128_u64[0] = v18[6].n128_u64[0];
      v18[5].n128_u64[0] = 0;
      v18[5].n128_u64[1] = 0;
      v18[6].n128_u64[0] = 0;
      v16[6].n128_u8[8] = v18[6].n128_u8[8];
      ++v17;
      v18 += 7;
      v16 += 7;
    }

    while (v18 != a2);
    v30 = v17;
  }

  sub_BFA958(a7, v16, a2, a3, a1, a4);
  a7 = v28;
  if (v28)
  {
    goto LABEL_13;
  }
}

void sub_BFA930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFA958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a2)
  {
    v10 = a1;
    v11 = a5 + 80;
    while (a3 != a4)
    {
      v13 = *(a6 + 24);
      if (!v13)
      {
        sub_2B7420();
      }

      v14 = (v11 - 80);
      if ((*(*v13 + 48))(v13, a3, v10))
      {
        *v14 = *a3;
        v15 = *(a3 + 16);
        v16 = *(a3 + 32);
        v17 = *(a3 + 64);
        *(v11 - 32) = *(a3 + 48);
        *(v11 - 16) = v17;
        *(v11 - 64) = v15;
        *(v11 - 48) = v16;
        v18 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v18;
          operator delete(v18);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(a3 + 80);
        *v11 = result;
        *(v11 + 16) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(v11 + 24) = *(a3 + 104);
        a3 += 112;
        v11 += 112;
        if (v10 == a2)
        {
          return result;
        }
      }

      else
      {
        *v14 = *v10;
        v19 = *(v10 + 16);
        v20 = *(v10 + 32);
        v21 = *(v10 + 64);
        *(v11 - 32) = *(v10 + 48);
        *(v11 - 16) = v21;
        *(v11 - 64) = v19;
        *(v11 - 48) = v20;
        v22 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v22;
          operator delete(v22);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(v10 + 80);
        *v11 = result;
        *(v11 + 16) = *(v10 + 96);
        *(v10 + 80) = 0;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v11 + 24) = *(v10 + 104);
        v10 += 112;
        v11 += 112;
        if (v10 == a2)
        {
          return result;
        }
      }
    }

    do
    {
      *(v11 - 80) = *v10;
      v23 = *(v10 + 16);
      v24 = *(v10 + 32);
      v25 = *(v10 + 64);
      *(v11 - 32) = *(v10 + 48);
      *(v11 - 16) = v25;
      *(v11 - 64) = v23;
      *(v11 - 48) = v24;
      v26 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v26;
        operator delete(v26);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      result = *(v10 + 80);
      *v11 = result;
      *(v11 + 16) = *(v10 + 96);
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v11 + 24) = *(v10 + 104);
      v10 += 112;
      v11 += 112;
    }

    while (v10 != a2);
  }

  return result;
}

__n128 sub_BFAB24(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == a4)
  {
    return result;
  }

  v14 = a2;
  v15 = a10 - 32;
  while (a6 != a8)
  {
    v23 = *(*a11 + 24);
    if (!v23)
    {
      sub_2B7420();
    }

    v21 = a6 - 7;
    v24 = v14 - 7;
    v25 = (*(*v23 + 48))(v23, v14 - 7, a6 - 7);
    v26 = (v15 - 80);
    if (v25)
    {
      *v26 = *v21;
      v27 = a6[-6];
      v28 = a6[-5];
      v29 = a6[-3];
      *(v15 - 32) = a6[-4];
      *(v15 - 16) = v29;
      *(v15 - 64) = v27;
      *(v15 - 48) = v28;
      v19 = *v15;
      v20 = a6;
      v24 = v14;
      if (!*v15)
      {
        goto LABEL_5;
      }

LABEL_4:
      *(v15 + 8) = v19;
      operator delete(v19);
      *v15 = 0;
      *(v15 + 8) = 0;
      v14 = v24;
      *(v15 + 16) = 0;
      goto LABEL_5;
    }

    *v26 = *v24;
    v16 = *(v14 - 6);
    v17 = *(v14 - 5);
    v18 = *(v14 - 3);
    *(v15 - 32) = *(v14 - 4);
    *(v15 - 16) = v18;
    *(v15 - 64) = v16;
    *(v15 - 48) = v17;
    v19 = *v15;
    v20 = v14;
    v21 = a6;
    v14 -= 7;
    if (*v15)
    {
      goto LABEL_4;
    }

LABEL_5:
    result = v20[-2];
    *v15 = result;
    *(v15 + 16) = v20[-1].n128_u64[0];
    v20[-2].n128_u64[0] = 0;
    v20[-2].n128_u64[1] = 0;
    v20[-1].n128_u64[0] = 0;
    *(v15 + 24) = v20[-1].n128_u8[8];
    v15 -= 112;
    a6 = v21;
    if (v14 == a4)
    {
      return result;
    }
  }

  if (a4 != v14)
  {
    v30 = 0;
    do
    {
      v31 = &v14[v30];
      v32 = v15 + v30 * 16;
      *(v32 - 80) = v14[v30 - 7];
      v33 = v14[v30 - 6];
      v34 = v14[v30 - 5];
      v35 = v14[v30 - 3];
      *(v32 - 32) = v14[v30 - 4];
      *(v32 - 16) = v35;
      *(v32 - 64) = v33;
      *(v32 - 48) = v34;
      v36 = *(v15 + v30 * 16);
      if (v36)
      {
        *(v32 + 8) = v36;
        operator delete(v36);
        *v32 = 0;
        *(v32 + 8) = 0;
        *(v32 + 16) = 0;
      }

      result = v31[-2];
      *v32 = result;
      *(v32 + 16) = v31[-1].n128_u64[0];
      v31[-2].n128_u64[0] = 0;
      v31[-2].n128_u64[1] = 0;
      v31[-1].n128_u64[0] = 0;
      *(v32 + 24) = v31[-1].n128_u8[8];
      v30 -= 7;
    }

    while (&v14[v30] != a4);
  }

  return result;
}

void sub_BFACF0(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      v8 = &a2[-7];
      if ((*(*v7 + 48))(v7, a2 - 7, a1))
      {
        v35 = a1[1];
        v36 = a1[2];
        v37 = a1[3];
        v10 = a1[5];
        v38 = a1[4];
        v34 = *a1;
        v11 = a1[6].n128_u64[0];
        a1[5].n128_u64[1] = 0;
        a1[6].n128_u64[0] = 0;
        a1[5].n128_u64[0] = 0;
        v12 = a1[6].n128_u8[8];
        v14 = v8[3];
        v13 = v8[4];
        v15 = v8[2];
        a1[1] = v8[1];
        a1[2] = v15;
        a1[3] = v14;
        a1[4] = v13;
        *a1 = *v8;
        a1[5] = a2[-2];
        a1[6].n128_u64[0] = a2[-1].n128_u64[0];
        a1[6].n128_u8[8] = a2[-1].n128_u8[8];
        v8[1] = v35;
        v8[2] = v36;
        v8[3] = v37;
        v8[4] = v38;
        *v8 = v34;
        a2[-2] = v10;
        a2[-1].n128_u64[0] = v11;
        a2[-1].n128_u8[8] = v12;
      }
    }

    else if (a4 <= 0)
    {

      sub_BFAFF0(a1, a2, a3);
    }

    else
    {
      v16 = a5;
      v18 = a4 >> 1;
      v19 = &a1[7 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v33 = 0;
        *&v34 = a5;
        *(&v34 + 1) = &v33;
        sub_BFB28C(a1, &a1[7 * (a4 >> 1)], a3, a4 >> 1, a5);
        v33 = v18;
        v25 = a4 - v18;
        v26 = v16 + 112 * v18;
        sub_BFB28C(v19, a2, a3, v25, v26);
        v33 = a4;
        sub_BFB568(v16, v26, v26, v16 + 112 * a4, a1, a3);
        if (v16)
        {
          v27 = v33;
          if (v33)
          {
            v28 = 0;
            do
            {
              v30 = *(v16 + 80);
              if (v30)
              {
                v31 = *(v16 + 88);
                v29 = *(v16 + 80);
                if (v31 != v30)
                {
                  do
                  {
                    v32 = *(v31 - 32);
                    if (v32)
                    {
                      *(v31 - 24) = v32;
                      operator delete(v32);
                    }

                    v31 -= 112;
                  }

                  while (v31 != v30);
                  v29 = *(v16 + 80);
                }

                *(v16 + 88) = v30;
                operator delete(v29);
                v27 = v33;
              }

              ++v28;
              v16 += 112;
            }

            while (v28 < v27);
          }
        }
      }

      else
      {
        sub_BFACF0(a1, &a1[7 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v23 = a4 - v18;
        sub_BFACF0(v19, a2, a3, v23, v16, a6);

        sub_BFB920(a1, v19, a2, a3, v18, v23, v16, a6);
      }
    }
  }
}

void sub_BFAFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFAFF0(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 7;
    if (a1 + 7 != a2)
    {
      v7 = a1;
      do
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          sub_2B7420();
        }

        v10 = v5;
        if ((*(*v9 + 48))(v9, v5, v7))
        {
          v33 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v36 = v10[3];
          v37 = v13;
          v34 = v11;
          v35 = v12;
          *v38 = v7[12];
          *&v38[16] = *(v7 + 26);
          *(v7 + 24) = 0;
          *(v7 + 25) = 0;
          *(v7 + 26) = 0;
          v39 = *(v7 + 216);
          v14 = v10;
          while (1)
          {
            v15 = v7;
            *v14 = *v7;
            v16 = v7[1];
            v17 = v7[2];
            v18 = v7[4];
            v14[3] = v7[3];
            v14[4] = v18;
            v14[1] = v16;
            v14[2] = v17;
            v19 = (v14 + 5);
            v20 = *(v14 + 10);
            if (v20)
            {
              v21 = *(v14 + 11);
              v22 = *(v14 + 10);
              if (v21 != v20)
              {
                do
                {
                  v23 = *(v21 - 32);
                  if (v23)
                  {
                    *(v21 - 24) = v23;
                    operator delete(v23);
                  }

                  v21 -= 112;
                }

                while (v21 != v20);
                v22 = *v19;
              }

              *(v14 + 11) = v20;
              operator delete(v22);
              *v19 = 0;
              *(v14 + 11) = 0;
              *(v14 + 12) = 0;
            }

            v24 = v15 + 5;
            v14[5] = v15[5];
            *(v14 + 12) = *(v15 + 12);
            *(v15 + 10) = 0;
            *(v15 + 11) = 0;
            *(v15 + 12) = 0;
            *(v14 + 104) = *(v15 + 104);
            if (v15 == a1)
            {
              break;
            }

            v25 = *(a3 + 24);
            if (!v25)
            {
              sub_2B7420();
            }

            v7 = v15 - 7;
            v14 = v15;
            if (((*(*v25 + 48))(v25, &v33, v15 - 7) & 1) == 0)
            {
              v26 = v15;
              goto LABEL_24;
            }
          }

          v26 = a1;
LABEL_24:
          *v26 = v33;
          v27 = v34;
          v28 = v35;
          v29 = v37;
          v26[3] = v36;
          v26[4] = v29;
          v26[1] = v27;
          v26[2] = v28;
          v30 = *(v15 + 10);
          if (v30)
          {
            v31 = *(v26 + 11);
            v8 = v30;
            if (v31 != v30)
            {
              do
              {
                v32 = *(v31 - 4);
                if (v32)
                {
                  *(v31 - 3) = v32;
                  operator delete(v32);
                }

                v31 -= 112;
              }

              while (v31 != v30);
              v8 = *v24;
            }

            *(v26 + 11) = v30;
            operator delete(v8);
            *v24 = 0;
            *(v24 + 1) = 0;
            *(v24 + 2) = 0;
          }

          *v24 = *v38;
          *(v26 + 88) = *&v38[8];
          memset(v38, 0, sizeof(v38));
          *(v26 + 104) = v39;
        }

        v5 = v10 + 7;
        v7 = v10;
      }

      while (v10 + 7 != a2);
    }
  }
}

void sub_BFB28C(uint64_t result, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        sub_2B7420();
      }

      v12 = a2 - 7;
      if ((*(*v9 + 48))(v9, a2 - 7, result))
      {
        *a5 = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        *(a5 + 48) = v12[3];
        *(a5 + 64) = v15;
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
        *(a5 + 80) = 0;
        *(a5 + 80) = a2[-2];
        *(a5 + 96) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        *(a5 + 104) = a2[-1].n128_u8[8];
        *(a5 + 112) = *result;
        v16 = *(result + 16);
        v17 = *(result + 32);
        v18 = *(result + 64);
        *(a5 + 160) = *(result + 48);
        *(a5 + 176) = v18;
        *(a5 + 128) = v16;
        *(a5 + 144) = v17;
        *(a5 + 200) = 0;
        *(a5 + 208) = 0;
        *(a5 + 192) = 0;
        *(a5 + 192) = *(result + 80);
        *(a5 + 208) = *(result + 96);
        *(result + 80) = 0;
        *(result + 88) = 0;
        *(result + 96) = 0;
        v19 = (result + 104);
      }

      else
      {
        *a5 = *result;
        v26 = *(result + 16);
        v27 = *(result + 32);
        v28 = *(result + 64);
        *(a5 + 48) = *(result + 48);
        *(a5 + 64) = v28;
        *(a5 + 16) = v26;
        *(a5 + 32) = v27;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
        *(a5 + 80) = 0;
        *(a5 + 80) = *(result + 80);
        *(a5 + 96) = *(result + 96);
        *(result + 80) = 0;
        *(result + 88) = 0;
        *(result + 96) = 0;
        *(a5 + 104) = *(result + 104);
        *(a5 + 112) = *v12;
        v29 = v12[1];
        v30 = v12[2];
        v31 = v12[4];
        *(a5 + 160) = v12[3];
        *(a5 + 176) = v31;
        *(a5 + 128) = v29;
        *(a5 + 144) = v30;
        *(a5 + 200) = 0;
        *(a5 + 208) = 0;
        *(a5 + 192) = 0;
        *(a5 + 192) = a2[-2];
        *(a5 + 208) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v19 = &a2[-1].n128_u8[8];
      }

      *(a5 + 216) = *v19;
    }

    else if (a4 == 1)
    {
      *a5 = *result;
      v6 = *(result + 16);
      v7 = *(result + 32);
      v8 = *(result + 64);
      *(a5 + 48) = *(result + 48);
      *(a5 + 64) = v8;
      *(a5 + 16) = v6;
      *(a5 + 32) = v7;
      *(a5 + 88) = 0;
      *(a5 + 96) = 0;
      *(a5 + 80) = 0;
      *(a5 + 80) = *(result + 80);
      *(a5 + 96) = *(result + 96);
      *(result + 80) = 0;
      *(result + 88) = 0;
      *(result + 96) = 0;
      *(a5 + 104) = *(result + 104);
    }

    else if (a4 > 8)
    {
      v20 = a4 >> 1;
      v21 = 112 * (a4 >> 1);
      sub_BFACF0(result, v21 + result, a3, v20, a5, v20);
      sub_BFACF0((v21 + result), a2, a3, a4 - v20, a5 + v21, a4 - v20);

      sub_BFC3C0(result, (v21 + result), (v21 + result), a2, a5, a3);
    }

    else
    {

      sub_BFC044(result, a2, a5, a3);
    }
  }
}

void sub_BFB554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFB568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a2)
  {
LABEL_28:
    while (a3 != a4)
    {
      *a5 = *a3;
      v29 = *(a3 + 16);
      v30 = *(a3 + 32);
      v31 = *(a3 + 64);
      *(a5 + 48) = *(a3 + 48);
      *(a5 + 64) = v31;
      *(a5 + 16) = v29;
      *(a5 + 32) = v30;
      v32 = (a5 + 80);
      v33 = *(a5 + 80);
      if (v33)
      {
        v34 = *(a5 + 88);
        v28 = *(a5 + 80);
        if (v34 != v33)
        {
          do
          {
            v35 = *(v34 - 32);
            if (v35)
            {
              *(v34 - 24) = v35;
              operator delete(v35);
            }

            v34 -= 112;
          }

          while (v34 != v33);
          v28 = *v32;
        }

        *(a5 + 88) = v33;
        operator delete(v28);
        *v32 = 0;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
      }

      result = *(a3 + 80);
      *(a5 + 80) = result;
      *(a5 + 96) = *(a3 + 96);
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 96) = 0;
      *(a5 + 104) = *(a3 + 104);
      a3 += 112;
      a5 += 112;
    }
  }

  else
  {
    v11 = a1;
    while (a3 != a4)
    {
      v14 = *(a6 + 24);
      if (!v14)
      {
        sub_2B7420();
      }

      if ((*(*v14 + 48))(v14, a3, v11))
      {
        *a5 = *a3;
        v15 = *(a3 + 16);
        v16 = *(a3 + 32);
        v17 = *(a3 + 64);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 64) = v17;
        *(a5 + 16) = v15;
        *(a5 + 32) = v16;
        v18 = *(a5 + 80);
        if (v18)
        {
          v19 = *(a5 + 88);
          v20 = *(a5 + 80);
          if (v19 != v18)
          {
            do
            {
              v21 = *(v19 - 32);
              if (v21)
              {
                *(v19 - 24) = v21;
                operator delete(v21);
              }

              v19 -= 112;
            }

            while (v19 != v18);
            v20 = *(a5 + 80);
          }

          *(a5 + 88) = v18;
          operator delete(v20);
          *(a5 + 80) = 0;
          *(a5 + 88) = 0;
          *(a5 + 96) = 0;
        }

        result = *(a3 + 80);
        *(a5 + 80) = result;
        *(a5 + 96) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(a5 + 104) = *(a3 + 104);
        a3 += 112;
        a5 += 112;
        if (v11 == a2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        *a5 = *v11;
        v22 = *(v11 + 16);
        v23 = *(v11 + 32);
        v24 = *(v11 + 64);
        *(a5 + 48) = *(v11 + 48);
        *(a5 + 64) = v24;
        *(a5 + 16) = v22;
        *(a5 + 32) = v23;
        v25 = *(a5 + 80);
        if (v25)
        {
          v26 = *(a5 + 88);
          v12 = *(a5 + 80);
          if (v26 != v25)
          {
            do
            {
              v27 = *(v26 - 32);
              if (v27)
              {
                *(v26 - 24) = v27;
                operator delete(v27);
              }

              v26 -= 112;
            }

            while (v26 != v25);
            v12 = *(a5 + 80);
          }

          *(a5 + 88) = v25;
          operator delete(v12);
          *(a5 + 80) = 0;
          *(a5 + 88) = 0;
          *(a5 + 96) = 0;
        }

        result = *(v11 + 80);
        *(a5 + 80) = result;
        *(a5 + 96) = *(v11 + 96);
        *(v11 + 80) = 0;
        *(v11 + 88) = 0;
        *(v11 + 96) = 0;
        *(a5 + 104) = *(v11 + 104);
        v11 += 112;
        a5 += 112;
        if (v11 == a2)
        {
          goto LABEL_28;
        }
      }
    }

    while (v11 != a2)
    {
      *a5 = *v11;
      v37 = *(v11 + 16);
      v38 = *(v11 + 32);
      v39 = *(v11 + 64);
      *(a5 + 48) = *(v11 + 48);
      *(a5 + 64) = v39;
      *(a5 + 16) = v37;
      *(a5 + 32) = v38;
      v40 = (a5 + 80);
      v41 = *(a5 + 80);
      if (v41)
      {
        v42 = *(a5 + 88);
        v36 = *(a5 + 80);
        if (v42 != v41)
        {
          do
          {
            v43 = *(v42 - 32);
            if (v43)
            {
              *(v42 - 24) = v43;
              operator delete(v43);
            }

            v42 -= 112;
          }

          while (v42 != v41);
          v36 = *v40;
        }

        *(a5 + 88) = v41;
        operator delete(v36);
        *v40 = 0;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
      }

      result = *(v11 + 80);
      *(a5 + 80) = result;
      *(a5 + 96) = *(v11 + 96);
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(a5 + 104) = *(v11 + 104);
      v11 += 112;
      a5 += 112;
    }
  }

  return result;
}

uint64_t *sub_BFB870(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      do
      {
        v7 = *(v2 + 80);
        if (v7)
        {
          v8 = *(v2 + 88);
          v6 = *(v2 + 80);
          if (v8 != v7)
          {
            do
            {
              v9 = *(v8 - 32);
              if (v9)
              {
                *(v8 - 24) = v9;
                operator delete(v9);
              }

              v8 -= 112;
            }

            while (v8 != v7);
            v6 = *(v2 + 80);
          }

          *(v2 + 88) = v7;
          operator delete(v6);
          v4 = *v3;
        }

        ++v5;
        v2 += 112;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

__n128 sub_BFB920(__n128 *a1, __int128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a6;
  if (a6)
  {
    while (1)
    {
      if (v61 <= a8 || a5 <= a8)
      {
        sub_BFC604(a1, a2, a3, a4, a5, v61, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2B7420();
        }

        if ((*(*v14 + 48))(v14, a2, &a1[v12 / 0x10]))
        {
          break;
        }

        v12 += 112;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v17 = -v13;
      if (-v13 >= v61)
      {
        if (v13 == -1)
        {
          v50 = &a1[v12 / 0x10];
          v65 = a1[v12 / 0x10];
          v77 = a1[v12 / 0x10 + 3];
          v81 = a1[v12 / 0x10 + 4];
          v69 = a1[v12 / 0x10 + 1];
          v73 = a1[v12 / 0x10 + 2];
          v51 = a1[v12 / 0x10 + 6].n128_u64[0];
          result = a1[v12 / 0x10 + 5];
          *(v50 + 10) = 0;
          *(v50 + 11) = 0;
          *(v50 + 12) = 0;
          v52 = a1[v12 / 0x10 + 6].n128_i8[8];
          v54 = a2[1];
          v53 = a2[2];
          v55 = a2[4];
          *(v50 + 3) = a2[3];
          *(v50 + 4) = v55;
          *(v50 + 1) = v54;
          *(v50 + 2) = v53;
          *v50 = *a2;
          *(v50 + 5) = a2[5];
          *(v50 + 12) = *(a2 + 12);
          v50[104] = *(a2 + 104);
          a2[2] = v73;
          a2[3] = v77;
          *a2 = v65;
          a2[1] = v69;
          a2[4] = v81;
          a2[5] = result;
          *(a2 + 12) = v51;
          *(a2 + 104) = v52;
          return result;
        }

        v23 = *(a4 + 24);
        if (v23)
        {
          if (v23 == a4)
          {
            v83 = v82;
            (*(*v23 + 24))(v23, v82);
          }

          else
          {
            v83 = (*(*v23 + 16))(v23);
          }
        }

        else
        {
          v83 = 0;
        }

        v56 = v17 / 2;
        v19 = &a1[7 * (v17 / 2) + v12 / 0x10];
        v18 = a2;
        if (a2 != a3)
        {
          v24 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 4);
          v18 = a2;
          do
          {
            if (!v83)
            {
              sub_2B7420();
            }

            v25 = &v18[7 * (v24 >> 1)];
            v26 = (*(*v83 + 48))(v83, v25, v19);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v18 = v25 + 7;
            }
          }

          while (v24);
        }

        if (v83 == v82)
        {
          (*(*v83 + 32))(v83);
        }

        else if (v83)
        {
          (*(*v83 + 40))();
        }

        v57 = 0x6DB6DB6DB6DB6DB7 * (v18 - a2);
        v22 = v18;
        if (a2 != v19)
        {
LABEL_41:
          v22 = v19;
          if (a2 != v18)
          {
            v22 = (v19 + 7);
            v27 = v19 + 7;
            v28 = a2;
            while (1)
            {
              v62 = *(v27 - 7);
              v74 = *(v27 - 4);
              v78 = *(v27 - 3);
              v66 = *(v27 - 6);
              v70 = *(v27 - 5);
              v29 = *(v27 - 2);
              v30 = *(v27 - 2);
              *(v27 - 4) = 0;
              *(v27 - 3) = 0;
              *(v27 - 2) = 0;
              v31 = *(v27 - 8);
              v33 = v28[1];
              v32 = v28[2];
              v34 = v28[4];
              *(v27 - 4) = v28[3];
              *(v27 - 3) = v34;
              *(v27 - 6) = v33;
              *(v27 - 5) = v32;
              *(v27 - 7) = *v28;
              *(v27 - 2) = v28[5];
              *(v27 - 2) = *(v28 + 12);
              *(v27 - 8) = *(v28 + 104);
              v28[2] = v70;
              v28[3] = v74;
              *v28 = v62;
              v28[1] = v66;
              v28[4] = v78;
              v28[5] = v30;
              *(v28 + 12) = v29;
              *(v28 + 104) = v31;
              v28 += 7;
              if (v28 == v18)
              {
                break;
              }

              if (v27 == a2)
              {
                a2 = v28;
              }

              v27 += 7;
              v22 += 112;
            }

            if (v27 != a2)
            {
              v35 = a2;
              while (1)
              {
                v63 = *v27;
                v75 = v27[3];
                v79 = v27[4];
                v67 = v27[1];
                v71 = v27[2];
                v36 = *(v27 + 12);
                v37 = v27[5];
                *(v27 + 11) = 0;
                *(v27 + 12) = 0;
                *(v27 + 10) = 0;
                v38 = *(v27 + 104);
                *v27 = *v35;
                v39 = v35[4];
                v41 = v35[1];
                v40 = v35[2];
                v27[3] = v35[3];
                v27[4] = v39;
                v27[1] = v41;
                v27[2] = v40;
                v27[5] = v35[5];
                *(v27 + 12) = *(v35 + 12);
                *(v27 + 104) = *(v35 + 104);
                v35[3] = v75;
                v35[4] = v79;
                v35[1] = v67;
                v35[2] = v71;
                *v35 = v63;
                v35[5] = v37;
                *(v35 + 12) = v36;
                *(v35 + 104) = v38;
                v27 += 7;
                v35 += 7;
                v42 = v27 == a2;
                if (v35 == v18)
                {
                  if (v27 == a2)
                  {
                    break;
                  }

                  v35 = a2 + 7;
                  while (1)
                  {
                    v64 = *v27;
                    v76 = v27[3];
                    v80 = v27[4];
                    v68 = v27[1];
                    v72 = v27[2];
                    v43 = *(v27 + 12);
                    v44 = v27[5];
                    *(v27 + 11) = 0;
                    *(v27 + 12) = 0;
                    *(v27 + 10) = 0;
                    v45 = *(v27 + 104);
                    v47 = a2[1];
                    v46 = a2[2];
                    v48 = a2[4];
                    v27[3] = a2[3];
                    v27[4] = v48;
                    v27[1] = v47;
                    v27[2] = v46;
                    *v27 = *a2;
                    v27[5] = a2[5];
                    *(v27 + 12) = *(a2 + 12);
                    *(v27 + 104) = *(a2 + 104);
                    *a2 = v64;
                    a2[3] = v76;
                    a2[4] = v80;
                    a2[1] = v68;
                    a2[2] = v72;
                    a2[5] = v44;
                    *(a2 + 12) = v43;
                    *(a2 + 104) = v45;
                    v27 += 7;
                    v42 = v27 == a2;
                    if (v35 != v18)
                    {
                      break;
                    }

                    if (v27 == a2)
                    {
                      goto LABEL_56;
                    }
                  }
                }

                if (v42)
                {
                  a2 = v35;
                }
              }
            }
          }
        }
      }

      else
      {
        v57 = v61 / 2;
        v18 = &a2[7 * (v61 / 2)];
        v19 = a2;
        if (a2 - a1 != v12)
        {
          v20 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1 - v12) >> 4);
          v19 = &a1[v12 / 0x10];
          do
          {
            v21 = *(a4 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            if ((*(*v21 + 48))(v21, v18, &v19[7 * (v20 >> 1)]))
            {
              v20 >>= 1;
            }

            else
            {
              v19 += 7 * (v20 >> 1) + 7;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
        }

        v56 = 0x6DB6DB6DB6DB6DB7 * ((v19 - a1 - v12) >> 4);
        v22 = &a2[7 * (v61 / 2)];
        if (a2 != v19)
        {
          goto LABEL_41;
        }
      }

LABEL_56:
      a5 = -v13 - v56;
      v49 = v61 - v57;
      if (v56 + v57 >= v61 - (v56 + v57) - v13)
      {
        result = sub_BFB920(v22, v18, a3, a4, -v13 - v56, v61 - v57, a7, a8);
        a2 = v19;
        a5 = v56;
        a3 = v22;
        a1 = (a1 + v12);
        v61 = v57;
        if (!v57)
        {
          return result;
        }
      }

      else
      {
        result = sub_BFB920(&a1[v12 / 0x10], v19, v22, a4, v56, v57, a7, a8);
        a1 = v22;
        a2 = v18;
        v61 -= v57;
        if (!v49)
        {
          return result;
        }
      }
    }
  }

  return result;
}

__n128 sub_BFC044(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v8 = *(a1 + 64);
    *(a3 + 48) = *(a1 + 48);
    *(a3 + 64) = v8;
    *(a3 + 16) = v6;
    *(a3 + 32) = v7;
    *a3 = *a1;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    result = *(a1 + 80);
    *(a3 + 80) = result;
    *(a3 + 96) = *(a1 + 96);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a3 + 104) = *(a1 + 104);
    v41 = 1;
    v10 = a1 + 112;
    if ((a1 + 112) != a2)
    {
      v12 = a3;
      do
      {
        while (1)
        {
          v16 = *(a4 + 24);
          if (!v16)
          {
LABEL_32:
            sub_2B7420();
          }

          v17 = v10;
          v18 = (v12 + 112);
          if ((*(*v16 + 48))(v16, v10, v12))
          {
            break;
          }

          *v18 = *v17;
          v13 = *(v17 + 16);
          v14 = *(v17 + 32);
          v15 = *(v17 + 64);
          *(v12 + 160) = *(v17 + 48);
          *(v12 + 176) = v15;
          *(v12 + 128) = v13;
          *(v12 + 144) = v14;
          *(v12 + 200) = 0;
          *(v12 + 208) = 0;
          *(v12 + 192) = 0;
          result = v5[12];
          *(v12 + 192) = result;
          *(v12 + 208) = v5[13].n128_u64[0];
          v5[12].n128_u64[0] = 0;
          v5[12].n128_u64[1] = 0;
          v5[13].n128_u64[0] = 0;
          *(v12 + 216) = v5[13].n128_u8[8];
          ++v41;
          v10 = v17 + 112;
          v12 += 112;
          v5 = v17;
          if ((v17 + 112) == a2)
          {
            return result;
          }
        }

        v19 = *(v12 + 48);
        *(v12 + 144) = *(v12 + 32);
        *(v12 + 160) = v19;
        v20 = *(v12 + 80);
        *(v12 + 176) = *(v12 + 64);
        v21 = *(v12 + 16);
        *v18 = *v12;
        *(v12 + 128) = v21;
        *(v12 + 192) = v20;
        *(v12 + 208) = *(v12 + 96);
        *(v12 + 80) = 0;
        *(v12 + 88) = 0;
        *(v12 + 216) = *(v12 + 104);
        ++v41;
        v22 = a3;
        *(v12 + 96) = 0;
        if (v12 != a3)
        {
          do
          {
            v24 = *(a4 + 24);
            if (!v24)
            {
              goto LABEL_32;
            }

            v25 = (v12 - 112);
            if (!(*(*v24 + 48))(v24, v17, v12 - 112))
            {
              v22 = v12;
              goto LABEL_22;
            }

            v26 = *(v12 - 64);
            *(v12 + 32) = *(v12 - 80);
            *(v12 + 48) = v26;
            *(v12 + 64) = *(v12 - 48);
            v27 = *(v12 - 96);
            *v12 = *v25;
            *(v12 + 16) = v27;
            v28 = (v12 + 80);
            v29 = *(v12 + 80);
            if (v29)
            {
              v30 = *(v12 + 88);
              v23 = *(v12 + 80);
              if (v30 != v29)
              {
                do
                {
                  v31 = *(v30 - 32);
                  if (v31)
                  {
                    *(v30 - 24) = v31;
                    operator delete(v31);
                  }

                  v30 -= 112;
                }

                while (v30 != v29);
                v23 = *v28;
              }

              *(v12 + 88) = v29;
              operator delete(v23);
              *v28 = 0;
              *(v12 + 88) = 0;
              *(v12 + 96) = 0;
            }

            *(v12 + 80) = *(v12 - 32);
            *(v12 + 96) = *(v12 - 16);
            *(v12 - 24) = 0;
            *(v12 - 16) = 0;
            *(v12 - 32) = 0;
            *(v12 + 104) = *(v12 - 8);
            v12 -= 112;
          }

          while (v25 != a3);
          v22 = a3;
        }

LABEL_22:
        *v22 = *v17;
        v32 = *(v17 + 16);
        v33 = *(v17 + 32);
        v34 = *(v17 + 64);
        *(v22 + 48) = *(v17 + 48);
        *(v22 + 64) = v34;
        *(v22 + 16) = v32;
        *(v22 + 32) = v33;
        v35 = (v22 + 80);
        v36 = *(v22 + 80);
        if (v36)
        {
          v37 = *(v22 + 88);
          v38 = *(v22 + 80);
          if (v37 != v36)
          {
            do
            {
              v39 = *(v37 - 32);
              if (v39)
              {
                *(v37 - 24) = v39;
                operator delete(v39);
              }

              v37 -= 112;
            }

            while (v37 != v36);
            v38 = *v35;
          }

          *(v22 + 88) = v36;
          operator delete(v38);
          *v35 = 0;
          *(v22 + 88) = 0;
          *(v22 + 96) = 0;
        }

        result = v5[12];
        *(v22 + 80) = result;
        *(v22 + 96) = v5[13].n128_u64[0];
        v5[12].n128_u64[0] = 0;
        v5[12].n128_u64[1] = 0;
        v5[13].n128_u64[0] = 0;
        *(v22 + 104) = v5[13].n128_u8[8];
        v10 = v17 + 112;
        v12 = v18;
        v5 = v17;
      }

      while ((v17 + 112) != a2);
    }
  }

  return result;
}

void sub_BFC384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFC398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFC3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFC3C0(void *a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6)
{
  v33 = 0;
  if (a1 == a2)
  {
LABEL_15:
    while (a3 != a4)
    {
      *a5 = *a3;
      v30 = *(a3 + 1);
      v31 = *(a3 + 2);
      v32 = *(a3 + 4);
      *(a5 + 3) = *(a3 + 3);
      *(a5 + 4) = v32;
      *(a5 + 1) = v30;
      *(a5 + 2) = v31;
      *(a5 + 11) = 0;
      *(a5 + 12) = 0;
      *(a5 + 10) = 0;
      result = *(a3 + 5);
      *(a5 + 5) = result;
      *(a5 + 12) = a3[12];
      a3[10] = 0;
      a3[11] = 0;
      a3[12] = 0;
      a5[104] = *(a3 + 104);
      a3 += 14;
      a5 += 112;
    }
  }

  else
  {
    v10 = a1;
    v11 = a5 + 104;
    while (a3 != a4)
    {
      v17 = *(a6 + 24);
      if (!v17)
      {
        sub_2B7420();
      }

      v18 = (*(*v17 + 48))(v17, a3, v10);
      v19 = v11 - 104;
      v20 = v11 - 24;
      if (v18)
      {
        *v19 = *a3;
        v21 = *(a3 + 1);
        v22 = *(a3 + 2);
        v23 = *(a3 + 4);
        *(v11 - 56) = *(a3 + 3);
        *(v11 - 40) = v23;
        *(v11 - 88) = v21;
        *(v11 - 72) = v22;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v20 = 0;
        result = *(a3 + 5);
        *(v11 - 24) = result;
        *(v11 - 1) = a3[12];
        a3[10] = 0;
        a3[11] = 0;
        a3[12] = 0;
        v16 = a3;
        a3 += 14;
      }

      else
      {
        *v19 = *v10;
        v12 = *(v10 + 1);
        v13 = *(v10 + 2);
        v14 = *(v10 + 4);
        *(v11 - 56) = *(v10 + 3);
        *(v11 - 40) = v14;
        *(v11 - 88) = v12;
        *(v11 - 72) = v13;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v20 = 0;
        result = *(v10 + 5);
        *(v11 - 24) = result;
        *(v11 - 1) = v10[12];
        v10[10] = 0;
        v10[11] = 0;
        v10[12] = 0;
        v16 = v10;
        v10 += 14;
      }

      *v11 = *(v16 + 104);
      v11 += 112;
      ++v33;
      if (v10 == a2)
      {
        a5 = v11 - 104;
        goto LABEL_15;
      }
    }

    if (v10 != a2)
    {
      v24 = 0;
      do
      {
        v25 = &v11[v24 * 8];
        v26 = &v10[v24];
        *(v25 - 104) = *&v10[v24];
        v27 = *&v10[v24 + 2];
        v28 = *&v10[v24 + 4];
        v29 = *&v10[v24 + 6];
        *(v25 - 40) = *&v10[v24 + 8];
        *(v25 - 56) = v29;
        *(v25 - 72) = v28;
        *(v25 - 88) = v27;
        *(v25 - 2) = 0;
        *(v25 - 1) = 0;
        *(v25 - 3) = 0;
        result = *&v10[v24 + 10];
        *(v25 - 24) = result;
        *(v25 - 1) = v10[v24 + 12];
        v26[10] = 0;
        v26[11] = 0;
        v26[12] = 0;
        *v25 = v10[v24 + 13];
        v24 += 14;
      }

      while (v26 + 14 != a2);
    }
  }

  return result;
}

void sub_BFC5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFC5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFC604(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v31 = &v32;
  v32 = 0;
  if (a5 > a6)
  {
    v10 = a7;
    if (a2 != a3)
    {
      v11 = 0;
      v10 = a7;
      v12 = a2;
      do
      {
        *v10 = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        *(v10 + 48) = v12[3];
        *(v10 + 64) = v15;
        *(v10 + 16) = v13;
        *(v10 + 32) = v14;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v10 + 80) = 0;
        *(v10 + 80) = v12[5];
        *(v10 + 96) = v12[6].n128_u64[0];
        v12[5].n128_u64[0] = 0;
        v12[5].n128_u64[1] = 0;
        v12[6].n128_u64[0] = 0;
        *(v10 + 104) = v12[6].n128_u8[8];
        ++v11;
        v12 += 7;
        v10 += 112;
      }

      while (v12 != a3);
      v32 = v11;
    }

    v29 = a4;
    sub_BFCA90(v10, v10, a7, a7, a2, a2, a1, a1, a3, a3, &v29);
    if (!a7)
    {
      return;
    }

LABEL_13:
    v22 = v31;
    v23 = *v31;
    if (*v31)
    {
      v24 = 0;
      do
      {
        v26 = *(a7 + 80);
        if (v26)
        {
          v27 = *(a7 + 88);
          v25 = *(a7 + 80);
          if (v27 != v26)
          {
            do
            {
              v28 = *(v27 - 32);
              if (v28)
              {
                *(v27 - 24) = v28;
                operator delete(v28);
              }

              v27 -= 112;
            }

            while (v27 != v26);
            v25 = *(a7 + 80);
          }

          *(a7 + 88) = v26;
          operator delete(v25);
          v23 = *v22;
        }

        ++v24;
        a7 += 112;
      }

      while (v24 < v23);
    }

    return;
  }

  v16 = a7;
  if (a1 != a2)
  {
    v17 = 0;
    v16 = a7;
    v18 = a1;
    do
    {
      *v16 = *v18;
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[4];
      *(v16 + 48) = v18[3];
      *(v16 + 64) = v21;
      *(v16 + 16) = v19;
      *(v16 + 32) = v20;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 80) = 0;
      *(v16 + 80) = v18[5];
      *(v16 + 96) = v18[6].n128_u64[0];
      v18[5].n128_u64[0] = 0;
      v18[5].n128_u64[1] = 0;
      v18[6].n128_u64[0] = 0;
      *(v16 + 104) = v18[6].n128_u8[8];
      ++v17;
      v18 += 7;
      v16 += 112;
    }

    while (v18 != a2);
    v32 = v17;
  }

  sub_BFC828(a7, v16, a2, a3, a1, a4);
  a7 = v30;
  if (v30)
  {
    goto LABEL_13;
  }
}

void sub_BFC800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFC814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFC828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a2)
  {
    v11 = a1;
    while (a3 != a4)
    {
      v14 = *(a6 + 24);
      if (!v14)
      {
        sub_2B7420();
      }

      if ((*(*v14 + 48))(v14, a3, v11))
      {
        *a5 = *a3;
        v15 = *(a3 + 16);
        v16 = *(a3 + 32);
        v17 = *(a3 + 64);
        *(a5 + 48) = *(a3 + 48);
        *(a5 + 64) = v17;
        *(a5 + 16) = v15;
        *(a5 + 32) = v16;
        v18 = *(a5 + 80);
        if (v18)
        {
          v19 = *(a5 + 88);
          v20 = *(a5 + 80);
          if (v19 != v18)
          {
            do
            {
              v21 = *(v19 - 32);
              if (v21)
              {
                *(v19 - 24) = v21;
                operator delete(v21);
              }

              v19 -= 112;
            }

            while (v19 != v18);
            v20 = *(a5 + 80);
          }

          *(a5 + 88) = v18;
          operator delete(v20);
          *(a5 + 80) = 0;
          *(a5 + 88) = 0;
          *(a5 + 96) = 0;
        }

        result = *(a3 + 80);
        *(a5 + 80) = result;
        *(a5 + 96) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(a5 + 104) = *(a3 + 104);
        a3 += 112;
        a5 += 112;
        if (v11 == a2)
        {
          return result;
        }
      }

      else
      {
        *a5 = *v11;
        v22 = *(v11 + 16);
        v23 = *(v11 + 32);
        v24 = *(v11 + 64);
        *(a5 + 48) = *(v11 + 48);
        *(a5 + 64) = v24;
        *(a5 + 16) = v22;
        *(a5 + 32) = v23;
        v25 = *(a5 + 80);
        if (v25)
        {
          v26 = *(a5 + 88);
          v12 = *(a5 + 80);
          if (v26 != v25)
          {
            do
            {
              v27 = *(v26 - 32);
              if (v27)
              {
                *(v26 - 24) = v27;
                operator delete(v27);
              }

              v26 -= 112;
            }

            while (v26 != v25);
            v12 = *(a5 + 80);
          }

          *(a5 + 88) = v25;
          operator delete(v12);
          *(a5 + 80) = 0;
          *(a5 + 88) = 0;
          *(a5 + 96) = 0;
        }

        result = *(v11 + 80);
        *(a5 + 80) = result;
        *(a5 + 96) = *(v11 + 96);
        *(v11 + 80) = 0;
        *(v11 + 88) = 0;
        *(v11 + 96) = 0;
        *(a5 + 104) = *(v11 + 104);
        v11 += 112;
        a5 += 112;
        if (v11 == a2)
        {
          return result;
        }
      }
    }

    do
    {
      *a5 = *v11;
      v29 = *(v11 + 16);
      v30 = *(v11 + 32);
      v31 = *(v11 + 64);
      *(a5 + 48) = *(v11 + 48);
      *(a5 + 64) = v31;
      *(a5 + 16) = v29;
      *(a5 + 32) = v30;
      v32 = (a5 + 80);
      v33 = *(a5 + 80);
      if (v33)
      {
        v34 = *(a5 + 88);
        v28 = *(a5 + 80);
        if (v34 != v33)
        {
          do
          {
            v35 = *(v34 - 32);
            if (v35)
            {
              *(v34 - 24) = v35;
              operator delete(v35);
            }

            v34 -= 112;
          }

          while (v34 != v33);
          v28 = *v32;
        }

        *(a5 + 88) = v33;
        operator delete(v28);
        *v32 = 0;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
      }

      result = *(v11 + 80);
      *(a5 + 80) = result;
      *(a5 + 96) = *(v11 + 96);
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 96) = 0;
      *(a5 + 104) = *(v11 + 104);
      v11 += 112;
      a5 += 112;
    }

    while (v11 != a2);
  }

  return result;
}

__n128 sub_BFCA90(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 *a8, uint64_t a9, _OWORD *a10, uint64_t a11)
{
  if (a2 == a4)
  {
    return result;
  }

  v14 = a2;
  while (1)
  {
    v19 = a10;
    if (a6 == a8)
    {
      break;
    }

    v20 = *(*a11 + 24);
    if (!v20)
    {
      sub_2B7420();
    }

    v21 = v14 - 7;
    a10 -= 7;
    v22 = (v19 - 2);
    if ((*(*v20 + 48))(v20, v14 - 7, a6 - 7))
    {
      *a10 = a6[-7];
      v23 = a6[-6];
      v24 = a6[-5];
      v25 = a6[-3];
      *(v19 - 4) = a6[-4];
      *(v19 - 3) = v25;
      *(v19 - 6) = v23;
      *(v19 - 5) = v24;
      v26 = *v22;
      if (!*v22)
      {
        v17 = a6;
        a6 -= 7;
        v21 = v14;
        goto LABEL_6;
      }

      v27 = *(v19 - 3);
      v16 = *v22;
      if (v27 != v26)
      {
        do
        {
          v28 = *(v27 - 4);
          if (v28)
          {
            *(v27 - 3) = v28;
            operator delete(v28);
          }

          v27 -= 112;
        }

        while (v27 != v26);
        v16 = *v22;
      }

      *(v19 - 3) = v26;
      v17 = a6;
      a6 -= 7;
      v21 = v14;
    }

    else
    {
      *a10 = *v21;
      v29 = *(v14 - 6);
      v30 = *(v14 - 5);
      v31 = *(v14 - 3);
      *(v19 - 4) = *(v14 - 4);
      *(v19 - 3) = v31;
      *(v19 - 6) = v29;
      *(v19 - 5) = v30;
      v32 = *v22;
      if (!*v22)
      {
        v17 = v14;
        goto LABEL_6;
      }

      v33 = *(v19 - 3);
      v16 = *v22;
      if (v33 != v32)
      {
        do
        {
          v34 = *(v33 - 4);
          if (v34)
          {
            *(v33 - 3) = v34;
            operator delete(v34);
          }

          v33 -= 112;
        }

        while (v33 != v32);
        v16 = *v22;
      }

      *(v19 - 3) = v32;
      v17 = v14;
    }

    operator delete(v16);
    *v22 = 0;
    *(v19 - 3) = 0;
    *(v19 - 2) = 0;
LABEL_6:
    result = v17[-2];
    *(v19 - 2) = result;
    *(v19 - 2) = v17[-1].n128_u64[0];
    v17[-2].n128_u64[0] = 0;
    v17[-2].n128_u64[1] = 0;
    v17[-1].n128_u64[0] = 0;
    *(v19 - 8) = v17[-1].n128_u8[8];
    v14 = v21;
    if (v21 == a4)
    {
      return result;
    }
  }

  for (; v14 != a4; v14 -= 7)
  {
    v36 = (v19 - 2);
    v37 = *(v19 - 4);
    *(v19 - 7) = *(v14 - 7);
    v38 = *(v14 - 6);
    v39 = *(v14 - 5);
    v40 = *(v14 - 3);
    *(v19 - 4) = *(v14 - 4);
    *(v19 - 3) = v40;
    *(v19 - 6) = v38;
    *(v19 - 5) = v39;
    if (v37)
    {
      v41 = *(v19 - 3);
      v35 = v37;
      if (v41 != v37)
      {
        do
        {
          v42 = *(v41 - 4);
          if (v42)
          {
            *(v41 - 3) = v42;
            operator delete(v42);
          }

          v41 -= 112;
        }

        while (v41 != v37);
        v35 = *v36;
      }

      *(v19 - 3) = v37;
      operator delete(v35);
      *v36 = 0;
      *(v19 - 3) = 0;
      *(v19 - 2) = 0;
    }

    result = *(v14 - 2);
    *(v19 - 2) = result;
    *(v19 - 2) = *(v14 - 2);
    *(v14 - 4) = 0;
    *(v14 - 3) = 0;
    *(v14 - 2) = 0;
    *(v19 - 8) = *(v14 - 8);
    v19 -= 7;
  }

  return result;
}

uint64_t *sub_BFCD1C(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v5 = (0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v4 ^ (v4 >> 33))) >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 5) == HIDWORD(v3) && *(v10 + 4) == v3)
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 5) != HIDWORD(v3) || *(v10 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v10;
}

void *sub_BFD090(void *a1)
{
  *a1 = off_26721F8;
  v2 = a1[4];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_BFD0F8(void *a1)
{
  *a1 = off_26721F8;
  v2 = a1[4];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete();
}

uint64_t sub_BFD1FC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_26721F8;
  a2[1] = v2;
  return sub_BF4B50((a2 + 2), a1 + 16);
}

void sub_BFD22C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_BFD28C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = __p[2];
  __p[2] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete(__p);
}

unint64_t sub_BFD2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = sub_BF4FF0(v6, (a1 + 16), a2 + 124);
  v8 = *v6;
  v9 = sub_BD5F34((*v6 + 4136), *(a2 + 152), *(a2 + 172));
  if (HIDWORD(v9))
  {
    v10 = v9 == 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_6;
  }

  v12 = sub_BCAC94(*(v8 + 4136) + 24, v9, 0, "routing direction name");
  v13 = (v12 - *v12);
  if (*v13 < 5u)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = v13[2];
    if (v14)
    {
      LODWORD(v14) = *(v12 + v14);
      if (v14 == -1)
      {
LABEL_6:
        v47 = 0;
        v11 = 0;
        goto LABEL_13;
      }
    }
  }

  LODWORD(v47) = v14 & 0xFFFFFF00;
  HIDWORD(v47) = v14;
  v11 = 1;
LABEL_13:
  v15 = *v6;
  v16 = sub_BD5DA0((*v6 + 4136), *(a2 + 152), *(a2 + 172));
  if (HIDWORD(v16))
  {
    v17 = v16 == 0xFFFFFFFFLL;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_18;
  }

  v19 = sub_BCAE50(*(v15 + 4136) + 24, v16, 0, "routing headsign");
  v20 = (v19 - *v19);
  if (*v20 < 5u)
  {
    LODWORD(v21) = 0;
  }

  else
  {
    v21 = v20[2];
    if (v21)
    {
      LODWORD(v21) = *(v19 + v21);
      if (v21 == -1)
      {
LABEL_18:
        v46 = 0;
        v18 = 0;
        goto LABEL_25;
      }
    }
  }

  LODWORD(v46) = v21 & 0xFFFFFF00;
  HIDWORD(v46) = v21;
  v18 = 1;
LABEL_25:
  v22 = sub_BF4FF0(v6, (a1 + 16), a3 + 124);
  v23 = *v6;
  v24 = sub_BD5F34((*v6 + 4136), *(a3 + 152), *(a3 + 172));
  if (HIDWORD(v24))
  {
    v25 = v24 == 0xFFFFFFFFLL;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_30;
  }

  v29 = sub_BCAC94(*(v23 + 4136) + 24, v24, 0, "routing direction name");
  v30 = (v29 - *v29);
  if (*v30 < 5u)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    v31 = v30[2];
    if (v31)
    {
      LODWORD(v31) = *(v29 + v31);
      if (v31 == -1)
      {
LABEL_30:
        v26 = 0;
        v27 = 0;
        v28 = 0;
        goto LABEL_37;
      }
    }
  }

  v28 = v31 & 0xFFFFFF00;
  v26 = v31;
  v27 = 1;
LABEL_37:
  v32 = *v6;
  v33 = sub_BD5DA0((v32 + 4136), *(a3 + 152), *(a3 + 172));
  LODWORD(v34) = 0;
  if (!HIDWORD(v33))
  {
    v35 = 0;
    v36 = 0;
LABEL_47:
    v39 = 255;
    if (v7 >= v22)
    {
      v39 = 1;
    }

    if (v7 == v22)
    {
      goto LABEL_55;
    }

    return v39 >> 7;
  }

  v35 = 0;
  v36 = 0;
  if (v33 == 0xFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  v37 = sub_BCAE50(*(v32 + 4136) + 24, v33, 0, "routing headsign");
  v38 = (v37 - *v37);
  if (*v38 < 5u)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = v38[2];
    if (v34)
    {
      LODWORD(v34) = *(v37 + v34);
      if (v34 == -1)
      {
        LODWORD(v34) = 0;
        v35 = 0;
        v36 = 0;
        v39 = 255;
        if (v7 >= v22)
        {
          v39 = 1;
        }

        if (v7 != v22)
        {
          return v39 >> 7;
        }

LABEL_55:
        if ((v11 & v27) == 1)
        {
          if ((v47 | HIDWORD(v47)) >= (v28 | v26))
          {
            v39 = 1;
          }

          else
          {
            v39 = 255;
          }

          if ((v47 | HIDWORD(v47)) != (v28 | v26))
          {
            return v39 >> 7;
          }
        }

        else
        {
          v39 = 255;
          if ((v27 & (v11 ^ 1)) == 0)
          {
            v39 = 1;
          }

          if ((v11 | v27))
          {
            return v39 >> 7;
          }
        }

        if ((v18 & v35) == 1)
        {
          v40 = v36 | v34;
          v41 = (v46 | HIDWORD(v46)) >= v40;
          v42 = (v46 | HIDWORD(v46)) == v40;
          v43 = 255;
          if (v41)
          {
            v43 = 1;
          }

          if (v42)
          {
            v39 = 0;
          }

          else
          {
            v39 = v43;
          }
        }

        else
        {
          v44 = 255;
          if ((v35 & (v18 ^ 1)) == 0)
          {
            v44 = 1;
          }

          if (v18 | v35)
          {
            v39 = v44;
          }

          else
          {
            v39 = 0;
          }
        }

        return v39 >> 7;
      }
    }
  }

  v36 = v34 & 0xFFFFFF00;
  LODWORD(v34) = v34;
  v35 = 1;
  v39 = 255;
  if (v7 >= v22)
  {
    v39 = 1;
  }

  if (v7 == v22)
  {
    goto LABEL_55;
  }

  return v39 >> 7;
}

uint64_t sub_BFD698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_21schedule_comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_21schedule_comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_21schedule_comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_21schedule_comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_BFD710(void *a1)
{
  *a1 = off_2672288;
  v2 = a1[4];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_BFD778(void *a1)
{
  *a1 = off_2672288;
  v2 = a1[4];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete();
}

uint64_t sub_BFD87C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_2672288;
  a2[1] = v2;
  return sub_BF4B50((a2 + 2), a1 + 16);
}

void sub_BFD8AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_BFD90C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = __p[2];
  __p[2] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete(__p);
}

BOOL sub_BFD968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = sub_BF4FF0(v5, (a1 + 16), a2 + 96);
  return v6 < sub_BF4FF0(v5, (a1 + 16), a3 + 96);
}

uint64_t sub_BFD9C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_17cell_comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_17cell_comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_17cell_comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_24SpaScheduleLookupRequestERKNS2_17cell_comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_BFDAB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_2672318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_BFDAE4(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v5 = *(a1 + 16);
  v6 = sub_BDE550((*(a1 + 8) + 48), *a2);
  v7 = sub_BDE550((*(a1 + 8) + 48), *a3);
  v8 = *v5;
  v9 = *(v6 + 172);
  v10 = sub_A57920((*v5 + 4136), *(v6 + 152));
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 5)
  {
    v13 = 0;
    goto LABEL_6;
  }

  if (!v11[2])
  {
    v13 = 0;
    if (v12 >= 9)
    {
      goto LABEL_83;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v13 = v10 + v11[2] + *(v10 + v11[2]);
  if (v12 < 9)
  {
    goto LABEL_6;
  }

LABEL_83:
  v67 = v11[4];
  if (!v67)
  {
    goto LABEL_6;
  }

  v14 = (v10 + v67 + *(v10 + v67));
LABEL_7:
  v15 = sub_A571D4(v14, v9);
  v16 = sub_92FC60(*(v8 + 4056) + 24, *&v13[8 * *(v15 + 14) + 4], 0, "line");
  v17 = (v16 - *v16);
  if (*v17 >= 0x29u)
  {
    v18 = v17[20];
    if (v18)
    {
      if (*(v16 + v18))
      {
        goto LABEL_15;
      }
    }
  }

  v19 = *v5;
  v20 = sub_BD5F34((*v5 + 4136), *(v6 + 152), *(v6 + 172));
  if (!HIDWORD(v20) || v20 == 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v22 = sub_BCAC94(*(v19 + 4136) + 24, v20, 0, "routing direction name");
  v23 = (v22 - *v22);
  if (*v23 < 5u)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[2];
    if (v24)
    {
      LODWORD(v24) = *(v22 + v24);
      if (v24 == -1)
      {
LABEL_15:
        v70 = 0;
        v69 = 0;
        goto LABEL_22;
      }
    }
  }

  v69 = v24 & 0xFFFFFF00;
  LODWORD(v70) = v24;
  HIDWORD(v70) = 1;
LABEL_22:
  v25 = *v5;
  v26 = *(v7 + 172);
  v27 = sub_A57920((*v5 + 4136), *(v7 + 152));
  v28 = (v27 - *v27);
  v29 = *v28;
  if (v29 < 5)
  {
    v30 = 0;
    goto LABEL_27;
  }

  if (v28[2])
  {
    v30 = v27 + v28[2] + *(v27 + v28[2]);
    if (v29 < 9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v30 = 0;
    if (v29 < 9)
    {
      goto LABEL_27;
    }
  }

  v68 = v28[4];
  if (v68)
  {
    v31 = (v27 + v68 + *(v27 + v68));
    goto LABEL_28;
  }

LABEL_27:
  v31 = 0;
LABEL_28:
  v32 = sub_A571D4(v31, v26);
  v33 = sub_92FC60(*(v25 + 4056) + 24, *&v30[8 * *(v32 + 14) + 4], 0, "line");
  v34 = (v33 - *v33);
  if (*v34 >= 0x29u)
  {
    v35 = v34[20];
    if (v35)
    {
      if (*(v33 + v35))
      {
        goto LABEL_31;
      }
    }
  }

  v39 = *v5;
  v40 = sub_BD5F34((*v5 + 4136), *(v7 + 152), *(v7 + 172));
  v36 = 0;
  if (HIDWORD(v40))
  {
    v37 = 0;
    v38 = 0;
    if (v40 != 0xFFFFFFFFLL)
    {
      v41 = sub_BCAC94(*(v39 + 4136) + 24, v40, 0, "routing direction name");
      v42 = (v41 - *v41);
      if (*v42 < 5u)
      {
        LODWORD(v43) = 0;
      }

      else
      {
        v43 = v42[2];
        if (v43)
        {
          LODWORD(v43) = *(v41 + v43);
          if (v43 == -1)
          {
LABEL_31:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            goto LABEL_41;
          }
        }
      }

      v38 = v43 & 0xFFFFFF00;
      v36 = v43;
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

LABEL_41:
  v44 = *v5;
  v45 = sub_BD5DA0((*v5 + 4136), *(v6 + 152), *(v6 + 172));
  v46 = 0;
  if (HIDWORD(v45))
  {
    v47 = 0;
    v48 = 0;
    if (v45 == 0xFFFFFFFFLL)
    {
      goto LABEL_50;
    }

    v49 = sub_BCAE50(*(v44 + 4136) + 24, v45, 0, "routing headsign");
    v50 = (v49 - *v49);
    if (*v50 < 5u)
    {
      LODWORD(v51) = 0;
    }

    else
    {
      v51 = v50[2];
      if (v51)
      {
        LODWORD(v51) = *(v49 + v51);
        if (v51 == -1)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          goto LABEL_50;
        }
      }
    }

    v48 = v51 & 0xFFFFFF00;
    v46 = v51;
    v47 = 1;
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

LABEL_50:
  v52 = *v5;
  v53 = sub_BD5DA0((v52 + 4136), *(v7 + 152), *(v7 + 172));
  LODWORD(v54) = 0;
  if (!HIDWORD(v53))
  {
    v55 = 0;
    v56 = 0;
LABEL_58:
    v59 = HIDWORD(v70);
    if ((HIDWORD(v70) & v37) != 1)
    {
      goto LABEL_66;
    }

    goto LABEL_59;
  }

  v55 = 0;
  v56 = 0;
  if (v53 == 0xFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  v57 = sub_BCAE50(*(v52 + 4136) + 24, v53, 0, "routing headsign");
  v58 = (v57 - *v57);
  if (*v58 < 5u)
  {
    LODWORD(v54) = 0;
    goto LABEL_65;
  }

  v54 = v58[2];
  if (!v54 || (LODWORD(v54) = *(v57 + v54), v54 != -1))
  {
LABEL_65:
    v56 = v54 & 0xFFFFFF00;
    LODWORD(v54) = v54;
    v55 = 1;
    v59 = HIDWORD(v70);
    if ((HIDWORD(v70) & v37) != 1)
    {
      goto LABEL_66;
    }

LABEL_59:
    if ((v69 | v70) >= (v38 | v36))
    {
      v60 = 1;
    }

    else
    {
      v60 = 255;
    }

    if ((v69 | v70) != (v38 | v36))
    {
      return v60 >> 7;
    }

    goto LABEL_69;
  }

  LODWORD(v54) = 0;
  v55 = 0;
  v56 = 0;
  v59 = HIDWORD(v70);
  if ((HIDWORD(v70) & v37) == 1)
  {
    goto LABEL_59;
  }

LABEL_66:
  v60 = 255;
  if ((v37 & (v59 ^ 1)) == 0)
  {
    v60 = 1;
  }

  if (((v59 | v37) & 1) == 0)
  {
LABEL_69:
    if ((v47 & v55) == 1)
    {
      v61 = v56 | v54;
      v62 = (v48 | v46) >= v61;
      v63 = (v48 | v46) == v61;
      v64 = 255;
      if (v62)
      {
        v64 = 1;
      }

      if (v63)
      {
        v60 = 0;
      }

      else
      {
        v60 = v64;
      }
    }

    else
    {
      v65 = 255;
      if ((v55 & (v47 ^ 1)) == 0)
      {
        v65 = 1;
      }

      if (v47 | v55)
      {
        v60 = v65;
      }

      else
      {
        v60 = 0;
      }
    }
  }

  return v60 >> 7;
}

uint64_t sub_BFE038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_BFE124(uint64_t a1, uint64_t a2)
{
  *a2 = off_26723A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_BFE154(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v5 = *(a1 + 16);
  v6 = sub_BDE550((*(a1 + 8) + 48), *a2);
  v7 = sub_BDE550((*(a1 + 8) + 48), *a3);
  v8 = *v5;
  v9 = *(v6 + 172);
  v10 = sub_A57920((*v5 + 4136), *(v6 + 152));
  v11 = (v10 - *v10);
  v12 = *v11;
  if (v12 < 5)
  {
    v13 = 0;
    goto LABEL_6;
  }

  if (!v11[2])
  {
    v13 = 0;
    if (v12 >= 9)
    {
      goto LABEL_89;
    }

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v13 = v10 + v11[2] + *(v10 + v11[2]);
  if (v12 < 9)
  {
    goto LABEL_6;
  }

LABEL_89:
  v80 = v11[4];
  if (!v80)
  {
    goto LABEL_6;
  }

  v14 = (v10 + v80 + *(v10 + v80));
LABEL_7:
  v15 = sub_A571D4(v14, v9);
  v16 = sub_92FC60(*(v8 + 4056) + 24, *&v13[8 * *(v15 + 14) + 4], 0, "line");
  v17 = (v16 - *v16);
  if (*v17 >= 0x29u)
  {
    v18 = v17[20];
    if (v18)
    {
      if (*(v16 + v18))
      {
        goto LABEL_15;
      }
    }
  }

  v19 = *v5;
  v20 = sub_BD5F34((*v5 + 4136), *(v6 + 152), *(v6 + 172));
  if (!HIDWORD(v20) || v20 == 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v22 = sub_BCAC94(*(v19 + 4136) + 24, v20, 0, "routing direction name");
  v23 = (v22 - *v22);
  if (*v23 < 5u)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v24 = v23[2];
    if (v24)
    {
      LODWORD(v24) = *(v22 + v24);
      if (v24 == -1)
      {
LABEL_15:
        v90 = 0;
        v92 = 0;
        goto LABEL_22;
      }
    }
  }

  LODWORD(v90) = v24 & 0xFFFFFF00;
  HIDWORD(v90) = v24;
  v92 = 1;
LABEL_22:
  v25 = *v5;
  v26 = *(v7 + 172);
  v27 = sub_A57920((*v5 + 4136), *(v7 + 152));
  v28 = (v27 - *v27);
  v29 = *v28;
  if (v29 < 5)
  {
    v30 = 0;
    goto LABEL_27;
  }

  if (v28[2])
  {
    v30 = v27 + v28[2] + *(v27 + v28[2]);
    if (v29 < 9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v30 = 0;
    if (v29 < 9)
    {
      goto LABEL_27;
    }
  }

  v81 = v28[4];
  if (v81)
  {
    v31 = (v27 + v81 + *(v27 + v81));
    goto LABEL_28;
  }

LABEL_27:
  v31 = 0;
LABEL_28:
  v32 = sub_A571D4(v31, v26);
  v33 = sub_92FC60(*(v25 + 4056) + 24, *&v30[8 * *(v32 + 14) + 4], 0, "line");
  v34 = (v33 - *v33);
  if (*v34 >= 0x29u)
  {
    v35 = v34[20];
    if (v35)
    {
      if (*(v33 + v35))
      {
        goto LABEL_31;
      }
    }
  }

  v39 = *v5;
  v40 = sub_BD5F34((*v5 + 4136), *(v7 + 152), *(v7 + 172));
  v36 = 0;
  if (HIDWORD(v40))
  {
    v37 = 0;
    v38 = 0;
    if (v40 != 0xFFFFFFFFLL)
    {
      v41 = sub_BCAC94(*(v39 + 4136) + 24, v40, 0, "routing direction name");
      v42 = (v41 - *v41);
      if (*v42 < 5u)
      {
        LODWORD(v43) = 0;
      }

      else
      {
        v43 = v42[2];
        if (v43)
        {
          LODWORD(v43) = *(v41 + v43);
          if (v43 == -1)
          {
LABEL_31:
            v36 = 0;
            v37 = 0;
            v38 = 0;
            goto LABEL_41;
          }
        }
      }

      v38 = v43 & 0xFFFFFF00;
      v36 = v43;
      v37 = 1;
    }
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

LABEL_41:
  v89 = v38;
  v91 = v37;
  v44 = *(v6 + 172);
  v45 = sub_A57920((*v5 + 4136), *(v6 + 152));
  v46 = (v45 - *v45);
  v47 = *v46;
  if (v47 < 5)
  {
    v48 = 0;
    goto LABEL_46;
  }

  if (!v46[2])
  {
    v48 = 0;
    if (v47 >= 9)
    {
      goto LABEL_95;
    }

LABEL_46:
    v49 = 0;
    goto LABEL_47;
  }

  v48 = v45 + v46[2] + *(v45 + v46[2]);
  if (v47 < 9)
  {
    goto LABEL_46;
  }

LABEL_95:
  v82 = v46[4];
  if (!v82)
  {
    goto LABEL_46;
  }

  v49 = (v45 + v82 + *(v45 + v82));
LABEL_47:
  v50 = *&v48[8 * *(sub_A571D4(v49, v44) + 14) + 4];
  v51 = *v5;
  v52 = sub_BD5DA0((*v5 + 4136), *(v6 + 152), *(v6 + 172));
  v53 = 0;
  if (HIDWORD(v52))
  {
    v54 = 0;
    v55 = 0;
    if (v52 == 0xFFFFFFFFLL)
    {
      goto LABEL_56;
    }

    v56 = sub_BCAE50(*(v51 + 4136) + 24, v52, 0, "routing headsign");
    v57 = (v56 - *v56);
    if (*v57 < 5u)
    {
      LODWORD(v58) = 0;
    }

    else
    {
      v58 = v57[2];
      if (v58)
      {
        LODWORD(v58) = *(v56 + v58);
        if (v58 == -1)
        {
          v53 = 0;
          v54 = 0;
          v55 = 0;
          goto LABEL_56;
        }
      }
    }

    v55 = v58 & 0xFFFFFF00;
    v53 = v58;
    v54 = 1;
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

LABEL_56:
  v59 = __ROR8__(v50, 32);
  v60 = *(v7 + 172);
  v61 = sub_A57920((*v5 + 4136), *(v7 + 152));
  v62 = (v61 - *v61);
  v63 = *v62;
  if (v63 < 5)
  {
    v64 = 0;
    goto LABEL_61;
  }

  if (!v62[2])
  {
    v64 = 0;
    if (v63 >= 9)
    {
      goto LABEL_98;
    }

LABEL_61:
    v65 = 0;
    goto LABEL_62;
  }

  v64 = v61 + v62[2] + *(v61 + v62[2]);
  if (v63 < 9)
  {
    goto LABEL_61;
  }

LABEL_98:
  v83 = v62[4];
  if (!v83)
  {
    goto LABEL_61;
  }

  v65 = (v61 + v83 + *(v61 + v83));
LABEL_62:
  v66 = __ROR8__(*&v64[8 * *(sub_A571D4(v65, v60) + 14) + 4], 32);
  v67 = *v5;
  v68 = sub_BD5DA0((v67 + 4136), *(v7 + 152), *(v7 + 172));
  LODWORD(v69) = 0;
  if (HIDWORD(v68))
  {
    v70 = 0;
    v71 = 0;
    if (v68 == 0xFFFFFFFFLL)
    {
      goto LABEL_71;
    }

    v72 = sub_BCAE50(*(v67 + 4136) + 24, v68, 0, "routing headsign");
    v73 = (v72 - *v72);
    if (*v73 < 5u)
    {
      LODWORD(v69) = 0;
    }

    else
    {
      v69 = v73[2];
      if (v69)
      {
        LODWORD(v69) = *(v72 + v69);
        if (v69 == -1)
        {
          LODWORD(v69) = 0;
          v70 = 0;
          v71 = 0;
          goto LABEL_71;
        }
      }
    }

    v71 = v69 & 0xFFFFFF00;
    LODWORD(v69) = v69;
    v70 = 1;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

LABEL_71:
  v74 = HIDWORD(v59);
  v75 = HIDWORD(v66);
  v76 = v59 < v66;
  if (HIDWORD(v59) != HIDWORD(v66))
  {
    v76 = HIDWORD(v59) < HIDWORD(v66);
  }

  if (v76)
  {
    v77 = 255;
    return v77 >> 7;
  }

  if (v74 == v75)
  {
    v78 = v66 < v59;
  }

  else
  {
    v78 = v75 < v74;
  }

  if (v78)
  {
    v77 = 1;
    return v77 >> 7;
  }

  if ((v92 & v91) == 1)
  {
    if ((v90 | HIDWORD(v90)) < (v89 | v36))
    {
      v79 = -1;
    }

    else
    {
      v79 = 1;
    }

    if ((v90 | HIDWORD(v90)) != (v89 | v36))
    {
LABEL_85:
      v77 = 255;
      if (v79 >= 0)
      {
        v77 = 1;
      }

      return v77 >> 7;
    }
  }

  else
  {
    if ((v91 & (v92 ^ 1)) != 0)
    {
      v79 = -1;
    }

    else
    {
      v79 = 1;
    }

    if ((v92 | v91) == 1)
    {
      goto LABEL_85;
    }
  }

  if ((v54 & v70) == 1)
  {
    v84 = v71 | v69;
    v85 = (v55 | v53) == v84;
    if ((v55 | v53) < v84)
    {
      v86 = -1;
    }

    else
    {
      v86 = 1;
    }

    if (v85)
    {
      v86 = 0;
    }
  }

  else
  {
    if ((v70 & (v54 ^ 1)) != 0)
    {
      v86 = -1;
    }

    else
    {
      v86 = 1;
    }

    if (!(v54 | v70))
    {
      v86 = 0;
    }
  }

  v87 = 255;
  if (v86 >= 0)
  {
    v87 = 1;
  }

  if (v86)
  {
    v77 = v87;
  }

  else
  {
    v77 = 0;
  }

  return v77 >> 7;
}

uint64_t sub_BFE830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS2_23cell_entry_comparator_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BFE944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_BFE9BC(void *a1)
{
  *a1 = off_26724B8;
  v2 = a1[5];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_BFEA24(void *a1)
{
  *a1 = off_26724B8;
  v2 = a1[5];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete();
}

uint64_t sub_BFEB30(uint64_t a1, uint64_t a2)
{
  *a2 = off_26724B8;
  *(a2 + 8) = *(a1 + 8);
  return sub_BF4B50(a2 + 24, a1 + 24);
}

void sub_BFEB64(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_BFEBC4(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = __p[3];
  __p[3] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  operator delete(__p);
}

BOOL sub_BFEC20(void *a1, double *a2, double *a3)
{
  v6 = a1[1];
  v7 = sub_A5C314((a1[2] + 24), *a2);
  v8 = sub_A5C314((a1[2] + 24), *a3);
  v9 = sub_BF4FF0(v6, a1 + 3, v7 + 96);
  v10 = a2[1];
  v11 = sub_BF4FF0(v6, a1 + 3, v8 + 96);
  if (v9 == v11)
  {
    return v10 > a3[1];
  }

  else
  {
    return v9 < v11;
  }
}

uint64_t sub_BFECC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS1_25SpaScheduleLookupResponseERKNS1_16SpaScheduleGroupERKNS2_24group_entry_comparator_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BFEDDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_18group_comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_18group_comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_18group_comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_18group_comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BFEEF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_BFEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 104))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a3 + 104) == 0;
  }

  return !v3;
}

uint64_t sub_BFF008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing16journey_planning22ScheduleStableOrdering23get_comparator_functionERKNS2_21category_comparator_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_BFF080(uint64_t result@<X0>, int **a2@<X1>, int **a3@<X2>, char **a4@<X8>)
{
  v4 = *(result + 12);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_C03074(a2, a3, (*(result + 4) - 1), a4, *(result + 16));
        return;
      }

      goto LABEL_8;
    }

    sub_C028E8(a2, a3, (*(result + 4) - 1), a4, *(result + 16));
  }

  else
  {
    if (v4)
    {
      if (v4 == 1)
      {
        sub_C0200C(a2, a3, (*(result + 4) - 1), a4);
        return;
      }

LABEL_8:
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    sub_C01820(a2, a3, (*(result + 4) - 1), a4);
  }
}

unsigned int *sub_BFF124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  *a3 = v6;
  *(a3 + 16) = 0x7FFFFFFF;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v7 = *(a2 + 28);
  v8 = *(a2 + 36);
  v9 = *(a2 + 48);
  v10 = sub_A5706C((*(a1 + 48) + 4136), v7);
  v11 = v10;
  v12 = &v10[-*v10];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (v13)
    {
      v13 += &v10[*&v10[v13]];
    }
  }

  v14 = (v13 + 4 * v7 + 4 + *(v13 + 4 * v7 + 4));
  v15 = (v14 - *v14);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = (v14 + v16 + *(v14 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_A7AC40(v17, v8);
  v19 = (v11 - *v11);
  if (*v19 < 7u)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19[3];
    if (v20)
    {
      v20 = (v20 + v11 + *(v20 + v11));
    }
  }

  v21 = sub_A7AEE0(v20, v18[1] + v9)[1];
  *a3 = sub_A7AB44((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 36), *(a2 + 40)) + v21;
  *(a3 + 4) = sub_A7AA48((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 36), *(a2 + 40)) + v21;
  v22 = *(a1 + 48);
  v23 = *(a2 + 28);
  v24 = *(a2 + 36);
  v25 = *(a2 + 40);
  v26 = sub_A5706C((v22 + 4136), v23);
  v27 = v26;
  v28 = &v26[-*v26];
  if (*v28 < 5u)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 2);
    if (v29)
    {
      v29 += &v26[*&v26[v29]];
    }
  }

  v30 = (v29 + 4 * v23 + 4 + *(v29 + 4 * v23 + 4));
  v31 = (v30 - *v30);
  if (*v31 >= 7u && (v32 = v31[3]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_A7AC40(v33, v24);
  v35 = (v27 - *v27);
  if (*v35 < 9u)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35[4];
    if (v36)
    {
      v36 = (v36 + v27 + *(v36 + v27));
    }
  }

  result = sub_A7AD90(v36, v25 + (v34[2] >> 8));
  v38 = *result;
  v39 = 10 * *result;
  *(a3 + 12) = v39;
  *(a3 + 16) = v39;
  *(a3 + 8) = v39;
  if (v38)
  {
    v40 = ((10 * (*(a3 + 4) - *a3)) / v39);
  }

  else
  {
    v40 = 0;
  }

  *(a3 + 24) = v40;
  *(a3 + 32) = 0;
  return result;
}

unsigned int *sub_BFF3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = 0x8000000080000000;
  *(&v6 + 1) = 0x8000000080000000;
  *a3 = v6;
  *(a3 + 16) = 0x7FFFFFFF;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 52);
  v10 = sub_A5706C((*(a1 + 48) + 4136), v7);
  v11 = v10;
  v12 = &v10[-*v10];
  if (*v12 < 5u)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v12 + 2);
    if (v13)
    {
      v13 += &v10[*&v10[v13]];
    }
  }

  v14 = (v13 + 4 * v7 + 4 + *(v13 + 4 * v7 + 4));
  v15 = (v14 - *v14);
  if (*v15 >= 7u && (v16 = v15[3]) != 0)
  {
    v17 = (v14 + v16 + *(v14 + v16));
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_A7AC40(v17, v8);
  v19 = (v11 - *v11);
  if (*v19 < 7u)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19[3];
    if (v20)
    {
      v20 = (v20 + v11 + *(v20 + v11));
    }
  }

  v21 = sub_A7AEE0(v20, v18[1] + v9)[1];
  *a3 = sub_A7AB44((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 40), *(a2 + 44)) + v21;
  *(a3 + 4) = sub_A7AA48((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 40), *(a2 + 44)) + v21;
  v22 = *(a1 + 48);
  v23 = *(a2 + 32);
  v24 = *(a2 + 40);
  v25 = *(a2 + 44);
  v26 = sub_A5706C((v22 + 4136), v23);
  v27 = v26;
  v28 = &v26[-*v26];
  if (*v28 < 5u)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 2);
    if (v29)
    {
      v29 += &v26[*&v26[v29]];
    }
  }

  v30 = (v29 + 4 * v23 + 4 + *(v29 + 4 * v23 + 4));
  v31 = (v30 - *v30);
  if (*v31 >= 7u && (v32 = v31[3]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  v34 = sub_A7AC40(v33, v24);
  v35 = (v27 - *v27);
  if (*v35 < 9u)
  {
    v36 = 0;
  }

  else
  {
    v36 = v35[4];
    if (v36)
    {
      v36 = (v36 + v27 + *(v36 + v27));
    }
  }

  result = sub_A7AD90(v36, v25 + (v34[2] >> 8));
  v38 = *result;
  v39 = 10 * *result;
  *(a3 + 12) = v39;
  *(a3 + 16) = v39;
  *(a3 + 8) = v39;
  if (v38)
  {
    v40 = ((10 * (*(a3 + 4) - *a3)) / v39);
  }

  else
  {
    v40 = 0;
  }

  *(a3 + 24) = v40;
  *(a3 + 32) = 0;
  return result;
}

void sub_BFFC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_BFFD8C(uint64_t a1, void *a2)
{
  v5 = 20;
  strcpy(__p, "scheduled_properties");
  v3 = sub_5F5AC(a2, __p);
  sub_BFF644(a1, v3);
}

void sub_BFFF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BFFFBC(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  for (i = *(a2 + 16); v3 != i; v3 += 37)
  {
    v7 = *(a3 + 24);
    if (!v7)
    {
      sub_2B7420();
    }

    if ((*(*v7 + 48))(v7, v3))
    {
      sub_C0004C(result, v3);
    }
  }
}

void sub_C0004C(_BYTE *a1, void *a2)
{
  v4 = sub_A51E58(a2, 1);
  if (HIDWORD(v4) == 0x7FFFFFFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = HIDWORD(v4);
  }

  if (v5 != 0x7FFFFFFF)
  {
    v7 = a2[28];
    v6 = a2[29];
    if (v7 != v6)
    {
      while (*(v7 + 4 * (*(v7 + 4) != 0x7FFFFFFF)) < v5)
      {
        v7 += 16;
        if (v7 == v6)
        {
          v7 = a2[29];
          break;
        }
      }
    }

    v11 = a2[29];
    v12 = v7;
    sub_C0013C(a1, &v12, &v13, &v11);
    v8 = a2[31];
    if (v8)
    {
      a2[32] = v8;
      operator delete(v8);
    }

    *(a2 + 31) = v13;
    a2[33] = v14;
    v10 = a2[25];
    for (i = a2[26]; v10 != i; v10 += 9)
    {
      sub_C007BC(a1, v10);
    }
  }
}

void sub_C0013C(uint64_t a1@<X0>, uint64_t *a2@<X1>, char **a3@<X8>, uint64_t *a4@<X2>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_C05F90(a2, a4, &v71);
  v7 = v71;
  v8 = v72;
  v70 = v71;
  if (v71 == v72)
  {
    goto LABEL_75;
  }

  do
  {
    while (1)
    {
      v9 = *(a1 + 8);
      v10 = v9 / 10;
      v11 = v9 % 10;
      v12 = v9 < 0 ? -5 : 5;
      v13 = v10 + (((103 * (v12 + v11)) >> 15) & 1) + ((103 * (v12 + v11)) >> 10);
      if (*v7 <= v13)
      {
        break;
      }

      v7 += 4;
      v70 = v7;
      if (v7 == v8)
      {
        goto LABEL_55;
      }
    }

    if (v7 != v8)
    {
      while (v13 >= *v7)
      {
        v7 += 4;
        if (v7 == v8)
        {
          v7 = v8;
          break;
        }
      }
    }

    v69 = v7;
    sub_BFF080(a1, &v70, &v69, &__p);
    v66 = (v70 - v71) >> 2;
    v14 = v69 - v71;
    v15 = 4 * (v70 - v71);
    if (__p == v68)
    {
      v21 = *a2 + v15;
      v61 = *a2 + 4 * v14 + 16;
      v62 = v21;
      sub_C061D8(a1, &v62, &v61, &v63);
      v22 = a3[1];
      v23 = a3[2];
      if (v22 < v23)
      {
        goto LABEL_37;
      }

      v24 = *a3;
      v25 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - *a3) >> 3);
      v26 = v25 + 1;
      if (v25 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v27 = 0xCCCCCCCCCCCCCCCDLL * ((v23 - v24) >> 3);
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x333333333333333)
      {
        v28 = 0x666666666666666;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (v28 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v51 = 8 * ((v22 - *a3) >> 3);
      v52 = v64;
      *v51 = v63;
      *(v51 + 16) = v52;
      *(v51 + 32) = v65;
      v42 = (40 * v25 + 40);
      v53 = (40 * v25 - (v22 - v24));
      memcpy((v51 - (v22 - v24)), v24, v22 - v24);
      *a3 = v53;
      a3[1] = v42;
      a3[2] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v62 = *a2 + v15;
      v61 = v62 + 16 * *__p + 32;
      sub_C061D8(a1, &v62, &v61, &v63);
      v16 = a3[1];
      v17 = a3[2];
      if (v16 >= v17)
      {
        v29 = *a3;
        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *a3) >> 3);
        v31 = v30 + 1;
        if (v30 + 1 > 0x666666666666666)
        {
          sub_1794();
        }

        v32 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v29) >> 3);
        if (2 * v32 > v31)
        {
          v31 = 2 * v32;
        }

        if (v32 >= 0x333333333333333)
        {
          v33 = 0x666666666666666;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          if (v33 <= 0x666666666666666)
          {
            operator new();
          }

          sub_1808();
        }

        v34 = 8 * ((v16 - *a3) >> 3);
        v35 = v64;
        *v34 = v63;
        *(v34 + 16) = v35;
        *(v34 + 32) = v65;
        v20 = (40 * v30 + 40);
        v36 = (40 * v30 - (v16 - v29));
        memcpy((v34 - (v16 - v29)), v29, v16 - v29);
        *a3 = v36;
        a3[1] = v20;
        a3[2] = 0;
        if (v29)
        {
          operator delete(v29);
        }
      }

      else
      {
        v18 = v63;
        v19 = v64;
        *(v16 + 4) = v65;
        *v16 = v18;
        *(v16 + 1) = v19;
        v20 = v16 + 40;
      }

      a3[1] = v20;
      *&v63 = a3;
      *(&v63 + 1) = a2;
      *&v64 = &v66;
      *(&v64 + 1) = a1;
      sub_C0664C(__p, v68, &v63);
      v37 = *a2 + 16;
      v38 = v37 + 16 * (*(v68 - 1) + v66);
      v61 = v37 + 4 * v14;
      v62 = v38;
      sub_C061D8(a1, &v62, &v61, &v63);
      v22 = a3[1];
      v39 = a3[2];
      if (v22 < v39)
      {
LABEL_37:
        v40 = v63;
        v41 = v64;
        *(v22 + 4) = v65;
        *v22 = v40;
        *(v22 + 1) = v41;
        v42 = v22 + 40;
        goto LABEL_52;
      }

      v43 = *a3;
      v44 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - *a3) >> 3);
      v45 = v44 + 1;
      if (v44 + 1 > 0x666666666666666)
      {
        sub_1794();
      }

      v46 = 0xCCCCCCCCCCCCCCCDLL * ((v39 - v43) >> 3);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x333333333333333)
      {
        v47 = 0x666666666666666;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        if (v47 <= 0x666666666666666)
        {
          operator new();
        }

        sub_1808();
      }

      v48 = 8 * ((v22 - *a3) >> 3);
      v49 = v64;
      *v48 = v63;
      *(v48 + 16) = v49;
      *(v48 + 32) = v65;
      v42 = (40 * v44 + 40);
      v50 = (40 * v44 - (v22 - v43));
      memcpy((v48 - (v22 - v43)), v43, v22 - v43);
      *a3 = v50;
      a3[1] = v42;
      a3[2] = 0;
      if (v43)
      {
        operator delete(v43);
      }
    }

LABEL_52:
    a3[1] = v42;
    v7 = v69;
    v70 = v69;
    if (__p)
    {
      v68 = __p;
      operator delete(__p);
      v7 = v70;
    }

    v8 = v72;
  }

  while (v7 != v72);
LABEL_55:
  v54 = a3[1];
  v55 = *a3;
  if (*a3 != v54)
  {
    while (1)
    {
      v56 = *v55 == 0x7FFFFFFF || *(v55 + 1) == 0x7FFFFFFF;
      if (v56 || !*(v55 + 3))
      {
        break;
      }

      v55 += 40;
      if (v55 == v54)
      {
        goto LABEL_75;
      }
    }

    if (v55 != v54)
    {
      for (i = v55 + 40; i != v54; i += 40)
      {
        v58 = *i == 0x7FFFFFFF || *(i + 1) == 0x7FFFFFFF;
        if (!v58 && *(i + 3))
        {
          v59 = *i;
          v60 = *(i + 1);
          v55[32] = i[32];
          *v55 = v59;
          *(v55 + 1) = v60;
          v55 += 40;
        }
      }
    }

    if (v55 != v54)
    {
      a3[1] = v55;
    }
  }

LABEL_75:
  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }
}

void sub_C00730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *v23;
  if (!*v23)
  {
    _Unwind_Resume(exception_object);
  }

  *(v23 + 8) = v25;
  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void sub_C007BC(_BYTE *a1, uint64_t *a2)
{
  if (!*(a2 + 24))
  {
    v2 = *a2;
    v19 = a2[1];
    if (*a2 != v19)
    {
      if (*(v2 + 160))
      {
        sub_5AF20();
      }

      v3 = *a2;
      do
      {
        if (*(v3 + 160))
        {
          sub_5AF20();
        }

        v5 = *(v3 + 64);
        v4 = *(v3 + 72);
        v20 = v3;
        if (v5 != v4)
        {
          v6 = v5 + 4;
          do
          {
            if (*(v6 + 4 * (*(v6 + 4) != 0x7FFFFFFF)) >= *(v2 + 8 + 4 * (*(v2 + 12) != 0x7FFFFFFF)))
            {
              operator new();
            }

            v5 += 60;
            v7 = v6 + 56;
            v6 += 60;
          }

          while (v7 != v4);
        }

        v3 += 168;
      }

      while (v20 + 168 != v19);
      sub_C0495C(0, 0, 0, 1);
      v21 = 0;
      v22 = 0;
      sub_C00B24(a1, &v22, &v21, &v23);
      v9 = (a2 + 4);
      v8 = a2[4];
      if (v8)
      {
        a2[5] = v8;
        operator delete(v8);
        *v9 = 0;
        a2[5] = 0;
        a2[6] = 0;
      }

      *(a2 + 2) = v23;
      a2[6] = v24;
      sub_C0108C(a1, v9, v2);
      v11 = *a2;
      v10 = a2[1];
      if (*a2 != v10)
      {
        do
        {
          if (*(v11 + 160))
          {
            sub_5AF20();
          }

          v13 = *(v11 + 64);
          v12 = *(v11 + 72);
          if (v13 != v12)
          {
            v14 = v13 + 4;
            while (*&v14[4 * (*(v14 + 1) != 0x7FFFFFFF)] < *(v11 + 4 * (*(v11 + 12) != 0x7FFFFFFF) + 8))
            {
              v15 = v14 + 56;
              v14 += 60;
              if (v15 == v12)
              {
                v13 = *(v11 + 72);
                goto LABEL_23;
              }
            }

            v13 = v14 - 4;
          }

LABEL_23:
          v21 = *(v11 + 72);
          v22 = v13;
          sub_C01220(a1, &v22, &v21, &v23);
          v16 = *(v11 + 120);
          if (v16)
          {
            *(v11 + 128) = v16;
            operator delete(v16);
          }

          *(v11 + 120) = v23;
          *(v11 + 136) = v24;
          sub_C0108C(a1, (v11 + 120), v11);
          v11 += 168;
        }

        while (v11 != v10);
      }
    }
  }
}

void sub_C00AEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_C00B24(_BYTE *a1@<X0>, char **a2@<X1>, uint64_t **a3@<X2>, void *a4@<X8>)
{
  __dst = 0;
  v41 = 0;
  v42 = 0;
  v5 = *a2;
  v6 = *a3;
  if (a1[41] == 1)
  {
    sub_C06EB0(&__dst, *a2, *a3, (v6 - v5) >> 3);
  }

  else if (v5 != v6)
  {
    v9 = 0;
    do
    {
      v10 = *v5;
      if (*(*v5 + 40) == -1)
      {
        if (v9 < v42)
        {
          *v9 = v10;
          v9 += 8;
        }

        else
        {
          v11 = __dst;
          v12 = v9 - __dst;
          v13 = (v9 - __dst) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            sub_1794();
          }

          v15 = v42 - __dst;
          if ((v42 - __dst) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v17 = v13;
          v18 = (8 * v13);
          v19 = &v18[-v17];
          *v18 = v10;
          v9 = (v18 + 1);
          memcpy(v19, v11, v12);
          __dst = v19;
          v42 = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        v41 = v9;
      }

      v5 += 8;
    }

    while (v5 != v6);
    v20 = *a2;
    if (*a2 != *a3)
    {
      do
      {
        if (*(*v20 + 40) != -1)
        {
          operator new();
        }

        ++v20;
      }

      while (v20 != *a3);
    }
  }

  v21 = __dst;
  if (*a1)
  {
    v22 = v41;
    if (__dst != v41)
    {
      v23 = __dst + 8;
      while (v23 != v41)
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = *(*v23 + 8) != 0x7FFFFFFF;
        v23 += 8;
        if (*(v24 + 4 * (*(v24 + 8) != 0x7FFFFFFF) + 4) == *(v25 + 4 * v26 + 4))
        {
          v27 = v23 - 16;
          if (v23 != v41)
          {
            do
            {
              v28 = *v23;
              if (*(v24 + 4 * (*(v24 + 8) != 0x7FFFFFFF) + 4) != *(*v23 + 4 * (*(*v23 + 8) != 0x7FFFFFFF) + 4))
              {
                *(v27 + 1) = v28;
                v27 += 8;
                v24 = v28;
              }

              v23 += 8;
            }

            while (v23 != v22);
            v22 = v41;
          }

          if (v27 + 8 != v22)
          {
            v22 = v27 + 8;
            v41 = v27 + 8;
          }

          break;
        }
      }
    }
  }

  else
  {
    v22 = v41;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v33 = v22;
  v34 = v21;
  sub_C0681C(a1, &v34, &__p, &v33);
  sub_C07004(&v37, v38, __p, v36, 0xCCCCCCCCCCCCCCCDLL * ((v36 - __p) >> 3));
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  v33 = 0;
  v34 = 0;
  sub_C03988(&v34, &v33, &__p);
  sub_C07004(&v37, v38, __p, v36, 0xCCCCCCCCCCCCCCCDLL * ((v36 - __p) >> 3));
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  v30 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v38 - v37) >> 3));
  __p = sub_C06E9C;
  if (v38 == v37)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_C07BB0(v37, v38, &__p, v31, 1, v29);
  sub_C03CD4(&v37, a4);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (__dst)
  {
    v41 = __dst;
    operator delete(__dst);
  }
}

void sub_C00FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v21 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v19)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v21 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  if (!v19)
  {
LABEL_4:
    v22 = a18;
    if (!a18)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v19);
  v22 = a18;
  if (!a18)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

void sub_C0108C(uint64_t a1, char **a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    v28 = v3;
    v29 = v4;
    sub_A332F8(v19, a3);
    v27 = 0;
    v8 = v20;
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v23)
    {
      v24 = v23;
      operator delete(v23);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v8 != -1)
    {
      v10 = *a2;
      v9 = a2[1];
      if (*a2 == v9)
      {
LABEL_22:
        sub_BFF3B4(a1, a3, v19);
        v14 = sub_C046C8(a2, v10, v19);
        if (*a2 < v14)
        {
          v15 = *(v14 - 9);
          if (*v14 < v15)
          {
            *v14 = v15;
          }
        }

        if (a2[1] > v14 + 40)
        {
          v16 = *(v14 + 10);
          if (*(v14 + 1) > v16)
          {
            *(v14 + 1) = v16;
          }
        }

        v17 = *(v14 + 4);
        if (v17)
        {
          v18 = ((10 * (*(v14 + 1) - *v14)) / v17);
        }

        else
        {
          v18 = 0;
        }

        *(v14 + 3) = v18;
      }

      else
      {
        v11 = *(a3 + 4 * (*(a3 + 12) != 0x7FFFFFFF) + 8);
        v12 = *a2;
        while (*v12 > v11 || *(v12 + 1) < v11)
        {
          v12 += 40;
          if (v12 == v9)
          {
            while (v11 >= *v10)
            {
              v10 += 40;
              if (v10 == v9)
              {
                v10 = a2[1];
                goto LABEL_22;
              }
            }

            goto LABEL_22;
          }
        }
      }
    }
  }
}

void sub_C01220(_BYTE *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  __dst = 0;
  v42 = 0;
  v43 = 0;
  v5 = *a2;
  v6 = *a3;
  if (a1[41] == 1)
  {
    sub_C098C8(&__dst, *a2, *a3, 0xEEEEEEEEEEEEEEEFLL * ((v6 - v5) >> 2));
  }

  else if (v5 != v6)
  {
    v9 = 0;
    v10 = *a2;
    do
    {
      if (*(v5 + 40) == -1)
      {
        if (v9 < v43)
        {
          *v9++ = v10;
        }

        else
        {
          v11 = __dst;
          v12 = v9 - __dst;
          v13 = (v9 - __dst) >> 3;
          v14 = v13 + 1;
          if ((v13 + 1) >> 61)
          {
            sub_1794();
          }

          v15 = v43 - __dst;
          if ((v43 - __dst) >> 2 > v14)
          {
            v14 = v15 >> 2;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v17 = (v9 - __dst) >> 3;
          v18 = (8 * v13);
          v19 = (8 * v13 - 8 * v17);
          *v18 = v10;
          v9 = v18 + 1;
          memcpy(v19, v11, v12);
          __dst = v19;
          v43 = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        v42 = v9;
      }

      v5 += 60;
      v10 += 60;
    }

    while (v5 != v6);
    v20 = *a2;
    if (*a2 != *a3)
    {
      v21 = *a2;
      do
      {
        if (*(v21 + 40) != -1)
        {
          operator new();
        }

        v21 += 60;
        v20 += 60;
      }

      while (v21 != *a3);
    }
  }

  v22 = __dst;
  if (*a1)
  {
    v23 = v42;
    if (__dst != v42)
    {
      v24 = __dst + 8;
      while (v24 != v42)
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = *(*v24 + 8) != 0x7FFFFFFF;
        v24 += 8;
        if (*(v25 + 4 * (*(v25 + 8) != 0x7FFFFFFF) + 4) == *(v26 + 4 * v27 + 4))
        {
          v28 = v24 - 16;
          if (v24 != v42)
          {
            do
            {
              v29 = *v24;
              if (*(v25 + 4 * (*(v25 + 8) != 0x7FFFFFFF) + 4) != *(*v24 + 4 * (*(*v24 + 8) != 0x7FFFFFFF) + 4))
              {
                *(v28 + 1) = v29;
                v28 += 8;
                v25 = v29;
              }

              v24 += 8;
            }

            while (v24 != v23);
            v23 = v42;
          }

          if (v28 + 8 != v23)
          {
            v23 = v28 + 8;
            v42 = v28 + 8;
          }

          break;
        }
      }
    }
  }

  else
  {
    v23 = v42;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v34 = v23;
  v35 = v22;
  sub_C0681C(a1, &v35, &__p, &v34);
  sub_C07004(&v38, v39, __p, v37, 0xCCCCCCCCCCCCCCCDLL * ((v37 - __p) >> 3));
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v34 = 0;
  v35 = 0;
  sub_C03988(&v35, &v34, &__p);
  sub_C07004(&v38, v39, __p, v37, 0xCCCCCCCCCCCCCCCDLL * ((v37 - __p) >> 3));
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v31 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v39 - v38) >> 3));
  __p = sub_C06E9C;
  if (v39 == v38)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31;
  }

  sub_C07BB0(v38, v39, &__p, v32, 1, v30);
  sub_C03CD4(&v38, a4);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (__dst)
  {
    v42 = __dst;
    operator delete(__dst);
  }
}

void sub_C016EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
    v21 = a15;
    if (!a15)
    {
LABEL_3:
      if (!v19)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v21 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v21);
  if (!v19)
  {
LABEL_4:
    v22 = a18;
    if (!a18)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v19);
  v22 = a18;
  if (!a18)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v22);
  _Unwind_Resume(exception_object);
}

double sub_C01794(_BYTE *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 31)
  {
    v6 = v2[12];
    v8 = v2[13];
    v9 = v6;
    sub_C01220(a1, &v9, &v8, &v10);
    v7 = v2[23];
    if (v7)
    {
      v2[24] = v7;
      operator delete(v7);
    }

    result = *&v10;
    *(v2 + 23) = v10;
    v2[25] = v11;
  }

  return result;
}

void sub_C01820(int **a1@<X0>, int **a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = sub_485218(*a2 - *a1);
  if (v9 >= 2 && 2 * v8 <= v9)
  {
    sub_C09C50(&v11, a1, a2);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_C01F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (v13)
  {
    operator delete(v13);
  }

  operator delete(v12);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C0200C(int **a1@<X0>, int **a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  if (a3 <= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3;
  }

  v9 = sub_485218(*a2 - *a1);
  if (v9 >= 2 && 2 * v8 <= v9)
  {
    sub_C09C50(&v11, a1, a2);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_C02848(_Unwind_Exception *a1)
{
  if (*(v2 - 208))
  {
    operator delete(*(v2 - 208));
  }

  operator delete(v1);
  sub_21DB4B4(v2 - 184);
  _Unwind_Resume(a1);
}

void sub_C028E8(int **a1@<X0>, int **a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>, double a5@<D0>)
{
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  v10 = sub_485218(*a2 - *a1);
  v11 = 2 * v9;
  if (v10 >= 2 && v11 <= v10)
  {
    v13 = v10;
    sub_C0A028(a1, a2, &v43);
    v14 = log(v13);
    v22 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v22)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    *&dword_0 = -(v14 * a5);
    if (v9 <= v11)
    {
      v16 = 2 * v9;
    }

    else
    {
      v16 = v9;
    }

    v40 = v9;
    if (v9 >= 1)
    {
      v17 = v43;
      v18 = v9;
      v19 = v16 - v9;
      if ((v16 - v9) <= 3)
      {
        goto LABEL_45;
      }

      v18 = v9;
      v20 = v9;
      v21 = 8 * v16;
      v22 = 8 * v9 >= &v43[v16] || &v43[v9] >= v21;
      v23 = !v22;
      if (v43 < v21 && 8 * v9 < (v43 + 1))
      {
        goto LABEL_45;
      }

      v18 = v9;
      if (v23)
      {
        goto LABEL_45;
      }

      v35 = v16 - v9;
      v25 = v19 & 0xFFFFFFFFFFFFFFFELL;
      v18 = v40 + (v19 & 0xFFFFFFFFFFFFFFFELL);
      v26 = v43;
      v28 = vld1q_dup_f64(v26);
      v27 = &v26[v20];
      v29 = vaddq_s64(vdupq_n_s64(v40), xmmword_22907C0);
      v30 = (v20 * 8);
      v36 = vdupq_n_s64(2uLL);
      v37 = v28;
      v34 = v19 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v42 = v29;
        v31 = vcvtq_f64_u64(v29);
        v32 = *v27++;
        v41 = vaddq_f64(v31, v31);
        __x = vdivq_f64(vsubq_f64(v32, v37), v31);
        v39 = log(__x.f64[1]);
        v33.f64[0] = log(__x.f64[0]);
        v33.f64[1] = v39;
        *v30++ = vmulq_f64(v41, v33);
        v29 = vaddq_s64(v42, v36);
        v25 -= 2;
      }

      while (v25);
      if (v35 != v34)
      {
LABEL_45:
        do
        {
          *(8 * v18) = (v18 + v18) * log((v17[v18] - *v17) / v18);
          ++v18;
        }

        while (v16 != v18);
      }
    }

    if (v15)
    {
      if (!(v15 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_C02FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v27);
  v30 = *(v28 - 144);
  if (v30)
  {
    *(v28 - 136) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_C03074(int **a1@<X0>, int **a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>, double a5@<D0>)
{
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  v10 = sub_485218(*a2 - *a1);
  v11 = 2 * v9;
  if (v10 >= 2 && v11 <= v10)
  {
    v13 = v10;
    v14 = sub_485218(*a2 - *a1);
    v41 = v14;
    v15 = vcvtpd_u64_f64(log(v14) * 4.0);
    if (v14 < v15)
    {
      v15 = v14;
    }

    v42 = v15;
    v43 = -log(v14 + v14 + -1.0);
    sub_C0A0F0(&v41, a1, a2, &v44);
    v16 = log(v13);
    v17 = __CFADD__(v13, 1);
    v18 = v13 + 1;
    if (!v17)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    *&dword_0 = -(v16 * a5);
    if (v9 <= v11)
    {
      v19 = 2 * v9;
    }

    else
    {
      v19 = v9;
    }

    v40 = v9;
    if (v9 >= 1)
    {
      v20 = v42;
      v21 = (v43 + v43) / v42;
      if (v42)
      {
        v22 = v44;
        v23 = v40;
        do
        {
          v24 = v23;
          v25 = 0.0;
          v26 = v22;
          v27 = v20;
          do
          {
            v28 = *(*v26 + 8 * v23) - **v26;
            if (v28)
            {
              v29 = v28 == 2 * v23;
            }

            else
            {
              v29 = 1;
            }

            if (!v29)
            {
              v30 = vcvtd_n_f64_u64(v28, 1uLL) / v24;
              v31 = log(1.0 - v30);
              v25 = v25 + (v30 * log(v30) + (1.0 - v30) * v31) * v24;
            }

            v26 += 3;
            --v27;
          }

          while (v27);
          *(8 * v23++) = v25 * v21;
        }

        while (v23 != v19);
      }

      else
      {
        v32 = v21 * 0.0;
        v33 = v9;
        v34 = v19 - v9;
        if ((v19 - v9) < 4)
        {
          goto LABEL_35;
        }

        v33 = v9 + (v34 & 0xFFFFFFFFFFFFFFFCLL);
        v35 = vdupq_lane_s64(*&v32, 0);
        v36 = (8 * v9 + 16);
        v37 = v34 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v36[-1] = v35;
          *v36 = v35;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (v34 != (v34 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_35:
          v38 = v19 - v33;
          v39 = (8 * v33);
          do
          {
            *v39++ = v32;
            --v38;
          }

          while (v38);
        }
      }
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_C038D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *__p, uint64_t a15, ...)
{
  va_start(va, a15);
  if (__p)
  {
    operator delete(__p);
  }

  operator delete(v15);
  sub_C0B720(va);
  _Unwind_Resume(a1);
}

void sub_C03988(char **a2@<X1>, char **a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3 - *a2;
  if (*a3 != *a2)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = v5 >> 3;
  v7 = 126 - 2 * __clz(v5 >> 3);
  v20 = sub_C03C48;
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_C0B798(0, v5, &v20, v8, 1);
  if (v5)
  {
    v9 = 8;
    while (v9 != v5)
    {
      v10 = *(v9 - 8);
      v11 = *(*v9 + 36);
      v12 = *(*v9 + 40);
      v13 = *(*v9 + 28);
      v9 += 8;
      if (*(v10 + 28) == v13 && *(v10 + 36) == v11 && *(v10 + 40) == v12)
      {
        v16 = v9 - 16;
        while (v9 != v5)
        {
          v17 = *v9;
          if (*(v10 + 28) != *(*v9 + 28) || *(v10 + 36) != *(*v9 + 36) || *(v10 + 40) != *(*v9 + 40))
          {
            *(v16 + 8) = v17;
            v16 += 8;
            v10 = v17;
          }

          v9 += 8;
        }

        if (v16 + 8 != v5)
        {
          v5 = v16 + 8;
          v6 = (v16 + 8) >> 3;
        }

        break;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v5)
  {
    if (v6 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_C03C04(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

unint64_t sub_C03C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  v3 = *(a2 + 28);
  v4 = HIDWORD(v2);
  v5 = HIDWORD(v3);
  v6 = v2 < v3;
  if (HIDWORD(v2) != HIDWORD(v3))
  {
    v6 = HIDWORD(v2) < HIDWORD(v3);
  }

  if (v6)
  {
    return 1;
  }

  v8 = v3 < v2;
  if (v4 != v5)
  {
    v8 = v5 < v4;
  }

  if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 36);
  v10 = *(a1 + 40);
  v11 = *(a2 + 36);
  v12 = *(a2 + 40);
  v13 = v10 >= v12;
  v14 = v10 == v12;
  v15 = 255;
  if (v13)
  {
    v15 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  v13 = v9 >= v11;
  v16 = v9 == v11;
  v17 = 255;
  if (v13)
  {
    v17 = 1;
  }

  if (v16)
  {
    v17 = v15;
  }

  return v17 >> 7;
}

void sub_C03CD4(char **a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v5 = v3 + 40;
    do
    {
      if (v5 == v4)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 3) < 0x666666666666667)
        {
          operator new();
        }

        sub_1794();
      }

      v7 = *v5;
      v6 = *(v5 + 1);
      v8 = *(v5 - 10);
      v9 = *(v5 - 9);
      v5 += 40;
    }

    while (v8 >= v6 || v7 >= v9);
    v15 = a2;
    v11 = *a1;
    do
    {
      if (*v3 < *(v3 + 1))
      {
        operator new();
      }

      v3 += 40;
      v11 += 40;
    }

    while (v3 != v4);
    v12 = *a1;
    v13 = a1[1];
    if (*a1 != v13)
    {
      v14 = *a1;
      do
      {
        if (*v14 < *(v14 + 1))
        {
          operator new();
        }

        v14 += 40;
        v12 += 40;
      }

      while (v14 != v13);
    }

    sub_C0CAAC(0, 0, &v19, 0, 1);
    *v16 = 0u;
    *v17 = 0u;
    v18 = 1065353216;
    v15[1] = 0;
    v15[2] = 0;
    *v15 = 0;
  }
}

void sub_C0461C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  sub_1959728(&a27);
  v29 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v29;
    operator delete(v29);
  }

  sub_11BD8(&a15);
  if (v27)
  {
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

char *sub_C046C8(char **a1, char *__src, __int128 *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3) + 1;
    if (v11 > 0x666666666666666)
    {
      sub_1794();
    }

    v12 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v10) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v16 = 8 * ((__src - v10) >> 3);
    if (!(0xCCCCCCCCCCCCCCCDLL * ((__src - v10) >> 3)))
    {
      if (__src - v10 < 1)
      {
        operator new();
      }

      v16 = 8 * ((__src - v10) >> 3) - 40 * ((1 - 0x3333333333333333 * ((8 * ((__src - v10) >> 3)) >> 3) + ((1 - 0x3333333333333333 * ((8 * ((__src - v10) >> 3)) >> 3)) >> 63)) >> 1);
    }

    v17 = *a3;
    v18 = a3[1];
    *(v16 + 32) = *(a3 + 4);
    *v16 = v17;
    *(v16 + 16) = v18;
    memcpy((v16 + 40), __src, a1[1] - __src);
    v19 = *a1;
    v20 = (v16 + 40 + a1[1] - v3);
    a1[1] = v3;
    v21 = v3 - v19;
    v22 = (v16 - (v3 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    a1[1] = v20;
    a1[2] = 0;
    if (v23)
    {
      operator delete(v23);
    }

    return v16;
  }

  else
  {
    if (__src != v5)
    {
      v25 = *a3;
      v26 = a3[1];
      v27 = *(a3 + 4);
      v7 = __src + 40;
      if (v5 < 0x28)
      {
        a1[1] = v5;
        if (v5 == v7)
        {
LABEL_21:
          *v3 = v25;
          *(v3 + 1) = v26;
          v3[32] = v27;
          return v3;
        }
      }

      else
      {
        v8 = *(v5 - 40);
        v9 = *(v5 - 24);
        *(v5 + 4) = *(v5 - 1);
        *v5 = v8;
        *(v5 + 1) = v9;
        a1[1] = v5 + 40;
        if (v5 == v7)
        {
          goto LABEL_21;
        }
      }

      memmove(v7, __src, v5 - v7 - 7);
      goto LABEL_21;
    }

    v14 = *a3;
    v15 = a3[1];
    *(v5 + 4) = *(a3 + 4);
    *v5 = v14;
    *(v5 + 1) = v15;
    a1[1] = v5 + 40;
  }

  return v3;
}

void sub_C04944(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C0495C(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v87 = *(a2 - 1);
      v88 = *v8;
      if (*(v87 + 4 * (*(v87 + 8) != 0x7FFFFFFF) + 4) < *(v88 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4))
      {
        *v8 = v87;
        *(a2 - 1) = v88;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v95 = v8 + 1;
      v97 = v8 == a2 || v95 == a2;
      if (a4)
      {
        if (!v97)
        {
          v98 = 0;
          v99 = v8;
          do
          {
            v102 = *v99;
            v101 = v99[1];
            v99 = v95;
            if (*(v101 + 4 + 4 * (*(v101 + 8) != 0x7FFFFFFF)) < *(v102 + 4 * (*(v102 + 8) != 0x7FFFFFFF) + 4))
            {
              v103 = v98;
              do
              {
                *(v8 + v103 + 8) = v102;
                if (!v103)
                {
                  v100 = v8;
                  goto LABEL_127;
                }

                v102 = *(v8 + v103 - 8);
                v103 -= 8;
              }

              while (*(v101 + 4 + 4 * (*(v101 + 8) != 0x7FFFFFFF)) < *(v102 + 4 * (*(v102 + 8) != 0x7FFFFFFF) + 4));
              v100 = (v8 + v103 + 8);
LABEL_127:
              *v100 = v101;
            }

            v95 = v99 + 1;
            v98 += 8;
          }

          while (v99 + 1 != a2);
        }
      }

      else if (!v97)
      {
        do
        {
          v136 = *v7;
          v135 = v7[1];
          v7 = v95;
          if (*(v135 + 4 + 4 * (*(v135 + 8) != 0x7FFFFFFF)) < *(v136 + 4 * (*(v136 + 8) != 0x7FFFFFFF) + 4))
          {
            do
            {
              *v95 = v136;
              v136 = *(v95 - 2);
              --v95;
            }

            while (*(v135 + 4 + 4 * (*(v135 + 8) != 0x7FFFFFFF)) < *(v136 + 4 * (*(v136 + 8) != 0x7FFFFFFF) + 4));
            *v95 = v135;
          }

          v95 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            if (2 * v106 + 2 >= v9)
            {
              v109 = *v108;
            }

            else
            {
              v109 = v108[1];
              if (*(*v108 + 4 * (*(*v108 + 8) != 0x7FFFFFFF) + 4) < *(v109 + 4 * (*(v109 + 8) != 0x7FFFFFFF) + 4))
              {
                ++v108;
                v107 = 2 * v106 + 2;
              }

              else
              {
                v109 = *v108;
              }
            }

            v110 = &v8[v106];
            v111 = *v110;
            v112 = *(v109 + 4 * (*(v109 + 8) != 0x7FFFFFFF) + 4);
            v113 = *v110 + 4;
            result = *(v113 + 4 * (*(*v110 + 8) != 0x7FFFFFFF));
            if (v112 >= result)
            {
              v114 = *v108;
              do
              {
                *v110 = v114;
                v110 = v108;
                if (v104 < v107)
                {
                  break;
                }

                v115 = (2 * v107) | 1;
                v108 = &v8[v115];
                v107 = 2 * v107 + 2;
                if (v107 < v9)
                {
                  v114 = *v108;
                  if (*(*v108 + 4 * (*(*v108 + 8) != 0x7FFFFFFF) + 4) >= *(v108[1] + 4 * (*(v108[1] + 8) != 0x7FFFFFFF) + 4))
                  {
                    v107 = v115;
                  }

                  else
                  {
                    v114 = v108[1];
                    ++v108;
                  }
                }

                else
                {
                  v114 = *v108;
                  v107 = v115;
                }

                result = *(v114 + 4 * (*(v114 + 8) != 0x7FFFFFFF) + 4);
              }

              while (result >= *(v113 + 4 * (*(v111 + 8) != 0x7FFFFFFF)));
              *v110 = v111;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = (v9 - 2) >> 1;
          v120 = v8;
          do
          {
            while (1)
            {
              v124 = &v120[v117];
              v123 = v124 + 1;
              v125 = (2 * v117) | 1;
              v117 = 2 * v117 + 2;
              if (v117 < v9)
              {
                break;
              }

              v117 = v125;
              *v120 = *v123;
              v120 = v124 + 1;
              if (v125 > v119)
              {
                goto LABEL_163;
              }
            }

            v122 = v124[2];
            v121 = v124 + 2;
            result = *(*(v121 - 1) + 4 * (*(*(v121 - 1) + 8) != 0x7FFFFFFF) + 4);
            if (result >= *(v122 + 4 * (*(v122 + 8) != 0x7FFFFFFF) + 4))
            {
              v117 = v125;
            }

            else
            {
              v123 = v121;
            }

            *v120 = *v123;
            v120 = v123;
          }

          while (v117 <= v119);
LABEL_163:
          if (v123 == --a2)
          {
            *v123 = v118;
          }

          else
          {
            *v123 = *a2;
            *a2 = v118;
            v126 = (v123 - v8 + 8) >> 3;
            v116 = v126 < 2;
            v127 = v126 - 2;
            if (!v116)
            {
              v128 = v127 >> 1;
              v129 = &v8[v128];
              v130 = *v129;
              v131 = *v123;
              v132 = *v123 + 4;
              if (*(*v129 + 4 * (*(*v129 + 8) != 0x7FFFFFFF) + 4) < *(v132 + 4 * (*(*v123 + 8) != 0x7FFFFFFF)))
              {
                do
                {
                  *v123 = v130;
                  v123 = v129;
                  if (!v128)
                  {
                    break;
                  }

                  v128 = (v128 - 1) >> 1;
                  v129 = &v8[v128];
                  v130 = *v129;
                }

                while (*(*v129 + 4 * (*(*v129 + 8) != 0x7FFFFFFF) + 4) < *(v132 + 4 * (*(v131 + 8) != 0x7FFFFFFF)));
                *v123 = v131;
              }
            }
          }

          v116 = v9-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v10 = v9 >> 1;
    v11 = *(a2 - 1);
    v12 = *(v11 + 4 * (*(v11 + 8) != 0x7FFFFFFF) + 4);
    if (v9 < 0x81)
    {
      v17 = *v8;
      v18 = v8[v10];
      v19 = *(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4);
      if (v19 < *(v18 + 4 + 4 * (*(v18 + 8) != 0x7FFFFFFF)))
      {
        if (v12 < v19)
        {
          v8[v10] = v11;
          goto LABEL_37;
        }

        v8[v10] = v17;
        *v8 = v18;
        v32 = *(a2 - 1);
        if (*(v32 + 4 * (*(v32 + 8) != 0x7FFFFFFF) + 4) < *(v18 + 4 + 4 * (*(v18 + 8) != 0x7FFFFFFF)))
        {
          *v8 = v32;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v12 >= v19)
      {
        goto LABEL_38;
      }

      *v8 = v11;
      *(a2 - 1) = v17;
      v22 = v8[v10];
      if (*(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4) >= *(v22 + 4 * (*(v22 + 8) != 0x7FFFFFFF) + 4))
      {
        goto LABEL_38;
      }

      v8[v10] = *v8;
      *v8 = v22;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v33 = *v8;
      v34 = *(*v8 + 8);
LABEL_62:
      v55 = 0;
      v56 = *(v33 + 4 + 4 * (v34 != 0x7FFFFFFF));
      do
      {
        v57 = v8[++v55];
      }

      while (*(v57 + 4 * (*(v57 + 8) != 0x7FFFFFFF) + 4) < v56);
      v58 = &v8[v55];
      v59 = a2;
      if (v55 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v61 + 4 * (*(v61 + 8) != 0x7FFFFFFF) + 4) >= v56);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v60 + 4 * (*(v60 + 8) != 0x7FFFFFFF) + 4) >= v56);
      }

      if (v58 >= v59)
      {
        v68 = v58 - 1;
        if (v58 - 1 == v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v8 = *v68;
        goto LABEL_80;
      }

      v62 = *v59;
      v63 = &v8[v55];
      v64 = v59;
      do
      {
        *v63 = v62;
        *v64 = v57;
        v65 = *(v33 + 4 + 4 * (*(v33 + 8) != 0x7FFFFFFF));
        do
        {
          v66 = v63[1];
          ++v63;
          v57 = v66;
        }

        while (*(v66 + 4 * (*(v66 + 8) != 0x7FFFFFFF) + 4) < v65);
        do
        {
          v67 = *--v64;
          v62 = v67;
        }

        while (*(v67 + 4 * (*(v67 + 8) != 0x7FFFFFFF) + 4) >= v65);
      }

      while (v63 < v64);
      v68 = v63 - 1;
      if (v63 - 1 != v8)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v68 = v33;
      if (v58 < v59)
      {
        goto LABEL_83;
      }

      v69 = sub_C05ABC(v8, v68);
      v8 = v68 + 1;
      result = sub_C05ABC(v68 + 1, a2);
      if (result)
      {
        a2 = v68;
        if (!v69)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v69)
      {
LABEL_83:
        result = sub_C0495C(v7, v68, a3, a4 & 1);
        a4 = 0;
        v8 = v68 + 1;
      }
    }

    else
    {
      v13 = v8[v10];
      v14 = *v8;
      v15 = *(v13 + 4 * (*(v13 + 8) != 0x7FFFFFFF) + 4);
      v16 = *v8 + 4;
      if (v15 >= *(v16 + 4 * (*(*v8 + 8) != 0x7FFFFFFF)))
      {
        if (v12 < v15)
        {
          v8[v10] = v11;
          *(a2 - 1) = v13;
          v20 = v8[v10];
          v21 = *v8;
          if (*(v20 + 4 * (*(v20 + 8) != 0x7FFFFFFF) + 4) < *(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4))
          {
            *v8 = v20;
            v8[v10] = v21;
          }
        }
      }

      else
      {
        if (v12 >= v15)
        {
          *v8 = v13;
          v8[v10] = v14;
          v23 = *(a2 - 1);
          if (*(v23 + 4 * (*(v23 + 8) != 0x7FFFFFFF) + 4) >= *(v16 + 4 * (*(v14 + 8) != 0x7FFFFFFF)))
          {
            goto LABEL_29;
          }

          v8[v10] = v23;
        }

        else
        {
          *v8 = v11;
        }

        *(a2 - 1) = v14;
      }

LABEL_29:
      v24 = v10 - 1;
      v25 = v8[v10 - 1];
      v26 = v8[1];
      v27 = *(v25 + 4 * (*(v25 + 8) != 0x7FFFFFFF) + 4);
      v28 = *(a2 - 2);
      v29 = *(v28 + 4 * (*(v28 + 8) != 0x7FFFFFFF) + 4);
      if (v27 >= *(v26 + 4 + 4 * (*(v26 + 8) != 0x7FFFFFFF)))
      {
        if (v29 < v27)
        {
          v8[v24] = v28;
          *(a2 - 2) = v25;
          v30 = v8[v24];
          v31 = v8[1];
          if (*(v30 + 4 * (*(v30 + 8) != 0x7FFFFFFF) + 4) < *(v31 + 4 * (*(v31 + 8) != 0x7FFFFFFF) + 4))
          {
            v8[1] = v30;
            v8[v24] = v31;
          }
        }
      }

      else
      {
        if (v29 >= v27)
        {
          v8[1] = v25;
          v8[v24] = v26;
          v35 = *(a2 - 2);
          if (*(v35 + 4 * (*(v35 + 8) != 0x7FFFFFFF) + 4) >= *(v26 + 4 + 4 * (*(v26 + 8) != 0x7FFFFFFF)))
          {
            goto LABEL_43;
          }

          v8[v24] = v35;
        }

        else
        {
          v8[1] = v28;
        }

        *(a2 - 2) = v26;
      }

LABEL_43:
      v36 = v10 + 1;
      v37 = v8[v10 + 1];
      v38 = v8[2];
      v39 = *(v37 + 4 * (*(v37 + 8) != 0x7FFFFFFF) + 4);
      v40 = *(a2 - 3);
      v41 = *(v40 + 4 * (*(v40 + 8) != 0x7FFFFFFF) + 4);
      if (v39 >= *(v38 + 4 + 4 * (*(v38 + 8) != 0x7FFFFFFF)))
      {
        if (v41 < v39)
        {
          v8[v36] = v40;
          *(a2 - 3) = v37;
          v42 = v8[v36];
          v43 = v8[2];
          if (*(v42 + 4 * (*(v42 + 8) != 0x7FFFFFFF) + 4) < *(v43 + 4 * (*(v43 + 8) != 0x7FFFFFFF) + 4))
          {
            v8[2] = v42;
            v8[v36] = v43;
          }
        }
      }

      else
      {
        if (v41 >= v39)
        {
          v8[2] = v37;
          v8[v36] = v38;
          v44 = *(a2 - 3);
          if (*(v44 + 4 * (*(v44 + 8) != 0x7FFFFFFF) + 4) >= *(v38 + 4 + 4 * (*(v38 + 8) != 0x7FFFFFFF)))
          {
            goto LABEL_52;
          }

          v8[v36] = v44;
        }

        else
        {
          v8[2] = v40;
        }

        *(a2 - 3) = v38;
      }

LABEL_52:
      v45 = v8[v10];
      v46 = v8[v24];
      v47 = *(v45 + 4 * (*(v45 + 8) != 0x7FFFFFFF) + 4);
      v48 = v46 + 4;
      result = *(v46 + 4 + 4 * (*(v46 + 8) != 0x7FFFFFFF));
      v49 = v8[v36];
      v50 = v49 + 4;
      v51 = *(v49 + 4 + 4 * (*(v49 + 8) != 0x7FFFFFFF));
      if (v47 >= result)
      {
        if (v51 < v47)
        {
          v8[v10] = v49;
          v8[v36] = v45;
          v45 = v49;
          if (*(v50 + 4 * (*(v49 + 8) != 0x7FFFFFFF)) < *(v48 + 4 * (*(v46 + 8) != 0x7FFFFFFF)))
          {
            v8[v24] = v49;
            v8[v10] = v46;
            v45 = v46;
          }
        }
      }

      else if (v51 >= v47)
      {
        v8[v24] = v45;
        v8[v10] = v46;
        v45 = v46;
        if (*(v50 + 4 * (*(v49 + 8) != 0x7FFFFFFF)) < *(v48 + 4 * (*(v46 + 8) != 0x7FFFFFFF)))
        {
          v8[v10] = v49;
          v8[v36] = v46;
          v45 = v49;
        }
      }

      else
      {
        v8[v24] = v49;
        v8[v36] = v46;
      }

      v52 = *v8;
      *v8 = v45;
      v8[v10] = v52;
      --a3;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_61:
      v33 = *v8;
      v53 = *v8 + 4;
      v34 = *(*v8 + 8);
      v54 = *(v53 + 4 * (v34 != 0x7FFFFFFF));
      if (*(*(v8 - 1) + 4 * (*(*(v8 - 1) + 8) != 0x7FFFFFFF) + 4) < v54)
      {
        goto LABEL_62;
      }

      if (v54 >= *(*(a2 - 1) + 4 * (*(*(a2 - 1) + 8) != 0x7FFFFFFF) + 4))
      {
        v71 = (v8 + 1);
        do
        {
          v8 = v71;
          if (v71 >= a2)
          {
            break;
          }

          v71 += 8;
        }

        while (v54 >= *(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4));
      }

      else
      {
        do
        {
          v70 = v8[1];
          ++v8;
        }

        while (v54 >= *(v70 + 4 * (*(v70 + 8) != 0x7FFFFFFF) + 4));
      }

      v72 = a2;
      if (v8 < a2)
      {
        v72 = a2;
        do
        {
          v73 = *--v72;
        }

        while (v54 < *(v73 + 4 * (*(v73 + 8) != 0x7FFFFFFF) + 4));
      }

      if (v8 < v72)
      {
        v74 = *v8;
        v75 = *v72;
        do
        {
          *v8 = v75;
          *v72 = v74;
          v76 = *(v53 + 4 * (*(v33 + 8) != 0x7FFFFFFF));
          do
          {
            v77 = v8[1];
            ++v8;
            v74 = v77;
          }

          while (v76 >= *(v77 + 4 * (*(v77 + 8) != 0x7FFFFFFF) + 4));
          do
          {
            v78 = *--v72;
            v75 = v78;
          }

          while (v76 < *(v78 + 4 * (*(v78 + 8) != 0x7FFFFFFF) + 4));
        }

        while (v8 < v72);
      }

      v79 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v79;
      }

      a4 = 0;
      *v79 = v33;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {

      return sub_C058E4(v8, v8 + 1, v8 + 2, a2 - 1);
    }

    if (v9 == 5)
    {
      result = sub_C058E4(v8, v8 + 1, v8 + 2, v8 + 3);
      v80 = *(a2 - 1);
      v81 = v8[3];
      if (*(v80 + 4 * (*(v80 + 8) != 0x7FFFFFFF) + 4) < *(v81 + 4 * (*(v81 + 8) != 0x7FFFFFFF) + 4))
      {
        v8[3] = v80;
        *(a2 - 1) = v81;
        v83 = v8[2];
        v82 = v8[3];
        v84 = v82 + 4;
        if (*(v82 + 4 + 4 * (*(v82 + 8) != 0x7FFFFFFF)) < *(v83 + 4 * (*(v83 + 8) != 0x7FFFFFFF) + 4))
        {
          v8[2] = v82;
          v8[3] = v83;
          v85 = v8[1];
          if (*(v84 + 4 * (*(v82 + 8) != 0x7FFFFFFF)) < *(v85 + 4 * (*(v85 + 8) != 0x7FFFFFFF) + 4))
          {
            v8[1] = v82;
            v8[2] = v85;
            v86 = *v8;
            if (*(v84 + 4 * (*(v82 + 8) != 0x7FFFFFFF)) < *(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4))
            {
              *v8 = v82;
              v8[1] = v86;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v89 = *v8;
  v90 = v8[1];
  v91 = *(v90 + 4 * (*(v90 + 8) != 0x7FFFFFFF) + 4);
  v92 = *v8 + 4;
  v93 = *(a2 - 1);
  v94 = *(v93 + 4 * (*(v93 + 8) != 0x7FFFFFFF) + 4);
  if (v91 >= *(v92 + 4 * (*(*v8 + 8) != 0x7FFFFFFF)))
  {
    if (v94 < v91)
    {
      v8[1] = v93;
      *(a2 - 1) = v90;
      v134 = *v8;
      v133 = v8[1];
      if (*(v133 + 4 * (*(v133 + 8) != 0x7FFFFFFF) + 4) < *(*v8 + 4 * (*(*v8 + 8) != 0x7FFFFFFF) + 4))
      {
        *v8 = v133;
        v8[1] = v134;
      }
    }
  }

  else
  {
    if (v94 >= v91)
    {
      *v8 = v90;
      v8[1] = v89;
      v137 = *(a2 - 1);
      if (*(v137 + 4 * (*(v137 + 8) != 0x7FFFFFFF) + 4) >= *(v92 + 4 * (*(v89 + 8) != 0x7FFFFFFF)))
      {
        return result;
      }

      v8[1] = v137;
    }

    else
    {
      *v8 = v93;
    }

    *(a2 - 1) = v89;
  }

  return result;
}