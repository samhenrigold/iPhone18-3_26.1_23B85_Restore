uint64_t sub_A051A0(uint64_t result, _OWORD *a2, unint64_t a3, __int128 *a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (a2 - 28);
      v6 = *(a2 - 3);
      if (*(a2 - 2) != 0x7FFFFFFF)
      {
        v6 = *(a2 - 2);
      }

      if (*(result + 20) == 0x7FFFFFFF)
      {
        v7 = *(result + 16);
      }

      else
      {
        v7 = *(result + 20);
      }

      if (v6 >= v7)
      {
        v24 = *result;
        *(a4 + 12) = *(result + 12);
        *a4 = v24;
        v9 = *v5;
        v10 = *(a2 - 1);
      }

      else
      {
        v8 = *v5;
        *(a4 + 12) = *(a2 - 1);
        *a4 = v8;
        v9 = *result;
        v10 = *(result + 12);
      }

      *(a4 + 40) = v10;
      *(a4 + 28) = v9;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      *(a4 + 12) = *(result + 12);
      *a4 = v4;
    }

    else if (a3 > 8)
    {
      v25 = a3 >> 1;
      v26 = 28 * (a3 >> 1);
      v27 = v26 + result;
      v28 = result;
      v31 = a4;
      sub_A04EC8(result, (v26 + result), v25, a4, v25);
      result = sub_A04EC8(v27, a2, a3 - v25, (v31 + v26), a3 - v25);
      v32 = v27;
      while (v32 != a2)
      {
        v34 = *(v32 + 16);
        if (*(v32 + 20) != 0x7FFFFFFF)
        {
          v34 = *(v32 + 20);
        }

        if (*(v28 + 20) == 0x7FFFFFFF)
        {
          v35 = *(v28 + 16);
        }

        else
        {
          v35 = *(v28 + 20);
        }

        if (v34 >= v35)
        {
          v33 = *v28;
          *(v31 + 12) = *(v28 + 12);
          *v31 = v33;
          v31 = (v31 + 28);
          v28 += 28;
          if (v28 == v27)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v36 = *v32;
          *(v31 + 12) = *(v32 + 12);
          *v31 = v36;
          v31 = (v31 + 28);
          v32 += 28;
          if (v28 == v27)
          {
LABEL_50:
            while (v32 != a2)
            {
              v38 = *v32;
              *(v31 + 12) = *(v32 + 12);
              *v31 = v38;
              v31 = (v31 + 28);
              v32 += 28;
            }

            return result;
          }
        }
      }

      while (v28 != v27)
      {
        v37 = *v28;
        *(v31 + 12) = *(v28 + 12);
        *v31 = v37;
        v31 = (v31 + 28);
        v28 += 28;
      }
    }

    else if (result != a2)
    {
      v11 = *result;
      *(a4 + 12) = *(result + 12);
      *a4 = v11;
      v12 = result + 28;
      if ((result + 28) != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v16 = result;
          v17 = v14;
          result = v12;
          v14 = (v14 + 28);
          v18 = *(v16 + 48);
          v19 = *(v17 + 4);
          if (v18 == 0x7FFFFFFF)
          {
            v18 = *(v16 + 44);
          }

          if (*(v17 + 5) != 0x7FFFFFFF)
          {
            v19 = *(v17 + 5);
          }

          v20 = v14;
          if (v18 < v19)
          {
            *v14 = *v17;
            *(v14 + 12) = *(v17 + 12);
            v20 = a4;
            if (v17 != a4)
            {
              v21 = v13;
              while (1)
              {
                v20 = (a4 + v21);
                v22 = *(v16 + 44);
                if (*(v16 + 48) != 0x7FFFFFFF)
                {
                  v22 = *(v16 + 48);
                }

                v23 = *(a4 + v21 - 8) == 0x7FFFFFFF ? *(a4 + v21 - 12) : *(a4 + v21 - 8);
                if (v22 >= v23)
                {
                  break;
                }

                *v20 = *(v20 - 28);
                *(v20 + 12) = *(v20 - 1);
                v21 -= 28;
                if (!v21)
                {
                  v20 = a4;
                  break;
                }
              }
            }
          }

          v15 = *result;
          *(v20 + 12) = *(result + 12);
          *v20 = v15;
          v12 = result + 28;
          v13 += 28;
        }

        while ((result + 28) != a2);
      }
    }
  }

  return result;
}

__int128 *sub_A05460(__int128 *result, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = *(a2 + 4);
      if (*(a2 + 5) != 0x7FFFFFFF)
      {
        v11 = *(a2 + 5);
      }

      v12 = -a4;
      while (1)
      {
        v13 = (v10 + v9);
        v14 = *(v10 + v9 + 16);
        if (*(v10 + v9 + 20) != 0x7FFFFFFF)
        {
          v14 = *(v10 + v9 + 20);
        }

        if (v11 < v14)
        {
          break;
        }

        v10 = (v10 + 28);
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v71 = a3;
      __src = a6;
      v70 = a7;
      if (-v12 >= a5)
      {
        if (v12 == -1)
        {
          v61 = (v10 + v9);
          *&v73[12] = *(v10 + v9 + 12);
          *v73 = *(v10 + v9);
          v62 = *a2;
          *(v61 + 12) = *(a2 + 12);
          *v61 = v62;
          *a2 = *v73;
          *(a2 + 12) = *&v73[12];
          return result;
        }

        v25 = -v12 / 2;
        v17 = a2;
        if (a2 != a3)
        {
          v26 = v10 + v9 + 28 * v25;
          v28 = *(v26 + 4);
          v27 = *(v26 + 5);
          v29 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 2);
          if (v27 == 0x7FFFFFFF)
          {
            v27 = v28;
          }

          v17 = a2;
          do
          {
            v30 = v29 >> 1;
            v31 = v17 + 28 * (v29 >> 1);
            v32 = *(v31 + 4);
            if (*(v31 + 5) != 0x7FFFFFFF)
            {
              v32 = *(v31 + 5);
            }

            v33 = (v31 + 28);
            v29 += ~v30;
            if (v32 < v27)
            {
              v17 = v33;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
        }

        v16 = 0x6DB6DB6DB6DB6DB7 * ((v17 - a2) >> 2);
        v18 = v10 + v9 + 28 * v25;
      }

      else
      {
        v16 = a5 / 2;
        v17 = (a2 + 28 * (a5 / 2));
        v18 = a2;
        if ((a2 - v9) != v10)
        {
          v19 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v9 - v10) >> 2);
          if (*(v17 + 5) == 0x7FFFFFFF)
          {
            v20 = *(v17 + 4);
          }

          else
          {
            v20 = *(v17 + 5);
          }

          v18 = v10 + v9;
          do
          {
            v21 = v19 >> 1;
            v22 = &v18[28 * (v19 >> 1)];
            v23 = *(v22 + 4);
            if (*(v22 + 5) != 0x7FFFFFFF)
            {
              v23 = *(v22 + 5);
            }

            v24 = v22 + 28;
            v19 += ~v21;
            if (v20 < v23)
            {
              v19 = v21;
            }

            else
            {
              v18 = v24;
            }
          }

          while (v19);
        }

        v25 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v9 - v10) >> 2);
      }

      a4 = -(v25 + v12);
      v68 = a5;
      v69 = a5 - v16;
      v34 = v16;
      v35 = sub_A058F0(v18, a2, v17);
      v36 = v25;
      v37 = v34;
      v38 = v35;
      if (v36 + v34 >= v68 - (v36 + v34) - v12)
      {
        v42 = v35;
        a6 = __src;
        v43 = v36;
        result = sub_A05460(v35, v17, v71, a4, v69, __src, v70);
        v17 = v18;
        a7 = v70;
        a4 = v43;
        a3 = v42;
      }

      else
      {
        v39 = (v10 + v9);
        v40 = v38;
        v41 = v34;
        a6 = __src;
        result = sub_A05460(v39, v18, v38, v36, v41, __src, v70);
        a7 = v70;
        v13 = v40;
        a3 = v71;
        v37 = v69;
      }

      a5 = v37;
      v9 = v13;
      a2 = v17;
      if (!v37)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v53 = -a6;
        v54 = a6;
        v55 = v9;
        do
        {
          v56 = *v55;
          *(v54 + 12) = *(v55 + 12);
          *v54 = v56;
          v54 = (v54 + 28);
          v55 = (v55 + 28);
          v53 -= 28;
        }

        while (v55 != a2);
        while (a2 != a3)
        {
          v58 = *(a2 + 4);
          if (*(a2 + 5) != 0x7FFFFFFF)
          {
            v58 = *(a2 + 5);
          }

          if (*(a6 + 5) == 0x7FFFFFFF)
          {
            v59 = *(a6 + 4);
          }

          else
          {
            v59 = *(a6 + 5);
          }

          if (v58 >= v59)
          {
            v57 = *a6;
            *(v9 + 12) = *(a6 + 12);
            *v9 = v57;
            v9 = (v9 + 28);
            a6 = (a6 + 28);
            if (v54 == a6)
            {
              return result;
            }
          }

          else
          {
            v60 = *a2;
            *(v9 + 12) = *(a2 + 12);
            *v9 = v60;
            v9 = (v9 + 28);
            a2 = (a2 + 28);
            if (v54 == a6)
            {
              return result;
            }
          }
        }

        return memmove(v9, a6, -(a6 + v53));
      }
    }

    else if (a2 != a3)
    {
      v44 = 0;
      do
      {
        v45 = (a6 + v44);
        v46 = *(a2 + v44);
        *(v45 + 12) = *(a2 + v44 + 12);
        *v45 = v46;
        v44 += 28;
      }

      while ((a2 + v44) != a3);
      v47 = (a6 + v44);
      while (a2 != v9)
      {
        v48 = *(a2 - 3);
        v49 = *(v47 - 3);
        if (*(v47 - 2) != 0x7FFFFFFF)
        {
          v49 = *(v47 - 2);
        }

        if (*(a2 - 2) != 0x7FFFFFFF)
        {
          v48 = *(a2 - 2);
        }

        v50 = v49 < v48;
        if (v49 >= v48)
        {
          v51 = (v47 - 28);
        }

        else
        {
          v51 = (a2 - 28);
        }

        v52 = *v51;
        *(a3 - 1) = *(v51 + 12);
        *(a3 - 28) = v52;
        a3 = (a3 - 28);
        if (v50)
        {
          a2 = (a2 - 28);
        }

        else
        {
          v47 = (v47 - 28);
        }

        if (v47 == a6)
        {
          return result;
        }
      }

      if (v47 != a6)
      {
        v63 = -28;
        do
        {
          v64 = *(v47 - 28);
          v65 = *(v47 - 1);
          v66 = v47 - 28;
          v67 = (a3 + v63);
          *(v67 + 12) = v65;
          *v67 = v64;
          v63 -= 28;
          v47 = v66;
        }

        while (v66 != a6);
      }
    }
  }

  return result;
}

char *sub_A058F0(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 28 == a2)
    {
      *v26 = *__src;
      *&v26[12] = *(__src + 12);
      v7 = __src;
      memmove(__src, __src + 28, v6);
      v4 = &v7[v6];
      *v4 = *v26;
      *(v4 + 12) = *&v26[12];
    }

    else if (a2 + 28 == a3)
    {
      v4 = __src + 28;
      *v27 = *(a3 - 28);
      *&v27[12] = *(a3 - 1);
      v8 = a3 - 28 - __src;
      if (a3 - 28 != __src)
      {
        v9 = __src;
        memmove(__src + 28, __src, v8);
        __src = v9;
      }

      *__src = *v27;
      *(__src + 12) = *&v27[12];
    }

    else
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 2);
      if (0x6DB6DB6DB6DB6DB7 * (v5 >> 2) == v10)
      {
        v11 = __src + 28;
        v12 = a2 + 28;
        do
        {
          *v28 = *(v11 - 28);
          *&v28[12] = *(v11 - 1);
          v13 = *(v12 - 1);
          *(v11 - 28) = *(v12 - 28);
          *(v11 - 1) = v13;
          *(v12 - 1) = *&v28[12];
          *(v12 - 28) = *v28;
          if (v11 == a2)
          {
            break;
          }

          v11 += 28;
          v14 = v12 == a3;
          v12 += 28;
        }

        while (!v14);
        return a2;
      }

      else
      {
        v15 = 0x6DB6DB6DB6DB6DB7 * (v5 >> 2);
        do
        {
          v16 = v15;
          v15 = v10;
          v10 = v16 % v10;
        }

        while (v10);
        v17 = &__src[28 * v15];
        do
        {
          v18 = *(v17 - 28);
          v19 = *(v17 - 1);
          v17 -= 28;
          v29 = v18;
          HIDWORD(v29) = v19;
          v20 = &v17[v5];
          v21 = v17;
          do
          {
            v22 = v20;
            v23 = *v20;
            *(v21 + 12) = *(v20 + 12);
            *v21 = v23;
            v24 = (a3 - v20);
            v20 += 4 * (v5 >> 2);
            if (v5 >= v24)
            {
              v20 = (a2 - v24);
            }

            v21 = v22;
          }

          while (v20 != v17);
          *(v22 + 12) = v19;
          *v22 = v29;
        }

        while (v17 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

char *sub_A05AF0(char *result, char *a2, unint64_t a3, __int128 *a4, int64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      if (*(a2 - 3) < *(result + 4))
      {
        *v31 = *result;
        *&v31[12] = *(result + 12);
        v5 = *(a2 - 1);
        *result = *(a2 - 28);
        *(result + 12) = v5;
        *(a2 - 1) = *&v31[12];
        *(a2 - 28) = *v31;
      }
    }

    else if (a3 > 128)
    {
      v16 = a3 >> 1;
      v17 = &result[28 * (a3 >> 1)];
      v18 = a3 - (a3 >> 1);
      v19 = result;
      if (a3 <= a5)
      {
        v23 = a4;
        sub_A05D84(result, v17, a3 >> 1, a4);
        v24 = (v23 + 28 * v16);
        result = sub_A05D84(v17, a2, v18, v24);
        v25 = (v23 + 28 * a3);
        v26 = v24;
        while (v26 != v25)
        {
          if (*(v26 + 4) >= *(v23 + 4))
          {
            v27 = *v23;
            *(v19 + 12) = *(v23 + 12);
            *v19 = v27;
            v19 += 28;
            v23 = (v23 + 28);
            if (v23 == v24)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v28 = *v26;
            *(v19 + 12) = *(v26 + 12);
            *v19 = v28;
            v19 += 28;
            v26 = (v26 + 28);
            if (v23 == v24)
            {
LABEL_32:
              while (v26 != v25)
              {
                v30 = *v26;
                *(v19 + 12) = *(v26 + 12);
                *v19 = v30;
                v19 += 28;
                v26 = (v26 + 28);
              }

              return result;
            }
          }
        }

        while (v23 != v24)
        {
          v29 = *v23;
          *(v19 + 12) = *(v23 + 12);
          *v19 = v29;
          v19 += 28;
          v23 = (v23 + 28);
        }
      }

      else
      {
        sub_A05AF0(result, v17, a3 >> 1, a4, a5);
        sub_A05AF0(v17, a2, v18, a4, a5);

        return sub_A05FF8(v19, v17, a2, v16, v18, a4, a5);
      }
    }

    else if (result != a2)
    {
      v6 = result + 28;
      if (result + 28 != a2)
      {
        v7 = 0;
        v8 = result;
        do
        {
          v10 = v6;
          v11 = *(v8 + 11);
          if (v11 < *(v8 + 4))
          {
            v32 = *v10;
            v12 = *(v8 + 6);
            v13 = v7;
            do
            {
              v14 = &result[v13];
              *(v14 + 28) = *&result[v13];
              *(v14 + 40) = *&result[v13 + 12];
              if (!v13)
              {
                v9 = result;
                goto LABEL_11;
              }

              v13 -= 28;
            }

            while (v11 < *(v14 - 3));
            v9 = &result[v13 + 28];
LABEL_11:
            *v9 = v32;
            *(v9 + 4) = v11;
            *(v9 + 20) = v12;
          }

          v6 = v10 + 28;
          v7 += 28;
          v8 = v10;
        }

        while (v10 + 28 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_A05D84(uint64_t result, _OWORD *a2, unint64_t a3, __int128 *a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (a2 - 28);
      if (*(a2 - 3) >= *(result + 16))
      {
        v18 = *result;
        *(a4 + 12) = *(result + 12);
        *a4 = v18;
        v7 = *v5;
        v8 = *(a2 - 1);
      }

      else
      {
        v6 = *v5;
        *(a4 + 12) = *(a2 - 1);
        *a4 = v6;
        v7 = *result;
        v8 = *(result + 12);
      }

      *(a4 + 40) = v8;
      *(a4 + 28) = v7;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      *(a4 + 12) = *(result + 12);
      *a4 = v4;
    }

    else if (a3 > 8)
    {
      v19 = a3 >> 1;
      v20 = 28 * (a3 >> 1);
      v21 = v20 + result;
      v22 = result;
      v25 = a4;
      sub_A05AF0(result, (v20 + result), v19, a4, v19);
      result = sub_A05AF0(v21, a2, a3 - v19, (v25 + v20), a3 - v19);
      v26 = v21;
      while (v26 != a2)
      {
        if (*(v26 + 16) >= *(v22 + 16))
        {
          v27 = *v22;
          *(v25 + 12) = *(v22 + 12);
          *v25 = v27;
          v25 = (v25 + 28);
          v22 += 28;
          if (v22 == v21)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = *v26;
          *(v25 + 12) = *(v26 + 12);
          *v25 = v28;
          v25 = (v25 + 28);
          v26 += 28;
          if (v22 == v21)
          {
LABEL_31:
            while (v26 != a2)
            {
              v30 = *v26;
              *(v25 + 12) = *(v26 + 12);
              *v25 = v30;
              v25 = (v25 + 28);
              v26 += 28;
            }

            return result;
          }
        }
      }

      while (v22 != v21)
      {
        v29 = *v22;
        *(v25 + 12) = *(v22 + 12);
        *v25 = v29;
        v25 = (v25 + 28);
        v22 += 28;
      }
    }

    else if (result != a2)
    {
      v9 = *result;
      *(a4 + 12) = *(result + 12);
      *a4 = v9;
      v10 = result + 28;
      if ((result + 28) != a2)
      {
        v11 = 0;
        v12 = a4;
        do
        {
          v14 = result;
          v15 = v12;
          result = v10;
          v12 = (v12 + 28);
          v16 = v12;
          if (*(v14 + 44) < *(v15 + 4))
          {
            *v12 = *v15;
            *(v12 + 12) = *(v15 + 12);
            v16 = a4;
            if (v15 != a4)
            {
              v17 = v11;
              while (1)
              {
                v16 = (a4 + v17);
                if (*(v14 + 44) >= *(a4 + v17 - 12))
                {
                  break;
                }

                *v16 = *(v16 - 28);
                *(v16 + 12) = *(v16 - 1);
                v17 -= 28;
                if (!v17)
                {
                  v16 = a4;
                  break;
                }
              }
            }
          }

          v13 = *result;
          *(v16 + 12) = *(result + 12);
          *v16 = v13;
          v10 = result + 28;
          v11 += 28;
        }

        while ((result + 28) != a2);
      }
    }
  }

  return result;
}

char *sub_A05FF8(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (1)
      {
        v12 = &v10[v9];
        if (*(a2 + 4) < *&v10[v9 + 16])
        {
          break;
        }

        v10 += 28;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v58 = a3;
      __src = a6;
      v57 = a7;
      if (-v11 >= a5)
      {
        if (v11 == -1)
        {
          v49 = &v10[v9];
          *&v60[12] = *&v10[v9 + 12];
          *v60 = *&v10[v9];
          v50 = *a2;
          *(v49 + 12) = *(a2 + 12);
          *v49 = v50;
          *a2 = *v60;
          *(a2 + 12) = *&v60[12];
          return result;
        }

        v22 = -v11 / 2;
        v15 = a2;
        if (a2 != a3)
        {
          v23 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 2);
          v15 = a2;
          do
          {
            v24 = v23 >> 1;
            v25 = &v15[28 * (v23 >> 1)];
            v26 = *(v25 + 4);
            v27 = v25 + 28;
            v23 += ~(v23 >> 1);
            if (v26 < *&v9[28 * v22 + 16 + v10])
            {
              v15 = v27;
            }

            else
            {
              v23 = v24;
            }
          }

          while (v23);
        }

        v14 = 0x6DB6DB6DB6DB6DB7 * ((v15 - a2) >> 2);
        v16 = &v9[28 * v22 + v10];
      }

      else
      {
        v14 = a5 / 2;
        v15 = &a2[28 * (a5 / 2)];
        v16 = a2;
        if ((a2 - v9) != v10)
        {
          v17 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v9 - v10) >> 2);
          v16 = &v10[v9];
          do
          {
            v18 = v17 >> 1;
            v19 = &v16[28 * (v17 >> 1)];
            v20 = *(v19 + 4);
            v21 = v19 + 28;
            v17 += ~(v17 >> 1);
            if (v20 > *(v15 + 4))
            {
              v17 = v18;
            }

            else
            {
              v16 = v21;
            }
          }

          while (v17);
        }

        v22 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v9 - v10) >> 2);
      }

      a4 = -(v22 + v11);
      v56 = a5 - v14;
      v28 = a5;
      v29 = v22;
      v30 = sub_A058F0(v16, a2, v15);
      v31 = v29;
      v32 = v30;
      if (v31 + v14 >= v28 - (v31 + v14) - v11)
      {
        a6 = __src;
        v33 = v31;
        result = sub_A05FF8(v30, v15, v58, a4, v56, __src, v57);
        v15 = v16;
        a7 = v57;
        a4 = v33;
        a3 = v32;
      }

      else
      {
        a6 = __src;
        result = sub_A05FF8(&v10[v9], v16, v30, v31, v14, __src, v57);
        a7 = v57;
        v12 = v32;
        a3 = v58;
        v14 = v56;
      }

      a5 = v14;
      v9 = v12;
      a2 = v15;
      if (!v14)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v43 = -a6;
        v44 = a6;
        v45 = v9;
        do
        {
          v46 = *v45;
          *(v44 + 12) = *(v45 + 12);
          *v44 = v46;
          v44 = (v44 + 28);
          v45 += 28;
          v43 -= 28;
        }

        while (v45 != a2);
        while (a2 != a3)
        {
          if (*(a2 + 4) >= *(a6 + 16))
          {
            v47 = *a6;
            *(v9 + 12) = *(a6 + 12);
            *v9 = v47;
            v9 += 28;
            a6 += 28;
            if (v44 == a6)
            {
              return result;
            }
          }

          else
          {
            v48 = *a2;
            *(v9 + 12) = *(a2 + 12);
            *v9 = v48;
            v9 += 28;
            a2 += 28;
            if (v44 == a6)
            {
              return result;
            }
          }
        }

        return memmove(v9, a6, -(a6 + v43));
      }
    }

    else if (a2 != a3)
    {
      v34 = 0;
      do
      {
        v35 = (a6 + v34);
        v36 = *&a2[v34];
        *(v35 + 12) = *&a2[v34 + 12];
        *v35 = v36;
        v34 += 28;
      }

      while (&a2[v34] != a3);
      v37 = (a6 + v34);
      while (a2 != v9)
      {
        v38 = *(a2 - 3);
        v39 = *(v37 - 3);
        v40 = v39 < v38;
        if (v39 >= v38)
        {
          v41 = v37 - 28;
        }

        else
        {
          v41 = a2 - 28;
        }

        v42 = *v41;
        *(a3 - 1) = *(v41 + 12);
        *(a3 - 28) = v42;
        a3 -= 28;
        if (v40)
        {
          a2 -= 28;
        }

        else
        {
          v37 -= 28;
        }

        if (v37 == a6)
        {
          return result;
        }
      }

      if (v37 != a6)
      {
        v51 = -28;
        do
        {
          v52 = *(v37 - 28);
          v53 = *(v37 - 1);
          v54 = v37 - 28;
          v55 = &a3[v51];
          *(v55 + 12) = v53;
          *v55 = v52;
          v51 -= 28;
          v37 = v54;
        }

        while (v54 != a6);
      }
    }
  }

  return result;
}

void sub_A06424()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B36F8 = 0u;
  unk_27B3708 = 0u;
  dword_27B3718 = 1065353216;
  sub_3A9A34(&xmmword_27B36F8, v0, v0);
  sub_3A9A34(&xmmword_27B36F8, v3, v3);
  sub_3A9A34(&xmmword_27B36F8, __p, __p);
  sub_3A9A34(&xmmword_27B36F8, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B36D0 = 0;
    qword_27B36D8 = 0;
    qword_27B36C8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_A0666C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B36E0)
  {
    qword_27B36E8 = qword_27B36E0;
    operator delete(qword_27B36E0);
  }

  _Unwind_Resume(exception_object);
}

void sub_A06718(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) + 1444);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (!v3)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_A06874(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &off_266F900;
  *(a1 + 8) = a2;
  *(a1 + 16) = *a3;
  *(a1 + 32) = a3[1];
  *(a1 + 48) = a3 + 40;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0x8000000080000000;
  *(a1 + 96) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 172) = 1;
  *(a1 + 174) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  sub_A06998(a1);
  return a1;
}

void sub_A06914(_Unwind_Exception *exception_object)
{
  v5 = *(v1 + 184);
  if (v5)
  {
    *(v1 + 192) = v5;
    operator delete(v5);
    if ((*(v1 + 167) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 143) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v1 + 167) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 144));
  if ((*(v1 + 143) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(v1 + 120));
  if ((*(v1 + 119) & 0x80000000) == 0)
  {
LABEL_5:
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*v3);
  v6 = *v2;
  if (!*v2)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  *(v1 + 64) = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

void sub_A06998(uint64_t a1)
{
  sub_9D4074(&v67, *(a1 + 8));
  sub_9D4040(&v67, v66);
  while (sub_9D427C(&v67, v66))
  {
    v66[0] = sub_9D42B8(&v67);
    sub_4C7358(a1 + 56, v66);
    sub_9D40D8(&v67);
    sub_9D4040(&v67, v66);
  }

  v2 = *(a1 + 64);
  v3 = *(a1 + 56);
  if (v3 != v2)
  {
    v4 = *(a1 + 56);
    do
    {
      if (**v4 == 3)
      {
        *(a1 + 88) = *(*v4 + 40);
        v5 = *v3;
        v6 = *v3 + 816;
        v7 = a1 + 96;
        if (a1 + 96 != v6)
        {
          goto LABEL_14;
        }

LABEL_8:
        v8 = *(*(a1 + 64) - 8);
        v9 = (v8 + 816);
        v10 = a1 + 120;
        if (a1 + 120 != v8 + 816)
        {
          goto LABEL_9;
        }

LABEL_33:
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        if (v13 == v14)
        {
          goto LABEL_106;
        }

        goto LABEL_34;
      }

      ++v4;
    }

    while (v4 != v2);
    *(a1 + 88) = 0x7FFFFFFF;
    v5 = *v3;
    v6 = *v3 + 816;
    v7 = a1 + 96;
    if (a1 + 96 == v6)
    {
      goto LABEL_8;
    }

LABEL_14:
    v15 = *(v5 + 839);
    if (*(a1 + 119) < 0)
    {
      v21 = *(v5 + 816);
      v22 = *(v5 + 824);
      if ((v15 & 0x80u) == 0)
      {
        v23 = v6;
      }

      else
      {
        v23 = v21;
      }

      if ((v15 & 0x80u) == 0)
      {
        v24 = v15;
      }

      else
      {
        v24 = v22;
      }

      sub_13B38(v7, v23, v24);
      v8 = *(*(a1 + 64) - 8);
      v9 = (v8 + 816);
      v10 = a1 + 120;
      if (a1 + 120 == v8 + 816)
      {
        goto LABEL_33;
      }
    }

    else if ((v15 & 0x80) != 0)
    {
      sub_13A68(v7, *(v5 + 816), *(v5 + 824));
      v8 = *(*(a1 + 64) - 8);
      v9 = (v8 + 816);
      v10 = a1 + 120;
      if (a1 + 120 == v8 + 816)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v16;
      v8 = *(*(a1 + 64) - 8);
      v9 = (v8 + 816);
      v10 = a1 + 120;
      if (a1 + 120 == v8 + 816)
      {
        goto LABEL_33;
      }
    }

LABEL_9:
    v11 = *(v8 + 839);
    if (*(a1 + 143) < 0)
    {
      v17 = *(v8 + 816);
      v18 = *(v8 + 824);
      if ((v11 & 0x80u) == 0)
      {
        v19 = v9;
      }

      else
      {
        v19 = v17;
      }

      if ((v11 & 0x80u) == 0)
      {
        v20 = v11;
      }

      else
      {
        v20 = v18;
      }

      sub_13B38(v10, v19, v20);
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      if (v13 != v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if ((v11 & 0x80) == 0)
      {
        v12 = *v9;
        *(v10 + 16) = v9[2];
        *v10 = v12;
        v13 = *(a1 + 56);
        v14 = *(a1 + 64);
        if (v13 == v14)
        {
          goto LABEL_106;
        }

LABEL_34:
        v25 = 0;
        while (1)
        {
          if ((*(a1 + 167) & 0x8000000000000000) != 0)
          {
            if (*(a1 + 152))
            {
LABEL_41:
              v28 = *v13;
              v29 = **v13;
              if (v29 == 2)
              {
                goto LABEL_42;
              }

              goto LABEL_51;
            }
          }

          else if (*(a1 + 167))
          {
            goto LABEL_41;
          }

          v31 = *(*v13 + 6);
          if (v31 == -1 && (v31 = *(*v13 + 7), v31 == -1))
          {
            v67 = 0uLL;
            v68 = 0;
            if (*(a1 + 167) < 0)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v32 = **(a1 + 16) + 168 * v31;
            if ((*(v32 + 159) & 0x80000000) == 0)
            {
              v33 = *(v32 + 136);
              v68 = *(v32 + 152);
              v67 = v33;
              if ((*(a1 + 167) & 0x80000000) == 0)
              {
                goto LABEL_50;
              }

LABEL_49:
              operator delete(*(a1 + 144));
              goto LABEL_50;
            }

            sub_325C(&v67, *(v32 + 136), *(v32 + 144));
            if (*(a1 + 167) < 0)
            {
              goto LABEL_49;
            }
          }

LABEL_50:
          *(a1 + 144) = v67;
          *(a1 + 160) = v68;
          v28 = *v13;
          v29 = **v13;
          if (v29 == 2)
          {
LABEL_42:
            v30 = *(a1 + 168);
            *(a1 + 168) = v30 + 1;
            if (v30)
            {
              v25 = 1;
              goto LABEL_62;
            }

            *(a1 + 176) = v28;
            v28 = *v13;
            v25 = 1;
            if (**v13 == 1)
            {
              goto LABEL_61;
            }

            goto LABEL_62;
          }

LABEL_51:
          if (v25)
          {
            v25 = 1;
            if (v29 != 1)
            {
              goto LABEL_62;
            }

LABEL_61:
            *(a1 + 80) += *(v28 + 236);
            v28 = *v13;
            goto LABEL_62;
          }

          v25 = 0;
          if (v29 == 10 || v29 == 1)
          {
            *(a1 + 172) = 0;
          }

          if (v29 == 1)
          {
            goto LABEL_61;
          }

LABEL_62:
          if (v28[526])
          {
            v35 = *(a1 + 184);
            v36 = *(a1 + 192);
            v37 = v35;
            if (v35 != v36)
            {
              v37 = *(a1 + 184);
              while (*v37 != *(v28 + 2064))
              {
                if (++v37 == v36)
                {
                  v37 = *(a1 + 192);
                  break;
                }
              }
            }

            if (v37 != v36)
            {
              goto LABEL_38;
            }

            v38 = *(a1 + 200);
            if (v36 >= v38)
            {
              v39 = v36 - v35 + 1;
              if (v39 < 0)
              {
                goto LABEL_136;
              }

              v40 = v38 - v35;
              if (2 * v40 > v39)
              {
                v39 = 2 * v40;
              }

              if (v40 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v41 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                operator new();
              }

              v47 = v36 - v35;
              v48 = (v36 - v35);
              v49 = *(v28 + 2064);
LABEL_103:
              v50 = &v48[v35 - v36];
              *v48 = v49;
              v27 = v48 + 1;
              memcpy(v50, v35, v47);
              *(a1 + 184) = v50;
              *(a1 + 192) = v27;
              *(a1 + 200) = 0;
              if (v35)
              {
                operator delete(v35);
              }

              goto LABEL_37;
            }

            v26 = *(v28 + 2064);
          }

          else
          {
            if ((v28[536] & 1) == 0)
            {
              goto LABEL_38;
            }

            v35 = *(a1 + 184);
            v36 = *(a1 + 192);
            v42 = v35;
            if (v35 != v36)
            {
              v42 = *(a1 + 184);
              while (*v42 != *(v28 + 2136))
              {
                if (++v42 == v36)
                {
                  v42 = *(a1 + 192);
                  break;
                }
              }
            }

            if (v42 != v36)
            {
              goto LABEL_38;
            }

            v43 = *(a1 + 200);
            if (v36 >= v43)
            {
              v44 = v36 - v35 + 1;
              if (v44 < 0)
              {
LABEL_136:
                sub_1794();
              }

              v45 = v43 - v35;
              if (2 * v45 > v44)
              {
                v44 = 2 * v45;
              }

              if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v46 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                operator new();
              }

              v47 = v36 - v35;
              v48 = (v36 - v35);
              v49 = *(v28 + 2136);
              goto LABEL_103;
            }

            v26 = *(v28 + 2136);
          }

          *v36 = v26;
          v27 = v36 + 1;
LABEL_37:
          *(a1 + 192) = v27;
LABEL_38:
          if (++v13 == v14)
          {
            v13 = *(a1 + 56);
            v14 = *(a1 + 64);
            goto LABEL_106;
          }
        }
      }

      sub_13A68(v10, *(v8 + 816), *(v8 + 824));
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      if (v13 != v14)
      {
        goto LABEL_34;
      }
    }

LABEL_106:
    *(a1 + 173) = 0;
    if (v13 != v14)
    {
      v51 = 0;
      while (1)
      {
        v52 = *v13;
        v53 = **v13;
        if (v53 == 8 || v53 == 2)
        {
          if (*(v52 + 792) != 1 || (v55 = *(v52 + 94), v55 == -1) || (v56 = *(*(a1 + 16) + 72) + 696 * v55, v57 = *(v56 + 648), v58 = *(v56 + 656), v57 == v58))
          {
LABEL_120:
            v59 = **(a1 + 8);
            if (*(*(a1 + 8) + 8) - v59 == 32)
            {
              goto LABEL_124;
            }

LABEL_128:
            v65 = 0;
            goto LABEL_129;
          }

          while (*v57 != 0x1000003E8)
          {
            if (++v57 == v58)
            {
              goto LABEL_120;
            }
          }

          v51 = 1;
        }

        if (++v13 == v14)
        {
          goto LABEL_123;
        }
      }
    }

    v51 = 0;
LABEL_123:
    *(a1 + 173) = v51 & 1;
    v59 = **(a1 + 8);
    if (*(*(a1 + 8) + 8) - v59 != 32)
    {
      goto LABEL_128;
    }

LABEL_124:
    v62 = v59;
    v60 = *v59;
    v61 = v62[1];
    if (v61 - v60 != 104)
    {
      goto LABEL_128;
    }

    v65 = v60 == v61 || (v64 = *(v60 + 8), v63 = *(v60 + 16), v64 == v63) || *(v63 - 5704) != 4;
LABEL_129:
    *(a1 + 174) = v65;
  }
}

double sub_A07024@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    *a2 = *(v2 + 116);
    v3 = *(v2 + 128);
    *(a2 + 12) = v3;
    if (*a2 == 0x7FFFFFFF)
    {
      *a2 = *(a1 + 88) | (*(a1 + 88) << 32);
      *(a2 + 8) = 0;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0x8000000080000000;
    *(a2 + 9) = 0;
    *&v3 = 0xFFFFFFFF00000000;
    *(a2 + 12) = xmmword_22A5CD0;
  }

  return *&v3;
}

uint64_t sub_A070A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[308];
  if (v2 == 2)
  {
    return v1[(v1[10] != 0x7FFFFFFF) + 9];
  }

  if (v2 == 1)
  {
    return v1[(v1[16] != 0x7FFFFFFF) + 15];
  }

  return v1[9];
}

uint64_t sub_A07108(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[308];
  if (v2 == 2)
  {
    return v1[(v1[7] != 0x7FFFFFFF) + 6];
  }

  if (v2 == 1)
  {
    return v1[(v1[13] != 0x7FFFFFFF) + 12];
  }

  return v1[6];
}

uint64_t sub_A07180(uint64_t a1)
{
  if (*(a1 + 174))
  {
    return 0;
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 == v3)
  {
    return 65538;
  }

  while (1)
  {
    v4 = *v2;
    if (**v2 == 2)
    {
      break;
    }

    if (++v2 == v3)
    {
      return 65538;
    }
  }

  if (*(v4 + 792) != 1)
  {
    return 65538;
  }

  v5 = *(v4 + 94);
  if (v5 == -1)
  {
    return 65538;
  }

  else
  {
    return *(*(*(a1 + 16) + 72) + 696 * v5 + 556) | 0x10000 | *(*(*(a1 + 16) + 72) + 696 * v5 + 556) & 0xFF00u;
  }
}

BOOL sub_A07228(void *a1)
{
  v1 = a1[1];
  if (*(v1 + 1228) != -1)
  {
    return 0;
  }

  result = sub_B6E0((v1 + 72));
  if (result)
  {
    for (i = a1[7]; i != a1[8]; i += 8)
    {
      if (**i == 2 && (*(*i + 1008) & 0xFFFFFFFD) == 1)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_A072D4(uint64_t a1, int a2)
{
  v2 = *(a1 + 184);
  v3 = *(a1 + 192);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      if (++v2 == v3)
      {
        v2 = *(a1 + 192);
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t sub_A07308(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 1080);
  if (v2 == *(v1 + 1088))
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  else
  {
    return *v2;
  }
}

void sub_A07334(void **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = a2 + 8;
  *(a2 + 24) = 0;
  v4 = a1[7];
  v5 = a1[8];
  if (v4 == v5)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(a2 + 32);
    v8 = 0x7FFFFFFF;
    do
    {
      v9 = *v4;
      if (**v4 == 2)
      {
        v10 = *(v9 + 152);
        if (v10 != 0x7FFFFFFF)
        {
          v11 = *(v9 + 48);
          if (v11 == -1)
          {
            v15 = 0uLL;
            v16 = 0;
          }

          else
          {
            v12 = *a1[2] + 168 * v11;
            if (*(v12 + 159) < 0)
            {
              sub_325C(&v15, *(v12 + 136), *(v12 + 144));
            }

            else
            {
              v13 = *(v12 + 136);
              v16 = *(v12 + 152);
              v15 = v13;
            }
          }

          if (*(a2 + 31) < 0)
          {
            operator delete(*v3);
          }

          *v3 = v15;
          *(v3 + 16) = v16;
          if (*(*v4 + 792) != 1 || (v14 = *(*v4 + 752), v14 == -1))
          {
            v7 = 2;
          }

          else
          {
            v7 = *(a1[2][9] + 696 * v14 + 556);
          }

          v8 = v10;
        }
      }

      ++v4;
    }

    while (v4 != v5);
    *(a2 + 32) = v7;
  }

  *a2 = v8;
}

void sub_A0748C(_Unwind_Exception *exception_object)
{
  *(v1 + 32) = v3;
  *v1 = v4;
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_A074B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B998(a2);
  if (*(a1 + 173) == 1 && (*(a1 + 174) & 1) == 0)
  {
    operator new();
  }

  sub_A077A4(a1, a2);
}

void sub_A07704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v24 = v23;
  *(v22 + 8) = v24;
  if ((a22 & 0x80000000) == 0)
  {
    sub_53A868(v22);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  sub_53A868(v22);
  _Unwind_Resume(a1);
}

void sub_A0790C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A07928(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[174] == 1)
  {
    v2 = *(*a1 + 72);

LABEL_12:
    v2();
    return;
  }

  if (*(*(a1 + 5) + 8) == 1)
  {
    v2 = *(*a1 + 56);

    goto LABEL_12;
  }

  if (a1[173] == 1)
  {
    v2 = *(*a1 + 64);

    goto LABEL_12;
  }

  v3 = *(a1 + 1);
  if (*(v3 + 1228) == -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = sub_B6E0((v3 + 72));
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if (v7)
    {
      for (i = *(v4 + 7); ; i += 8)
      {
        if (i == *(v4 + 8))
        {

          sub_A07AB0(v4, v5);
        }

        if (**i == 2 && (*(*i + 1008) & 0xFFFFFFFD) == 1)
        {
          break;
        }
      }
    }
  }

  sub_A07BE8(a1, a2);
}

void sub_A07AB0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_64B998(a2);
  v4 = *(a1 + 8);
  nullsub_1();
  v6 = v5;
  v7 = sub_B718(v4 + 72);
  sub_64BDC8(a2, "{TripFrequency}", v6, v7);
  operator new();
}

void sub_A07BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_53A868(v15);
    _Unwind_Resume(a1);
  }

  sub_53A868(v15);
  _Unwind_Resume(a1);
}

void sub_A07BE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  sub_64B998(a2);
  if (*(a1 + 172) == 1 && (v4 = *(a1 + 176)) != 0 && (*(v4 + 1008) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 173))
    {
      goto LABEL_22;
    }

    sub_195A048(&__dst, "RouteDescription_LowFreq_FromStation_{RouteVehicle}", 0x33uLL);
    qmemcpy(__p, "{RouteVehicle}", 14);
    if (*(a1 + 174))
    {
      sub_4F0F0C();
    }

    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    if (v5 == v6)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v7 = *v5;
      if (**v5 == 2)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_40;
      }
    }

    if (*(v7 + 792) != 1 || (v20 = *(v7 + 94), v20 == -1))
    {
LABEL_40:
      v22 = 0;
      v23 = 2;
    }

    else
    {
      v21 = *(*(*(a1 + 16) + 72) + 696 * v20 + 556);
      v22 = v21 & 0xFF00;
      v23 = v21;
    }

    sub_9CBE3C(v22 | v23, v34);
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size >= 14)
    {
      v26 = (&p_dst->__r_.__value_.__l.__data_ + size);
      v27 = p_dst;
      do
      {
        v28 = memchr(v27, 123, size - 13);
        if (!v28)
        {
          break;
        }

        if (*v28 == __p[0] && *(v28 + 6) == *(__p + 6))
        {
          if (v28 != v26 && v28 - p_dst != -1)
          {
            if ((v35 & 0x80u) == 0)
            {
              v30 = v34;
            }

            else
            {
              v30 = v34[0];
            }

            if ((v35 & 0x80u) == 0)
            {
              v31 = v35;
            }

            else
            {
              v31 = v34[1];
            }

            std::string::replace(&__dst, v28 - p_dst, 0xEuLL, v30, v31);
          }

          break;
        }

        v27 = (v28 + 1);
        size = v26 - v27;
      }

      while (v26 - v27 >= 14);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    LODWORD(__p[0]) = *(a1 + 88);
    sub_64E308(a2, &qword_27B3768, __p, a1 + 144, 0);
    LODWORD(v34[0]) = *(a1 + 88);
    v33 = *(a1 + 32);
    v32 = *(a1 + 40);
    __p[0] = 0;
    __p[1] = 0;
    v37 = 0;
    sub_9CCC50(v34, (a1 + 144), (a1 + 96), v33 + 1177, v32, &__dst, a2, __p);
  }

  else
  {
    sub_195A048(&__dst, "RouteDescription_LowFreq", 0x18uLL);
    v8 = *(a1 + 8);
    v9 = v8[308];
    if (v9 == 2)
    {
      v10 = &v8[(v8[7] != 0x7FFFFFFF) + 6];
    }

    else if (v9 == 1)
    {
      v10 = &v8[(v8[13] != 0x7FFFFFFF) + 12];
    }

    else
    {
      v10 = v8 + 6;
    }

    LODWORD(__p[0]) = *v10;
    sub_64E308(a2, "{OutTheDoorTime}", __p, a1 + 96, 0);
    v11 = *(a1 + 8);
    v12 = v11[308];
    if (v12 == 2)
    {
      v13 = &v11[(v11[7] != 0x7FFFFFFF) + 6];
    }

    else if (v12 == 1)
    {
      v13 = &v11[(v11[13] != 0x7FFFFFFF) + 12];
    }

    else
    {
      v13 = v11 + 6;
    }

    LODWORD(v34[0]) = *v13;
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    __p[0] = 0;
    __p[1] = 0;
    v37 = 0;
    sub_9CCC50(v34, (a1 + 96), (a1 + 96), v15 + 1177, v14, &__dst, a2, __p);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
    v19 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = __dst.__r_.__value_.__l.__size_;
    }

    if (v19)
    {
      goto LABEL_25;
    }

LABEL_30:
    HIBYTE(v37) = 0;
    LOBYTE(__p[0]) = 0;
    goto LABEL_32;
  }

LABEL_22:
  v16 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = __dst.__r_.__value_.__l.__size_;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_25:
  v17 = sub_9274F4(*(a1 + 24), &__dst);
  if (*(v17 + 23) < 0)
  {
    sub_325C(__p, *v17, v17[1]);
  }

  else
  {
    v18 = *v17;
    v37 = v17[2];
    *__p = v18;
  }

LABEL_32:
  sub_64C184(a2, __p);
  sub_A090A0(a1, a2);
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }
}

void sub_A0801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v27);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_A08094(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  if (*(a1 + 174) == 1)
  {
    sub_195A048(&__dst, "TravelDescription_NoVehicle", 0x1BuLL);
    goto LABEL_61;
  }

  sub_195A048(&__dst, "TravelDescription_{RouteVehicle}", 0x20uLL);
  if (*(a1 + 174))
  {
    sub_4F0F0C();
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 2;
    while (1)
    {
      v8 = *v4;
      if (**v4 == 2)
      {
        if (v6)
        {
          if (!*(v8 + 792) || (v9 = *(v8 + 94), v9 == -1))
          {
            if (v7 != 2)
            {
              break;
            }
          }

          else if (*(*(*(a1 + 16) + 72) + 696 * v9 + 556) != v7)
          {
            break;
          }

          goto LABEL_18;
        }

        if (*(v8 + 792))
        {
          v10 = *(v8 + 94);
          if (v10 != -1)
          {
            v7 = *(*(*(a1 + 16) + 72) + 696 * v10 + 556);
LABEL_18:
            v6 = 1;
            goto LABEL_7;
          }
        }

        v6 = 1;
        v7 = 2;
      }

LABEL_7:
      if (++v4 == v5)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = 2;
LABEL_20:
  sub_9CBE3C(v7, &__p);
  if (v28 < 0)
  {
    if (v27 != 7)
    {
      goto LABEL_36;
    }

    if (*__p != 1768449366 || *(__p + 3) != 1701602153)
    {
      goto LABEL_36;
    }

    v27 = 7;
    p_p = __p;
  }

  else
  {
    if (v28 != 7)
    {
      goto LABEL_36;
    }

    if (__p != 1768449366 || *(&__p + 3) != 1701602153)
    {
      goto LABEL_36;
    }

    v28 = 7;
    p_p = &__p;
  }

  strcpy(p_p, "Transit");
LABEL_36:
  qmemcpy(v25, "{RouteVehicle}", 14);
  size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  if (size >= 14)
  {
    v16 = p_dst + size;
    v17 = p_dst;
    do
    {
      v18 = memchr(v17, 123, size - 13);
      if (!v18)
      {
        break;
      }

      if (*v18 == v25[0] && *(v18 + 6) == *(v25 + 6))
      {
        if (v18 != v16 && v18 - p_dst != -1)
        {
          if (v28 >= 0)
          {
            v20 = &__p;
          }

          else
          {
            v20 = __p;
          }

          if (v28 >= 0)
          {
            v21 = v28;
          }

          else
          {
            v21 = v27;
          }

          std::string::replace(&__dst, v18 - p_dst, 0xEuLL, v20, v21);
        }

        break;
      }

      v17 = (v18 + 1);
      size = v16 - v17;
    }

    while (v16 - v17 >= 14);
  }

  if (v28 < 0)
  {
    operator delete(__p);
  }

LABEL_61:
  sub_64B998(a2);
  v22 = sub_9274F4(*(a1 + 24), &__dst);
  v23 = *(a2 + 8);
  if (v23 >= *(a2 + 16))
  {
    *(a2 + 8) = sub_1CEE8(a2, v22);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_68:
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (*(v22 + 23) < 0)
    {
      sub_325C(*(a2 + 8), *v22, v22[1]);
    }

    else
    {
      v24 = *v22;
      *(v23 + 16) = v22[2];
      *v23 = v24;
    }

    *(a2 + 8) = v23 + 24;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }
  }
}

void sub_A083D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a24 < 0)
    {
LABEL_5:
      operator delete(a19);
      _Unwind_Resume(a1);
    }
  }

  else if (a24 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A08450@<X0>(void *a1@<X0>, void **a2@<X8>)
{
  sub_64B998(a2);
  v4 = a1[1];
  v5 = *(v4 + 1160);
  if (v5 != 0x7FFFFFFF)
  {
    v6 = *(v4 + 1191);
    if (v6 < 0)
    {
      if (!*(v4 + 1176))
      {
        goto LABEL_14;
      }
    }

    else if (!*(v4 + 1191))
    {
      goto LABEL_14;
    }

    if (*(a1[4] + 1177) < 8u)
    {
      goto LABEL_14;
    }

    if ((v6 & 0x80000000) != 0)
    {
      if (v5)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(v4 + 1176) == 0;
      }

      if (!v14)
      {
LABEL_27:
        v15 = a1[3];
        v22[23] = 19;
        strcpy(v22, "RouteDetailSubtitle");
        sub_9274F4(v15, v22);
        operator new();
      }
    }

    else
    {
      if (v5)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6 == 0;
      }

      if (!v7)
      {
        goto LABEL_27;
      }
    }

    operator new();
  }

LABEL_14:
  v8 = a1[3];
  v24 = 19;
  strcpy(__p, "RouteDetailSubtitle");
  v9 = sub_9274F4(v8, __p);
  v10 = a2[1];
  if (v10 >= a2[2])
  {
    a2[1] = sub_1CEE8(a2, v9);
    if (v24 < 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(v9 + 23) < 0)
  {
    sub_325C(a2[1], *v9, v9[1]);
    a2[1] = v10 + 3;
    if (v24 < 0)
    {
LABEL_19:
      operator delete(*__p);
      v12 = a1[1];
      v13 = v12[308];
      if (v13 == 2)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v13 == 1)
      {
        v18 = &v12[(v12[16] != 0x7FFFFFFF) + 15];
        v17 = &v12[(v12[13] != 0x7FFFFFFF) + 12];
      }

      else
      {
        v16 = v12 + 9;
        v17 = v12 + 6;
        v18 = v16;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v11 = *v9;
    v10[2] = v9[2];
    *v10 = v11;
    a2[1] = v10 + 3;
    if (v24 < 0)
    {
      goto LABEL_19;
    }
  }

  v12 = a1[1];
  v13 = v12[308];
  if (v13 != 2)
  {
    goto LABEL_29;
  }

LABEL_32:
  v18 = &v12[(v12[10] != 0x7FFFFFFF) + 9];
  v17 = &v12[(v12[7] != 0x7FFFFFFF) + 6];
LABEL_33:
  v19 = *v18 - *v17;
  if (v19 >= 60)
  {
    v20 = 10 * v19;
  }

  else
  {
    v20 = 600;
  }

  return sub_64EA58(a2, "{TripDuration}", v20);
}

void sub_A08990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  *(v28 + 8) = v29;
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v28);
  _Unwind_Resume(a1);
}

void sub_A08A68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B998(a2);
  if (*(a1 + 173) == 1)
  {
    sub_A08E84(a1, a2);
  }

  operator new();
}

void sub_A09050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a17);
  _Unwind_Resume(exception_object);
}

void sub_A090A0(uint64_t a1, void ***a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    HIBYTE(v23) = 0;
    LOBYTE(v22) = 0;
  }

  else if (*(v4 + 23) < 0)
  {
    sub_325C(&v22, *v4, *(v4 + 8));
    v4 = *a2;
    v5 = a2[1];
  }

  else
  {
    v6 = *v4;
    v23 = *(v4 + 16);
    v22 = v6;
  }

  while (v5 != v4)
  {
    v7 = *(v5 - 1);
    v5 -= 3;
    if (v7 < 0)
    {
      operator delete(*v5);
    }
  }

  a2[1] = v4;
  __dst = 0uLL;
  v21 = 0;
  if (*(a1 + 173) == 1)
  {
    operator new();
  }

  v18 = 0uLL;
  v19 = 0;
  v17 = *(a1 + 80);
  if (v17 >= 1 && !*(*(a1 + 32) + 1444))
  {
    LOBYTE(__p[0]) = 1;
    sub_64E428(a2, "{TotalWalkDistance}", &v17, __p);
    operator new();
  }

  sub_9FB598(&unk_22A5F28, &__dst, &v22, &v18, &v16);
  v8 = *(a1 + 8);
  v9 = *(v8 + 1160);
  if (v9 != 0x7FFFFFFF)
  {
    v10 = *(v8 + 1191);
    if (v10 < 0)
    {
      if (!*(v8 + 1176))
      {
        goto LABEL_27;
      }
    }

    else if (!*(v8 + 1191))
    {
      goto LABEL_27;
    }

    if (*(*(a1 + 32) + 1177) >= 8u && *(a1 + 173) == 1)
    {
      v14[0] = 0;
      v14[1] = 0;
      v15 = 0;
      if ((v10 & 0x80000000) != 0)
      {
        v10 = *(v8 + 1176);
      }

      if (!v9 && v10)
      {
        operator new();
      }

      sub_64EFAC(a2, "{TotalPrice}", v8 + 1160);
    }
  }

LABEL_27:
  v11 = a2[1];
  if (v11 >= a2[2])
  {
    a2[1] = sub_5C416C(a2, &v16);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

LABEL_31:
    if (SHIBYTE(v19) < 0)
    {
      goto LABEL_38;
    }

LABEL_32:
    if (SHIBYTE(v21) < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_325C(a2[1], v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = *&v16.__r_.__value_.__l.__data_;
    v11[2] = v16.__r_.__value_.__r.__words[2];
    *v11 = v12;
  }

  a2[1] = v11 + 3;
  a2[1] = v11 + 3;
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

LABEL_37:
  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_38:
  operator delete(v18);
  if (SHIBYTE(v21) < 0)
  {
LABEL_39:
    operator delete(__dst);
    if (SHIBYTE(v23) < 0)
    {
      goto LABEL_40;
    }

    return;
  }

LABEL_33:
  if (SHIBYTE(v23) < 0)
  {
LABEL_40:
    operator delete(v22);
  }
}

void sub_A09798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a31 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
LABEL_7:
      if (*(v38 - 121) < 0)
      {
        operator delete(*(v38 - 144));
      }

      if (*(v38 - 89) < 0)
      {
        operator delete(*(v38 - 112));
        if ((*(v38 - 57) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((*(v38 - 57) & 0x80000000) == 0)
      {
LABEL_11:
        _Unwind_Resume(a1);
      }

      operator delete(*(v38 - 80));
      _Unwind_Resume(a1);
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(a33);
  goto LABEL_7;
}

void sub_A098D4(uint64_t a1@<X0>, void ***a2@<X8>)
{
  sub_64B998(a2);
  v4 = *(a1 + 176);
  if (!v4 || ((v5 = *(v4 + 1008) & 0xFFFFFFFD, *(a1 + 172) == 1) ? (v6 = v5 == 1) : (v6 = 0), !v6))
  {
    sub_A08E84(a1, a2);
  }

  sub_A0995C(a1, a2);
  sub_A090A0(a1, a2);
}

void sub_A0995C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 176);
  v5 = 0x7FFFFFFF;
  if (v4)
  {
    v6 = *(v4 + 116);
    if (v6 == 0x7FFFFFFF)
    {
      v7 = 0;
      v5 = *(a1 + 88);
      v6 = v5;
      if (*(a1 + 174))
      {
LABEL_50:
        sub_4F0F0C();
      }
    }

    else
    {
      v5 = *(v4 + 120);
      v7 = *(v4 + 124);
      if (*(a1 + 174))
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0x7FFFFFFF;
    if (*(a1 + 174))
    {
      goto LABEL_50;
    }
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  if (v8 == v9)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v10 = *v8;
    if (**v8 == 2)
    {
      break;
    }

    if (++v8 == v9)
    {
      goto LABEL_13;
    }
  }

  if (*(v10 + 792) != 1 || (v11 = *(v10 + 94), v11 == -1))
  {
LABEL_13:
    v13 = 0;
    v14 = 2;
  }

  else
  {
    v12 = *(*(*(a1 + 16) + 72) + 696 * v11 + 556);
    v13 = v12 & 0xFF00;
    v14 = v12;
  }

  sub_9CBE3C(v13 | v14, &v27[24]);
  if ((*(*(a1 + 8) + 1232) - 1) < 2)
  {
    v15 = *(a1 + 173);
  }

  else
  {
    v15 = 0;
  }

  if ((v15 == 1 || !*(a1 + 173)) && v5 != 0x7FFFFFFF && v7 == 1)
  {
    if ((v28 & 0x80u) == 0)
    {
      v16 = v28;
    }

    else
    {
      v16 = *&v27[32];
    }

    if (v16 + 37 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v16 + 37 > 0x16)
      {
        operator new();
      }

      qmemcpy(v27, "RouteDescription_LowFreq_FromStation_", 37);
      if ((v28 & 0x80u) == 0)
      {
        v23 = &v27[24];
      }

      else
      {
        v23 = *&v27[24];
      }

      memmove(&v27[37], v23, v16);
      v27[v16 + 37] = 0;
      if (v15)
      {
        v6 = v5;
      }

      goto LABEL_37;
    }

LABEL_56:
    sub_3244();
  }

  if ((v28 & 0x80u) == 0)
  {
    v17 = v28;
  }

  else
  {
    v17 = *&v27[32];
  }

  if (v17 + 41 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_56;
  }

  if (v17 + 41 > 0x16)
  {
    operator new();
  }

  memset(v27, 0, 24);
  v27[23] = v17 + 41;
  if ((v28 & 0x80u) == 0)
  {
    v18 = &v27[24];
  }

  else
  {
    v18 = *&v27[24];
  }

  memmove(v27, v18, v17);
  strcpy(&v27[v17], " scheduled at {FirstVehicleDepartureTime}");
LABEL_37:
  v26 = v6;
  sub_64E308(a2, &qword_27B3768, &v26, a1 + 144, 0);
  v20 = *(a1 + 32);
  v19 = *(a1 + 40);
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  sub_9CCC50(&v26, (a1 + 144), (a1 + 144), v20 + 1177, v19, v27, a2, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v21 = sub_9274F4(*(a1 + 24), v27);
  if (*(v21 + 23) < 0)
  {
    sub_325C(__p, *v21, v21[1]);
  }

  else
  {
    v22 = *v21;
    v25 = v21[2];
    *__p = v22;
  }

  sub_64C184(a2, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
    if ((v27[23] & 0x80000000) == 0)
    {
LABEL_44:
      if ((v28 & 0x80000000) == 0)
      {
        return;
      }

LABEL_48:
      operator delete(*&v27[24]);
      return;
    }
  }

  else if ((v27[23] & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(*v27);
  if (v28 < 0)
  {
    goto LABEL_48;
  }
}

void sub_A09D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_A09DFC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 80);
  if (v3 >= 1)
  {
    LOBYTE(__p) = 1;
    sub_64E428(a2, "{TotalWalkDistance}", &v3, &__p);
    operator new();
  }
}

void sub_A09EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A09F04(uint64_t a1)
{
  sub_978E88(a1);

  operator delete();
}

void sub_A09F3C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3780 = 0u;
  *algn_27B3790 = 0u;
  dword_27B37A0 = 1065353216;
  sub_3A9A34(&xmmword_27B3780, v0, v0);
  sub_3A9A34(&xmmword_27B3780, v3, v3);
  sub_3A9A34(&xmmword_27B3780, __p, __p);
  sub_3A9A34(&xmmword_27B3780, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3728 = 0;
    qword_27B3730 = 0;
    qword_27B3720 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_A0A214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3738)
  {
    qword_27B3740 = qword_27B3738;
    operator delete(qword_27B3738);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0A2D8(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 40) = 0;
  operator new();
}

void sub_A0A5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_A0A614(v18);
  _Unwind_Resume(a1);
}

uint64_t *sub_A0A614(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_15DB5A8(v1 + 64);
    sub_15D8C38(v1);
    operator delete();
  }

  return result;
}

uint64_t sub_A0A66C(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    sub_15DB5A8(v1 + 64);
    sub_15D8C38(v1);
    operator delete();
  }

  return result;
}

void sub_A0A6C0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v17);
  v6 = *(a1 + 24);
  v7 = *(*(v6 + 40) + 8 * sub_A0AF10(a2) + 8);
  v8 = *(a1 + 24);
  v9 = sub_A0AF10(a2);
  sub_11CD2D4(v7, *(*(v8 + 104) + 8 * v9 + 8), *(a1 + 16), &v15);
  *a3 = 0x7FFFFFFF;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 100;
  if (v15 == 1)
  {
    sub_506818(v16, &v11);
    *a3 = v11;
    v10 = v14;
    *(a3 + 8) = v12;
    *(a3 + 24) = v13;
    *(a3 + 32) = v10;
    *(a1 + 40) = 1;
  }

  *(a1 + 32) = sub_7EA60(v17) + *(a1 + 32);
  if (v15 == 1)
  {
    sub_15DD88C(v16);
  }
}

void sub_A0A7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15)
  {
    sub_15DD88C((v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_A0A7F0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_7E9A4(v10);
  v6 = *(a1 + 24);
  v7 = *(*(v6 + 104) + 8 * sub_A0AF10(a2) + 8);
  sub_3B045C(*a1);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v8 = *(v7 + 72);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result = sub_7EA60(v10) + *(a1 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_A0A9A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0A9C4(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  sub_7E9A4(v62);
  *a4 = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 120) = 0;
  v8 = **(a1 + 8);
  if (0x34F72C234F72C235 * ((*(*(a1 + 8) + 8) - v8) >> 3) <= a2)
  {
    sub_6FAB4();
  }

  v9 = v8 + 232 * a2;
  v10 = *a3;
  v12 = v9 + 48;
  v11 = *(v9 + 48);
  v13 = (*(v12 + 8) - v11) >> 6;
  if (v13 <= *a3)
  {
    sub_6FAB4();
  }

  v14 = (v11 + (v10 << 6));
  v15 = a3[1];
  if (0x8E38E38E38E38E39 * ((v14[1] - *v14) >> 4) <= v15)
  {
    sub_6FAB4();
  }

  if (!*(*v14 + 144 * v15))
  {
    v16 = 0;
    v17 = 0;
    v18 = 1136 * a3[2];
    v19 = (((((71 * a3[2]) & 0xFFFFFFFFFFFFFFFLL) * 0xE6C2B4481CD8569uLL) >> 64) >> 2) + 1;
    while (1)
    {
      if (v17 == v13)
      {
LABEL_43:
        v41 = *(a1 + 24);
        v42 = sub_A0AF10(a2);
        v43 = v16 - 1;
        sub_11CD42C(*(*(v41 + 104) + 8 * v42 + 8), v16 - 1, &v63);
        if (v63 == 1)
        {
          v44 = sub_3B045C(*a1);
          v45 = sub_3AFEE8(*a1);
          sub_5080E4(v64, v44, v45, &v54);
          *a4 = v54;
          *(a4 + 8) = v55;
          *(a4 + 24) = v56;
          v55 = 0uLL;
          *(a4 + 32) = v57;
          *(a4 + 40) = v58;
          *(a4 + 48) = v59;
          *(a4 + 64) = v60;
          v56 = 0;
          v59 = 0uLL;
          v60 = 0;
          *(a4 + 72) = v61;
          *(a4 + 80) = 1;
        }

        v46 = *(a1 + 24);
        v47 = *(*(v46 + 40) + 8 * sub_A0AF10(a2) + 8);
        v48 = *(a1 + 24);
        v49 = sub_A0AF10(a2);
        sub_11CD4C4(v47, *(*(v48 + 104) + 8 * v49 + 8), *(a1 + 16), v43, &v54);
        if (v54 == 1)
        {
          sub_5086CC(&v55, &v51);
          *(a4 + 88) = v51;
          v50 = v53;
          *(a4 + 104) = v52;
          *(a4 + 112) = v50;
          *(a4 + 120) = 1;
        }

        *(a1 + 32) = sub_7EA60(v62) + *(a1 + 32);
        if (v54 == 1)
        {
          sub_15DF174(&v55);
        }

        if (v63 == 1)
        {
          sub_15DE0C4(v64);
        }

        return;
      }

      v20 = (v11 + (v17 << 6));
      if (v17 != v10)
      {
        v25 = *v20;
        v26 = v20[1];
        if (v25 == v26)
        {
          goto LABEL_6;
        }

        while (*v25)
        {
          v25 += 144;
          if (v25 == v26)
          {
            goto LABEL_6;
          }
        }

        v28 = *(v25 + 8);
        v27 = *(v25 + 16);
        if (v28 == v27)
        {
          goto LABEL_6;
        }

        v29 = v27 - v28 - 1136;
        if (v29 < 0x470)
        {
          v30 = 0;
          v31 = v28;
          goto LABEL_39;
        }

        v37 = 0;
        v38 = 0;
        v39 = v29 / 0x470 + 1;
        v31 = v28 + 1136 * (v39 & 0x7FFFFFFFFFFFFELL);
        v40 = v39 & 0x7FFFFFFFFFFFFELL;
        do
        {
          if (!*(v28 + 1128))
          {
            ++v37;
          }

          if (!*(v28 + 2264))
          {
            ++v38;
          }

          v28 += 2272;
          v40 -= 2;
        }

        while (v40);
        v30 = v38 + v37;
        if (v39 != (v39 & 0x7FFFFFFFFFFFFELL))
        {
          do
          {
LABEL_39:
            if (!*(v31 + 1128))
            {
              ++v30;
            }

            v31 += 1136;
          }

          while (v31 != v27);
        }

        v16 += v30;
        goto LABEL_6;
      }

      v21 = *v20;
      if (0x8E38E38E38E38E39 * ((v20[1] - *v20) >> 4) <= v15)
      {
        sub_6FAB4();
      }

      if (v18 == -1136)
      {
        goto LABEL_6;
      }

      v22 = *(v21 + 144 * v15 + 8);
      if (v18 >= 0x470)
      {
        v32 = 0;
        v33 = 0;
        v24 = v22 + 1136 * (v19 & 0x7FFFFFFFFFFFFELL);
        v34 = v22;
        v35 = v19 & 0x7FFFFFFFFFFFFELL;
        do
        {
          if (!*(v34 + 1128))
          {
            ++v32;
          }

          if (!*(v34 + 2264))
          {
            ++v33;
          }

          v34 += 2272;
          v35 -= 2;
        }

        while (v35);
        v23 = v33 + v32;
        if (v19 == (v19 & 0x7FFFFFFFFFFFFELL))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v21 + 144 * v15 + 8);
      }

      v36 = v18 + 1136 + v22;
      do
      {
        if (!*(v24 + 1128))
        {
          ++v23;
        }

        v24 += 1136;
      }

      while (v24 != v36);
LABEL_31:
      v16 += v23;
LABEL_6:
      if (++v17 > v10)
      {
        goto LABEL_43;
      }
    }
  }
}

void sub_A0AE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  if (a14 == 1)
  {
    sub_15DF174(v29 + 8);
    if (a27 != 1)
    {
LABEL_3:
      sub_974FF4(v28);
      _Unwind_Resume(a1);
    }
  }

  else if (a27 != 1)
  {
    goto LABEL_3;
  }

  sub_15DE0C4(&a28);
  sub_974FF4(v28);
  _Unwind_Resume(a1);
}

unint64_t sub_A0AF10(unint64_t result)
{
  if (result >> 31)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, v1);
    sub_23E08("narrowing ", &v8, &v9);
    v3 = std::string::append(&v9, " failed", 7uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    v10 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10;
    }

    if (v11 >= 0)
    {
      v6 = HIBYTE(v11);
    }

    else
    {
      v6 = *(&v10 + 1);
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return result;
}

void sub_A0AFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_A0B064(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

void sub_A0B1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_A0B244(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  while (1)
  {
    if (v1 == v2)
    {
      return 0;
    }

    sub_9D4074(v6, v1);
    sub_9D4040(v6, v5);
    if (sub_9D427C(v6, v5))
    {
      break;
    }

LABEL_2:
    v1 += 412;
  }

  while (1)
  {
    v3 = sub_9D42B8(v6);
    if (*(v3 + 2104) == 1 && *(v3 + 2097) == 1)
    {
      return 1;
    }

    sub_9D40D8(v6);
    sub_9D4040(v6, v5);
    if (!sub_9D427C(v6, v5))
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_A0B304(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v37 = a2[1];
  if (*a2 != v37)
  {
    v4 = "payment_method";
    v5 = *(v2 + 1200);
    v6 = *(v2 + 1208);
    if (v5 != v6)
    {
      goto LABEL_8;
    }

LABEL_3:
    while (1)
    {
      v2 += 3296;
      if (v2 == v37)
      {
        break;
      }

      v5 = *(v2 + 1200);
      v6 = *(v2 + 1208);
      if (v5 != v6)
      {
        while (1)
        {
LABEL_8:
          v7 = *v5;
          v8 = sub_3AFEE8(*(a1 + 8));
          v45 = v4;
          LODWORD(v40[0]) = v7;
          v46 = 0;
          v42 = &v46;
          v43 = v40;
          v9 = *(v8 + 3856) + 1;
          *(v8 + 3856) = v9;
          if (!*v8)
          {
LABEL_49:
            sub_2C9894(&v42);
LABEL_50:
            exception = __cxa_allocate_exception(0x40uLL);
            v41 = HIDWORD(v7);
            v46 = v7;
            v40[0] = sub_7FCF0(6u);
            v40[1] = v33;
            sub_2C956C("Failed to acquire entity ", &v45, " in quad node ", " at position ", " on layer ", v40, &v42);
            if ((v44 & 0x80u) == 0)
            {
              v34 = &v42;
            }

            else
            {
              v34 = v42;
            }

            if ((v44 & 0x80u) == 0)
            {
              v35 = v44;
            }

            else
            {
              v35 = v43;
            }

            v36 = sub_2D390(exception, v34, v35);
          }

          if (*(v8 + 592) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 600) = v9;
            v10 = *(v8 + 608);
            if (!v10)
            {
              goto LABEL_49;
            }
          }

          else if (*(v8 + 616) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 624) = v9;
            v10 = *(v8 + 632);
            if (!v10)
            {
              goto LABEL_49;
            }
          }

          else if (*(v8 + 640) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 648) = v9;
            v10 = *(v8 + 656);
            if (!v10)
            {
              goto LABEL_49;
            }
          }

          else if (*(v8 + 664) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 672) = v9;
            v10 = *(v8 + 680);
            if (!v10)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v38 = v8;
            v39 = v8 + 16;
            v11 = *(v8 + 648);
            v12 = *(v8 + 624);
            v13 = *(v8 + 600);
            v14 = v13 >= v9;
            if (v13 < v9)
            {
              v9 = *(v8 + 600);
            }

            v15 = 24;
            if (v14)
            {
              v15 = 0;
            }

            v16 = v12 >= v9;
            if (v12 < v9)
            {
              v9 = *(v8 + 624);
            }

            v17 = 25;
            if (v16)
            {
              v17 = v15;
            }

            if (v11 >= v9)
            {
              v18 = v9;
            }

            else
            {
              v18 = *(v8 + 648);
            }

            v19 = v4;
            v20 = *(v8 + 672);
            if (v11 >= v9)
            {
              v21 = v17;
            }

            else
            {
              v21 = 26;
            }

            v10 = sub_2D52A4(*v8, 6, v7, 1);
            v14 = v20 >= v18;
            v4 = v19;
            v22 = 27;
            if (v14)
            {
              v22 = v21;
            }

            v23 = v39 + 24 * v22;
            *v23 = v40[0];
            *(v23 + 8) = *(v38 + 3856);
            *(v23 + 16) = v10;
            if (!v10)
            {
              goto LABEL_49;
            }
          }

          v24 = (v10 + *v10);
          v25 = (v24 - *v24);
          if (*v25 < 0x31u)
          {
            goto LABEL_50;
          }

          v26 = v25[24];
          if (!v26)
          {
            goto LABEL_50;
          }

          v27 = (v24 + v26 + *(v24 + v26));
          if (*v27 <= HIDWORD(v7))
          {
            goto LABEL_50;
          }

          v28 = (&v27[HIDWORD(v7) + 1] + v27[HIDWORD(v7) + 1]);
          v29 = (v28 - *v28);
          if (*v29 >= 9u && (v30 = v29[4]) != 0)
          {
            if (sub_9BD08C(*(v28 + v30)))
            {
              return 1;
            }
          }

          else if (sub_9BD08C(0))
          {
            return 1;
          }

          if (++v5 == v6)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  return 0;
}

void sub_A0B658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A0B688(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a2 + 456) = *(result + 16);
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*a2 != v4)
  {
    while (1)
    {
      if (*(v3 + 1160) != 0x7FFFFFFF)
      {
        v6 = *(v3 + 1191);
        if ((v6 & 0x80u) != 0)
        {
          v6 = *(v3 + 1176);
        }

        if (v6)
        {
          break;
        }
      }

      v3 += 3296;
      if (v3 == v4)
      {
        return result;
      }
    }

    if (sub_A0B304(result, a2))
    {
      v9 = *(a2 + 408);
      v8 = *(a2 + 416);
      if (v9 >= v8)
      {
        v11 = *(a2 + 400);
        v12 = (v9 - v11);
        v13 = v9 - v11 + 1;
        if (v13 < 0)
        {
          sub_1794();
        }

        v14 = v8 - v11;
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          operator new();
        }

        v16 = v9 - v11;
        *v12 = 1;
        v10 = v12 + 1;
        memcpy(0, v11, v16);
        *(a2 + 400) = 0;
        *(a2 + 408) = v12 + 1;
        *(a2 + 416) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v9 = 1;
        v10 = v9 + 1;
      }

      *(a2 + 408) = v10;
    }

    result = sub_A0B244(a2);
    if (result)
    {
      *(a2 + 448) = *(a3 + 1185);
      operator new();
    }
  }

  return result;
}

void sub_A0BAFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_6081F0(va);
  _Unwind_Resume(a1);
}

void sub_A0BB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A0BB38(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x186186186186186)
  {
    sub_1794();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v4;
  }

  v15 = a1;
  if (v6)
  {
    if (v6 <= 0x186186186186186)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v12 = 168 * v3;
  v13 = 168 * v3;
  v14 = 0;
  *v12 = *a2;
  sub_55BD50(168 * v3 + 8, a3);
  v13 += 168;
  sub_A0BCB4(a1, &__p);
  v7 = a1[1];
  v9 = v12;
  for (i = v13; v13 != v9; i = v13)
  {
    v13 = i - 168;
    sub_6081F0(i - 160);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_A0BCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A0BE30(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_A0BCB4(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v7 = *result;
    v8 = a2[1] + *result - v4;
    do
    {
      *v8 = *v7;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v8 + 8) = *(v7 + 8);
      *(v8 + 24) = *(v7 + 24);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = *(v7 + 32);
      *(v8 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 56);
      *(v8 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = *(v7 + 80);
      v9 = *(v7 + 104);
      *(v8 + 96) = *(v7 + 96);
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      *(v8 + 104) = v9;
      v10 = *(v7 + 112);
      *(v8 + 116) = *(v7 + 116);
      *(v8 + 112) = v10;
      v11 = *(v7 + 120);
      *(v8 + 136) = *(v7 + 136);
      *(v8 + 120) = v11;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = 0;
      v12 = *(v7 + 144);
      *(v8 + 160) = *(v7 + 160);
      *(v8 + 144) = v12;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      *(v7 + 144) = 0;
      v7 += 168;
      v8 += 168;
    }

    while (v7 != v4);
    do
    {
      result = sub_6081F0(v5 + 8);
      v5 += 168;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v13 = *v3;
  *v3 = v6;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t sub_A0BE30(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 168;
    sub_6081F0(i - 160);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A0BE88()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B37D8 = 0u;
  unk_27B37E8 = 0u;
  dword_27B37F8 = 1065353216;
  sub_3A9A34(&xmmword_27B37D8, v0, v0);
  sub_3A9A34(&xmmword_27B37D8, v3, v3);
  sub_3A9A34(&xmmword_27B37D8, __p, __p);
  sub_3A9A34(&xmmword_27B37D8, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B37B0 = 0;
    qword_27B37B8 = 0;
    qword_27B37A8 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_A0C0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B37C0)
  {
    qword_27B37C8 = qword_27B37C0;
    operator delete(qword_27B37C0);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0C17C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 != a2[1])
  {
    v4 = *(v2 + 8);
    v3 = *(v2 + 16);
    if (v4 != v3 && *(v3 - 5704) == 4)
    {
      sub_A0C27C(a2, &__p);
      v7 = v14;
      if (v14)
      {
        do
        {
          if (v7[6] - v7[5] >= 9uLL)
          {
            sub_A0C3A4(a1, (v7 + 5), a2);
          }

          v7 = *v7;
        }

        while (v7);
        v8 = v14;
        if (v14)
        {
          do
          {
            v10 = *v8;
            v11 = v8[5];
            if (v11)
            {
              v8[6] = v11;
              operator delete(v11);
            }

            v12 = v8[2];
            if (v12)
            {
              v8[3] = v12;
              operator delete(v12);
            }

            operator delete(v8);
            v8 = v10;
          }

          while (v10);
        }
      }

      v9 = __p;
      __p = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }
  }
}

void sub_A0C268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A0D0AC(va);
  _Unwind_Resume(a1);
}

void sub_A0C27C(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0x4EC4EC4EC4EC4EC5 * (v4 >> 3);
    do
    {
      v11[0] = v7;
      sub_A0D128(*a2 + v6, __p);
      v11[2] = __p;
      v9 = sub_A0D3B0(a3, __p);
      sub_2512DC((v9 + 5), v11);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v7;
      v6 += 104;
    }

    while (v8 != v7);
  }
}

void sub_A0C380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_A0D0AC(v10);
  _Unwind_Resume(a1);
}

void sub_A0C3A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v3 = *a2;
  v135 = *(a2 + 8);
  if (*a2 == v135)
  {
    v57 = 0;
    __p = 0;
    v144 = 0;
    v145 = 0;
    goto LABEL_110;
  }

  v4 = a1;
  v5 = 0;
  while (2)
  {
    v140 = v3;
    v6 = *v3;
    v7 = *a3;
    if (v5 >= v148)
    {
      v11 = v146;
      v12 = v5 - v146;
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v146) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1794();
      }

      if (0x5555555555555556 * ((v148 - v146) >> 3) > v14)
      {
        v14 = 0x5555555555555556 * ((v148 - v146) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v148 - v146) >> 3) >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1808();
      }

      v16 = (8 * ((v5 - v146) >> 3));
      *v16 = 0;
      v16[1] = 0;
      v16[2] = 0;
      v5 = (24 * v13 + 24);
      memcpy((24 * v13 - v12), v11, v12);
      v146 = (24 * v13 - v12);
      v148 = 0;
      if (v11)
      {
        operator delete(v11);
      }

      v147 = 24 * v13 + 24;
      v17 = v7 + 104 * v6;
      v10 = *(v17 + 8);
      v9 = *(v17 + 16);
      if (v10 == v9)
      {
        goto LABEL_3;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      v5 += 24;
      v147 = v5;
      v8 = v7 + 104 * v6;
      v10 = *(v8 + 8);
      v9 = *(v8 + 16);
      if (v10 == v9)
      {
        goto LABEL_3;
      }
    }

    v18 = 0;
    v19 = -1;
    while (2)
    {
      if (*v10 != 3)
      {
        goto LABEL_22;
      }

      v20 = *(v10 + 752);
      if (v19 != -1 && v19 == v20)
      {
        v20 = v19;
        goto LABEL_21;
      }

      v21 = *(*(v4 + 8) + 72) + 696 * v20;
      if (*(v21 + 641) != 1 || !*(v21 + 640))
      {
        v30 = *(v5 - 2);
        v29 = *(v5 - 1);
        if (v30 < v29)
        {
          *v30 = v18;
          *(v30 + 1) = -1;
          v31 = v30 + 16;
          goto LABEL_78;
        }

        v32 = *(v5 - 3);
        v33 = v30 - v32;
        v34 = (v30 - v32) >> 4;
        v35 = v34 + 1;
        if ((v34 + 1) >> 60)
        {
          sub_1794();
        }

        v36 = v29 - v32;
        if (v36 >> 3 > v35)
        {
          v35 = v36 >> 3;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF0)
        {
          v37 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          if (!(v37 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v38 = v34;
        v39 = (16 * v34);
        *v39 = v18;
        v39[1] = -1;
        goto LABEL_76;
      }

      v22 = sub_9A9F28(*v4, v10, *(v21 + 640));
      v23 = *(v4 + 16);
      v24 = sub_94AD3C(v23, v22);
      v25 = v23[1];
      if (!*&v25)
      {
        goto LABEL_70;
      }

      v26 = v24;
      v27 = vcnt_s8(v25);
      v27.i16[0] = vaddlv_u8(v27);
      if (v27.u32[0] > 1uLL)
      {
        v28 = v24;
        if (v24 >= *&v25)
        {
          v28 = v24 % *&v25;
        }
      }

      else
      {
        v28 = (*&v25 - 1) & v24;
      }

      v40 = *(*v23 + 8 * v28);
      if (!v40 || (v41 = *v40) == 0)
      {
LABEL_70:
        v52 = v23[6];
        v53 = v23[7];
        __p = (0x6DB6DB6DB6DB6DB7 * ((v52 - v23[5]) >> 4));
        if (v52 >= v53)
        {
          v54 = sub_9A6FB4(v23 + 5, v22);
          v4 = a1;
        }

        else
        {
          sub_55F1E8(v52, v22);
          v4 = a1;
          v54 = v52 + 112;
          v23[6] = v52 + 112;
        }

        v23[6] = v54;
        sub_9A7108(v23, v22, v22, &__p);
        v45 = __p;
        v5 = v147;
        v47 = *(v147 - 16);
        v46 = *(v147 - 8);
        if (v47 < v46)
        {
          goto LABEL_74;
        }

LABEL_61:
        v32 = *(v5 - 3);
        v33 = v47 - v32;
        v48 = (v47 - v32) >> 4;
        v49 = v48 + 1;
        if ((v48 + 1) >> 60)
        {
          sub_1794();
        }

        v50 = v46 - v32;
        if (v50 >> 3 > v49)
        {
          v49 = v50 >> 3;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFF0)
        {
          v51 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v49;
        }

        if (v51)
        {
          if (!(v51 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v38 = v48;
        v39 = (16 * v48);
        *v39 = v18;
        v39[1] = v45;
LABEL_76:
        v31 = v39 + 2;
        v55 = &v39[-2 * v38];
        memcpy(v55, v32, v33);
        *(v5 - 3) = v55;
        *(v5 - 2) = v31;
        *(v5 - 1) = 0;
        if (v32)
        {
          operator delete(v32);
        }

        goto LABEL_78;
      }

      if (v27.u32[0] < 2uLL)
      {
        v42 = *&v25 - 1;
        while (1)
        {
          v44 = v41[1];
          if (v44 == v26)
          {
            if (sub_55DD5C((v41 + 2), v22))
            {
              goto LABEL_60;
            }
          }

          else if ((v44 & v42) != v28)
          {
            goto LABEL_70;
          }

          v41 = *v41;
          if (!v41)
          {
            goto LABEL_70;
          }
        }
      }

      while (1)
      {
        v43 = v41[1];
        if (v43 == v26)
        {
          break;
        }

        if (v43 >= *&v25)
        {
          v43 %= *&v25;
        }

        if (v43 != v28)
        {
          goto LABEL_70;
        }

LABEL_50:
        v41 = *v41;
        if (!v41)
        {
          goto LABEL_70;
        }
      }

      if (!sub_55DD5C((v41 + 2), v22))
      {
        goto LABEL_50;
      }

LABEL_60:
      v45 = v41[16];
      v4 = a1;
      v5 = v147;
      v47 = *(v147 - 16);
      v46 = *(v147 - 8);
      if (v47 >= v46)
      {
        goto LABEL_61;
      }

LABEL_74:
      *v47 = v18;
      *(v47 + 1) = v45;
      v31 = v47 + 16;
LABEL_78:
      *(v5 - 2) = v31;
LABEL_21:
      ++v18;
      v19 = v20;
LABEL_22:
      v10 += 5704;
      if (v10 != v9)
      {
        continue;
      }

      break;
    }

LABEL_3:
    v3 = v140 + 1;
    if (v140 + 1 != v135)
    {
      continue;
    }

    break;
  }

  v56 = v146;
  __p = 0;
  v144 = 0;
  v145 = 0;
  if (v146 == v5)
  {
    v57 = 0;
  }

  else
  {
    v57 = 0;
    do
    {
      v58 = *v56;
      v59 = v56[1];
      while (v58 != v59)
      {
        v60 = 0;
        if (v57)
        {
          v60 = 0;
          while (*v58 != *v60)
          {
            v60 += 4;
            if (v60 == v57)
            {
              goto LABEL_93;
            }
          }
        }

        if (v60 == v57)
        {
LABEL_93:
          if (v57 < v145)
          {
            *v57 = *v58;
            v57[1] = 0;
            v57[2] = 0;
            v57[3] = 0;
            v57 += 4;
          }

          else
          {
            v61 = (v57 >> 5) + 1;
            if (v61 >> 59)
            {
              sub_1794();
            }

            if (v145 >> 4 > v61)
            {
              v61 = v145 >> 4;
            }

            if (v61)
            {
              if (!(v61 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v62 = (32 * (v57 >> 5));
            *v62 = *v58;
            v62[1] = 0;
            v62[2] = 0;
            v62[3] = 0;
            if (v57)
            {
              v63 = 0;
              v64 = 0;
              do
              {
                *v64 = *v63;
                *(v64 + 16) = 0;
                *(v64 + 24) = 0;
                *(v64 + 8) = *(v63 + 8);
                *(v64 + 24) = *(v63 + 24);
                *(v63 + 8) = 0;
                *(v63 + 16) = 0;
                *(v63 + 24) = 0;
                v63 += 32;
                v64 += 32;
              }

              while (v63 != v57);
              for (i = 0; i != v57; i += 4)
              {
                v66 = i[1];
                if (v66)
                {
                  i[2] = v66;
                  operator delete(v66);
                }
              }
            }

            v57 = v62 + 4;
            __p = 0;
            v144 = v62 + 4;
            v145 = 0;
          }

          v144 = v57;
        }

        v58 += 2;
      }

      v56 += 3;
    }

    while (v56 != v5);
  }

LABEL_110:
  v67 = 126 - 2 * __clz(v57 >> 5);
  if (v57)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  sub_A0D8BC(0, v57, v68, 1);
  v131 = v146;
  v136 = v147;
  if (v146 != v147)
  {
    v70 = v146;
    while (1)
    {
      v71 = *(v70 + 1) - *v70;
      if (v71)
      {
        break;
      }

LABEL_115:
      v70 += 24;
      if (v70 == v136)
      {
        goto LABEL_146;
      }
    }

    v72 = 0;
    v73 = v71 >> 4;
    v138 = v71 >> 4;
    v141 = v70;
    while (2)
    {
      v74 = *v70;
      v75 = (*v70 + 16 * v72);
      if (v75[1] == -1)
      {
        ++v72;
        goto LABEL_119;
      }

      if (++v72 >= ((*(v70 + 1) - v74) >> 4))
      {
        v76 = -1;
        v77 = __p;
        v78 = v144;
        if (__p == v144)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v76 = *(v74 + 16 * v72) - 1;
        v77 = __p;
        v78 = v144;
        if (__p == v144)
        {
          goto LABEL_119;
        }
      }

      v79 = *v75;
      do
      {
        if (*v77 >= v79 && *v77 <= v76)
        {
          v83 = v77[2];
          v82 = v77[3];
          if (v83 < v82)
          {
            *v83 = v75[1];
            v80 = v83 + 8;
          }

          else
          {
            v84 = v77[1];
            v85 = v83 - v84;
            v86 = (v83 - v84) >> 3;
            v87 = v86 + 1;
            if ((v86 + 1) >> 61)
            {
              sub_1794();
            }

            v88 = v82 - v84;
            if (v88 >> 2 > v87)
            {
              v87 = v88 >> 2;
            }

            if (v88 >= 0x7FFFFFFFFFFFFFF8)
            {
              v89 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v89 = v87;
            }

            if (v89)
            {
              if (!(v89 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v90 = (v83 - v84) >> 3;
            v91 = (8 * v86);
            v92 = (8 * v86 - 8 * v90);
            *v91 = v75[1];
            v80 = v91 + 1;
            v69 = memcpy(v92, v84, v85);
            v77[1] = v92;
            v77[2] = v80;
            v77[3] = 0;
            if (v84)
            {
              operator delete(v84);
            }
          }

          v77[2] = v80;
        }

        v77 += 4;
      }

      while (v77 != v78);
      v73 = v138;
      v70 = v141;
LABEL_119:
      if (v72 == v73)
      {
        goto LABEL_115;
      }

      continue;
    }
  }

LABEL_146:
  sub_A0D2A0(v69, &__p);
  v93 = v131;
  v94 = *a2;
  v95 = __p;
  v130 = *(a2 + 8);
  v142 = __p;
  if (*a2 != v130)
  {
    v129 = v144 - __p;
    v96 = (v144 - __p) >> 5;
    v139 = v96;
    do
    {
      if (v129 < 0x21)
      {
        v97 = -1;
      }

      else
      {
        v97 = v95[4] - 1;
      }

      v133 = v94;
      v98 = *a3 + 104 * *v94;
      _X28 = *(v98 + 8);
      v99 = *(v98 + 16);
      if (_X28 != v99)
      {
        v101 = 0;
        v102 = 0;
        do
        {
          __asm { PRFM            #0, [X28,#0x42D8] }

          if (*_X28 == 3)
          {
            if (v101 <= v97)
            {
              v108 = v102;
              if (v96 <= v102)
              {
                goto LABEL_202;
              }
            }

            else
            {
              v108 = v102 + 1;
              if (v96 <= v102 + 2)
              {
                v97 = -1;
                if (v96 <= v108)
                {
LABEL_202:
                  sub_6FAB4();
                }
              }

              else
              {
                v97 = v95[4 * v108] - 1;
                if (v96 <= v108)
                {
                  goto LABEL_202;
                }
              }
            }

            v109 = &v95[4 * v108 + 1];
            if ((_X28 + 720) != v109)
            {
              _X9 = _X28 + 17848;
              v112 = *v109;
              v111 = v95[4 * v108 + 2];
              v113 = v111 - *v109;
              __asm { PRFM            #0, [X9] }

              v115 = *(_X28 + 736);
              v116 = *(_X28 + 720);
              if (v115 - v116 < v113)
              {
                if (v116)
                {
                  *(_X28 + 728) = v116;
                  operator delete(v116);
                  v115 = 0;
                  *(_X28 + 720) = 0;
                  *(_X28 + 728) = 0;
                  *(_X28 + 736) = 0;
                }

                v117 = v113 >> 3;
                if (!((v113 >> 3) >> 61))
                {
                  if (v115 >> 2 > v117)
                  {
                    v117 = v115 >> 2;
                  }

                  if (v115 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v118 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v118 = v117;
                  }

                  if (!(v118 >> 61))
                  {
                    operator new();
                  }
                }

                sub_1794();
              }

              v119 = *(_X28 + 728);
              v120 = v119 - v116;
              if (v119 - v116 >= v113)
              {
                if (v111 != v112)
                {
                  v123 = *(_X28 + 720);
                  memmove(v116, v112, v113);
                  v96 = v139;
                  v95 = v142;
                  v116 = v123;
                }

                *(_X28 + 728) = &v116[v113];
              }

              else
              {
                if (v119 != v116)
                {
                  memmove(v116, v112, v119 - v116);
                  v119 = *(_X28 + 728);
                }

                v121 = &v112[v120];
                v122 = v111 - &v112[v120];
                if (v122)
                {
                  memmove(v119, v121, v122);
                }

                *(_X28 + 728) = &v119[v122];
                v96 = v139;
                v95 = v142;
              }
            }

            ++v101;
            v102 = v108;
          }

          _X28 += 5704;
        }

        while (_X28 != v99);
      }

      v93 = v131;
      v94 = v133 + 1;
    }

    while (v133 + 1 != v130);
  }

  if (v95)
  {
    for (j = v144; j != v95; j -= 4)
    {
      v125 = *(j - 3);
      if (v125)
      {
        *(j - 2) = v125;
        operator delete(v125);
        v95 = v142;
      }
    }

    operator delete(v95);
  }

  if (v93)
  {
    if (v93 != v136)
    {
      v126 = v136;
      do
      {
        v128 = *(v126 - 3);
        v126 -= 24;
        v127 = v128;
        if (v128)
        {
          *(v136 - 2) = v127;
          operator delete(v127);
        }

        v136 = v126;
      }

      while (v126 != v93);
    }

    v147 = v93;
    operator delete(v93);
  }
}

void sub_A0CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, char *);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_37484(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_A0D0AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        v2[6] = v6;
        operator delete(v6);
      }

      v7 = v2[2];
      if (v7)
      {
        v2[3] = v7;
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_A0D128(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (*v3 == 3)
      {
        v6 = a2[2];
        if (v5 < v6)
        {
          *v5 = *(v3 + 1896);
          v5 += 8;
        }

        else
        {
          v7 = v5;
          v8 = v5 >> 3;
          v9 = v8 + 1;
          if ((v8 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v6 >> 2 > v9)
          {
            v9 = v6 >> 2;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFF8)
          {
            v10 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v10 = v9;
          }

          if (v10)
          {
            if (!(v10 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v11 = (8 * v8);
          *v11 = *(v3 + 1896);
          v5 = (v11 + 1);
          memcpy(0, 0, v7);
          a2[1] = v5;
          a2[2] = 0;
        }

        a2[1] = v5;
      }

      v3 += 5704;
    }

    while (v3 != v4);
  }

  *a2 = 0;
}

void sub_A0D278(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0D2A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      *v11 = 0u;
      *__p = 0u;
      v13 = 1065353216;
      if (v4 != v5)
      {
        v6 = v4;
        do
        {
          sub_9C6938(v11, v6, v6);
          if (v7)
          {
            *v4++ = *v6;
          }

          ++v6;
        }

        while (v6 != v5);
        v8 = __p[0];
        if (__p[0])
        {
          do
          {
            v9 = *v8;
            operator delete(v8);
            v8 = v9;
          }

          while (v9);
        }

        v10 = v11[0];
        v11[0] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      if (v4 != *(v2 + 16))
      {
        *(v2 + 16) = v4;
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void *sub_A0D3B0(void *a1, uint64_t **a2)
{
  v2 = a2[1];
  v3 = 31337;
  if (*a2 != v2)
  {
    v4 = *a2;
    do
    {
      v5 = *v4++;
      v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + v5;
    }

    while (v4 != v2);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_34;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v6)
    {
      v8 = v3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_34:
    sub_A0D764();
  }

  v11 = v2 - *a2;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = result[1];
      if (v16 == v3)
      {
        v18 = result[2];
        v17 = result[3];
        if (v17 - v18 == v11)
        {
          if (v18 == v17)
          {
            return result;
          }

          for (i = *a2; *v18 == *i; ++i)
          {
            v18 += 8;
            if (v18 == v17)
            {
              return result;
            }
          }
        }
      }

      else if ((v16 & (*&v6 - 1)) != v8)
      {
        goto LABEL_34;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v3)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_34;
    }

LABEL_15:
    result = *result;
    if (!result)
    {
      goto LABEL_34;
    }
  }

  v14 = result[2];
  v13 = result[3];
  if (v13 - v14 != v11)
  {
    goto LABEL_15;
  }

  if (v14 != v13)
  {
    for (j = *a2; *v14 == *j; ++j)
    {
      v14 += 8;
      if (v14 == v13)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

void sub_A0D750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A0D858(va);
  _Unwind_Resume(a1);
}

void sub_A0D834(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_A0D858(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A0D858(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[5];
      if (v3)
      {
        v2[6] = v3;
        operator delete(v3);
      }

      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_A0D8BC(unint64_t *a1, unint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v129 = a2 - 4;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 5;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          sub_A0E348(v7, v7 + 4, v129);
          return;
        case 4:
          sub_A0E348(v7, v7 + 4, v7 + 8);
          v48 = v7[8];
          if (*(a2 - 4) < v48)
          {
            v49 = v7[11];
            v50 = *(v7 + 9);
            v7[10] = 0;
            v7[11] = 0;
            v7[9] = 0;
            v7[8] = *(a2 - 4);
            *(v7 + 9) = *(a2 - 3);
            v7[11] = *(a2 - 1);
            *(a2 - 4) = v48;
            *(a2 - 3) = v50;
            *(a2 - 1) = v49;
            v51 = v7[8];
            v52 = v7[4];
            if (v51 < v52)
            {
              v53 = v7[7];
              v55 = v7[9];
              v54 = v7[10];
              v56 = v7[11];
              v7[7] = v56;
              v7[8] = v52;
              v57 = *(v7 + 5);
              v7[4] = v51;
              v7[5] = v55;
              v7[6] = v54;
              *(v7 + 9) = v57;
              v7[11] = v53;
              v58 = *v7;
              if (v51 < *v7)
              {
                v59 = v7[3];
                v7[3] = v56;
                v7[4] = v58;
                v60 = *(v7 + 1);
                *v7 = v51;
                v7[1] = v55;
                v7[2] = v54;
                *(v7 + 5) = v60;
                v7[7] = v59;
              }
            }
          }

          return;
        case 5:

          sub_A0E474(v7, (v7 + 4), (v7 + 8), v7 + 12, v129);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v45 = *v7;
        if (*(a2 - 4) < *v7)
        {
          v46 = v7[3];
          v47 = *(v7 + 1);
          v7[2] = 0;
          v7[3] = 0;
          v7[1] = 0;
          *v7 = *(a2 - 4);
          *(v7 + 1) = *(a2 - 3);
          v7[3] = *(a2 - 1);
          *(a2 - 4) = v45;
          *(a2 - 3) = v47;
          *(a2 - 1) = v46;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v77 = (v8 - 2) >> 1;
      v78 = v77;
      while (1)
      {
        if (v77 >= v78)
        {
          v80 = (2 * (v78 & 0x7FFFFFFFFFFFFFFLL)) | 1;
          v81 = &v7[4 * v80];
          if (2 * (v78 & 0x7FFFFFFFFFFFFFFLL) + 2 >= v8)
          {
            v82 = *v81;
            v84 = &v7[4 * v78];
            v85 = *v84;
            if (*v81 >= *v84)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v82 = v81[4];
            v83 = *v81 >= v82;
            if (*v81 > v82)
            {
              v82 = *v81;
            }

            if (!v83)
            {
              v81 += 4;
              v80 = 2 * (v78 & 0x7FFFFFFFFFFFFFFLL) + 2;
            }

            v84 = &v7[4 * v78];
            v85 = *v84;
            if (v82 >= *v84)
            {
LABEL_113:
              v86 = *(v84 + 1);
              v87 = v84[3];
              v84[2] = 0;
              v84[3] = 0;
              v84[1] = 0;
              while (1)
              {
                v89 = v84;
                v84 = v81;
                *v89 = v82;
                v90 = v81[3];
                *(v89 + 1) = *(v84 + 1);
                v89[3] = v90;
                v84[1] = 0;
                v84[2] = 0;
                v84[3] = 0;
                if (v77 < v80)
                {
                  break;
                }

                v91 = (2 * v80) | 1;
                v81 = &v7[4 * v91];
                v80 = 2 * v80 + 2;
                if (v80 < v8)
                {
                  v82 = *v81;
                  v88 = v81[4];
                  if (*v81 <= v88)
                  {
                    v82 = v81[4];
                  }

                  if (*v81 >= v88)
                  {
                    v80 = v91;
                  }

                  else
                  {
                    v81 += 4;
                  }

                  if (v82 < v85)
                  {
                    break;
                  }
                }

                else
                {
                  v82 = *v81;
                  v80 = v91;
                  if (*v81 < v85)
                  {
                    break;
                  }
                }
              }

              *v84 = v85;
              *(v84 + 1) = v86;
              v84[3] = v87;
            }
          }
        }

        v79 = v78-- <= 0;
        if (v79)
        {
          do
          {
            v92 = 0;
            v93 = *v7;
            v94 = v7[1];
            v95 = v7[2];
            v96 = v7[3];
            v7[1] = 0;
            v7[2] = 0;
            v97 = v7;
            v7[3] = 0;
            do
            {
              v105 = &v97[4 * v92];
              v103 = v105 + 4;
              v106 = (2 * v92) | 1;
              v92 = 2 * v92 + 2;
              if (v92 < v8)
              {
                v100 = v105[8];
                v99 = v105 + 8;
                v98 = v100;
                v101 = *(v99 - 4);
                v102 = v101 >= v100;
                if (v101 > v100)
                {
                  v98 = *(v99 - 4);
                }

                if (v102)
                {
                  v92 = v106;
                }

                else
                {
                  v103 = v99;
                }
              }

              else
              {
                v98 = *v103;
                v92 = v106;
              }

              *v97 = v98;
              v104 = v103[3];
              *(v97 + 1) = *(v103 + 1);
              v97[3] = v104;
              v103[1] = 0;
              v103[2] = 0;
              v103[3] = 0;
              v97 = v103;
            }

            while (v92 <= ((v8 - 2) >> 1));
            if (v103 == a2 - 4)
            {
              *v103 = v93;
              v103[1] = v94;
              v103[2] = v95;
              v103[3] = v96;
            }

            else
            {
              *v103 = *(a2 - 4);
              v107 = *(a2 - 1);
              *(v103 + 1) = *(a2 - 3);
              v103[3] = v107;
              *(a2 - 4) = v93;
              *(a2 - 3) = v94;
              *(a2 - 2) = v95;
              *(a2 - 1) = v96;
              v108 = (v103 - v7 + 32) >> 5;
              v79 = v108 < 2;
              v109 = v108 - 2;
              if (!v79)
              {
                v110 = v109 >> 1;
                v111 = &v7[4 * v110];
                v112 = *v103;
                if (*v111 < *v103)
                {
                  v113 = *(v103 + 1);
                  v114 = v103[3];
                  v103[1] = 0;
                  v103[2] = 0;
                  v103[3] = 0;
                  v115 = *v111;
                  do
                  {
                    v116 = v103;
                    v103 = v111;
                    *v116 = v115;
                    v117 = v111[3];
                    *(v116 + 1) = *(v103 + 1);
                    v116[3] = v117;
                    v103[1] = 0;
                    v103[2] = 0;
                    v103[3] = 0;
                    if (!v110)
                    {
                      break;
                    }

                    v110 = (v110 - 1) >> 1;
                    v111 = &v7[4 * v110];
                    v115 = *v111;
                  }

                  while (*v111 < v112);
                  *v103 = v112;
                  *(v103 + 1) = v113;
                  v103[3] = v114;
                }
              }
            }

            a2 -= 4;
            v79 = v8-- <= 2;
          }

          while (!v79);
          return;
        }
      }
    }

    v9 = v8 >> 1;
    v10 = &v7[4 * (v8 >> 1)];
    if (v8 < 0x81)
    {
      sub_A0E348(&a1[4 * (v8 >> 1)], a1, v129);
      --a3;
      v15 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v16 = 0;
      v17 = a1[1];
      v18 = *(a1 + 1);
      a1[2] = 0;
      a1[3] = 0;
      a1[1] = 0;
      do
      {
        v19 = a1[v16 + 4];
        v16 += 4;
      }

      while (v19 < v15);
      v20 = &a1[v16];
      v21 = a2;
      if (v16 == 4)
      {
        v21 = a2;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v23 = *(v21 - 4);
          v21 -= 4;
        }

        while (v23 >= v15);
      }

      else
      {
        do
        {
          v22 = *(v21 - 4);
          v21 -= 4;
        }

        while (v22 >= v15);
      }

      v7 = &a1[v16];
      if (v20 < v21)
      {
        v24 = v21;
        do
        {
          v25 = v7[3];
          v26 = *(v7 + 1);
          v7[2] = 0;
          v7[3] = 0;
          v7[1] = 0;
          *v7 = *v24;
          *(v7 + 1) = *(v24 + 1);
          v7[3] = v24[3];
          *v24 = v19;
          *(v24 + 1) = v26;
          v24[3] = v25;
          do
          {
            v27 = v7[4];
            v7 += 4;
            v19 = v27;
          }

          while (v27 < v15);
          do
          {
            v28 = *(v24 - 4);
            v24 -= 4;
          }

          while (v28 >= v15);
        }

        while (v7 < v24);
      }

      if (v7 - 4 == a1)
      {
        v30 = *(v7 - 3);
        *(v7 - 4) = v15;
        if (v30)
        {
          *(v7 - 2) = v30;
          v128 = v18;
          operator delete(v30);
          v18 = v128;
          *(v7 - 3) = 0;
        }
      }

      else
      {
        *a1 = *(v7 - 4);
        v29 = a1[1];
        if (v29)
        {
          a1[2] = v29;
          v127 = v18;
          operator delete(v29);
          v18 = v127;
          a1[1] = 0;
          a1[2] = 0;
          a1[3] = 0;
        }

        *(a1 + 1) = *(v7 - 3);
        a1[3] = *(v7 - 1);
        *(v7 - 4) = v15;
        *(v7 - 3) = 0;
      }

      *(v7 - 3) = v17;
      *(v7 - 1) = v18;
      if (v20 < v21)
      {
LABEL_39:
        sub_A0D8BC(a1, v7 - 4, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v31 = sub_A0E694(a1, v7 - 4);
        if (sub_A0E694(v7, a2))
        {
          a2 = v7 - 4;
          if (v31)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v31)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_A0E348(a1, &a1[4 * (v8 >> 1)], v129);
      v11 = 4 * v9;
      sub_A0E348(a1 + 4, &a1[v11 - 4], a2 - 8);
      sub_A0E348(a1 + 8, &a1[v11 + 4], a2 - 12);
      sub_A0E348(&a1[v11 - 4], v10, &a1[v11 + 4]);
      v12 = *a1;
      v13 = a1[3];
      v14 = *(a1 + 1);
      a1[2] = 0;
      a1[3] = 0;
      *a1 = *v10;
      a1[1] = 0;
      *(a1 + 1) = *(v10 + 1);
      a1[3] = v10[3];
      *v10 = v12;
      *(v10 + 1) = v14;
      v10[3] = v13;
      --a3;
      v15 = *a1;
      if (a4)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (*(a1 - 4) < v15)
      {
        goto LABEL_16;
      }

      v32 = a1[1];
      v33 = *(a1 + 1);
      a1[2] = 0;
      a1[3] = 0;
      a1[1] = 0;
      if (v15 >= *v129)
      {
        v35 = a1 + 4;
        do
        {
          v7 = v35;
          if (v35 >= a2)
          {
            break;
          }

          v35 += 4;
        }

        while (v15 >= *v7);
      }

      else
      {
        v7 = a1;
        do
        {
          v34 = v7[4];
          v7 += 4;
        }

        while (v15 >= v34);
      }

      v36 = a2;
      if (v7 < a2)
      {
        v36 = a2;
        do
        {
          v37 = *(v36 - 4);
          v36 -= 4;
        }

        while (v15 < v37);
      }

      if (v7 < v36)
      {
        v38 = *v7;
        do
        {
          v39 = v7[3];
          v40 = *(v7 + 1);
          v7[2] = 0;
          v7[3] = 0;
          v7[1] = 0;
          *v7 = *v36;
          *(v7 + 1) = *(v36 + 1);
          v7[3] = v36[3];
          *v36 = v38;
          *(v36 + 1) = v40;
          v36[3] = v39;
          do
          {
            v41 = v7[4];
            v7 += 4;
            v38 = v41;
          }

          while (v15 >= v41);
          do
          {
            v42 = *(v36 - 4);
            v36 -= 4;
          }

          while (v15 < v42);
        }

        while (v7 < v36);
      }

      if (v7 - 4 == a1)
      {
        v44 = *(v7 - 3);
        *(v7 - 4) = v15;
        if (v44)
        {
          *(v7 - 2) = v44;
          v132 = v33;
          operator delete(v44);
          v33 = v132;
          *(v7 - 3) = 0;
        }
      }

      else
      {
        *a1 = *(v7 - 4);
        v43 = a1[1];
        if (v43)
        {
          a1[2] = v43;
          v131 = v33;
          operator delete(v43);
          v33 = v131;
          a1[1] = 0;
          a1[2] = 0;
          a1[3] = 0;
        }

        *(a1 + 1) = *(v7 - 3);
        a1[3] = *(v7 - 1);
        *(v7 - 4) = v15;
        *(v7 - 3) = 0;
      }

      a4 = 0;
      *(v7 - 3) = v32;
      *(v7 - 1) = v33;
    }
  }

  v61 = v7 + 4;
  v63 = v7 == a2 || v61 == a2;
  if (a4)
  {
    if (v63)
    {
      return;
    }

    v64 = 0;
    v65 = v7;
    while (1)
    {
      v66 = v61;
      v67 = v65[4];
      v68 = *v65;
      if (v67 < *v65)
      {
        v69 = v65[5];
        v70 = *(v65 + 3);
        v65[6] = 0;
        v65[7] = 0;
        v65[5] = 0;
        v71 = v66[1];
        *v66 = v68;
        if (v71)
        {
          v66[2] = v71;
          v133 = v70;
          operator delete(v71);
          v70 = v133;
          v66[2] = 0;
          v66[3] = 0;
        }

        v72 = (v65 + 1);
        *(v66 + 1) = *(v65 + 1);
        v66[3] = v65[3];
        v65[1] = 0;
        v65[2] = 0;
        v65[3] = 0;
        if (v65 == v7)
        {
          v65 = v7;
        }

        else
        {
          v73 = *(v65 - 4);
          if (v67 < v73)
          {
            v74 = v64;
            while (1)
            {
              v75 = v7 + v74;
              v76 = *(v7 + v74 - 8);
              *(v75 + 8) = *(v7 + v74 - 24);
              *(v75 + 3) = v76;
              *(v75 - 1) = 0;
              *v75 = v73;
              *(v75 - 3) = 0;
              *(v75 - 2) = 0;
              v74 -= 32;
              if (!v74)
              {
                break;
              }

              v73 = *(v75 - 8);
              if (v67 >= v73)
              {
                v65 = (v7 + v74);
                goto LABEL_99;
              }
            }

            v65 = v7;
LABEL_99:
            v72 = v75 - 24;
          }
        }

        *v65 = v67;
        *v72 = v69;
        *(v65 + 1) = v70;
      }

      v61 = v66 + 4;
      v64 += 32;
      v65 = v66;
      if (v66 + 4 == a2)
      {
        return;
      }
    }
  }

  if (!v63)
  {
    do
    {
      v118 = *v61;
      v119 = *a1;
      if (*v61 < *a1)
      {
        v120 = a1[5];
        v121 = *(a1 + 3);
        a1[6] = 0;
        a1[7] = 0;
        a1[5] = 0;
        v122 = v61[1];
        *v61 = v119;
        if (v122)
        {
          v61[2] = v122;
          v134 = v121;
          operator delete(v122);
          v121 = v134;
          v61[2] = 0;
          v61[3] = 0;
        }

        v123 = a1 + 1;
        *(v61 + 1) = *(a1 + 1);
        v61[3] = a1[3];
        a1[1] = 0;
        a1[2] = 0;
        a1[3] = 0;
        v124 = *(a1 - 4);
        v125 = a1;
        if (v118 < v124)
        {
          v125 = a1;
          do
          {
            v126 = *(v125 - 1);
            *(v125 - 1) = 0;
            *v125 = v124;
            v124 = *(v125 - 8);
            *(v125 + 1) = *(v125 - 3);
            v125[3] = v126;
            *(v125 - 3) = 0;
            *(v125 - 2) = 0;
            v125 -= 4;
          }

          while (v118 < v124);
          v123 = v125 + 1;
        }

        *v125 = v118;
        *v123 = v120;
        *(v125 + 1) = v121;
      }

      v61 += 4;
      a1 += 4;
    }

    while (v61 != a2);
  }
}

__n128 sub_A0E304(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[3];
  result = *(*a1 + 1);
  v2[2] = 0;
  v2[3] = 0;
  v2[1] = 0;
  *v2 = *v3;
  *(v2 + 1) = *(v3 + 8);
  v2[3] = *(v3 + 24);
  *v3 = v4;
  *(v3 + 8) = result;
  *(v3 + 24) = v5;
  return result;
}

unint64_t *sub_A0E348(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 >= *result)
  {
    if (v5 < v3)
    {
      v9 = a2[3];
      v10 = *(a2 + 1);
      a2[2] = 0;
      a2[3] = 0;
      a2[1] = 0;
      *a2 = *a3;
      *(a2 + 1) = *(a3 + 1);
      a2[3] = a3[3];
      *a3 = v3;
      *(a3 + 1) = v10;
      a3[3] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        v12 = result[3];
        v13 = *(result + 1);
        result[2] = 0;
        result[3] = 0;
        result[1] = 0;
        *result = *a2;
        *(result + 1) = *(a2 + 1);
        result[3] = a2[3];
        *a2 = v11;
        *(a2 + 1) = v13;
        a2[3] = v12;
      }
    }
  }

  else
  {
    v7 = result[1];
    v6 = result[2];
    v8 = result[3];
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
    if (v5 >= v3)
    {
      *result = *a2;
      *(result + 1) = *(a2 + 1);
      result[3] = a2[3];
      *a2 = v4;
      a2[1] = v7;
      a2[2] = v6;
      a2[3] = v8;
      if (*a3 >= v4)
      {
        return result;
      }

      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      *a2 = *a3;
      *(a2 + 1) = *(a3 + 1);
      a2[3] = a3[3];
    }

    else
    {
      *result = *a3;
      *(result + 1) = *(a3 + 1);
      result[3] = a3[3];
    }

    *a3 = v4;
    a3[1] = v7;
    a3[2] = v6;
    a3[3] = v8;
  }

  return result;
}

__n128 sub_A0E474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  sub_A0E348(a1, a2, a3);
  v11 = *a3;
  if (*a4 < *a3)
  {
    v12 = *(a3 + 24);
    result = *(a3 + 8);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *a3 = *a4;
    *(a3 + 8) = *(a4 + 1);
    *(a3 + 24) = a4[3];
    *a4 = v11;
    *(a4 + 1) = result;
    a4[3] = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      v14 = *(a2 + 24);
      result = *(a2 + 8);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a2 = *a3;
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *a3 = v13;
      *(a3 + 8) = result;
      *(a3 + 24) = v14;
      v15 = *a1;
      if (*a2 < *a1)
      {
        v16 = *(a1 + 24);
        result = *(a1 + 8);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *a2 = v15;
        *(a2 + 8) = result;
        *(a2 + 24) = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    v18 = a4[3];
    result = *(a4 + 1);
    a4[2] = 0;
    a4[3] = 0;
    a4[1] = 0;
    *a4 = *a5;
    *(a4 + 1) = *(a5 + 1);
    a4[3] = a5[3];
    *a5 = v17;
    *(a5 + 1) = result;
    a5[3] = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = *(a3 + 24);
      result = *(a3 + 8);
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *a3 = *a4;
      *(a3 + 8) = *(a4 + 1);
      *(a3 + 24) = a4[3];
      *a4 = v19;
      *(a4 + 1) = result;
      a4[3] = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        v22 = *(a2 + 24);
        result = *(a2 + 8);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 8) = 0;
        *a2 = *a3;
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *a3 = v21;
        *(a3 + 8) = result;
        *(a3 + 24) = v22;
        v23 = *a1;
        if (*a2 < *a1)
        {
          v24 = *(a1 + 24);
          result = *(a1 + 8);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 8) = 0;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 24) = *(a2 + 24);
          *a2 = v23;
          *(a2 + 8) = result;
          *(a2 + 24) = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_A0E694(uint64_t a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_A0E348(a1, (a1 + 32), a2 - 4);
        return 1;
      case 4:
        v31 = a1 + 32;
        v32 = a1;
        sub_A0E348(a1, (a1 + 32), (a1 + 64));
        v23 = *(a1 + 64);
        if (*(a2 - 4) < v23)
        {
          v24 = *(a1 + 88);
          v25 = *(a1 + 72);
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *(a1 + 72) = 0;
          *(a1 + 64) = *(a2 - 4);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = *(a2 - 1);
          *(a2 - 4) = v23;
          *(a2 - 3) = v25;
          *(a2 - 1) = v24;
          v26 = *(a1 + 64);
          v27 = *(a1 + 32);
          if (v26 < v27)
          {
            v28 = *(a1 + 56);
            *(a1 + 32) = v26;
            v29 = *(a1 + 72);
            *(a1 + 56) = *(a1 + 88);
            *(a1 + 64) = v27;
            v30 = *(a1 + 40);
            *(a1 + 40) = v29;
            *(a1 + 72) = v30;
            *(a1 + 88) = v28;
            if (v26 < *a1)
            {
              sub_A0E304(&v32, &v31);
            }
          }
        }

        return 1;
      case 5:
        sub_A0E474(a1, a1 + 32, a1 + 64, (a1 + 96), a2 - 4);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *a1;
      if (*(a2 - 4) < *a1)
      {
        v4 = *(a1 + 24);
        v5 = *(a1 + 8);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *a1 = *(a2 - 4);
        *(a1 + 8) = *(a2 - 3);
        *(a1 + 24) = *(a2 - 1);
        *(a2 - 4) = v3;
        *(a2 - 3) = v5;
        *(a2 - 1) = v4;
        return 1;
      }

      return 1;
    }
  }

  v7 = (a1 + 64);
  sub_A0E348(a1, (a1 + 32), (a1 + 64));
  v10 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    if (*v10 < *v7)
    {
      break;
    }

LABEL_20:
    v7 = v10;
    v11 += 32;
    v10 += 4;
    if (v10 == a2)
    {
      return 1;
    }
  }

  v14 = v10[1];
  v15 = *(v10 + 1);
  v10[2] = 0;
  v10[3] = 0;
  v10[1] = 0;
  v16 = v11;
  v17 = *v7;
  do
  {
    v18 = a1 + v16;
    v19 = *(a1 + v16 + 88);
    *(v18 + 104) = *(a1 + v16 + 72);
    *(v18 + 120) = v19;
    *(v18 + 88) = 0;
    *(v18 + 96) = v17;
    *(v18 + 72) = 0;
    *(v18 + 80) = 0;
    if (v16 == -64)
    {
      *a1 = v13;
      *(v18 + 72) = v14;
      *(a1 + 16) = v15;
      if (++v12 != 8)
      {
        goto LABEL_20;
      }

      return v10 + 4 == a2;
    }

    v17 = *(v18 + 32);
    v16 -= 32;
  }

  while (v13 < v17);
  v20 = a1 + v16;
  *(v20 + 96) = v13;
  *(v18 + 72) = v14;
  *(v20 + 112) = v15;
  if (++v12 != 8)
  {
    goto LABEL_20;
  }

  return v10 + 4 == a2;
}

void sub_A0E954()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_27B3830 = 0u;
  unk_27B3840 = 0u;
  dword_27B3850 = 1065353216;
  sub_3A9A34(&xmmword_27B3830, v0, v0);
  sub_3A9A34(&xmmword_27B3830, v3, v3);
  sub_3A9A34(&xmmword_27B3830, __p, __p);
  sub_3A9A34(&xmmword_27B3830, v9, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27B3808 = 0;
    qword_27B3810 = 0;
    qword_27B3800 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_A0EB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3818)
  {
    qword_27B3820 = qword_27B3818;
    operator delete(qword_27B3818);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0EC48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

void sub_A0ED58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A0ED80(double *a1, void *a2)
{
  v6 = 19;
  strcpy(__p, "leg_ratio_threshold");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_A0EF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0EF6C(uint64_t *a1, __int128 **a2)
{
  if (*(a1[1] + 1438) == 1)
  {
    v3 = a2[1];
    if (*a2 != v3)
    {
      v4 = *a2;
      while ((v4[72] & 1) == 0)
      {
        v4 += 206;
        if (v4 == v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 != v3)
      {
        goto LABEL_9;
      }

LABEL_8:
      v4 = *a2;
LABEL_9:
      if (*(v4 + 299) != *(v4 + 300))
      {
        sub_A0F1D8(a1, v4, &v21);
        v6 = v21;
        if (v21 != v22)
        {
          sub_9DE500(v19, *a1, a1[1]);
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v7 = *(v4 + 300);
          v8 = *(v4 + 299);
          if (v7 != v8)
          {
            if (((v7 - v8) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          __p = &v16;
          sub_9DE520(v19, &v16, &v21, &__p);
          if (a2 + 59 != &__p)
          {
            sub_950BEC(a2 + 59, __p, v15, 0x193D4BB7E327A977 * ((v15 - __p) >> 3));
          }

          v9 = __p;
          if (__p)
          {
            v10 = __p;
            if (v15 != __p)
            {
              v11 = v15 - 71;
              do
              {
                sub_938500(v11 + 3);
                v13 = *v11;
                if (*v11)
                {
                  v11[1] = v13;
                  operator delete(v13);
                }

                v12 = v11 == v9;
                v11 -= 71;
              }

              while (!v12);
              v10 = __p;
            }

            v15 = v9;
            operator delete(v10);
          }

          if (v16)
          {
            v17 = v16;
            operator delete(v16);
          }

          sub_939D44(&v20);
          v6 = v21;
        }

        if (v6)
        {
          v22 = v6;
          operator delete(v6);
        }
      }
    }
  }
}

void sub_A0F178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  sub_951434(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_939D44(&a17);
  v19 = *(v17 - 80);
  if (v19)
  {
    *(v17 - 72) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_A0F1D8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if ((sub_A0FBE4(a1, a2) & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v6 = sub_A0F42C(a2);
  v7 = sub_A0F4D4(a1, a2);
  sub_A0F8A8(a2, v6, &__p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = __p;
  v9 = v20;
  if (__p == v20)
  {
    *a3 = 0;
    if (v8)
    {
LABEL_28:
      v20 = v8;
      operator delete(v8);
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if (*(v8 + 1) >= *(a1 + 16))
      {
        if (*(a1 + 24) != 1)
        {
          goto LABEL_15;
        }

        v11 = *v7;
        v12 = v7[1];
        if (*v7 != v12)
        {
          while (*v11 != *v8 || v11[1] != v8[1])
          {
            v11 += 2;
            if (v11 == v12)
            {
              goto LABEL_6;
            }
          }
        }

        if (v11 != v12)
        {
LABEL_15:
          v13 = a3[2];
          if (v10 < v13)
          {
            *v10 = *v8;
            v10 += 8;
          }

          else
          {
            v14 = v10;
            v15 = v10 >> 3;
            v16 = v15 + 1;
            if ((v15 + 1) >> 61)
            {
              *a3 = 0;
              sub_1794();
            }

            if (v13 >> 2 > v16)
            {
              v16 = v13 >> 2;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              if (!(v17 >> 61))
              {
                operator new();
              }

              *a3 = 0;
              sub_1808();
            }

            v18 = (8 * v15);
            *v18 = *v8;
            v10 = (v18 + 1);
            memcpy(0, 0, v14);
            a3[1] = v10;
            a3[2] = 0;
          }

          a3[1] = v10;
        }
      }

LABEL_6:
      v8 += 4;
    }

    while (v8 != v9);
    v8 = __p;
    *a3 = 0;
    if (v8)
    {
      goto LABEL_28;
    }
  }
}

void sub_A0F3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  *v11 = v12;
  if (v12)
  {
    v11[1] = v12;
    operator delete(v12);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A0F42C(void *a1)
{
  sub_9D4074(v4, a1);
  sub_9D4040(v4, v3);
  v1 = 0;
  while (sub_9D427C(v4, v3))
  {
    if (*sub_9D42B8(v4) == 2 || *sub_9D42B8(v4) == 8)
    {
      v1 = (v1 + 1);
    }

    sub_9D40D8(v4);
    sub_9D4040(v4, v3);
  }

  return v1;
}

void *sub_A0F4D4(uint64_t *a1, void *a2)
{
  sub_9D4074(v43, a2);
  sub_9D4040(v43, &v46);
  if (sub_9D427C(v43, &v46))
  {
    v3 = "payment_method";
    do
    {
      if (*sub_9D42B8(v43) == 2)
      {
        v4 = sub_9D42B8(v43);
        v5 = *(v4 + 5680);
        v6 = *(v4 + 5688);
        while (v5 != v6)
        {
          v7 = *v5;
          v8 = sub_3AFEE8(*a1);
          v49 = v3;
          LODWORD(v44[0]) = v7;
          v50 = 0;
          v46 = &v50;
          v47 = v44;
          v9 = *(v8 + 3856) + 1;
          *(v8 + 3856) = v9;
          if (!*v8)
          {
            goto LABEL_52;
          }

          if (*(v8 + 592) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 600) = v9;
            v10 = *(v8 + 608);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else if (*(v8 + 616) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 624) = v9;
            v10 = *(v8 + 632);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else if (*(v8 + 640) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 648) = v9;
            v10 = *(v8 + 656);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else if (*(v8 + 664) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 672) = v9;
            v10 = *(v8 + 680);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v42 = v8 + 16;
            v11 = *(v8 + 648);
            v12 = *(v8 + 624);
            v13 = *(v8 + 600);
            v14 = v13 >= v9;
            if (v13 < v9)
            {
              v9 = *(v8 + 600);
            }

            v15 = 24;
            if (v14)
            {
              v15 = 0;
            }

            v16 = v12 >= v9;
            if (v12 < v9)
            {
              v9 = *(v8 + 624);
            }

            v17 = 25;
            if (v16)
            {
              v17 = v15;
            }

            if (v11 >= v9)
            {
              v18 = v9;
            }

            else
            {
              v18 = *(v8 + 648);
            }

            v19 = v3;
            v20 = *(v8 + 672);
            if (v11 >= v9)
            {
              v21 = v17;
            }

            else
            {
              v21 = 26;
            }

            v22 = v8;
            v10 = sub_2D52A4(*v8, 6, v7, 1);
            v14 = v20 >= v18;
            v3 = v19;
            v23 = 27;
            if (v14)
            {
              v23 = v21;
            }

            v24 = v42 + 24 * v23;
            *v24 = v44[0];
            *(v24 + 8) = *(v22 + 3856);
            *(v24 + 16) = v10;
            if (!v10)
            {
LABEL_52:
              sub_2C9894(&v46);
LABEL_53:
              exception = __cxa_allocate_exception(0x40uLL);
              v45 = HIDWORD(v7);
              v50 = v7;
              v44[0] = sub_7FCF0(6u);
              v44[1] = v38;
              sub_2C956C("Failed to acquire entity ", &v49, " in quad node ", " at position ", " on layer ", v44, &v46);
              if ((v48 & 0x80u) == 0)
              {
                v39 = &v46;
              }

              else
              {
                v39 = v46;
              }

              if ((v48 & 0x80u) == 0)
              {
                v40 = v48;
              }

              else
              {
                v40 = v47;
              }

              v41 = sub_2D390(exception, v39, v40);
            }
          }

          v25 = (v10 + *v10);
          v26 = (v25 - *v25);
          if (*v26 < 0x31u)
          {
            goto LABEL_53;
          }

          v27 = v26[24];
          if (!v27)
          {
            goto LABEL_53;
          }

          v28 = (v25 + v27 + *(v25 + v27));
          if (*v28 <= HIDWORD(v7))
          {
            goto LABEL_53;
          }

          v29 = (&v28[HIDWORD(v7) + 1] + v28[HIDWORD(v7) + 1]);
          v30 = (v29 - *v29);
          if (*v30 >= 9u)
          {
            v31 = v30[4];
            if (v31)
            {
              v32 = *(v29 + v31);
              v33 = v32 > 4;
              v34 = (1 << v32) & 0x16;
              if (!v33 && v34 != 0)
              {
                return (sub_9D42B8(v43) + 5680);
              }
            }
          }

          ++v5;
        }
      }

      sub_9D40D8(v43);
      sub_9D4040(v43, &v46);
    }

    while (sub_9D427C(v43, &v46));
  }

  return &unk_22A5FD0;
}

void sub_A0F878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0F8A8(void *a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    sub_9D4074(&v17, a1);
    v3 = 0;
    v4 = 0;
    while (1)
    {
      sub_9D4040(&v17, v16);
      if (!sub_9D427C(&v17, v16))
      {
        break;
      }

      if (*sub_9D42B8(&v17) == 2)
      {
        v5 = sub_9D42B8(&v17);
        v6 = *(v5 + 5680);
        v7 = *(v5 + 5688);
        while (v6 != v7)
        {
          v8 = v4;
          if (v4 != v3)
          {
            v8 = v4;
            while (*v6 != *v8 || v6[1] != v8[1])
            {
              v8 += 3;
              if (v8 == v3)
              {
                goto LABEL_16;
              }
            }
          }

          if (v8 == v3)
          {
LABEL_16:
            v9 = v3 - v4;
            v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2);
            v11 = v10 + 1;
            if (v10 + 1 > 0x1555555555555555)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v4 >> 2) > v11)
            {
              v11 = 0x5555555555555556 * (-v4 >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v4 >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v12 = 0x1555555555555555;
            }

            else
            {
              v12 = v11;
            }

            if (v12)
            {
              if (v12 <= 0x1555555555555555)
              {
                operator new();
              }

              sub_1808();
            }

            v13 = 4 * ((v3 - v4) >> 2);
            *v13 = *v6;
            *(v13 + 8) = 1;
            v3 = (v13 + 12);
            v14 = 12 * v10 + 12 * (v9 / -12);
            memcpy((v13 + 12 * (v9 / -12)), v4, v9);
            if (v4)
            {
              operator delete(v4);
            }

            v4 = v14;
          }

          else
          {
            ++v8[2];
          }

          v6 += 2;
        }
      }

      sub_9D40D8(&v17);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v3 != v4)
    {
      if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2)) >> 60))
      {
        operator new();
      }

      sub_1794();
    }

    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_A0FBE4(uint64_t a1, void *a2)
{
  if (*(a1 + 25) != 1)
  {
    return 1;
  }

  sub_9D4074(v40, a2);
  while (1)
  {
    sub_9D4040(v40, &v43);
    if (!sub_9D427C(v40, &v43))
    {
      break;
    }

    if (*sub_9D42B8(v40) != 2)
    {
      v3 = sub_9D42B8(v40);
      v4 = *(v3 + 5680);
      v5 = *(v3 + 5688);
      while (1)
      {
        if (v4 == v5)
        {
          goto LABEL_3;
        }

        v6 = *v4;
        v7 = sub_3AFEE8(*a1);
        v8 = sub_2C9210(v7, v6, 0, "payment_method");
        v9 = (v8 - *v8);
        if (*v9 >= 9u)
        {
          v10 = v9[4];
          if (v10)
          {
            v11 = *(v8 + v10);
            v12 = v11 > 4;
            v13 = (1 << v11) & 0x16;
            if (!v12 && v13 != 0)
            {
              break;
            }
          }
        }

        ++v4;
      }

      v15 = sub_3AFEE8(*a1);
      v16 = *v4;
      v17 = HIDWORD(*v4);
      v46 = "payment_method";
      LODWORD(v41[0]) = v16;
      v47 = 0;
      v43 = &v47;
      v44 = v41;
      v18 = *(v15 + 3856) + 1;
      *(v15 + 3856) = v18;
      if (*v15)
      {
        if (*(v15 + 592) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 600) = v18;
          v19 = *(v15 + 608);
          if (!v19)
          {
            goto LABEL_48;
          }

LABEL_42:
          v27 = (v19 + *v19);
          v28 = (v27 - *v27);
          if (*v28 >= 0x31u)
          {
            v29 = v28[24];
            if (v29)
            {
              v30 = (v27 + v29 + *(v27 + v29));
              if (*v30 > v17)
              {
                operator new();
              }
            }
          }

LABEL_49:
          exception = __cxa_allocate_exception(0x40uLL);
          v47 = v16;
          v42 = v17;
          v41[0] = sub_7FCF0(6u);
          v41[1] = v33;
          sub_2C956C("Failed to acquire entity ", &v46, " in quad node ", " at position ", " on layer ", v41, &v43);
          if ((v45 & 0x80u) == 0)
          {
            v34 = &v43;
          }

          else
          {
            v34 = v43;
          }

          if ((v45 & 0x80u) == 0)
          {
            v35 = v45;
          }

          else
          {
            v35 = v44;
          }

          v36 = sub_2D390(exception, v34, v35);
        }

        if (*(v15 + 616) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 624) = v18;
          v19 = *(v15 + 632);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else if (*(v15 + 640) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 648) = v18;
          v19 = *(v15 + 656);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else if (*(v15 + 664) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 672) = v18;
          v19 = *(v15 + 680);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v20 = *(v15 + 624);
          v21 = *(v15 + 600);
          v37 = *(v15 + 672);
          v38 = *(v15 + 648);
          v39 = v15;
          v19 = sub_2D52A4(*v15, 6, v16, 1);
          if (v21 >= v18)
          {
            v22 = v18;
          }

          else
          {
            v22 = v21;
          }

          if (v21 >= v18)
          {
            v23 = 0;
          }

          else
          {
            v23 = 24;
          }

          if (v20 < v22)
          {
            v22 = v20;
            v23 = 25;
          }

          if (v38 < v22)
          {
            v23 = 26;
            v22 = v38;
          }

          v24 = v37 >= v22;
          v25 = 27;
          if (v24)
          {
            v25 = v23;
          }

          v26 = v39 + 16 + 24 * v25;
          *v26 = v41[0];
          *(v26 + 8) = *(v39 + 3856);
          *(v26 + 16) = v19;
          if (v19)
          {
            goto LABEL_42;
          }
        }
      }

LABEL_48:
      sub_2C9894(&v43);
      goto LABEL_49;
    }

LABEL_3:
    sub_9D40D8(v40);
  }

  sub_A101A4(0, 0, &v43, 0, 1);
  return 0;
}

void sub_A1012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    v26 = a1;
    operator delete(v25);
    a1 = v26;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_A101A4(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (a2 - v10 > 2)
    {
      break;
    }

    if ((a2 - v10) < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v79 = *(a2 - 1);
      v80 = *v10;
      if (v79 < v80)
      {
        *v10 = v79;
        *(a2 - 1) = v80;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v91 = v10 + 1;
      v93 = v10 == a2 || v91 == a2;
      if (a5)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v10;
          do
          {
            v97 = v95[1];
            v98 = *v95;
            v95 = v91;
            if (v97 < v98)
            {
              v99 = v94;
              do
              {
                v10[v99 + 1] = v98;
                if (!v99)
                {
                  v96 = v10;
                  goto LABEL_128;
                }

                v98 = v10[--v99];
              }

              while (v97 < v98);
              v96 = &v10[v99 + 1];
LABEL_128:
              *v96 = v97;
            }

            v91 = v95 + 1;
            ++v94;
          }

          while (v95 + 1 != a2);
        }
      }

      else if (!v93)
      {
        do
        {
          v104 = v9[1];
          v105 = *v9;
          v9 = v91;
          if (v104 < v105)
          {
            do
            {
              *v91 = v105;
              v105 = *(v91 - 2);
              --v91;
            }

            while (v104 < v105);
            *v91 = v104;
          }

          v91 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_A10EE4(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v13;
      if (v17 < v18)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v31 = *(a2 - 1);
        if (v31 < v18)
        {
          *v10 = v31;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v23 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v21 = *v10;
      v22 = *v13;
      if (v21 >= v22)
      {
        goto LABEL_38;
      }

      *v13 = v21;
      *v10 = v22;
      --a4;
      v23 = v22;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v23)
      {
        goto LABEL_62;
      }

      if (v23 >= *(a2 - 1))
      {
        v62 = (v10 + 1);
        do
        {
          v10 = v62;
          if (v62 >= a2)
          {
            break;
          }

          ++v62;
        }

        while (v23 >= *v10);
      }

      else
      {
        do
        {
          v61 = *++v10;
        }

        while (v23 >= v61);
      }

      v63 = a2;
      if (v10 < a2)
      {
        v63 = a2;
        do
        {
          v64 = *--v63;
        }

        while (v23 < v64);
      }

      if (v10 < v63)
      {
        v65 = *v10;
        v66 = *v63;
        do
        {
          *v10 = v66;
          *v63 = v65;
          do
          {
            v67 = *++v10;
            v65 = v67;
          }

          while (v23 >= v67);
          do
          {
            v68 = *--v63;
            v66 = v68;
          }

          while (v23 < v68);
        }

        while (v10 < v63);
      }

      v69 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v69;
      }

      a5 = 0;
      *v69 = v23;
    }

    else
    {
      v15 = *v13;
      v16 = *v10;
      if (v15 >= v16)
      {
        if (v14 < v15)
        {
          *v13 = v14;
          *(a2 - 1) = v15;
          v19 = *v13;
          v20 = *v10;
          if (v19 < v20)
          {
            *v10 = v19;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v13 = v16;
          v24 = *(a2 - 1);
          if (v24 >= v16)
          {
            goto LABEL_29;
          }

          *v13 = v24;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v25 = &v10[v12 - 1];
      v26 = *v25;
      v27 = v10[1];
      v28 = *(a2 - 2);
      if (v26 >= v27)
      {
        if (v28 < v26)
        {
          *v25 = v28;
          *(a2 - 2) = v26;
          v29 = *v25;
          v30 = v10[1];
          if (v29 < v30)
          {
            v10[1] = v29;
            *v25 = v30;
          }
        }
      }

      else
      {
        if (v28 >= v26)
        {
          v10[1] = v26;
          *v25 = v27;
          v32 = *(a2 - 2);
          if (v32 >= v27)
          {
            goto LABEL_43;
          }

          *v25 = v32;
        }

        else
        {
          v10[1] = v28;
        }

        *(a2 - 2) = v27;
      }

LABEL_43:
      v33 = &v10[v12];
      v36 = v33[1];
      v34 = v33 + 1;
      v35 = v36;
      v37 = v10[2];
      v38 = *(a2 - 3);
      if (v36 >= v37)
      {
        if (v38 < v35)
        {
          *v34 = v38;
          *(a2 - 3) = v35;
          v39 = *v34;
          v40 = v10[2];
          if (v39 < v40)
          {
            v10[2] = v39;
            *v34 = v40;
          }
        }
      }

      else
      {
        if (v38 >= v35)
        {
          v10[2] = v35;
          *v34 = v37;
          v41 = *(a2 - 3);
          if (v41 >= v37)
          {
            goto LABEL_52;
          }

          *v34 = v41;
        }

        else
        {
          v10[2] = v38;
        }

        *(a2 - 3) = v37;
      }

LABEL_52:
      v42 = *v13;
      v43 = *v25;
      v44 = *v34;
      if (v42 >= v43)
      {
        if (v44 >= v42)
        {
          goto LABEL_60;
        }

        *v13 = v44;
        *v34 = v42;
        v34 = v13;
        LOBYTE(v42) = v43;
        if (v44 < v43)
        {
LABEL_59:
          *v25 = v44;
          *v34 = v43;
LABEL_60:
          v46 = *v10;
          *v10 = v42;
          *v13 = v46;
          --a4;
          v23 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v60 = *v10;
        *v10 = v44;
        *v13 = v60;
        --a4;
        v23 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v44 < v42)
      {
        goto LABEL_59;
      }

      *v25 = v42;
      *v13 = v43;
      v25 = v13;
      LOBYTE(v42) = v44;
      if (v44 < v43)
      {
        goto LABEL_59;
      }

      v45 = *v10;
      *v10 = v43;
      *v13 = v45;
      --a4;
      v23 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v47 = 0;
      do
      {
        v48 = v10[++v47];
      }

      while (v48 < v23);
      v49 = &v10[v47];
      v50 = a2;
      if (v47 == 1)
      {
        v50 = a2;
        do
        {
          if (v49 >= v50)
          {
            break;
          }

          v52 = *--v50;
        }

        while (v52 >= v23);
      }

      else
      {
        do
        {
          v51 = *--v50;
        }

        while (v51 >= v23);
      }

      if (v49 >= v50)
      {
        v58 = v49 - 1;
        if (v49 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v58;
        goto LABEL_80;
      }

      v53 = *v50;
      v54 = &v10[v47];
      v55 = v50;
      do
      {
        *v54 = v53;
        *v55 = v48;
        do
        {
          v56 = *++v54;
          LOBYTE(v48) = v56;
        }

        while (v56 < v23);
        do
        {
          v57 = *--v55;
          v53 = v57;
        }

        while (v57 >= v23);
      }

      while (v54 < v55);
      v58 = v54 - 1;
      if (v54 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v58 = v23;
      if (v49 < v50)
      {
        goto LABEL_83;
      }

      v59 = sub_A10AC4(v10, v58);
      v10 = v58 + 1;
      result = sub_A10AC4(v58 + 1, a2);
      if (result)
      {
        a2 = v58;
        if (!v59)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v59)
      {
LABEL_83:
        result = sub_A101A4(v9, v58, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v58 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v84 = v10 + 1;
      v85 = v10[1];
      v86 = v10 + 2;
      v87 = v10[2];
      v88 = *v10;
      if (v85 >= v88)
      {
        if (v87 < v85)
        {
          *v84 = v87;
          *v86 = v85;
          v89 = v10;
          v90 = v10 + 1;
          result = v85;
          if (v87 < v88)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v85) = v87;
        v103 = *(a2 - 1);
        if (v103 >= v85)
        {
          return result;
        }
      }

      else
      {
        v89 = v10;
        v90 = v10 + 2;
        result = *v10;
        if (v87 >= v85)
        {
          *v10 = v85;
          v10[1] = v88;
          v89 = v10 + 1;
          v90 = v10 + 2;
          result = v88;
          if (v87 >= v88)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v89 = v87;
        *v90 = v88;
        LODWORD(v85) = result;
LABEL_149:
        v103 = *(a2 - 1);
        if (v103 >= v85)
        {
          return result;
        }
      }

      *v86 = v103;
      *(a2 - 1) = v85;
      v106 = *v86;
      v107 = *v84;
      if (v106 < v107)
      {
        v10[1] = v106;
        v10[2] = v107;
        v108 = *v10;
        if (v106 < v108)
        {
          *v10 = v106;
          v10[1] = v108;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v70 = v10 + 1;
      v71 = v10[1];
      v73 = v10 + 2;
      v72 = v10[2];
      v74 = *v10;
      if (v71 >= v74)
      {
        if (v72 >= v71)
        {
          v77 = *v10;
          LODWORD(v74) = v10[1];
          v100 = v10[3];
          if (v100 >= v72)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v75 = v10;
          v76 = v10 + 1;
          *v70 = v72;
          *v73 = v71;
          v77 = v72;
          result = v74;
          v78 = v71;
          if (v72 < v74)
          {
            goto LABEL_162;
          }

          v77 = v74;
          LODWORD(v74) = v72;
          LODWORD(v72) = v71;
          v100 = v10[3];
          if (v100 >= v72)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v72 < v71)
        {
          v75 = v10;
          v76 = v10 + 2;
          v77 = v10[2];
          result = v10[1];
          v78 = *v10;
          goto LABEL_162;
        }

        v75 = v10 + 1;
        v76 = v10 + 2;
        *v10 = v71;
        v10[1] = v74;
        v77 = v71;
        result = v72;
        v78 = v74;
        if (v72 < v74)
        {
LABEL_162:
          *v75 = v72;
          *v76 = v74;
          LODWORD(v74) = result;
          LODWORD(v72) = v78;
          v100 = v10[3];
          if (v100 < v78)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v72) = v100;
LABEL_168:
          v109 = *(a2 - 1);
          if (v109 >= v72)
          {
            return result;
          }

          v10[3] = v109;
          *(a2 - 1) = v72;
          v101 = v10[3];
          v110 = v10[2];
          if (v101 >= v110)
          {
            return result;
          }

          v10[2] = v101;
          v10[3] = v110;
          v111 = v10[1];
          if (v101 >= v111)
          {
            return result;
          }

          v10[1] = v101;
          v10[2] = v111;
          v102 = *v10;
          if (v101 >= v102)
          {
            return result;
          }

LABEL_172:
          *v10 = v101;
          v10[1] = v102;
          return result;
        }

        v77 = v71;
        v100 = v10[3];
        if (v100 >= v72)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v100;
      v10[3] = v72;
      if (v100 < v74)
      {
        *v70 = v100;
        *v73 = v74;
        if (v100 < v77)
        {
          *v10 = v100;
          v10[1] = v77;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v81 = v10[1];
  v82 = *v10;
  v83 = *(a2 - 1);
  if (v81 < v82)
  {
    if (v83 >= v81)
    {
      *v10 = v81;
      v10[1] = v82;
      v112 = *(a2 - 1);
      if (v112 >= v82)
      {
        return result;
      }

      v10[1] = v112;
    }

    else
    {
      *v10 = v83;
    }

    *(a2 - 1) = v82;
    return result;
  }

  if (v83 < v81)
  {
    v10[1] = v83;
    *(a2 - 1) = v81;
    v101 = v10[1];
    v102 = *v10;
    if (v101 < v102)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL sub_A10AC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v2 == 3)
    {
      v16 = a1[1];
      v17 = *a1;
      v18 = *(a2 - 1);
      if (v16 < v17)
      {
        if (v18 >= v16)
        {
          *a1 = v16;
          a1[1] = v17;
          v46 = *(a2 - 1);
          if (v46 >= v17)
          {
            return 1;
          }

          a1[1] = v46;
          *(a2 - 1) = v17;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v17;
          return 1;
        }
      }

      if (v18 >= v16)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v16;
      v33 = a1[1];
      v34 = *a1;
      if (v33 >= v34)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= v8)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v41 = a1[3];
          if (v41 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v41 = a1[3];
          if (v41 < v6)
          {
LABEL_57:
            a1[2] = v41;
            a1[3] = v6;
            if (v41 < v8)
            {
              *v4 = v41;
              *v7 = v8;
              if (v41 < v11)
              {
                *a1 = v41;
                a1[1] = v11;
              }
            }

LABEL_62:
            v47 = *(a2 - 1);
            if (v47 >= v6)
            {
              return 1;
            }

            a1[3] = v47;
            *(a2 - 1) = v6;
            v33 = a1[3];
            v48 = a1[2];
            if (v33 >= v48)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v48;
            v49 = a1[1];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v49;
            v34 = *a1;
            if (v33 >= v34)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v41;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v41 = a1[3];
          if (v41 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v41 = a1[3];
      if (v41 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= v29)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v42 = *(a2 - 1);
          if (v42 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 >= v44)
          {
            return 1;
          }

          a1[1] = v43;
          a1[2] = v44;
          v45 = *a1;
          if (v43 >= v45)
          {
            return 1;
          }

          *a1 = v43;
          a1[1] = v45;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= v22)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    v37 = 0;
    while (1)
    {
      v38 = *v35;
      v39 = *v20;
      if (v38 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35;
      ++v36;
      if (++v35 == a2)
      {
        return 1;
      }
    }

    v40 = v36;
    do
    {
      a1[v40 + 3] = v39;
      if (v40 == -2)
      {
        *a1 = v38;
        if (++v37 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = a1[v40-- + 1];
    }

    while (v38 < v39);
    a1[v40 + 3] = v38;
    if (++v37 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= v15)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

unsigned __int8 *sub_A10EE4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (a2 - a1 >= 2)
  {
    v4 = (a2 - a1 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[v7];
        if (2 * v5 + 2 >= v3)
        {
          v10 = *v8;
          v12 = &a1[v5];
          v13 = a1[v5];
          if (v10 >= v13)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = *v8;
          v10 = v8[1];
          v11 = v9 >= v10;
          if (v9 > v10)
          {
            v10 = *v8;
          }

          if (!v11)
          {
            ++v8;
            v7 = 2 * v5 + 2;
          }

          v12 = &a1[v5];
          v13 = a1[v5];
          if (v10 >= v13)
          {
LABEL_22:
            while (1)
            {
              *v12 = v10;
              v12 = v8;
              if (v4 < v7)
              {
                break;
              }

              v16 = (2 * v7) | 1;
              v8 = &a1[v16];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v10 = *v8;
                v14 = v8[1];
                v15 = v10 >= v14;
                if (v10 <= v14)
                {
                  v10 = v8[1];
                }

                if (v15)
                {
                  v7 = v16;
                }

                else
                {
                  ++v8;
                }

                if (v10 < v13)
                {
                  break;
                }
              }

              else
              {
                v10 = *v8;
                v7 = v16;
                if (v10 < v13)
                {
                  break;
                }
              }
            }

            *v12 = v13;
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v18 = *a1;
      i = a2;
      do
      {
        v19 = *i;
        if (v19 < v18)
        {
          *i = v18;
          *a1 = v19;
          v18 = v19;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v20 = *i;
      v21 = *a1;
      if (v20 < v21)
      {
        *i = v21;
        *a1 = v20;
        v22 = a1[1];
        if (v3 == 2)
        {
          v23 = a1 + 1;
          v24 = 1;
          if (v22 >= v20)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v25 = a1[2];
          v26 = v22 >= v25;
          if (v22 <= v25)
          {
            v22 = a1[2];
          }

          if (v26)
          {
            v23 = a1 + 1;
          }

          else
          {
            v23 = a1 + 2;
          }

          if (v26)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          if (v22 >= v20)
          {
LABEL_48:
            v27 = a1;
            while (1)
            {
              *v27 = v22;
              v27 = v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v30 = (2 * v24) | 1;
              v23 = &a1[v30];
              v24 = 2 * v24 + 2;
              if (v24 < v3)
              {
                v22 = *v23;
                v28 = v23[1];
                v29 = v22 >= v28;
                if (v22 <= v28)
                {
                  v22 = v23[1];
                }

                if (v29)
                {
                  v24 = v30;
                }

                else
                {
                  ++v23;
                }

                if (v22 < v20)
                {
                  break;
                }
              }

              else
              {
                v22 = *v23;
                v24 = v30;
                if (v22 < v20)
                {
                  break;
                }
              }
            }

            *v27 = v20;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v32 = 0;
      v33 = *a1;
      v34 = (v3 - 2) >> 1;
      v35 = a1;
      do
      {
        while (1)
        {
          v42 = &v35[v32];
          v41 = &v35[v32 + 1];
          v43 = (2 * v32) | 1;
          v32 = 2 * v32 + 2;
          if (v32 < v3)
          {
            break;
          }

          v32 = v43;
          *v35 = *v41;
          v35 = v41;
          if (v43 > v34)
          {
            goto LABEL_73;
          }
        }

        v38 = v42[2];
        v37 = v42 + 2;
        v36 = v38;
        v39 = *(v37 - 1);
        v40 = v39 >= v38;
        if (v39 > v38)
        {
          v36 = *(v37 - 1);
        }

        if (v40)
        {
          v32 = v43;
        }

        else
        {
          v41 = v37;
        }

        *v35 = v36;
        v35 = v41;
      }

      while (v32 <= v34);
LABEL_73:
      if (v41 == --a2)
      {
        *v41 = v33;
      }

      else
      {
        *v41 = *a2;
        *a2 = v33;
        if (v41 - a1 + 1 >= 2)
        {
          v44 = (v41 - a1 - 1) >> 1;
          v45 = &a1[v44];
          v46 = a1[v44];
          v47 = *v41;
          if (v46 < v47)
          {
            do
            {
              *v41 = v46;
              v41 = v45;
              if (!v44)
              {
                break;
              }

              v44 = (v44 - 1) >> 1;
              v45 = &a1[v44];
              v46 = a1[v44];
            }

            while (v46 < v47);
            *v41 = v47;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}