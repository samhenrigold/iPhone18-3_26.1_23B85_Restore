char *sdissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    while (1)
    {
      v10 = v7;
      v11 = *(*a1 + 8);
      v12 = *(v11 + 8 * v7);
      v13 = v12 & 0xF8000000;
      if ((v12 & 0xF8000000) == 0x48000000 || v13 == 1476395008)
      {
        v15 = (v12 & 0x7FFFFFF) + v7;
      }

      else
      {
        v16 = v13 != 2013265920 || (v12 & 0xF8000000) == 2415919104;
        v15 = v7;
        if (!v16)
        {
          v17 = *(v11 + 8 * v7);
          v15 = v7;
          do
          {
            v15 += v17 & 0x7FFFFFF;
            v17 = *(v11 + 8 * v15);
          }

          while ((v17 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v15 + 1;
      v18 = ((v12 & 0xF8000000) - 0x8000000) >> 27;
      if (v18 > 9)
      {
        if (((v12 & 0xF8000000) - 0x8000000) >> 27 <= 0xC)
        {
          if (v18 == 10)
          {
            v34 = a1;
            v35 = v5;
            v36 = a3;
            while (1)
            {
              v22 = sslow(v34, v35, v36, v10, v15 + 1);
              if (sslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v36 = sstep_back(*a1, v5, v22, v15 + 1, a5);
              v34 = a1;
              v35 = v5;
            }

            if (!sslow(a1, v5, v22, v10 + 1, v15))
            {
              goto LABEL_55;
            }

            v33 = v10 + 1;
            v30 = a1;
            v31 = v5;
            v32 = v22;
            goto LABEL_43;
          }

          if (v18 == 12)
          {
            *(a1[2] + 16 * (v12 & 0x7FFFFFF)) = &v5[-a1[3]];
          }

          goto LABEL_40;
        }

        if (v18 == 13)
        {
          *(a1[2] + 16 * (v12 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
LABEL_40:
          v22 = v5;
          goto LABEL_55;
        }

        v23 = a3;
        if (v18 == 14)
        {
          do
          {
            v22 = sslow(a1, v5, v23, v10, v15 + 1);
            v24 = sslow(a1, v22, a3, v15 + 1, a5);
            v23 = v22 - 1;
          }

          while (v24 != a3);
          v15 = v10 + (*(*(*a1 + 8) + 8 * v10) & 0x7FFFFFFLL) - 1;
          v25 = v10 + 1;
          while (sslow(a1, v5, v22, v25, v15) != v22)
          {
            v26 = *(*a1 + 8);
            v27 = *(v26 + 8 * (v15 + 1)) & 0x7FFFFFFLL;
            v28 = v27 + v15 + 1;
            v29 = v27 + v15;
            v25 = v15 + 2;
            if ((*(v26 + 8 * v28) & 0xF8000000) == 0x88000000)
            {
              v15 = v29;
            }

            else
            {
              v15 = v28;
            }
          }

          v30 = a1;
          v31 = v5;
          v32 = v22;
          v33 = v25;
LABEL_43:
          sdissect(v30, v31, v32, v33, v15);
          goto LABEL_55;
        }

        v22 = v5;
      }

      else
      {
        if (v18 - 4 >= 2 && v18 != 1)
        {
          if (v18 == 8)
          {
            v19 = a1;
            v20 = v5;
            v21 = a3;
            while (1)
            {
              v22 = sslow(v19, v20, v21, v10, v15 + 1);
              if (sslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v21 = sstep_back(*a1, v5, v22, v15 + 1, a5);
              v19 = a1;
              v20 = v5;
            }

            v37 = v5;
            do
            {
              v38 = v37;
              v37 = v5;
              v39 = sslow(a1, v5, v22, v10 + 1, v15);
              v5 = v39;
            }

            while (v39 && v39 != v37);
            if (v39)
            {
              v40 = v37;
            }

            else
            {
              v40 = v38;
            }

            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v37;
            }

            sdissect(a1, v40, v41, v10 + 1, v15);
            goto LABEL_55;
          }

          goto LABEL_40;
        }

        v22 = v5 + 1;
      }

LABEL_55:
      v5 = v22;
      if (v7 >= a5)
      {
        return v22;
      }
    }
  }

  return a2;
}

char *sbackref(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
            goto LABEL_82;
          }

          if (v18 == 14)
          {
            ++v14;
            v32 = *(v16 + 8 * v14);
            do
            {
              v14 += v32 & 0x7FFFFFF;
              v32 = *(v16 + 8 * v14);
            }

            while ((v32 & 0xF8000000) != 0x90000000);
            goto LABEL_82;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_82;
            case 0x11uLL:
              v35 = a1[4];
              if (a2 != v35 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v35)
                {
                  return 0;
                }

                v36 = *(a2 - 1);
                if (v36 < 0)
                {
                  v37 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v37 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x500;
                }

                result = 0;
                if (v36 == 95 || v37)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v39 = *a2;
              if ((v39 & 0x8000000000000000) == 0)
              {
LABEL_73:
                v40 = *(MEMORY[0x277D85DE0] + 4 * v39 + 60) & 0x500;
LABEL_80:
                if (v39 != 95 && !v40)
                {
                  return 0;
                }

                goto LABEL_82;
              }

LABEL_79:
              v40 = __maskrune(v39, 0x500uLL);
              goto LABEL_80;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 != v21 || (a1[1] & 2) != 0)
              {
                if (a2 >= v21)
                {
                  return 0;
                }

                v22 = *a2;
                if (v22 == 10)
                {
                  if ((*(v15 + 40) & 8) != 0)
                  {
                    goto LABEL_77;
                  }

LABEL_67:
                  v38 = *(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500;
                }

                else
                {
                  if ((v22 & 0x80) == 0)
                  {
                    goto LABEL_67;
                  }

                  v38 = __maskrune(*a2, 0x500uLL);
                }

                result = 0;
                if (v22 == 95 || v38)
                {
                  return result;
                }
              }

LABEL_77:
              if (a2 <= a1[4])
              {
                return 0;
              }

              v39 = *(a2 - 1);
              if ((v39 & 0x8000000000000000) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_79;
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

          v34 = *a2++;
          if (v34 != v17)
          {
            return 0;
          }

          goto LABEL_82;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5])
            {
              return 0;
            }

            v23 = *(a2 - 1);
LABEL_50:
            if (v23 != 10 || (*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_82:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v33 = a1[5];
            if (a2 != v33 || (a1[1] & 2) != 0)
            {
              if (a2 >= v33)
              {
                return 0;
              }

              v23 = *a2;
              goto LABEL_50;
            }

            goto LABEL_82;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_82;
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

            goto LABEL_82;
        }
      }

      v12 = v14 + 1;
      v24 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v24 == 4)
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
          if (v24 == 6)
          {
            v48 = 16 * (v17 & 0x7FFFFFF);
            v49 = a1[2];
            v50 = *(v49 + v48);
            *(v49 + v48) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v50;
            }
          }

          else if (v24 == 7)
          {
            v51 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v52 = *(v51 + 8);
            *(v51 + 8) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v52;
            }
          }

          else
          {
            result = 0;
            if (v24 == 8)
            {
              result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v42 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v43 = *(*a1 + 8);
                  if ((*(v43 + 8 * v42) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v44 = *(v43 + 8 * (v42 + 1)) & 0x7FFFFFFLL;
                  v45 = v44 + v42 + 1;
                  v46 = v44 + v42;
                  if ((*(v43 + 8 * v45) & 0xF8000000) == 0x88000000)
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  result = sbackref(a1, a2, a3, v42 + 2, a5, a6, a7);
                  v42 = v47;
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

        if (v24)
        {
          if (v24 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
          }

          else
          {
            result = 0;
            if (v24 != 3)
            {
              return result;
            }

            v41 = a1[7];
            if (a2 != *(v41 + 8 * a6))
            {
              *(v41 + 8 * a6) = a2;
              result = sbackref(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }
            }

            --a6;
          }

          if (v12 < a5)
          {
            goto LABEL_3;
          }

          break;
        }

        v26 = v17 & 0x7FFFFFF;
        v27 = (a1[2] + 16 * v26);
        v28 = v27[1];
        if (v28 == -1)
        {
          return 0;
        }

        v29 = *v27;
        v30 = v28 - v29;
        if (v28 == v29)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v30] || memcmp(a2, (a1[3] + v29), v30))
        {
          return 0;
        }

        do
        {
          v31 = *(v16 + 8 * v14++);
        }

        while (v31 != (v26 | 0x40000000));
        a2 += v30;
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
      v7 = (*(a1 + 8) + 8 * a2);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v12 = a5 == v8;
          goto LABEL_28;
        case 2uLL:
          v12 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_28;
        case 3uLL:
          v12 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_28;
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

          v10 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
          if ((*(v10 + 8) & *(*v10 + a5)) == 0)
          {
            break;
          }

          v9 = v6 & a4;
LABEL_5:
          a6 |= 2 * v9;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v9 = a6 & v6;
          goto LABEL_5;
        case 9uLL:
          v13 = a6 | (2 * (a6 & v6));
          a6 = ((v13 & v6) >> v8) | v13;
          if (((v6 >> v8) & v13) == 0 && (a6 & (v6 >> v8)) != 0)
          {
            a2 += ~(*v7 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (a6 & v6))) & v6) << v8) | (2 * (a6 & v6));
          break;
        case 0xFuLL:
          if ((a6 & v6) == 0)
          {
            break;
          }

          v15 = v7[1];
          if ((v15 & 0xF8000000) == 0x90000000)
          {
            LOBYTE(v16) = 1;
          }

          else
          {
            v16 = 1;
            do
            {
              v16 += v15 & 0x7FFFFFF;
              v15 = v7[v16];
            }

            while ((v15 & 0xF8000000) != 0x90000000);
          }

          v11 = (a6 & v6) << v16;
          goto LABEL_36;
        case 0x10uLL:
          a6 |= 2 * (a6 & v6);
          if ((v7[*v7 & 0x7FFFFFF] & 0xF8000000) == 0x90000000)
          {
            break;
          }

          v11 = (a6 & v6) << v8;
LABEL_36:
          a6 |= v11;
          break;
        case 0x12uLL:
          v12 = a5 == 133;
          goto LABEL_28;
        case 0x13uLL:
          v12 = a5 == 134;
LABEL_28:
          if (v12)
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

char *sstep_back(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  result = a3 - 1;
  v7 = a5 - a4;
  if (a5 > a4)
  {
    v8 = (*(a1 + 8) + 8 * a4 + 8);
    for (i = ~a4; ; --i)
    {
      v10 = *(v8 - 2);
      if ((v10 & 0xF8000000) != 0x70000000)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        return result;
      }
    }

    if ((v10 & 0xF8000000) == 0x10000000 && result != a2)
    {
      v12 = -i;
      v13 = v10;
      for (j = a3; ; --j)
      {
        if (v13 == *(j - 1))
        {
          if (v12 >= a5)
          {
            return result;
          }

          if ((*v8 & 0xF8000000) != 0x10000000 || j >= a3)
          {
            return j - 1;
          }

          if (*j == *v8)
          {
            return result;
          }
        }

        --result;
        v16 = j - 2;
        if (v16 == a2)
        {
          return a2;
        }
      }
    }
  }

  return result;
}

char *lslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
LABEL_12:
    v12 = a1[10];
    __dst = a1[12];
    __s2 = a1[13];
    if (a2 == a1[4])
    {
      v13 = 128;
    }

    else
    {
      v13 = *(a2 - 1);
    }

    bzero(v12, *(*a1 + 48));
    *(v12 + v6) = 1;
    lstep(*a1, v6, a5, v12, 132, v12);
    v14 = 0;
    while (1)
    {
      if (a2 == a1[5])
      {
        v15 = 128;
      }

      else
      {
        v15 = *a2;
      }

      if (v13 == 128)
      {
        if ((a1[1] & 1) == 0)
        {
          v16 = *a1;
LABEL_25:
          v17 = *(v16 + 76);
          v18 = 129;
          v19 = 131;
          goto LABEL_27;
        }
      }

      else if (v13 == 10)
      {
        v16 = *a1;
        if ((*(*a1 + 40) & 8) != 0)
        {
          goto LABEL_25;
        }
      }

      v18 = 0;
      v17 = 0;
      v19 = 130;
LABEL_27:
      if (v15 == 128)
      {
        if ((a1[1] & 2) == 0)
        {
          v20 = *a1;
LABEL_33:
          v17 += *(v20 + 80);
          goto LABEL_35;
        }
      }

      else if (v15 == 10)
      {
        v20 = *a1;
        if ((*(*a1 + 40) & 8) != 0)
        {
          goto LABEL_33;
        }
      }

      v19 = v18;
LABEL_35:
      if (v17 >= 1)
      {
        v21 = v17 + 1;
        do
        {
          lstep(*a1, v6, a5, v12, v19, v12);
          --v21;
        }

        while (v21 > 1);
      }

      if (v19 == 129)
      {
        if (v15 == 128)
        {
          v19 = 129;
        }

        else
        {
LABEL_48:
          if (v15 > 0x7Fu)
          {
            v23 = __maskrune(v15, 0x500uLL);
          }

          else
          {
            v23 = *(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x500;
          }

          if (v15 == 95 || v23 != 0)
          {
            v19 = 133;
          }
        }

        if (v13 == 128)
        {
          goto LABEL_63;
        }

        v22 = v13;
        goto LABEL_58;
      }

      if (v13 == 128)
      {
        goto LABEL_63;
      }

      v22 = v13;
      if (v13 > 0x7Fu)
      {
        if (__maskrune(v13, 0x500uLL))
        {
          goto LABEL_58;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x500) != 0)
      {
        goto LABEL_58;
      }

      if (v13 != 95 && v15 != 128)
      {
        goto LABEL_48;
      }

LABEL_58:
      if (v22 > 0x7F)
      {
        if (__maskrune(v22, 0x500uLL))
        {
          goto LABEL_66;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500) != 0)
      {
        goto LABEL_66;
      }

      if (v13 != 95)
      {
LABEL_63:
        v25 = __s2;
        goto LABEL_64;
      }

LABEL_66:
      if (v19 == 130)
      {
        v19 = 134;
        v25 = __s2;
LABEL_68:
        lstep(*a1, v6, a5, v12, v19, v12);
        goto LABEL_69;
      }

      v25 = __s2;
      if (v15 != 128)
      {
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_64;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x500) != 0)
        {
          goto LABEL_64;
        }

        if (v15 != 95)
        {
          v19 = 134;
          goto LABEL_68;
        }
      }

LABEL_64:
      if ((v19 - 133) <= 1)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (*(v12 + a5))
      {
        v14 = a2;
      }

      v26 = *(*a1 + 48);
      v27 = memcmp(v12, v25, v26);
      if (a2 == a3 || !v27)
      {
        return v14;
      }

      memmove(__dst, v12, v26);
      memmove(v12, v25, *(*a1 + 48));
      lstep(*a1, v6, a5, __dst, v15, v12);
      ++a2;
      v13 = v15;
    }
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_10;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_12;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_10:
    if (a5 == ++v6)
    {
      v6 = a5;
      goto LABEL_12;
    }
  }
}

char *ldissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    while (1)
    {
      v10 = v7;
      v11 = *(*a1 + 8);
      v12 = *(v11 + 8 * v7);
      v13 = v12 & 0xF8000000;
      if ((v12 & 0xF8000000) == 0x48000000 || v13 == 1476395008)
      {
        v15 = (v12 & 0x7FFFFFF) + v7;
      }

      else
      {
        v16 = v13 != 2013265920 || (v12 & 0xF8000000) == 2415919104;
        v15 = v7;
        if (!v16)
        {
          v17 = *(v11 + 8 * v7);
          v15 = v7;
          do
          {
            v15 += v17 & 0x7FFFFFF;
            v17 = *(v11 + 8 * v15);
          }

          while ((v17 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v15 + 1;
      v18 = ((v12 & 0xF8000000) - 0x8000000) >> 27;
      if (v18 > 9)
      {
        if (((v12 & 0xF8000000) - 0x8000000) >> 27 <= 0xC)
        {
          if (v18 == 10)
          {
            v34 = a1;
            v35 = v5;
            v36 = a3;
            while (1)
            {
              v22 = lslow(v34, v35, v36, v10, v15 + 1);
              if (lslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v36 = sstep_back(*a1, v5, v22, v15 + 1, a5);
              v34 = a1;
              v35 = v5;
            }

            if (!lslow(a1, v5, v22, v10 + 1, v15))
            {
              goto LABEL_55;
            }

            v33 = v10 + 1;
            v30 = a1;
            v31 = v5;
            v32 = v22;
            goto LABEL_43;
          }

          if (v18 == 12)
          {
            *(a1[2] + 16 * (v12 & 0x7FFFFFF)) = &v5[-a1[3]];
          }

          goto LABEL_40;
        }

        if (v18 == 13)
        {
          *(a1[2] + 16 * (v12 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
LABEL_40:
          v22 = v5;
          goto LABEL_55;
        }

        v23 = a3;
        if (v18 == 14)
        {
          do
          {
            v22 = lslow(a1, v5, v23, v10, v15 + 1);
            v24 = lslow(a1, v22, a3, v15 + 1, a5);
            v23 = v22 - 1;
          }

          while (v24 != a3);
          v15 = v10 + (*(*(*a1 + 8) + 8 * v10) & 0x7FFFFFFLL) - 1;
          v25 = v10 + 1;
          while (lslow(a1, v5, v22, v25, v15) != v22)
          {
            v26 = *(*a1 + 8);
            v27 = *(v26 + 8 * (v15 + 1)) & 0x7FFFFFFLL;
            v28 = v27 + v15 + 1;
            v29 = v27 + v15;
            v25 = v15 + 2;
            if ((*(v26 + 8 * v28) & 0xF8000000) == 0x88000000)
            {
              v15 = v29;
            }

            else
            {
              v15 = v28;
            }
          }

          v30 = a1;
          v31 = v5;
          v32 = v22;
          v33 = v25;
LABEL_43:
          ldissect(v30, v31, v32, v33, v15);
          goto LABEL_55;
        }

        v22 = v5;
      }

      else
      {
        if (v18 - 4 >= 2 && v18 != 1)
        {
          if (v18 == 8)
          {
            v19 = a1;
            v20 = v5;
            v21 = a3;
            while (1)
            {
              v22 = lslow(v19, v20, v21, v10, v15 + 1);
              if (lslow(a1, v22, a3, v15 + 1, a5) == a3)
              {
                break;
              }

              v21 = sstep_back(*a1, v5, v22, v15 + 1, a5);
              v19 = a1;
              v20 = v5;
            }

            v37 = v5;
            do
            {
              v38 = v37;
              v37 = v5;
              v39 = lslow(a1, v5, v22, v10 + 1, v15);
              v5 = v39;
            }

            while (v39 && v39 != v37);
            if (v39)
            {
              v40 = v37;
            }

            else
            {
              v40 = v38;
            }

            if (v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v37;
            }

            ldissect(a1, v40, v41, v10 + 1, v15);
            goto LABEL_55;
          }

          goto LABEL_40;
        }

        v22 = v5 + 1;
      }

LABEL_55:
      v5 = v22;
      if (v7 >= a5)
      {
        return v22;
      }
    }
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
            goto LABEL_31;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_31;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_31;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_31;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_31;
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
          goto LABEL_6;
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
LABEL_6:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_31;
        case 0x13uLL:
          if (a5 == 134)
          {
LABEL_31:
            *(a6 + 1 + a2) |= *(a4 + a2);
          }

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

unint64_t llvm::xxHash64(uint64_t *a1, unint64_t a2)
{
  v2 = (a1 + a2);
  if (a2 < 0x20)
  {
    v12 = 0x27D4EB2F165667C5;
    v7 = a1;
  }

  else
  {
    v3 = 0;
    v4 = 0x61C8864E7A143579;
    v5 = 0x60EA27EEADC0B5D6;
    v6 = 0xC2B2AE3D27D4EB4FLL;
    v7 = a1;
    do
    {
      v8 = __ROR8__(v5 - 0x3D4D51C2D82B14B1 * *v7, 33);
      v5 = 0x9E3779B185EBCA87 * v8;
      v9 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * v7[1], 33);
      v6 = 0x9E3779B185EBCA87 * v9;
      v10 = __ROR8__(v3 - 0x3D4D51C2D82B14B1 * v7[2], 33);
      v3 = 0x9E3779B185EBCA87 * v10;
      v11 = __ROR8__(v4 - 0x3D4D51C2D82B14B1 * v7[3], 33);
      v4 = 0x9E3779B185EBCA87 * v11;
      v7 += 4;
    }

    while (v7 <= v2 - 4);
    v12 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((((0x3C6EF3630BD7950ELL * v8) | (v5 >> 63)) + 0x1BBCD8C2F5E54380 * v9 + (v6 >> 57) + 0x779B185EBCA87000 * v10 + (v3 >> 52) - 0x1939E850D5E40000 * v11 + (v4 >> 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v8, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v11, 33)));
  }

  v13 = v12 + a2;
  if (v7 + 1 <= v2)
  {
    v15 = v7;
    do
    {
      v16 = *v7++;
      v13 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v16, 33)) ^ v13, 37);
      v14 = v15 + 1;
      v17 = (v15 + 2);
      ++v15;
    }

    while (v17 <= v2);
  }

  else
  {
    v14 = v7;
  }

  if ((v14 + 4) <= v2)
  {
    v18 = *v7;
    v7 = (v7 + 4);
    v13 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v18) ^ v13, 41);
  }

  if (v7 < v2)
  {
    v19 = (a1 + a2 - v7);
    do
    {
      v20 = *v7;
      v7 = (v7 + 1);
      v13 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v20) ^ v13, 53);
      --v19;
    }

    while (v19);
  }

  v21 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v13 ^ (v13 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v13 ^ (v13 >> 33))) >> 29));
  return v21 ^ HIDWORD(v21);
}

void llvm::sys::DynamicLibrary::HandleSet::~HandleSet(llvm::sys::DynamicLibrary::HandleSet *this)
{
  v3 = *this;
  for (i = *(this + 1); i != v3; i -= 8)
  {
    v4 = *(i - 8);
    dlclose(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dlclose(v5);
  }

  llvm::sys::DynamicLibrary::SearchOrder = 0;
  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

void *llvm::sys::DynamicLibrary::HandleSet::DLOpen(const char *a1, uint64_t a2)
{
  result = dlopen(a1, 9);
  if (!result)
  {
    if (a2)
    {
      v4 = dlerror();
      MEMORY[0x277C69AB0](a2, v4);
    }

    return &llvm::sys::DynamicLibrary::Invalid;
  }

  return result;
}

void anonymous namespace::getGlobals(_anonymous_namespace_ *this)
{
  {
    unk_2809A2FF0 = 0;
    qword_2809A2FF8 = 0x1000000000;
    unk_2809A3000 = 0u;
    unk_2809A3010 = 0u;
    unk_2809A3020 = 0u;
    unk_2809A3030 = 0u;
    MEMORY[0x277C69C30](&stru_2809A3040);
    dword_2809A3080 = 0;
  }
}

void *llvm::sys::DynamicLibrary::getPermanentLibrary(_anonymous_namespace_ *a1, uint64_t a2)
{
  v4 = llvm::sys::DynamicLibrary::HandleSet::DLOpen(a1, a2);
  if (v4 != &llvm::sys::DynamicLibrary::Invalid)
  {
    std::recursive_mutex::lock(&stru_2809A3040);
    llvm::sys::DynamicLibrary::HandleSet::AddLibrary(&unk_2809A3000, v4, a1 == 0, 1, 0);
    std::recursive_mutex::unlock(&stru_2809A3040);
  }

  return v4;
}

uint64_t llvm::sys::DynamicLibrary::HandleSet::AddLibrary(llvm::sys::DynamicLibrary::HandleSet *this, void *__handle, char a3, int a4, int a5)
{
  if ((a3 & 1) == 0)
  {
    if (a5)
    {
      v7 = *(this + 1);
LABEL_12:
      v10 = *(this + 2);
      if (v7 >= v10)
      {
        v12 = *this;
        v13 = v7 - *this;
        v14 = v13 >> 3;
        v15 = (v13 >> 3) + 1;
        if (v15 >> 61)
        {
          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        v16 = v10 - v12;
        if (v16 >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          if (!(v17 >> 61))
          {
            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        *(8 * v14) = __handle;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        *this = 0;
        *(this + 1) = v11;
        *(this + 2) = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v7 = __handle;
        v11 = (v7 + 1);
      }

      *(this + 1) = v11;
      return 1;
    }

    v8 = *this;
    v7 = *(this + 1);
    if (*this != v7)
    {
      while (*v8 != __handle)
      {
        if (++v8 == v7)
        {
          goto LABEL_12;
        }
      }
    }

    if (v8 == v7)
    {
      goto LABEL_12;
    }

    if (a4)
    {
      dlclose(__handle);
    }

    return 0;
  }

  v18 = *(this + 3);
  if (v18)
  {
    if (a4)
    {
      dlclose(v18);
      v18 = *(this + 3);
    }

    if (v18 == __handle)
    {
      return 0;
    }
  }

  *(this + 3) = __handle;
  return 1;
}

void anonymous namespace::Globals::~Globals(_anonymous_namespace_::Globals *this)
{
  std::recursive_mutex::~recursive_mutex((this + 88));
  llvm::sys::DynamicLibrary::HandleSet::~HandleSet((this + 56));
  llvm::sys::DynamicLibrary::HandleSet::~HandleSet((this + 24));
  if (*(this + 3))
  {
    v2 = *(this + 2);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*this + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x277C69E30]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*this);
}

void *llvm::sys::Memory::allocateMappedMemory@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = std::system_category();
  v11 = result;
  while (1)
  {
    *a4 = 0;
    *(a4 + 8) = v11;
    if (!a1)
    {
      break;
    }

    v12 = a2;
    PosixProtectionFlags = getPosixProtectionFlags(a3);
    if (a2)
    {
      v14 = a2[1] + *a2;
    }

    else
    {
      v14 = 0;
    }

    {
      v22 = PosixProtectionFlags;
      PosixProtectionFlags = v22;
      if (v19)
      {
        llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize = llvm::sys::Process::getPageSizeEstimate(v19);
        PosixProtectionFlags = v22;
      }
    }

    v15 = a1 - 1 + llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize;
    if (v14 % llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize)
    {
      v16 = llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize + v14 - v14 % llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize;
    }

    else
    {
      v16 = v14;
    }

    if (v14)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v15 / llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize;
    result = mmap(v17, v15 / llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize * llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize, PosixProtectionFlags, 4098, -1, 0);
    if (result != -1)
    {
      *&v23 = result;
      *(&v23 + 1) = llvm::sys::Memory::allocateMappedMemory(unsigned long,llvm::sys::MemoryBlock const*,unsigned int,std::error_code &)::PageSize * v18;
      LODWORD(v24) = a3;
      if ((a3 & 0x4000000) == 0 || (result = llvm::sys::Memory::protectMappedMemory(&v23, a3), *a4 = result, *(a4 + 8) = v20, v11 == v20) && !result)
      {
        *a5 = v23;
        *(a5 + 16) = v24;
        return result;
      }

      break;
    }

    a2 = 0;
    if (!v12)
    {
      v21 = *__error();
      result = std::generic_category();
      *a4 = v21;
      *(a4 + 8) = result;
      break;
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t llvm::sys::Memory::protectMappedMemory(uint64_t a1, int a2)
{
  {
    if (v14)
    {
      llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize = 63 - __clz(llvm::sys::Process::getPageSizeEstimate(v14));
    }
  }

  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    PosixProtectionFlags = getPosixProtectionFlags(a2);
    v7 = PosixProtectionFlags;
    v8 = -(1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize);
    v9 = ((v4 + (-1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize) + (1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize)) & v8);
    v10 = (v4 + v5 + (1 << llvm::sys::Memory::protectMappedMemory(llvm::sys::MemoryBlock const&,unsigned int)::PageSize) - 1) & v8;
    if ((a2 & 0x4000000) != 0)
    {
      v11 = v10 - v9;
      if (PosixProtectionFlags)
      {
        if (!mprotect(v9, v10 - v9, PosixProtectionFlags))
        {
          sys_icache_invalidate(*a1, *(a1 + 8));
LABEL_17:
          std::system_category();
          return 0;
        }

        goto LABEL_14;
      }

      if (mprotect(v9, v10 - v9, PosixProtectionFlags | 1))
      {
LABEL_14:
        v12 = *__error();
        goto LABEL_15;
      }

      sys_icache_invalidate(*a1, *(a1 + 8));
    }

    else
    {
      v11 = v10 - v9;
    }

    if (!mprotect(v9, v11, v7))
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v12 = 22;
LABEL_15:
  std::generic_category();
  return v12;
}

uint64_t llvm::sys::Memory::releaseMappedMemory(uint64_t a1)
{
  v2 = *a1;
  if (v2 && (v3 = *(a1 + 8)) != 0)
  {
    if (munmap(v2, v3))
    {
      v4 = *__error();
      std::generic_category();
    }

    else
    {
      std::system_category();
      v4 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v4;
}

unint64_t llvm::sys::path::begin@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = result;
  *a4 = result;
  *(a4 + 8) = a2;
  v20[0] = result;
  v20[1] = a2;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_50;
  }

  if (a3 >= 2)
  {
    result = *result;
    if (a2 == 1)
    {
      goto LABEL_32;
    }

    if ((result & 0x80) != 0)
    {
      result = __maskrune(result, 0x100uLL);
      if (!result)
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = *(MEMORY[0x277D85DE0] + 4 * result + 60) & 0x100;
      if (!result)
      {
        goto LABEL_11;
      }
    }

    if (v5[1] == 58)
    {
      v8 = 2;
      goto LABEL_50;
    }
  }

LABEL_11:
  result = *v5;
  if (a2 >= 3)
  {
    v9 = a3 > 1 && result == 92;
    v10 = v9;
    v11 = result != 47 && !v10;
    if (!v11 && result == v5[1])
    {
      v12 = v5[2];
      v13 = a3 > 1 && v12 == 92;
      v14 = v13;
      if (v12 != 47 && !v14)
      {
        v15 = 2;
LABEL_41:
        if (a3 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v19 = "\\/";
        }

        result = llvm::StringRef::find_first_of(v20, v19, v18, v15);
        if (a2 >= result)
        {
          v8 = result;
        }

        else
        {
          v8 = a2;
        }

        goto LABEL_50;
      }
    }
  }

LABEL_32:
  v17 = a3 > 1 && result == 92;
  v8 = 1;
  if (result != 47 && !v17)
  {
    v15 = 0;
    goto LABEL_41;
  }

LABEL_50:
  *(a4 + 16) = v5;
  *(a4 + 24) = v8;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

uint64_t *llvm::sys::path::const_iterator::operator++(uint64_t *a1)
{
  v2 = a1[3];
  v3 = a1[4] + v2;
  a1[4] = v3;
  v4 = a1[1];
  if (v3 == v4)
  {
    a1[2] = 0;
    a1[3] = 0;
    return a1;
  }

  if (v2 <= 2)
  {
    v12 = 0;
    v7 = *(a1 + 10);
  }

  else
  {
    v5 = a1[2];
    v6 = *v5;
    v7 = *(a1 + 10);
    if ((v6 == 47 || (v6 == 92 ? (v8 = v7 >= 2) : (v8 = 0), v8)) && v5[1] == v6)
    {
      v9 = v5[2];
      v11 = v7 < 2 || v9 != 92;
      v12 = v9 != 47 && v11;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = *a1;
  v14 = *(*a1 + v3);
  if (v14 != 47 && (v7 < 2 || v14 != 92))
  {
    goto LABEL_47;
  }

  if (!v12 && (!v2 || v7 <= 1 || *(a1[2] + v2 - 1) != 58))
  {
    while (1)
    {
      v18 = *(v13 + v3);
      v19 = v7 > 1 && v18 == 92;
      v20 = v19;
      if (v18 != 47 && !v20)
      {
        break;
      }

      a1[4] = ++v3;
      if (v4 == v3)
      {
        if (v2 != 1 || (v3 = v4, *a1[2] != 47))
        {
          a1[4] = v4 - 1;
          v16 = ".";
          v17 = 1;
          goto LABEL_30;
        }

        break;
      }
    }

LABEL_47:
    if (v7 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v7 <= 1)
    {
      v23 = "/";
    }

    else
    {
      v23 = "\\/";
    }

    first_of = llvm::StringRef::find_first_of(a1, v23, v22, v3);
    if (v4 >= v3)
    {
      v25 = v3;
    }

    else
    {
      v25 = v4;
    }

    if (v25 <= first_of)
    {
      v26 = first_of;
    }

    else
    {
      v26 = v3;
    }

    if (v26 >= v4)
    {
      v26 = v4;
    }

    a1[2] = v13 + v25;
    a1[3] = v26 - v25;
    return a1;
  }

  if (v4 >= v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = a1[1];
  }

  v16 = (v13 + v15);
  v17 = v4 > v3;
LABEL_30:
  a1[2] = v16;
  a1[3] = v17;
  return a1;
}

uint64_t *llvm::sys::path::reverse_iterator::operator++(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 10);
  v6 = a1[4];
  if (v6)
  {
    v7 = v5 + 1;
    v8 = a1[4];
    while (v7 != v8)
    {
      v9 = v2[v8 - 1];
      v11 = v4 > 1 && v9 == 92;
      if (v9 != 47 && !v11)
      {
        v7 = v8;
        break;
      }

      if (!--v8)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v7 = 0;
  }

  if (v3)
  {
    v13 = v6 == v3;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && ((v14 = v2[v3 - 1], v14 == 47) || v4 >= 2 && v14 == 92) && (v5 != -1 ? (v15 = v7 - 1 > v5) : (v15 = 1), v15))
  {
    a1[2] = ".";
    a1[3] = 1;
    a1[4] = v3 - 1;
  }

  else
  {
    if (v3 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v3;
    }

    if (v3 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v3;
    }

    if (v18 <= v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = v17;
    }

    if (v19 >= v3)
    {
      v19 = v3;
    }

    a1[2] = &v2[v18];
    a1[3] = v19 - v18;
    a1[4] = v17;
  }

  return a1;
}

unint64_t anonymous namespace::root_dir_start(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v18[0] = a1;
  v18[1] = a2;
  if (a3 >= 2)
  {
    if (a2 < 3)
    {
      goto LABEL_33;
    }

    if (a1[1] == 58)
    {
      v3 = a1[2];
      v4 = 2;
      if (v3 == 47 || v3 == 92)
      {
        return v4;
      }
    }
  }

  if (a2 >= 4)
  {
    v5 = *a1;
    v7 = a3 > 1 && v5 == 92;
    v8 = v5 != 47 && !v7;
    if (!v8 && v5 == a1[1])
    {
      v9 = a1[2];
      v10 = a3 > 1 && v9 == 92;
      v11 = v10;
      if (v9 != 47 && !v11)
      {
        v12 = a3 > 1;
        if (a3 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        if (v12)
        {
          v14 = "\\/";
        }

        else
        {
          v14 = "/";
        }

        return llvm::StringRef::find_first_of(v18, v14, v13, 2uLL);
      }
    }

    goto LABEL_35;
  }

LABEL_33:
  if (!a2)
  {
    return -1;
  }

  v5 = *a1;
LABEL_35:
  v4 = 0;
  v16 = a3 > 1 && v5 == 92;
  if (v5 != 47 && !v16)
  {
    return -1;
  }

  return v4;
}

unint64_t anonymous namespace::filename_pos(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v17[0] = a1;
  v17[1] = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      return v6;
    }
  }

  else
  {
    v6 = -1;
  }

  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (a3 <= 1)
  {
    v9 = "/";
  }

  else
  {
    v9 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(v17, v9, v8, v6);
  if (a3 >= 2 && last_of == -1)
  {
    if (a2 >= a2 - 2)
    {
      v11 = a2 - 2;
    }

    else
    {
      v11 = a2;
    }

    while (v11)
    {
      last_of = v11 - 1;
      v12 = a1[--v11];
      if (v12 == 58)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (last_of == -1)
  {
    return 0;
  }

  if (last_of != 1)
  {
    return last_of + 1;
  }

  v6 = 0;
  v13 = *a1;
  v14 = a3 > 1 && v13 == 92;
  v15 = v14;
  if (v13 != 47 && !v15)
  {
    return last_of + 1;
  }

  return v6;
}

unsigned __int8 *llvm::sys::path::root_name(unint64_t a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v12);
  if (v12 == a1 && v15 == a2)
  {
    return 0;
  }

  if (v14 < 3)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v13;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = v13[1] == v7;
    }
  }

  if (a3 >= 2 && v14)
  {
    v10 = v13;
    v11 = v13[v14 - 1] == 58;
  }

  else
  {
    v11 = 0;
    v10 = v13;
  }

  if (v8 || v11)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::sys::path::root_directory(unint64_t a1, unint64_t a2, unsigned int a3)
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
  if (a3 >= 2 && *(&v22 + 1))
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

void llvm::sys::path::append(void *a1, const llvm::Twine *a2, const char **a3, const char **a4, const char **a5, const char **a6)
{
  v53[4] = *MEMORY[0x277D85DE8];
  v51 = v53;
  v52 = xmmword_2750C1200;
  v48 = v50;
  v49 = xmmword_2750C1200;
  v45 = v47;
  v46 = xmmword_2750C1200;
  v42 = v44;
  v43 = xmmword_2750C1200;
  v39 = v41;
  v40 = 0x400000000;
  if (*(a3 + 32) >= 2u)
  {
    v11 = llvm::Twine::toStringRef(a3, &v51);
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v39, v11, v12);
  }

  if (*(a4 + 32) >= 2u)
  {
    v13 = llvm::Twine::toStringRef(a4, &v48);
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v39, v13, v14);
  }

  if (*(a5 + 32) >= 2u)
  {
    v15 = llvm::Twine::toStringRef(a5, &v45);
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v39, v15, v16);
  }

  if (*(a6 + 32) >= 2u)
  {
    v17 = llvm::Twine::toStringRef(a6, &v42);
    llvm::SmallVectorTemplateBase<std::pair<void *,unsigned long>,true>::push_back(&v39, v17, v18);
  }

  v19 = v39;
  if (v40)
  {
    if (a2 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (a2 <= 1)
    {
      v21 = "/";
    }

    else
    {
      v21 = "\\/";
    }

    if (a2 == 3)
    {
      v22 = 92;
    }

    else
    {
      v22 = 47;
    }

    v23 = 16 * v40;
    do
    {
      v24 = a1[1];
      if (!v24 || ((v25 = *(*a1 + v24 - 1), a2 > 1) ? (v26 = v25 == 92) : (v26 = 0), !v26 ? (v27 = 0) : (v27 = 1), v25 != 47 ? (v28 = v27 == 0) : (v28 = 0), v28))
      {
        v35 = v19[1];
        if (!v35 || (v36 = **v19, v36 != 47) && (a2 < 2 || v36 != 92))
        {
          if (v24)
          {
            v38 = 261;
            v37[0] = *v19;
            v37[1] = v35;
            if (!llvm::sys::path::has_root_name(v37, a2))
            {
              llvm::SmallVectorTemplateBase<char,true>::push_back(a1, v22);
            }
          }
        }

        v33 = *v19;
        v34 = &v19[1][*v19];
      }

      else
      {
        first_not_of = llvm::StringRef::find_first_not_of(v19, v21, v20, 0);
        v31 = *v19;
        v30 = v19[1];
        if (v30 >= first_not_of)
        {
          v32 = first_not_of;
        }

        else
        {
          v32 = v19[1];
        }

        v33 = &v32[v31];
        v34 = &v30[v31];
      }

      llvm::SmallVectorImpl<char>::append<char const*,void>(a1, v33, v34);
      v19 += 2;
      v23 -= 16;
    }

    while (v23);
    v19 = v39;
  }

  if (v19 != v41)
  {
    free(v19);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }
}

BOOL llvm::sys::path::has_root_name(const char **this, const llvm::Twine *a2)
{
  v2 = a2;
  v10[16] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_2750C1290;
  v3 = llvm::Twine::toStringRef(this, &v8);
  llvm::sys::path::root_name(v3, v4, v2);
  v6 = v5;
  if (v8 != v10)
  {
    free(v8);
  }

  return v6 != 0;
}

unint64_t anonymous namespace::parent_path_end(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v7 = v6;
  if (a2)
  {
    v8 = a1[v6];
    v10 = a3 > 1 && v8 == 92;
    v11 = v8 == 47 || v10;
  }

  else
  {
    v11 = 0;
  }

  {
    if (i != -1 && v7 <= i)
    {
      break;
    }

    v13 = a1[v7 - 1];
    v14 = a3 > 1 && v13 == 92;
    v15 = v14;
    if (v13 != 47 && !v15)
    {
      break;
    }
  }

  if (v7 == i)
  {
    v17 = v11;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    return v7;
  }

  else
  {
    return i + 1;
  }
}

BOOL llvm::sys::path::has_root_directory(const char **this, const llvm::Twine *a2)
{
  v2 = a2;
  v10[16] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_2750C1290;
  v3 = llvm::Twine::toStringRef(this, &v8);
  llvm::sys::path::root_directory(v3, v4, v2);
  v6 = v5;
  if (v8 != v10)
  {
    free(v8);
  }

  return v6 != 0;
}

uint64_t llvm::sys::path::is_absolute(const char **this, const llvm::Twine *a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_2750C1290;
  v3 = llvm::Twine::toStringRef(this, &v12);
  v5 = v4;
  v11 = 261;
  v9 = v3;
  v10 = v4;
  has_root_directory = llvm::sys::path::has_root_directory(&v9, a2);
  if (a2 >= 2)
  {
    v11 = 261;
    v9 = v3;
    v10 = v5;
    has_root_name = llvm::sys::path::has_root_name(&v9, a2);
  }

  else
  {
    has_root_name = 1;
  }

  if (v12 != v14)
  {
    free(v12);
  }

  return has_root_directory & has_root_name;
}

uint64_t llvm::sys::fs::status(uint64_t a1, uint64_t a2, int a3)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_2750C1290;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v10);
  if (a3)
  {
    v6 = MEMORY[0x277D85F68](v5, v9);
  }

  else
  {
    v6 = MEMORY[0x277D85F38](v5, v9);
  }

  v7 = llvm::sys::fs::fillStatus(v6, v9, a2);
  if (v10 != v12)
  {
    free(v10);
  }

  return v7;
}

uint64_t llvm::sys::fs::create_directories(const char **a1, uint64_t a2, uint64_t a3)
{
  v18[16] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_2750C1290;
  v5 = llvm::Twine::toStringRef(a1, &v16);
  v7 = v6;
  v15 = 261;
  v13 = v5;
  v14 = v6;
  directory = llvm::sys::fs::create_directory(&v13, a2, a3);
  if (std::generic_category() == v9 && directory == 2)
  {
    v11 = v7 >= v10 ? v10 : v7;
    if (v10 != -1)
    {
      if (v11)
      {
        v15 = 261;
        v13 = v5;
        v14 = v11;
        directory = llvm::sys::fs::create_directories(&v13, a2, a3);
        if (!directory)
        {
          v15 = 261;
          v13 = v5;
          v14 = v7;
          directory = llvm::sys::fs::create_directory(&v13, a2, a3);
        }
      }
    }
  }

  if (v16 != v18)
  {
    free(v16);
  }

  return directory;
}

uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_2750C1290;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v8);
  if (mkdir(v5, a3) != -1 || *__error() == 17 && (a2 & 1) != 0)
  {
    std::system_category();
    v6 = 0;
  }

  else
  {
    v6 = *__error();
    std::generic_category();
  }

  if (v8 != v10)
  {
    free(v8);
  }

  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x277D85DE8];
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
        v9 = strlen(__s);
        llvm::SmallVectorImpl<char>::append<char const*,void>(a4, __s, &__s[v9]);
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

void llvm::sys::fs::directory_entry::replace_filename(uint64_t a1, const char **a2, int a3, __int128 *a4)
{
  v26[16] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v10 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (v11 == -1)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = v9;
  }

  __src = v26;
  *__len = xmmword_2750C1290;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&__src, v13, &v13[v12]);
  v23 = 257;
  v20 = 257;
  v18 = 257;
  llvm::sys::path::append(&__src, 0, a2, &__dst, v19, v17);
  v14 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (__len[0] >= 0x17)
  {
    operator new();
  }

  HIBYTE(v22) = __len[0];
  if (__len[0])
  {
    memmove(&__dst, __src, __len[0]);
  }

  *(&__dst + v14) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = __dst;
  *(a1 + 16) = v22;
  *(a1 + 24) = a3;
  v15 = *a4;
  v16 = a4[2];
  *(a1 + 48) = a4[1];
  *(a1 + 64) = v16;
  *(a1 + 32) = v15;
  if (__src != v26)
  {
    free(__src);
  }
}

void *llvm::sys::fs::readNativeFileToEOF@<X0>(uint64_t a1@<X0>, void *a2@<X1>, size_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v14 = *MEMORY[0x277D85DE8];
  v8 = a2[1];
  for (i = v8 + a3; ; i = v8 + a3)
  {
    llvm::SmallVectorImpl<char>::resizeImpl<true>(a2, i);
    result = llvm::sys::fs::readNativeFile(v6, (*a2 + v8), a3, &v12);
    if (v13)
    {
      break;
    }

    v11 = v12;
    if (!v12)
    {
      goto LABEL_6;
    }

    v8 += v12;
  }

  v11 = v12;
LABEL_6:
  *a4 = v11;
  a2[1] = v8;
  return result;
}

ssize_t llvm::sys::fs::readNativeFile@<X0>(int a1@<W0>, void *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  else
  {
    v7 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = read(a1, a2, v7);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v9 = *__error();
      *&v11.__val_ = std::generic_category();
      llvm::errorCodeToError(v9, v11, &v10);
      *(a4 + 8) |= 1u;
      result = v10;
      goto LABEL_8;
    }
  }

  *(a4 + 8) &= ~1u;
LABEL_8:
  *a4 = result;
  return result;
}

void *llvm::sys::fs::getMainExecutable@<X0>(void *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize) || !realpath_DARWIN_EXTSN(buf, __s))
  {
    v2 = &str_3_8;
  }

  else
  {
    v2 = __s;
  }

  return std::string::basic_string[abi:nn200100]<0>(a1, v2);
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_2750C1290;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v9);
  if (lstat(v3, &v8))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    std::system_category();
    v5 = 0;
    goto LABEL_14;
  }

  v6 = v8.st_mode & 0xF000;
  if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
  {
    v5 = 1;
    goto LABEL_13;
  }

  if (remove(v3, v4) != -1 || *__error() == 2 && (v2 & 1) != 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v5 = *__error();
LABEL_13:
  std::generic_category();
LABEL_14:
  if (v9 != v11)
  {
    free(v9);
  }

  return v5;
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v10[16] = *MEMORY[0x277D85DE8];
  v8 = v10;
  v9 = xmmword_2750C1290;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v8);
  v4 = v3;
  if (a2)
  {
    if (a2 == 2)
    {
      if (access(v3, 5) != -1)
      {
        if (stat(v4, &v7) || (v7.st_mode & 0xF000) != 0x8000)
        {
          std::generic_category();
          v5 = 13;
          goto LABEL_11;
        }

        goto LABEL_9;
      }

      goto LABEL_10;
    }

    a2 = 2;
  }

  if (access(v3, a2) != -1)
  {
LABEL_9:
    std::system_category();
    v5 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v5 = *__error();
  std::generic_category();
LABEL_11:
  if (v8 != v10)
  {
    free(v8);
  }

  return v5;
}

uint64_t llvm::sys::fs::fillStatus(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
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
    v6 = *(a2 + 5);
    v7 = *(a2 + 7);
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = llvm::sys::fs::typeForMode(v8);
    v11 = *a2;
    v12 = *(a2 + 3);
    v13 = *(a2 + 1);
    v14 = *(a2 + 6);
    v15 = *(a2 + 12);
    v16 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v14;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v16;
    *(a3 + 32) = v15;
    *(a3 + 40) = v10;
    *(a3 + 44) = v9;
    *(a3 + 48) = v11;
    *(a3 + 52) = v12;
    *(a3 + 56) = v13;
    std::system_category();
    return 0;
  }

  return v4;
}

uint64_t llvm::sys::fs::mapped_file_region::init(size_t *a1, int a2, off_t a3, int a4)
{
  if (a4 == 1)
  {
    v6 = 65;
  }

  else
  {
    v6 = 66;
  }

  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (a4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 24642;
  }

  v9 = mmap(0, *a1, v7, v8, a2, a3);
  a1[1] = v9;
  if (v9 == -1)
  {
    v10 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v10;
}

unint64_t llvm::sys::fs::detail::directory_iterator_construct(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = xmmword_2750C1290;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v22, a2, &a2[a3]);
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v22, 0);
  *&v23 = v23 - 1;
  v6 = opendir(v22);
  if (v6)
  {
    *a1 = v6;
    *&v13 = ".";
    *&v15[8] = 259;
    v21 = 257;
    v19 = 257;
    v17 = 257;
    llvm::sys::path::append(&v22, 0, &v13, v20, v18, v16);
    v21 = 261;
    v20[0] = v22;
    v20[1] = v23;
    llvm::Twine::str(v20, &v13);
    *v15 = 9;
    v15[4] = a4;
    memset(&v15[8], 0, 44);
    *&v15[52] = 0xFFFF;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = v13;
    *(a1 + 24) = v14;
    v8 = *&v15[16];
    *(a1 + 32) = *v15;
    *(a1 + 48) = v8;
    *(a1 + 64) = *&v15[32];
    *(a1 + 80) = *&v15[48];
    v9 = llvm::sys::fs::detail::directory_iterator_increment(a1, v7);
    v10 = v9;
    v11 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = *__error();
    std::generic_category();
    v11 = 0;
  }

  if (v22 != v24)
  {
    free(v22);
  }

  return v11 | v10;
}

unint64_t llvm::sys::fs::detail::directory_iterator_increment(DIR **this, llvm::sys::fs::detail::DirIterState *a2)
{
  *__error() = 0;
  v3 = readdir(*this);
  if (!v3)
  {
    if (!*__error())
    {
      v14 = llvm::sys::fs::detail::directory_iterator_destruct(this);
      v11 = v14 & 0xFFFFFFFF00000000;
      v9 = v14;
      return v11 | v9;
    }

    v9 = *__error();
    std::generic_category();
    goto LABEL_12;
  }

  v4 = v3;
  d_name = v3->d_name;
  v6 = strlen(v3->d_name);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v8 = *d_name;
      goto LABEL_9;
    }

LABEL_11:
    v18 = 261;
    v17[0] = d_name;
    v17[1] = v6;
    v12 = llvm::sys::fs::typeForMode(((v4->d_type & 0xF) << 12));
    v16 = 0u;
    memset(v15, 0, sizeof(v15));
    HIDWORD(v16) = 0xFFFF;
    llvm::sys::fs::directory_entry::replace_filename((this + 1), v17, v12, v15);
    std::system_category();
    v9 = 0;
LABEL_12:
    v11 = 0;
    return v11 | v9;
  }

  if (*d_name != 46)
  {
    goto LABEL_11;
  }

  v8 = v4->d_name[1];
LABEL_9:
  if (v8 != 46)
  {
    goto LABEL_11;
  }

  v10 = llvm::sys::fs::detail::directory_iterator_increment(this, v7);
  v9 = v10;
  v11 = v10 & 0xFFFFFFFF00000000;
  return v11 | v9;
}

uint64_t llvm::sys::fs::detail::directory_iterator_destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    closedir(v2);
  }

  *a1 = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
  *(a1 + 36) = 1;
  *(a1 + 37) = 0u;
  *(a1 + 53) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0xFFFF;
  std::system_category();
  return 0;
}

double llvm::sys::fs::directory_entry::status@<D0>(llvm::sys::fs::directory_entry *this@<X0>, uint64_t a2@<X8>)
{
  memset(v9, 0, 44);
  *&v9[44] = 0xFFFF;
  v8 = 260;
  v7 = this;
  v3 = llvm::sys::fs::status(&v7, v9, *(this + 28));
  if (v3)
  {
    *(a2 + 48) |= 1u;
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  else
  {
    *(a2 + 48) &= ~1u;
    v6 = *&v9[16];
    *a2 = *v9;
    *(a2 + 16) = v6;
    result = *&v9[32];
    *(a2 + 32) = *&v9[32];
  }

  return result;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v20[16] = *MEMORY[0x277D85DE8];
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
  v18 = v20;
  v19 = xmmword_2750C1290;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v18);
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
      goto LABEL_21;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    goto LABEL_22;
  }

LABEL_21:
  v16 = *__error();
  std::generic_category();
LABEL_22:
  if (v18 != v20)
  {
    free(v18);
  }

  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v7, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, a4);
    *(a4 + 8) |= 1u;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v7;
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
      llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      result = v12;
      goto LABEL_8;
    }
  }

  *(a5 + 8) &= ~1u;
LABEL_8:
  *a5 = result;
  return result;
}

void llvm::sys::fs::remove_directories(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4.__val_ = 0;
  v4.__cat_ = std::system_category();
  llvm::sys::fs::directory_iterator::directory_iterator(&v3, this, &v4, 0);
}

uint64_t llvm::sys::fs::typeForMode(llvm::sys::fs *this)
{
  if (this >> 12 == 7)
  {
    return 9;
  }

  else
  {
    return dword_2750C3D90[(this >> 12) ^ 8];
  }
}

void llvm::sys::fs::remove_directories_impl<llvm::sys::fs::directory_entry>(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x277D85DE8];
  std::system_category();
  v2 = 0;
  operator new();
}

void llvm::sys::Process::getPageSize(uint64_t *__return_ptr a1@<X8>)
{
  {
    llvm::sys::Process::getPageSize(void)::page_size = getpagesize();
  }

  v2 = llvm::sys::Process::getPageSize(void)::page_size;
  if (llvm::sys::Process::getPageSize(void)::page_size == -1)
  {
    v3 = *__error();
    *&v4.__val_ = std::generic_category();
    llvm::errorCodeToError(v3, v4, a1);
    *(a1 + 8) |= 1u;
  }

  else
  {
    *(a1 + 8) &= ~1u;
    *a1 = v2;
  }
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
  v1 = this;
  if (isatty(this))
  {
    {
      __cxa_atexit(MEMORY[0x277D82690], &terminalHasColors(int)::TermColorMutex, &dword_274E5C000);
    }

    std::mutex::lock(&terminalHasColors(int)::TermColorMutex);
    v2 = set_curterm(0);
    v20 = 0;
    v3 = setupterm(0, v1, &v20);
    v4 = 0;
    if (v3)
    {
      goto LABEL_45;
    }

    v5 = tigetnum("colors");
    if ((v5 & 0x80000000) == 0)
    {
      v4 = v5 != 0;
LABEL_44:
      v18 = set_curterm(v2);
      del_curterm(v18);
LABEL_45:
      std::mutex::unlock(&terminalHasColors(int)::TermColorMutex);
      return v4;
    }

    v6 = getenv("TERM");
    v8 = v6;
    if (!v6)
    {
LABEL_43:
      v4 = (v8 != 0) & v7;
      goto LABEL_44;
    }

    v9 = strlen(v6);
    switch(v9)
    {
      case 6uLL:
        if (*v8 == 2003269987 && *(v8 + 2) == 28265)
        {
          goto LABEL_42;
        }

        break;
      case 5uLL:
        v10 = v8[4];
        v11 = *v8 == 1970170220;
        v12 = 120;
        goto LABEL_24;
      case 4uLL:
        if (*v8 == 1769172577 || *v8 == 1953921138)
        {
LABEL_42:
          v7 = 1;
          goto LABEL_43;
        }

        goto LABEL_41;
      default:
        if (v9 < 6)
        {
LABEL_41:
          v7 = 0;
          goto LABEL_43;
        }

        break;
    }

    v10 = *(v8 + 2);
    v11 = *v8 == 1701995379;
    v12 = 28261;
LABEL_24:
    if (v11 && v10 == v12)
    {
      goto LABEL_42;
    }

    if (*v8 == 1919251576 && v8[4] == 109)
    {
      goto LABEL_42;
    }

    v16 = *v8 == 808547446 && v8[4] == 48;
    if (v16 || *v8 == 1953921138)
    {
      goto LABEL_42;
    }

    if (*&v8[v9 - 5] == 1869377379 && v8[v9 - 1] == 114)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  return 0;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = __n;
  v38[32] = *MEMORY[0x277D85DE8];
  if (!__n || (v9 = memchr(__s, 47, __n)) == 0 || v9 - __s == -1)
  {
    v37[0] = v38;
    v37[1] = 0x1000000000;
    if (a4)
    {
      v10 = &a3[16 * a4];
    }

    else
    {
      v18 = getenv("PATH");
      if (!v18 || (v19 = v18, v20 = strlen(v18), llvm::SplitString(v19, v20, v37, ":", 1), !LODWORD(v37[1])))
      {
LABEL_30:
        *(a5 + 24) |= 1u;
        v21 = std::generic_category();
        *a5 = 2;
        *(a5 + 8) = v21;
LABEL_31:
        if (v37[0] != v38)
        {
          free(v37[0]);
        }

        return result;
      }

      a3 = v37[0];
      v10 = v37[0] + 16 * LODWORD(v37[1]);
    }

    v23 = v7;
    while (1)
    {
      v11 = *(a3 + 1);
      if (v11)
      {
        v12 = *a3;
        __src = v36;
        __len = xmmword_2750C1290;
        llvm::SmallVectorImpl<char>::append<char const*,void>(&__src, v12, &v12[v11]);
        v33 = 261;
        *&__dst = __s;
        *(&__dst + 1) = v7;
        v30 = 257;
        v28 = 257;
        v26 = 257;
        llvm::sys::path::append(&__src, 0, &__dst, v29, v27, v25);
        llvm::SmallVectorTemplateBase<char,true>::push_back(&__src, 0);
        *&__len = __len - 1;
        v33 = 257;
        if (*__src)
        {
          *&__dst = __src;
          v13 = 3;
        }

        else
        {
          v13 = 1;
        }

        LOBYTE(v33) = v13;
        v14 = llvm::sys::fs::access(&__dst, 2);
        v15 = __src;
        v16 = v14;
        if (!v14)
        {
          v17 = __len;
          if (__len > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_35;
          }

          if (__len >= 0x17)
          {
            operator new();
          }

          HIBYTE(v32) = __len;
          if (__len)
          {
            memmove(&__dst, __src, __len);
          }

          *(&__dst + v17) = 0;
          v7 = v23;
          *(a5 + 24) &= ~1u;
          result = *&__dst;
          *a5 = __dst;
          *(a5 + 16) = v32;
          v15 = __src;
        }

        if (v15 != v36)
        {
          free(v15);
        }

        if (!v16)
        {
          goto LABEL_31;
        }
      }

      a3 += 16;
      if (a3 == v10)
      {
        goto LABEL_30;
      }
    }
  }

  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_35:
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v38[0]) = v7;
  memmove(v37, __s, v7);
  *(v37 + v7) = 0;
  *(a5 + 24) &= ~1u;
  result = *v37;
  *a5 = *v37;
  *(a5 + 16) = v38[0];
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
}

void *std::string::basic_string<llvm::StringRef,0>(void *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
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

uint64_t printSymbolizedStackTrace(unsigned __int8 *a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = a1;
  v22 = a2;
  if ((DisableSymbolicationFlag & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&v21, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v6 = std::system_category();
  v33 = -1;
  v31[0] = 0;
  v31[1] = v6;
  v7 = getenv("LLVM_SYMBOLIZER_PATH");
  if (v7)
  {
    v8 = v7;
    v9 = strlen(v7);
    v10 = v8;
    v11 = 0;
    v12 = 0;
LABEL_7:
    llvm::sys::findProgramByName(v10, v9, v11, v12, &__p);
    llvm::ErrorOr<std::string>::moveAssign<std::string>(v31, &__p);
    if ((v26 & 1) == 0 && SHIBYTE(v25) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_19;
  }

  v13 = v22;
  if (v22)
  {
    v14 = v21;
    v16 = (v13 >= v15 ? v15 : v13);
    if (v15 == -1)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    __dst[0] = v17;
    __dst[1] = v16;
    if (v16)
    {
      v10 = "llvm-symbolizer";
      v11 = __dst;
      v9 = 15;
      v12 = 1;
      goto LABEL_7;
    }
  }

LABEL_19:
  if ((v33 & 1) == 0)
  {
    goto LABEL_24;
  }

  llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
  llvm::ErrorOr<std::string>::moveAssign<std::string>(v31, &__p);
  if ((v26 & 1) == 0 && SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if ((v33 & 1) == 0)
  {
LABEL_24:
    v27 = 261;
    __p = v21;
    v24 = v22;
    if (llvm::sys::fs::access(&__p, 0))
    {
      llvm::sys::fs::getMainExecutable(__dst);
    }

    else
    {
      std::string::basic_string<llvm::StringRef,0>(__dst, &v21);
    }

    __p = 0;
    v24 = 0;
    v25 = &v27;
    v26 = 0x400000000;
    v28 = v30;
    v29 = 0;
    v30[0] = 0;
    v30[1] = 1;
    memset(v18, 0, sizeof(v18));
    if (a4)
    {
      if ((a4 & 0x80000000) == 0)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(v18, a4);
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(&__p);
    if (v20 < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v33 & 1) == 0 && v32 < 0)
    {
      operator delete(v31[0]);
    }
  }

  return 0;
}

void RemoveFilesToRemove(void)
{
  if (v0)
  {
    v1 = v0;
    do
    {
      v2 = atomic_exchange(v1, 0);
      if (v2 && !stat(v2, &v3) && (v3.st_mode & 0xF000) == 0x8000)
      {
        unlink(v2);
        atomic_exchange(v1, v2);
      }

      v1 = atomic_load((v1 + 8));
    }

    while (v1);
  }
}

void llvm::ErrorOr<std::string>::moveAssign<std::string>(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 24);
    if ((v4 & 1) == 0 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
      v4 = *(a1 + 24);
    }

    if (a2[3])
    {
      *(a1 + 24) = v4 | 1;
      if (a2[3])
      {
        v6 = *a2;
        v5 = a2[1];
      }

      else
      {
        v5 = std::system_category();
        v6 = 0;
      }

      *a1 = v6;
      *(a1 + 8) = v5;
    }

    else
    {
      *(a1 + 24) = v4 & 0xFE;
      v7 = *a2;
      *(a1 + 16) = a2[2];
      *a1 = v7;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
    }
  }
}

uint64_t *llvm::Expected<std::unique_ptr<llvm::object::Binary>>::~Expected(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else if (v3)
  {
LABEL_5:
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(a1, v7, a2);
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(uint64_t a1, void *a2, void *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *result = 0;
  *result = *a3;
  *a3 = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::moveFromOldBuckets(a1, v4, v4 + 24 * v3);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = 24 * v10 - 24;
    v13 = vdupq_n_s64(v12 / 0x18);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v14.i8[0])
      {
        *result = -8;
      }

      if (v14.i8[4])
      {
        result[3] = -8;
      }

      v11 += 2;
      result += 6;
    }

    while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v9 = 24 * v6 - 24;
    v10 = vdupq_n_s64(v9 / 0x18);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v11.i8[0])
      {
        *v8 = -8;
      }

      if (v11.i8[4])
      {
        v8[3] = -8;
      }

      v7 += 2;
      v8 += 6;
    }

    while (((v9 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v7);
  }

  if (a2 != a3)
  {
    do
    {
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v14 = 0;
        result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v14);
        v12 = v14;
        if ((*v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v12 = 0;
        *v12 = *v4;
        *v4 = 0;
        *(v12 + 8) = 0;
        *(v12 + 8) = *(v4 + 8);
        *(v4 + 8) = 0;
        *(v12 + 16) = *(v4 + 16);
        ++*(v5 + 8);
        v13 = *(v4 + 8);
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v13 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 24;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t std::optional<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>>::operator=[abi:nn200100]<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::operator=(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *a2 = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    v3 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16);
    *(a2 + 16) = v4;
    *(a1 + 24) = 1;
  }

  return a1;
}

atomic_uint *llvm::orc::ObjectLayer::add(uint64_t a1, llvm::orc::JITDylib *a2, uint64_t *a3, uint64_t a4)
{
  llvm::orc::JITDylib::getDefaultResourceTracker(&v14, a2);
  v7 = *a3;
  *a3 = 0;
  v10[0] = *a4;
  v10[1] = *(a4 + 8);
  *a4 = 0;
  *(a4 + 8) = 0;
  v11 = *(a4 + 16);
  *(a4 + 16) = 0;
  v12 = *(a4 + 24);
  v13 = v7;
  *(a4 + 24) = 0;
  (*(*a1 + 40))(a1, &v14, &v13, v10);
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v10);
  v8 = v13;
  v13 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  result = v14;
  if (v14)
  {
    return llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v14);
  }

  return result;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::erase(int32x2_t *a1, void *a2)
{
  v4 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>(a1, a2, &v4))
  {
    *v4 = -2;
    result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
    a1[1] = result;
  }

  return result;
}

void llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSExecutorAddr>,std::string,llvm::orc::ExecutorAddr>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_2750C12E0;
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v18, v8 + 16);
  v9 = v18;
  if (!v19)
  {
    v9 = 0;
  }

  v10[0] = v9;
  v10[1] = v19;
  if (!llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSExecutorAddr>::serialize<std::string,llvm::orc::ExecutorAddr>(v10, a2, a3))
  {
    getErrorErrorCat();
    v14 = 3;
    v15 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  v11 = v13;
  v12 = xmmword_2750C12E0;
  if (v19)
  {
    llvm::SmallVectorImpl<char>::operator=(&v11, &v18);
    v14 = a1;
    v15 = v17;
    v16 = xmmword_2750C12E0;
    if (v12)
    {
      llvm::SmallVectorImpl<char>::operator=(&v15, &v11);
    }
  }

  else
  {
    v14 = a1;
    v15 = v17;
    v16 = xmmword_2750C12E0;
  }

  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(a4, &v14);
  if (v15 != v17)
  {
    free(v15);
  }

  if (v11 != v13)
  {
    free(v11);
  }

  if (v18 != v20)
  {
    free(v18);
  }
}

void llvm::orc::shared::WrapperFunctionCall::Create<llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSExecutorAddr>,llvm::orc::ExecutorAddr>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_2750C12E0;
  llvm::SmallVectorImpl<char>::resizeImpl<false>(&v13, 8uLL);
  if (v14 < 8)
  {
    getErrorErrorCat();
    v9 = 3;
    v10 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,char const(&)[51],std::error_code>();
  }

  *v13 = *a2;
  v6 = v8;
  v7 = xmmword_2750C12E0;
  if (v14)
  {
    llvm::SmallVectorImpl<char>::operator=(&v6, &v13);
    v9 = a1;
    v10 = v12;
    v11 = xmmword_2750C12E0;
    if (v7)
    {
      llvm::SmallVectorImpl<char>::operator=(&v10, &v6);
    }
  }

  else
  {
    v9 = a1;
    v10 = v12;
    v11 = xmmword_2750C12E0;
  }

  llvm::Expected<llvm::orc::shared::WrapperFunctionCall>::Expected<llvm::orc::shared::WrapperFunctionCall>(a3, &v9);
  if (v10 != v12)
  {
    free(v10);
  }

  if (v6 != v8)
  {
    free(v6);
  }

  if (v13 != v15)
  {
    free(v13);
  }
}

void *llvm::jitlink::LinkGraph::addAnonymousSymbol(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v11 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  v12 = v11;
  v13 = 0x2000000000000000;
  if (!a5)
  {
    v13 = 0;
  }

  v14 = 0xC00000000000000;
  if (a6)
  {
    v14 = 0x1C00000000000000;
  }

  *v11 = 0;
  v11[1] = a2;
  v11[2] = v13 & 0xFE00000000000000 | a3 & 0x1FFFFFFFFFFFFFFLL | v14;
  v11[3] = a4;
  v15 = *(a2 + 16);
  v17 = v11;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v15 + 56, &v17, v18);
  return v12;
}

_DWORD *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::init(_DWORD *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    result[4] = v4;
    result = operator new(24 * v4, 8uLL);
    *v2 = result;
    *(v2 + 1) = 0;
    v5 = v2[4];
    if (v5)
    {
      v6 = 0;
      v7 = 24 * v5 - 24;
      v8 = vdupq_n_s64(v7 / 0x18);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_2750C1210)));
        if (v9.i8[0])
        {
          *result = -8;
        }

        if (v9.i8[4])
        {
          *(result + 3) = -8;
        }

        v6 += 2;
        result += 12;
      }

      while (((v7 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result[4] = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::LookupBucketFor<llvm::orc::JITDylib *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0x600000000;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::LookupBucketFor<llvm::orc::JITDylib *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 72 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::LookupBucketFor<llvm::orc::JITDylib *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::moveFromOldBuckets(a1, v4, v4 + 72 * v3);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = 72 * v10 - 72;
    v13 = vdupq_n_s64(v12 / 0x48);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v14.i8[0])
      {
        *result = -4096;
      }

      if (v14.i8[4])
      {
        result[9] = -4096;
      }

      v11 += 2;
      result += 18;
    }

    while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = 72 * v6 - 72;
    v10 = vdupq_n_s64(v9 / 0x48);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v11.i8[0])
      {
        *v8 = -4096;
      }

      if (v11.i8[4])
      {
        v8[9] = -4096;
      }

      v7 += 2;
      v8 += 18;
    }

    while (((v9 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v7);
  }

  if (a2 != a3)
  {
    do
    {
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::LookupBucketFor<llvm::orc::JITDylib *>(a1, v4, &v15);
        v12 = v15;
        *v15 = *v4;
        v12[2] = 0x600000000;
        v12[1] = v12 + 3;
        v13 = (v12 + 1);
        if (*(v4 + 16))
        {
          llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(v13, v4 + 8);
        }

        ++*(a1 + 8);
        v14 = *(v4 + 8);
        if ((v4 + 24) != v14)
        {
          free(v14);
        }
      }

      v4 += 72;
    }

    while (v4 != a3);
  }
}

uint64_t llvm::SmallVectorImpl<llvm::orc::JITDylib *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::orc::JITDylib *>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::orc::JITDylib *>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>,llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::SmallVector<llvm::orc::JITDylib *,6u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 72 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 72;
      v2 -= 72;
    }

    while (v2);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 32 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 32 * v6);
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(a1, a2, a2, v8);
    v6 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v6;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::moveFromOldBuckets(a1, v4, v4 + 32 * v3);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
    v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
    v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 32;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 4) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 64;
    }

    while (v14 != v11);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0x7FFFFFFFFFFFFFFLL;
    v9 = v8 & 0x7FFFFFFFFFFFFFFLL;
    v10 = (v8 & 0x7FFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*a1 + 32);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 4) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 8;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v15 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>(a1, a2, &v15);
      v14 = v15;
      *v15 = *a2;
      v14[1] = 0;
      v14[2] = 0;
      v14[3] = 0;
      *(v14 + 1) = *(a2 + 8);
      v14[3] = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      ++*(a1 + 8);
      v15 = (a2 + 8);
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v15);
    }

    a2 += 32;
  }
}

void std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vdeallocate(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 16;
        v5 = v6;
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::operator=(uint64_t a1, uint64_t a2)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(a1);
  MEMORY[0x277C69E30](*a1, 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 12);
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  return a1;
}

_DWORD *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::DenseMap(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::init(a1, a3);
  if (a3)
  {
    v6 = a2 + 24 * a3;
    do
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::try_emplace<llvm::orc::ExecutorSymbolDef const&>(a1, a2, (a2 + 8), v8);
      a2 += 24;
    }

    while (a2 != v6);
  }

  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::try_emplace<llvm::orc::ExecutorSymbolDef const&>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = 0;
  v8 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v13);
  v9 = v13;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::orc::ExecutorSymbolDef const&>(a1, v13, a2, a3);
    v9 = v11;
    v10 = 1;
  }

  v12 = *a1 + 24 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v12;
  *(a4 + 16) = v10;
}

__n128 llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&,llvm::orc::ExecutorSymbolDef const&>(uint64_t a1, void *a2, uint64_t *a3, __n128 *a4)
{
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*v6 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *a3;
  *v6 = *a3;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v7 + 8), 1uLL);
  }

  result = *a4;
  *(v6 + 1) = *a4;
  return result;
}

uint64_t *llvm::Expected<std::optional<llvm::object::Archive::Child>>::~Expected(uint64_t *a1)
{
  if (a1[6])
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else if (*(a1 + 40) == 1)
  {
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  return a1;
}

uint64_t llvm::jitlink::LinkGraph::LinkGraph(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, int a5, int a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x400000000;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 0;
  *(a1 + 88) = 1;
  v12 = *a2;
  *(a1 + 112) = *(a2 + 2);
  *(a1 + 96) = v12;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 120) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 136), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 152) = *(a4 + 2);
    *(a1 + 136) = v13;
  }

  v14 = *(a4 + 24);
  *(a1 + 176) = *(a4 + 5);
  *(a1 + 160) = v14;
  *(a1 + 184) = a5;
  *(a1 + 188) = a6;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = a7;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::destroyAll(unsigned int *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v2 = 32 * v1;
    v3 = (*a1 + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = v3;
        std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v4);
      }

      v3 += 4;
      v2 -= 32;
    }

    while (v2);
  }
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, const void **a2, uint64_t a3)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v4, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::InsertIntoBucketImpl<llvm::orc::JITDylib *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>,llvm::orc::JITDylib *,llvm::orc::ExecutorAddr,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::ExecutorAddr>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::jitlink::Symbol *,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseMapPair<llvm::jitlink::Symbol *,llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v5, a2, &v16);
      v14 = v16;
      v15 = a2[1];
      *v16 = *a2;
      v14[1] = v15;
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t *std::vector<llvm::orc::ExecutorAddr>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<llvm::orc::ExecutorAddr>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void llvm::detail::stream_operator_format_adapter<llvm::orc::ExecutorAddr &>::format(uint64_t a1, llvm::raw_ostream *a2)
{
  v2 = **(a1 + 8);
  v3[0] = "{0:x}";
  v3[1] = 5;
  v3[2] = &v5;
  v3[3] = 1;
  v4[0] = &unk_2883EB9E8;
  v4[1] = v2;
  v5 = v4;
  llvm::formatv_object_base::format(v3, a2);
}

llvm::raw_ostream *llvm::format_provider<unsigned long long,void>::format(unint64_t *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v15 = 0;
  if (!llvm::detail::HelperFunctions::consumeHexStyle(&v16, &v15))
  {
    if (v17)
    {
      v12 = 0;
      v13 = *v16;
      if (v13 <= 0x63)
      {
        if (v13 != 68)
        {
          if (v13 != 78)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

LABEL_17:
        v12 = 0;
        ++v16;
        goto LABEL_18;
      }

      if (v13 == 100)
      {
        goto LABEL_17;
      }

      if (v13 == 110)
      {
LABEL_16:
        ++v16;
        v12 = 1;
LABEL_18:
        --v17;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = 0;
    if (llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6))
    {
      v14 = 0;
    }

    else
    {
      v14 = v18;
    }

    return write_unsigned<unsigned long>(a2, *a1, v14, v12, 0);
  }

  v7 = v15;
  v18 = 0;
  v8 = llvm::consumeUnsignedInteger(&v16, 0xA, &v18, v6);
  v9 = v18;
  if (v8)
  {
    v9 = 0;
  }

  if ((v7 & 0xFFFFFFFE) == 2)
  {
    v10 = v9 + 2;
  }

  else
  {
    v10 = v9;
  }

  return llvm::write_hex(a2, *a1, v7, v10, 1);
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::destroyAll(void *result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 40 * v1;
    result = (*result + 8);
    do
    {
      v3 = *(result - 1);
      if ((v3 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(result);
        v3 = *(result - 1);
      }

      if ((v3 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      result += 5;
      v2 -= 40;
    }

    while (v2);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v8);
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(a1, v8, a2);
    return v6;
  }

  return v5;
}

double llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::InsertIntoBucket<llvm::orc::SymbolStringPtr>(uint64_t a1, void *a2, void *a3)
{
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *v4 = 0;
  *v4 = *a3;
  *a3 = 0;
  result = 0.0;
  *(v4 + 3) = 0u;
  *(v4 + 1) = 0u;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 40 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -8)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -16;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 40 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -8)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::moveFromOldBuckets(a1, v4, &v4[5 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = 40 * v10 - 40;
    v13 = vdupq_n_s64(v12 / 0x28);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v14.i8[0])
      {
        *result = -8;
      }

      if (v14.i8[4])
      {
        result[5] = -8;
      }

      v11 += 2;
      result += 10;
    }

    while (((v12 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v11);
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::moveFromOldBuckets(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v5 = result;
  result[1] = 0;
  v6 = *(result + 4);
  if (v6)
  {
    v7 = 0;
    v8 = *result;
    v9 = 40 * v6 - 40;
    v10 = vdupq_n_s64(v9 / 0x28);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v11.i8[0])
      {
        *v8 = -8;
      }

      if (v11.i8[4])
      {
        v8[5] = -8;
      }

      v7 += 2;
      v8 += 10;
    }

    while (((v9 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v7);
  }

  if (a2 != a3)
  {
    do
    {
      v12 = *v4;
      if ((*v4 | 8) != 0xFFFFFFFFFFFFFFF8)
      {
        v14 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>,llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::unique_function<void ()(llvm::unique_function<void ()(llvm::orc::shared::WrapperFunctionResult)>,char const*,unsigned long)>>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v5, v4, &v14);
        v13 = v14;
        if ((*v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        *v13 = 0;
        *v13 = *v4;
        *v4 = 0;
        llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase((v13 + 1), (v4 + 1));
        ++*(v5 + 2);
        result = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v4 + 1);
        v12 = *v4;
      }

      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      v4 += 5;
    }

    while (v4 != a3);
  }

  return result;
}

BOOL llvm::orc::shared::SPSArgList<llvm::orc::shared::SPSSequence<char>,llvm::orc::shared::SPSExecutorAddr>::serialize<std::string,llvm::orc::ExecutorAddr>(void *a1, uint64_t a2, void *a3)
{
  result = llvm::orc::shared::SPSSerializationTraits<llvm::orc::shared::SPSSequence<char>,std::string,void>::serialize(a1, a2);
  if (result)
  {
    if (a1[1] < 8uLL)
    {
      return 0;
    }

    else
    {
      **a1 = *a3;
      v6 = a1[1] - 8;
      *a1 += 8;
      a1[1] = v6;
      return 1;
    }
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::InsertIntoBucketImpl<llvm::orc::ExecutorAddr>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = 0;
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::InsertIntoBucketImpl<llvm::orc::ExecutorAddr>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -1)
  {
    --*(a1 + 12);
  }

  return a4;
}

char *llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::grow(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::moveFromOldBuckets(a1, v4, &v4[2 * v3]);

    JUMPOUT(0x277C69E30);
  }

  a1[1] = 0;
  v10 = *(a1 + 4);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_2750C1210)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -1;
      }

      if (v17.i8[4])
      {
        *v16 = -1;
      }

      v11 += 2;
      v16 += 32;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::moveFromOldBuckets(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_2750C1210)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -1;
      }

      if (v13.i8[4])
      {
        *v12 = -1;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if (*a2 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>,llvm::orc::ExecutorAddr,llvm::orc::JITDylib *,llvm::DenseMapInfo<llvm::orc::ExecutorAddr,void>,llvm::detail::DenseMapPair<llvm::orc::ExecutorAddr,llvm::orc::JITDylib *>>::LookupBucketFor<llvm::orc::ExecutorAddr>(v5, a2, &v16);
      v14 = v16;
      v15 = a2[1];
      *v16 = *a2;
      v14[1] = v15;
      ++*(v5 + 8);
    }

    a2 += 2;
  }

  return result;
}

uint64_t std::allocator_traits<std::allocator<llvm::orc::shared::AllocActionCallPair>>::construct[abi:nn200100]<llvm::orc::shared::AllocActionCallPair,llvm::orc::shared::AllocActionCallPair,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  *a2 = *a3;
  *(a2 + 8) = a2 + 32;
  result = a2 + 8;
  v6 = xmmword_2750C12E0;
  *(a2 + 16) = xmmword_2750C12E0;
  if (a3[2])
  {
    result = llvm::SmallVectorImpl<char>::operator=(result, a3 + 1);
    v6 = xmmword_2750C12E0;
  }

  v7 = a3[7];
  *(a2 + 64) = a2 + 88;
  v8 = a2 + 64;
  *(v8 - 8) = v7;
  *(v8 + 8) = v6;
  if (a3[9])
  {

    return llvm::SmallVectorImpl<char>::operator=(v8, a3 + 8);
  }

  return result;
}

void std::allocator<llvm::orc::shared::AllocActionCallPair>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[8];
  if (v3 != a2 + 11)
  {
    free(v3);
  }

  v4 = a2[1];
  if (v4 != a2 + 4)
  {

    free(v4);
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::FindAndConstruct(uint64_t *a1, uint64_t *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    return llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(a1, v7, a2);
  }

  return v5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucket<llvm::orc::SymbolStringPtr const&>(uint64_t a1, void *a2, uint64_t *a3)
{
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(a1, a3, a3, a2);
  if ((*result - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*result + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  v5 = *a3;
  *result = *a3;
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v5 + 8), 1uLL);
  }

  result[1] = 0;
  result[2] = 0;
  return result;
}

char *std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::__assign_with_size[abi:nn200100]<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>*,std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](a1, v10);
    }

    std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 2) = *(v5++ + 2);
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 2) = *(v5++ + 2);
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 16;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

uint64_t *std::vector<std::pair<llvm::orc::JITDylib *,llvm::orc::JITDylibLookupFlags>>::vector[abi:nn200100](uint64_t *a1, __int128 **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vallocate[abi:nn200100](a1, v2 - *a2);
  }

  return a1;
}

void llvm::orc::ResourceTracker::~ResourceTracker(llvm::orc::ResourceTracker *this)
{
  v2 = (this + 8);
  v3 = atomic_load(this + 1);
  v4 = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 32);
  v6[0] = this;
  v6[1] = v4;
  llvm::orc::ExecutionSession::runSessionLocked<llvm::orc::ExecutionSession::destroyResourceTracker(llvm::orc::ResourceTracker &)::$_0>(v4, v6);
  v5 = atomic_load(v2);
  llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release((v5 & 0xFFFFFFFFFFFFFFFELL));
}

void llvm::orc::ExecutionSession::removeResourceTracker(llvm::orc::ExecutionSession *this, std::recursive_mutex *a2, uint64_t a3)
{
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::recursive_mutex::lock(a2);
  if (&__p != &a2[1].__m_.__opaque[48])
  {
    v6 = *&a2[1].__m_.__opaque[48];
    sig = a2[2].__m_.__sig;
    v7 = sig - v6;
    if (sig != v6)
    {
      if (!((v7 >> 3) >> 61))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(&__p, v7 >> 3);
      }

      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v26 = sig - v6;
  }

  v8 = atomic_load((a3 + 8));
  atomic_store(v8 | 1, (a3 + 8));
  v9 = atomic_load((a3 + 8));
  v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
  v33 = 0uLL;
  v34 = 0;
  memset(v32, 0, sizeof(v32));
  if (*((v9 & 0xFFFFFFFFFFFFFFFELL) + 232) == a3)
  {
    v29 = 0;
    v30 = 0;
    LODWORD(v31) = 0;
    if (*(v10 + 248))
    {
      v12 = *(v10 + 256);
      if (v12)
      {
        v13 = 32 * v12;
        v14 = *(v10 + 240);
        while ((*v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          v14 += 4;
          v13 -= 32;
          if (!v13)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v14 = *(v10 + 240);
      }

      v21 = *(v10 + 240) + 32 * v12;
LABEL_31:
      if (v14 != v21)
      {
        v23 = v14[1];
        v22 = v14[2];
        while (v23 != v22)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v29, v23++, &v28);
        }

        while (1)
        {
          v14 += 4;
          if (v14 == v21)
          {
            break;
          }

          if ((*v14 | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            goto LABEL_31;
          }
        }
      }
    }

LABEL_15:
    if (*(v10 + 120))
    {
      v15 = *(v10 + 128);
      if (v15)
      {
        v16 = 24 * v15;
        v17 = *(v10 + 112);
        while ((*v17 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v17 += 3;
          v16 -= 24;
          if (!v16)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v17 = *(v10 + 112);
      }

      v24 = *(v10 + 112) + 24 * v15;
LABEL_40:
      if (v17 != v24)
      {
        v28 = 0;
        if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v29, v17, &v28) & 1) == 0)
        {
          std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](&v33, v17);
        }

        while (1)
        {
          v17 += 3;
          if (v17 == v24)
          {
            break;
          }

          if ((*v17 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_40;
          }
        }
      }
    }

LABEL_20:
    v18 = *(v10 + 232);
    if (v18)
    {
      llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v18);
    }

    *(v10 + 232) = 0;
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v29);
  }

  else
  {
    v28 = 0;
    {
      v11 = v28;
      if (v28 != (*(v10 + 240) + 32 * *(v10 + 256)))
      {
        std::vector<llvm::orc::SymbolStringPtr>::__vdeallocate(&v33);
        v33 = *(v11 + 1);
        v34 = v11[3];
        v11[1] = 0;
        v11[2] = 0;
        v11[3] = 0;
        v28 = v11 + 1;
        std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](&v28);
        *v11 = -8192;
        *(v10 + 248) = vadd_s32(*(v10 + 248), 0x1FFFFFFFFLL);
      }
    }
  }

  v19 = *(&v33 + 1);
  for (i = v33; i != v19; ++i)
  {
    v28 = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v10 + 160), i, &v28) && v28 != (*(v10 + 160) + 72 * *(v10 + 176)))
    {
      std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](v32, i);
    }
  }

  v30 = 0;
  v31 = 0;
  v29 = &v30;
  std::recursive_mutex::lock(*(v10 + 32));
  llvm::orc::ExecutionSession::IL_failSymbols(&v28, v10, v32);
}

void llvm::orc::ExecutionSession::transferResourceTracker(std::recursive_mutex *this, llvm::orc::ResourceTracker *a2, llvm::orc::ResourceTracker *a3)
{
  if (a2 != a3)
  {
    v5 = this;
    std::recursive_mutex::lock(this);
    v6 = atomic_load(a3 + 1);
    atomic_store(v6 | 1, a3 + 1);
    v7 = atomic_load(a2 + 1);
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*((v7 & 0xFFFFFFFFFFFFFFFELL) + 144))
    {
      v9 = *(v8 + 152);
      if (v9)
      {
        v10 = 24 * v9;
        v11 = *(v8 + 136);
        while ((*v11 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v11 += 3;
          v10 -= 24;
          if (!v10)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
        v11 = *(v8 + 136);
      }

      v29 = *(v8 + 136) + 24 * v9;
LABEL_30:
      if (v11 != v29)
      {
        v30 = v11[1];
        if (*(v30 + 8) == a3)
        {
          *(v30 + 8) = a2;
        }

        while (1)
        {
          v11 += 3;
          if (v11 == v29)
          {
            break;
          }

          if ((*v11 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            goto LABEL_30;
          }
        }
      }
    }

LABEL_7:
    *&v65 = a3;
    v67[0] = 0;
    v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>,llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::orc::SymbolLookupSet>>::LookupBucketFor<llvm::orc::JITDylib const*>((v8 + 264), &v65, v67);
    v13 = v67[0];
    if (v12)
    {
      v14 = v67[0] == (*(v8 + 264) + 32 * *(v8 + 280));
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v67[0] = a2;
      v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>,llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::FindAndConstruct(v8 + 264, v67);
      v16 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v13 + 1));
      v18 = v13[1] + 8 * *(v13 + 6);
      if (v18 != v16)
      {
        v19 = v16;
        v20 = v17;
        do
        {
          v21 = *v19;
          atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
          v22 = *(v21 + 8);
          *(v21 + 8) = a2;
          if (v22)
          {
            llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v22);
          }

          do
          {
            ++v19;
          }

          while (v19 != v20 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v19 != v18);
      }

      if (*(v15 + 4))
      {
        v23 = llvm::detail::DenseSetImpl<llvm::jitlink::Block *,llvm::DenseMap<llvm::jitlink::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Block *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Block *>>,llvm::DenseMapInfo<llvm::jitlink::Block *,void>>::begin((v13 + 1));
        v25 = v13[1] + 8 * *(v13 + 6);
        if (v25 != v23)
        {
          v26 = v23;
          v27 = v24;
          do
          {
            *&v65 = *v26;
            v67[0] = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>,llvm::jitlink::Symbol *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::jitlink::Symbol *,void>,llvm::detail::DenseSetPair<llvm::jitlink::Symbol *>>::LookupBucketFor<llvm::jitlink::Symbol *>(v15 + 1, &v65, v67) & 1) == 0)
            {
              v28 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::MaterializationResponsibility *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>,llvm::detail::DenseSetPair<llvm::orc::MaterializationResponsibility *>>,llvm::orc::MaterializationResponsibility *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>,llvm::detail::DenseSetPair<llvm::orc::MaterializationResponsibility *>>::InsertIntoBucketImpl<llvm::orc::MaterializationResponsibility *>((v15 + 1), &v65, v67[0]);
              *v28 = v65;
            }

            do
            {
              ++v26;
            }

            while (v26 != v27 && (*v26 | 0x1000) == 0xFFFFFFFFFFFFF000);
          }

          while (v26 != v25);
        }
      }

      else
      {
        MEMORY[0x277C69E30](v15[1], 8);
        v15[1] = 0;
        v15[2] = 0;
        *(v15 + 6) = 0;
        v15[1] = v13[1];
        v13[1] = 0;
        *(v15 + 4) = *(v13 + 4);
        *(v13 + 4) = 0;
        v31 = *(v15 + 5);
        *(v15 + 5) = *(v13 + 5);
        *(v13 + 5) = v31;
        v32 = *(v15 + 6);
        *(v15 + 6) = *(v13 + 6);
        *(v13 + 6) = v32;
      }

      v67[0] = a3;
      llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>,llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,llvm::DenseSet<llvm::orc::MaterializationResponsibility *,llvm::DenseMapInfo<llvm::orc::MaterializationResponsibility *,void>>>>::erase(v8 + 264, v67);
    }

    v33 = *(v8 + 232);
    if (v33 == a2)
    {
      v67[0] = 0;
      {
        goto LABEL_71;
      }

      v46 = v67[0]++;
      std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](v67);
      *v46 = -8192;
    }

    else
    {
      if (v33 == a3)
      {
        v65 = 0uLL;
        v66 = 0;
        v63[0] = 0;
        v63[1] = 0;
        v64 = 0;
        if (*(v8 + 248))
        {
          v47 = *(v8 + 256);
          if (v47)
          {
            v48 = 32 * v47;
            v49 = *(v8 + 240);
            while ((*v49 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v49 += 4;
              v48 -= 32;
              if (!v48)
              {
                goto LABEL_65;
              }
            }
          }

          else
          {
            v49 = *(v8 + 240);
          }

          v57 = *(v8 + 240) + 32 * v47;
LABEL_79:
          if (v49 != v57)
          {
            v58 = v49[1];
            v59 = v49[2];
            while (v58 != v59)
            {
              llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(v63, v58++, v67);
            }

            while (1)
            {
              v49 += 4;
              if (v49 == v57)
              {
                break;
              }

              if ((*v49 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                goto LABEL_79;
              }
            }
          }
        }

LABEL_65:
        if (*(v8 + 120))
        {
          v50 = *(v8 + 128);
          if (v50)
          {
            v51 = 24 * v50;
            v52 = *(v8 + 112);
            while ((*v52 | 8) == 0xFFFFFFFFFFFFFFF8)
            {
              v52 += 3;
              v51 -= 24;
              if (!v51)
              {
                goto LABEL_70;
              }
            }
          }

          else
          {
            v52 = *(v8 + 112);
          }

          v60 = *(v8 + 112) + 24 * v50;
LABEL_88:
          if (v52 != v60)
          {
            v67[0] = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v63, v52, v67) & 1) == 0)
            {
              std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](&v65, v52);
            }

            while (1)
            {
              v52 += 3;
              if (v52 == v60)
              {
                break;
              }

              if ((*v52 | 8) != 0xFFFFFFFFFFFFFFF8)
              {
                goto LABEL_88;
              }
            }
          }
        }

LABEL_70:
        v67[0] = a2;
        v53 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>,llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::FindAndConstruct(v8 + 240, v67);
        std::vector<llvm::orc::SymbolStringPtr>::__vdeallocate(v53 + 1);
        *(v53 + 1) = v65;
        v53[3] = v66;
        v65 = 0uLL;
        v66 = 0;
        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v63);
        v67[0] = &v65;
        std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](v67);
        goto LABEL_71;
      }

      v67[0] = a2;
      v34 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>,llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::FindAndConstruct(v8 + 240, v67);
      v67[0] = 0;
      {
LABEL_71:
        v55 = *&v5[1].__m_.__opaque[48];
        for (i = v5[2].__m_.__sig; i != v55; i -= 8)
        {
          v56 = *(i - 8);
          (*(*v56 + 24))(v56, v8, a2, a3);
        }

        std::recursive_mutex::unlock(v5);
        return;
      }

      v61 = v67[0];
      v62 = v5;
      v35 = v34 + 1;
      v36 = v67[0] + 1;
      std::vector<llvm::orc::SymbolStringPtr>::reserve(v34 + 1, ((v67[0][2] - v67[0][1]) >> 3) + ((v34[2] - v34[1]) >> 3));
      v37 = *v36;
      v38 = v36[1];
      if (*v36 != v38)
      {
        v39 = v34[2];
        do
        {
          v40 = v34[3];
          if (v39 >= v40)
          {
            v41 = (v39 - *v35) >> 3;
            if ((v41 + 1) >> 61)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v42 = v40 - *v35;
            v43 = v42 >> 2;
            if (v42 >> 2 <= (v41 + 1))
            {
              v43 = v41 + 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFF8)
            {
              v44 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v43;
            }

            v67[4] = (v34 + 1);
            if (v44)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>((v34 + 1), v44);
            }

            v45 = (8 * v41);
            v67[0] = 0;
            v67[1] = v45;
            v67[3] = 0;
            *v45 = 0;
            *v45 = *v37;
            *v37 = 0;
            v67[2] = (8 * v41 + 8);
            std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(v34 + 1, v67);
            v39 = v34[2];
            std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(v67);
          }

          else
          {
            *v39 = 0;
            *v39++ = *v37;
            *v37 = 0;
          }

          v34[2] = v39;
          ++v37;
        }

        while (v37 != v38);
      }

      v67[0] = v36;
      std::vector<llvm::orc::SymbolStringPtr>::__destroy_vector::operator()[abi:nn200100](v67);
      v5 = v62;
      *v61 = -8192;
    }

    *(v8 + 248) = vadd_s32(*(v8 + 248), 0x1FFFFFFFFLL);
    goto LABEL_71;
  }
}

llvm::raw_ostream *llvm::orc::ResourceTrackerDefunct::log(llvm::orc::ResourceTrackerDefunct *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 32;
    *v4 = *"Resource tracker ";
    *(a2 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Resource tracker ", 0x11uLL);
  }

  result = llvm::write_hex(a2, *(this + 1), 3, 0, 0);
  v6 = *(a2 + 4);
  if (*(a2 + 3) - v6 > 0xEuLL)
  {
    qmemcpy(v6, " became defunct", 15);
    *(a2 + 4) += 15;
  }

  else
  {

    return llvm::raw_ostream::write(a2, " became defunct", 0xFuLL);
  }

  return result;
}

uint64_t llvm::orc::FailedToMaterialize::FailedToMaterialize(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = &unk_2883EBA98;
  *(result + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v3 = *(result + 24);
  if (*(v3 + 8))
  {
    v4 = *v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = 32 * v5;
      for (i = *v3; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 4)
      {
        v6 -= 32;
        if (!v6)
        {
          return result;
        }
      }
    }

    else
    {
      i = *v3;
    }

    v8 = &v4[4 * v5];
    if (i != v8)
    {
LABEL_9:
      v9 = *i;
      i += 4;
      atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
      while (i != v8)
      {
        if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (i != v8)
          {
            goto LABEL_9;
          }

          return result;
        }

        i += 4;
      }
    }
  }

  return result;
}

void llvm::orc::FailedToMaterialize::~FailedToMaterialize(llvm::orc::FailedToMaterialize *this)
{
  *this = &unk_2883EBA98;
  v2 = *(this + 3);
  if (*(v2 + 8))
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = 32 * v4;
      v6 = v3;
      while ((*v6 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v6 += 4;
        v5 -= 32;
        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v6 = v3;
    }

    v9 = &v3[4 * v4];
LABEL_13:
    if (v6 != v9)
    {
      v10 = *v6;
      v6 += 4;
      llvm::ThreadSafeRefCountedBase<llvm::orc::JITDylib>::Release(v10);
      while (v6 != v9)
      {
        if ((*v6 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_13;
        }

        v6 += 4;
      }
    }
  }

LABEL_6:
  v7 = *(this + 4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

{
  llvm::orc::FailedToMaterialize::~FailedToMaterialize(this);

  JUMPOUT(0x277C69E40);
}

llvm::raw_ostream *llvm::orc::FailedToMaterialize::log(llvm::orc::FailedToMaterialize *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x1EuLL)
  {
    qmemcpy(v4, "Failed to materialize symbols: ", 31);
    *(a2 + 4) += 31;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Failed to materialize symbols: ", 0x1FuLL);
  }

  v5 = *(this + 3);

  return llvm::orc::operator<<(a2, v5);
}

llvm::raw_ostream *llvm::orc::UnsatisfiedSymbolDependencies::log(llvm::orc::UnsatisfiedSymbolDependencies *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 2)
  {
    *(v4 + 2) = 32;
    *v4 = 28233;
    *(a2 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(a2, "In ", 3uLL);
  }

  v5 = *(this + 3);
  v8 = *(v5 + 8);
  v6 = v5 + 8;
  v7 = v8;
  v9 = *(v6 + 23);
  if (v9 >= 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v9 >= 0)
  {
    v11 = *(v6 + 23);
  }

  else
  {
    v11 = *(v6 + 8);
  }

  llvm::raw_ostream::write(a2, v10, v11);
  v12 = *(a2 + 4);
  if (*(a2 + 3) - v12 > 0x17uLL)
  {
    qmemcpy(v12, ", failed to materialize ", 24);
    *(a2 + 4) += 24;
  }

  else
  {
    llvm::raw_ostream::write(a2, ", failed to materialize ", 0x18uLL);
  }

  llvm::orc::operator<<(a2, this + 32);
  v13 = *(a2 + 4);
  if (*(a2 + 3) - v13 > 0x21uLL)
  {
    qmemcpy(v13, ", due to unsatisfied dependencies ", 34);
    *(a2 + 4) += 34;
  }

  else
  {
    llvm::raw_ostream::write(a2, ", due to unsatisfied dependencies ", 0x22uLL);
  }

  result = llvm::orc::operator<<(a2, this + 56);
  if ((*(this + 103) & 0x8000000000000000) != 0)
  {
    if (!*(this + 11))
    {
      return result;
    }
  }

  else if (!*(this + 103))
  {
    return result;
  }

  v15 = *(a2 + 4);
  if (*(a2 + 3) - v15 > 1uLL)
  {
    *v15 = 10272;
    *(a2 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(a2, " (", 2uLL);
  }

  v16 = *(this + 103);
  if (v16 >= 0)
  {
    v17 = this + 80;
  }

  else
  {
    v17 = *(this + 10);
  }

  if (v16 >= 0)
  {
    v18 = *(this + 103);
  }

  else
  {
    v18 = *(this + 11);
  }

  result = llvm::raw_ostream::write(a2, v17, v18);
  v19 = *(a2 + 4);
  if (*(a2 + 3) == v19)
  {

    return llvm::raw_ostream::write(a2, ")", 1uLL);
  }

  else
  {
    *v19 = 41;
    ++*(a2 + 4);
  }

  return result;
}

void *std::vector<llvm::orc::SymbolStringPtr>::push_back[abi:nn200100](void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>>(result, v11);
    }

    v12 = (8 * v8);
    v14[0] = 0;
    v14[1] = v12;
    v15 = 8 * v8;
    v16 = 0;
    v13 = *a2;
    *v12 = *a2;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v13 + 8), 1uLL);
      v12 = v15;
    }

    v15 = (v12 + 1);
    std::vector<llvm::orc::SymbolStringPtr>::__swap_out_circular_buffer(result, v14);
    v7 = v3[1];
    result = std::__split_buffer<llvm::orc::SymbolStringPtr>::~__split_buffer(v14);
  }

  else
  {
    v6 = *a2;
    *v4 = *a2;
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v6 + 8), 1uLL);
    }

    v7 = v4 + 1;
  }

  v3[1] = v7;
  return result;
}

llvm::raw_ostream *llvm::orc::SymbolsNotFound::log(size_t ***this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if ((*(a2 + 3) - v4) > 0x12)
  {
    *(v4 + 15) = 540697710;
    *v4 = *"Symbols not found: ";
    *(a2 + 4) += 19;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Symbols not found: ", 0x13uLL);
  }

  return llvm::orc::operator<<(a2, this + 3);
}

llvm::raw_ostream *llvm::orc::MissingSymbolDefinitions::log(llvm::orc::MissingSymbolDefinitions *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x1DuLL)
  {
    qmemcpy(v4, "Missing definitions in module ", 30);
    *(a2 + 4) += 30;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Missing definitions in module ", 0x1EuLL);
  }

  v5 = *(this + 47);
  if (v5 >= 0)
  {
    v6 = this + 24;
  }

  else
  {
    v6 = *(this + 3);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 47);
  }

  else
  {
    v7 = *(this + 4);
  }

  llvm::raw_ostream::write(a2, v6, v7);
  v8 = *(a2 + 4);
  if (*(a2 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(a2 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(a2, ": ", 2uLL);
  }

  return llvm::orc::operator<<(a2, this + 6);
}

llvm::raw_ostream *llvm::orc::UnexpectedSymbolDefinitions::log(llvm::orc::UnexpectedSymbolDefinitions *this, llvm::raw_ostream *a2)
{
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0x20uLL)
  {
    qmemcpy(v4, "Unexpected definitions in module ", 33);
    *(a2 + 4) += 33;
  }

  else
  {
    llvm::raw_ostream::write(a2, "Unexpected definitions in module ", 0x21uLL);
  }

  v5 = *(this + 47);
  if (v5 >= 0)
  {
    v6 = this + 24;
  }

  else
  {
    v6 = *(this + 3);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 47);
  }

  else
  {
    v7 = *(this + 4);
  }

  llvm::raw_ostream::write(a2, v6, v7);
  v8 = *(a2 + 4);
  if (*(a2 + 3) - v8 > 1uLL)
  {
    *v8 = 8250;
    *(a2 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(a2, ": ", 2uLL);
  }

  return llvm::orc::operator<<(a2, this + 6);
}

void llvm::orc::ExecutionSession::lookup(llvm::orc::ExecutionSession *a1, uint64_t a2, __int128 **a3, void *a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  llvm::orc::ExecutionSession::dispatchOutstandingMUs(a1);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  operator new();
}

uint64_t llvm::orc::AsynchronousSymbolQuery::notifySymbolMetRequiredState(uint64_t a1, void *a2, uint64_t a3, __int16 a4)
{
  v9 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((a1 + 56), a2, &v9);
  v8 = v9;
  if (!result)
  {
    v8 = *(a1 + 56) + 24 * *(a1 + 72);
  }

  if ((a4 & 0x4000) != 0)
  {
    if ((*v8 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v8 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v8 = -16;
    *(a1 + 64) = vadd_s32(*(a1 + 64), 0x1FFFFFFFFLL);
  }

  else
  {
    *(v8 + 8) = a3;
    *(v8 + 16) = a4;
  }

  --*(a1 + 80);
  return result;
}

void *llvm::orc::AsynchronousSymbolQuery::handleFailed(__int128 *a1, uint64_t *a2)
{
  v2 = a1;
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  *a2 = 0;
  v9 = -1;
  v8[0] = v3;
  v4 = *(a1 + 3);
  if ((v4 & 2) == 0)
  {
    a1 = *a1;
  }

  (*(v4 & 0xFFFFFFFFFFFFFFF8))(a1, v8);
  llvm::Expected<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>>::~Expected(v8);
  memset(v7, 0, sizeof(v7));
  if (v7 != v2)
  {
    v5 = llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v2);
    llvm::detail::UniqueFunctionBase<llvm::Error,llvm::jitlink::LinkGraph &>::UniqueFunctionBase(v5, v7);
  }

  return llvm::detail::UniqueFunctionBase<void,llvm::Error>::~UniqueFunctionBase(v7);
}

int32x2_t llvm::orc::AsynchronousSymbolQuery::removeQueryDependence(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  {
    v5 = v8;
  }

  else
  {
    v5 = *(a1 + 32) + 32 * *(a1 + 48);
  }

  v8 = 0;
  if ((llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v5 + 8), a3, &v8) & 1) == 0)
  {
    if (*(v5 + 16))
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = v8;
  if ((*v8 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*v8 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *v7 = -16;
  result = vadd_s32(*(v5 + 16), 0x1FFFFFFFFLL);
  *(v5 + 16) = result;
  if (!result.i32[0])
  {
LABEL_10:
    llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap((v5 + 8));
    *v5 = -8192;
    result = vadd_s32(*(a1 + 40), 0x1FFFFFFFFLL);
    *(a1 + 40) = result;
  }

  return result;
}

void llvm::orc::AsynchronousSymbolQuery::detach(llvm::orc::AsynchronousSymbolQuery *this)
{
  v2 = *(this + 16);
  if (*(this + 8))
  {
    v3 = *(this + 18);
    v4 = *(this + 7);
    if (v3 <= 4 * v2 || v3 < 0x41)
    {
      if (v3)
      {
        v13 = 24 * v3;
        do
        {
          if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *v4 = -8;
          v4 += 24;
          v13 -= 24;
        }

        while (v13);
      }

      *(this + 8) = 0;
    }

    else
    {
      v5 = 24 * v3;
      do
      {
        if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
        }

        v4 += 24;
        v5 -= 24;
      }

      while (v5);
      v6 = 1 << (33 - __clz(v2 - 1));
      if (v6 <= 64)
      {
        v6 = 64;
      }

      if (v2)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (v7 == *(this + 18))
      {
        *(this + 8) = 0;
        if (v7)
        {
          v8 = 0;
          v9 = *(this + 7);
          v10 = (24 * v7 - 24) / 0x18;
          v11 = vdupq_n_s64(v10);
          do
          {
            v12 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v8), xmmword_2750C1210)));
            if (v12.i8[0])
            {
              *v9 = -8;
            }

            if (v12.i8[4])
            {
              v9[3] = -8;
            }

            v8 += 2;
            v9 += 6;
          }

          while (((v10 + 2) & 0x1FFFFFFFFFFFFFFELL) != v8);
        }
      }

      else
      {
        MEMORY[0x277C69E30](*(this + 7), 8);
        llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::init(this + 14, v7);
      }
    }
  }

  v15 = (this + 32);
  v14 = *(this + 4);
  *(this + 10) = 0;
  v16 = *(this + 10);
  if (!v16)
  {
    goto LABEL_61;
  }

  v17 = *(this + 12);
  if (v17)
  {
    v18 = 32 * v17;
    v19 = v14;
    while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v19 += 4;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_59;
      }
    }
  }

  else
  {
    v19 = v14;
  }

  v20 = &v14[4 * v17];
  if (v19 != v20)
  {
    do
    {
      v21 = *v19;
      v22 = llvm::detail::DenseSetImpl<llvm::orc::SymbolStringPtr,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>::begin((v19 + 1));
      v24 = v19[1] + 8 * *(v19 + 6);
      if (v24 != v22)
      {
        v25 = v22;
        v26 = v23;
        do
        {
          v44 = 0;
          if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((v21 + 160), v25, &v44))
          {
            v27 = v44;
            if (v44 != *(v21 + 160) + 72 * *(v21 + 176))
            {
              v29 = *(v44 + 48);
              v28 = *(v44 + 56);
              if (v29 != v28)
              {
                while (*v29 != this)
                {
                  v29 += 16;
                  if (v29 == v28)
                  {
                    v29 = *(v44 + 56);
                    break;
                  }
                }
              }

              v30 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *,std::shared_ptr<llvm::orc::AsynchronousSymbolQuery> *>((v29 + 16), v28, v29);
              for (i = *(v27 + 56); i != v30; i -= 16)
              {
                v32 = *(i - 8);
                if (v32)
                {
                  std::__shared_weak_count::__release_shared[abi:nn200100](v32);
                }
              }

              *(v27 + 56) = v30;
            }
          }

          do
          {
            ++v25;
          }

          while (v25 != v26 && (*v25 | 8) == 0xFFFFFFFFFFFFFFF8);
        }

        while (v25 != v24);
      }

      v19 += 4;
      v15 = (this + 32);
      if (v19 == v20)
      {
        break;
      }

      while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v19 += 4;
        if (v19 == v20)
        {
          goto LABEL_58;
        }
      }
    }

    while (v19 != v20);
LABEL_58:
    v16 = *(this + 10);
  }

LABEL_59:
  if (v16)
  {
    v33 = 0;
  }

  else
  {
LABEL_61:
    if (!*(this + 11))
    {
      return;
    }

    v16 = 0;
    v33 = 1;
  }

  v34 = *(this + 12);
  if (v34 <= 4 * v16 || v34 < 0x41)
  {
    if (!v34)
    {
      goto LABEL_75;
    }

    v36 = (*v15 + 8);
    v37 = 32 * v34;
    while (1)
    {
      v38 = *(v36 - 1);
      if (v38 == -8192)
      {
        goto LABEL_73;
      }

      if (v38 != -4096)
      {
        break;
      }

LABEL_74:
      v36 += 4;
      v37 -= 32;
      if (!v37)
      {
        goto LABEL_75;
      }
    }

    v36 = llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(v36);
LABEL_73:
    *(v36 - 1) = -4096;
    goto LABEL_74;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::destroyAll(v15);
  if (v33)
  {
    if (*(this + 12))
    {
      v35 = 0;
LABEL_88:
      MEMORY[0x277C69E30](*v15, 8);

      llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::SymbolStringPtr,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>>>>::init(v15, v35);
      return;
    }

LABEL_75:
    *(this + 5) = 0;
    return;
  }

  v39 = 1 << (33 - __clz(v16 - 1));
  if (v39 <= 64)
  {
    v35 = 64;
  }

  else
  {
    v35 = v39;
  }

  if (v35 != *(this + 12))
  {
    goto LABEL_88;
  }

  v40 = 0;
  *(this + 5) = 0;
  v41 = vdupq_n_s64((v35 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL);
  v42 = (*(this + 4) + 32);
  do
  {
    v43 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(vdupq_n_s64(v40), xmmword_2750C1210)));
    if (v43.i8[0])
    {
      *(v42 - 4) = -4096;
    }

    if (v43.i8[4])
    {
      *v42 = -4096;
    }

    v40 += 2;
    v42 += 8;
  }

  while (((v35 + 0x7FFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFLL) - ((v35 - 1) & 1) + 2 != v40);
}

uint64_t llvm::orc::AbsoluteSymbolsMaterializationUnit::AbsoluteSymbolsMaterializationUnit(uint64_t a1, uint64_t a2)
{
  llvm::orc::AbsoluteSymbolsMaterializationUnit::extractFlags(a2, &v8);
  v4 = v8;
  *a1 = &unk_2883EBCD0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  v8 = 0;
  v9 = 0;
  *(a1 + 24) = v10;
  v10 = 0;
  *(a1 + 32) = v11;
  v11 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v8);
  *a1 = &unk_2883EBB88;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = *a2;
  *a2 = 0;
  *(a1 + 48) = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 52);
  *(a1 + 52) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 16);
  *(a2 + 16) = v6;
  return a1;
}

uint64_t *llvm::orc::AbsoluteSymbolsMaterializationUnit::extractFlags@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(a1 + 2);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = 24 * v4;
    v6 = *a1;
    while ((*v6 | 8) == 0xFFFFFFFFFFFFFFF8)
    {
      v6 += 24;
      v5 -= 24;
      if (!v5)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = *a1;
  }

  v7 = *a1 + 24 * v4;
  if (v6 == v7)
  {
LABEL_14:
    v3 = 0;
LABEL_15:
    v8 = 0;
    v9 = 0;
    goto LABEL_16;
  }

LABEL_9:
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>,llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::FindAndConstruct(&v13, v6)[4] = *(v6 + 16);
  while (1)
  {
    v6 += 24;
    if (v6 == v7)
    {
      break;
    }

    if ((*v6 | 8) != 0xFFFFFFFFFFFFFFF8)
    {
      if (v6 != v7)
      {
        goto LABEL_9;
      }

      break;
    }
  }

  v8 = v13;
  v9 = v14;
  v3 = v15;
LABEL_16:
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *a2 = v8;
  v11[0] = 0;
  v11[1] = 0;
  *(a2 + 8) = v9;
  *(a2 + 16) = v3;
  v12 = 0;
  *(a2 + 24) = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(v11);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v13);
}

void llvm::orc::AbsoluteSymbolsMaterializationUnit::materialize(uint64_t a1, uint64_t **a2)
{
  llvm::orc::JITDylib::resolve(**a2, *a2, a1 + 40, &v7);
  if (v7)
  {
    v3 = *(**a2 + 32);
    v6 = v7;
    v7 = 0;
    llvm::orc::ExecutionSession::reportError(v3, &v6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    llvm::orc::ExecutionSession::OL_notifyFailed(*(**a2 + 32), *a2);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  else
  {
    llvm::orc::ExecutionSession::OL_notifyEmitted(*(**a2 + 32), *a2, 0, 0, &v7);
    if (v7)
    {
      v4 = *(**a2 + 32);
      v5 = v7;
      llvm::orc::ExecutionSession::reportError(v4, &v5);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      llvm::orc::ExecutionSession::OL_notifyFailed(*(**a2 + 32), *a2);
    }
  }
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::erase(uint64_t a1, void *a2)
{
  v5 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v5))
  {
    v4 = v5;
    if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v4 = -16;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t llvm::orc::ReExportsMaterializationUnit::ReExportsMaterializationUnit(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  llvm::orc::AbsoluteSymbolsMaterializationUnit::extractFlags(a4, &v12);
  v8 = v12;
  *a1 = &unk_2883EBCD0;
  *(a1 + 8) = v8;
  *(a1 + 16) = v13;
  v12 = 0;
  v13 = 0;
  *(a1 + 24) = v14;
  v14 = 0;
  *(a1 + 32) = v15;
  v15 = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::~DenseMap(&v12);
  *a1 = &unk_2883EBBC8;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = *a4;
  *a4 = 0;
  *(a1 + 64) = *(a4 + 8);
  *(a4 + 8) = 0;
  v9 = *(a1 + 68);
  *(a1 + 68) = *(a4 + 12);
  *(a4 + 12) = v9;
  v10 = *(a1 + 72);
  *(a1 + 72) = *(a4 + 16);
  *(a4 + 16) = v10;
  return a1;
}

uint64_t *llvm::orc::ReExportsMaterializationUnit::materialize(uint64_t a1, uint64_t **a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v7 = *v4;
  v5 = (v4 + 2);
  v6 = v7;
  v8 = *(a1 + 40);
  if (!v8)
  {
    v8 = v6;
  }

  v31 = v8;
  llvm::orc::JITDylib::getRequestedSymbols(v6, v5, &v49);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  if (!v50)
  {
    goto LABEL_26;
  }

  if (v51)
  {
    v11 = 8 * v51;
    v12 = v49;
    while ((*v12 | 8) == 0xFFFFFFFFFFFFFFF8)
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v12 = v49;
  }

  v13 = &v49[v51];
  if (v12 == v13)
  {
LABEL_26:
    v18 = *(a1 + 64);
    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_27:
    *&v10 = 0;
    if (*(a1 + 40))
    {
      v43 = *(a1 + 56);
      v19 = *(a1 + 68);
      *(a1 + 56) = v10;
      v44 = v18;
      v45 = v19;
      *(a1 + 72) = 0;
      operator new();
    }

    v40 = *(a1 + 56);
    v20 = *(a1 + 68);
    *(a1 + 56) = v10;
    v41 = v18;
    v42 = v20;
    *(a1 + 72) = 0;
    operator new();
  }

LABEL_11:
  v32 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((a1 + 56), v12, &v32))
  {
    v14 = v32;
  }

  else
  {
    v14 = *(a1 + 56) + 24 * *(a1 + 72);
  }

  v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::FindAndConstruct(&v46, v12);
  v15 = *(v9 + 8);
  if ((v15 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v15 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *(v9 + 8) = 0;
  *(v9 + 8) = *(v14 + 8);
  *(v14 + 8) = 0;
  *(v9 + 16) = *(v14 + 16);
  v16 = *(v14 + 8);
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((v16 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((*v14 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    atomic_fetch_add((*v14 + 8), 0xFFFFFFFFFFFFFFFFLL);
  }

  *v14 = -16;
  v17 = vadd_s32(*(a1 + 64), 0x1FFFFFFFFLL);
  *(a1 + 64) = v17;
  while (++v12 != v13)
  {
    if ((*v12 | 8) != 0xFFFFFFFFFFFFFFF8)
    {
      if (v12 != v13)
      {
        goto LABEL_11;
      }

      break;
    }
  }

  v18 = v17.i32[0];
  if (v17.i32[0])
  {
    goto LABEL_27;
  }

LABEL_30:
  if (v47)
  {
    __p[0] = 0;
    __p[1] = 0;
    LODWORD(v39) = 0;
    v36 = 0uLL;
    v37 = 0;
    v34 = 0uLL;
    v35 = 0;
    if (v48)
    {
      v21 = 24 * v48;
      v22 = v46;
      while ((*v22 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v22 += 24;
        v21 -= 24;
        if (!v21)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      v22 = v46;
    }

    v23 = v46 + 24 * v48;
    if (v22 != v23)
    {
      do
      {
        if (v31 != v6 || (v32 = 0, v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v34, (v22 + 8), &v32), (v9 & 1) == 0) && (v32 = 0, v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(&v46, (v22 + 8), &v32), (v9 & 1) == 0))
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(__p, v22, &v32);
          v24 = *(v22 + 8);
          if ((v24 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v24 + 8), 1uLL);
          }

          v25 = (*(v22 + 17) >> 6) & 1;
          v32 = v24;
          v33 = v25;
          std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::push_back[abi:nn200100](&v36, &v32);
          if ((v32 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          v9 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::FindAndConstruct(&v34, v22);
          v26 = *(v9 + 8);
          if ((v26 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v26 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *(v9 + 8) = 0;
          *(v9 + 8) = *(v22 + 8);
          *(v22 + 8) = 0;
          *(v9 + 16) = *(v22 + 16);
        }

        do
        {
          v22 += 24;
          if (v22 == v23)
          {
            goto LABEL_51;
          }
        }

        while ((*v22 | 8) == 0xFFFFFFFFFFFFFFF8);
      }

      while (v22 != v23);
LABEL_51:
      if (DWORD2(v34))
      {
        if (v35)
        {
          v27 = 24 * v35;
          v28 = v34;
          while ((*v28 | 8) == 0xFFFFFFFFFFFFFFF8)
          {
            v28 += 3;
            v27 -= 24;
            if (!v27)
            {
              goto LABEL_56;
            }
          }
        }

        else
        {
          v28 = v34;
        }

        v29 = (v34 + 24 * v35);
LABEL_59:
        if (v28 != v29)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::erase(&v46, v28);
          while (1)
          {
            v28 += 3;
            if (v28 == v29)
            {
              break;
            }

            if ((*v28 | 8) != 0xFFFFFFFFFFFFFFF8)
            {
              goto LABEL_59;
            }
          }
        }
      }
    }

LABEL_56:
    llvm::orc::ExecutionSession::OL_delegate(v9, *a2, __p);
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::destroyAll(&v46);
  MEMORY[0x277C69E30](v46, 8);
  return llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v49);
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolAliasMapEntry>>::erase(uint64_t a1, void *a2)
{
  v6 = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>,llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(a1, a2, &v6))
  {
    v4 = v6;
    v5 = *(v6 + 8);
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    if ((*v4 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
    {
      atomic_fetch_add((*v4 + 8), 0xFFFFFFFFFFFFFFFFLL);
    }

    *v4 = -16;
    result = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
    *(a1 + 8) = result;
  }

  return result;
}

llvm::orc::InProgressLookupState *llvm::orc::LookupState::continueLookup(llvm::orc::InProgressLookupState **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(**(*a1 + 2) + 32);
  *a1 = 0;
  v6 = *a2;
  v7 = v2;
  *a2 = 0;
  llvm::orc::ExecutionSession::OL_applyQueryPhase1(v3, &v7, &v6);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  result = v7;
  if (v7)
  {
    v5 = *(*v7 + 8);

    return v5();
  }

  return result;
}

void llvm::orc::ExecutionSession::OL_applyQueryPhase1(llvm::orc::ExecutionSession *this, llvm::orc::InProgressLookupState **a2, uint64_t *a3)
{
  v6 = *a2;
  if (*(*a2 + 34) == 2)
  {
    llvm::orc::ExecutionSession::OL_resumeLookupAfterGeneration(this, *a2);
    v6 = *a2;
  }

  v7 = *(v6 + 9);
  v8 = *(v6 + 2);
  if (v7 == (*(v6 + 3) - v8) >> 4)
  {
    v10 = *(v6 + 11);
    v9 = *(v6 + 12);
LABEL_5:
    if (v9 != v10)
    {
      v11 = 0;
      do
      {
        if (*(v10 + 16 * v11 + 8) == 1)
        {
          llvm::orc::SymbolLookupSet::remove(v6 + 11, v11);
          v10 = *(v6 + 11);
          v9 = *(v6 + 12);
        }

        else
        {
          ++v11;
        }
      }

      while (v11 != (v9 - v10) >> 4);
      v6 = *a2;
      if (*(*a2 + 11) != *(*a2 + 12))
      {
        v12 = *(this + 9);
        v13 = *(v12 + 16);
        *&v79[0] = *(v12 + 8);
        *(&v79[0] + 1) = v13;
        v14 = v6;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          v14 = *a2;
        }

        llvm::orc::SymbolLookupSet::getSymbolNames(&v82, v14 + 11);
        llvm::make_error<llvm::orc::SymbolsNotFound,std::shared_ptr<llvm::orc::SymbolStringPool>,std::vector<llvm::orc::SymbolStringPtr>>(&v72, v79, &v82);
      }
    }

LABEL_89:
    *a2 = 0;
    v73 = v6;
    (*(*v6 + 16))(v6, &v73);
    v69 = v73;
    v73 = 0;
    if (v69)
    {
      (*(*v69 + 8))(v69);
    }

    return;
  }

LABEL_15:
  if (*a3)
  {
    v80 = *a3;
    *a3 = 0;
    (*(*v6 + 24))(v6, &v80);
    v59 = v80;
    if (!v80)
    {
      return;
    }

    goto LABEL_79;
  }

  v15 = v8 + 16 * v7;
  v16 = *v15;
  v17 = *(v15 + 8);
  v71 = v17;
  if (*(v6 + 80) == 1)
  {
    memset(v79, 0, 24);
    v19 = *(v6 + 7);
    v18 = v6 + 112;
    v20 = *(v18 + 2);
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = 0;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vdeallocate(v18);
    *v18 = v79[0];
    *(v18 + 2) = *&v79[1];
    memset(v79, 0, 24);
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__vdeallocate(v79);
    v79[0] = v19;
    *&v79[1] = v20;
    v83 = 0;
    v81 = &v82;
    v82 = 0uLL;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v81);
    v21 = *(*a2 + 11);
    v22 = *(*a2 + 12);
    v23 = (*a2 + 88);
    v77 = *&v79[0];
    v78 = *(v79 + 8);
    memset(v79, 0, 24);
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::reserve(v23, ((v22 - v21) >> 4) + ((v78 - v77) >> 4));
    v24 = v77;
    v25 = v78;
    while (v24 != v25)
    {
      std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::push_back[abi:nn200100](v23, v24);
      v24 += 16;
    }

    *&v82 = &v77;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v82);
    std::recursive_mutex::lock(this);
    v27 = *(v16 + 184);
    v26 = *(v16 + 192);
    v28 = v26 - v27;
    if (*(*a2 + 20) - *(*a2 + 18) < (v26 - v27))
    {
      if (!((v28 >> 4) >> 60))
      {
        v85 = *a2 + 144;
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v28 >> 4);
      }

LABEL_98:
      std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
    }

    while (v26 != v27)
    {
      v29 = *(v26 - 16);
      v26 -= 16;
      v30 = v29;
      v31 = *a2;
      v32 = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
      }

      v33 = *(v31 + 19);
      v34 = *(v31 + 20);
      if (v33 >= v34)
      {
        v36 = *(v31 + 18);
        v37 = v33 - v36;
        v38 = (v33 - v36) >> 4;
        v39 = v38 + 1;
        if ((v38 + 1) >> 60)
        {
          goto LABEL_98;
        }

        v40 = v34 - v36;
        if (v40 >> 3 > v39)
        {
          v39 = v40 >> 3;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF0)
        {
          v41 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        v85 = v31 + 144;
        if (v41)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::weak_ptr<llvm::orc::DefinitionGenerator>>>(v41);
        }

        *(16 * v38) = v30;
        v35 = 16 * v38 + 16;
        memcpy(0, v36, v37);
        v42 = *(v31 + 18);
        *(v31 + 18) = 0;
        *(v31 + 19) = v35;
        v43 = *(v31 + 20);
        *(v31 + 20) = 0;
        v83 = v42;
        v84 = v43;
        *&v82 = v42;
        *(&v82 + 1) = v42;
        std::__split_buffer<std::weak_ptr<llvm::orc::DefinitionGenerator>>::~__split_buffer(&v82);
      }

      else
      {
        *v33 = v30;
        *(v33 + 1) = v32;
        v35 = (v33 + 16);
      }

      *(v31 + 19) = v35;
    }

    std::recursive_mutex::unlock(this);
    *(*a2 + 80) = 0;
    *&v82 = v79;
    std::vector<std::pair<llvm::orc::SymbolStringPtr,llvm::orc::SymbolLookupFlags>>::__destroy_vector::operator()[abi:nn200100](&v82);
    v17 = v71;
  }

  std::recursive_mutex::lock(this);
  if (*(v16 + 184) == *(v16 + 192))
  {
    v44 = 0;
  }

  else
  {
    v44 = (*a2 + 112);
  }

  llvm::orc::ExecutionSession::IL_updateCandidatesFor(&v82, this, v16, v17, (*a2 + 88), v44);
  *a3 = v82;
  v45 = *a2;
  if (*(*a2 + 34) == 1 && *(v45 + 11) == *(v45 + 12))
  {
    llvm::orc::ExecutionSession::OL_resumeLookupAfterGeneration(this, v45);
  }

  std::recursive_mutex::unlock(this);
  v6 = *a2;
  if (*a3)
  {
    v76 = *a3;
    *a3 = 0;
    (*(*v6 + 24))(v6, &v76);
    v59 = v76;
    if (!v76)
    {
      return;
    }

LABEL_79:
    (*(*v59 + 8))(v59);
    return;
  }

  while (1)
  {
    v46 = *(v6 + 19);
    if (*(v6 + 18) == v46 || *(v6 + 11) == *(v6 + 12))
    {
      v10 = *(v6 + 11);
      v9 = *(v6 + 12);
      if (v10 == v9 && *(v6 + 14) == *(v6 + 15))
      {
        *(v6 + 9) = (*(v6 + 3) - *(v6 + 2)) >> 4;
        goto LABEL_89;
      }

      v7 = *(v6 + 9) + 1;
      *(v6 + 9) = v7;
      *(v6 + 80) = 1;
      v8 = *(v6 + 2);
      if (v7 == (*(v6 + 3) - v8) >> 4)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    v47 = *(v46 - 8);
    if (!v47 || (v48 = std::__shared_weak_count::lock(v47)) == 0 || (v49 = *(v46 - 16), v50 = *a2, !v49))
    {
      getErrorErrorCat();
      operator new();
    }

    if (!*(v50 + 34))
    {
      std::mutex::lock((v49 + 8));
      if (*(v49 + 72) == 1)
      {
        v60 = *a2;
        *a2 = 0;
        v61 = *(v49 + 96);
        v62 = *(v49 + 88);
        if (v61 == v62)
        {
          v63 = 0;
        }

        else
        {
          v63 = ((v61 - v62) << 6) - 1;
        }

        v65 = *(v49 + 112);
        v64 = *(v49 + 120);
        v66 = v64 + v65;
        if (v63 == v64 + v65)
        {
          if (v65 < 0x200)
          {
            v67 = *(v49 + 104);
            v68 = *(v49 + 80);
            if (v61 - v62 < (v67 - v68))
            {
              operator new();
            }

            if (v67 == v68)
            {
              v70 = 1;
            }

            else
            {
              v70 = (v67 - v68) >> 2;
            }

            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::IntrusiveRefCntPtr<llvm::orc::JITDylib>>>(v70);
          }

          *(v49 + 112) = v65 - 512;
          *&v82 = *v62;
          *(v49 + 88) = v62 + 8;
          std::__split_buffer<llvm::orc::LookupState *>::emplace_back<llvm::orc::LookupState *&>((v49 + 80), &v82);
          v62 = *(v49 + 88);
          v64 = *(v49 + 120);
          v66 = *(v49 + 112) + v64;
        }

        *(*&v62[(v66 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v66 & 0x1FF)) = v60;
        *(v49 + 120) = v64 + 1;
        std::mutex::unlock((v49 + 8));
        goto LABEL_96;
      }

      *(v49 + 72) = 1;
      std::mutex::unlock((v49 + 8));
      v50 = *a2;
    }

    *(v50 + 34) = 2;
    v51 = *(v50 + 2);
    *a2 = 0;
    *&v82 = v50;
    (*(*v49 + 16))(v79, v49, &v82, v51, v16, v71, v50 + 88);
    *a3 = *&v79[0];
    v52 = v82;
    *&v82 = 0;
    v53 = *a2;
    *a2 = v52;
    if (v53)
    {
      (*(*v53 + 8))(v53);
      v54 = v82;
      *&v82 = 0;
      if (v54)
      {
        (*(*v54 + 8))(v54);
      }

      v52 = *a2;
    }

    if (v52)
    {
      llvm::orc::ExecutionSession::OL_resumeLookupAfterGeneration(this, v52);
    }

    v55 = *a2;
    if (*a3)
    {
      v75 = *a3;
      *a3 = 0;
      (*(*v55 + 24))(v55, &v75);
      v57 = v75;
      if (v75)
      {
        goto LABEL_75;
      }

      goto LABEL_96;
    }

    if (!v55)
    {
      goto LABEL_96;
    }

    std::recursive_mutex::lock(this);
    v56 = *(v16 + 184) == *(v16 + 192) ? 0 : (*a2 + 112);
    llvm::orc::ExecutionSession::IL_updateCandidatesFor(&v82, this, v16, v71, (*a2 + 88), v56);
    *a3 = v82;
    std::recursive_mutex::unlock(this);
    if (*a3)
    {
      break;
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    v6 = *a2;
  }

  v58 = *a2;
  v74 = *a3;
  *a3 = 0;
  (*(*v58 + 24))(v58, &v74);
  v57 = v74;
  if (v74)
  {
LABEL_75:
    (*(*v57 + 8))(v57);
  }

LABEL_96:
  std::__shared_weak_count::__release_shared[abi:nn200100](v48);
}

void llvm::orc::DefinitionGenerator::~DefinitionGenerator(llvm::orc::DefinitionGenerator *this)
{
  *this = &unk_2883EBC08;
  v2 = (this + 8);
  std::mutex::lock((this + 8));
  v3 = *(this + 10);
  v4 = *(this + 11);
  v5 = this + 80;
  v9[0] = v3;
  v9[1] = v4;
  v8 = *(v5 + 1);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v10 = v8;
  v6 = *(v5 + 4);
  v7 = *(v5 + 5);
  *(v5 + 2) = 0u;
  v11 = v6;
  v12 = v7;
  *(v5 - 8) = 0;
  std::mutex::unlock(v2);
  if (v8 != v4 && *(v4 + 8 * (v6 >> 9)) + 8 * (v6 & 0x1FF) != *(v4 + (((v7 + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 + v6) & 0x1FF))
  {
    getErrorErrorCat();
    operator new();
  }

  std::deque<llvm::orc::LookupState>::~deque[abi:nn200100](v9);
  std::deque<llvm::orc::LookupState>::~deque[abi:nn200100](v5);
  std::mutex::~mutex(v2);
}

void llvm::orc::JITDylib::~JITDylib(llvm::orc::JITDylib *this)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>,llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>,llvm::DenseMapInfo<llvm::orc::JITDylib *,void>,llvm::detail::DenseMapPair<llvm::orc::JITDylib *,llvm::DenseSet<llvm::orc::NonOwningSymbolStringPtr,llvm::DenseMapInfo<llvm::orc::NonOwningSymbolStringPtr,void>>>>::destroyAll(this + 66);
  MEMORY[0x277C69E30](*(this + 33), 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>,llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>,llvm::DenseMapInfo<llvm::orc::ResourceTracker *,void>,llvm::detail::DenseMapPair<llvm::orc::ResourceTracker *,std::vector<llvm::orc::SymbolStringPtr>>>::destroyAll(this + 60);
  MEMORY[0x277C69E30](*(this + 30), 8);
  v2 = *(this + 29);
  if (v2)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = (this + 184);
  std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v4);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::destroyAll(this + 40);
  MEMORY[0x277C69E30](*(this + 20), 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>,llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,std::shared_ptr<llvm::orc::JITDylib::UnmaterializedInfo>>>::destroyAll(this + 136);
  MEMORY[0x277C69E30](*(this + 17), 8);
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>>::~DenseMap(this + 14);
  std::mutex::~mutex((this + 48));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void llvm::orc::JITDylib::clear(llvm::orc::JITDylib *this@<X0>, atomic_uint **a2@<X8>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = *(this + 4);
  std::recursive_mutex::lock(v4);
  if (*(this + 62))
  {
    v5 = *(this + 64);
    if (v5)
    {
      v6 = 32 * v5;
      v7 = *(this + 30);
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 4;
        v6 -= 32;
        if (!v6)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v7 = *(this + 30);
    }

    v8 = *(this + 30) + 32 * v5;
    if (v7 != v8)
    {
      v9 = *v7;
LABEL_10:
      v20 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 1u, memory_order_relaxed);
      }

      std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::ResourceTracker>>::push_back[abi:nn200100](&v17, &v20);
      if (v20)
      {
        llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v20);
      }

      while (1)
      {
        v7 += 4;
        if (v7 == v8)
        {
          break;
        }

        v9 = *v7;
        if ((*v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v7 != v8)
          {
            goto LABEL_10;
          }

          break;
        }
      }
    }
  }

LABEL_17:
  llvm::orc::JITDylib::getDefaultResourceTracker(&v20, this);
  std::vector<llvm::IntrusiveRefCntPtr<llvm::orc::ResourceTracker>>::push_back[abi:nn200100](&v17, &v20);
  if (v20)
  {
    llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v20);
  }

  std::recursive_mutex::unlock(v4);
  *a2 = 0;
  v10 = v17;
  if (v17 != v18)
  {
    *a2 = 0;
    v11 = *v10;
    v12 = atomic_load((*v10 + 8));
    llvm::orc::ExecutionSession::removeResourceTracker(&v16, *((v12 & 0xFFFFFFFFFFFFFFFELL) + 32), v11);
  }

  if (v17)
  {
    for (i = v18; i != v10; --i)
    {
      v15 = *(i - 1);
      v14 = v15;
      if (v15)
      {
        llvm::ThreadSafeRefCountedBase<llvm::orc::ResourceTracker>::Release(v14);
      }
    }

    operator delete(v10);
  }
}

void llvm::orc::JITDylib::getDefaultResourceTracker(atomic_uint **__return_ptr a1@<X8>, llvm::orc::JITDylib *this@<X0>)
{
  v4 = *(this + 4);
  std::recursive_mutex::lock(v4);
  v5 = *(this + 29);
  if (!v5)
  {
    operator new();
  }

  *a1 = v5;
  atomic_fetch_add_explicit(v5, 1u, memory_order_relaxed);

  std::recursive_mutex::unlock(v4);
}

void llvm::orc::JITDylib::defineMaterializing(int32x2_t *a1@<X0>, uint64_t a2@<X1>, size_t ***a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[4];
  std::recursive_mutex::lock(v8);
  v9 = atomic_load((*(a2 + 8) + 8));
  if (v9)
  {
    operator new();
  }

  __p = 0;
  v53 = 0;
  v54 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  if (!*(a3 + 2))
  {
    goto LABEL_42;
  }

  v10 = *(a3 + 4);
  if (v10)
  {
    v11 = 16 * v10;
    v12 = *a3;
    while ((*v12 | 8) == 0xFFFFFFFFFFFFFFF8)
    {
      v12 += 2;
      v11 -= 16;
      if (!v11)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    v12 = *a3;
  }

  v13 = &(*a3)[2 * v10];
  if (v12 == v13)
  {
LABEL_42:
    v24 = 0;
  }

  else
  {
    do
    {
      __dst = 0;
      v14 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*&a1[14], a1[16].i32[0], *v12, &__dst);
      v15 = a1[14];
      v16 = a1[16].u32[0];
      if (v14)
      {
        v17 = __dst == v15 + 24 * v16;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        if ((*(v12 + 9) & 2) != 0)
        {
          __dst = *v12;
          std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](&v49, &__dst);
          goto LABEL_27;
        }

        v33 = __p;
        v34 = v53;
        if (__p == v53)
        {
LABEL_61:
          v44 = *v12 + 2;
          v43 = **v12;
          if (v43 < 0x7FFFFFFFFFFFFFF8)
          {
            if (v43 < 0x17)
            {
              HIBYTE(v48) = **v12;
              if (v43)
              {
                memmove(&__dst, v44, v43);
              }

              *(&__dst + v43) = 0;
              llvm::make_error<llvm::orc::DuplicateDefinition,std::string,char const(&)[30]>(&v55, &__dst);
            }

            operator new();
          }

          std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
        }

        while (1)
        {
          v35 = a1[14];
          v36 = a1[16].u32[0];
          if (!v36)
          {
            goto LABEL_57;
          }

          v37 = v36 - 1;
          v38 = ((*v33 >> 4) ^ (*v33 >> 9)) & (v36 - 1);
          v39 = (*&v35 + 24 * v38);
          v40 = *v39;
          if (*v39 != *v33)
          {
            break;
          }

LABEL_58:
          if ((v40 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
          {
            atomic_fetch_add((v40 + 8), 0xFFFFFFFFFFFFFFFFLL);
          }

          *v39 = -16;
          a1[15] = vadd_s32(a1[15], 0x1FFFFFFFFLL);
          if (++v33 == v34)
          {
            goto LABEL_61;
          }
        }

        v41 = 1;
        while (v40 != -8)
        {
          v42 = v38 + v41++;
          v38 = v42 & v37;
          v39 = (*&v35 + 24 * (v42 & v37));
          v40 = *v39;
          if (*v39 == *v33)
          {
            goto LABEL_58;
          }
        }

LABEL_57:
        v39 = (*&v35 + 24 * v36);
        v40 = *v39;
        goto LABEL_58;
      }

      v18 = *(v12 + 4);
      v19 = *v12;
      __dst = v19;
      if ((v19 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v19 + 8), 1uLL);
        v15 = a1[14];
        v16 = a1[16].u32[0];
        v19 = __dst;
      }

      *&v48 = 0;
      WORD4(v48) = v18;
      BYTE10(v48) = 1;
      *(&v48 + 11) = v45;
      HIBYTE(v48) = v46;
      v55 = 0;
      v20 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(v15, v16, v19, &v55);
      v21 = v55;
      if ((v20 & 1) == 0)
      {
        v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::InsertIntoBucketImpl<llvm::orc::SymbolStringPtr>(&a1[14], &__dst, v55);
        v21 = v22;
        if ((*v22 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add((*v22 + 8), 0xFFFFFFFFFFFFFFFFLL);
          v19 = __dst;
        }

        *v22 = v19;
        __dst = 0;
        *(v22 + 1) = v48;
        v19 = 0;
      }

      if ((v19 - 1) <= 0xFFFFFFFFFFFFFFDFLL)
      {
        atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL);
      }

      __dst = *v12;
      std::vector<llvm::orc::NonOwningSymbolStringPtr>::push_back[abi:nn200100](&__p, &__dst);
      *(v21 + 18) = *(v21 + 18) & 0x80 | 2;
      do
      {
LABEL_27:
        v12 += 2;
        if (v12 == v13)
        {
          goto LABEL_30;
        }
      }

      while ((*v12 | 8) == 0xFFFFFFFFFFFFFFF8);
    }

    while (v12 != v13);
LABEL_30:
    v24 = v49;
    v23 = v50;
    if (v49 != v50)
    {
      while (1)
      {
        v25 = *a3;
        v26 = *(a3 + 4);
        if (!v26)
        {
          goto LABEL_37;
        }

        v27 = *(v23 - 1);
        LODWORD(v28) = ((v27 >> 4) ^ (v27 >> 9)) & (v26 - 1);
        v29 = &v25[2 * v28];
        v30 = *v29;
        if (*v29 != v27)
        {
          break;
        }

LABEL_38:
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFDFLL)
        {
          atomic_fetch_add(v30 + 1, 0xFFFFFFFFFFFFFFFFLL);
          v24 = v49;
          v23 = v50;
        }

        *v29 = -16;
        a3[1] = vadd_s32(a3[1], 0x1FFFFFFFFLL);
        v23 -= 8;
        v50 = v23;
        if (v24 == v23)
        {
          goto LABEL_43;
        }
      }

      v31 = 1;
      while (v30 != -8)
      {
        v32 = v28 + v31++;
        v28 = v32 & (v26 - 1);
        v30 = v25[2 * v28];
        if (v30 == v27)
        {
          v29 = &v25[2 * v28];
          goto LABEL_38;
        }
      }

LABEL_37:
      v29 = &v25[2 * v26];
      v30 = *v29;
      goto LABEL_38;
    }
  }

LABEL_43:
  *(a4 + 24) &= ~1u;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::JITSymbolFlags>>::copyFrom(a4, a3);
  if (v24)
  {
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::recursive_mutex::unlock(v8);
}

void llvm::orc::JITDylib::replace(uint64_t a1, uint64_t a2, std::__shared_weak_count_vtbl **a3)
{
  v18 = 0;
  std::recursive_mutex::lock(*(a1 + 32));
  v7 = atomic_load((*(a2 + 8) + 8));
  if (v7)
  {
    operator new();
  }

  v8 = *a3;
  if (LODWORD((*a3)->__on_zero_shared))
  {
    v9 = *(v8 + 8);
    v10 = *(v8 + 24);
    if (v10)
    {
      v11 = 16 * v10;
      v12 = v9;
      while ((*v12 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v12 += 2;
        v11 -= 16;
        if (!v11)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = v9;
    }

    v13 = &v9[2 * v10];
    while (v12 != v13)
    {
      v22 = 0;
      if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((a1 + 160), v12, &v22) && v22 != *(a1 + 160) + 72 * *(a1 + 176) && *(v22 + 48) != *(v22 + 56))
      {
        v14 = *(a2 + 8);
        v15 = *a3;
        v16 = (*a3)->~__shared_weak_count_0;
        *(v15 + 8) = 0;
        v20[1] = *(v15 + 16);
        *(v15 + 16) = 0;
        v21 = *(v15 + 24);
        *(v15 + 24) = 0;
        v17 = *a3;
        on_zero_shared_weak = (*a3)->__on_zero_shared_weak;
        v20[0] = v16;
        *(v17 + 32) = 0;
        llvm::orc::ExecutionSession::createMaterializationResponsibility(&v22, v14, v20, &on_zero_shared_weak);
      }

      do
      {
        v12 += 2;
        if (v12 == v13)
        {
          goto LABEL_17;
        }
      }

      while ((*v12 | 8) == 0xFFFFFFFFFFFFFFF8);
    }
  }

LABEL_17:
  operator new();
}

void llvm::orc::JITDylib::getRequestedSymbols(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 32);
  std::recursive_mutex::lock(v6);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*(a2 + 8))
  {
    v7 = *a2;
    v8 = *(a2 + 16);
    if (v8)
    {
      v9 = 16 * v8;
      v10 = *a2;
      while ((*v10 | 8) == 0xFFFFFFFFFFFFFFF8)
      {
        v10 += 2;
        v9 -= 16;
        if (!v9)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v10 = *a2;
    }

    v11 = &v7[2 * v8];
    if (v10 != v11)
    {
LABEL_9:
      v12 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::find(a1 + 160, v10);
      if (*(a1 + 160) + 72 * *(a1 + 176) != v12 && *(v12 + 48) != *(v12 + 56))
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(a3, v10, &v13);
      }

      while (1)
      {
        v10 += 2;
        if (v10 == v11)
        {
          break;
        }

        if ((*v10 | 8) != 0xFFFFFFFFFFFFFFF8)
        {
          if (v10 != v11)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }
  }

LABEL_15:
  std::recursive_mutex::unlock(v6);
}

void llvm::orc::JITDylib::resolve(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v55[0] = 0;
  v55[1] = 0;
  v54 = v55;
  v8 = *(a1 + 32);
  std::recursive_mutex::lock(v8);
  v9 = atomic_load((*(a2 + 8) + 8));
  if (v9)
  {
    operator new();
  }

  if (*(a1 + 40))
  {
    std::operator+<char>();
    v10 = std::string::append(&v59, " is defunct");
    v11 = v10->__r_.__value_.__r.__words[2];
    *__p = *&v10->__r_.__value_.__l.__data_;
    *&v61 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    getErrorErrorCat();
    v57 = 3;
    *&v58 = &getErrorErrorCat(void)::ErrorErrorCat;
    llvm::make_error<llvm::StringError,std::string,std::error_code>();
  }

  v53 = a4;
  memset(&v59, 0, 20);
  v57 = 0;
  v58 = 0uLL;
  v12 = *(a3 + 8);
  if (v12)
  {
    std::__split_buffer<llvm::orc::JITDylib::resolve(llvm::orc::MaterializationResponsibility &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>> const&)::$_0::operator() const(void)::WorklistEntry,std::allocator<llvm::orc::JITDylib::resolve(llvm::orc::MaterializationResponsibility &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>> const&)::$_0::operator() const(void)::WorklistEntry> &>::__split_buffer(__p, v12, 0, &v57);
    v13 = __p[1] - (v58 - v57);
    memcpy(v13, v57, v58 - v57);
    v14 = v57;
    v15 = *(&v58 + 1);
    v57 = v13;
    v58 = v61;
    *&v61 = v14;
    *(&v61 + 1) = v15;
    __p[0] = v14;
    __p[1] = v14;
    if (v14)
    {
      operator delete(v14);
    }

    if (*(a3 + 8))
    {
      v16 = *a3;
      v17 = *(a3 + 16);
      if (v17)
      {
        v18 = 24 * v17;
        v19 = *a3;
        while ((*v19 | 8) == 0xFFFFFFFFFFFFFFF8)
        {
          v19 += 3;
          v18 -= 24;
          if (!v18)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v19 = *a3;
      }

      v20 = &v16[3 * v17];
      if (v19 != v20)
      {
LABEL_16:
        __p[0] = 0;
        v21 = llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::SymbolTableEntry>>::LookupBucketFor<llvm::orc::SymbolStringPtr>(*(a1 + 112), *(a1 + 128), *v19, __p);
        v22 = *(a1 + 112);
        v23 = *(a1 + 128);
        v24 = v22 + 24 * v23;
        if (v21)
        {
          v25 = __p[0];
        }

        else
        {
          v25 = (v22 + 24 * v23);
        }

        v26 = v25[8];
        if ((v26 & 0x100) != 0)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>,llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v59, v19, __p);
        }

        else
        {
          v27 = v19[1];
          v28 = v58;
          if (v58 >= *(&v58 + 1))
          {
            v30 = (v58 - v57) >> 5;
            v31 = v30 + 1;
            if ((v30 + 1) >> 59)
            {
              std::vector<std::unique_ptr<llvm::orc::ObjectLinkingLayer::Plugin>>::__throw_length_error[abi:nn200100]();
            }

            v32 = *(&v58 + 1) - v57;
            if ((*(&v58 + 1) - v57) >> 4 > v31)
            {
              v31 = v32 >> 4;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFE0)
            {
              v33 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            std::__split_buffer<llvm::orc::JITDylib::resolve(llvm::orc::MaterializationResponsibility &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>> const&)::$_0::operator() const(void)::WorklistEntry,std::allocator<llvm::orc::JITDylib::resolve(llvm::orc::MaterializationResponsibility &,llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::ExecutorSymbolDef>> const&)::$_0::operator() const(void)::WorklistEntry> &>::__split_buffer(__p, v33, v30, &v57);
            v34 = v61;
            *v61 = v25;
            *(v34 + 8) = v24;
            *(v34 + 16) = v27;
            *(v34 + 24) = v26;
            *&v61 = v61 + 32;
            v35 = __p[1] - (v58 - v57);
            memcpy(v35, v57, v58 - v57);
            v36 = v57;
            v37 = *(&v58 + 1);
            v57 = v35;
            v38 = v61;
            v58 = v61;
            *&v61 = v36;
            *(&v61 + 1) = v37;
            __p[0] = v36;
            __p[1] = v36;
            if (v36)
            {
              v52 = v38;
              operator delete(v36);
              v38 = v52;
            }

            v29 = v38;
          }

          else
          {
            *v58 = v25;
            *(v28 + 8) = v24;
            *(v28 + 16) = v27;
            v29 = v28 + 32;
            *(v28 + 24) = v26;
          }

          *&v58 = v29;
        }

        while (1)
        {
          v19 += 3;
          if (v19 == v20)
          {
            break;
          }

          if ((*v19 | 8) != 0xFFFFFFFFFFFFFFF8)
          {
            if (v19 != v20)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }
    }
  }

LABEL_36:
  if (LODWORD(v59.__r_.__value_.__r.__words[1]))
  {
    operator new();
  }

  v39 = v57;
  for (i = v58; v57 != v58; i = v58)
  {
    v43 = *(i - 32);
    v41 = i - 32;
    v42 = v43;
    v44 = *(v41 + 16);
    v45 = *(v41 + 24);
    *&v58 = v41;
    *(v43 + 8) = v44;
    *(v43 + 16) = v45;
    *(v43 + 18) = *(v43 + 18) & 0x80 | 3;
    __p[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>,llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseMapPair<llvm::orc::SymbolStringPtr,llvm::orc::JITDylib::MaterializingInfo>>::LookupBucketFor<llvm::orc::SymbolStringPtr>((a1 + 160), v43, __p) && __p[0] != (*(a1 + 160) + 72 * *(a1 + 176)))
    {
      llvm::orc::JITDylib::MaterializingInfo::takeQueriesMeeting(__p, __p[0] + 8, 3u);
      v46 = __p[0];
      v47 = __p[1];
      while (v46 != v47)
      {
        llvm::orc::AsynchronousSymbolQuery::notifySymbolMetRequiredState(*v46, v42, v44, v45);
        llvm::orc::AsynchronousSymbolQuery::removeQueryDependence(*v46, a1, v42);
        v48 = *v46;
        if (!*(*v46 + 80))
        {
          v49 = v55[0];
          if (!v55[0])
          {
LABEL_56:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v50 = v49;
              v51 = v49[4];
              if (v51 <= v48)
              {
                break;
              }

              v49 = *v50;
              if (!*v50)
              {
                goto LABEL_56;
              }
            }

            if (v51 >= v48)
            {
              break;
            }

            v49 = v50[1];
            if (!v49)
            {
              goto LABEL_56;
            }
          }
        }

        v46 += 2;
      }

      v56 = __p;
      std::vector<std::shared_ptr<llvm::orc::DefinitionGenerator>>::__destroy_vector::operator()[abi:nn200100](&v56);
    }

    v39 = v57;
  }

  *v53 = 0;
  if (v39)
  {
    *&v58 = v39;
    operator delete(v39);
  }

  llvm::DenseMap<llvm::orc::SymbolStringPtr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::orc::SymbolStringPtr,void>,llvm::detail::DenseSetPair<llvm::orc::SymbolStringPtr>>::~DenseMap(&v59);
  std::recursive_mutex::unlock(v8);
  if (!*v53)
  {
    if (v54 != v55)
    {
      llvm::orc::AsynchronousSymbolQuery::handleComplete(v54[4], *(a1 + 32));
    }

    *v53 = 0;
  }

  std::__tree<std::shared_ptr<llvm::orc::AsynchronousSymbolQuery>>::destroy(&v54, v55[0]);
}