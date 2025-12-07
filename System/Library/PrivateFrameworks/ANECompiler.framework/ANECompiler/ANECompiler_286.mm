_BYTE *sbackref(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_5;
          }

          if (v18 == 14)
          {
            ++v14;
            v31 = *(v16 + 8 * v14);
            do
            {
              v14 += v31 & 0x7FFFFFF;
              v31 = *(v16 + 8 * v14);
            }

            while ((v31 & 0xF8000000) != 0x90000000);
            goto LABEL_5;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_5;
            case 0x11uLL:
              v34 = a1[4];
              if (a2 != v34 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v34)
                {
                  return 0;
                }

                v35 = *(a2 - 1);
                if (v35 < 0)
                {
                  v36 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v36 = *(MEMORY[0x1E69E9830] + 4 * v35 + 60) & 0x500;
                }

                result = 0;
                if (v35 == 95 || v36)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v38 = *a2;
              if ((v38 & 0x8000000000000000) == 0)
              {
                goto LABEL_76;
              }

LABEL_82:
              v39 = __maskrune(v38, 0x500uLL);
              if (v38 == 95)
              {
                goto LABEL_5;
              }

LABEL_83:
              if (!v39)
              {
                return 0;
              }

              goto LABEL_5;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 == v21 && (a1[1] & 2) == 0)
              {
                goto LABEL_80;
              }

              if (a2 >= v21)
              {
                return 0;
              }

              v22 = *a2;
              if (v22 == 10)
              {
                if ((*(v15 + 40) & 8) != 0)
                {
LABEL_80:
                  if (a2 <= a1[4])
                  {
                    return 0;
                  }

                  v38 = *(a2 - 1);
                  if (v38 < 0)
                  {
                    goto LABEL_82;
                  }

LABEL_76:
                  v39 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x500;
                  if (v38 == 95)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_83;
                }

LABEL_69:
                v37 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x500;
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              else
              {
                if ((v22 & 0x80) == 0)
                {
                  goto LABEL_69;
                }

                v37 = __maskrune(*a2, 0x500uLL);
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              if (v37)
              {
                return result;
              }

              goto LABEL_80;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v33 = *a2++;
          if (v33 != v17)
          {
            return 0;
          }

          goto LABEL_5;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5] || *(a2 - 1) != 10)
            {
              return 0;
            }

LABEL_4:
            if ((*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_5:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v32 = a1[5];
            if (a2 != v32 || (a1[1] & 2) != 0)
            {
              if (a2 >= v32 || *a2 != 10)
              {
                return 0;
              }

              goto LABEL_4;
            }

            goto LABEL_5;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_5;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_5;
        }
      }

      v12 = v14 + 1;
      v23 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v23 == 4)
      {
        result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v23 == 6)
          {
            v47 = 16 * (v17 & 0x7FFFFFF);
            v48 = a1[2];
            v49 = *(v48 + v47);
            *(v48 + v47) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v49;
            }
          }

          else if (v23 == 7)
          {
            v50 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v51 = *(v50 + 8);
            *(v50 + 8) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v51;
            }
          }

          else
          {
            result = 0;
            if (v23 == 8)
            {
              result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v41 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v42 = *(*a1 + 8);
                  if ((*(v42 + 8 * v41) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v43 = *(v42 + 8 * (v41 + 1)) & 0x7FFFFFFLL;
                  v44 = v43 + v41 + 1;
                  v45 = v43 + v41;
                  if ((*(v42 + 8 * v44) & 0xF8000000) == 0x88000000)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = v44;
                  }

                  result = sbackref(a1, a2, a3, v41 + 2, a5, a6, a7);
                  v41 = v46;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v23)
        {
          if (v23 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
            if (v12 < a5)
            {
              goto LABEL_3;
            }
          }

          else
          {
            result = 0;
            if (v23 != 3)
            {
              return result;
            }

            v40 = a1[7];
            if (a2 == *(v40 + 8 * a6))
            {
              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }

            else
            {
              *(v40 + 8 * a6) = a2;
              result = sbackref(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }

              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }
          }

          break;
        }

        v25 = v17 & 0x7FFFFFF;
        v26 = (a1[2] + 16 * v25);
        v27 = v26[1];
        if (v27 == -1)
        {
          return 0;
        }

        v28 = *v26;
        v29 = v27 - v28;
        if (v27 == v28)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v29] || memcmp(a2, (a1[3] + v28), v29))
        {
          return 0;
        }

        do
        {
          v30 = *(v16 + 8 * v14++);
        }

        while (v30 != (v25 | 0x40000000));
        a2 += v29;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

unint64_t sstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v8 = (*(a1 + 8) + 8 * a2);
      v9 = *v8;
      switch(((*v8 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v7 = a5 == v9;
          goto LABEL_4;
        case 2uLL:
          v7 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_4;
        case 3uLL:
          v7 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_4;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v11 = *(a1 + 24) + 32 * (*v8 & 0x7FFFFFF);
          if ((*(v11 + 8) & *(*v11 + a5)) == 0)
          {
            break;
          }

          v10 = v6 & a4;
LABEL_10:
          a6 |= 2 * v10;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v10 = v6 & a6;
          goto LABEL_10;
        case 9uLL:
          v12 = a6 | (2 * (v6 & a6));
          a6 = ((v12 & v6) >> v9) | v12;
          if (((v6 >> v9) & v12) == 0 && (a6 & (v6 >> v9)) != 0)
          {
            a2 += ~(*v8 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (v6 & a6))) & v6) << v9) | (2 * (v6 & a6));
          break;
        case 0xFuLL:
          if ((v6 & a6) != 0)
          {
            v14 = v8[1];
            if ((v14 & 0xF8000000) == 0x90000000)
            {
              LOBYTE(v15) = 1;
            }

            else
            {
              v15 = 1;
              do
              {
                v15 += v14 & 0x7FFFFFF;
                v14 = v8[v15];
              }

              while ((v14 & 0xF8000000) != 0x90000000);
            }

            a6 |= (v6 & a6) << v15;
          }

          break;
        case 0x10uLL:
          a6 |= 2 * (v6 & a6);
          if ((v8[*v8 & 0x7FFFFFF] & 0xF8000000) != 0x90000000)
          {
            a6 |= (a6 & v6) << v9;
          }

          break;
        case 0x12uLL:
          v7 = a5 == 133;
          goto LABEL_4;
        case 0x13uLL:
          v7 = a5 == 134;
LABEL_4:
          if (v7)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *lslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v14 = a1[10];
      __dst = a1[12];
      __s2 = a1[13];
      if (a2 == a1[4])
      {
        v15 = 128;
      }

      else
      {
        v15 = *(a2 - 1);
      }

      bzero(v14, *(*a1 + 48));
      *(v14 + v6) = 1;
      lstep(*a1, v6, a5, v14, 132, v14);
      v12 = 0;
      if (a2 == a1[5])
      {
        goto LABEL_25;
      }

LABEL_19:
      v16 = *a2;
      if (v15 != 128)
      {
LABEL_20:
        if (v15 == 10 && (*(*a1 + 40) & 8) != 0)
        {
          v17 = *(*a1 + 76);
          v18 = 129;
          v19 = 131;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_29:
          v18 = 0;
          v17 = 0;
          v19 = 130;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if ((a1[1] & 2) != 0)
        {
          goto LABEL_32;
        }

        v20 = *a1;
LABEL_34:
        v17 += *(v20 + 80);
        if (v17 < 1)
        {
          goto LABEL_37;
        }

LABEL_35:
        v21 = v17 + 1;
        do
        {
          lstep(*a1, v6, a5, v14, v19, v14);
          --v21;
        }

        while (v21 > 1);
        goto LABEL_37;
      }

      while (1)
      {
        if (a1[1])
        {
          goto LABEL_29;
        }

        v17 = *(*a1 + 76);
        v18 = 129;
        v19 = 131;
        if (v16 == 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if (v16 == 10)
        {
          v20 = *a1;
          if ((*(*a1 + 40) & 8) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        v19 = v18;
        if (v17 >= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v19 == 129)
        {
          if (v16 == 128)
          {
            v19 = 129;
            if (v15 == 128)
            {
              goto LABEL_68;
            }
          }

          else
          {
LABEL_48:
            if (v16 > 0x7Fu)
            {
              v24 = __maskrune(v16, 0x500uLL);
              if (v16 == 95 || v24 != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
LABEL_68:
                v26 = __s2;
LABEL_69:
                if ((v19 - 133) > 1)
                {
                  goto LABEL_74;
                }

                goto LABEL_73;
              }
            }

            else
            {
              if (v16 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x500) != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
                goto LABEL_68;
              }
            }
          }

          v22 = v15;
          goto LABEL_63;
        }

        if (v15 == 128)
        {
          goto LABEL_68;
        }

        v22 = v15;
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_63;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x500) != 0)
        {
          goto LABEL_63;
        }

        if (v15 != 95 && v16 != 128)
        {
          goto LABEL_48;
        }

LABEL_63:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_71;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_71;
        }

        if (v15 != 95)
        {
          goto LABEL_68;
        }

LABEL_71:
        if (v19 == 130)
        {
          v19 = 134;
          v26 = __s2;
        }

        else
        {
          v26 = __s2;
          if (v16 == 128)
          {
            goto LABEL_69;
          }

          if (v16 > 0x7Fu)
          {
            if (__maskrune(v16, 0x500uLL))
            {
              goto LABEL_69;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x500) != 0)
          {
            goto LABEL_69;
          }

          if (v16 == 95)
          {
            goto LABEL_69;
          }

          v19 = 134;
        }

LABEL_73:
        lstep(*a1, v6, a5, v14, v19, v14);
LABEL_74:
        if (*(v14 + a5))
        {
          v12 = a2;
        }

        v27 = *(*a1 + 48);
        v28 = memcmp(v14, v26, v27);
        if (a2 == a3 || !v28)
        {
          return v12;
        }

        memmove(__dst, v14, v27);
        memmove(v14, v26, *(*a1 + 48));
        lstep(*a1, v6, a5, __dst, v16, v14);
        ++a2;
        v15 = v16;
        if (a2 != a1[5])
        {
          goto LABEL_19;
        }

LABEL_25:
        v16 = 128;
        if (v15 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *ldissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = lslow(a1, v5, a3, v11, v16 + 1); lslow(a1, i, a3, v16 + 1, a5) != a3; i = lslow(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = lslow(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          ldissect(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = lslow(a1, v5, v31, v11, v16 + 1);
            v32 = lslow(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (lslow(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          ldissect(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = lslow(a1, v5, a3, v11, v16 + 1); lslow(a1, i, a3, v16 + 1, a5) != a3; i = lslow(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (lslow(a1, v5, i, v11 + 1, v16))
        {
          ldissect(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t lstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_3;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_3;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_3;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_3;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_3;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_8;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_8:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_3;
        case 0x13uLL:
          if (a5 != 134)
          {
            break;
          }

LABEL_3:
          *(a6 + 1 + a2) |= *(a4 + a2);
          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

void llvm_regfree(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

unsigned __int8 *llvm_strlcpy(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (v4)
    {
      v5 = *v3++;
      *a1++ = v5;
      --v4;
      if (!v5)
      {
        return &v3[~a2];
      }
    }

    *a1 = 0;
  }

    ;
  }

  return &v3[~a2];
}

uint64_t llvm::xxh3_64bits(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3, unint64_t a4)
{
  if (a2 > 0x10)
  {
    if (a2 <= 0x80)
    {
      v5 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2;
      v6 = a1 + a2;
      v7 = (((*(a1 + a2 - 8) ^ 0x1F67B3B7A4A44072uLL) * (*(a1 + a2 - 16) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(a1 + a2 - 8) ^ 0x1F67B3B7A4A44072) * (*(a1 + a2 - 16) ^ 0xDB979083E96DD4DELL));
      if (a2 >= 0x21)
      {
        v5 += (((*(a1 + 3) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 3) ^ 0x2172FFCC7DD05A82) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBLL));
        v7 += (((*(v6 - 3) ^ 0x4C263A81E69035E0uLL) * (*(v6 - 4) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(v6 - 3) ^ 0x4C263A81E69035E0) * (*(v6 - 4) ^ 0x8E2443F7744608B8));
        if (a2 >= 0x41)
        {
          v5 += (((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL));
          v7 += (((*(v6 - 5) ^ 0xD8ACDEA946EF1938) * (*(v6 - 6) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(v6 - 5) ^ 0xD8ACDEA946EF1938) * (*(v6 - 6) ^ 0x4EF90DA297486471));
          if (a2 >= 0x61)
          {
            v5 += (((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9uLL) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8));
            v7 += (((*(v6 - 7) ^ 0x647378D9C97E9FC8uLL) * (*(v6 - 8) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(v6 - 7) ^ 0x647378D9C97E9FC8) * (*(v6 - 8) ^ 0x3159B4CD4BE0518ALL));
          }
        }
      }

      v4 = v7 + v5;
      return (0x165667919E3779F9 * (v4 ^ (v4 >> 37))) ^ ((0x165667919E3779F9 * (v4 ^ (v4 >> 37))) >> 32);
    }

    if (a2 > 0xF0)
    {
      return XXH3_hashLong_64b(a1, a2, a3);
    }

    else
    {
      return XXH3_len_129to240_64b(a1, a2, a3);
    }
  }

  else
  {
    if (a2 >= 9)
    {
      v4 = bswap64(*a1 ^ 0x6782737BEA4239B9) + a2 + (*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) + ((((*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9uLL)) >> 64) ^ ((*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9)));
      return (0x165667919E3779F9 * (v4 ^ (v4 >> 37))) ^ ((0x165667919E3779F9 * (v4 ^ (v4 >> 37))) >> 32);
    }

    if (a2 < 4)
    {
      if (a2)
      {
        return XXH3_len_1to3_64b(a1, a2, a3);
      }

      else
      {
        return 0x2D06800538D394C2;
      }
    }

    else
    {
      v9 = (*(a1 + a2 - 4) | (*a1 << 32)) ^ 0xC73AB174C5ECD5A2;
      v10 = 0x9FB21C651E98DF25 * (__ROR8__(v9, 15) ^ __ROR8__(v9, 40) ^ v9);
      return (0x9FB21C651E98DF25 * ((a2 + (v10 >> 35)) ^ v10)) ^ ((0x9FB21C651E98DF25 * ((a2 + (v10 >> 35)) ^ v10)) >> 28);
    }
  }
}

unint64_t XXH3_len_129to240_64b(const unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = *(a1 + 12) ^ 0x3F349CE33F76FAA8;
  v4 = *(a1 + 13) ^ 0x1D4F0BC7C7BBDCF9;
  v5 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2 + ((((*(a1 + 3) ^ 0x1F67B3B7A4A44072uLL) * (*(a1 + 2) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(a1 + 3) ^ 0x1F67B3B7A4A44072) * (*(a1 + 2) ^ 0xDB979083E96DD4DELL))) + ((((*(a1 + 5) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 4) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 5) ^ 0x2172FFCC7DD05A82) * (*(a1 + 4) ^ 0x78E5C0CC4EE679CBLL))) + ((((*(a1 + 7) ^ 0x4C263A81E69035E0uLL) * (*(a1 + 6) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(a1 + 7) ^ 0x4C263A81E69035E0) * (*(a1 + 6) ^ 0x8E2443F7744608B8))) + ((((*(a1 + 9) ^ 0xA32E531B8B65D088) * (*(a1 + 8) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 9) ^ 0xA32E531B8B65D088) * (*(a1 + 8) ^ 0xCB00C391BB52283CLL))) + ((((*(a1 + 11) ^ 0xD8ACDEA946EF1938) * (*(a1 + 10) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(a1 + 11) ^ 0xD8ACDEA946EF1938) * (*(a1 + 10) ^ 0x4EF90DA297486471))) + (((v4 * v3) >> 64) ^ (v4 * v3));
  v6 = (((*(a1 + 15) ^ 0x647378D9C97E9FC8uLL) * (*(a1 + 14) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(a1 + 15) ^ 0x647378D9C97E9FC8) * (*(a1 + 14) ^ 0x3159B4CD4BE0518ALL));
  v7 = 0x165667919E3779F9 * ((v5 + v6) ^ ((v5 + v6) >> 37));
  v8 = v7 ^ HIDWORD(v7);
  if (a2 >= 0x90)
  {
    if ((a2 >> 4) <= 9)
    {
      v9 = 9;
    }

    else
    {
      v9 = (a2 >> 4);
    }

    v10 = a1 + 128;
    v11 = v9 - 8;
    v12 = &unk_1A7601E00;
    do
    {
      v13 = *v10;
      v10 += 16;
      v14 = veorq_s8(v13, *(v12 - 125));
      v8 += ((v14.u64[1] * v14.u64[0]) >> 64) ^ (v14.i64[1] * v14.i64[0]);
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  v15 = (((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831));
  v16 = 0x165667919E3779F9 * ((v8 + v15) ^ ((v8 + v15) >> 37));
  return v16 ^ HIDWORD(v16);
}

unint64_t XXH3_hashLong_64b(const unsigned __int8 *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= 0x400)
  {
    v8 = 0;
    v4 = xmmword_1A7601C70;
    v5 = xmmword_1A7601C80;
    v6 = xmmword_1A7601C90;
    v7 = xmmword_1A7601CA0;
    v9 = a1 + 32;
    v10 = vdup_n_s32(0x9E3779B1);
    do
    {
      v11 = v9;
      v12 = &xmmword_1A7601DA0;
      v13 = 16;
      do
      {
        v14 = v11[-2];
        v15 = v11[-1];
        v16 = vextq_s8(v14, v14, 8uLL);
        v17 = vextq_s8(v15, v15, 8uLL);
        v18 = veorq_s8(v12[-2], v14);
        v19 = veorq_s8(v12[-1], v15);
        v20 = vuzp1q_s32(v18, v19);
        v21 = vuzp2q_s32(v18, v19);
        v4 = vaddq_s64(vmlal_u32(v16, *v20.i8, *v21.i8), v4);
        v5 = vaddq_s64(vmlal_high_u32(v17, v20, v21), v5);
        v22 = *v11;
        v23 = v11[1];
        v11 += 4;
        v24 = vextq_s8(v22, v22, 8uLL);
        v25 = vextq_s8(v23, v23, 8uLL);
        v26 = veorq_s8(*v12, v22);
        v27 = veorq_s8(v12[1], v23);
        v28 = vuzp1q_s32(v26, v27);
        v29 = vuzp2q_s32(v26, v27);
        v6 = vaddq_s64(vmlal_u32(v24, *v28.i8, *v29.i8), v6);
        v7 = vaddq_s64(vmlal_high_u32(v25, v28, v29), v7);
        v12 = (v12 + 8);
        --v13;
      }

      while (v13);
      v30 = veorq_s8(vshrq_n_u64(v4, 0x2FuLL), veorq_s8(v4, xmmword_1A7601CB0));
      v4 = vmlal_u32(vmulq_s32(v30, xmmword_1A7601CC0), vmovn_s64(v30), v10);
      v31 = veorq_s8(vshrq_n_u64(v5, 0x2FuLL), veorq_s8(v5, xmmword_1A7601CD0));
      v5 = vmlal_u32(vmulq_s32(v31, xmmword_1A7601CC0), vmovn_s64(v31), v10);
      v32 = veorq_s8(vshrq_n_u64(v6, 0x2FuLL), veorq_s8(v6, xmmword_1A7601CE0));
      v6 = vmlal_u32(vmulq_s32(v32, xmmword_1A7601CC0), vmovn_s64(v32), v10);
      v33 = veorq_s8(vshrq_n_u64(v7, 0x2FuLL), veorq_s8(v7, xmmword_1A7601CF0));
      v7 = vmlal_u32(vmulq_s32(v33, xmmword_1A7601CC0), vmovn_s64(v33), v10);
      ++v8;
      v9 += 1024;
    }

    while (v8 != v3 >> 10);
  }

  else
  {
    v4 = xmmword_1A7601C70;
    v5 = xmmword_1A7601C80;
    v6 = xmmword_1A7601C90;
    v7 = xmmword_1A7601CA0;
  }

  v34 = (v3 >> 6) & 0xF;
  if (v34)
  {
    v35 = &a1[(v3 & 0xFFFFFFFFFFFFFC00) + 32];
    v36 = &xmmword_1A7601DA0;
    do
    {
      v37 = *(v35 - 2);
      v38 = *(v35 - 1);
      v39 = vextq_s8(v37, v37, 8uLL);
      v40 = vextq_s8(v38, v38, 8uLL);
      v41 = veorq_s8(v36[-2], v37);
      v42 = veorq_s8(v36[-1], v38);
      v43 = vuzp1q_s32(v41, v42);
      v44 = vuzp2q_s32(v41, v42);
      v4 = vaddq_s64(vmlal_u32(v39, *v43.i8, *v44.i8), v4);
      v5 = vaddq_s64(vmlal_high_u32(v40, v43, v44), v5);
      v45 = *v35;
      v46 = *(v35 + 1);
      v35 += 64;
      v47 = vextq_s8(v45, v45, 8uLL);
      v48 = vextq_s8(v46, v46, 8uLL);
      v49 = veorq_s8(*v36, v45);
      v50 = veorq_s8(v36[1], v46);
      v51 = vuzp1q_s32(v49, v50);
      v52 = vuzp2q_s32(v49, v50);
      v6 = vaddq_s64(vmlal_u32(v47, *v51.i8, *v52.i8), v6);
      v7 = vaddq_s64(vmlal_high_u32(v48, v51, v52), v7);
      v36 = (v36 + 8);
      --v34;
    }

    while (v34);
  }

  v53 = *&a1[a2 - 64];
  v54 = *&a1[a2 - 48];
  v55 = vextq_s8(v53, v53, 8uLL);
  v56 = vextq_s8(v54, v54, 8uLL);
  v57 = veorq_s8(v53, xmmword_1A7601D00);
  v58 = veorq_s8(v54, xmmword_1A7601D10);
  v59 = vuzp1q_s32(v57, v58);
  v60 = vuzp2q_s32(v57, v58);
  v61 = vaddq_s64(vmlal_u32(v55, *v59.i8, *v60.i8), v4);
  v62 = vaddq_s64(vmlal_high_u32(v56, v59, v60), v5);
  v63 = *&a1[a2 - 32];
  v64 = *&a1[a2 - 16];
  v65 = vextq_s8(v63, v63, 8uLL);
  v66 = vextq_s8(v64, v64, 8uLL);
  v67 = veorq_s8(v63, xmmword_1A7601D20);
  v68 = veorq_s8(v64, xmmword_1A7601D30);
  v69 = vuzp1q_s32(v67, v68);
  v70 = vuzp2q_s32(v67, v68);
  v71 = veorq_s8(v61, xmmword_1A7601D40);
  v72 = (((v71.u64[1] * v71.u64[0]) >> 64) ^ (v71.i64[1] * v71.i64[0])) - 0x61C8864E7A143579 * a2;
  v73 = veorq_s8(v62, xmmword_1A7601D50);
  v74 = veorq_s8(vaddq_s64(vmlal_u32(v65, *v69.i8, *v70.i8), v6), xmmword_1A7601D60);
  v75 = ((v74.u64[1] * v74.u64[0]) >> 64) ^ (v74.i64[1] * v74.i64[0]);
  v76 = veorq_s8(vaddq_s64(vmlal_high_u32(v66, v69, v70), v7), xmmword_1A7601D70);
  v77 = (((v73.u64[1] * v73.u64[0]) >> 64) ^ (v73.i64[1] * v73.i64[0])) + v75;
  v78 = ((v76.u64[1] * v76.u64[0]) >> 64) ^ (v76.i64[1] * v76.i64[0]);
  v79 = (v72 + v77 + v78) ^ ((v72 + v77 + v78) >> 37);
  return (0x165667919E3779F9 * v79) ^ ((0x165667919E3779F9 * v79) >> 32);
}

uint64_t llvm::sys::StrError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this)
  {
    __strerrbuf[0] = 0;
    strerror_r(this, __strerrbuf, 0x7CFuLL);
    return MEMORY[0x1AC559980](a2, __strerrbuf);
  }

  return this;
}

unsigned __int8 *llvm::sys::path::begin@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  v29 = result;
  v30 = a2;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_49;
  }

  if (a3 >= 2)
  {
    v4 = *result;
    if (a2 == 1)
    {
      goto LABEL_35;
    }

    if ((v4 & 0x80) != 0)
    {
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = a4;
      v10 = __maskrune(*result, 0x100uLL);
      a2 = v7;
      a4 = v9;
      a3 = v8;
      v11 = v10;
      result = v6;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    if (result[1] == 58)
    {
      v5 = 2;
      goto LABEL_49;
    }
  }

LABEL_11:
  LODWORD(v4) = *result;
  if (a2 >= 3)
  {
    v12 = a3 > 1 && v4 == 92;
    v13 = v12;
    v14 = v4 != 47 && !v13;
    if (!v14 && v4 == result[1])
    {
      v15 = result[2];
      v16 = a3 > 1 && v15 == 92;
      v17 = v16;
      if (v15 != 47 && !v17)
      {
        v18 = 1;
        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v18 = 2;
          v19 = "\\/";
        }

        v20 = a3;
        v21 = v18;
        v22 = 2;
LABEL_47:
        v26 = a4;
        first_of = llvm::StringRef::find_first_of(&v29, v19, v21, v22);
        a4 = v26;
        a3 = v20;
        v28 = first_of;
        result = v29;
        v5 = v30;
        if (v30 >= v28)
        {
          v5 = v28;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_35:
  v24 = a3 > 1 && v4 == 92;
  v5 = 1;
  if (v4 != 47 && !v24)
  {
    v25 = 1;
    if (a3 <= 1)
    {
      v19 = "/";
    }

    else
    {
      v25 = 2;
      v19 = "\\/";
    }

    v20 = a3;
    v21 = v25;
    v22 = 0;
    goto LABEL_47;
  }

LABEL_49:
  *(a4 + 16) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

void *llvm::sys::path::const_iterator::operator++(void *result)
{
  v1 = result[3];
  v2 = result[4] + v1;
  result[4] = v2;
  v3 = result[1];
  if (v2 == v3)
  {
    result[2] = 0;
    result[3] = 0;
    return result;
  }

  if (v1 <= 2)
  {
    v10 = 0;
    v6 = *(result + 10);
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = result[2];
    v5 = *v4;
    v6 = *(result + 10);
    if (v5 == 47 || (v5 == 92 ? (v7 = v6 >= 2) : (v7 = 0), v7))
    {
      if (v4[1] == v5)
      {
        v8 = v4[2];
        v10 = v6 < 2 || v8 != 92;
        if (v8 == 47)
        {
          v10 = 0;
        }

        v11 = *result;
        v12 = *(*result + v2);
        if (v12 == 47)
        {
          goto LABEL_43;
        }

LABEL_24:
        if (v12 != 92 || v6 < 2)
        {
          goto LABEL_28;
        }

        goto LABEL_43;
      }
    }

    v10 = 0;
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

LABEL_43:
  if (v10 || v1 && v6 >= 2 && *(result[2] + v1 - 1) == 58)
  {
    v20 = v3 > v2;
    if (v3 < v2)
    {
      v2 = result[1];
    }

    v21 = v11 + v2;
    v22 = v20;
    result[2] = v21;
    result[3] = v22;
    return result;
  }

  while (1)
  {
    v23 = *(v11 + v2);
    v24 = v6 > 1 && v23 == 92;
    v25 = v24;
    if (v23 != 47 && !v25)
    {
      break;
    }

    result[4] = ++v2;
    if (v3 == v2)
    {
      if (v1 != 1 || *result[2] != 47)
      {
        result[4] = v3 - 1;
        result[2] = ".";
        result[3] = 1;
        return result;
      }

      goto LABEL_29;
    }
  }

LABEL_28:
  v3 = v2;
LABEL_29:
  if (v6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v6 <= 1)
  {
    v15 = "/";
  }

  else
  {
    v15 = "\\/";
  }

  v16 = result;
  first_of = llvm::StringRef::find_first_of(result, v15, v14, v3);
  result = v16;
  v18 = v16[1];
  if (v18 >= v16[4])
  {
    v19 = v16[4];
  }

  else
  {
    v19 = v16[1];
  }

  if (v19 > first_of)
  {
    first_of = v16[4];
  }

  if (first_of >= v18)
  {
    first_of = v16[1];
  }

  v16[2] = *v16 + v19;
  v16[3] = first_of - v19;
  return result;
}

unsigned __int8 *llvm::sys::path::root_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v22);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  if (v22 == a1 && v24 == a2)
  {
    return 0;
  }

  if (*(&v23 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v23;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v23 + 1) == v7;
    }
  }

  v10 = 0;
  if (*(&v23 + 1) && a3 >= 2)
  {
    v10 = *(v23 + *(&v23 + 1) - 1) == 58;
  }

  if (v8 || v10)
  {
    llvm::sys::path::const_iterator::operator++(&v19);
    if (v19 == a1 && v21 == a2)
    {
      return v23;
    }

    v11 = *v20;
    v12 = a3 > 1 && v11 == 92;
    v13 = v12;
    if (v11 != 47 && !v13)
    {
      return v23;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v15 = *v23;
    if (a3 > 1 && v15 == 92 || v15 == 47)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t llvm::sys::path::root_directory(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v21);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  if (v21 == a1 && v23 == a2)
  {
    return 0;
  }

  if (*(&v22 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v22;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v22 + 1) == v7;
    }
  }

  v9 = 0;
  if (*(&v22 + 1) && a3 >= 2)
  {
    v9 = *(v22 + *(&v22 + 1) - 1) == 58;
  }

  if (!v8 && !v9 || (llvm::sys::path::const_iterator::operator++(&v18), v18 == a1) && v20 == a2 || ((result = v19, v11 = *v19, a3 > 1) ? (v12 = v11 == 92) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v11 != 47 ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (!v8)
    {
      v15 = *v22;
      if (a3 > 1 && v15 == 92 || v15 == 47)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

void llvm::sys::path::append(void *a1, const llvm::Twine *a2, void ***a3, void **a4, void ***a5, void **a6)
{
  v79[4] = *MEMORY[0x1E69E9840];
  v77 = v79;
  v78 = xmmword_1A75A2980;
  v74 = v76;
  v75 = xmmword_1A75A2980;
  v71 = v73;
  v72 = xmmword_1A75A2980;
  v68 = v70;
  v69 = xmmword_1A75A2980;
  v65 = v67;
  v66 = 0x400000000;
  v10 = *(a3 + 32);
  if (v10 < 2)
  {
    v11 = 0;
    v12 = *(a4 + 32);
    if (v12 < 2)
    {
      goto LABEL_3;
    }

LABEL_67:
    if (*(a4 + 33) == 1)
    {
      if (v12 - 5 < 2)
      {
        v45 = *a4;
        v46 = a4[1];
        if (v11 < HIDWORD(v66))
        {
          goto LABEL_75;
        }

        goto LABEL_106;
      }

      if (v12 == 4)
      {
        v57 = *(*a4 + 23);
        if (v57 >= 0)
        {
          v45 = *a4;
        }

        else
        {
          v45 = **a4;
        }

        if (v57 >= 0)
        {
          v46 = *(*a4 + 23);
        }

        else
        {
          v46 = (*a4)[1];
        }

        if (v11 >= HIDWORD(v66))
        {
          goto LABEL_106;
        }

        goto LABEL_75;
      }

      if (v12 == 3)
      {
        v45 = *a4;
        if (*a4)
        {
          v46 = strlen(*a4);
          if (v11 < HIDWORD(v66))
          {
            goto LABEL_75;
          }

          goto LABEL_106;
        }

        v46 = 0;
        if (v11 >= HIDWORD(v66))
        {
LABEL_106:
          v54 = v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
          v46 = v54;
          v11 = v66;
        }

LABEL_75:
        v47 = v65 + 16 * v11;
        *v47 = v45;
        v47[1] = v46;
        v11 = v66 + 1;
        LODWORD(v66) = v66 + 1;
        v13 = *(a5 + 32);
        if (v13 < 2)
        {
LABEL_4:
          v14 = *(a6 + 32);
          if (v14 < 2)
          {
            goto LABEL_5;
          }

LABEL_85:
          if (*(a6 + 33) == 1)
          {
            if (v14 - 5 < 2)
            {
              v51 = *a6;
              v52 = a6[1];
              if (v11 < HIDWORD(v66))
              {
                goto LABEL_93;
              }

              goto LABEL_110;
            }

            if (v14 == 4)
            {
              v59 = *(*a6 + 23);
              if (v59 >= 0)
              {
                v51 = *a6;
              }

              else
              {
                v51 = **a6;
              }

              if (v59 >= 0)
              {
                v52 = *(*a6 + 23);
              }

              else
              {
                v52 = (*a6)[1];
              }

              if (v11 >= HIDWORD(v66))
              {
                goto LABEL_110;
              }

              goto LABEL_93;
            }

            if (v14 == 3)
            {
              v51 = *a6;
              if (*a6)
              {
                v52 = strlen(*a6);
                if (v11 < HIDWORD(v66))
                {
                  goto LABEL_93;
                }

                goto LABEL_110;
              }

              v52 = 0;
              if (v11 >= HIDWORD(v66))
              {
LABEL_110:
                v56 = v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
                v52 = v56;
                v11 = v66;
              }

LABEL_93:
              v53 = v65 + 16 * v11;
              *v53 = v51;
              v53[1] = v52;
              v11 = v66 + 1;
              LODWORD(v66) = v11;
              v15 = v65;
              if (v11)
              {
                goto LABEL_6;
              }

LABEL_94:
              if (v15 == v67)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }
          }

          llvm::Twine::toVector(a6, &v68);
          v51 = v68;
          v52 = v69;
          v11 = v66;
          if (v66 < HIDWORD(v66))
          {
            goto LABEL_93;
          }

          goto LABEL_110;
        }

        goto LABEL_76;
      }
    }

    llvm::Twine::toVector(a4, &v74);
    v45 = v74;
    v46 = v75;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_75;
    }

    goto LABEL_106;
  }

  if (*(a3 + 33) != 1)
  {
    goto LABEL_56;
  }

  if (v10 - 5 < 2)
  {
    v42 = 0;
    v38 = *a3;
    v40 = a3[1];
    goto LABEL_66;
  }

  if (v10 != 4)
  {
    if (v10 == 3)
    {
      v38 = *a3;
      if (*a3)
      {
        v39 = a4;
        v40 = strlen(*a3);
        a4 = v39;
      }

      else
      {
        v40 = 0;
      }

      v42 = 0;
      goto LABEL_66;
    }

LABEL_56:
    v41 = a4;
    llvm::Twine::toVector(a3, &v77);
    v38 = v77;
    v40 = v78;
    v42 = v66;
    a4 = v41;
    goto LABEL_66;
  }

  v42 = 0;
  v43 = *(*a3 + 23);
  if (v43 >= 0)
  {
    v38 = *a3;
  }

  else
  {
    v38 = **a3;
  }

  if (v43 >= 0)
  {
    v40 = *(*a3 + 23);
  }

  else
  {
    v40 = (*a3)[1];
  }

LABEL_66:
  v44 = v65 + 16 * v42;
  *v44 = v38;
  v44[1] = v40;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v12 = *(a4 + 32);
  if (v12 >= 2)
  {
    goto LABEL_67;
  }

LABEL_3:
  v13 = *(a5 + 32);
  if (v13 < 2)
  {
    goto LABEL_4;
  }

LABEL_76:
  if (*(a5 + 33) != 1)
  {
    goto LABEL_83;
  }

  if (v13 - 5 < 2)
  {
    v48 = *a5;
    v49 = a5[1];
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  if (v13 == 4)
  {
    v58 = *(*a5 + 23);
    if (v58 >= 0)
    {
      v48 = *a5;
    }

    else
    {
      v48 = **a5;
    }

    if (v58 >= 0)
    {
      v49 = *(*a5 + 23);
    }

    else
    {
      v49 = (*a5)[1];
    }

    if (v11 >= HIDWORD(v66))
    {
      goto LABEL_108;
    }

    goto LABEL_84;
  }

  if (v13 != 3)
  {
LABEL_83:
    llvm::Twine::toVector(a5, &v71);
    v48 = v71;
    v49 = v72;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v48 = *a5;
  if (*a5)
  {
    v49 = strlen(*a5);
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v49 = 0;
  if (v11 >= HIDWORD(v66))
  {
LABEL_108:
    v55 = v49;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
    v49 = v55;
    v11 = v66;
  }

LABEL_84:
  v50 = v65 + 16 * v11;
  *v50 = v48;
  v50[1] = v49;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v14 = *(a6 + 32);
  if (v14 >= 2)
  {
    goto LABEL_85;
  }

LABEL_5:
  v15 = v65;
  if (!v11)
  {
    goto LABEL_94;
  }

LABEL_6:
  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = "/";
  if (a2 > 1)
  {
    v17 = "\\/";
  }

  v61 = v17;
  v62 = v16;
  if (a2 == 3)
  {
    v18 = 92;
  }

  else
  {
    v18 = 47;
  }

  v60 = v18;
  v19 = a1[1];
  v20 = 16 * v11;
  do
  {
    if (!v19 || ((v21 = *(*a1 + v19 - 1), a2 > 1) ? (v22 = v21 == 92) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), v21 != 47 ? (v24 = v23 == 0) : (v24 = 0), v24))
    {
      v34 = v15[1];
      if (!v34 || (v35 = **v15, v35 != 47) && (a2 < 2 || v35 != 92))
      {
        if (v19)
        {
          v64 = 261;
          v63[0] = *v15;
          v63[1] = v34;
          has_root_name = llvm::sys::path::has_root_name(v63, a2);
          v19 = a1[1];
          if ((has_root_name & 1) == 0)
          {
            if ((v19 + 1) > a1[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + 1, 1);
              v19 = a1[1];
            }

            *(*a1 + v19) = v60;
            v19 = a1[1] + 1;
            a1[1] = v19;
          }
        }
      }

      v37 = *v15;
      v30 = v15[1];
      if (a1[2] < v19 + v30)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + v30, 1);
        v19 = a1[1];
      }

      if (v30)
      {
        v32 = (*a1 + v19);
        v33 = v37;
        goto LABEL_15;
      }
    }

    else
    {
      first_not_of = llvm::StringRef::find_first_not_of(v15, v61, v62, 0);
      v26 = first_not_of;
      v28 = *v15;
      v27 = v15[1];
      if (v27 >= first_not_of)
      {
        v29 = first_not_of;
      }

      else
      {
        v29 = v15[1];
      }

      v30 = v27 - v29;
      v19 = a1[1];
      v31 = v19 + v27 - v29;
      if (a1[2] < v31)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v31, 1);
        v19 = a1[1];
      }

      if (v27 > v26)
      {
        v32 = (*a1 + v19);
        v33 = &v29[v28];
LABEL_15:
        memcpy(v32, v33, v30);
        v19 = a1[1];
      }
    }

    v19 += v30;
    a1[1] = v19;
    v15 += 2;
    v20 -= 16;
  }

  while (v20);
  v15 = v65;
  if (v65 != v67)
  {
LABEL_95:
    free(v15);
  }

LABEL_96:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  if (v74 != v76)
  {
    free(v74);
  }

  if (v77 != v79)
  {
    free(v77);
  }
}

uint64_t llvm::sys::path::has_root_name(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v20[16] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = xmmword_1A75DA7F0;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v18);
    v5 = v18;
    v6 = v19;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = (*this)[1];
  }

LABEL_15:
  llvm::sys::path::begin(v5, v6, v2, &v14);
  if (v14 == v5 && v17 == v6)
  {
    v10 = 0;
    v11 = v18;
    if (v18 == v20)
    {
      return v10;
    }

    goto LABEL_31;
  }

  if (v16 < 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = *v15;
    if (v8 == 47 || (v9 = 0, v2 >= 2) && v8 == 92)
    {
      v9 = v15[1] == v8;
    }
  }

  v12 = 0;
  if (v2 >= 2 && v16)
  {
    v12 = v15[v16 - 1] == 58;
  }

  v10 = (v16 != 0) & (v9 | v12);
  v11 = v18;
  if (v18 != v20)
  {
LABEL_31:
    free(v11);
  }

  return v10;
}

unsigned __int8 *llvm::sys::path::parent_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t anonymous namespace::parent_path_end(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v43 = a1;
  v44 = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = -1;
  }

  v8 = a3 > 1;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    v10 = "/";
  }

  else
  {
    v10 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(&v43, v10, v9, v6);
  if (a3 >= 2 && last_of == -1)
  {
    v12 = v44 - 1;
    if (v44 < v44 - 1)
    {
      v12 = v44;
    }

    while (v12)
    {
      last_of = v12 - 1;
      v13 = v43[--v12];
      if (v13 == 58)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_32;
  }

LABEL_19:
  if (last_of == -1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

  if (last_of == 1)
  {
    v6 = 0;
    v14 = *v43;
    v15 = a3 > 1 && v14 == 92;
    v16 = v15;
    if (v14 == 47 || v16)
    {
LABEL_32:
      if (a2)
      {
        goto LABEL_33;
      }

LABEL_96:
      v19 = 0;
      goto LABEL_97;
    }
  }

  v6 = last_of + 1;
  if (!a2)
  {
    goto LABEL_96;
  }

LABEL_33:
  v7 = a1[v6];
LABEL_34:
  v18 = a3 > 1 && v7 == 92;
  v19 = v7 == 47 || v18;
  v43 = a1;
  v44 = a2;
  v8 = a3 > 1;
  if (a3 > 1)
  {
    if (a2 < 3)
    {
LABEL_74:
      v23 = *a1;
      goto LABEL_75;
    }

    if (a1[1] == 58)
    {
      v20 = a1[2];
      v21 = 1;
      first_of = 2;
      if (v20 == 47 || v20 == 92)
      {
        goto LABEL_84;
      }
    }
  }

  if (a2 < 4)
  {
    goto LABEL_74;
  }

  v23 = *a1;
  v25 = a3 > 1 && v23 == 92;
  if ((v23 == 47 || v25) && v23 == a1[1])
  {
    v26 = a1[2];
    v27 = a3 > 1 && v26 == 92;
    v28 = v27;
    if (v26 != 47 && !v28)
    {
      if (a3 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (a3 <= 1)
      {
        v30 = "/";
      }

      else
      {
        v30 = "\\/";
      }

      v31 = v6;
      first_of = llvm::StringRef::find_first_of(&v43, v30, v29, 2uLL);
      v6 = v31;
      if (first_of == -1)
      {
        goto LABEL_97;
      }

LABEL_85:
      if (v6 >= first_of)
      {
        v34 = first_of;
      }

      else
      {
        v34 = v6;
      }

      while (v6 > first_of)
      {
        v35 = v6 - 1;
        v36 = a1[v6 - 1];
        v37 = v36 == 92 && v8;
        --v6;
        if (v36 != 47)
        {
          v6 = v35;
          if (!v37)
          {
            v34 = v35 + 1;
            goto LABEL_106;
          }
        }
      }

      goto LABEL_106;
    }
  }

LABEL_75:
  first_of = 0;
  v33 = a3 > 1 && v23 == 92;
  if (v23 == 47 || v33)
  {
    v21 = a3 > 1;
LABEL_84:
    v8 = v21;
    goto LABEL_85;
  }

LABEL_97:
  while (v6)
  {
    v38 = v6 - 1;
    v39 = a1[v6 - 1];
    v40 = v39 == 92 && v8;
    --v6;
    if (v39 != 47)
    {
      v6 = v38;
      if (!v40)
      {
        v34 = v38 + 1;
        goto LABEL_105;
      }
    }
  }

  v34 = 0;
LABEL_105:
  first_of = -1;
LABEL_106:
  if (v34 == first_of)
  {
    v41 = v19;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    return v34;
  }

  else
  {
    return first_of + 1;
  }
}

void llvm::SmallVectorImpl<char>::swap(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *a1;
  if (*a1 != a1 + 3 && *a2 != a2 + 3)
  {
    v5 = a1[1];
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *a2 = v4;
    a2[1] = v5;
    v7 = a1[2];
    a1[2] = a2[2];
    a2[2] = v7;
    return;
  }

  v8 = a2[1];
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
    v9 = a1[1];
    if (a2[2] >= v9)
    {
LABEL_7:
      v10 = a2[1];
      if (v9 >= v10)
      {
        v11 = a2[1];
      }

      else
      {
        v11 = v9;
      }

      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = a1[1];
    if (a2[2] >= v9)
    {
      goto LABEL_7;
    }
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
  v9 = a1[1];
  v10 = a2[1];
  if (v9 >= v10)
  {
    v11 = a2[1];
  }

  else
  {
    v11 = a1[1];
  }

  if (!v11)
  {
LABEL_11:
    v12 = v9 - v10;
    if (v9 > v10)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  for (i = 0; i != v11; ++i)
  {
    v15 = *a2;
    v16 = *(*a1 + i);
    *(*a1 + i) = *(*a2 + i);
    *(v15 + i) = v16;
  }

  v9 = a1[1];
  v10 = a2[1];
  v12 = v9 - v10;
  if (v9 > v10)
  {
LABEL_12:
    v13 = v9 - v11;
    if (v13)
    {
      memcpy((*a2 + v10), (*a1 + v11), v13);
      v10 = a2[1];
    }

    a2[1] = v12 + v10;
    a1[1] = v11;
    return;
  }

LABEL_23:
  v17 = v10 - v9;
  if (v10 > v9)
  {
    v18 = v10 - v11;
    if (v18)
    {
      memcpy((*a1 + v9), (*a2 + v11), v18);
      v9 = a1[1];
    }

    a1[1] = v17 + v9;
    a2[1] = v11;
  }
}

BOOL llvm::sys::path::has_root_directory(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v14[16] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = xmmword_1A75DA7F0;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_directory(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v16[16] = *MEMORY[0x1E69E9840];
  v14 = v16;
  v15 = xmmword_1A75DA7F0;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v14);
    v5 = v14;
    v6 = v15;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = *(*this + 8);
  }

LABEL_15:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_directory = llvm::sys::path::has_root_directory(&v11, a2);
  if (a2 < 2)
  {
    has_root_name = 1;
    v9 = v14;
    if (v14 == v16)
    {
      return has_root_directory & has_root_name;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_name = llvm::sys::path::has_root_name(&v11, a2);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_19:
    free(v9);
  }

  return has_root_directory & has_root_name;
}

void llvm::sys::fs::createUniquePath(uint64_t a1, uint64_t a2, int a3)
{
  v22[16] = *MEMORY[0x1E69E9840];
  v20 = v22;
  v21 = xmmword_1A75DA7F0;
  llvm::Twine::toVector(a1, &v20);
  if (a3)
  {
    v19[4] = 261;
    v17 = v20;
    *&v18 = v21;
    if ((llvm::sys::path::is_absolute(&v17, 0) & 1) == 0)
    {
      v17 = v19;
      v18 = xmmword_1A75DA7F0;
      llvm::sys::path::system_temp_directory(1, &v17);
      v16 = 261;
      v15[0] = v20;
      v15[1] = v21;
      v14 = 257;
      v12 = 257;
      v10 = 257;
      llvm::sys::path::append(&v17, 0, v15, &v13, &v11, &v9);
      llvm::SmallVectorImpl<char>::swap(&v20, &v17);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }

  if (&v20 == a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v21;
    v6 = *(a2 + 8);
    if (v6 >= v21)
    {
      if (v21)
      {
        memmove(*a2, v20, v21);
      }
    }

    else
    {
      if (*(a2 + 16) >= v21)
      {
        if (v6)
        {
          memmove(*a2, v20, *(a2 + 8));
        }
      }

      else
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5, 1);
        v6 = 0;
      }

      if (v21 != v6)
      {
        memcpy((*a2 + v6), &v20[v6], v21 - v6);
      }
    }

    *(a2 + 8) = v5;
  }

  if (v5 + 1 > *(a2 + 16))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5 + 1, 1);
    *(*a2 + *(a2 + 8)) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(*a2 + v5) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v8 = 0;
  do
  {
    if (v20[v8] == 37)
    {
      *(*a2 + v8) = a0123456789abcd_0[llvm::sys::Process::GetRandomNumber() & 0xF];
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_24:
  if (v20 != v22)
  {
    free(v20);
  }
}

void llvm::sys::path::system_temp_directory(int a1, uint64_t a2)
{
  v3 = 65537;
  *(a2 + 8) = 0;
  if (a1)
  {
    v4 = getenv("TMPDIR");
    if (v4 || (v4 = getenv("TMP")) != 0 || (v4 = getenv("TEMP")) != 0 || (v4 = getenv("TEMPDIR")) != 0)
    {
      v5 = v4;
      v6 = strlen(v4);
      v7 = v6;
      if (*(a2 + 16) >= v6)
      {
        v8 = 0;
        v13 = 0;
        if (!v6)
        {
LABEL_24:
          *(a2 + 8) = v13 + v7;
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v6, 1);
        v8 = *(a2 + 8);
      }

      memcpy((*a2 + v8), v5, v7);
      v13 = *(a2 + 8);
      goto LABEL_24;
    }
  }

  else
  {
    v3 = 65538;
  }

  v9 = confstr(v3, 0, 0);
  v10 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_26;
  }

  v11 = v9;
  while (v10 == v11)
  {
    v12 = confstr(v3, *a2, v10);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_20:
    v11 = v12;
    v10 = *(a2 + 8);
    if (v12 == v10)
    {
      *(a2 + 8) = v12 - 1;
      return;
    }
  }

  if (v10 <= v11)
  {
    if (*(a2 + 16) < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v11, 1);
      v10 = *(a2 + 8);
    }

    if (v11 != v10)
    {
      bzero((*a2 + v10), v11 - v10);
    }
  }

  *(a2 + 8) = v11;
  v12 = confstr(v3, *a2, v11);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_25:
  v10 = 0;
  *(a2 + 8) = 0;
LABEL_26:
  if (*(a2 + 16) < v10 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10 + 9, 1);
    v10 = *(a2 + 8);
  }

  v14 = *a2 + v10;
  *v14 = *"/var/tmp/";
  *(v14 + 8) = 47;
  *(a2 + 8) += 9;
}

void createUniqueEntity(uint64_t a1, int *a2, const char **a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v42 = *MEMORY[0x1E69E9840];
  v14 = std::system_category();
  if (a5 == 2)
  {
    v22 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v23 = *a3;
      v37 = 257;
      if (*v23)
      {
        v36 = v23;
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v37) = v24;
      v38 = &v40;
      v39 = xmmword_1A75DA7F0;
      v25 = llvm::Twine::toNullTerminatedStringRef(&v36, &v38);
      v26 = 0;
      v27 = v14;
      if (access(v25, 0) == -1)
      {
        break;
      }

      v28 = v38;
      if (v38 != &v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((v27 != std::generic_category() || v26 != 2) && !v26 && --v22 >= 2)
      {
        continue;
      }

      return;
    }

    v26 = *__error();
    v27 = std::generic_category();
    v28 = v38;
    if (v38 == &v40)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v28);
    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v15 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v16 = *a3;
      v41 = 257;
      if (*v16)
      {
        v38 = v16;
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v41) = v17;
      v19 = llvm::sys::fs::openFile(&v38, a2, 1, 3, v8, a7);
      if (!v19)
      {
        break;
      }

      v20 = v18;
      v21 = std::generic_category();
      if (v19 == 17 && v21 == v20)
      {
        if (--v15 <= 1)
        {
          return;
        }
      }

      else
      {
        if (v19 != 13)
        {
          return;
        }

        if (v21 != v20)
        {
          return;
        }

        if (--v15 <= 1)
        {
          return;
        }
      }
    }
  }

  else if (a5)
  {
    llvm::sys::fs::createUniquePath(a1, a3, a4);
    __break(1u);
  }

  else
  {
    for (i = 129; i > 1; --i)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v30 = *a3;
      v41 = 257;
      if (*v30)
      {
        v38 = v30;
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      LOBYTE(v41) = v31;
      directory = llvm::sys::fs::create_directory(&v38, 0, 0x1F8u);
      if (!directory)
      {
        break;
      }

      v34 = v32;
      v35 = std::generic_category();
      if (directory != 17)
      {
        break;
      }

      if (v35 != v34)
      {
        break;
      }
    }
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, const char *a2, uint64_t a3, int *a4, const char **a5, int a6, uint64_t a7)
{
  v37[16] = *MEMORY[0x1E69E9840];
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v23 = v11;
    LOBYTE(v25) = v12;
    BYTE1(v25) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOBYTE(v12) = 0;
      LOWORD(v25) = 256;
LABEL_20:
      v14 = 1;
      goto LABEL_26;
    }

    if (*v11)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 33) == 1;
      BYTE1(v25) = v12;
      if (v17)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      *&v23 = v18;
      *(&v23 + 1) = v16;
      *&v24 = v11;
      LOBYTE(v25) = v12;
    }

    else
    {
      v22 = *(a1 + 1);
      v23 = *a1;
      v24 = v22;
      v25 = a1[4];
      v12 = v25;
      if (!v25)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 == 1)
  {
    v26 = a2;
    v27 = a3;
    v14 = 1;
    LOBYTE(v12) = 5;
  }

  else
  {
    if (BYTE1(v25) != 1)
    {
      LOBYTE(v12) = 2;
    }

    v19 = &v23;
    if (BYTE1(v25) == 1)
    {
      v19 = v23;
    }

    v26 = v19;
    v27 = *(&v23 + 1);
    v28 = a2;
    v29 = a3;
    v14 = 5;
  }

LABEL_26:
  v30 = v12;
  v31 = v14;
  v35 = v37;
  v36 = xmmword_1A75DA7F0;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v26, &v35);
  v21 = 1;
  v34 = 1;
  if (*v20)
  {
    v32 = v20;
    v21 = 3;
  }

  v33 = v21;
  createUniqueEntity(&v32, a4, a5, 1, a6, a7, 438);
  if (v35 != v37)
  {
    free(v35);
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, const char *a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v6 = 0;
  llvm::sys::fs::createTemporaryFile(a1, a2, a3, &v6, a4, 1, a5);
  if (!v5)
  {
    close(v6);
  }
}

void llvm::sys::fs::make_absolute(uint64_t a1, unsigned __int8 ***a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[1];
  v41 = 261;
  v38 = v4;
  *&v39 = v5;
  has_root_directory = llvm::sys::path::has_root_directory(&v38, 0);
  v41 = 261;
  v38 = v4;
  *&v39 = v5;
  has_root_name = llvm::sys::path::has_root_name(&v38, 0);
  if (!has_root_directory)
  {
    v8 = has_root_name;
    v38 = &v40;
    v39 = xmmword_1A75DA7F0;
    llvm::Twine::toVector(a1, &v38);
    if ((v8 & 1) == 0)
    {
      v37[4] = 261;
      v35 = v4;
      *&v36 = v5;
      v34 = 257;
      v32 = 257;
      v30 = 257;
      llvm::sys::path::append(&v38, 0, &v35, v33, v31, v29);
      llvm::SmallVectorImpl<char>::swap(a2, &v38);
LABEL_30:
      if (v38 != &v40)
      {
        free(v38);
      }

      return;
    }

    v35 = v4;
    *&v36 = v5;
    if (!v5)
    {
      goto LABEL_21;
    }

    v9 = *v4;
    if (v5 < 3)
    {
      if (v9 == 47)
      {
        goto LABEL_21;
      }
    }

    else if (v9 == 47)
    {
      if (*(v4 + 1) != 47 || *(v4 + 2) == 47)
      {
        goto LABEL_21;
      }

      v10 = 2;
      goto LABEL_12;
    }

    v10 = 0;
LABEL_12:
    first_of = llvm::StringRef::find_first_of(&v35, "/", 1, v10);
    v12 = v36;
    if (v36 >= first_of)
    {
      v12 = first_of;
    }

    if (v12 >= 3 && *v35 == 47)
    {
      v13 = *(v35 + 1);
      if (v13 != 47)
      {
        v12 = 0;
      }

      v26 = v12;
      if (v13 == 47)
      {
        v14 = v35;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

LABEL_21:
    v26 = 0;
    v14 = 0;
LABEL_22:
    v15 = llvm::sys::path::root_directory(v38, v39, 0);
    v17 = v16;
    v18 = v38;
    v19 = v39;
    llvm::sys::path::root_path(v38, v39, 0);
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = (v19 - v21);
    v23 = (v18 + v21);
    llvm::sys::path::root_path(v4, v5, 0);
    v36 = xmmword_1A75DA7F0;
    v35 = v37;
    if (v5 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v5;
    }

    v34 = 261;
    v33[0] = v14;
    v33[1] = v26;
    v32 = 261;
    v31[0] = v15;
    v31[1] = v17;
    v30 = 261;
    v29[0] = v23;
    v29[1] = v22;
    v28 = 261;
    v27[0] = (v4 + v25);
    v27[1] = (v5 - v25);
    llvm::sys::path::append(&v35, 0, v33, v31, v29, v27);
    llvm::SmallVectorImpl<char>::swap(a2, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    goto LABEL_30;
  }
}

uint64_t llvm::sys::fs::make_absolute(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10[4] = 261;
  v2 = *(a1 + 8);
  v8 = *a1;
  *&v9 = v2;
  if (llvm::sys::path::is_absolute(&v8, 0))
  {
    std::system_category();
    return 0;
  }

  else
  {
    v8 = v10;
    v9 = xmmword_1A75DA7F0;
    result = llvm::sys::fs::current_path(&v8);
    if (!result)
    {
      v7 = 261;
      v6[0] = v8;
      v6[1] = v9;
      v4 = result;
      llvm::sys::fs::make_absolute(v6, a1);
      std::system_category();
      result = v4;
    }

    if (v8 != v10)
    {
      v5 = result;
      free(v8);
      return v5;
    }
  }

  return result;
}

uint64_t llvm::sys::fs::current_path(uint64_t a1)
{
  v38[16] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  v2 = getenv("PWD");
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v4 = 1;
  v34 = 1;
  if (*v2)
  {
    v32 = v2;
    v4 = 3;
  }

  v33 = v4;
  if (!llvm::sys::path::is_absolute(&v32, 0))
  {
    goto LABEL_22;
  }

  v5 = 1;
  v31 = 1;
  if (*v3)
  {
    v29 = v3;
    v5 = 3;
  }

  v30 = v5;
  v36 = v38;
  v37 = xmmword_1A75DA7F0;
  v6 = llvm::Twine::toNullTerminatedStringRef(&v29, &v36);
  if (stat(v6, &v35))
  {
    st_ino = 0;
    st_dev = 0;
    v9 = *__error() == 0;
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  st_dev = v35.st_dev;
  st_ino = v35.st_ino;
  v9 = 1;
  v10 = v36;
  if (v36 != v38)
  {
LABEL_9:
    free(v10);
  }

LABEL_10:
  if (!v9)
  {
    goto LABEL_22;
  }

  v27 = ".";
  v28 = 259;
  v36 = v38;
  v37 = xmmword_1A75DA7F0;
  v11 = llvm::Twine::toNullTerminatedStringRef(&v27, &v36);
  if (!stat(v11, &v35))
  {
    v13 = v35.st_dev;
    v12 = v35.st_ino;
    v14 = 1;
    v15 = v36;
    if (v36 == v38)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v14 = *__error() == 0;
  v15 = v36;
  if (v36 != v38)
  {
LABEL_13:
    free(v15);
  }

LABEL_14:
  if (v14 && st_dev == v13 && st_ino == v12)
  {
    v16 = strlen(v3);
    v17 = *(a1 + 8);
    if (*(a1 + 16) < v17 + v16)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v17 + v16, 1);
      v17 = *(a1 + 8);
    }

    if (v16)
    {
      memcpy((*a1 + v17), v3, v16);
      v17 = *(a1 + 8);
    }

    *(a1 + 8) = v17 + v16;
LABEL_39:
    std::system_category();
    return 0;
  }

LABEL_22:
  v18 = *(a1 + 8);
  if (v18 != 1024)
  {
    if (v18 <= 0x400 && *(a1 + 16) <= 0x3FFuLL)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), 0x400uLL, 1);
    }

    *(a1 + 8) = 1024;
  }

  v19 = *a1;
  for (i = 1024; ; i = v23)
  {
    if (getcwd(v19, i))
    {
      *(a1 + 8) = strlen(*a1);
      goto LABEL_39;
    }

    if (*__error() != 12)
    {
      break;
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = 2 * v21;
    if (v22 != 2 * v21)
    {
      if (v21 >= 1 && v22 <= v23)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), 2 * v21, 1);
      }

      *(a1 + 8) = v23;
    }

    v19 = *a1;
  }

  *(a1 + 8) = 0;
  v26 = *__error();
  std::generic_category();
  return v26;
}

uint64_t llvm::sys::fs::create_directory(const char **a1, char a2, mode_t a3)
{
  v11[16] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = xmmword_1A75DA7F0;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v6 = *__error();
    std::generic_category();
    v7 = v9;
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_5;
  }

  std::system_category();
  v6 = 0;
  v7 = v9;
  if (v9 != v11)
  {
LABEL_5:
    free(v7);
  }

  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(const char **a1, int *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v10 = strlen(__s);
        v11 = a4[1];
        if (a4[2] < v11 + v10)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v11 + v10, 1);
          v11 = a4[1];
        }

        if (v10)
        {
          memcpy((*a4 + v11), __s, v10);
          v11 = a4[1];
        }

        a4[1] = v11 + v10;
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, uint64_t *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        *&v19.__val_ = std::generic_category();
        result = llvm::errorCodeToError(v16, v19, &v18);
        v17 = v18;
        goto LABEL_17;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_17:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

unint64_t llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  bufsize = 1024;
  result = _NSGetExecutablePath(buf, &bufsize);
  if (result || (result = realpath_DARWIN_EXTSN(buf, __s)) == 0)
  {
    a1[23] = 0;
    *a1 = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v3 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a1[23] = result;
    if (result)
    {
      result = memcpy(a1, __s, result);
    }

    a1[v3] = 0;
  }

  return result;
}

uint64_t llvm::sys::fs::remove(const char **this, const llvm::Twine *a2)
{
  v2 = a2;
  v12[16] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = xmmword_1A75DA7F0;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v9.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v5 = 1;
LABEL_15:
      std::generic_category();
      v7 = v10;
      if (v10 == v12)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (remove(v3, v4) == -1 && (*__error() != 2 || (v2 & 1) == 0))
    {
LABEL_4:
      v5 = *__error();
      goto LABEL_15;
    }
  }

  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_12:
    free(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::access(const char **a1, int a2)
{
  v11[16] = *MEMORY[0x1E69E9840];
  v9 = v11;
  v10 = xmmword_1A75DA7F0;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (!a2)
  {
LABEL_9:
    if (access(v3, a2) != -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = *__error();
    std::generic_category();
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    a2 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (access(v3, 5) == -1)
  {
    goto LABEL_13;
  }

  if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v5 = 13;
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::system_category();
  v5 = 0;
  v6 = v9;
  if (v9 != v11)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

uint64_t llvm::sys::fs::fillStatus(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    result = v4;
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = a2[10];
    v7 = a2[14];
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = v8 >> 12;
    if (v10 == 7)
    {
      v11 = 9;
    }

    else
    {
      v11 = dword_1A7601E48[v10 ^ 8];
    }

    v12 = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 1);
    v15 = *(a2 + 6);
    v16 = *(a2 + 12);
    v17 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v15;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v17;
    *(a3 + 32) = v16;
    *(a3 + 40) = v11;
    *(a3 + 44) = v9;
    *(a3 + 48) = v12;
    *(a3 + 52) = v13;
    *(a3 + 56) = v14;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::mapped_file_region(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *llvm::sys::fs::mapped_file_region::unmapImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return munmap(result, *this);
  }

  return result;
}

void *llvm::sys::fs::mapped_file_region::dontNeedImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return posix_madvise(result, *this, 4);
  }

  return result;
}

uint64_t llvm::sys::fs::openFile(const char **a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v21[16] = *MEMORY[0x1E69E9840];
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_1A75DA7F0;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    v17 = v19;
    if (v19 == v21)
    {
      return v16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *__error();
  std::generic_category();
  v17 = v19;
  if (v19 == v21)
  {
    return v16;
  }

LABEL_23:
  free(v17);
  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(const char **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v8, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v7);
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v8;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, size_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v13.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      *a5 = v12;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::closeFile(llvm::sys::fs *this, int *a2)
{
  v2 = *this;
  *this = -1;
  return llvm::sys::Process::SafelyCloseFileDescriptor(v2);
}

void llvm::sys::Process::getPageSize(uint64_t *__return_ptr a1@<X8>)
{
  if (atomic_load_explicit(byte_1ED440A70, memory_order_acquire))
  {
    v3 = _MergedGlobals_12;
    if (_MergedGlobals_12 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v3;
      return;
    }
  }

  else
  {
    llvm::sys::Process::getPageSize();
    v3 = _MergedGlobals_12;
    if (_MergedGlobals_12 != -1)
    {
      goto LABEL_3;
    }
  }

  v4 = *__error();
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(v4, v6, &v5);
  *(a1 + 8) |= 1u;
  *a1 = v5;
}

uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_41;
        }

        break;
      case 5uLL:
        if (*v4 == 1970170220 && v4[4] == 120)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_41:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_40:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_40;
        }

        break;
    }

    if (*v4 == 1701995379 && *(v4 + 2) == 28261)
    {
      goto LABEL_41;
    }

LABEL_27:
    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_41;
    }

    v10 = *v4 == 808547446 && v4[4] == 48;
    if (v10 || *v4 == 1953921138)
    {
      goto LABEL_41;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t llvm::sys::ExecuteAndWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, std::string *a6, uint64_t a7, unsigned int a8, unsigned int a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v17[0] = 0;
  v17[2] = 0;
  v15 = *a5;
  v16 = *(a5 + 2);
  if (Execute(v17, a1, a2, a3, a4, &v15, a6, a7, a9, a10, 0))
  {
    if (a11)
    {
      *a11 = 0;
    }

    llvm::sys::Wait(v17, a8 | ((a8 != 0) << 32), a10, a12, 0);
    return v13;
  }

  else
  {
    if (a11)
    {
      *a11 = 1;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t Execute(pid_t *a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, std::string *a7, uint64_t a8, unsigned int a9, uint64_t a10, unsigned __int8 a11)
{
  v40[2] = *MEMORY[0x1E69E9840];
  __src = a2;
  __len = a3;
  v36 = 261;
  v34.__r_.__value_.__r.__words[0] = a2;
  v34.__r_.__value_.__l.__size_ = a3;
  if (!llvm::sys::fs::access(&v34.__r_.__value_.__l.__data_, 0))
  {
    *&v34.__r_.__value_.__l.__data_ = 0uLL;
    v34.__r_.__value_.__r.__words[2] = &v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0;
    v39[0] = 0;
    v39[1] = 1;
    *__s = &v34;
    if (a5)
    {
      llvm::StringSaver::save(__s, *a4, *(a4 + 8));
      operator new();
    }

    operator new();
  }

  if (a10)
  {
    *(&v33.__r_.__value_.__s + 23) = 12;
    strcpy(&v33, "Executable ");
    if (a2)
    {
      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v32) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      v16 = HIBYTE(v32);
      v14 = *(&__dst + 1);
      v15 = __dst;
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      __dst = 0uLL;
      v32 = 0;
    }

    if ((v16 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = v15;
    }

    if ((v16 & 0x80u) == 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = v14;
    }

    v19 = std::string::append(&v33, p_dst, v18);
    v20 = v19->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v28 = 16;
    strcpy(__s, " doesn't exist!");
    v21 = std::string::append(&v34, __s, 0x10uLL);
    v22 = v21->__r_.__value_.__r.__words[0];
    v40[0] = v21->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    v24 = v40[0];
    *a10 = v22;
    *(a10 + 8) = v24;
    *(a10 + 15) = *(v40 + 7);
    *(a10 + 23) = v23;
    if (v28 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v34.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_31:
      operator delete(v33.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_30:
    operator delete(__dst);
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t llvm::sys::Wait(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v26.__sigaction_u.__sa_handler = TimeOutHandler;
    *&v26.sa_mask = 0;
    sigaction(14, &v26, &v25);
    alarm(a2);
    v24 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v24 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v24, v11, &v23);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v24, v11, &v23);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    if ((a2 & 0x100000000) != 0 && *__error() == 4 && (a5 & 1) == 0)
    {
      kill(*a1, 9);
      alarm(0);
      sigaction(14, &v25, 0);
      if (wait(&v24) != v10)
      {
        operator new();
      }

      HIBYTE(v22) = 15;
      strcpy(&v21, "Child timed out");
      MakeErrMsg(a3, &v21, 0);
      LODWORD(result) = v13;
      return result;
    }

    if (*__error() != 4)
    {
      operator new();
    }

    LODWORD(result) = v13;
  }

LABEL_18:
  if ((a2 & 0x100000000) != 0)
  {
    v14 = result;
    alarm(0);
    sigaction(14, &v25, 0);
    LODWORD(result) = v14;
  }

  if (a4)
  {
    v15 = v23.ru_utime.tv_usec + 1000000 * v23.ru_utime.tv_sec;
    ru_maxrss = v23.ru_maxrss;
    v17 = *(a4 + 24);
    *a4 = v15 + 1000000 * v23.ru_stime.tv_sec + v23.ru_stime.tv_usec;
    *(a4 + 8) = v15;
    *(a4 + 16) = ru_maxrss;
    if ((v17 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v24 & 0x7F) != 0x7F)
  {
    if ((v24 & 0x7F) != 0)
    {
      if (!a3)
      {
        return result;
      }

      v18 = result;
      v19 = strsignal(v24 & 0x7F);
      MEMORY[0x1AC559980](a3, v19);
      if ((v24 & 0x80) != 0)
      {
        std::string::append(a3, " (core dumped)");
      }
    }

    else
    {
      if (BYTE1(v24) == 126)
      {
        if (a3)
        {
          v20 = result;
          MEMORY[0x1AC559980](a3, "Program could not be executed");
          LODWORD(result) = v20;
        }

        return result;
      }

      if (BYTE1(v24) != 127 || !a3)
      {
        return result;
      }

      v18 = result;
      llvm::sys::StrError(2, &v21);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v21;
      *(a3 + 16) = v22;
    }

    LODWORD(result) = v18;
  }

  return result;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41[32] = *MEMORY[0x1E69E9840];
  if (__n)
  {
    v9 = memchr(__s, 47, __n);
    if (v9)
    {
      if (v9 - __s != -1)
      {
        if (__n > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_38:
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        if (__n >= 0x17)
        {
          operator new();
        }

        HIBYTE(v41[0]) = __n;
        memmove(v40, __s, __n);
        *(v40 + __n) = 0;
        *(a5 + 24) &= ~1u;
        result = *v40;
        *a5 = *v40;
        *(a5 + 16) = v41[0];
        return result;
      }
    }
  }

  v40[0] = v41;
  v40[1] = 0x1000000000;
  if (a4)
  {
    v10 = &a3[2 * a4];
    goto LABEL_11;
  }

  v22 = getenv("PATH");
  if (v22)
  {
    v23 = v22;
    v24 = strlen(v22);
    llvm::SplitString(v23, v24, v40, ":", 1);
    if (LODWORD(v40[1]))
    {
      a3 = v40[0];
      v10 = (v40[0] + 16 * LODWORD(v40[1]));
      do
      {
LABEL_11:
        v11 = a3[1];
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = *a3;
        __src = v39;
        __len = xmmword_1A75DA7F0;
        if (v11 < 0x81)
        {
          v13 = 0;
          v14 = v39;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, v11, 1);
          v14 = __src;
          v13 = __len;
        }

        memcpy(&v14[v13], v12, v11);
        *&__len = __len + v11;
        v36 = 261;
        *&__dst = __s;
        *(&__dst + 1) = __n;
        v33 = 257;
        v31 = 257;
        v29 = 257;
        llvm::sys::path::append(&__src, &__dst, &v32, &v30, &v28);
        if ((__len + 1) > *(&__len + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, __len + 1, 1);
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
LABEL_17:
            *&__dst = v16;
            LOBYTE(v36) = 3;
            can_execute = llvm::sys::fs::can_execute(&__dst, v15);
            v18 = can_execute;
            v19 = __src;
            if (!can_execute)
            {
              goto LABEL_28;
            }

            goto LABEL_21;
          }
        }

        else
        {
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
            goto LABEL_17;
          }
        }

        LOBYTE(v36) = 1;
        v20 = llvm::sys::fs::can_execute(&__dst, v15);
        v18 = v20;
        v19 = __src;
        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_21:
        v21 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_38;
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v35) = __len;
        if (__len)
        {
          memmove(&__dst, v19, __len);
        }

        *(&__dst + v21) = 0;
        *(a5 + 24) &= ~1u;
        result = *&__dst;
        *a5 = __dst;
        *(a5 + 16) = v35;
        v19 = __src;
LABEL_28:
        if (v19 != v39)
        {
          free(v19);
        }

        if (v18)
        {
          goto LABEL_34;
        }

LABEL_10:
        a3 += 2;
      }

      while (a3 != v10);
    }
  }

  *(a5 + 24) |= 1u;
  v25 = std::generic_category();
  *a5 = 2;
  *(a5 + 8) = v25;
LABEL_34:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return result;
}

void *std::string::basic_string<llvm::StringRef,0>(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  *(__dst + v2) = 0;
  return __dst;
}

void MakeErrMsg(uint64_t a1, const void **a2, llvm::sys *this)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = this;
    if (this == -1)
    {
      v3 = *__error();
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + 2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (v6 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v16, 0, sizeof(v16));
    *(&v16.__r_.__value_.__s + 23) = v6 + 2;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(&v16, v7, v6);
    }

    strcpy(&v16 + v6, ": ");
    llvm::sys::StrError(v3, __p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = std::string::append(&v16, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[0];
    v17[0] = v10->__r_.__value_.__l.__size_;
    *(v17 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = v17[0];
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 15) = *(v17 + 7);
    *(a1 + 23) = v12;
    if ((v15 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v16.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }
}

uint64_t RedirectIO(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    memmove(&__dst, v6, v5);
    __dst.__r_.__value_.__s.__data_[v5] = 0;
    v19 = __dst;
  }

  else
  {
    MEMORY[0x1AC559980](&v19, "/dev/null");
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v9 = open(v8, 513, 438);
  }

  else
  {
    v9 = open(v8, 0, 438);
  }

  if (v9 != -1)
  {
    v10 = v9;
    if (dup2(v9, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      MakeErrMsg(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
      close(v10);
      result = 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      close(v10);
      result = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    return result;
  }

  std::operator+<char>();
  v11 = std::string::append(&v16, "' for ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v13 = "output";
  }

  else
  {
    v13 = "input";
  }

  v14 = std::string::append(&v17, v13);
  __dst = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  MakeErrMsg(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    result = 1;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  operator delete(v16.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_33:
    v15 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v15;
  }

  return result;
}

uint64_t SetMemoryLimits(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

llvm::sys::RWMutexImpl *llvm::sys::RWMutexImpl::RWMutexImpl(llvm::sys::RWMutexImpl *this)
{
  *this = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

void llvm::sys::RWMutexImpl::~RWMutexImpl(pthread_rwlock_t **this)
{
  v1 = *this;
  pthread_rwlock_destroy(*this);
  free(v1);
}

uint64_t llvm::sys::RunSignalHandlers(llvm::sys *this)
{
  v1 = 2;
  v2 = 2;
  atomic_compare_exchange_strong(dword_1ED440B38, &v2, 3u);
  if (v2 == 2)
  {
    result = qword_1ED440B28(unk_1ED440B30);
    qword_1ED440B28 = 0;
    unk_1ED440B30 = 0;
    atomic_store(0, dword_1ED440B38);
  }

  atomic_compare_exchange_strong(dword_1ED440B50, &v1, 3u);
  if (v1 == 2)
  {
    result = qword_1ED440B40(*algn_1ED440B48);
    qword_1ED440B40 = 0;
    *algn_1ED440B48 = 0;
    atomic_store(0, dword_1ED440B50);
  }

  v4 = 2;
  v5 = 2;
  atomic_compare_exchange_strong(dword_1ED440B68, &v5, 3u);
  if (v5 == 2)
  {
    result = qword_1ED440B58(unk_1ED440B60);
    qword_1ED440B58 = 0;
    unk_1ED440B60 = 0;
    atomic_store(0, dword_1ED440B68);
  }

  atomic_compare_exchange_strong(dword_1ED440B80, &v4, 3u);
  if (v4 == 2)
  {
    result = qword_1ED440B70(*algn_1ED440B78);
    qword_1ED440B70 = 0;
    *algn_1ED440B78 = 0;
    atomic_store(0, dword_1ED440B80);
  }

  v6 = 2;
  v7 = 2;
  atomic_compare_exchange_strong(dword_1ED440B98, &v7, 3u);
  if (v7 == 2)
  {
    result = qword_1ED440B88(unk_1ED440B90);
    qword_1ED440B88 = 0;
    unk_1ED440B90 = 0;
    atomic_store(0, dword_1ED440B98);
  }

  atomic_compare_exchange_strong(dword_1ED440BB0, &v6, 3u);
  if (v6 == 2)
  {
    result = qword_1ED440BA0(*algn_1ED440BA8);
    qword_1ED440BA0 = 0;
    *algn_1ED440BA8 = 0;
    atomic_store(0, dword_1ED440BB0);
  }

  v8 = 2;
  v9 = 2;
  atomic_compare_exchange_strong(dword_1ED440BC8, &v9, 3u);
  if (v9 != 2)
  {
    atomic_compare_exchange_strong(dword_1ED440BE0, &v8, 3u);
    if (v8 != 2)
    {
      return result;
    }

LABEL_17:
    result = qword_1ED440BD0(*algn_1ED440BD8);
    qword_1ED440BD0 = 0;
    *algn_1ED440BD8 = 0;
    atomic_store(0, dword_1ED440BE0);
    return result;
  }

  result = qword_1ED440BB8(unk_1ED440BC0);
  qword_1ED440BB8 = 0;
  unk_1ED440BC0 = 0;
  atomic_store(0, dword_1ED440BC8);
  atomic_compare_exchange_strong(dword_1ED440BE0, &v8, 3u);
  if (v8 == 2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t printSymbolizedStackTrace(unint64_t a1, unint64_t a2, intptr_t *a3, int a4, llvm::raw_ostream *a5)
{
  v111 = *MEMORY[0x1E69E9840];
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v75 = a3;
  v74 = a4;
  if ((DisableSymbolicationFlag & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v110 |= 1u;
  v108.n128_u64[0] = 0;
  v108.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (!v8)
  {
    if (__src.n128_u64[1])
    {
      *v94 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
      *&v94[8] = v12;
      if (v12)
      {
        llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v94, 1, &__p);
        llvm::ErrorOr<std::string>::operator=(&v108, &__p);
        if ((v79 & 1) == 0 && SHIBYTE(v78) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if ((v110 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = strlen(v8);
  llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
  v11 = v110;
  if ((v110 & 1) == 0 && SHIBYTE(v109) < 0)
  {
    operator delete(v108.n128_u64[0]);
    v11 = v110;
  }

  if (v79)
  {
    v110 = v11 | 1;
    v108 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v110;
    if ((v110 & 1) == 0 && SHIBYTE(v109) < 0)
    {
      operator delete(v108.n128_u64[0]);
      v11 = v110;
    }

    if (v79)
    {
      return 0;
    }
  }

  v110 = v11 & 0xFE;
  v108 = __p;
  v109 = v78;
LABEL_22:
  LOWORD(v80) = 261;
  __p = __src;
  if (llvm::sys::fs::access(&__p, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
  }

  else
  {
    v13 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (__src.n128_u64[1] >= 0x17)
    {
      operator new();
    }

    v73 = __src.n128_i8[8];
    if (__src.n128_u64[1])
    {
      memmove(&__dst, __src.n128_u64[0], __src.n128_u64[1]);
    }

    *(&__dst + v13) = 0;
  }

  v101[4] = 0;
  v101[5] = 0;
  v102 = v104;
  v103 = 0x400000000;
  v105 = v107;
  v106 = 0;
  v107[0] = 0;
  v107[1] = 1;
  if (v74)
  {
    if ((v74 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  v14 = _dyld_image_count();
  if (v14)
  {
    v15 = v14;
    for (i = 0; i != v15; ++i)
    {
      _dyld_get_image_name(i);
      _dyld_get_image_vmaddr_slide(i);
      _dyld_get_image_header(i);
    }
  }

  v71 = 0;
  *v100 = v101;
  *&v100[8] = xmmword_1A75A2980;
  v97 = v99;
  v98 = xmmword_1A75A2980;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v80) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v71, v100, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v80) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v97, 0);
  v17 = *&v100[8];
  if ((*&v100[8] + 1) > *&v100[16])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(v100, v101, *&v100[8] + 1, 1);
    v17 = *&v100[8];
  }

  *(*v100 + v17) = 0;
  LOWORD(v80) = 257;
  if (**v100)
  {
    __p.n128_u64[0] = *v100;
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v80) = v18;
  *v94 = v95;
  *&v94[8] = xmmword_1A75DA7F0;
  v96 = 1;
  llvm::Twine::toVector(&__p, v94);
  v19 = v98;
  if ((v98 + 1) > *(&v98 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v97, v99, v98 + 1, 1);
    v19 = v98;
  }

  *(v97 + v19) = 0;
  LOWORD(v80) = 257;
  if (*v97)
  {
    __p.n128_u64[0] = v97;
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  LOBYTE(v80) = v20;
  *v91 = v92;
  *&v91[8] = xmmword_1A75DA7F0;
  v93 = 1;
  llvm::Twine::toVector(&__p, v91);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v71, 1, 0, 0);
  if (v74 >= 1)
  {
    for (j = 0; j < v74; ++j)
    {
      v25 = *(8 * j);
      if (!v25)
      {
        continue;
      }

      v26 = strlen(*(8 * j));
      v27 = v26;
      v28 = v80;
      if (v26 <= v79 - v80)
      {
        if (v26)
        {
          memcpy(v80, v25, v26);
          v28 = &v80[v27];
          v80 += v27;
        }

        p_p = &__p;
        if (v79 != v28)
        {
LABEL_59:
          *v28 = 32;
          ++p_p[2].n128_u64[0];
          v23 = llvm::raw_ostream::operator<<(p_p, *(8 * j));
          v24 = *(v23 + 4);
          if (*(v23 + 3) == v24)
          {
LABEL_60:
            llvm::raw_ostream::write(v23, "\n", 1uLL);
            continue;
          }

          goto LABEL_50;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v25, v26);
        v28 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v28)
        {
          goto LABEL_59;
        }
      }

      v22 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v23 = llvm::raw_ostream::operator<<(v22, *(8 * j));
      v24 = *(v23 + 4);
      if (*(v23 + 3) == v24)
      {
        goto LABEL_60;
      }

LABEL_50:
      *v24 = 10;
      ++*(v23 + 4);
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  *&v84.__r_.__value_.__l.__data_ = *v100;
  v84.__r_.__value_.__s.__data_[16] = 1;
  v85 = v97;
  v86 = v98;
  v87 = 1;
  v88 = "";
  v89 = 0;
  v90 = 1;
  v83[0] = xmmword_1E77C5A08;
  v83[1] = *&off_1E77C5A18;
  v83[2] = xmmword_1E77C5A28;
  v83[3] = *&off_1E77C5A38;
  if (v109 >= 0)
  {
    v30 = &v108;
  }

  else
  {
    v30 = v108.n128_u64[0];
  }

  if (v109 >= 0)
  {
    v31 = SHIBYTE(v109);
  }

  else
  {
    v31 = v108.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v78) = 0;
  v32 = llvm::sys::ExecuteAndWait(v30, v31, v83, 4, &__p, &v84, 3, 0, 0, 0, 0, 0);
  v33 = 0;
  if (v32)
  {
    goto LABEL_123;
  }

  v34 = llvm::SmallString<32u>::c_str(&v97);
  LOWORD(v80) = 257;
  if (*v34)
  {
    __p.n128_u64[0] = v34;
    v35 = 3;
  }

  else
  {
    v35 = 1;
  }

  LOBYTE(v80) = v35;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v81);
  v33 = 0;
  if (v82)
  {
    goto LABEL_123;
  }

  v36 = *(v81 + 16) - *(v81 + 8);
  *&v70 = *(v81 + 8);
  *(&v70 + 1) = v36;
  __p.n128_u64[0] = &v78;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v70, &__p, "\n", 1uLL, -1, 1);
  v37 = __p.n128_u64[0];
  v69 = 0;
  if (v74 < 1)
  {
    goto LABEL_116;
  }

  for (k = 0; k < v74; LODWORD(v69) = k)
  {
    v68[0] = a5;
    v68[1] = &v69 + 4;
    v68[2] = &v74;
    v68[3] = &v75;
    v68[4] = &v69;
    if (*(8 * k))
    {
      v39 = __p.n128_u64[0];
      if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_117:
        v37 = v39;
        v33 = 0;
        goto LABEL_118;
      }

      v37 += 2;
      while (1)
      {
        v41 = *(v37 - 1);
        if (!v41)
        {
          goto LABEL_114;
        }

        v42 = *(v37 - 2);
        printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(v68);
        if (v41 == 1 || *v42 != 16191)
        {
          v43 = *(a5 + 4);
          if (v41 <= *(a5 + 3) - v43)
          {
            memcpy(v43, v42, v41);
            v45 = (*(a5 + 4) + v41);
            *(a5 + 4) = v45;
            v44 = a5;
            if (v45 >= *(a5 + 3))
            {
LABEL_84:
              llvm::raw_ostream::write(v44, 32);
              goto LABEL_87;
            }
          }

          else
          {
            v44 = llvm::raw_ostream::write(a5, v42, v41);
            v45 = *(v44 + 4);
            if (v45 >= *(v44 + 3))
            {
              goto LABEL_84;
            }
          }

          *(v44 + 4) = v45 + 1;
          *v45 = 32;
        }

LABEL_87:
        v39 = __p.n128_u64[0];
        if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }

        v46 = *v37;
        v47 = v37[1];
        if (v47 >= 2 && *v46 == 16191)
        {
          v51 = *(a5 + 4);
          if (*(a5 + 3) == v51)
          {
            v52 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v51 = 40;
            ++*(a5 + 4);
            v52 = a5;
          }

          v53 = *(8 * v69);
          if (v53)
          {
            v54 = v52;
            v55 = strlen(*(8 * v69));
            v52 = v54;
            if (v55 <= *(v54 + 3) - *(v54 + 4))
            {
              if (v55)
              {
                memcpy(*(v54 + 4), v53, v55);
                v52 = v54;
                *(v54 + 4) += v55;
              }
            }

            else
            {
              v52 = llvm::raw_ostream::write(v54, v53, v55);
            }
          }

          v56 = *(v52 + 4);
          if (v56 >= *(v52 + 3))
          {
            v52 = llvm::raw_ostream::write(v52, 43);
          }

          else
          {
            *(v52 + 4) = v56 + 1;
            *v56 = 43;
          }

          v64[0] = *(8 * v69);
          v64[1] = 0;
          v65 = 0;
          v66 = 1;
          v67 = 1;
          v49 = llvm::raw_ostream::operator<<(v52, v64);
          v57 = *(v49 + 4);
          if (*(v49 + 3) != v57)
          {
            *v57 = 41;
            ++*(v49 + 4);
            goto LABEL_108;
          }

          v46 = ")";
          v47 = 1;
        }

        else
        {
          v48 = *(a5 + 4);
          if (v47 <= *(a5 + 3) - v48)
          {
            if (v47)
            {
              v50 = v37[1];
              memcpy(v48, v46, v47);
              *(a5 + 4) += v50;
            }

            goto LABEL_108;
          }

          v49 = a5;
        }

        llvm::raw_ostream::write(v49, v46, v47);
LABEL_108:
        v58 = *(a5 + 4);
        if (*(a5 + 3) == v58)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v58 = 10;
          ++*(a5 + 4);
        }

        v39 = __p.n128_u64[0];
        v40 = v37 + 2;
        v37 += 4;
        if (v40 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }
      }
    }

    printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(v68);
    v59 = *(a5 + 4);
    if (v59 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v59 + 1;
      *v59 = 10;
    }

LABEL_114:
    k = v69 + 1;
  }

  v37 = __p.n128_u64[0];
LABEL_116:
  v33 = 1;
LABEL_118:
  if (v37 != &v78)
  {
    v60 = v33;
    free(v37);
    v33 = v60;
  }

  if ((v82 & 1) == 0)
  {
    v61 = v81;
    v81 = 0;
    if (v61)
    {
      v62 = v33;
      (*(*v61 + 8))(v61);
      v33 = v62;
    }
  }

LABEL_123:
  v63 = v33;
  if (v93 == 1)
  {
    LOWORD(v80) = 261;
    __p = *v91;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v91 != v92)
  {
    free(*v91);
  }

  if (v96 == 1)
  {
    LOWORD(v80) = 261;
    __p = *v94;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v94 != v95)
  {
    free(*v94);
  }

  if (v97 != v99)
  {
    free(v97);
  }

  if (*v100 != v101)
  {
    free(*v100);
  }

  if (v103)
  {
    llvm::deallocate_buffer(*v102, 0x1000);
  }

  if (v106)
  {
    llvm::deallocate_buffer(*v105, v105[1]);
  }

  if (v105 != v107)
  {
    free(v105);
  }

  if (v102 != v104)
  {
    free(v102);
  }

  if (v73 < 0)
  {
    operator delete(__dst);
  }

  if ((v110 & 1) == 0 && SHIBYTE(v109) < 0)
  {
    operator delete(v108.n128_u64[0]);
  }

  return v63;
}

__n128 llvm::ErrorOr<std::string>::operator=(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v2 = a1[1].n128_u8[8];
  if ((v2 & 1) == 0 && a1[1].n128_i8[7] < 0)
  {
    v7 = a1;
    v8 = a2;
    operator delete(a1->n128_u64[0]);
    a2 = v8;
    a1 = v7;
    v2 = v7[1].n128_u8[8];
    if (v8[1].n128_u8[8])
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[1].n128_u8[8] = v2 & 0xFE;
    result = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    return result;
  }

  if ((a2[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  a1[1].n128_u8[8] = v2 | 1;
  if (a2[1].n128_u8[8])
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
  }

  else
  {
    v5 = a1;
    v3 = std::system_category();
    a1 = v5;
    v4 = 0;
  }

  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  return result;
}

uint64_t llvm::SmallString<32u>::c_str(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v1 + 1, 1);
    *(*a1 + a1[1]) = 0;
    return *a1;
  }

  else
  {
    *(*a1 + v1) = 0;
    return *a1;
  }
}

void printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v16[0] = "#{0}";
  v16[1] = 4;
  v16[2] = &v20;
  v16[3] = 1;
  v17 = 1;
  v18 = &unk_1F1A36490;
  v19 = v4;
  v20 = &v18;
  __p = 0;
  v22 = 0;
  v23 = 0;
  LODWORD(v25) = 0;
  v29 = 0;
  v30 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  p_p = &__p;
  v24 = &unk_1F1A362A8;
  v31 = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v24, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v24, v16);
  if (v28 != v26)
  {
    llvm::raw_ostream::flush_nonempty(&v24);
  }

  llvm::raw_ostream::~raw_ostream(&v24);
  if (v23 < 0)
  {
    p_p = __p;
  }

  if (v23 >= 0)
  {
    v6 = SHIBYTE(v23);
  }

  else
  {
    v6 = v22;
  }

  v7 = log10(**(a1 + 16));
  v24 = p_p;
  v25 = v6;
  LODWORD(v26) = (v7 + 2.0);
  HIDWORD(v26) = 2;
  v8 = llvm::raw_ostream::operator<<(v3, &v24);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    v8 = llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v12[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v12[1] = 0;
  v13 = 18;
  v14 = 1;
  v15 = 1;
  v10 = llvm::raw_ostream::operator<<(v8, v12);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    if (SHIBYTE(v23) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    if (SHIBYTE(v23) < 0)
    {
      goto LABEL_16;
    }
  }
}

uint64_t printMarkupStackTrace(const char *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (!v4 || !*v4)
  {
    return 0;
  }

  v7 = 261;
  v6[0] = a1;
  v6[1] = a2;
  if (llvm::sys::fs::access(v6, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    v9 = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
    }

    *(&__dst + a2) = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(__dst);
  return 0;
}

uint64_t llvm::sys::CleanupOnSignal(uint64_t this)
{
  v1 = this;
  if ((this - 29) > 1)
  {
    v5 = atomic_exchange(qword_1ED440AA8, 0);
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = atomic_exchange(v6, 0);
        if (v7)
        {
          this = stat(v7, &v8);
          if (!this && (v8.st_mode & 0xF000) == 0x8000)
          {
            this = unlink(v7);
            atomic_exchange(v6, v7);
          }
        }

        v6 = atomic_load((v6 + 8));
      }

      while (v6);
    }

    atomic_exchange(qword_1ED440AA8, v5);
    if (v1 > 0x1F || ((1 << v1) & 0x8000A006) == 0)
    {
      return llvm::sys::RunSignalHandlers(this);
    }
  }

  else
  {
    this = __error();
    v2 = this;
    v3 = *this;
    v4 = atomic_load(&qword_1ED440A98);
    if (v4)
    {
      this = v4();
    }

    *v2 = v3;
  }

  return this;
}

int *InfoSignalHandler()
{
  result = __error();
  v1 = result;
  v2 = *result;
  v3 = atomic_load(&qword_1ED440A98);
  if (v3)
  {
    result = v3();
  }

  *v1 = v2;
  return result;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(qword_1ED440AA8, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3 && !stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
      {
        unlink(v3);
        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(qword_1ED440AA8, v1);
}

void RegisterHandlers(void)
{
  if (!atomic_load_explicit(qword_1ED440AF8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1ED440AF8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v0 = qword_1ED440AF8[0];
  std::recursive_mutex::lock(qword_1ED440AF8[0]);
  if (!atomic_load(_MergedGlobals_13))
  {
    v2 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v3 = (&unk_1ED440BE8 + 24 * v2);
    sigaction(1, &v39, v3);
    LODWORD(v3[1].__sigaction_u.__sa_handler) = 1;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v4 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v5 = (&unk_1ED440BE8 + 24 * v4);
    sigaction(2, &v39, v5);
    LODWORD(v5[1].__sigaction_u.__sa_handler) = 2;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v6 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v7 = (&unk_1ED440BE8 + 24 * v6);
    sigaction(15, &v39, v7);
    LODWORD(v7[1].__sigaction_u.__sa_handler) = 15;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v8 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v9 = (&unk_1ED440BE8 + 24 * v8);
    sigaction(31, &v39, v9);
    LODWORD(v9[1].__sigaction_u.__sa_handler) = 31;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v10 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v11 = (&unk_1ED440BE8 + 24 * v10);
    sigaction(4, &v39, v11);
    LODWORD(v11[1].__sigaction_u.__sa_handler) = 4;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v12 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v13 = (&unk_1ED440BE8 + 24 * v12);
    sigaction(5, &v39, v13);
    LODWORD(v13[1].__sigaction_u.__sa_handler) = 5;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v14 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v15 = (&unk_1ED440BE8 + 24 * v14);
    sigaction(6, &v39, v15);
    LODWORD(v15[1].__sigaction_u.__sa_handler) = 6;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v16 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v17 = (&unk_1ED440BE8 + 24 * v16);
    sigaction(8, &v39, v17);
    LODWORD(v17[1].__sigaction_u.__sa_handler) = 8;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v18 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v19 = (&unk_1ED440BE8 + 24 * v18);
    sigaction(10, &v39, v19);
    LODWORD(v19[1].__sigaction_u.__sa_handler) = 10;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v20 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v21 = (&unk_1ED440BE8 + 24 * v20);
    sigaction(11, &v39, v21);
    LODWORD(v21[1].__sigaction_u.__sa_handler) = 11;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v22 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v23 = (&unk_1ED440BE8 + 24 * v22);
    sigaction(3, &v39, v23);
    LODWORD(v23[1].__sigaction_u.__sa_handler) = 3;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v24 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v25 = (&unk_1ED440BE8 + 24 * v24);
    sigaction(12, &v39, v25);
    LODWORD(v25[1].__sigaction_u.__sa_handler) = 12;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v26 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v27 = (&unk_1ED440BE8 + 24 * v26);
    sigaction(24, &v39, v27);
    LODWORD(v27[1].__sigaction_u.__sa_handler) = 24;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v28 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v29 = (&unk_1ED440BE8 + 24 * v28);
    sigaction(25, &v39, v29);
    LODWORD(v29[1].__sigaction_u.__sa_handler) = 25;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v30 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v31 = (&unk_1ED440BE8 + 24 * v30);
    sigaction(7, &v39, v31);
    LODWORD(v31[1].__sigaction_u.__sa_handler) = 7;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    if (atomic_load(&qword_1ED440AA0))
    {
      v33 = atomic_load(_MergedGlobals_13);
      v39.__sigaction_u.__sa_handler = SignalHandler;
      *&v39.sa_mask = 0x1500000000;
      v34 = &_MergedGlobals_13[6 * v33];
      sigaction(13, &v39, v34 + 23);
      v34[96] = 13;
      atomic_fetch_add(_MergedGlobals_13, 1u);
    }

    v35 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = InfoSignalHandler;
    *&v39.sa_mask = 0x100000000;
    v36 = (&unk_1ED440BE8 + 24 * v35);
    sigaction(30, &v39, v36);
    LODWORD(v36[1].__sigaction_u.__sa_handler) = 30;
    atomic_fetch_add(_MergedGlobals_13, 1u);
    v37 = atomic_load(_MergedGlobals_13);
    v39.__sigaction_u.__sa_handler = InfoSignalHandler;
    *&v39.sa_mask = 0x100000000;
    v38 = (&unk_1ED440BE8 + 24 * v37);
    sigaction(29, &v39, v38);
    LODWORD(v38[1].__sigaction_u.__sa_handler) = 29;
    atomic_fetch_add(_MergedGlobals_13, 1u);
  }

  std::recursive_mutex::unlock(v0);
}

void llvm::sys::RemoveFileOnSignal(void *__src, size_t __len)
{
  if (atomic_load_explicit(qword_1ED440AE0, memory_order_acquire))
  {
    if (__src)
    {
LABEL_3:
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v5) = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + __len) = 0;
LABEL_12:
      operator new();
    }
  }

  else
  {
    if (__src)
    {
      goto LABEL_3;
    }
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = 0;
  goto LABEL_12;
}

void llvm::sys::DontRemoveFileOnSignal(const void *a1, size_t a2)
{
  if (!a1)
  {
    __dst = 0;
    v10 = 0;
    v11 = 0;
    if (atomic_load_explicit(qword_1ED440B10, memory_order_acquire))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v11) = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  *(&__dst + a2) = 0;
  if (!atomic_load_explicit(qword_1ED440B10, memory_order_acquire))
  {
LABEL_11:
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1ED440B10, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

LABEL_12:
  v3 = qword_1ED440B10[0];
  std::recursive_mutex::lock(qword_1ED440B10[0]);
  for (i = atomic_load(qword_1ED440AA8); i; i = atomic_load(i + 1))
  {
    v5 = atomic_load(i);
    if (v5)
    {
      v6 = strlen(v5);
      if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
      {
        if (v6 != v10)
        {
          continue;
        }

        if (v6 == -1)
        {
          std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
        }

        if (memcmp(__dst, v5, v6))
        {
          continue;
        }

LABEL_24:
        v7 = atomic_exchange(i, 0);
        if (v7)
        {
          free(v7);
        }

        continue;
      }

      if (v6 == SHIBYTE(v11) && !memcmp(&__dst, v5, v6))
      {
        goto LABEL_24;
      }
    }
  }

  std::recursive_mutex::unlock(v3);
  if (SHIBYTE(v11) < 0)
  {
    v8 = __dst;

    operator delete(v8);
  }
}

void llvm::sys::AddSignalHandler(llvm::sys *this, void (*a2)(void *), _BOOL8 a3)
{
  v4 = 0;
  v5 = &qword_1ED440B28;
  v6 = dword_1ED440B38;
  atomic_compare_exchange_strong(dword_1ED440B38, &v4, 1u);
  if (v4)
  {
    v7 = 0;
    v5 = &qword_1ED440B40;
    v6 = dword_1ED440B50;
    atomic_compare_exchange_strong(dword_1ED440B50, &v7, 1u);
    if (v7)
    {
      v8 = 0;
      v5 = &qword_1ED440B58;
      v6 = dword_1ED440B68;
      atomic_compare_exchange_strong(dword_1ED440B68, &v8, 1u);
      if (v8)
      {
        v9 = 0;
        v5 = &qword_1ED440B70;
        v6 = dword_1ED440B80;
        atomic_compare_exchange_strong(dword_1ED440B80, &v9, 1u);
        if (v9)
        {
          v10 = 0;
          v5 = &qword_1ED440B88;
          v6 = dword_1ED440B98;
          atomic_compare_exchange_strong(dword_1ED440B98, &v10, 1u);
          if (v10)
          {
            v11 = 0;
            v5 = &qword_1ED440BA0;
            v6 = dword_1ED440BB0;
            atomic_compare_exchange_strong(dword_1ED440BB0, &v11, 1u);
            if (v11)
            {
              v12 = 0;
              v5 = &qword_1ED440BB8;
              v6 = dword_1ED440BC8;
              atomic_compare_exchange_strong(dword_1ED440BC8, &v12, 1u);
              if (v12)
              {
                v13 = 0;
                v5 = &qword_1ED440BD0;
                v6 = dword_1ED440BE0;
                atomic_compare_exchange_strong(dword_1ED440BE0, &v13, 1u);
                if (v13)
                {
                  llvm::report_fatal_error("too many signal callbacks already registered", 1, a3);
                }
              }
            }
          }
        }
      }
    }
  }

  *v5 = this;
  v5[1] = a2;
  atomic_store(2u, v6);

  RegisterHandlers();
}

uint64_t llvm::sys::PrintStackTrace(llvm::sys *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  result = backtrace(&qword_1ED440D98, 256);
  if (result)
  {
    v5 = result;
    if (!v2)
    {
      v2 = result;
    }

    printMarkupStackTrace(qword_1ED440A80, *algn_1ED440A88);
    result = printSymbolizedStackTrace(qword_1ED440A80, *algn_1ED440A88, &qword_1ED440D98, v2, this);
    if ((result & 1) == 0)
    {
      v6 = *(this + 4);
      if (*(this + 3) - v6 > 0x90uLL)
      {
        *(this + 4) += 145;
        if (v5 < 1)
        {
          return result;
        }
      }

      else
      {
        if (v5 < 1)
        {
          return result;
        }
      }

      v7 = 0;
      v8 = v5;
      v9 = &qword_1ED440D98;
      v10 = v5;
      do
      {
        while (1)
        {
          dladdr(*v9, &v33);
          dli_fname = v33.dli_fname;
          v13 = strrchr(v33.dli_fname, 47);
          if (v13)
          {
            break;
          }

          v14 = strlen(dli_fname);
          if (v14 > v7)
          {
            v7 = v14;
          }

          ++v9;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        v11 = strlen(v13) - 1;
        if (v11 > v7)
        {
          v7 = v11;
        }

        ++v9;
        --v10;
      }

      while (v10);
      do
      {
        while (1)
        {
LABEL_19:
          v15 = &_MergedGlobals_13[2 * v10];
          dladdr(*(v15 + 100), &v33);
          v29 = &unk_1F1A364D8;
          v30 = "%-2d";
          LODWORD(v31) = v10;
          llvm::raw_ostream::operator<<(this, &v29);
          v16 = v33.dli_fname;
          v17 = strrchr(v33.dli_fname, 47);
          v29 = &unk_1F1A36510;
          v30 = " %-*s";
          LODWORD(v31) = v7;
          if (v17)
          {
            v32 = v17 + 1;
          }

          else
          {
            v32 = v16;
          }

          llvm::raw_ostream::operator<<(this, &v29);
          v18 = *(v15 + 100);
          v29 = &unk_1F1A36548;
          v30 = " %#0*lx";
          LODWORD(v31) = 18;
          v32 = v18;
          result = llvm::raw_ostream::operator<<(this, &v29);
          if (v33.dli_sname)
          {
            v19 = *(this + 4);
            if (v19 >= *(this + 3))
            {
              llvm::raw_ostream::write(this, 32);
            }

            else
            {
              *(this + 4) = v19 + 1;
              *v19 = 32;
            }

            v20 = strlen(v33.dli_sname);
            v21 = llvm::itaniumDemangle(v33.dli_sname, v20, 1);
            if (v21)
            {
              v22 = v21;
              v23 = strlen(v21);
              v24 = *(this + 4);
              if (v23 <= *(this + 3) - v24)
              {
                if (v23)
                {
                  memcpy(v24, v22, v23);
                  *(this + 4) += v23;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v22, v23);
              }

              free(v22);
            }

            else if (v33.dli_sname)
            {
              v25 = strlen(v33.dli_sname);
              v26 = *(this + 4);
              if (v25 <= *(this + 3) - v26)
              {
                if (v25)
                {
                  memcpy(v26, v33.dli_sname, v25);
                  *(this + 4) += v25;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v33.dli_sname, v25);
              }
            }

            v27 = *(v15 + 100) - v33.dli_saddr;
            v29 = &unk_1F1A36580;
            v30 = " + %tu";
            v31 = v27;
            result = llvm::raw_ostream::operator<<(this, &v29);
          }

          v28 = *(this + 4);
          if (v28 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v28 + 1;
          *v28 = 10;
          if (v8 == ++v10)
          {
            return result;
          }
        }

        result = llvm::raw_ostream::write(this, 10);
        ++v10;
      }

      while (v8 != v10);
    }
  }

  return result;
}

uint64_t SignalHandler(unsigned int a1)
{
  v2 = atomic_load(_MergedGlobals_13);
  if (v2)
  {
    v3 = &unk_1ED440BE8;
    do
    {
      sigaction(v3[1].__sigaction_u.__sa_handler, v3, 0);
      atomic_fetch_add(_MergedGlobals_13, 0xFFFFFFFF);
      v3 = (v3 + 24);
      --v2;
    }

    while (v2);
  }

  v10 = -1;
  v4 = sigprocmask(2, &v10, 0);
  v5 = atomic_exchange(qword_1ED440AA8, 0);
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = atomic_exchange(v6, 0);
      if (v7)
      {
        v4 = stat(v7, &v11);
        if (!v4 && (v11.st_mode & 0xF000) == 0x8000)
        {
          v4 = unlink(v7);
          atomic_exchange(v6, v7);
        }
      }

      v6 = atomic_load((v6 + 8));
    }

    while (v6);
  }

  atomic_exchange(qword_1ED440AA8, v5);
  if (a1 <= 0x1F)
  {
    if (((1 << a1) & 0x80008006) != 0)
    {
      v8 = atomic_exchange(&qword_1ED440A90, 0);
      if (v8)
      {
        return v8(v4);
      }

      return raise(a1);
    }

    if (a1 == 13)
    {
      v8 = atomic_exchange(&qword_1ED440AA0, 0);
      if (v8)
      {
        return v8(v4);
      }

      return raise(a1);
    }
  }

  return llvm::sys::RunSignalHandlers(v4);
}

uint64_t llvm::object_deleter<anonymous namespace::FilesToRemoveCleanup>::call(uint64_t result)
{
  if (result)
  {
    v1 = atomic_exchange(qword_1ED440AA8, 0);
    if (v1)
    {
      MEMORY[0x1AC55A070]();
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void anonymous namespace::FileToRemoveList::~FileToRemoveList(atomic_ullong *this)
{
  v2 = atomic_exchange(this + 1, 0);
  if (v2)
  {
    MEMORY[0x1AC55A070]();
  }

  v3 = atomic_exchange(this, 0);
  if (v3)
  {
    free(v3);
  }
}

uint64_t llvm::ThreadPoolStrategy::compute_thread_count(llvm::ThreadPoolStrategy *this)
{
  if (*(this + 4) == 1)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    v5 = *this;
    if (!*this)
    {
      return result;
    }

LABEL_16:
    if (v5 >= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (*(this + 5))
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if ((atomic_load_explicit(byte_1ED4415A0, memory_order_acquire) & 1) == 0)
  {
    llvm::ThreadPoolStrategy::compute_thread_count();
  }

  if (_MergedGlobals_14 <= 1)
  {
    result = 1;
  }

  else
  {
    result = _MergedGlobals_14;
  }

  v5 = *this;
  if (*this)
  {
    goto LABEL_16;
  }

  return result;
}

pthread_t llvm::llvm_execute_on_thread_impl(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = pthread_attr_init(&v13);
  if (v6)
  {
    ReportErrnumFatal("pthread_attr_init failed", v6);
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v13, a3);
    if (v7)
    {
      ReportErrnumFatal("pthread_attr_setstacksize failed", v7);
    }
  }

  v12 = 0;
  v8 = pthread_create(&v12, &v13, a1, a2);
  if (v8)
  {
    ReportErrnumFatal("pthread_create failed", v8);
  }

  v9 = v12;
  v10 = pthread_attr_destroy(&v13);
  if (v10)
  {
    ReportErrnumFatal("pthread_attr_destroy failed", v10);
  }

  return v9;
}

void ReportErrnumFatal(char *__s, llvm::sys *a2)
{
  memset(v5, 0, sizeof(v5));
  std::string::basic_string[abi:nn200100]<0>(&v3, __s);
  MakeErrMsg(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  llvm::report_fatal_error(&v3, 1);
}

llvm::sys *llvm::llvm_thread_join_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    ReportErrnumFatal("pthread_join failed", result);
  }

  return result;
}

uint64_t llvm::get_threadid(llvm *this)
{
  {
    return *llvm::get_threadid(void)::Self();
  }

  llvm::get_threadid(void)::$_0::operator()();
  v3 = llvm::get_threadid(void)::Self();
  *v3 = v4;
  return *v5;
}

uint64_t llvm::get_threadid(void)::$_0::operator()()
{
  v0 = MEMORY[0x1AC55A620]();
  v1 = llvm::get_threadid(void)::Self();
  mach_port_deallocate(v2, *v1);
  return v0;
}

void llvm::set_thread_name(const char **this, const llvm::Twine *a2)
{
  v7[8] = *MEMORY[0x1E69E9840];
  v5 = v7;
  v6 = xmmword_1A75DA830;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v5);
  v4 = v3 - 63;
  if (v3 < v3 - 63)
  {
    v4 = v3;
  }

  if (v3 <= 0x3F)
  {
    v4 = 0;
  }

  pthread_setname_np(&v2[v4]);
  if (v5 != v7)
  {
    free(v5);
  }
}

uint64_t computeHostNumPhysicalCores(void)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0);
  result = v2;
  if (!v2)
  {
    *v3 = 0x1900000006;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    result = v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

const char *llvm::itanium_demangle::parse_discriminator(const char *this, const char *a2, const char *a3)
{
  if (this != a2)
  {
    v3 = *this;
    if (v3 == 95)
    {
      if (this + 1 != a2)
      {
        v4 = this[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x400) != 0)
          {
            this += 2;
          }

          else if (v4 == 95)
          {
            v5 = this + 2;
            if (this + 2 != a2)
            {
              while (1)
              {
                v6 = *v5;
                if (v6 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
                {
                  break;
                }

                if (++v5 == a2)
                {
                  return this;
                }
              }

              if (v6 == 95)
              {
                return v5 + 1;
              }
            }
          }
        }
      }
    }

    else if ((v3 & 0x80) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x400) != 0)
    {
      v7 = this + 1;
      while (v7 != a2)
      {
        v8 = *v7;
        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v7;
          if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
          {
            continue;
          }
        }

        return this;
      }

      return a2;
    }
  }

  return this;
}

uint64_t llvm::itaniumDemangle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v38 = *MEMORY[0x1E69E9840];
  if (!v4)
  {
    return 0;
  }

  v18[0] = v3;
  v18[1] = &v3[v4];
  v19 = v22;
  v20 = v22;
  v21 = v23;
  memset(v22, 0, sizeof(v22));
  v23[0] = v24;
  v23[1] = v24;
  memset(v24, 0, sizeof(v24));
  v23[2] = v25;
  v25[0] = v26;
  v25[1] = v26;
  v25[2] = v27;
  memset(v26, 0, sizeof(v26));
  v27[0] = v28;
  v27[1] = v28;
  v27[2] = v29;
  memset(v28, 0, sizeof(v28));
  v29[0] = v30;
  v29[1] = v30;
  v29[2] = &v31;
  memset(v30, 0, sizeof(v30));
  v31 = 1;
  v32 = 0;
  v33 = -1;
  v35 = 0;
  v34 = 0;
  v36[0] = 0u;
  v37 = v36;
  v7 = v6;
  if (v6)
  {
    v15 = 0;
    v14 = 0u;
    v16 = -1;
    v17 = 1;
    (*(*v6 + 32))(v6, &v14);
    if ((*(v7 + 9) & 0xC0) != 0x40)
    {
      (*(*v7 + 40))(v7, &v14);
    }

    v9 = *(&v14 + 1);
    v8 = v14;
    if (*(&v14 + 1) + 1 > v15)
    {
      if (2 * v15 <= *(&v14 + 1) + 993)
      {
        v10 = *(&v14 + 1) + 993;
      }

      else
      {
        v10 = 2 * v15;
      }

      v15 = v10;
      v8 = malloc_type_realloc(v14, v10, 0x100004077774924uLL);
      *&v14 = v8;
      if (!v8)
      {
        abort();
      }

      v9 = *(&v14 + 1);
    }

    v8[v9] = 0;
    v7 = v14;
  }

  v11 = v37;
  if (v37)
  {
    do
    {
      while (1)
      {
        v12 = *v11;
        v37 = *v11;
        if (v11 == v36)
        {
          break;
        }

        free(v11);
        v11 = v37;
        if (!v37)
        {
          goto LABEL_17;
        }
      }

      v11 = v12;
    }

    while (v12);
  }

LABEL_17:
  v36[0] = 0uLL;
  v37 = v36;
  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v19 != v22)
  {
    free(v19);
  }

  return v7;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parse(const void **a1, unsigned __int16 *a2)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  if (v4 < 2)
  {
    goto LABEL_15;
  }

  if (*v3 == 23135)
  {
    *a1 = v3 + 2;
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
LABEL_15:
    return;
  }

  if (*v3 == 24415 && v3[2] == 90)
  {
    *a1 = v3 + 3;
    if (!v7)
    {
      return;
    }

LABEL_20:
    v9 = *a1;
    v8 = a1[1];
    v10 = v8 - *a1;
    if (v8 != *a1 && *v9 == 46)
    {
      v11 = a1[613];
      v12 = v11[1];
      if ((v12 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v13 = v7;
        v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v14)
        {
          std::terminate();
        }

        v11 = v14;
        v12 = 0;
        *v14 = a1[613];
        v14[1] = 0;
        a1[613] = v14;
        v7 = v13;
      }

      v11[1] = v12 + 48;
      v15 = v11 + v12;
      v15[24] = 1;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_1F1A38698;
      *(v15 + 4) = v7;
      *(v15 + 5) = v9;
      *(v15 + 6) = v10;
      *a1 = a1[1];
    }

    return;
  }

  if (v4 < 4)
  {
    goto LABEL_15;
  }

  if (*v3 == 1516199775)
  {
    v16 = 4;
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_15;
    }

    if (*v3 != 1600085855 || v3[4] != 90)
    {
      goto LABEL_15;
    }

    v16 = 5;
  }

  *a1 = &v3[v16];
  if (v28)
  {
    v18 = *a1;
    v17 = a1[1];
    if ((v17 - *a1) >= 0xD && *v18 == 0x695F6B636F6C625FLL && *(v18 + 5) == 0x656B6F766E695F6BLL)
    {
      v20 = v18 + 13;
      *a1 = v18 + 13;
      if (v18 + 13 == v17 || *v20 != 95)
      {
        v21 = 0;
      }

      else
      {
        v20 = v18 + 14;
        *a1 = v18 + 14;
        v21 = 1;
      }

      if (v17 == v20 || (v22 = *v20, v22 < 0) || (v23 = MEMORY[0x1E69E9830], (*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x400) == 0))
      {
        if (v21)
        {
          return;
        }
      }

      else
      {
        v24 = v20;
        while (1)
        {
          v25 = *v24;
          if (v25 < 0 || (*(v23 + 4 * v25 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v24;
          if (v24 == v17)
          {
            v26 = v17;
            goto LABEL_55;
          }
        }

        v26 = v24;
LABEL_55:
        v27 = v26 == v20;
        v20 = v24;
        if (v21 & v27)
        {
          return;
        }
      }

      if (v17 != v20)
      {
        if (*v20 != 46)
        {
          return;
        }

        *a1 = v17;
      }
    }
  }
}

void *llvm::itanium_demangle::Node::printAsOperand(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 + a3 <= (*(a1 + 9) << 26 >> 26))
  {
    ++*(a2 + 32);
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v9 + 1;
    v11 = *(a2 + 16);
    if (v9 + 1 > v11)
    {
      v12 = v9 + 993;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 2 * v11;
      }

      *(a2 + 16) = v13;
      v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(a2 + 8);
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    *(v8 + v9) = 40;
    (*(*a1 + 32))(a1, a2);
    if ((*(a1 + 9) & 0xC0) != 0x40)
    {
      (*(*a1 + 40))(a1, a2);
    }

    --*(a2 + 32);
    result = *a2;
    v14 = *(a2 + 8);
    v15 = v14 + 1;
    v16 = *(a2 + 16);
    if (v14 + 1 <= v16)
    {
      goto LABEL_20;
    }

    v17 = v14 + 993;
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    *(a2 + 16) = v18;
    result = malloc_type_realloc(result, v18, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v14 = *(a2 + 8);
      v15 = v14 + 1;
LABEL_20:
      *(a2 + 8) = v15;
      *(result + v14) = 41;
      return result;
    }

LABEL_22:
    abort();
  }

  result = (*(*a1 + 32))(a1, a2);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*a1 + 40);

    return v7(a1, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::consumeIf(const void **a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (a3 > a1[1] - *a1)
  {
    return 0;
  }

  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v3[a3];
  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseEncoding(const void **a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (v6 != *a1)
  {
    v8 = *v5;
    if (v8 != 71)
    {
      if (v8 == 84)
      {
        if (v7 >= 2)
        {
          v9 = v5[1];
          if (v9 <= 0x52)
          {
            if (v5[1] > 0x47u)
            {
              if (v9 == 72)
              {
                *a1 = v5 + 2;
                if (v108)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 73)
              {
                *a1 = v5 + 2;
                v108 = v65;
                if (v65)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v9 == 65)
              {
                *a1 = v5 + 2;
                v108 = v69;
                if (v69)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 67)
              {
                *a1 = v5 + 2;
                v108 = v42;
                if (v42)
                {
                  if (v43)
                  {
                    v44 = *a1;
                    if (*a1 != a1[1] && *v44 == 95)
                    {
                      *a1 = v44 + 1;
                      v105.n128_u64[0] = v45;
                      if (v45)
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                goto LABEL_155;
              }
            }
          }

          else if (v5[1] <= 0x55u)
          {
            if (v9 == 83)
            {
              *a1 = v5 + 2;
              v108 = v71;
              if (v71)
              {
                goto LABEL_154;
              }

              goto LABEL_155;
            }

            if (v9 == 84)
            {
              *a1 = v5 + 2;
              v108 = v66;
              if (v66)
              {
                goto LABEL_154;
              }

              goto LABEL_155;
            }
          }

          else
          {
            switch(v9)
            {
              case 'V':
                *a1 = v5 + 2;
                v108 = v70;
                if (v70)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'W':
                *a1 = v5 + 2;
                if (v108)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'c':
                *a1 = v5 + 2;
                {
                  if (v108)
                  {
LABEL_154:
                    v13 = v10;
                    goto LABEL_156;
                  }
                }

                goto LABEL_155;
            }
          }
        }

        v67 = v5 + 1;
        *a1 = v67;
        if (v6 == v67)
        {
          v68 = 0;
          {
            goto LABEL_155;
          }
        }

        else
        {
          v68 = *v67 == 118;
          {
            goto LABEL_155;
          }
        }

        if (v108)
        {
          if (v68)
          {
          }

          else
          {
          }

          goto LABEL_154;
        }

LABEL_155:
        v13 = 0;
        goto LABEL_156;
      }

      goto LABEL_14;
    }

    if (v7 < 2)
    {
      goto LABEL_155;
    }

    v27 = v5[1];
    if (v27 == 73)
    {
      *a1 = v5 + 2;
      v108 = 0;
      v13 = 0;
      {
        goto LABEL_156;
      }

      v61 = v108;
      if (!v108)
      {
        goto LABEL_156;
      }

      v62 = a1[613];
      v63 = v62[1];
      if ((v63 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v62 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v62)
        {
          goto LABEL_158;
        }

        v63 = 0;
        *v62 = a1[613];
        v62[1] = 0;
        a1[613] = v62;
      }

      v62[1] = v63 + 48;
      v64 = v62 + v63;
      v13 = v64 + 16;
      v64[24] = 21;
      *(v64 + 25) = *(v64 + 25) & 0xF000 | 0x540;
      *(v64 + 2) = &unk_1F1A365B8;
      *(v64 + 4) = "initializer for module ";
      *(v64 + 5) = 23;
      *(v64 + 6) = v61;
      goto LABEL_156;
    }

    if (v27 != 82)
    {
      if (v27 != 86)
      {
        goto LABEL_155;
      }

      *a1 = v5 + 2;
      if (!v28)
      {
        goto LABEL_155;
      }

      v29 = a1[613];
      v30 = v29[1];
      if ((v30 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_32;
      }

      v31 = v28;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v32)
      {
        v29 = v32;
        v30 = 0;
        *v32 = a1[613];
        v32[1] = 0;
        a1[613] = v32;
        v28 = v31;
LABEL_32:
        v29[1] = v30 + 48;
        v33 = v29 + v30;
        v13 = v33 + 16;
        v33[24] = 21;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = &unk_1F1A365B8;
        *(v33 + 4) = "guard variable for ";
        *(v33 + 5) = 19;
        *(v33 + 6) = v28;
        goto LABEL_156;
      }

LABEL_158:
      std::terminate();
    }

    *a1 = v5 + 2;
    if (!v108)
    {
      goto LABEL_155;
    }

    v55 = *a1;
    v56 = a1[1];
    if (v56 == *a1 || *v55 < 48 || (v57 = *v55, v57 >= 0x3A) && v57 - 65 > 0x19)
    {
      v58 = 1;
      if (v55 == v56)
      {
        goto LABEL_83;
      }
    }

    else
    {
      do
      {
        if (*v55 < 48)
        {
          break;
        }

        v59 = *v55;
        v60 = v59 >= 0x3A && v59 - 65 > 0x19;
        if (v60)
        {
          break;
        }

        *a1 = ++v55;
      }

      while (v55 != v56);
      v58 = 0;
      if (v55 == v56)
      {
        goto LABEL_83;
      }
    }

    if (*v55 == 95)
    {
      *a1 = v55 + 1;
      goto LABEL_84;
    }

LABEL_83:
    if (!v58)
    {
      goto LABEL_155;
    }

LABEL_84:
    goto LABEL_154;
  }

LABEL_14:
  v11 = a1[90];
  v12 = a1[91];
  LOWORD(v108) = 0;
  HIDWORD(v108) = 0;
  v109[0] = 0;
  v110 = (v12 - v11) >> 3;
  v111 = 0;
  v107 = v13;
  if (v13)
  {
    v14 = v110;
    v15 = a1[90];
    v16 = (a1[91] - v15) >> 3;
    if (v16 <= v110)
    {
      v19 = &v15[8 * v110];
    }

    else
    {
      v17 = a1[83];
      if (v17 == a1[84])
      {
        goto LABEL_155;
      }

      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_155;
      }

      v19 = &v15[8 * v110];
      v20 = *v19;
      v21 = *(*v19 + 16);
      v23 = v18;
      v22 = *v18;
      v24 = (v23[1] - v22) >> 3;
      if (v21 >= v24)
      {
        goto LABEL_155;
      }

      v25 = v15 + 8;
      while (1)
      {
        *(v20 + 24) = *(v22 + 8 * v21);
        if (v16 - 1 == v14)
        {
          break;
        }

        v26 = v14 + 1;
        v20 = *&v25[8 * v14];
        v21 = *(v20 + 16);
        ++v14;
        if (v21 >= v24)
        {
          if (v26 >= v16)
          {
            goto LABEL_35;
          }

          goto LABEL_155;
        }
      }
    }

    a1[91] = v19;
LABEL_35:
    v35 = *a1;
    v34 = a1[1];
    if (v34 != *a1)
    {
      v36 = *v35 - 46;
      v60 = v36 > 0x31;
      v37 = (1 << v36) & 0x2000000800001;
      if (v60 || v37 == 0)
      {
        if (a2)
        {
          v106 = 0;
          {
            v40 = (a1[3] - a1[2]) >> 3;
            while (1)
            {
              v49 = *a1;
              if (*a1 != a1[1] && *v49 == 69)
              {
                break;
              }

              if (!v48)
              {
                goto LABEL_155;
              }

              v47 = a1[3];
              if (v47 == a1[4])
              {
                v50 = v48;
                v51 = a1[2];
                v52 = v47 - v51;
                if (v51 == a1 + 5)
                {
                  v46 = malloc_type_malloc(2 * (v47 - v51), 0x2004093837F09uLL);
                  if (!v46)
                  {
LABEL_157:
                    abort();
                  }

                  v39 = a1[2];
                  v53 = a1[3];
                  if (v53 != v39)
                  {
                    v54 = v46;
                    memmove(v46, v39, v53 - v39);
                    v46 = v54;
                  }

                  a1[2] = v46;
                }

                else
                {
                  v46 = malloc_type_realloc(v51, 2 * (v47 - v51), 0x2004093837F09uLL);
                  a1[2] = v46;
                  if (!v46)
                  {
                    goto LABEL_157;
                  }
                }

                v47 = &v46[v52];
                a1[4] = &v46[8 * (v52 >> 2)];
                v48 = v50;
              }

              *v47 = v48;
              a1[3] = v47 + 8;
            }

            *a1 = v49 + 1;
            v105.n128_u64[1] = v72;
            v106 = v73;
          }

          v104 = 0;
          if ((v108 & 1) == 0 && BYTE1(v108) == 1)
          {
            v104 = v74;
            if (!v74)
            {
              goto LABEL_155;
            }
          }

          v105 = 0uLL;
          v76 = *a1;
          v75 = a1[1];
          if (*a1 == v75 || *v76 != 118)
          {
            v79 = a1[2];
            v78 = a1[3];
            v103 = v80;
            if (!v80)
            {
              goto LABEL_155;
            }

            v82 = v78 - v79;
            v83 = (v78 - v79) >> 3;
            v84 = 0x2004093837F09;
            v85 = a1 + 5;
            while (1)
            {
              v86 = a1[3];
              if (v111 == 1 && v82 == v86 - a1[2])
              {
                v86 = a1[3];
              }

              if (v86 == a1[4])
              {
                v88 = v80;
                v89 = a1[2];
                v90 = v86 - v89;
                if (v89 == v85)
                {
                  v91 = malloc_type_malloc(2 * (v86 - v89), v84);
                  if (!v91)
                  {
                    goto LABEL_157;
                  }

                  v81 = a1[2];
                  v92 = a1[3];
                  if (v92 != v81)
                  {
                    v93 = v85;
                    v94 = v83;
                    v95 = v84;
                    v96 = v91;
                    memmove(v91, v81, v92 - v81);
                    v91 = v96;
                    v84 = v95;
                    v83 = v94;
                    v85 = v93;
                  }

                  a1[2] = v91;
                }

                else
                {
                  v91 = malloc_type_realloc(v89, 2 * (v86 - v89), v84);
                  a1[2] = v91;
                  if (!v91)
                  {
                    goto LABEL_157;
                  }
                }

                v86 = &v91[v90];
                a1[4] = &v91[8 * (v90 >> 2)];
                v80 = v88;
              }

              *v86 = v80;
              a1[3] = v86 + 8;
              if (a1[1] == *a1)
              {
                break;
              }

              v97 = **a1 - 46;
              v60 = v97 > 0x31;
              v98 = (1 << v97) & 0x2000800800001;
              if (!v60 && v98 != 0)
              {
                break;
              }

              v103 = v80;
              if (!v80)
              {
                goto LABEL_155;
              }
            }

            v105.n128_u64[1] = v39;
            v77 = *a1;
            v75 = a1[1];
          }

          else
          {
            v77 = v76 + 1;
            *a1 = v77;
          }

          v103 = 0;
          {
            goto LABEL_154;
          }

          goto LABEL_155;
        }

        do
        {
          if (v35 == v34)
          {
            break;
          }

          *a1 = v35 + 1;
        }

        while (*v35++);
      }
    }
  }

LABEL_156:
  return v13;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseNumber(char **a1, int a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = result;
  if (a2)
  {
    if (result == v4)
    {
      return 0;
    }

    v5 = result;
    if (*result == 110)
    {
      v5 = result + 1;
      *a1 = result + 1;
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  do
  {
    v8 = *v5;
    if (v8 < 0)
    {
      break;
    }

    if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
  }

  while (v5 != v4);
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[34],llvm::itanium_demangle::Node *&>(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = v6 + v7 + 16;
  v10 = strlen(__s);
  v11 = *a3;
  v8[24] = 21;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_1F1A365B8;
  *(v8 + 4) = __s;
  *(v8 + 5) = v10;
  *(v8 + 6) = v11;
  return v9;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseType(uint64_t a1, unsigned __int16 *a2)
{
  v124 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = &v4[-*a1];
  if (v4 == *a1)
  {
LABEL_144:
    goto LABEL_145;
  }

  v6 = *v3;
  v7 = 0;
  switch(*v3)
  {
    case 'A':
      *a1 = v3 + 1;
      v126 = 0;
      if (v4 == v3 + 1)
      {
        if ((*(MEMORY[0x1E69E9830] + 61) & 4) == 0)
        {
LABEL_183:
          if (!v52)
          {
            goto LABEL_145;
          }

          v101 = *a1;
          if (*a1 != *(a1 + 8) && *v101 == 95)
          {
            *a1 = v101 + 1;
            v126 = v52;
            goto LABEL_191;
          }

          goto LABEL_193;
        }

LABEL_187:
        v125.n128_u64[1] = v102;
        v126 = v103;
        v104 = *a1;
        if (*a1 != *(a1 + 8) && *v104 == 95)
        {
          v9 = v104 + 1;
          goto LABEL_190;
        }

LABEL_193:
        v52 = 0;
        goto LABEL_145;
      }

      v8 = v3[1];
      if (v8 < 0)
      {
        goto LABEL_183;
      }

      if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x400) != 0)
      {
        goto LABEL_187;
      }

      if (v8 != 95)
      {
        goto LABEL_183;
      }

      v9 = v3 + 2;
LABEL_190:
      *a1 = v9;
LABEL_191:
      v125.n128_u64[0] = v52;
      if (v52)
      {
      }

LABEL_145:
      v124 = v52;
      if (v52)
      {
LABEL_146:
        v85 = *(a1 + 304);
        if (v85 == *(a1 + 312))
        {
LABEL_147:
          v86 = *(a1 + 296);
          v87 = v85 - v86;
          if (v86 == (a1 + 320))
          {
            v88 = malloc_type_malloc(2 * v87, 0x2004093837F09uLL);
            if (!v88)
            {
              goto LABEL_262;
            }

            v89 = *(a1 + 296);
            v90 = *(a1 + 304);
            if (v90 != v89)
            {
              v91 = v88;
              memmove(v88, v89, v90 - v89);
              v88 = v91;
            }

            *(a1 + 296) = v88;
          }

          else
          {
            v88 = malloc_type_realloc(v86, 2 * (v85 - v86), 0x2004093837F09uLL);
            *(a1 + 296) = v88;
            if (!v88)
            {
LABEL_262:
              abort();
            }
          }

          v85 = &v88[v87];
          *(a1 + 312) = &v88[8 * (v87 >> 2)];
          v52 = v124;
        }

LABEL_155:
        *v85 = v52;
        *(a1 + 304) = v85 + 1;
      }

      return;
    case 'C':
      *a1 = v3 + 1;
      if (!v125.n128_u64[0])
      {
        return;
      }

      goto LABEL_160;
    case 'D':
      if (v5 >= 2)
      {
        v72 = v3[1];
        switch(v3[1])
        {
          case 'B':
          case 'U':
            LOBYTE(v126) = v72 == 66;
            v73 = (v3 + 2);
            *a1 = v73;
            if (v4 == v73)
            {
              v74 = 0;
            }

            else
            {
              v74 = *v73;
              if (v74 < 0)
              {
                goto LABEL_250;
              }
            }

            if ((*(MEMORY[0x1E69E9830] + 4 * v74 + 60) & 0x400) != 0)
            {
              v125.n128_u64[1] = v121;
              v125.n128_u64[0] = v122;
              goto LABEL_253;
            }

LABEL_250:
            v125.n128_u64[0] = v120;
            if (!v120)
            {
              return;
            }

LABEL_253:
            v123 = *a1;
            if (*a1 != *(a1 + 8) && *v123 == 95)
            {
              *a1 = v123 + 1;
            }

            return;
          case 'F':
            *a1 = v3 + 2;
            v125.n128_u64[1] = v113;
            v125.n128_u64[0] = v115;
            v116 = (*(*v115 + 56))(v115, v114);
            if (v117 == 2)
            {
              v118 = *a1;
              v119 = *(a1 + 8);
              if (*v116 == 13873)
              {
                if (v118 == v119)
                {
                  return;
                }

                if (*v118 == 98)
                {
                  *a1 = v118 + 1;
                  return;
                }
              }
            }

            else
            {
              v118 = *a1;
              v119 = *(a1 + 8);
            }

            if (v118 != v119 && *v118 == 95)
            {
              *a1 = v118 + 1;
            }

            break;
          case 'K':
          case 'k':
            v109 = v72 == 107;
            if (v72 == 107)
            {
              v110 = " auto";
            }

            else
            {
              v110 = " decltype(auto)";
            }

            v111 = 15;
            if (v109)
            {
              v111 = 5;
            }

            v125.n128_u64[0] = v110;
            v125.n128_u64[1] = v111;
            *a1 = v3 + 2;
            if (v126)
            {
            }

            return;
          case 'O':
          case 'o':
          case 'w':
          case 'x':
            goto LABEL_198;
          case 'T':
          case 't':
            goto LABEL_145;
          case 'a':
            *a1 = v3 + 2;
            v112 = "auto";
            goto LABEL_236;
          case 'c':
            *a1 = v3 + 2;
            v112 = "decltype(auto)";
            goto LABEL_245;
          case 'd':
            *a1 = v3 + 2;
            v112 = "decimal64";
            goto LABEL_232;
          case 'e':
            *a1 = v3 + 2;
            v112 = "decimal128";

            goto LABEL_216;
          case 'f':
            *a1 = v3 + 2;
            v112 = "decimal32";
LABEL_232:

            goto LABEL_216;
          case 'h':
            *a1 = v3 + 2;
            v112 = "half";
LABEL_236:

            goto LABEL_216;
          case 'i':
            *a1 = v3 + 2;
            v112 = "char32_t";
            goto LABEL_240;
          case 'n':
            *a1 = v3 + 2;
            v112 = "std::nullptr_t";
LABEL_245:

            goto LABEL_216;
          case 'p':
            *a1 = v3 + 2;
            if (!v125.n128_u64[0])
            {
              return;
            }

            goto LABEL_160;
          case 's':
            *a1 = v3 + 2;
            v112 = "char16_t";
LABEL_240:

            goto LABEL_216;
          case 'u':
            *a1 = v3 + 2;
            v112 = "char8_t";

LABEL_216:
            return;
          case 'v':
            goto LABEL_145;
          default:
            return;
        }
      }

      return;
    case 'F':
      goto LABEL_198;
    case 'G':
      *a1 = v3 + 1;
      if (!v125.n128_u64[0])
      {
        return;
      }

      goto LABEL_160;
    case 'K':
    case 'V':
      goto LABEL_60;
    case 'M':
      *a1 = v3 + 1;
      v125.n128_u64[0] = v52;
      if (v52)
      {
        v126 = v52;
        if (v52)
        {
        }
      }

      goto LABEL_145;
    case 'O':
      *a1 = v3 + 1;
      if (!v125.n128_u64[0])
      {
        return;
      }

      LODWORD(v126) = 1;
      goto LABEL_159;
    case 'P':
      *a1 = v3 + 1;
      if (!v125.n128_u64[0])
      {
        return;
      }

      goto LABEL_160;
    case 'R':
      *a1 = v3 + 1;
      if (!v125.n128_u64[0])
      {
        return;
      }

      LODWORD(v126) = 0;
LABEL_159:
      goto LABEL_160;
    case 'S':
      if (v5 >= 2 && v3[1] == 116)
      {
        goto LABEL_144;
      }

      LOBYTE(v126) = 0;
      v124 = v52;
      if (!v52)
      {
        return;
      }

      if (*(a1 + 8) == *a1)
      {
        v100 = v126;
      }

      else
      {
        v100 = v126;
        if (**a1 == 73)
        {
          if (v126)
          {
            if ((*(a1 + 776) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 296), &v124);
          }

          v125.n128_u64[0] = v108;
          if (v108)
          {
LABEL_204:
            goto LABEL_160;
          }

          return;
        }
      }

      if ((v100 & 1) == 0)
      {
        goto LABEL_146;
      }

      return;
    case 'T':
      if (v5 >= 2)
      {
        v68 = v3[1] - 101;
        v51 = v68 > 0x10;
        v69 = (1 << v68) & 0x14001;
        if (!v51 && v69 != 0)
        {
          goto LABEL_144;
        }
      }

      v124 = v52;
      if (!v52)
      {
        return;
      }

      if (*(a1 + 776) != 1 || *(a1 + 8) == *a1 || **a1 != 73)
      {
        goto LABEL_146;
      }

      llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 296), &v124);
      v125.n128_u64[0] = v71;
      if (!v71)
      {
        return;
      }

      goto LABEL_204;
    case 'U':
      goto LABEL_74;
    case 'a':
      *a1 = v3 + 1;
      v30 = *(a1 + 4904);
      v31 = v30[1];
      if ((v31 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_35;
      }

      v30 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v30)
      {
        goto LABEL_261;
      }

      v31 = 0;
      *v30 = *(a1 + 4904);
      v30[1] = 0;
      *(a1 + 4904) = v30;
LABEL_35:
      v30[1] = v31 + 32;
      v32 = v30 + v31;
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = &unk_1F1A366B8;
      v33 = "signed char";
      goto LABEL_48;
    case 'b':
      *a1 = v3 + 1;
      v95 = *(a1 + 4904);
      v96 = v95[1];
      if ((v96 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_169;
      }

      v95 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v95)
      {
        goto LABEL_261;
      }

      v96 = 0;
      *v95 = *(a1 + 4904);
      v95[1] = 0;
      *(a1 + 4904) = v95;
LABEL_169:
      v95[1] = v96 + 32;
      v15 = v95 + v96;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_1F1A366B8;
      v16 = "BOOL";
      goto LABEL_170;
    case 'c':
      *a1 = v3 + 1;
      v34 = *(a1 + 4904);
      v35 = v34[1];
      if ((v35 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_39;
      }

      v34 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v34)
      {
        goto LABEL_261;
      }

      v35 = 0;
      *v34 = *(a1 + 4904);
      v34[1] = 0;
      *(a1 + 4904) = v34;
LABEL_39:
      v34[1] = v35 + 32;
      v15 = v34 + v35;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_1F1A366B8;
      v16 = "char";
      goto LABEL_170;
    case 'd':
      *a1 = v3 + 1;
      v97 = *(a1 + 4904);
      v98 = v97[1];
      if ((v98 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_174;
      }

      v97 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v97)
      {
        goto LABEL_261;
      }

      v98 = 0;
      *v97 = *(a1 + 4904);
      v97[1] = 0;
      *(a1 + 4904) = v97;
LABEL_174:
      v97[1] = v98 + 32;
      v99 = v97 + v98;
      v99[24] = 8;
      *(v99 + 25) = *(v99 + 25) & 0xF000 | 0x540;
      *(v99 + 2) = &unk_1F1A366B8;
      *(v99 + 4) = "double";
      *(v99 + 5) = 6;
      return;
    case 'e':
      *a1 = v3 + 1;
      v39 = *(a1 + 4904);
      v40 = v39[1];
      if ((v40 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_47;
      }

      v39 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v39)
      {
        goto LABEL_261;
      }

      v40 = 0;
      *v39 = *(a1 + 4904);
      v39[1] = 0;
      *(a1 + 4904) = v39;
LABEL_47:
      v39[1] = v40 + 32;
      v32 = v39 + v40;
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = &unk_1F1A366B8;
      v33 = "long double";
LABEL_48:
      *(v32 + 4) = v33;
      *(v32 + 5) = 11;
      return;
    case 'f':
      *a1 = v3 + 1;
      v78 = *(a1 + 4904);
      v79 = v78[1];
      if ((v79 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_132;
      }

      v78 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v78)
      {
        goto LABEL_261;
      }

      v79 = 0;
      *v78 = *(a1 + 4904);
      v78[1] = 0;
      *(a1 + 4904) = v78;
LABEL_132:
      v78[1] = v79 + 32;
      v58 = v78 + v79;
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = &unk_1F1A366B8;
      v59 = "float";
      goto LABEL_133;
    case 'g':
      *a1 = v3 + 1;
      v27 = *(a1 + 4904);
      v28 = v27[1];
      if ((v28 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_31;
      }

      v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v27)
      {
        goto LABEL_261;
      }

      v28 = 0;
      *v27 = *(a1 + 4904);
      v27[1] = 0;
      *(a1 + 4904) = v27;
LABEL_31:
      v27[1] = v28 + 32;
      v29 = v27 + v28;
      v29[24] = 8;
      *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
      *(v29 + 2) = &unk_1F1A366B8;
      *(v29 + 4) = "__float128";
      *(v29 + 5) = 10;
      return;
    case 'h':
      *a1 = v3 + 1;
      v41 = *(a1 + 4904);
      v42 = v41[1];
      if ((v42 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_52;
      }

      v41 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v41)
      {
        goto LABEL_261;
      }

      v42 = 0;
      *v41 = *(a1 + 4904);
      v41[1] = 0;
      *(a1 + 4904) = v41;
LABEL_52:
      v41[1] = v42 + 32;
      v43 = v41 + v42;
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = &unk_1F1A366B8;
      v44 = "unsigned char";
      goto LABEL_57;
    case 'i':
      *a1 = v3 + 1;
      v75 = *(a1 + 4904);
      v76 = v75[1];
      if ((v76 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_122;
      }

      v75 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v75)
      {
        goto LABEL_261;
      }

      v76 = 0;
      *v75 = *(a1 + 4904);
      v75[1] = 0;
      *(a1 + 4904) = v75;
LABEL_122:
      v75[1] = v76 + 32;
      v19 = v75 + v76;
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = &unk_1F1A366B8;
      v20 = "int";
      goto LABEL_123;
    case 'j':
      *a1 = v3 + 1;
      v53 = *(a1 + 4904);
      v54 = v53[1];
      if ((v54 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_78;
      }

      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
        goto LABEL_261;
      }

      v54 = 0;
      *v53 = *(a1 + 4904);
      v53[1] = 0;
      *(a1 + 4904) = v53;
LABEL_78:
      v53[1] = v54 + 32;
      v55 = v53 + v54;
      v55[24] = 8;
      *(v55 + 25) = *(v55 + 25) & 0xF000 | 0x540;
      *(v55 + 2) = &unk_1F1A366B8;
      *(v55 + 4) = "unsigned int";
      *(v55 + 5) = 12;
      return;
    case 'l':
      *a1 = v3 + 1;
      v80 = *(a1 + 4904);
      v81 = v80[1];
      if ((v81 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_137;
      }

      v80 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v80)
      {
        goto LABEL_261;
      }

      v81 = 0;
      *v80 = *(a1 + 4904);
      v80[1] = 0;
      *(a1 + 4904) = v80;
LABEL_137:
      v80[1] = v81 + 32;
      v15 = v80 + v81;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_1F1A366B8;
      v16 = "long";
      goto LABEL_170;
    case 'm':
      *a1 = v3 + 1;
      v45 = *(a1 + 4904);
      v46 = v45[1];
      if ((v46 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_56;
      }

      v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v45)
      {
        goto LABEL_261;
      }

      v46 = 0;
      *v45 = *(a1 + 4904);
      v45[1] = 0;
      *(a1 + 4904) = v45;
LABEL_56:
      v45[1] = v46 + 32;
      v43 = v45 + v46;
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = &unk_1F1A366B8;
      v44 = "unsigned long";
LABEL_57:
      *(v43 + 4) = v44;
      *(v43 + 5) = 13;
      return;
    case 'n':
      *a1 = v3 + 1;
      v24 = *(a1 + 4904);
      v25 = v24[1];
      if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_27;
      }

      v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v24)
      {
        goto LABEL_261;
      }

      v25 = 0;
      *v24 = *(a1 + 4904);
      v24[1] = 0;
      *(a1 + 4904) = v24;
LABEL_27:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 8;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      *(v26 + 2) = &unk_1F1A366B8;
      *(v26 + 4) = "__int128";
      *(v26 + 5) = 8;
      return;
    case 'o':
      *a1 = v3 + 1;
      v21 = *(a1 + 4904);
      v22 = v21[1];
      if ((v22 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_23;
      }

      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_261;
      }

      v22 = 0;
      *v21 = *(a1 + 4904);
      v21[1] = 0;
      *(a1 + 4904) = v21;
LABEL_23:
      v21[1] = v22 + 32;
      v23 = v21 + v22;
      v23[24] = 8;
      *(v23 + 25) = *(v23 + 25) & 0xF000 | 0x540;
      *(v23 + 2) = &unk_1F1A366B8;
      *(v23 + 4) = "unsigned __int128";
      *(v23 + 5) = 17;
      return;
    case 'r':
      if (v5 < 2)
      {
        v47 = 1;
        v48 = 1;
      }

      else
      {
        v6 = v3[1];
        v7 = 1;
LABEL_60:
        if (v6 == 86)
        {
          v47 = v7 + 1;
        }

        else
        {
          v47 = v7;
        }

        v48 = v47;
        if (v5 > v47)
        {
          if (v3[v47] == 75)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v47;
          }

          v47 = v48;
        }
      }

      if (v5 > v48 && ((v49 = v3[v48], v49 == 70) || ((v50 = v47 + 1, v49 == 68) ? (v51 = v5 > v50) : (v51 = 0), v51 && ((v105 = v3[v50] - 79, v51 = v105 > 0x29, v106 = (1 << v105) & 0x30100000001, !v51) ? (v107 = v106 == 0) : (v107 = 1), !v107))))
      {
LABEL_198:
      }

      else
      {
LABEL_74:
      }

      goto LABEL_145;
    case 's':
      *a1 = v3 + 1;
      v56 = *(a1 + 4904);
      v57 = v56[1];
      if ((v57 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_88;
      }

      v56 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v56)
      {
        goto LABEL_261;
      }

      v57 = 0;
      *v56 = *(a1 + 4904);
      v56[1] = 0;
      *(a1 + 4904) = v56;
LABEL_88:
      v56[1] = v57 + 32;
      v58 = v56 + v57;
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = &unk_1F1A366B8;
      v59 = "short";
LABEL_133:
      *(v58 + 4) = v59;
      *(v58 + 5) = 5;
      return;
    case 't':
      *a1 = v3 + 1;
      v82 = *(a1 + 4904);
      v83 = v82[1];
      if ((v83 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_141;
      }

      v82 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v82)
      {
        goto LABEL_261;
      }

      v83 = 0;
      *v82 = *(a1 + 4904);
      v82[1] = 0;
      *(a1 + 4904) = v82;
LABEL_141:
      v82[1] = v83 + 32;
      v84 = v82 + v83;
      v84[24] = 8;
      *(v84 + 25) = *(v84 + 25) & 0xF000 | 0x540;
      *(v84 + 2) = &unk_1F1A366B8;
      *(v84 + 4) = "unsigned short";
      *(v84 + 5) = 14;
      return;
    case 'u':
      *a1 = v3 + 1;
      if (v4 == v3 + 1 || v3[1] - 58 < 0xFFFFFFF6)
      {
        return;
      }

      v60 = 0;
      v61 = 0;
      do
      {
        v62 = v61;
        v63 = v60;
        v64 = &v3[v60 + 2];
        *a1 = v64;
        v65 = v3[v60 + 1];
        v61 = v65 + 10 * v61 - 48;
        if (v64 == v4)
        {
          break;
        }

        ++v60;
      }

      while (*v64 - 48 <= 9);
      if (v5 - v63 - 2 < v61)
      {
        return;
      }

      v66 = &v3[10 * v62 - 46 + v63 + v65];
      *a1 = v66;
      v125.n128_u64[0] = v64;
      v125.n128_u64[1] = v61;
      if (!v61)
      {
        return;
      }

      if (v66 == v4 || *v66 != 73)
      {
      }

      else
      {
        *a1 = &v3[10 * v62 - 45 + v63 + v65];
        if (!v126)
        {
          return;
        }

        v67 = *a1;
        if (*a1 == *(a1 + 8) || *v67 != 69)
        {
          return;
        }

        *a1 = v67 + 1;
      }

LABEL_160:
      v124 = v52;
      v85 = *(a1 + 304);
      if (v85 != *(a1 + 312))
      {
        goto LABEL_155;
      }

      goto LABEL_147;
    case 'v':
      *a1 = v3 + 1;
      v13 = *(a1 + 4904);
      v14 = v13[1];
      if ((v14 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_15;
      }

      v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v13)
      {
        goto LABEL_261;
      }

      v14 = 0;
      *v13 = *(a1 + 4904);
      v13[1] = 0;
      *(a1 + 4904) = v13;
LABEL_15:
      v13[1] = v14 + 32;
      v15 = v13 + v14;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_1F1A366B8;
      v16 = "void";
LABEL_170:
      *(v15 + 4) = v16;
      *(v15 + 5) = 4;
      return;
    case 'w':
      *a1 = v3 + 1;
      v36 = *(a1 + 4904);
      v37 = v36[1];
      if ((v37 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_43;
      }

      v36 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v36)
      {
        goto LABEL_261;
      }

      v37 = 0;
      *v36 = *(a1 + 4904);
      v36[1] = 0;
      *(a1 + 4904) = v36;
LABEL_43:
      v36[1] = v37 + 32;
      v38 = v36 + v37;
      v38[24] = 8;
      *(v38 + 25) = *(v38 + 25) & 0xF000 | 0x540;
      *(v38 + 2) = &unk_1F1A366B8;
      *(v38 + 4) = "wchar_t";
      *(v38 + 5) = 7;
      return;
    case 'x':
      *a1 = v3 + 1;
      v92 = *(a1 + 4904);
      v93 = v92[1];
      if ((v93 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_165;
      }

      v92 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v92)
      {
        goto LABEL_261;
      }

      v93 = 0;
      *v92 = *(a1 + 4904);
      v92[1] = 0;
      *(a1 + 4904) = v92;
LABEL_165:
      v92[1] = v93 + 32;
      v94 = v92 + v93;
      v94[24] = 8;
      *(v94 + 25) = *(v94 + 25) & 0xF000 | 0x540;
      *(v94 + 2) = &unk_1F1A366B8;
      *(v94 + 4) = "long long";
      *(v94 + 5) = 9;
      return;
    case 'y':
      *a1 = v3 + 1;
      v10 = *(a1 + 4904);
      v11 = v10[1];
      if ((v11 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_11;
      }

      v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v10)
      {
        goto LABEL_261;
      }

      v11 = 0;
      *v10 = *(a1 + 4904);
      v10[1] = 0;
      *(a1 + 4904) = v10;
LABEL_11:
      v10[1] = v11 + 32;
      v12 = v10 + v11;
      v12[24] = 8;
      *(v12 + 25) = *(v12 + 25) & 0xF000 | 0x540;
      *(v12 + 2) = &unk_1F1A366B8;
      *(v12 + 4) = "unsigned long long";
      *(v12 + 5) = 18;
      return;
    case 'z':
      *a1 = v3 + 1;
      v17 = *(a1 + 4904);
      v18 = v17[1];
      if ((v18 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_19;
      }

      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
LABEL_261:
        std::terminate();
      }

      v18 = 0;
      *v17 = *(a1 + 4904);
      v17[1] = 0;
      *(a1 + 4904) = v17;
LABEL_19:
      v17[1] = v18 + 32;
      v19 = v17 + v18;
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = &unk_1F1A366B8;
      v20 = "...";
LABEL_123:
      *(v19 + 4) = v20;
      *(v19 + 5) = 3;
      return;
    default:
      goto LABEL_144;
  }
}