void sub_B2C58C(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      sub_AE5278((a1 + 128), 0);
      v4 = (v3 + *(a1 + 120) + *(a1 + 120) * *(a1 + 376) + 2);
      v5 = *(a1 + 128);
      if (v4 >= (*(a1 + 136) - v5) >> 3)
      {
        goto LABEL_37;
      }

      v7 = (v5 + 8 * v4);
      v6 = v7[1];
      v8 = v6 - *v7;
      if (v6 == *v7)
      {
        goto LABEL_37;
      }

      v9 = 0;
      v10 = 0;
LABEL_7:
      while (2)
      {
        v11 = v9;
        v12 = *(a1 + 128);
        if (v4 >= (*(a1 + 136) - v12) >> 3 || (v13 = v12[2 * v4], v12[2 * v4 + 1] - v13 <= v10))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "key does not exist and cannot be added");
          goto LABEL_49;
        }

        v14 = v13 + v10;
        v15 = *(a1 + 152);
        if (v14 >= (*(a1 + 160) - v15) >> 6)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(exception, "index out of range");
LABEL_49:
        }

        v16 = (v15 + (v14 << 6));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[3];
        v41 = v16[2];
        v42 = v19;
        v39 = v17;
        v40 = v18;
        v21 = *v12;
        v20 = v12[1];
        if (v20 != v21)
        {
          v22 = 0;
          v25 = v15 + (v20 << 6);
          v26 = v42;
          v27 = v15 + (v21 << 6);
          while (1)
          {
            v28 = *(v27 + 28);
            if (v28 != 0x7FFFFFFF)
            {
              if (v28 >= SHIDWORD(v40) && *(v27 + 32) <= v41)
              {
                v29 = *(v27 + 36);
                if (v29 <= DWORD1(v41) && *(v27 + 40) <= DWORD2(v41) && (v29 != DWORD1(v41) || v28 != HIDWORD(v40) || *(v27 + 44) - 10 * v28 <= HIDWORD(v41) - 10 * HIDWORD(v40)) && (*(v27 + 48) & ~v42) == 0)
                {
                  v24 = v22 << 8;
                  v9 = v11 | (v22 << 8);
                  if (++v10 == v8)
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_7;
                }
              }

              if (SHIDWORD(v40) >= v28 && v41 <= *(v27 + 32))
              {
                v30 = *(v27 + 36);
                if (DWORD1(v41) <= v30 && DWORD2(v41) <= *(v27 + 40) && (DWORD1(v41) != v30 || HIDWORD(v40) != v28 || HIDWORD(v41) - 10 * HIDWORD(v40) <= *(v27 + 44) - 10 * v28) && (v26 & ~*(v27 + 48)) == 0)
                {
                  *(v27 + 28) = 0x7FFFFFFF;
                  v22 = 1;
                }
              }
            }

            v27 += 64;
            if (v27 == v25)
            {
              goto LABEL_12;
            }
          }
        }

        v22 = 0;
LABEL_12:
        v23 = sub_B22854((a1 + 128), 0, &v39);
        *(v23 + 52) = -1;
        *(v23 + 60) = 0x7FFFFFFF;
        v24 = v22 << 8;
        v9 = v11 | 1 | (v22 << 8);
        if (++v10 != v8)
        {
          continue;
        }

        break;
      }

LABEL_35:
      if (((v24 | v11) & 0x100) != 0)
      {
        sub_AE5FB0((a1 + 128), 0);
      }

LABEL_37:
      v31 = *(a1 + 128);
      if (*(a1 + 136) != v31)
      {
        break;
      }

      sub_30B70(a1 + 128, 1uLL);
      v31 = *(a1 + 128);
      v32 = *(a1 + 152);
      v33 = *v31;
      if (*(a1 + 136) != v31)
      {
        goto LABEL_39;
      }

      sub_30B70(a1 + 128, 1uLL);
      v34 = v32 + (v33 << 6);
      v35 = *(a1 + 152) + (*(*(a1 + 128) + 4) << 6);
      if (v34 != v35)
      {
LABEL_43:
        v36 = *(a1 + 544);
        v37 = *(a1 + 536);
        do
        {
          v36 = v36 + 1.0;
          v37 += *(v34 + 28);
          v34 += 64;
        }

        while (v34 != v35);
        *(a1 + 544) = v36;
        *(a1 + 536) = v37;
      }

LABEL_3:
      if (++v3 == v1)
      {
        return;
      }
    }

    v32 = *(a1 + 152);
    v33 = *v31;
LABEL_39:
    v34 = v32 + (v33 << 6);
    v35 = v32 + (v31[1] << 6);
    if (v34 != v35)
    {
      goto LABEL_43;
    }

    goto LABEL_3;
  }
}

uint64_t sub_B2C954(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    goto LABEL_6;
  }

  v8 = (*a1 + 8 * a2);
  v7 = v8[1];
  v9 = v7 - *v8;
  if (v7 == *v8)
  {
    goto LABEL_6;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v12 = 0;
    do
    {
      sub_B22FD4(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (a5 == 0xFFFFFFFFLL)
  {
    v13 = 0;
    v17 = 0;
    do
    {
      v18 = sub_B22FD4(a1, a2, v17);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[1];
      v34 = *v18;
      v35 = v21;
      v36 = v19;
      v37 = v20;
      if (SHIDWORD(v21) >= a6)
      {
        v22 = sub_B2CBA4(a1, &v34, a4, 0, 1);
        if (v22)
        {
          sub_B2CBA4(a1, &v34, a3, 1, 1);
          *(v23 + 52) = -1;
          *(v23 + 60) = 0x7FFFFFFF;
        }

        v13 = v22 | v13 | (v22 | v13) & 0xFF00;
      }

      ++v17;
    }

    while (v9 != v17);
  }

  else
  {
    v13 = 0;
    v24 = 0;
    do
    {
      v27 = sub_B22FD4(a1, a2, v24);
      v28 = v27[2];
      v29 = v27[3];
      v30 = v27[1];
      v34 = *v27;
      v35 = v30;
      v36 = v28;
      v37 = v29;
      if (SHIDWORD(v30) >= a6)
      {
        if (sub_B2CD94(a1, &v34, a5))
        {
          v25 = 0;
          LOWORD(v26) = 0;
        }

        else
        {
          v31 = sub_B2CBA4(a1, &v34, a4, 0, 1);
          v25 = v31;
          v26 = v31 >> 8;
          if (v31)
          {
            sub_B2CBA4(a1, &v34, a3, 1, 1);
            *(v32 + 52) = -1;
            *(v32 + 60) = 0x7FFFFFFF;
          }
        }

        v13 = v25 | v13 | v13 & 0xFF00 | (v26 << 8);
      }

      ++v24;
    }

    while (v9 != v24);
  }

  if ((v13 & 0x100) != 0)
  {
    sub_AE5FB0(a1, a3);
    sub_AE5FB0(a1, a4);
  }

  return v13 & 1;
}

unint64_t sub_B2CBA4(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5)
{
  v9 = *a1;
  if (a3 < ((*(a1 + 8) - *a1) >> 3))
  {
    v11 = *(v9 + 8 * a3);
    v10 = *(v9 + 8 * a3 + 4);
    if (v10 != v11)
    {
      v12 = 0;
      v16 = *(a1 + 24);
      v17 = v16 + (v10 << 6);
      v18 = v16 + (v11 << 6);
      v19 = *(a2 + 48);
      while (1)
      {
        v20 = *(v18 + 28);
        if (v20 != 0x7FFFFFFF)
        {
          v21 = *(a2 + 28);
          if (v20 >= v21 && *(v18 + 32) <= *(a2 + 32))
          {
            v22 = *(a2 + 36);
            v23 = *(v18 + 36);
            if (v23 <= v22 && *(v18 + 40) <= *(a2 + 40) && (v23 != v22 || v20 != v21 || *(v18 + 44) - 10 * v20 <= *(a2 + 44) - 10 * v21) && (*(v18 + 48) & ~*(a2 + 48)) == 0)
            {
              return v12 << 8;
            }
          }

          if (v21 >= v20 && *(a2 + 32) <= *(v18 + 32))
          {
            v24 = *(v18 + 36);
            v25 = *(a2 + 36);
            if (v25 <= v24 && *(a2 + 40) <= *(v18 + 40) && (v25 != v24 || v21 != v20 || *(a2 + 44) - 10 * v21 <= *(v18 + 44) - 10 * v20) && (v19 & ~*(v18 + 48)) == 0)
            {
              *(v18 + 28) = 0x7FFFFFFF;
              v12 = 1;
            }
          }
        }

        v18 += 64;
        if (v18 == v17)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v12 = 0;
LABEL_4:
  v13 = sub_B22854(a1, a3, a2);
  if (a5)
  {
    *(v13 + 52) = -1;
    *(v13 + 60) = 0x7FFFFFFF;
  }

  if (a4)
  {
    v14 = *(a1 + 72);
    *(a1 + 72) = v14 + 1;
    *(v13 + 24) = v14;
    *(v13 + 20) = *(a2 + 24);
  }

  return (v12 << 8) | 1;
}

uint64_t sub_B2CD94(void *a1, uint64_t a2, unsigned int a3)
{
  v4 = a3;
  v5 = *a1;
  v6 = a1[1];
  v7 = (v6 - *a1) >> 3;
  if (v7 <= a3)
  {
    v8 = a3 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        v6 = v5 + 8 * v8;
        a1[1] = v6;
      }
    }

    else
    {
      v9 = a1;
      v10 = a3;
      sub_30B70(a1, v8 - v7);
      a3 = v10;
      a1 = v9;
      v5 = *v9;
      v6 = v9[1];
    }
  }

  v11 = a1[3];
  v12 = *(v5 + 8 * v4);
  v13 = (v6 - v5) >> 3;
  if (v13 <= v4)
  {
    v16 = a3 + 1;
    if (v16 > v13)
    {
      v17 = a1;
      sub_30B70(a1, v16 - v13);
      v14 = v11 + (v12 << 6);
      v15 = v17[3] + (*(*v17 + 8 * v4 + 4) << 6);
      if (v14 != v15)
      {
        goto LABEL_12;
      }

      return 0;
    }

    if (v16 < v13)
    {
      a1[1] = v5 + 8 * v16;
    }
  }

  v14 = v11 + (v12 << 6);
  v15 = v11 + (*(v5 + 8 * v4 + 4) << 6);
  if (v14 == v15)
  {
    return 0;
  }

LABEL_12:
  v19 = *(a2 + 28);
  v20 = *(a2 + 36);
  while (1)
  {
    v21 = *(v14 + 28);
    if (v21 != 0x7FFFFFFF && v21 >= v19 && *(v14 + 32) <= *(a2 + 32))
    {
      v23 = *(v14 + 36);
      if (v23 <= v20 && *(v14 + 40) <= *(a2 + 40) && (v23 != v20 || v21 != v19 || *(v14 + 44) - 10 * v21 <= *(a2 + 44) - 10 * v19) && (*(v14 + 48) & ~*(a2 + 48)) == 0)
      {
        break;
      }
    }

    v14 += 64;
    if (v14 == v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_B2CF38(uint64_t a1, int a2, unsigned int a3)
{
  v256[0] = a3;
  *(a1 + 560) = *(a1 + 560) + 1.0;
  v6 = a3;
  v225 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
  v7 = *(a1 + 304);
  v8 = (*(a1 + 312) - v7) >> 2;
  if (v8 <= v6)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        *(a1 + 312) = v7 + 4 * v9;
      }
    }

    else
    {
      sub_49ABAC(a1 + 304, v9 - v8);
    }

    sub_4D9168(a1 + 328, a3 + 1, 0);
  }

  v10 = *(a1 + 328);
  v11 = *(v10 + 8 * (v6 >> 6));
  if (((1 << a3) & v11) == 0)
  {
    *(v10 + 8 * (v6 >> 6)) = (1 << a3) | v11;
    sub_DD38(a1 + 352, v256);
    v6 = v256[0];
  }

  v217 = *(*(a1 + 304) + 4 * v6);
  result = sub_A9D53C(&v254, *(a1 + 24), v225);
  v13 = v254;
  if (v254 < v255)
  {
    v215 = ~a2;
    v216 = a2 + 2;
    v218 = a2 + 1;
    while (1)
    {
      *(a1 + 568) = *(a1 + 568) + 1.0;
      v219 = *v13;
      sub_AE5278((a1 + 128), 0);
      result = sub_A79708(&v242, *(a1 + 24), v225, v217, 0, 1);
      v14 = v246;
      v15 = v246 < v245 || v246 >= v247;
      if (!v15)
      {
        break;
      }

LABEL_11:
      v13 = v254 + 4;
      v254 = v13;
      if (v13 >= v255)
      {
        return result;
      }
    }

    while (1)
    {
      v16 = __ROR8__(*v14, 32);
      v17 = *(a1 + 32);
      v18 = *(v17 + 56) - 1;
      v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
      v20 = v19 ^ (v19 >> 33);
      v21 = *(v17 + 80);
      v23 = *(v17 + 64);
      v22 = *(v17 + 68);
      v24 = v20 & v18;
      v25 = (v21 + 12 * (v20 & v18));
      v27 = *v25;
      v26 = v25[1];
      if (v22 == v26 && v23 == v27)
      {
        goto LABEL_66;
      }

      if (*(v17 + 40))
      {
        break;
      }

      v47 = 1;
      while (__PAIR64__(v26, v27) != v16)
      {
        v24 = (v24 + v47) & v18;
        v48 = (v21 + 12 * v24);
        v27 = *v48;
        v26 = v48[1];
        ++v47;
        if (v22 == v26 && v23 == v27)
        {
          goto LABEL_66;
        }
      }

LABEL_56:
      if (v24 != -1)
      {
        v50 = v21 + 12 * v24;
        v51 = *(v50 + 8);
        if (v51 != -1)
        {
          goto LABEL_58;
        }

        goto LABEL_104;
      }

      v29 = -1;
      if (sub_A99094(*(a1 + 32), 1))
      {
LABEL_34:
        v33 = *(v17 + 56) - 1;
        v34 = *(v17 + 80);
        v36 = *(v17 + 64);
        v35 = *(v17 + 68);
        v37 = v33 & v20;
        v38 = (v34 + 12 * (v33 & v20));
        v40 = *v38;
        v39 = v38[1];
        v41 = *(v17 + 40);
        if (v35 == v39 && v36 == v40)
        {
          goto LABEL_94;
        }

        if (v41)
        {
          v43 = -1;
          v44 = 1;
          do
          {
            if (*(v17 + 36) == v39 && *(v17 + 32) == v40)
            {
              if (v43 == -1)
              {
                v43 = v37;
              }
            }

            else if (__PAIR64__(v39, v40) == v16)
            {
              goto LABEL_88;
            }

            v37 = (v37 + v44) & v33;
            v45 = (v34 + 12 * v37);
            v40 = *v45;
            v39 = v45[1];
            ++v44;
          }

          while (v35 != v39 || v36 != v40);
          if (v43 == -1)
          {
LABEL_94:
            v43 = v37;
          }

          v74 = *(v17 + 48);
          if ((v74 - v41) >= 0x1555555555555555)
          {
            goto LABEL_313;
          }
        }

        else
        {
          v71 = 1;
          while (__PAIR64__(v39, v40) != v16)
          {
            v37 = (v37 + v71) & v33;
            v72 = (v34 + 12 * v37);
            v40 = *v72;
            v39 = v72[1];
            ++v71;
            if (v35 == v39 && v36 == v40)
            {
              v41 = 0;
              goto LABEL_94;
            }
          }

LABEL_88:
          if (v37 != -1)
          {
            v50 = v34 + 12 * v37;
            v51 = *(v50 + 8);
            if (v51 != -1)
            {
              goto LABEL_58;
            }

            goto LABEL_104;
          }

          v43 = -1;
          v74 = *(v17 + 48);
          if ((v74 - v41) >= 0x1555555555555555)
          {
LABEL_313:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }
        }

        if (v41 && ((v75 = (v34 + 12 * v43), *(v17 + 36) == v75[1]) ? (v76 = *(v17 + 32) == *v75) : (v76 = 0), v76))
        {
          *(v17 + 40) = v41 - 1;
          v70 = 3 * v43;
        }

        else
        {
          *(v17 + 48) = v74 + 1;
          v70 = 3 * v43;
        }

        goto LABEL_103;
      }

LABEL_67:
      v67 = *(v17 + 40);
      v66 = *(v17 + 48);
      if ((v66 - v67) >= 0x1555555555555555)
      {
        goto LABEL_313;
      }

      v34 = *(v17 + 80);
      if (v67 && ((v68 = (v34 + 12 * v29), *(v17 + 36) == v68[1]) ? (v69 = *(v17 + 32) == *v68) : (v69 = 0), v69))
      {
        *(v17 + 40) = v67 - 1;
      }

      else
      {
        *(v17 + 48) = v66 + 1;
      }

      v70 = 3 * v29;
LABEL_103:
      v77 = 4 * v70;
      v78 = v34 + v77;
      *v78 = v16;
      *(v78 + 8) = -1;
      v50 = *(v17 + 80) + v77;
      v51 = *(v50 + 8);
      if (v51 != -1)
      {
LABEL_58:
        v241 = v51;
        result = sub_C435EC((a1 + 384), v51, v16);
        if ((result & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_59;
      }

LABEL_104:
      v79 = *(v17 + 112);
      *(v17 + 112) = v79 + 1;
      *(v50 + 8) = v79;
      v81 = *(v17 + 96);
      v80 = *(v17 + 104);
      if (v81 >= v80)
      {
        v83 = *(v17 + 88);
        v84 = v81 - v83;
        v85 = (v81 - v83) >> 3;
        v86 = v85 + 1;
        if ((v85 + 1) >> 61)
        {
          sub_1794();
        }

        v87 = v80 - v83;
        if (v87 >> 2 > v86)
        {
          v86 = v87 >> 2;
        }

        if (v87 >= 0x7FFFFFFFFFFFFFF8)
        {
          v88 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v88 = v86;
        }

        if (v88)
        {
          if (!(v88 >> 61))
          {
            operator new();
          }

LABEL_314:
          sub_1808();
        }

        v89 = v85;
        v90 = (8 * v85);
        v91 = &v90[-v89];
        *v90 = v16;
        v82 = v90 + 1;
        memcpy(v91, v83, v84);
        *(v17 + 88) = v91;
        *(v17 + 96) = v82;
        *(v17 + 104) = 0;
        if (v83)
        {
          operator delete(v83);
        }
      }

      else
      {
        *v81 = v16;
        v82 = v81 + 1;
      }

      *(v17 + 96) = v82;
      v241 = *(v50 + 8);
      result = sub_C435EC((a1 + 384), v241, v16);
      if ((result & 1) == 0)
      {
LABEL_118:
        if (*(a1 + 21))
        {
          goto LABEL_200;
        }

        v92 = *(a1 + 128);
        v93 = *(a1 + 136);
        if (v93 != v92)
        {
          v94 = *(a1 + 152);
          v95 = *v92;
          goto LABEL_130;
        }

        v97 = 1 - ((v93 - v92) >> 3);
        v98 = *(a1 + 144);
        if (v97 > (v98 - v93) >> 3)
        {
          v99 = v98 - v92;
          v100 = v99 >> 2;
          if ((v99 >> 2) <= 1)
          {
            v100 = 1;
          }

          v15 = v99 >= 0x7FFFFFFFFFFFFFF8;
          v101 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v101 = v100;
          }

          if (!(v101 >> 61))
          {
            operator new();
          }

          goto LABEL_314;
        }

        bzero(*(a1 + 136), 8 * v97);
        v103 = &v93[2 * v97];
        *(a1 + 136) = v103;
        v92 = *(a1 + 128);
        v94 = *(a1 + 152);
        v95 = *v92;
        if (v92 == v103)
        {
          v96 = *(a1 + 144);
          if (v96 == v103)
          {
            v104 = 1;
            v105 = v96 - v92;
            if ((v105 >> 2) > 1)
            {
              v104 = v105 >> 2;
            }

            if (v105 >= 0x7FFFFFFFFFFFFFF8)
            {
              v106 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v106 = v104;
            }

            if (v106)
            {
              if (!(v106 >> 61))
              {
                operator new();
              }

              goto LABEL_314;
            }

            *&dword_0 = 0;
            *(a1 + 128) = 0;
            *(a1 + 136) = 8;
            *(a1 + 144) = 0;
            if (v92)
            {
              operator delete(v92);
            }
          }

          else
          {
            *v103 = 0;
            *(a1 + 136) = v103 + 2;
          }

          v92 = *(a1 + 128);
          v102 = *(a1 + 152);
        }

        else
        {
LABEL_130:
          v102 = v94;
        }

        result = sub_AE55B4((a1 + 128), 0, (v94 + (v95 << 6)), (v102 + (v92[1] << 6)));
        goto LABEL_200;
      }

LABEL_59:
      v52 = *(a1 + 128);
      if (*(a1 + 136) != v52)
      {
        v54 = *v52;
        v53 = *(*(a1 + 128) + 4);
        if (v53 != v54)
        {
          v55 = *(a1 + 152);
          v56 = (v55 + (v53 << 6));
          v57 = (v55 + (v54 << 6));
          v58 = v251;
          v59 = v249;
          v60 = v246;
          v61 = v244;
          v62 = (v246 - v245) >> 4;
          do
          {
            v65 = (v59 + 12 * v57[13]);
            if (v58)
            {
              v252 = v57[14];
              v63 = v57[15];
              v253 = v63;
            }

            else
            {
              v63 = *v65;
            }

            v64 = (v61 + *(v61 - *v61 + 6));
            v57[7] = *(&v64[2 * (v65[1] + v62) + 2] + *v64) + v63 - *(v60 + 2);
            v57 += 16;
          }

          while (v57 != v56);
          v250 = v65;
          sub_B2E42C((a1 + 128), 0);
          if ((*(v246 + 15) & 2) == 0 || v248 && (*(v248 + 4 * ((v246 - v245) >> 4)) & v219) != 0)
          {
            goto LABEL_161;
          }

          v107 = *(a1 + 120);
          if (*(a1 + 20) == 1)
          {
            v108 = v107 + v107 * *(a1 + 376);
            v109 = v241;
            v110 = *(a1 + 48);
            if (v110)
            {
              goto LABEL_145;
            }

LABEL_155:
            v114 = 0x80000000;
          }

          else
          {
            v108 = -1;
            v109 = v241;
            v110 = *(a1 + 48);
            if (!v110)
            {
              goto LABEL_155;
            }

LABEL_145:
            if (*v110 > v109)
            {
              v111 = 0;
              v112 = *(a1 + 124) + v215;
              v113 = v112;
              while (v111 <= v112)
              {
                v114 = *sub_A9C7DC(v110 + 2, v110[1] * v109 + v113);
                v111 += 2;
                v113 -= 2;
                if (v114 != 0x7FFFFFFF)
                {
                  goto LABEL_157;
                }
              }
            }

            v114 = 0x7FFFFFFF;
          }

LABEL_157:
          if (!sub_B2E6E4((a1 + 128), 0, v216 + v107 + v107 * v109, v107 + v107 * v109, v108, v114))
          {
            goto LABEL_161;
          }

          v115 = v241;
          if (*(a1 + 216) <= v241)
          {
            sub_4D9168(a1 + 208, v241 + 1, 0);
            v115 = v241;
          }

          if ((*(*(a1 + 208) + ((v115 >> 3) & 0x1FFFFFF8)) >> v115))
          {
LABEL_161:
            v116 = *(a1 + 128);
            v117 = *(a1 + 136);
            v118 = v117 - v116;
            if (v117 != v116)
            {
              goto LABEL_162;
            }

LABEL_178:
            v127 = 1 - (v118 >> 3);
            v128 = *(a1 + 144);
            if (v127 > (v128 - v117) >> 3)
            {
              v129 = v128 - v116;
              v130 = v129 >> 2;
              if ((v129 >> 2) <= 1)
              {
                v130 = 1;
              }

              v15 = v129 >= 0x7FFFFFFFFFFFFFF8;
              v131 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v15)
              {
                v131 = v130;
              }

              if (!(v131 >> 61))
              {
                operator new();
              }

              goto LABEL_314;
            }

            bzero(v117, 8 * v127);
            v117 += 2 * v127;
            *(a1 + 136) = v117;
            v116 = *(a1 + 128);
            v119 = *(a1 + 152);
            v120 = *v116;
            if (v116 != v117)
            {
              goto LABEL_185;
            }

LABEL_163:
            v121 = *(a1 + 144);
            if (v121 == v117)
            {
              v122 = 1;
              v123 = v121 - v116;
              if ((v123 >> 2) > 1)
              {
                v122 = v123 >> 2;
              }

              if (v123 >= 0x7FFFFFFFFFFFFFF8)
              {
                v124 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v124 = v122;
              }

              if (v124)
              {
                if (!(v124 >> 61))
                {
                  operator new();
                }

                goto LABEL_314;
              }

              *&dword_0 = 0;
              *(a1 + 128) = 0;
              *(a1 + 136) = 8;
              *(a1 + 144) = 0;
              if (v116)
              {
                operator delete(v116);
              }
            }

            else
            {
              *v117 = 0;
              *(a1 + 136) = v117 + 2;
            }

            v125 = (v119 + (v120 << 6));
            v126 = *(a1 + 152) + (*(*(a1 + 128) + 4) << 6);
            if (v125 == v126)
            {
              goto LABEL_192;
            }
          }

          else
          {
            sub_DD38(a1 + 232, &v241);
            *(*(a1 + 208) + ((v241 >> 3) & 0x1FFFFFF8)) |= 1 << v241;
            v116 = *(a1 + 128);
            v117 = *(a1 + 136);
            v118 = v117 - v116;
            if (v117 == v116)
            {
              goto LABEL_178;
            }

LABEL_162:
            v119 = *(a1 + 152);
            v120 = *v116;
            if (v116 == v117)
            {
              goto LABEL_163;
            }

LABEL_185:
            v125 = (v119 + (v120 << 6));
            v126 = v119 + (v116[1] << 6);
            if (v125 == v126)
            {
LABEL_192:
              result = sub_B2E42C((a1 + 128), 0);
              goto LABEL_193;
            }
          }

          v132 = v251;
          v133 = v249;
          v134 = v244;
          v135 = (v246 - v245) >> 4;
          do
          {
            v138 = (v133 + 12 * v125[13]);
            if (v132)
            {
              v252 = v125[14];
              v136 = v125[15];
              v253 = v136;
            }

            else
            {
              v136 = *v138;
            }

            v137 = (v134 + *(v134 - *v134 + 6));
            v125[7] = *(&v137[2 * (v138[1] + v135) + 1] + *v137) + v136;
            v125 += 16;
          }

          while (v125 != v126);
          v250 = v138;
          goto LABEL_192;
        }
      }

LABEL_193:
      if (*(v246 + 15))
      {
        if (v248)
        {
          if (*(v248 + 4 * ((v246 - v245) >> 4)) == v219)
          {
            goto LABEL_198;
          }
        }

        else if (!v219)
        {
LABEL_198:
          v139 = v218 + *(a1 + 120) + *(a1 + 120) * v241;
          v140 = *(a1 + 128);
          if (v139 >= (*(a1 + 136) - v140) >> 3)
          {
            goto LABEL_200;
          }

          v143 = (v140 + 8 * v139);
          v141 = *v143;
          v142 = v143[1];
          v144 = v142 - *v143;
          if (v142 == *v143)
          {
            goto LABEL_200;
          }

          v149 = 0;
          v220 = v142 - v141;
          v221 = v218 + *(a1 + 120) + *(a1 + 120) * v241;
          while (2)
          {
            v150 = *(a1 + 128);
            if (v139 >= (*(a1 + 136) - v150) >> 3 || (v152 = (v150 + 8 * v139), v151 = *v152, v152[1] - *v152 <= v149))
            {
              v213 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v213, "key does not exist and cannot be added");
              goto LABEL_312;
            }

            v153 = v151 + v149;
            v154 = *(a1 + 152);
            if (v153 >= (*(a1 + 160) - v154) >> 6)
            {
              v213 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v213, "index out of range");
LABEL_312:
            }

            v155 = v154 + (v153 << 6);
            if (v251 == 1)
            {
              result = sub_A84F48(*(a1 + 24), &v242, *(v155 + 28), 1u);
              if (result)
              {
                goto LABEL_228;
              }

              goto LABEL_220;
            }

            result = sub_A8552C(&v242, *(v155 + 28), 1);
            if (!result)
            {
              goto LABEL_220;
            }

LABEL_228:
            v156 = *(v155 + 20);
            v157 = *(v155 + 32);
            v158 = *(v155 + 36);
            v159 = *(v155 + 40);
            v224 = *(v155 + 44);
            v222 = *(v155 + 48);
            v239 = *(v155 + 49);
            v240 = *(v155 + 51);
            v160 = *(a1 + 24);
            v161 = sub_A57920((v160 + 4136), v225);
            v162 = v161;
            v163 = (v161 - *v161);
            v223 = v158;
            if (*v163 >= 0xFu && (v164 = v163[7]) != 0)
            {
              v165 = *(v160 + 4136);
              v166 = sub_4FC268(*(v161 + v164));
              if ((sub_C9E594(v165 + 3896, v166) & 1) == 0)
              {
LABEL_231:
                v167 = (v162 - *v162);
                v144 = v220;
                if (*v167 >= 0xBu && (v168 = v167[5]) != 0)
                {
                  v169 = *(v162 + v168);
                }

                else
                {
                  v169 = 0;
                }

                v172 = sub_A882D4(v169);
LABEL_238:
                v173 = sub_A57920((v160 + 4136), v225);
                v174 = (v173 - *v173);
                if (*v174 >= 0x19u && (v175 = v174[12]) != 0)
                {
                  v176 = *(v173 + v175);
                }

                else
                {
                  v176 = 2;
                }

                v177 = sub_A882C4(v176);
                if (v159 <= v177)
                {
                  v159 = v177;
                }

                v178 = sub_A57920((v160 + 4136), v225);
                v179 = (v178 - *v178);
                if (*v179 < 0xFu || (v180 = v179[7]) == 0)
                {
                  v181 = 3;
                  result = v224;
                  goto LABEL_251;
                }

                v181 = 0;
                v182 = *(v178 + v180);
                if (v182 > 4)
                {
                  result = v224;
                  if ((v182 - 5) >= 3)
                  {
                    if (v182 == 12 || v182 == 900)
                    {
                      goto LABEL_251;
                    }

                    v208 = ((5243 * (v182 >> 2)) >> 17) - 1;
                    if (v208 <= 0xB)
                    {
                      v181 = byte_22A8146[v208];
                      goto LABEL_251;
                    }
                  }

                  v181 = 3;
                  goto LABEL_251;
                }

                result = v224;
                if (v182 >= 3)
                {
                  if (v182 == 3)
                  {
                    v181 = 1;
                  }

                  else
                  {
                    v181 = 2;
                  }
                }

LABEL_251:
                v183 = (1 << v181) | v222;
                v184 = v253;
                v185 = 0xFFFFFFFF00000000;
                if (v251)
                {
                  v185 = v252 << 32;
                }

                v186 = (-1431655765 * ((v250 - v249) >> 2)) | v185;
                if (!v251)
                {
                  v184 = 0x7FFFFFFF;
                }

                v187 = (v244 + *(v244 - *v244 + 6));
                v188 = v187 + *v187;
                v189 = &v253;
                if (!v251)
                {
                  v189 = v250;
                }

                v190 = *v189;
                v191 = &v188[8 * v250[1] + 8 * ((v246 - v245) >> 4)];
                v192 = *(v191 + 1) + v190;
                LODWORD(v191) = 10 * (*(v155 + 28) - v190 - *(v191 + 2));
                LODWORD(v226) = (v246 - v245) >> 4;
                *(&v226 + 4) = v186;
                HIDWORD(v226) = v184;
                v227 = v256[0];
                v228 = v156;
                v229 = v192;
                v230 = v157;
                v231 = v172 + v223;
                v232 = v159;
                v233 = result - (v191 & ~(v191 >> 31));
                v234 = v183;
                v235 = v239;
                v236 = v240;
                v237 = v186;
                v238 = v184;
                v193 = *(a1 + 128);
                if (*(a1 + 136) == v193 || (v195 = *v193, v194 = *(*(a1 + 128) + 4), v194 == v195))
                {
                  result = sub_B22854((a1 + 128), 0, &v226);
                  v139 = v221;
                  goto LABEL_220;
                }

                v196 = 0;
                v197 = *(a1 + 152);
                v198 = v197 + (v194 << 6);
                v199 = v197 + (v195 << 6);
                do
                {
                  v200 = *(v199 + 28);
                  if (v200 != 0x7FFFFFFF)
                  {
                    if (v200 >= v229 && *(v199 + 32) <= v230)
                    {
                      v201 = *(v199 + 36);
                      if (v201 <= v231 && *(v199 + 40) <= v232 && (v201 != v231 || v200 != v229 || *(v199 + 44) - 10 * v200 <= v233 - 10 * v229) && (*(v199 + 48) & ~v234) == 0)
                      {
                        goto LABEL_280;
                      }
                    }

                    if (v229 >= v200 && v230 <= *(v199 + 32))
                    {
                      v202 = *(v199 + 36);
                      if (v231 <= v202 && v232 <= *(v199 + 40) && (v231 != v202 || v229 != v200 || v233 - 10 * v229 <= *(v199 + 44) - 10 * v200) && (v183 & ~*(v199 + 48)) == 0)
                      {
                        *(v199 + 28) = 0x7FFFFFFF;
                        v196 = 1;
                      }
                    }
                  }

                  v199 += 64;
                }

                while (v199 != v198);
                result = sub_B22854((a1 + 128), 0, &v226);
LABEL_280:
                v139 = v221;
                if ((v196 & 1) == 0)
                {
LABEL_220:
                  if (++v149 == v144)
                  {
                    goto LABEL_200;
                  }

                  continue;
                }

                v203 = *(a1 + 128);
                if (*(a1 + 136) != v203)
                {
                  v204 = *(a1 + 152);
                  v205 = *v203;
LABEL_283:
                  v206 = v204 + (v205 << 6);
                  v207 = v204 + (v203[1] << 6);
                  if (v206 != v207)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_284;
                }

                sub_30B70(a1 + 128, 1uLL);
                v203 = *(a1 + 128);
                v204 = *(a1 + 152);
                v205 = *v203;
                if (*(a1 + 136) != v203)
                {
                  goto LABEL_283;
                }

                sub_30B70(a1 + 128, 1uLL);
                v203 = *(a1 + 128);
                v206 = v204 + (v205 << 6);
                v207 = *(a1 + 152) + (v203[1] << 6);
                if (v206 == v207)
                {
LABEL_284:
                  v206 = v207;
                  if (*(a1 + 136) == v203)
                  {
                    goto LABEL_285;
                  }
                }

                else
                {
LABEL_294:
                  while (*(v206 + 28) != 0x7FFFFFFF)
                  {
                    v206 += 64;
                    if (v206 == v207)
                    {
                      v206 = v207;
                      break;
                    }
                  }

                  if (v207 == v206 || (v209 = v206 + 64, v206 + 64 == v207))
                  {
                    if (*(a1 + 136) != v203)
                    {
                      goto LABEL_300;
                    }
                  }

                  else
                  {
                    do
                    {
                      if (*(v209 + 28) != 0x7FFFFFFF)
                      {
                        v210 = *v209;
                        v211 = *(v209 + 16);
                        v212 = *(v209 + 48);
                        *(v206 + 32) = *(v209 + 32);
                        *(v206 + 48) = v212;
                        *v206 = v210;
                        *(v206 + 16) = v211;
                        v206 += 64;
                      }

                      v209 += 64;
                    }

                    while (v209 != v207);
                    v203 = *(a1 + 128);
                    if (*(a1 + 136) != v203)
                    {
                      goto LABEL_300;
                    }
                  }

LABEL_285:
                  sub_30B70(a1 + 128, 1uLL);
                  v203 = *(a1 + 128);
                }

LABEL_300:
                result = sub_AE55B4((a1 + 128), 0, v206, (*(a1 + 152) + (v203[1] << 6)));
                goto LABEL_220;
              }
            }

            else
            {
              v170 = *(v160 + 4136);
              v171 = sub_4FC268(0x7FFFu);
              if ((sub_C9E594(v170 + 3896, v171) & 1) == 0)
              {
                goto LABEL_231;
              }
            }

            break;
          }

          v172 = 128;
          v144 = v220;
          goto LABEL_238;
        }
      }

LABEL_200:
      v145 = v245;
      v14 = v246 - 2;
      v246 -= 2;
      if (*(v242 + 16) == 1 && (v243 & 1) == 0 && v14 >= v245 && v14 < v247)
      {
        do
        {
          v146 = __ROR8__(*v14, 32);
          if (HIDWORD(v146) == 1 && (v146 + 3) < 2)
          {
            break;
          }

          result = sub_2D5204(**(v242 + 4120));
          v145 = v245;
          v14 = v246;
          if (result)
          {
            break;
          }

          v14 = v246 - 2;
          v246 = v14;
        }

        while (v14 >= v245 && v14 < v247);
      }

      if (v14 < v145 || v14 >= v247)
      {
        goto LABEL_11;
      }
    }

    v29 = -1;
    v30 = 1;
    do
    {
      if (*(v17 + 36) == v26 && *(v17 + 32) == v27)
      {
        if (v29 == -1)
        {
          v29 = v24;
        }
      }

      else if (__PAIR64__(v26, v27) == v16)
      {
        goto LABEL_56;
      }

      v24 = (v24 + v30) & v18;
      v31 = (v21 + 12 * v24);
      v27 = *v31;
      v26 = v31[1];
      ++v30;
    }

    while (v22 != v26 || v23 != v27);
    if (v29 != -1)
    {
      if (sub_A99094(*(a1 + 32), 1))
      {
        goto LABEL_34;
      }

      goto LABEL_67;
    }

LABEL_66:
    v29 = v24;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_34;
    }

    goto LABEL_67;
  }

  return result;
}

char *sub_B2E42C(char *result, unsigned int a2)
{
  v2 = result;
  v3 = a2;
  if (a2 < ((*(result + 1) - *result) >> 3))
  {
    v4 = *(*result + 8 * a2 + 4) - *(*result + 8 * a2);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      do
      {
        if (v4 <= v7)
        {
          v8 = v7;
        }

        else
        {
          v8 = v4;
        }

        result = sub_B22FD4(v2, v3, v6++);
        if (*(result + 7) != 0x7FFFFFFF && v6 < v4)
        {
          if (v3 >= (v2[1] - *v2) >> 3)
          {
LABEL_53:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "key does not exist and cannot be added");
          }

          else
          {
            v10 = (*v2 + 8 * v3);
            v11 = result[48];
            v12 = v6;
            while (1)
            {
              if (v10[1] - *v10 <= v12)
              {
                goto LABEL_53;
              }

              v13 = v12 + *v10;
              v14 = v2[3];
              if (v13 >= (v2[4] - v14) >> 6)
              {
                break;
              }

              v15 = v14 + (v13 << 6);
              v16 = *(v15 + 28);
              if (v16 != 0x7FFFFFFF)
              {
                v17 = *(result + 7);
                if (v17 >= v16 && *(result + 8) <= *(v15 + 32) && (v18 = *(v15 + 36), v19 = *(result + 9), v19 <= v18) && *(result + 10) <= *(v15 + 40) && (v19 == v18 ? (v20 = v17 == v16) : (v20 = 0), v20 ? (v21 = *(result + 11) - 10 * v17 <= *(v15 + 44) - 10 * v16) : (v21 = 1), v21 && (v11 & ~*(v15 + 48)) == 0))
                {
                  *(v15 + 28) = 0x7FFFFFFF;
                  v5 = 1;
                }

                else if (v16 >= v17 && *(v15 + 32) <= *(result + 8))
                {
                  v22 = *(result + 9);
                  v23 = *(v15 + 36);
                  if (v23 <= v22 && *(v15 + 40) <= *(result + 10))
                  {
                    v24 = v23 == v22 && v16 == v17;
                    v25 = !v24 || *(v15 + 44) - 10 * v16 <= *(result + 11) - 10 * v17;
                    if (v25 && (*(v15 + 48) & ~result[48]) == 0)
                    {
                      *(result + 7) = 0x7FFFFFFF;
                      v5 = 1;
                      goto LABEL_6;
                    }
                  }
                }
              }

              if (v8 == ++v12)
              {
                goto LABEL_6;
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "index out of range");
          }
        }

LABEL_6:
        ++v7;
      }

      while (v6 != v4);
      if (v5)
      {

        return sub_AE5FB0(v2, v3);
      }
    }
  }

  return result;
}

uint64_t sub_B2E6E4(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a2 >= ((a1[1] - *a1) >> 3))
  {
    goto LABEL_6;
  }

  v8 = (*a1 + 8 * a2);
  v7 = v8[1];
  v9 = v7 - *v8;
  if (v7 == *v8)
  {
    goto LABEL_6;
  }

  if (a6 == 0x7FFFFFFF)
  {
    v12 = 0;
    do
    {
      sub_B22FD4(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  if (a5 == 0xFFFFFFFFLL)
  {
    v13 = 0;
    v18 = 0;
    do
    {
      v21 = sub_B22FD4(a1, a2, v18);
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[1];
      v34 = *v21;
      v35 = v24;
      v36 = v22;
      v37 = v23;
      if (SHIDWORD(v24) >= a6)
      {
        if (sub_B2CD94(a1, &v34, a4))
        {
          LOWORD(v19) = 0;
          LOBYTE(v20) = 0;
        }

        else
        {
          v20 = sub_B2CBA4(a1, &v34, a3, 1, 1);
          v19 = v20 >> 8;
          if (v20)
          {
            *(v25 + 52) = -1;
            *(v25 + 60) = 0x7FFFFFFF;
          }
        }

        v13 = v20 | v13 | v13 & 0xFF00 | (v19 << 8);
      }

      ++v18;
    }

    while (v9 != v18);
  }

  else
  {
    v13 = 0;
    v26 = 0;
    do
    {
      v29 = sub_B22FD4(a1, a2, v26);
      v30 = v29[2];
      v31 = v29[3];
      v32 = v29[1];
      v34 = *v29;
      v35 = v32;
      v36 = v30;
      v37 = v31;
      if (SHIDWORD(v32) >= a6)
      {
        if (sub_B2CD94(a1, &v34, a5) & 1) != 0 || (sub_B2CD94(a1, &v34, a4))
        {
          LOWORD(v27) = 0;
          LOBYTE(v28) = 0;
        }

        else
        {
          v28 = sub_B2CBA4(a1, &v34, a3, 1, 1);
          v27 = v28 >> 8;
          if (v28)
          {
            *(v33 + 52) = -1;
            *(v33 + 60) = 0x7FFFFFFF;
          }
        }

        v13 = v28 | v13 | v13 & 0xFF00 | (v27 << 8);
      }

      ++v26;
    }

    while (v9 != v26);
  }

  if ((v13 & 0x100) != 0)
  {
    sub_AE5FB0(a1, a3);
  }

  return v13 & 1;
}

void sub_B2E9E0(_Unwind_Exception *a1)
{
  sub_A9595C(&v1[1].__shared_owners_);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_B2EA00(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_B2EA38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_2670F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_B2EA8C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
    if (v3 == v1)
    {
      *(a1 + 88) = v1;
    }

    else
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 2;
        v5 = v6;
        if (v6)
        {
          free(v5);
          *v3 = 0;
        }
      }

      while (v3 != v1);
      v4 = *(a1 + 80);
      *(a1 + 88) = v1;
    }

    free(v4);
  }
}

float32x2_t *sub_B2EB38(float32x2_t *a1, unint64_t a2)
{
  a1[3].i16[0] = 0;
  a1[3].i8[2] = 0;
  a1[3].i32[1] = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x3EA3D70A3F4CCCCDLL;
  a1[5] = 0;
  if (a2)
  {
    v3 = 4;
    if (a2 >= 3)
    {
      do
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v3 *= 2;
      }

      while ((v3 * 0.8) <= a2);
    }
  }

  else
  {
    v3 = 32;
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = v3;
  a1[10] = 0;
  v6[0] = 0;
  v6[1] = 0;
  sub_B2EC90(&a1[6], (v3 - 1) / 0x30 + 1, v6);
  if (v6[0])
  {
    free(v6[0]);
  }

  *a1->f32 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(a1[2], a1[9])));
  a1[3].i8[0] = 0;
  return a1;
}

void sub_B2EC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  sub_A959CC((v9 + 48));
  _Unwind_Resume(a1);
}

void sub_B2EC90(void **a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (a2 > (v5 - v6) >> 4)
  {
    v7 = (v6 - *a1) >> 4;
    if ((v7 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = a2;
      v12 = malloc_type_malloc(16 * v10, 0x1020040EDED9539uLL);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v30 = &v12[16 * v7];
    v36 = v30;
    v37 = &v12[16 * v10];
    v31 = 16 * a2;
    v32 = (v30 + 16 * a2);
    do
    {
      sub_B2EF28(a1, v30, a3);
      v30 += 16;
      v31 -= 16;
    }

    while (v31);
    v33 = a1[1];
    v34 = (v36 + *a1 - v33);
    sub_B2F04C(a1, *a1, v33, v34);
    v35 = *a1;
    *a1 = v34;
    a1[1] = v32;
    a1[2] = v37;
    if (v35)
    {
      free(v35);
    }

    return;
  }

  if (!a2)
  {
    goto LABEL_27;
  }

  v13 = &v6[16 * a2];
  do
  {
    *v6 = 0;
    v15 = *(a3 + 8);
    *(v6 + 4) = v15;
    if (v15)
    {
      v16 = malloc_type_malloc(8 * v15, 0x100004000313F17uLL);
      if (!v16)
      {
        fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v15);
        exit(1);
      }

      *v6 = v16;
      v17 = *(a3 + 8);
      if (*(a3 + 8))
      {
        v18 = *a3;
        v19 = (v17 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v19 < 3)
        {
          v20 = *a3;
LABEL_23:
          v28 = &v18[v17];
          do
          {
            v29 = *v20++;
            *v16++ = v29;
          }

          while (v20 != v28);
          goto LABEL_12;
        }

        v20 = *a3;
        if ((v16 - v18) < 0x20)
        {
          goto LABEL_23;
        }

        v21 = v19 + 1;
        v22 = v21 & 0x3FFFFFFFFFFFFFFCLL;
        v23 = &v16[v22];
        v20 = &v18[v22];
        v24 = (v18 + 2);
        v25 = v16 + 2;
        v26 = v21 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        v16 = v23;
        if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_23;
        }
      }
    }

LABEL_12:
    v14 = *(a3 + 10);
    *(v6 + 7) = *(a3 + 14);
    *(v6 + 10) = v14;
    v6 += 16;
  }

  while (v6 != v13);
  v6 = v13;
LABEL_27:
  a1[1] = v6;
}

void sub_B2EEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B2EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B2EF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  v5 = *(a3 + 8);
  *(a2 + 8) = v5;
  if (v5)
  {
    v6 = malloc_type_malloc(8 * v5, 0x100004000313F17uLL);
    if (!v6)
    {
      fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v5);
      exit(1);
    }

    *a2 = v6;
    v7 = *(a3 + 8);
    if (*(a3 + 8))
    {
      v8 = *a3;
      v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v9 < 3)
      {
        v10 = *a3;
      }

      else
      {
        v10 = *a3;
        if ((v6 - v8) >= 0x20)
        {
          v11 = v9 + 1;
          v12 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          v13 = &v6[v12];
          v10 = &v8[v12];
          v14 = (v8 + 2);
          v15 = v6 + 2;
          v16 = v11 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          v6 = v13;
          if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }
        }
      }

      v18 = &v8[v7];
      do
      {
        v19 = *v10++;
        *v6++ = v19;
      }

      while (v10 != v18);
    }
  }

LABEL_13:
  v20 = *(a3 + 10);
  *(a2 + 14) = *(a3 + 14);
  *(a2 + 10) = v20;
}

void sub_B2F04C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v24 = a4;
  if (a2 == a3)
  {
    return;
  }

  v4 = a4;
  v6 = a2;
  v7 = a2;
  do
  {
    *v4 = 0;
    v9 = *(v7 + 4);
    *(v4 + 8) = v9;
    if (v9)
    {
      v10 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
      if (!v10)
      {
        fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v9);
        exit(1);
      }

      *v4 = v10;
      v11 = *(v7 + 4);
      if (*(v7 + 4))
      {
        v12 = *v7;
        v13 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v13 < 3)
        {
          v14 = *v7;
LABEL_14:
          v22 = &v12[8 * v11];
          do
          {
            v23 = *v14;
            v14 += 8;
            *v10++ = v23;
          }

          while (v14 != v22);
          goto LABEL_3;
        }

        v14 = *v7;
        if ((v10 - v12) < 0x20)
        {
          goto LABEL_14;
        }

        v15 = v13 + 1;
        v16 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        v17 = &v10[v16];
        v14 = &v12[v16 * 8];
        v18 = (v12 + 16);
        v19 = v10 + 2;
        v20 = v15 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v21 = *v18;
          *(v19 - 1) = *(v18 - 1);
          *v19 = v21;
          v18 += 2;
          v19 += 2;
          v20 -= 4;
        }

        while (v20);
        v10 = v17;
        if (v15 != (v15 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_14;
        }
      }
    }

LABEL_3:
    v8 = *(v7 + 10);
    *(v4 + 14) = *(v7 + 7);
    *(v4 + 10) = v8;
    v7 += 2;
    v4 = v24 + 16;
    v24 += 16;
  }

  while (v7 != a3);
  do
  {
    if (*v6)
    {
      free(*v6);
      *v6 = 0;
    }

    v6 += 2;
  }

  while (v6 != a3);
}

void sub_B2F1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B2F1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_B2F210(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 2);
      v3 -= 2;
      v5 = v6;
      if (v6)
      {
        free(v5);
        *v3 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_B2F26C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 2);
    v3 -= 2;
    v4 = v5;
    *(a1 + 16) = v3;
    if (v5)
    {
      free(v4);
      *v3 = 0;
      v3 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    free(*a1);
  }

  return a1;
}

void sub_B2F2CC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    memset(v19, 0, sizeof(v19));
    v20 = 0u;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v17, 0)));
    BYTE8(v17) = 0;
    sub_B2F43C(&v16, 1, a1, 0x20uLL);
    v2 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v2;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *(a1 + 40) = v19[0];
    v6 = *a1;
    v5 = *(a1 + 16);
    v7 = v17;
    *a1 = v16;
    *(a1 + 16) = v7;
    v16 = v6;
    v17 = v5;
    v8 = *&v19[1];
    v19[0] = v3;
    v19[1] = v4;
    v9 = v19[3];
    v10 = *(a1 + 56);
    *(a1 + 48) = v8;
    *(a1 + 64) = v9;
    *&v19[2] = v10;
    *&v8 = v20;
    v11 = *(a1 + 72);
    *(a1 + 72) = v20;
    v20 = v11;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v11)));
    BYTE8(v17) = 0;
    if (v4)
    {
      v12 = v10;
      v13 = v4;
      if (v10 != v4)
      {
        do
        {
          v15 = *(v12 - 2);
          v12 -= 2;
          v14 = v15;
          if (v15)
          {
            free(v14);
            *v12 = 0;
          }
        }

        while (v12 != v4);
        v13 = v19[1];
      }

      v19[2] = v4;
      free(v13);
    }
  }
}

void sub_B2F43C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (*(a1 + 40) | *(a1 + 80))
  {
    for (i = *(a1 + 48); i != *(a1 + 56); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 80) = 0;
  }

  v9 = *(a1 + 72);
  v10 = *(a1 + 16);
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v10, v9)));
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if (a2 == 1)
  {
    v11 = *(a3 + 72);
  }

  else
  {
    v11 = 4;
    if (a4 > 4)
    {
      goto LABEL_22;
    }

    while (*(a3 + 80) - *(a3 + 40) >= (v10.f32[0] * v11))
    {
      do
      {
LABEL_22:
        if ((v11 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v11 *= 2;
      }

      while (v11 < a4);
    }
  }

  if (v11 > v9)
  {
    sub_B2F828((a1 + 48), v11);
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
    *(a1 + 24) = 0;
  }

  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  if (v12 == v13)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v14 = *v12;
  if (*(v12 + 8))
  {
LABEL_26:
    v16 = *(a3 + 48);
    v18 = *(a3 + 56);
    v17 = v16;
    goto LABEL_27;
  }

  v15 = v12 + 16;
  do
  {
    v16 = v15;
    if (v14)
    {
      free(v14);
      *(v16 - 16) = 0;
    }

    *(v16 - 8) = 0;
    if (v16 == v13)
    {
      break;
    }

    v14 = *v16;
    v15 = v16 + 16;
  }

  while (!*(v16 + 8));
  v17 = *(a3 + 48);
  v18 = *(a3 + 56);
LABEL_27:
  v20 = v12 == v17 && v13 == v18;
  while (1)
  {
    v21 = v16 == v18 && v20;
    if (v21 || !*(a3 + 40) || *(a3 + 32) != *v14)
    {
      break;
    }

    v14 += 2;
    v22 = *v16;
    if (v14 == (*v16 + 8 * *(v16 + 8)))
    {
      v23 = v16 + 16;
      do
      {
        v16 = v23;
        if (v22)
        {
          free(v22);
          *(v16 - 16) = 0;
        }

        *(v16 - 8) = 0;
        if (v16 == v13)
        {
          break;
        }

        v14 = *v16;
        v23 = v16 + 16;
        v22 = *v16;
      }

      while (!*(v16 + 8));
    }
  }

  v24 = *(a3 + 56);
  if (v12 != *(a3 + 48) || v13 != v24 || v16 != v24)
  {
    do
    {
      v30 = *(a1 + 72) - 1;
      v31 = v30 & *v14;
      v32 = *(a1 + 48);
      if ((*(v32 + 16 * (v31 / 0x30) + (((v30 & *v14) % 0x30) >> 3) + 10) >> (((v30 & *v14) % 0x30) & 7)))
      {
        v33 = 1;
        do
        {
          v31 = (v31 + v33++) & v30;
        }

        while (((*(v32 + 16 * (v31 / 0x30) + ((v31 % 0x30) >> 3) + 10) >> ((v31 % 0x30) & 7)) & 1) != 0);
      }

      sub_B2F9C8((a1 + 48), v31, v14);
      v14 += 2;
      v34 = *v16;
      if (v14 == (*v16 + 8 * *(v16 + 8)))
      {
        v35 = v16 + 16;
        do
        {
          v16 = v35;
          if (v34)
          {
            free(v34);
            *(v16 - 16) = 0;
          }

          *(v16 - 8) = 0;
          if (v16 == v13)
          {
            break;
          }

          v14 = *v16;
          v35 = v16 + 16;
          v34 = *v16;
        }

        while (!*(v16 + 8));
      }

      while (1)
      {
        v36 = v16 == v18 && v20;
        if (v36 || !*(a3 + 40) || *(a3 + 32) != *v14)
        {
          break;
        }

        v14 += 2;
        v37 = *v16;
        if (v14 == (*v16 + 8 * *(v16 + 8)))
        {
          v38 = v16 + 16;
          do
          {
            v16 = v38;
            if (v37)
            {
              free(v37);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v38 = v16 + 16;
            v37 = *v16;
          }

          while (!*(v16 + 8));
        }
      }

      v27 = *(a3 + 56);
    }

    while (v12 != *(a3 + 48) || v13 != v27 || v16 != v27);
  }

  ++*(a1 + 28);
}

void sub_B2F828(void **a1, unint64_t a2)
{
  if (a2)
  {
    v4 = (a2 - 1) / 0x30 + 1;
  }

  else
  {
    v4 = 0;
  }

  v24[0] = 0;
  v24[1] = 0;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      v7 = *a1 + 16 * v4;
      while (v5 != v7)
      {
        v9 = *(v5 - 2);
        v5 -= 16;
        v8 = v9;
        if (v9)
        {
          free(v8);
          *v5 = 0;
        }
      }

      a1[1] = v7;
    }
  }

  else
  {
    sub_B2EC90(a1, v4 - v6, v24);
    if (v24[0])
    {
      free(v24[0]);
    }
  }

  if (a1[3] > a2)
  {
    v10 = a2 % 0x30;
    v11 = a1[1];
    if (a2 % 0x30)
    {
      v12 = (v11 - 16);
      do
      {
        sub_B2FD5C(v12, v10);
        LODWORD(v10) = v10 + 1;
      }

      while (v10 != 48);
      v11 = a1[1];
    }

    a1[4] = 0;
    v13 = *a1;
    if (*a1 != v11)
    {
      v14 = v11 - v13 - 16;
      if (v14 >= 0x10)
      {
        v17 = 0;
        v18 = 0;
        v19 = (v14 >> 4) + 1;
        v16 = &v13[16 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
        v20 = (v13 + 24);
        v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          v22 = *(v20 - 8);
          v23 = *v20;
          v20 += 16;
          v17 += v22;
          v18 += v23;
          v21 -= 2;
        }

        while (v21);
        v15 = (v18 + v17);
        if (v19 == (v19 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v15 = 0;
        v16 = *a1;
      }

      do
      {
        v15 += *(v16 + 4);
        v16 += 16;
      }

      while (v16 != v11);
LABEL_25:
      a1[4] = v15;
    }
  }

  a1[3] = a2;
}

void sub_B2F9B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_B2F9C8(void *a1, unint64_t a2, void *a3)
{
  v4 = a2 / 0x30;
  v5 = *a1 + 16 * (a2 / 0x30);
  v6 = *(v5 + 8);
  v7 = a2 % 0x30;
  v8 = v5 + 10;
  if (a2 % 0x30 < 9)
  {
    v11 = 0;
    v14 = (v5 + 10);
    v12 = a2 % 0x30;
    goto LABEL_12;
  }

  v9 = (48 * v4 - a2 + 7);
  if (v9 <= 0xFFF7)
  {
    LOWORD(v9) = -9;
  }

  v10 = v9 + a2 - 48 * v4;
  if (v10 >= 8u)
  {
    v15 = 0;
    v16 = 0;
    v17 = (v10 >> 3) + 1;
    LOWORD(v12) = v7 - 8 * (((v10 >> 3) + 1) & 0x3FFE);
    v13 = (v8 + (v17 & 0x3FFE));
    v18 = (v5 + 11);
    v19 = v17 & 0x3FFE;
    do
    {
      v20 = *(v18 - 1);
      v21 = *v18;
      v18 += 2;
      v15 += byte_22A7B46[v20];
      v16 += byte_22A7B46[v21];
      v19 -= 2;
    }

    while (v19);
    v11 = v16 + v15;
    if ((v17 & 0x3FFE) == v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
    v12 = a2 % 0x30;
    v13 = (v5 + 10);
  }

  do
  {
    v22 = *v13++;
    v11 += byte_22A7B46[v22];
    LOWORD(v12) = v12 - 8;
  }

  while (v12 > 8u);
LABEL_11:
  v14 = (v8 + ((v7 - 9) >> 3) + 1);
LABEL_12:
  v23 = v7 >> 3;
  v24 = v11 + byte_22A7B46[~(-1 << v12) & *v14];
  v25 = 1 << (v7 & 7);
  if ((v25 & *(v8 + (v7 >> 3))) != 0)
  {
    v26 = *v5;
    v27 = (v11 + byte_22A7B46[~(-1 << v12) & *v14]);
    goto LABEL_38;
  }

  v56 = a3;
  v28 = malloc_type_malloc(8 * (v6 + 1), 0x100004000313F17uLL);
  if (!v28)
  {
    fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", (v6 + 1));
    exit(1);
  }

  v26 = v28;
  v29 = *v5;
  v27 = v24;
  if (!v24)
  {
    a3 = v56;
    v39 = *(v5 + 8);
    if (v39 != v24)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  v30 = (v24 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  a3 = v56;
  if (v30 < 3)
  {
    v31 = v26;
    v32 = *v5;
    do
    {
LABEL_25:
      v40 = *v32++;
      *v31++ = v40;
    }

    while (v32 != &v29[v24]);
    goto LABEL_26;
  }

  v31 = v26;
  v32 = *v5;
  if ((v26 - v29) < 0x20)
  {
    goto LABEL_25;
  }

  v33 = v30 + 1;
  v34 = v33 & 0x3FFFFFFFFFFFFFFCLL;
  v31 = &v26[v34];
  v32 = &v29[v34];
  v35 = (v29 + 2);
  v36 = v26 + 2;
  v37 = v33 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v38 = *v35;
    *(v36 - 1) = *(v35 - 1);
    *v36 = v38;
    v35 += 2;
    v36 += 2;
    v37 -= 4;
  }

  while (v37);
  if (v33 != (v33 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_25;
  }

LABEL_26:
  v29 = *v5;
  v39 = *(v5 + 8);
  if (v39 != v24)
  {
LABEL_27:
    v41 = v24;
    v42 = &v26[v41];
    v43 = &v29[v41];
    v44 = 8 * v39 - v41 * 8 - 8;
    if (v44 < 0x28)
    {
      goto LABEL_32;
    }

    if ((v26 - v29 + 8) < 0x20)
    {
      goto LABEL_32;
    }

    v45 = (v44 >> 3) + 1;
    v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
    v42 += v46;
    v43 = (v43 + v46);
    v47 = &v29[v41 + 2];
    v48 = &v26[v41 + 3];
    v49 = v45 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v50 = *v47;
      *(v48 - 1) = *(v47 - 1);
      *v48 = v50;
      v47 += 2;
      v48 += 4;
      v49 -= 4;
    }

    while (v49);
    if (v45 != (v45 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      v51 = &v29[v39];
      v52 = v42 + 8;
      do
      {
        v53 = *v43++;
        *v52++ = v53;
      }

      while (v43 != v51);
    }

    v29 = *v5;
  }

LABEL_35:
  if (v29)
  {
    free(v29);
    a3 = v56;
  }

  *v5 = v26;
  ++*(v5 + 8);
  *(v8 + v23) |= v25;
LABEL_38:
  v26[v27] = *a3;
  v54 = *v5;
  a1[4] = a1[4] - v6 + *(*a1 + 16 * v4 + 8);
  return &v54[v27];
}

void sub_B2FD5C(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 10;
  v3 = a2 >> 3;
  v4 = 1 << (a2 & 7);
  if ((v4 & *(a1 + 10 + v3)) != 0)
  {
    if (a2 < 9)
    {
      v7 = 0;
      v9 = (a1 + 10);
      v10 = *(a1 + 8) - 1;
      if (*(a1 + 8) == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    }

    v6 = (a2 - 9) >> 3;
    if ((a2 - 9) >= 8u)
    {
      v26 = 0;
      v27 = 0;
      LOWORD(a2) = a2 - 8 * ((v6 + 1) & 0x3FFE);
      v8 = (v2 + ((v6 + 1) & 0x3FFE));
      v28 = (a1 + 11);
      v29 = (v6 + 1) & 0x3FFE;
      do
      {
        v30 = *(v28 - 1);
        v31 = *v28;
        v28 += 2;
        v26 += byte_22A7B46[v30];
        v27 += byte_22A7B46[v31];
        v29 -= 2;
      }

      while (v29);
      v7 = v27 + v26;
      if (((v6 + 1) & 0x3FFE) == (v6 + 1))
      {
LABEL_18:
        v9 = (v2 + v6 + 1);
        v10 = *(a1 + 8) - 1;
        if (*(a1 + 8) == 1)
        {
LABEL_19:
          v14 = 0;
          v15 = *a1;
          if (!*a1)
          {
LABEL_21:
            *a1 = v14;
            --*(a1 + 8);
            *(v2 + v3) &= ~v4;
            return;
          }

LABEL_20:
          free(v15);
          goto LABEL_21;
        }

LABEL_6:
        v11 = byte_22A7B46[~(-1 << a2) & *v9];
        v12 = v10;
        v13 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
        if (!v13)
        {
          fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v12);
          exit(1);
        }

        v14 = v13;
        v15 = *a1;
        v16 = (v7 + v11);
        if (!(v7 + v11))
        {
LABEL_26:
          v34 = &v15[v16 + 1];
          v35 = *(a1 + 8);
          v36 = &v15[v35];
          if (v34 != v36)
          {
            v37 = 8 * v16;
            v38 = &v14[8 * v16];
            v39 = 8 * v35 - v37 - 16;
            if (v39 < 0x28)
            {
              goto LABEL_39;
            }

            if ((v14 - v15 - 8) < 0x20)
            {
              goto LABEL_39;
            }

            v40 = (v39 >> 3) + 1;
            v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
            v38 += v41;
            v34 = (v34 + v41);
            v42 = &v15[v37 / 8 + 3];
            v43 = &v14[v37 + 16];
            v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v45 = *v42;
              *(v43 - 1) = *(v42 - 1);
              *v43 = v45;
              v42 += 2;
              v43 += 32;
              v44 -= 4;
            }

            while (v44);
            if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_39:
              do
              {
                v46 = *v34++;
                *v38 = v46;
                v38 += 8;
              }

              while (v34 != v36);
            }

            v15 = *a1;
          }

          if (!v15)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v17 = (v16 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v17 < 3)
        {
          v18 = v14;
          v19 = *a1;
        }

        else
        {
          v18 = v14;
          v19 = *a1;
          if ((v14 - v15) >= 0x20)
          {
            v20 = v17 + 1;
            v21 = v20 & 0x3FFFFFFFFFFFFFFCLL;
            v18 = &v14[v21 * 8];
            v19 = &v15[v21];
            v22 = (v15 + 2);
            v23 = v14 + 16;
            v24 = v20 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v25 = *v22;
              *(v23 - 1) = *(v22 - 1);
              *v23 = v25;
              v22 += 2;
              v23 += 2;
              v24 -= 4;
            }

            while (v24);
            if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_25;
            }
          }
        }

        do
        {
          v33 = *v19++;
          *v18 = v33;
          v18 += 8;
        }

        while (v19 != &v15[(v7 + v11)]);
LABEL_25:
        v15 = *a1;
        goto LABEL_26;
      }
    }

    else
    {
      v7 = 0;
      v8 = (a1 + 10);
    }

    do
    {
      v32 = *v8++;
      v7 += byte_22A7B46[v32];
      LOWORD(a2) = a2 - 8;
    }

    while (a2 > 8u);
    goto LABEL_18;
  }
}

uint64_t sub_B30050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = -1;
  *(a1 + 8) = 8;
  *(a1 + 16) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 16843009;
  *(a1 + 32) = 256;
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 64) = *a6;
  v10 = a6[1];
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = *a7;
  v11 = a7[1];
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *a8;
  v12 = a8[1];
  *(a1 + 104) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *&v13 = 0x8000000080000000;
  *(&v13 + 1) = 0x8000000080000000;
  *(a1 + 116) = v13;
  *(a1 + 136) = 10;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = -1;
  if (!*a5)
  {
    sub_B2E920();
  }

  *(a1 + 176) = *a5;
  v14 = a5[1];
  *(a1 + 184) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 456) = -1;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 464) = 0;
  sub_C43044(a1 + 488, a2);
  *(a1 + 584) = *a5 == 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 592, &__p);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_B30230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_1F1A8(v17);
  sub_1F1A8(v16);
  sub_1F1A8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_B302D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = xmmword_229B660;
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v7 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *&v8 = 0x8000000080000000;
  *(&v8 + 1) = 0x8000000080000000;
  *(a1 + 68) = v8;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x100000004;
  sub_B30454(a1 + 128);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = -1;
  sub_C43044(a1 + 448, a2);
  v11 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 544, &__p);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_B303EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A95814((v15 + 448));
  sub_A95860(v15 + 368);
  sub_4D0584(v15 + 320);
  sub_4D0584(v15 + 272);
  sub_A95A3C((v15 + 128));
  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_B30454(uint64_t a1)
{
  v2 = sub_B30514(a1, 0);
  *(v2 + 88) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  sub_B30AF0(v2);
  *(a1 + 26) = 1;
  *(a1 + 32) = -1;
  return a1;
}

void sub_B304CC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 112);
  if (v4)
  {
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      sub_A9595C(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 96) = v5;
  operator delete(v5);
  sub_A9595C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_B30514(uint64_t a1, unint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0x3EA3D70A3F4CCCCDLL;
  *(a1 + 28) = 0xFFFFFFFF00000000;
  *(a1 + 40) = 0;
  if (a2)
  {
    v3 = 4;
    if (a2 >= 3)
    {
      do
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v3 *= 2;
      }

      while ((v3 * 0.8) <= a2);
    }
  }

  else
  {
    v3 = 32;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0;
  v6[0] = 0;
  v6[1] = 0;
  sub_B30678((a1 + 48), (v3 - 1) / 0x30 + 1, v6);
  if (v6[0])
  {
    free(v6[0]);
  }

  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
  *(a1 + 24) = 0;
  return a1;
}

void sub_B30644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  sub_A959CC((v9 + 48));
  _Unwind_Resume(a1);
}

void sub_B30678(void **a1, unint64_t a2, uint64_t **a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (a2 <= (v5 - v6) >> 4)
  {
    if (a2)
    {
      v13 = &v6[16 * a2];
      do
      {
        *v6 = 0;
        v15 = *(a3 + 4);
        *(v6 + 4) = v15;
        if (v15)
        {
          v16 = malloc_type_malloc(12 * v15, 0x10000403E1C8BA9uLL);
          if (!v16)
          {
            fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v15);
            exit(1);
          }

          *v6 = v16;
          if (*(a3 + 4))
          {
            v17 = *a3;
            v18 = 12 * *(a3 + 4);
            do
            {
              v19 = *v17;
              v16[2] = *(v17 + 2);
              *v16 = v19;
              v16 += 3;
              v17 = (v17 + 12);
              v18 -= 12;
            }

            while (v18);
          }
        }

        v14 = *(a3 + 10);
        *(v6 + 7) = *(a3 + 7);
        *(v6 + 10) = v14;
        v6 += 16;
      }

      while (v6 != v13);
      v6 = v13;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = (v6 - *a1) >> 4;
    if ((v7 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = a2;
      v12 = malloc_type_malloc(16 * v10, 0x1020040EDED9539uLL);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v20 = &v12[16 * v7];
    v26 = v20;
    v27 = &v12[16 * v10];
    v21 = 16 * a2;
    v22 = (v20 + 16 * a2);
    do
    {
      sub_B308B8(a1, v20, a3);
      v20 += 16;
      v21 -= 16;
    }

    while (v21);
    v23 = a1[1];
    v24 = (v26 + *a1 - v23);
    sub_B30984(a1, *a1, v23, v24);
    v25 = *a1;
    *a1 = v24;
    a1[1] = v22;
    a1[2] = v27;
    if (v25)
    {
      free(v25);
    }
  }
}

void sub_B3087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B308A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B308B8(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  *a2 = 0;
  v5 = *(a3 + 4);
  *(a2 + 8) = v5;
  if (v5)
  {
    v6 = malloc_type_malloc(12 * v5, 0x10000403E1C8BA9uLL);
    if (!v6)
    {
      fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v5);
      exit(1);
    }

    *a2 = v6;
    if (*(a3 + 4))
    {
      v7 = *a3;
      v8 = 12 * *(a3 + 4);
      do
      {
        v9 = *v7;
        v6[2] = *(v7 + 2);
        *v6 = v9;
        v6 += 3;
        v7 = (v7 + 12);
        v8 -= 12;
      }

      while (v8);
    }
  }

  v10 = *(a3 + 10);
  *(a2 + 14) = *(a3 + 7);
  *(a2 + 10) = v10;
}

void sub_B30984(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v9 = *(v7 + 4);
      *(v4 + 8) = v9;
      if (v9)
      {
        v10 = malloc_type_malloc(12 * v9, 0x10000403E1C8BA9uLL);
        if (!v10)
        {
          fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v9);
          exit(1);
        }

        *v4 = v10;
        if (*(v7 + 4))
        {
          v11 = *v7;
          v12 = 12 * *(v7 + 4);
          do
          {
            v13 = *v11;
            v10[2] = v11[2];
            *v10 = v13;
            v10 += 3;
            v11 += 3;
            v12 -= 12;
          }

          while (v12);
        }
      }

      v8 = *(v7 + 10);
      *(v4 + 14) = *(v7 + 7);
      *(v4 + 10) = v8;
      v7 += 2;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (*v6)
      {
        free(*v6);
        *v6 = 0;
      }

      v6 += 2;
    }
  }
}

void sub_B30AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B30ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B30AF0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 32);
    memset(v19, 0, sizeof(v19));
    v20 = 0u;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v17, 0)));
    BYTE8(v17) = 0;
    sub_B30C60(&v16, 1, a1, 0x20uLL);
    v2 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v2;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *(a1 + 40) = v19[0];
    v6 = *a1;
    v5 = *(a1 + 16);
    v7 = v17;
    *a1 = v16;
    *(a1 + 16) = v7;
    v16 = v6;
    v17 = v5;
    v8 = *&v19[1];
    v19[0] = v3;
    v19[1] = v4;
    v9 = v19[3];
    v10 = *(a1 + 56);
    *(a1 + 48) = v8;
    *(a1 + 64) = v9;
    *&v19[2] = v10;
    *&v8 = v20;
    v11 = *(a1 + 72);
    *(a1 + 72) = v20;
    v20 = v11;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v11)));
    BYTE8(v17) = 0;
    if (v4)
    {
      v12 = v10;
      v13 = v4;
      if (v10 != v4)
      {
        do
        {
          v15 = *(v12 - 2);
          v12 -= 2;
          v14 = v15;
          if (v15)
          {
            free(v14);
            *v12 = 0;
          }
        }

        while (v12 != v4);
        v13 = v19[1];
      }

      v19[2] = v4;
      free(v13);
    }
  }
}

void sub_B30C60(void *a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1[5] | a1[10])
  {
    for (i = a1[6]; i != v7[7]; i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    v7[10] = 0;
  }

  v9 = v7[9];
  v10 = v7[2];
  *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v10, v9)));
  *(v7 + 24) = 0;
  v7[5] = 0;
  if (a2 == 1)
  {
    v11 = *(a3 + 72);
  }

  else
  {
    v11 = 4;
    if (a4 > 4)
    {
      goto LABEL_32;
    }

    while (*(a3 + 80) - *(a3 + 40) >= (v10.f32[0] * v11))
    {
      do
      {
LABEL_32:
        if ((v11 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v11 *= 2;
      }

      while (v11 < a4);
    }
  }

  if (v11 > v9)
  {
    sub_B31220(v7 + 6, v11);
    *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v7[2], v7[9])));
    *(v7 + 24) = 0;
  }

  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  if (v12 == v13)
  {
    v14 = 0;
LABEL_36:
    v16 = *(a3 + 48);
    v17 = *(a3 + 56);
    v19 = 1;
    if (v12 == v13)
    {
      goto LABEL_50;
    }

    goto LABEL_37;
  }

  v14 = *v12;
  if (*(v12 + 8))
  {
    goto LABEL_36;
  }

  v15 = v12 + 16;
  do
  {
    v16 = v15;
    if (v14)
    {
      free(v14);
      *(v16 - 16) = 0;
    }

    *(v16 - 8) = 0;
    if (v16 == v13)
    {
      break;
    }

    v14 = *v16;
    v15 = v16 + 16;
  }

  while (!*(v16 + 8));
  v17 = *(a3 + 56);
  v19 = v12 == *(a3 + 48) && v13 == v17;
  if (v16 != v17 || !v19)
  {
LABEL_37:
    if (*(a3 + 40))
    {
      do
      {
        if (*(a3 + 32) != *v14)
        {
          break;
        }

        v14 += 3;
        v21 = *v16;
        if (v14 == (*v16 + 12 * *(v16 + 8)))
        {
          v22 = v16 + 16;
          do
          {
            v16 = v22;
            if (v21)
            {
              free(v21);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v22 = v16 + 16;
            v21 = *v16;
          }

          while (!*(v16 + 8));
        }

        v23 = v16 == v17 && v19;
      }

      while (!v23 && *(a3 + 40));
    }
  }

LABEL_50:
  v24 = *(a3 + 56);
  if (v12 != *(a3 + 48) || v13 != v24 || v16 != v24)
  {
    v72 = a3;
    v73 = v7;
    v70 = v17;
    v71 = v12;
    v69 = v19;
    while (1)
    {
      v30 = v7[9] - 1;
      v31 = v30 & *v14;
      v32 = v7[6];
      v33 = v31 / 0x30;
      v34 = (v30 & *v14) % 0x30;
      v35 = v34 >> 3;
      v36 = 1 << (v34 & 7);
      if ((v36 & *(v32 + 16 * (v31 / 0x30) + (v34 >> 3) + 10)) != 0)
      {
        v37 = 1;
        do
        {
          v31 = (v31 + v37) & v30;
          v33 = v31 / 0x30;
          v34 = v31 % 0x30;
          v35 = (v31 % 0x30) >> 3;
          v36 = 1 << ((v31 % 0x30) & 7);
          ++v37;
        }

        while ((v36 & *(v32 + 16 * (v31 / 0x30) + v35 + 10)) != 0);
      }

      v38 = v34;
      v39 = v32 + 16 * v33;
      v40 = v39 + 10;
      if (v34 >= 9)
      {
        break;
      }

      v43 = 0;
      v45 = (v39 + 10);
LABEL_79:
      v54 = *(v39 + 8);
      v55 = v43 + byte_22A7C46[~(-1 << v38) & *v45];
      if ((v36 & *(v40 + v35)) == 0)
      {
        v68 = *(v39 + 8);
        sub_B31684(v39, (v43 + byte_22A7C46[~(-1 << v38) & *v45]));
        v54 = v68;
        ++*(v39 + 8);
        *(v40 + v35) |= v36;
      }

      v56 = *v39 + 12 * v55;
      v57 = *v14;
      *(v56 + 8) = v14[2];
      *v56 = v57;
      v7 = v73;
      v73[10] = v73[10] - v54 + *(v73[6] + 16 * v33 + 8);
      v14 += 3;
      v58 = *v16;
      if (v14 == (*v16 + 12 * *(v16 + 8)))
      {
        v63 = v16 + 16;
        v60 = v71;
        v59 = v72;
        v61 = v70;
        v62 = v69;
        do
        {
          v16 = v63;
          if (v58)
          {
            free(v58);
            *(v16 - 16) = 0;
          }

          *(v16 - 8) = 0;
          if (v16 == v13)
          {
            break;
          }

          v14 = *v16;
          v63 = v16 + 16;
          v58 = *v16;
        }

        while (!*(v16 + 8));
      }

      else
      {
        v60 = v71;
        v59 = v72;
        v61 = v70;
        v62 = v69;
      }

      while (1)
      {
        v64 = v16 == v61 && v62;
        if (v64 || !*(v59 + 40) || *(v59 + 32) != *v14)
        {
          break;
        }

        v14 += 3;
        v65 = *v16;
        if (v14 == (*v16 + 12 * *(v16 + 8)))
        {
          v66 = v16 + 16;
          do
          {
            v16 = v66;
            if (v65)
            {
              free(v65);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v66 = v16 + 16;
            v65 = *v16;
          }

          while (!*(v16 + 8));
        }
      }

      v27 = *(v59 + 56);
      if (v60 == *(v59 + 48) && v13 == v27 && v16 == v27)
      {
        goto LABEL_101;
      }
    }

    v41 = (7 - v34);
    if (v41 <= 0xFFF7)
    {
      LOWORD(v41) = -9;
    }

    v42 = v41 + v34;
    if ((v41 + v34) >= 8u)
    {
      v46 = 0;
      v47 = 0;
      v48 = (v42 >> 3) + 1;
      v38 = v34 - 8 * (((v42 >> 3) + 1) & 0x3FFE);
      v44 = (v40 + (((v42 >> 3) + 1) & 0x3FFE));
      v49 = (v39 + 11);
      v50 = v48 & 0x3FFE;
      do
      {
        v51 = *(v49 - 1);
        v52 = *v49;
        v49 += 2;
        v46 += byte_22A7C46[v51];
        v47 += byte_22A7C46[v52];
        v50 -= 2;
      }

      while (v50);
      v43 = v47 + v46;
      if ((v48 & 0x3FFE) == v48)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v43 = 0;
      v44 = (v39 + 10);
    }

    do
    {
      v53 = *v44++;
      v43 += byte_22A7C46[v53];
      v38 -= 8;
    }

    while (v38 > 8u);
LABEL_78:
    v45 = (v40 + ((v34 - 9) >> 3) + 1);
    goto LABEL_79;
  }

LABEL_101:
  ++*(v7 + 7);
}

void sub_B31220(void **a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a2)
  {
    v4 = (a2 - 1) / 0x30 + 1;
  }

  else
  {
    v4 = 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      v7 = *a1 + 16 * v4;
      while (v5 != v7)
      {
        v9 = *(v5 - 2);
        v5 -= 16;
        v8 = v9;
        if (v9)
        {
          free(v8);
          *v5 = 0;
        }
      }

      v3[1] = v7;
    }
  }

  else
  {
    sub_B30678(a1, v4 - v6, v42);
    if (v42[0])
    {
      free(v42[0]);
    }
  }

  if (v3[3] <= v2)
  {
    goto LABEL_42;
  }

  v10 = v2 % 0x30;
  v11 = v3[1];
  if (!(v2 % 0x30))
  {
    goto LABEL_34;
  }

  v39 = v3;
  v40 = v2;
  v12 = 0;
  v13 = (v11 - 16);
  v14 = v11 - 6;
  v41 = v2 - 9 - 48 * (v2 / 0x30);
  v15 = v41;
  do
  {
    v16 = v10 >> 3;
    v17 = 1 << (v10 & 7);
    if ((v17 & v14[v16]) != 0)
    {
      if (v10 < 9u)
      {
        v18 = 0;
        v21 = v11 - 6;
        LOBYTE(v19) = v10;
        if (*(v11 - 4) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      }

      if ((v41 + v12) >= 8u)
      {
        v22 = 0;
        v23 = 0;
        v24 = ((v15 >> 3) + 1) & 0x3FFE;
        v19 = v10 - 8 * ((((v41 + v12) >> 3) + 1) & 0x3FFE);
        v20 = &v14[(((v41 + v12) >> 3) + 1) & 0x3FFE];
        v26 = v11 - 6;
        do
        {
          v22 += byte_22A7C46[*v26];
          v23 += byte_22A7C46[v26[1]];
          v26 += 2;
          v24 -= 2;
        }

        while (v24);
        v18 = v23 + v22;
        v25 = ((v41 + v12) >> 3) + 1;
        if ((v25 & 0x3FFE) == v25)
        {
LABEL_29:
          v21 = &v11[((v10 - 9) >> 3) - 5];
          if (*(v11 - 4) == 1)
          {
LABEL_30:
            if (*v13)
            {
              free(*v13);
            }

            *v13 = 0;
            goto LABEL_17;
          }

LABEL_16:
          sub_B31564((v11 - 16), (v18 + byte_22A7C46[~(-1 << v19) & *v21]));
LABEL_17:
          --*(v11 - 4);
          v14[v16] &= ~v17;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = 0;
        v19 = v10;
        v20 = v11 - 6;
      }

      do
      {
        v27 = *v20++;
        v18 += byte_22A7C46[v27];
        v19 -= 8;
      }

      while (v19 > 8u);
      goto LABEL_29;
    }

LABEL_18:
    LOWORD(v10) = v10 + 1;
    ++v12;
    ++v15;
  }

  while (v10 != 48);
  v3 = v39;
  v2 = v40;
  v11 = v39[1];
LABEL_34:
  v3[4] = 0;
  v28 = *v3;
  if (*v3 != v11)
  {
    v29 = v11 - v28 - 16;
    if (v29 < 0x10)
    {
      v30 = 0;
      v31 = *v3;
      goto LABEL_40;
    }

    v32 = 0;
    v33 = 0;
    v34 = (v29 >> 4) + 1;
    v31 = &v28[16 * (v34 & 0x1FFFFFFFFFFFFFFELL)];
    v35 = (v28 + 24);
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v37 = *(v35 - 8);
      v38 = *v35;
      v35 += 16;
      v32 += v37;
      v33 += v38;
      v36 -= 2;
    }

    while (v36);
    v30 = (v33 + v32);
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
      do
      {
LABEL_40:
        v30 += *(v31 + 4);
        v31 += 16;
      }

      while (v31 != v11);
    }

    v3[4] = v30;
  }

LABEL_42:
  v3[3] = v2;
}

void sub_B3154C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_B31564(uint64_t a1, unsigned int a2)
{
  v4 = (*(a1 + 8) - 1);
  v5 = malloc_type_malloc(12 * v4, 0x10000403E1C8BA9uLL);
  if (!v5)
  {
    fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v4);
    exit(1);
  }

  v6 = v5;
  v7 = *a1;
  if (a2)
  {
    v8 = 12 * a2;
    v9 = v6;
    do
    {
      v10 = *v7;
      *(v9 + 2) = v7[2];
      *v9 = v10;
      v9 += 12;
      v7 += 3;
      v8 -= 12;
    }

    while (v8);
    v7 = *a1;
  }

  v11 = &v7[3 * a2 + 3];
  if (v11 != &v7[3 * *(a1 + 8)])
  {
    v12 = &v6[12 * a2];
    v13 = 12 * *(a1 + 8) - 12 * a2 - 12;
    do
    {
      v14 = *v11;
      *(v12 + 2) = *(v11 + 8);
      *v12 = v14;
      v12 += 12;
      v11 += 12;
      v13 -= 12;
    }

    while (v13);
    v7 = *a1;
  }

  if (v7)
  {
    free(v7);
  }

  *a1 = v6;
}

void sub_B31684(uint64_t a1, unsigned int a2)
{
  v4 = (*(a1 + 8) + 1);
  v5 = malloc_type_malloc(12 * v4, 0x10000403E1C8BA9uLL);
  if (!v5)
  {
    fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v4);
    exit(1);
  }

  v6 = v5;
  v7 = *a1;
  if (a2)
  {
    v8 = 12 * a2;
    v9 = v6;
    do
    {
      v10 = *v7;
      v9[2] = v7[2];
      *v9 = v10;
      v9 += 3;
      v7 += 3;
      v8 -= 12;
    }

    while (v8);
    v7 = *a1;
  }

  if (*(a1 + 8) != a2)
  {
    v11 = 3 * a2;
    v12 = &v7[v11];
    v13 = &v6[v11 + 3];
    v14 = 12 * *(a1 + 8) - v11 * 4;
    do
    {
      v15 = *v12;
      *(v13 + 8) = *(v12 + 2);
      *v13 = v15;
      v13 += 12;
      v12 += 12;
      v14 -= 12;
    }

    while (v14);
    v7 = *a1;
  }

  if (v7)
  {
    free(v7);
  }

  *a1 = v6;
}

uint64_t sub_B31798(uint64_t a1, unint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0x3EA3D70A3F4CCCCDLL;
  *(a1 + 28) = 0xFFFFFFFF00000000;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  if (a2)
  {
    v3 = 4;
    if (a2 >= 3)
    {
      do
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v3 *= 2;
      }

      while ((v3 * 0.8) <= a2);
    }
  }

  else
  {
    v3 = 32;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v3;
  *(a1 + 80) = 0;
  v6[0] = 0;
  v6[1] = 0;
  sub_B31900((a1 + 48), (v3 - 1) / 0x30 + 1, v6);
  if (v6[0])
  {
    free(v6[0]);
  }

  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 72))));
  *(a1 + 24) = 0;
  return a1;
}

void sub_B318CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  sub_A959CC((v9 + 48));
  _Unwind_Resume(a1);
}

void sub_B31900(void **a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (a2 <= (v5 - v6) >> 4)
  {
    if (a2)
    {
      v13 = &v6[16 * a2];
      do
      {
        *v6 = 0;
        v15 = *(a3 + 8);
        *(v6 + 4) = v15;
        if (v15)
        {
          v16 = malloc_type_malloc(12 * v15, 0x10000403E1C8BA9uLL);
          if (!v16)
          {
            fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v15);
            exit(1);
          }

          *v6 = v16;
          if (*(a3 + 8))
          {
            v17 = *a3;
            v18 = 12 * *(a3 + 8);
            do
            {
              v19 = *v17;
              v16[2] = *(v17 + 2);
              *v16 = v19;
              v16 += 3;
              v17 = (v17 + 12);
              v18 -= 12;
            }

            while (v18);
          }
        }

        v14 = *(a3 + 10);
        *(v6 + 7) = *(a3 + 14);
        *(v6 + 10) = v14;
        v6 += 16;
      }

      while (v6 != v13);
      v6 = v13;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = (v6 - *a1) >> 4;
    if ((v7 + a2) >> 60)
    {
      sub_1794();
    }

    v8 = v5 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = a2;
      v12 = malloc_type_malloc(16 * v10, 0x1020040EDED9539uLL);
      a2 = v11;
    }

    else
    {
      v12 = 0;
    }

    v20 = &v12[16 * v7];
    v26 = v20;
    v27 = &v12[16 * v10];
    v21 = 16 * a2;
    v22 = (v20 + 16 * a2);
    do
    {
      sub_B308B8(a1, v20, a3);
      v20 += 16;
      v21 -= 16;
    }

    while (v21);
    v23 = a1[1];
    v24 = (v26 + *a1 - v23);
    sub_B31B40(a1, *a1, v23, v24);
    v25 = *a1;
    *a1 = v24;
    a1[1] = v22;
    a1[2] = v27;
    if (v25)
    {
      free(v25);
    }
  }
}

void sub_B31B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B31B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_B2F26C(va);
  _Unwind_Resume(a1);
}

void sub_B31B40(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v14 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v9 = *(v7 + 4);
      *(v4 + 8) = v9;
      if (v9)
      {
        v10 = malloc_type_malloc(12 * v9, 0x10000403E1C8BA9uLL);
        if (!v10)
        {
          fprintf(__stderrp, "sparsehash FATAL ERROR: failed to allocate %lu groups\n", v9);
          exit(1);
        }

        *v4 = v10;
        if (*(v7 + 4))
        {
          v11 = *v7;
          v12 = 12 * *(v7 + 4);
          do
          {
            v13 = *v11;
            v10[2] = v11[2];
            *v10 = v13;
            v10 += 3;
            v11 += 3;
            v12 -= 12;
          }

          while (v12);
        }
      }

      v8 = *(v7 + 10);
      *(v4 + 14) = *(v7 + 7);
      *(v4 + 10) = v8;
      v7 += 2;
      v4 = v14 + 16;
      v14 += 16;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (*v6)
      {
        free(*v6);
        *v6 = 0;
      }

      v6 += 2;
    }
  }
}

void sub_B31C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B31C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_B2F210(va);
  _Unwind_Resume(a1);
}

void sub_B31CAC(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v16 = *(a1 + 16);
    *v17 = *(a1 + 32);
    memset(&v17[8], 0, 32);
    v18 = 0u;
    v15 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v16, 0)));
    BYTE8(v16) = 0;
    sub_B31E0C(&v15, 1, a1, 0x20uLL);
    v3 = *a1;
    v2 = *(a1 + 16);
    v4 = v16;
    *a1 = v15;
    *(a1 + 16) = v4;
    v15 = v3;
    v16 = v2;
    v5 = *v17;
    v6 = *&v17[16];
    *v17 = *(a1 + 32);
    *&v17[16] = *(a1 + 48);
    v7 = *&v17[16];
    v8 = *&v17[32];
    v9 = *(a1 + 56);
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    *(a1 + 64) = v8;
    *&v17[24] = v9;
    *&v5 = v18;
    v10 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v10;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v5)));
    *(a1 + 24) = 0;
    v15 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v16, v10)));
    BYTE8(v16) = 0;
    if (v7)
    {
      v11 = v9;
      v12 = v7;
      if (v9 != v7)
      {
        do
        {
          v14 = *(v11 - 2);
          v11 -= 2;
          v13 = v14;
          if (v14)
          {
            free(v13);
            *v11 = 0;
          }
        }

        while (v11 != v7);
        v12 = *&v17[16];
      }

      *&v17[24] = v7;
      free(v12);
    }
  }
}

void sub_B31E0C(void *a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = a1;
  if (a1[5] | a1[10])
  {
    for (i = a1[6]; i != v7[7]; i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    v7[10] = 0;
  }

  v9 = v7[9];
  v10 = v7[2];
  *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v10, v9)));
  *(v7 + 24) = 0;
  v7[5] = 0;
  if (a2 == 1)
  {
    v11 = *(a3 + 72);
  }

  else
  {
    v11 = 4;
    if (a4 > 4)
    {
      goto LABEL_32;
    }

    while (*(a3 + 80) - *(a3 + 40) >= (v10.f32[0] * v11))
    {
      do
      {
LABEL_32:
        if ((v11 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "resize overflow");
        }

        v11 *= 2;
      }

      while (v11 < a4);
    }
  }

  if (v11 > v9)
  {
    sub_B323C8(v7 + 6, v11);
    *v7 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(v7[2], v7[9])));
    *(v7 + 24) = 0;
  }

  v12 = *(a3 + 48);
  v13 = *(a3 + 56);
  if (v12 == v13)
  {
    v14 = 0;
LABEL_36:
    v17 = *(a3 + 56);
    v16 = *(a3 + 48);
    v19 = 1;
    if (v12 == v13)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v14 = *v12;
  if (*(v12 + 8))
  {
    goto LABEL_36;
  }

  v15 = v12 + 16;
  do
  {
    v16 = v15;
    if (v14)
    {
      free(v14);
      *(v16 - 16) = 0;
    }

    *(v16 - 8) = 0;
    if (v16 == v13)
    {
      break;
    }

    v14 = *v16;
    v15 = v16 + 16;
  }

  while (!*(v16 + 8));
  v17 = *(a3 + 56);
  v19 = v12 == *(a3 + 48) && v13 == v17;
  if (v16 != v17 || !v19)
  {
LABEL_37:
    if (*(a3 + 40))
    {
      do
      {
        if (*(a3 + 36) != v14[1] || *(a3 + 32) != *v14)
        {
          break;
        }

        v14 += 3;
        v22 = *v16;
        if (v14 == (*v16 + 12 * *(v16 + 8)))
        {
          v23 = v16 + 16;
          do
          {
            v16 = v23;
            if (v22)
            {
              free(v22);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v23 = v16 + 16;
            v22 = *v16;
          }

          while (!*(v16 + 8));
        }

        v24 = v16 == v17 && v19;
      }

      while (!v24 && *(a3 + 40));
    }
  }

LABEL_54:
  v25 = *(a3 + 56);
  if (v12 != *(a3 + 48) || v13 != v25 || v16 != v25)
  {
    v71 = v12;
    v72 = v7;
    v70 = v17;
    v69 = v19;
    while (1)
    {
      v31 = 0xFF51AFD7ED558CCDLL * (*v14 ^ (*v14 >> 33));
      v32 = (0xC4CEB9FE1A85EC53 * (v31 ^ (v31 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v31 ^ (v31 >> 33))) >> 33);
      v33 = v7[9] - 1;
      for (j = 1; ; ++j)
      {
        v35 = v32 & v33;
        v36 = (v32 & v33) / 0x30;
        v37 = (v32 & v33) % 0x30;
        v38 = v37 >> 3;
        v39 = v7[6] + 16 * v36;
        v40 = 1 << (v37 & 7);
        if ((v40 & *(v39 + (v37 >> 3) + 10)) == 0)
        {
          break;
        }

        v32 = j + v35;
      }

      v41 = v39 + 10;
      if (v37 >= 9)
      {
        break;
      }

      v44 = 0;
      v47 = (v39 + 10);
LABEL_83:
      v73 = *(v39 + 8);
      v56 = v44 + byte_22A7D46[~(-1 << v37) & *v47];
      sub_B31684(v39, v56);
      ++*(v39 + 8);
      *(v41 + v38) |= v40;
      v57 = *v39 + 12 * v56;
      v58 = *v14;
      *(v57 + 8) = v14[2];
      *v57 = v58;
      v7 = v72;
      v72[10] = v72[10] - v73 + *(v72[6] + 16 * v36 + 8);
      v14 += 3;
      v59 = *v16;
      if (v14 == (*v16 + 12 * *(v16 + 8)))
      {
        v63 = v16 + 16;
        v61 = v70;
        v60 = v71;
        v62 = v69;
        do
        {
          v16 = v63;
          if (v59)
          {
            free(v59);
            *(v16 - 16) = 0;
          }

          *(v16 - 8) = 0;
          if (v16 == v13)
          {
            break;
          }

          v14 = *v16;
          v63 = v16 + 16;
          v59 = *v16;
        }

        while (!*(v16 + 8));
      }

      else
      {
        v61 = v70;
        v60 = v71;
        v62 = v69;
      }

      while (1)
      {
        v64 = v16 == v61 && v62;
        if (v64 || !*(a3 + 40))
        {
          break;
        }

        if (*(a3 + 36) != v14[1] || *(a3 + 32) != *v14)
        {
          break;
        }

        v14 += 3;
        v66 = *v16;
        if (v14 == (*v16 + 12 * *(v16 + 8)))
        {
          v67 = v16 + 16;
          do
          {
            v16 = v67;
            if (v66)
            {
              free(v66);
              *(v16 - 16) = 0;
            }

            *(v16 - 8) = 0;
            if (v16 == v13)
            {
              break;
            }

            v14 = *v16;
            v67 = v16 + 16;
            v66 = *v16;
          }

          while (!*(v16 + 8));
        }
      }

      v28 = *(a3 + 56);
      if (v60 == *(a3 + 48) && v13 == v28 && v16 == v28)
      {
        goto LABEL_107;
      }
    }

    v42 = (48 * v36 - v35 + 7);
    if (v42 <= 0xFFF7)
    {
      LOWORD(v42) = -9;
    }

    v43 = v42 + v35 - 48 * v36;
    if (v43 >= 8u)
    {
      v48 = 0;
      v49 = 0;
      v50 = (v43 >> 3) + 1;
      v45 = v37 - 8 * (((v43 >> 3) + 1) & 0x3FFE);
      v46 = (v41 + (v50 & 0x3FFE));
      v51 = (v39 + 11);
      v52 = v50 & 0x3FFE;
      do
      {
        v53 = *(v51 - 1);
        v54 = *v51;
        v51 += 2;
        v48 += byte_22A7D46[v53];
        v49 += byte_22A7D46[v54];
        v52 -= 2;
      }

      while (v52);
      v44 = v49 + v48;
      if ((v50 & 0x3FFE) == v50)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v44 = 0;
      v45 = v37;
      v46 = (v39 + 10);
    }

    do
    {
      v55 = *v46++;
      v44 += byte_22A7D46[v55];
      v45 -= 8;
    }

    while (v45 > 8u);
LABEL_82:
    v47 = (v41 + ((v37 - 9) >> 3) + 1);
    LOBYTE(v37) = v45;
    goto LABEL_83;
  }

LABEL_107:
  ++*(v7 + 7);
}

void sub_B323C8(void **a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a2)
  {
    v4 = (a2 - 1) / 0x30 + 1;
  }

  else
  {
    v4 = 0;
  }

  v42[0] = 0;
  v42[1] = 0;
  v5 = a1[1];
  v6 = (v5 - *a1) >> 4;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      v7 = *a1 + 16 * v4;
      while (v5 != v7)
      {
        v9 = *(v5 - 2);
        v5 -= 16;
        v8 = v9;
        if (v9)
        {
          free(v8);
          *v5 = 0;
        }
      }

      v3[1] = v7;
    }
  }

  else
  {
    sub_B31900(a1, v4 - v6, v42);
    if (v42[0])
    {
      free(v42[0]);
    }
  }

  if (v3[3] <= v2)
  {
    goto LABEL_42;
  }

  v10 = v2 % 0x30;
  v11 = v3[1];
  if (!(v2 % 0x30))
  {
    goto LABEL_34;
  }

  v39 = v3;
  v40 = v2;
  v12 = 0;
  v13 = (v11 - 16);
  v14 = v11 - 6;
  v41 = v2 - 9 - 48 * (v2 / 0x30);
  v15 = v41;
  do
  {
    v16 = v10 >> 3;
    v17 = 1 << (v10 & 7);
    if ((v17 & v14[v16]) != 0)
    {
      if (v10 < 9u)
      {
        v18 = 0;
        v21 = v11 - 6;
        LOBYTE(v19) = v10;
        if (*(v11 - 4) == 1)
        {
          goto LABEL_30;
        }

        goto LABEL_16;
      }

      if ((v41 + v12) >= 8u)
      {
        v22 = 0;
        v23 = 0;
        v24 = ((v15 >> 3) + 1) & 0x3FFE;
        v19 = v10 - 8 * ((((v41 + v12) >> 3) + 1) & 0x3FFE);
        v20 = &v14[(((v41 + v12) >> 3) + 1) & 0x3FFE];
        v26 = v11 - 6;
        do
        {
          v22 += byte_22A7D46[*v26];
          v23 += byte_22A7D46[v26[1]];
          v26 += 2;
          v24 -= 2;
        }

        while (v24);
        v18 = v23 + v22;
        v25 = ((v41 + v12) >> 3) + 1;
        if ((v25 & 0x3FFE) == v25)
        {
LABEL_29:
          v21 = &v11[((v10 - 9) >> 3) - 5];
          if (*(v11 - 4) == 1)
          {
LABEL_30:
            if (*v13)
            {
              free(*v13);
            }

            *v13 = 0;
            goto LABEL_17;
          }

LABEL_16:
          sub_B31564((v11 - 16), (v18 + byte_22A7D46[~(-1 << v19) & *v21]));
LABEL_17:
          --*(v11 - 4);
          v14[v16] &= ~v17;
          goto LABEL_18;
        }
      }

      else
      {
        v18 = 0;
        v19 = v10;
        v20 = v11 - 6;
      }

      do
      {
        v27 = *v20++;
        v18 += byte_22A7D46[v27];
        v19 -= 8;
      }

      while (v19 > 8u);
      goto LABEL_29;
    }

LABEL_18:
    LOWORD(v10) = v10 + 1;
    ++v12;
    ++v15;
  }

  while (v10 != 48);
  v3 = v39;
  v2 = v40;
  v11 = v39[1];
LABEL_34:
  v3[4] = 0;
  v28 = *v3;
  if (*v3 != v11)
  {
    v29 = v11 - v28 - 16;
    if (v29 < 0x10)
    {
      v30 = 0;
      v31 = *v3;
      goto LABEL_40;
    }

    v32 = 0;
    v33 = 0;
    v34 = (v29 >> 4) + 1;
    v31 = &v28[16 * (v34 & 0x1FFFFFFFFFFFFFFELL)];
    v35 = (v28 + 24);
    v36 = v34 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v37 = *(v35 - 8);
      v38 = *v35;
      v35 += 16;
      v32 += v37;
      v33 += v38;
      v36 -= 2;
    }

    while (v36);
    v30 = (v33 + v32);
    if (v34 != (v34 & 0x1FFFFFFFFFFFFFFELL))
    {
      do
      {
LABEL_40:
        v30 += *(v31 + 4);
        v31 += 16;
      }

      while (v31 != v11);
    }

    v3[4] = v30;
  }

LABEL_42:
  v3[3] = v2;
}

void sub_B326F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_B3270C(uint64_t a1)
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  v28 = 0;
  LOBYTE(v27) = 0;
  sub_CC9264(v12, &v27);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  BYTE8(v21) = 0;
  *v22 = 0u;
  *__p = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  sub_A98AD4(a1 + 152, v10);
  *&v27 = &v25;
  sub_A31F30(&v27);
  if (__p[1])
  {
    *&v24 = __p[1];
    operator delete(__p[1]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v10[1])
  {
    sub_A95778(&v10[1]);
    operator delete(v10[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  if (*(a1 + 456) | *(a1 + 496))
  {
    for (i = *(a1 + 464); i != *(a1 + 472); i += 16)
    {
      if (*i)
      {
        free(*i);
        *i = 0;
      }

      *(i + 8) = 0;
    }

    *(a1 + 496) = 0;
  }

  *(a1 + 416) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 432), *(a1 + 488))));
  *(a1 + 440) = 0;
  *(a1 + 456) = 0;
  *(a1 + 512) = *(a1 + 504);
  *(a1 + 528) = 0;
  if (*(a1 + 576) | *(a1 + 616))
  {
    for (j = *(a1 + 584); j != *(a1 + 592); j += 16)
    {
      if (*j)
      {
        free(*j);
        *j = 0;
      }

      *(j + 8) = 0;
    }

    *(a1 + 616) = 0;
  }

  *(a1 + 536) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 552), *(a1 + 608))));
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 632) = *(a1 + 624);
  *(a1 + 648) = 0;
  *(a1 + 2120) = 0;
  *(a1 + 2136) = 0;
  *(a1 + 2128) = 0;
  v4 = *(a1 + 24);
  *(a1 + 1440) = v4;
  *(a1 + 1444) = *(a1 + 28);
  v5 = *(a1 + 72);
  *(a1 + 1445) = v5;
  *(a1 + 688) = v4;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v5;
  v10[0] = 0x1FFFFFFFDLL;
  v6 = sub_B34C5C(a1 + 416, v10);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(a1 + 528);
    *(a1 + 528) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(a1 + 504, v10);
    *(a1 + 656) = *(v9 + 8);
  }

  else
  {
    *(a1 + 656) = v7;
  }
}

void sub_B32994(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_B329B8(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0.0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_B30050(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
  v3 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 16);
  v36 = *(a1 + 8);
  v38 = v6;
  v37 = *(a1 + 24);
  v39 = *(a1 + 28);
  v41 = *(a1 + 72);
  v40 = *(a1 + 144);
  sub_B35FCC(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2120);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2120);
  }

  *(a1 + 2120) = v8 + v7;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "Primary SPA scanned ", 20);
    v9 = std::ostream::operator<<();
    sub_4A5C(v9, " stop patterns and obtained ", 28);
    v10 = std::ostream::operator<<();
    sub_4A5C(v10, " journeys in ", 13);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, " ms using ", 10);
    v13 = sub_71478(v12, v42[18]);
    sub_4A5C(v13, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v15 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v15 = v27;
      }

      v16 = v26;
      v14 = v15 - v26;
      if (v15 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v14 = 0;
        v20 = 0;
LABEL_26:
        *(&v18 + v14) = 0;
        sub_7E854(&v18, 2u);
        if (v20 < 0)
        {
          operator delete(v18);
        }

        if (v29 < 0)
        {
          operator delete(v28);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        return sub_A40284(&v36);
      }

      v16 = v24;
      v14 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_33:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v20 = v14;
    if (v14)
    {
      memmove(&v18, v16, v14);
    }

    goto LABEL_26;
  }

  return sub_A40284(&v36);
}

void sub_B32DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A40284(&a65);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A40284(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_B32E88(uint64_t a1, unsigned int a2)
{
  v120 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v118[0] = *(a1 + 88);
  v118[1] = v3;
  v118[2] = *(a1 + 120);
  v119 = *(a1 + 136);
  LOBYTE(v118[0]) = 1;
  v117[0] = v118;
  v117[1] = a1;
  v117[2] = &v120;
  v4 = *(a1 + 664);
  LODWORD(v106) = (*(a1 + 656) << *v4) | (2 * a2) | 1;
  v5 = *(sub_B54B10((v4 + 2), &v106) + 4);
  v7 = (a1 + 92);
  v6 = *(a1 + 92);
  v121[0] = v6;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_118;
  }

  v8 = 10 * (v5 - v6);
  if (v8 >= *(a1 + 52))
  {
    v9 = sub_B3B198(v117, v5);
    LODWORD(v102) = v9;
    v6 = v121[0];
    if (v9 == 0x7FFFFFFF || v121[0] >= v9)
    {
LABEL_28:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_27:
      v6 = v102;
      v121[0] = v102;
      goto LABEL_28;
    }

    sub_19594F8(&v106);
    sub_4A5C(&v106, "[", 1);
    v11 = std::ostream::operator<<();
    v12 = sub_4A5C(v11, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v13 = sub_258D4(v12, v121);
    v14 = sub_4A5C(v13, " to ", 4);
    sub_258D4(v14, &v102);
    if ((v116 & 0x10) != 0)
    {
      v16 = v115;
      if (v115 < v112)
      {
        v115 = v112;
        v16 = v112;
      }

      v17 = &v111;
    }

    else
    {
      if ((v116 & 8) == 0)
      {
        v15 = 0;
        v105 = 0;
LABEL_22:
        *(&__dst + v15) = 0;
        sub_7E854(&__dst, 2u);
        if (v105 < 0)
        {
          operator delete(__dst);
        }

        if (v114 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v108);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_27;
      }

      v17 = v109;
      v16 = v110;
    }

    v18 = *v17;
    v15 = v16 - *v17;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v105 = v16 - *v17;
    if (v15)
    {
      memmove(&__dst, v18, v15);
    }

    goto LABEL_22;
  }

LABEL_29:
  if (v8 < *(a1 + 52))
  {
    goto LABEL_117;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_47;
  }

  sub_19594F8(&v106);
  sub_4A5C(&v106, "[", 1);
  v19 = std::ostream::operator<<();
  sub_4A5C(v19, "] Journey duration (", 20);
  v20 = std::ostream::operator<<();
  sub_4A5C(v20, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v116 & 0x10) != 0)
  {
    v22 = v115;
    if (v115 < v112)
    {
      v115 = v112;
      v22 = v112;
    }

    v23 = v111;
    v21 = v22 - v111;
    if (v22 - v111 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_86:
      sub_3244();
    }

LABEL_37:
    if (v21 >= 0x17)
    {
      operator new();
    }

    v103 = v21;
    if (v21)
    {
      memmove(&v102, v23, v21);
    }

    goto LABEL_42;
  }

  if ((v116 & 8) != 0)
  {
    v23 = v109[0];
    v21 = v110 - v109[0];
    if (v110 - v109[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_86;
    }

    goto LABEL_37;
  }

  v21 = 0;
  v103 = 0;
LABEL_42:
  *(&v102 + v21) = 0;
  sub_7E854(&v102, 2u);
  if (v103 < 0)
  {
    operator delete(v102);
  }

  if (v114 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v108);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_47:
  v24 = *(a1 + 60);
  if (v24 > *(a1 + 56))
  {
    v25 = v5;
    goto LABEL_116;
  }

  v101 = v5;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v28 = v24 / 10;
      v29 = v24 % 10;
      goto LABEL_71;
    }

    sub_19594F8(&v106);
    sub_4A5C(&v106, "[", 1);
    v27 = std::ostream::operator<<();
    sub_4A5C(v27, "] Examining time shift of ", 26);
    v28 = v24 / 10;
    v29 = v24 % 10;
    v30 = std::ostream::operator<<();
    sub_4A5C(v30, " sec (exponential search)", 25);
    if ((v116 & 0x10) != 0)
    {
      v32 = v115;
      v33 = &v111;
      if (v115 < v112)
      {
        v115 = v112;
        v32 = v112;
        v33 = &v111;
      }

      goto LABEL_60;
    }

    if ((v116 & 8) != 0)
    {
      v32 = v110;
      v33 = v109;
LABEL_60:
      v34 = *v33;
      v31 = v32 - *v33;
      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v31 >= 0x17)
      {
        operator new();
      }

      v103 = v32 - *v33;
      if (v31)
      {
        memmove(&v102, v34, v31);
      }

      goto LABEL_66;
    }

    v31 = 0;
    v103 = 0;
LABEL_66:
    *(&v102 + v31) = 0;
    sub_7E854(&v102, 2u);
    if (v103 < 0)
    {
      operator delete(v102);
    }

    v106 = v100;
    *(&v106 + *(*&v100 - 24)) = v99;
    if (v114 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v108);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_71:
    v35 = v24 < 0 ? -5 : 5;
    v36 = v28 + (((103 * (v35 + v29)) >> 15) & 1) + ((103 * (v35 + v29)) >> 10);
    v25 = v36 + v5;
    v37 = sub_B3B198(v117, v36 + v5);
    if (*(a1 + 64) * fabs((10 * (v37 - v121[0]))) >= fabs((10 * v36)))
    {
      break;
    }

    v26 = v24 + v24;
    if (v26 >= 0.0)
    {
      if (v26 >= 4.50359963e15)
      {
        goto LABEL_51;
      }

      v38 = (v26 + v26) + 1;
    }

    else
    {
      if (v26 <= -4.50359963e15)
      {
        goto LABEL_51;
      }

      v38 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
    }

    v26 = (v38 >> 1);
LABEL_51:
    v24 = v26;
    if (*(a1 + 56) < v26)
    {
      v25 = v5;
      goto LABEL_116;
    }
  }

  v39 = v37;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v106);
    sub_4A5C(&v106, "[", 1);
    v40 = std::ostream::operator<<();
    sub_4A5C(v40, "] Journey duration improved from ", 33);
    v41 = std::ostream::operator<<();
    sub_4A5C(v41, " to ", 4);
    v42 = std::ostream::operator<<();
    sub_4A5C(v42, " sec for time shift of ", 23);
    v43 = std::ostream::operator<<();
    sub_4A5C(v43, " sec", 4);
    if ((v116 & 0x10) != 0)
    {
      v45 = v115;
      if (v115 < v112)
      {
        v115 = v112;
        v45 = v112;
      }

      v46 = &v111;
    }

    else
    {
      if ((v116 & 8) == 0)
      {
        v44 = 0;
        v103 = 0;
        goto LABEL_97;
      }

      v46 = v109;
      v45 = v110;
    }

    v47 = *v46;
    v44 = v45 - *v46;
    if (v44 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v44 >= 0x17)
    {
      operator new();
    }

    v103 = v45 - *v46;
    if (v44)
    {
      memmove(&v102, v47, v44);
    }

LABEL_97:
    *(&v102 + v44) = 0;
    sub_7E854(&v102, 2u);
    if (v103 < 0)
    {
      operator delete(v102);
    }

    v106 = v100;
    *(&v106 + *(*&v100 - 24)) = v99;
    if (v114 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v108);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v121[0] = v39;
  if (v36)
  {
    v48 = vcvtd_n_f64_s32(v24, 1uLL);
    if (v48 >= 0.0)
    {
      if (v48 < 4.50359963e15)
      {
        v49 = (v48 + v48) + 1;
LABEL_108:
        v48 = (v49 >> 1);
      }
    }

    else if (v48 > -4.50359963e15)
    {
      v49 = (v48 + v48) - 1 + (((v48 + v48) - 1) >> 63);
      goto LABEL_108;
    }

    v50 = v24 * 0.25;
    if (v50 >= 0.0)
    {
      if (v50 < 4.50359963e15)
      {
        v51 = (v50 + v50) + 1;
LABEL_114:
        v50 = (v51 >> 1);
      }
    }

    else if (v50 > -4.50359963e15)
    {
      v51 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
      goto LABEL_114;
    }

    v52 = v50;
    if (*(a1 + 60) <= v50)
    {
      v74 = v48;
      while (1)
      {
        *(a1 + 296) = *(a1 + 296) + 1.0;
        v76 = v52 + v74;
        v98 = v74;
        if (!sub_7E7E4(2u))
        {
          v78 = v76 / 10;
          v79 = v76 % 10;
          goto LABEL_176;
        }

        sub_19594F8(&v106);
        sub_4A5C(&v106, "[", 1);
        v77 = std::ostream::operator<<();
        sub_4A5C(v77, "] Examining time shift of ", 26);
        v78 = v76 / 10;
        v79 = v76 % 10;
        v80 = std::ostream::operator<<();
        sub_4A5C(v80, " sec (binary refinement search)", 31);
        if ((v116 & 0x10) != 0)
        {
          break;
        }

        if ((v116 & 8) != 0)
        {
          v82 = v110;
          v83 = v109;
LABEL_164:
          v84 = *v83;
          v81 = v82 - *v83;
          if (v81 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v81 >= 0x17)
          {
            operator new();
          }

          v103 = v82 - *v83;
          if (v81)
          {
            memmove(&v102, v84, v81);
          }

          v5 = v101;
          goto LABEL_171;
        }

        v81 = 0;
        v103 = 0;
LABEL_171:
        *(&v102 + v81) = 0;
        sub_7E854(&v102, 2u);
        if (v103 < 0)
        {
          operator delete(v102);
        }

        v106 = v100;
        *(&v106 + *(*&v100 - 24)) = v99;
        if (v114 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v108);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_176:
        if (v76 < 0)
        {
          v85 = -5;
        }

        else
        {
          v85 = 5;
        }

        v86 = v78 + (((103 * (v85 + v79)) >> 15) & 1) + ((103 * (v85 + v79)) >> 10) + v5;
        v87 = sub_B3B198(v117, v86);
        if (*(a1 + 64) * fabs((10 * (v121[0] - v87))) >= fabs((10 * (v25 - v86))))
        {
          v74 += v52;
          v75 = vcvtd_n_f64_s32(v52, 1uLL);
          if (v75 >= 0.0)
          {
            goto LABEL_203;
          }

          goto LABEL_185;
        }

        v88 = v87;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v106);
          sub_4A5C(&v106, "[", 1);
          v89 = std::ostream::operator<<();
          sub_4A5C(v89, "] Journey duration improved from ", 33);
          v90 = std::ostream::operator<<();
          sub_4A5C(v90, " to ", 4);
          v91 = std::ostream::operator<<();
          sub_4A5C(v91, " sec for time shift of ", 23);
          v92 = std::ostream::operator<<();
          sub_4A5C(v92, " sec", 4);
          if ((v116 & 0x10) != 0)
          {
            v95 = v115;
            v96 = &v111;
            if (v115 < v112)
            {
              v115 = v112;
              v95 = v112;
              v96 = &v111;
            }
          }

          else
          {
            if ((v116 & 8) == 0)
            {
              v93 = 0;
              v103 = 0;
LABEL_197:
              *(&v102 + v93) = 0;
              sub_7E854(&v102, 2u);
              if (v103 < 0)
              {
                operator delete(v102);
              }

              v106 = v100;
              *(&v106 + *(*&v100 - 24)) = v99;
              if (v114 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v108);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_202;
            }

            v95 = v110;
            v96 = v109;
          }

          v97 = *v96;
          v93 = v95 - *v96;
          if (v93 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v93 >= 0x17)
          {
            operator new();
          }

          v103 = v95 - *v96;
          if (v93)
          {
            memmove(&v102, v97, v93);
          }

          v5 = v101;
          goto LABEL_197;
        }

LABEL_202:
        v121[0] = v88;
        v25 = v86;
        v74 = v98;
        v75 = vcvtd_n_f64_s32(v52, 1uLL);
        if (v75 >= 0.0)
        {
LABEL_203:
          if (v75 >= 4.50359963e15)
          {
            goto LABEL_155;
          }

          v94 = (v75 + v75) + 1;
          goto LABEL_154;
        }

LABEL_185:
        if (v75 <= -4.50359963e15)
        {
          goto LABEL_155;
        }

        v94 = (v75 + v75) - 1 + (((v75 + v75) - 1) >> 63);
LABEL_154:
        v75 = (v94 >> 1);
LABEL_155:
        v52 = v75;
        if (*(a1 + 60) > v75)
        {
          goto LABEL_116;
        }
      }

      v82 = v115;
      v83 = &v111;
      if (v115 < v112)
      {
        v115 = v112;
        v82 = v112;
        v83 = &v111;
      }

      goto LABEL_164;
    }
  }

LABEL_116:
  *(a1 + 232) = sub_7EA60(&__dst);
  v6 = v121[0];
  v5 = v25;
LABEL_117:
  v7 = (a1 + 92);
LABEL_118:
  if (v6 != *v7)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v106);
      sub_4A5C(&v106, "[", 1);
      v53 = std::ostream::operator<<();
      v54 = sub_4A5C(v53, "] Shifting ", 11);
      v55 = sub_4A5C(v54, "departure", 9);
      v56 = sub_4A5C(v55, " time from ", 11);
      v57 = sub_258D4(v56, v7);
      v58 = sub_4A5C(v57, " to ", 4);
      sub_258D4(v58, v121);
      if ((v116 & 0x10) != 0)
      {
        v60 = v115;
        if (v115 < v112)
        {
          v115 = v112;
          v60 = v112;
        }

        v61 = v111;
        v59 = v60 - v111;
        if (v60 - v111 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if ((v116 & 8) == 0)
        {
          v59 = 0;
          v105 = 0;
          goto LABEL_131;
        }

        v61 = v109[0];
        v59 = v110 - v109[0];
        if (v110 - v109[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_152:
          sub_3244();
        }
      }

      if (v59 >= 0x17)
      {
        operator new();
      }

      v105 = v59;
      if (v59)
      {
        memmove(&__dst, v61, v59);
      }

LABEL_131:
      *(&__dst + v59) = 0;
      sub_7E854(&__dst, 2u);
      if (v105 < 0)
      {
        operator delete(__dst);
      }

      if (v114 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v108);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v62 = v120;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_144;
  }

  v63 = v120 + 1;
  v64 = *(a1 + 24);
  if (v120 + 1 <= v64 + 1)
  {
    v63 = v64 + 1;
  }

  if (v120 + 1 < v64 + 1)
  {
    v65 = v63 - 1;
    v66 = 2 * v120 + 3;
    v67 = v120;
    while (1)
    {
      v68 = *(a1 + 664);
      LODWORD(v106) = (*(a1 + 656) << *v68) | v66;
      if (*(sub_B54B10((v68 + 2), &v106) + 4) != 0x7FFFFFFF)
      {
        break;
      }

      ++v67;
      v66 += 2;
      if (v65 == v67)
      {
        goto LABEL_144;
      }
    }
  }

  else
  {
LABEL_144:
    if (*(a1 + 24) >= *(a1 + 148) + v62)
    {
      v67 = *(a1 + 148) + v62;
    }

    else
    {
      v67 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v67;
  v69 = *(a1 + 144);
  v70 = v69 / 10;
  v71 = v69 % 10;
  if (v69 < 0)
  {
    v72 = -5;
  }

  else
  {
    v72 = 5;
  }

  sub_B3B198(v117, v70 + v5 + (((103 * (v72 + v71)) >> 15) & 1) + ((103 * (v72 + v71)) >> 10));
  return v121[0];
}

void sub_B345F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1959728(&a31);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a31);
  _Unwind_Resume(a1);
}

void sub_B34798(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_8;
  }

  v6 = a2 + 1;
  v7 = *(a1 + 24);
  if (a2 + 1 <= (v7 + 1))
  {
    v6 = v7 + 1;
  }

  if (a2 + 1 < (v7 + 1))
  {
    v8 = v6 - 1;
    v9 = 2 * a2 + 3;
    v10 = a2;
    while (1)
    {
      v11 = *(a1 + 664);
      LODWORD(v39) = (*(a1 + 656) << *v11) | v9;
      if (*(sub_B54B10((v11 + 2), &v39) + 4) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*(a1 + 24) >= (*(a1 + 148) + v4))
    {
      v10 = *(a1 + 148) + v4;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v12 = *(a1 + 104);
  v47[0] = *(a1 + 88);
  v47[1] = v12;
  v47[2] = *(a1 + 120);
  v48 = *(a1 + 136);
  DWORD1(v47[0]) = a3;
  *(a1 + 1440) = v10;
  sub_B3F694(a1 + 1424, v47);
  sub_B3F97C(a1 + 1424, v4, &v39);
  sub_CC92D8(a1 + 184, a1 + 1968, &__p);
  if (v38 < 0)
  {
    operator delete(__p);
  }

  v13 = *(a1 + 2112);
  *(a1 + 328) -= v13;
  v14 = *(a1 + 2136);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  *(a1 + 2136) = v14;
  sub_AA9EA4(v40[0], v40[1], (a1 + 160));
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v26);
    sub_4A5C(&v26, "[", 1);
    v15 = std::ostream::operator<<();
    sub_4A5C(v15, "] McSPA scanned ", 16);
    v16 = std::ostream::operator<<();
    sub_4A5C(v16, " stop patterns and obtained ", 28);
    v17 = std::ostream::operator<<();
    sub_4A5C(v17, " journeys in ", 13);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, " ms using ", 10);
    v20 = sub_71478(v19, *(a1 + 2112));
    sub_4A5C(v20, " of memory", 10);
    if ((v36 & 0x10) != 0)
    {
      v22 = v35;
      if (v35 < v32)
      {
        v35 = v32;
        v22 = v32;
      }

      v23 = v31;
      v21 = v22 - v31;
      if (v22 - v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v21 = 0;
        v25 = 0;
LABEL_27:
        *(&v24 + v21) = 0;
        sub_7E854(&v24, 2u);
        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        std::locale::~locale(&v28);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_32;
      }

      v23 = v29;
      v21 = v30 - v29;
      if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_42:
        sub_3244();
      }
    }

    if (v21 >= 0x17)
    {
      operator new();
    }

    v25 = v21;
    if (v21)
    {
      memmove(&v24, v23, v21);
    }

    goto LABEL_27;
  }

LABEL_32:
  v26 = COERCE_DOUBLE(&v46);
  sub_A31F30(&v26);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40[3]);
  }

  if (v40[0])
  {
    sub_A95778(v40);
    operator delete(v40[0]);
  }
}

void sub_B34BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a64);
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_A300F8(va, v65);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_A300F8(va, v66);
  _Unwind_Resume(a1);
}

uint64_t sub_B34C5C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_B34E80(a1, a2);
  if (v4 == -1)
  {
    v19 = v5;
    if (sub_B35190(a1, 1))
    {
      v32 = *a2;
      v33 = -1;
      sub_B35490(a1, &v32, v34);
    }

    else
    {
      v32 = *a2;
      v33 = -1;
      sub_B356C0(a1, &v32, v19, v34);
    }

    return v34[4];
  }

  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = 16 * (v4 / 0x30);
  v9 = v8 + v7;
  v11 = (v8 + v7 + 10);
  v10 = *(v8 + v7);
  v12 = v4 % 0x30;
  if (v4 % 0x30 < 9)
  {
    v16 = 0;
    goto LABEL_18;
  }

  v13 = 48 * (v4 / 0x30);
  v14 = (v13 - v4 + 7);
  if (v14 <= 0xFFF7)
  {
    LOWORD(v14) = -9;
  }

  v15 = v14 + v4 - v13;
  if (v15 >= 8u)
  {
    v21 = 0;
    v22 = 0;
    v23 = (v15 >> 3) + 1;
    LOWORD(v17) = v12 - 8 * (((v15 >> 3) + 1) & 0x3FFE);
    v18 = &v11[v23 & 0x3FFE];
    v24 = (v8 + v7 + 11);
    v25 = v23 & 0x3FFE;
    do
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v24 += 2;
      v21 += byte_22A7D46[v26];
      v22 += byte_22A7D46[v27];
      v25 -= 2;
    }

    while (v25);
    v16 = v22 + v21;
    if ((v23 & 0x3FFE) == v23)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
    v17 = v4 % 0x30;
    v18 = v11;
  }

  do
  {
    v28 = *v18++;
    v16 += byte_22A7D46[v28];
    LOWORD(v17) = v17 - 8;
  }

  while (v17 > 8u);
LABEL_17:
  v11 += ((v12 - 9) >> 3) + 1;
  LOBYTE(v12) = v17;
LABEL_18:
  result = v10 + 12 * (v16 + byte_22A7D46[~(-1 << v12) & *v11]);
  if (*v9 + 12 * *(v9 + 8) == result && v9 + 16 != v6)
  {
    v30 = v9 + 32;
    do
    {
      if (*(v30 - 8))
      {
        v31 = 1;
      }

      else
      {
        v31 = v30 == v6;
      }

      v30 += 16;
    }

    while (!v31);
    return *(v30 - 32);
  }

  return result;
}

unint64_t sub_B34E80(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = *(a1 + 48);
  v6 = v5 + 11;
  v7 = -1;
  while (1)
  {
    v8 = v4 & (*(a1 + 72) - 1);
    v9 = v8 / 0x30;
    v10 = v8 % 0x30;
    v11 = (v5 + 16 * (v8 / 0x30));
    if (((*(v11 + (v10 >> 3) + 10) >> (v10 & 7)) & 1) == 0)
    {
      return -1;
    }

    v12 = *v11;
    if (!*(a1 + 40))
    {
      goto LABEL_22;
    }

    v13 = v11 + 10;
    if (v10 < 9)
    {
      v15 = 0;
      LOBYTE(v16) = v8 % 0x30;
      goto LABEL_18;
    }

    v14 = (48 * v9 - v8 + 7);
    if (v14 <= 0xFFF7)
    {
      LOWORD(v14) = -9;
    }

    if ((v14 + v8 - 48 * v9) >= 8u)
    {
      v18 = 0;
      v19 = 0;
      v20 = ((v14 + v8 - 48 * v9) >> 3) + 1;
      v16 = v10 - 8 * ((((v14 + v8 - 48 * v9) >> 3) + 1) & 0x3FFE);
      v17 = &v13[(((v14 + v8 - 48 * v9) >> 3) + 1) & 0x3FFE];
      v21 = (v6 + 16 * v9);
      v22 = v20 & 0x3FFE;
      do
      {
        v23 = *(v21 - 1);
        v24 = *v21;
        v21 += 2;
        v18 += byte_22A7D46[v23];
        v19 += byte_22A7D46[v24];
        v22 -= 2;
      }

      while (v22);
      v15 = v19 + v18;
      if ((v20 & 0x3FFE) == v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = 0;
      v16 = v8 % 0x30;
      v17 = v11 + 10;
    }

    do
    {
      v25 = *v17++;
      v15 += byte_22A7D46[v25];
      v16 -= 8;
    }

    while (v16 > 8u);
LABEL_17:
    v13 += ((v10 - 9) >> 3) + 1;
LABEL_18:
    v26 = (v12 + 12 * (v15 + byte_22A7D46[~(-1 << v16) & *v13]));
    if (*(a1 + 36) == v26[1] && *(a1 + 32) == *v26)
    {
      if (v7 == -1)
      {
        v7 = v8;
      }

      goto LABEL_4;
    }

LABEL_22:
    v28 = v11 + 10;
    if (v10 < 9)
    {
      v30 = 0;
      goto LABEL_33;
    }

    v29 = (48 * v9 - v8 + 7);
    if (v29 <= 0xFFF7)
    {
      LOWORD(v29) = -9;
    }

    if ((v29 + v8 - 48 * v9) >= 8u)
    {
      v33 = 0;
      v34 = 0;
      v35 = ((v29 + v8 - 48 * v9) >> 3) + 1;
      v31 = v10 - 8 * ((((v29 + v8 - 48 * v9) >> 3) + 1) & 0x3FFE);
      v32 = &v28[(((v29 + v8 - 48 * v9) >> 3) + 1) & 0x3FFE];
      v36 = (v6 + 16 * v9);
      v37 = v35 & 0x3FFE;
      do
      {
        v38 = *(v36 - 1);
        v39 = *v36;
        v36 += 2;
        v33 += byte_22A7D46[v38];
        v34 += byte_22A7D46[v39];
        v37 -= 2;
      }

      while (v37);
      v30 = v34 + v33;
      if ((v35 & 0x3FFE) == v35)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v30 = 0;
      v31 = v8 % 0x30;
      v32 = v28;
    }

    do
    {
      v40 = *v32++;
      v30 += byte_22A7D46[v40];
      v31 -= 8;
    }

    while (v31 > 8u);
LABEL_32:
    v28 += ((v10 - 9) >> 3) + 1;
    LOBYTE(v10) = v31;
LABEL_33:
    if (*a2 == *(v12 + 12 * (v30 + byte_22A7D46[~(-1 << v10) & *v28])))
    {
      return v8;
    }

LABEL_4:
    v4 = ++v2 + v8;
  }
}

uint64_t sub_B35190(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_B35C0C(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= ~a2)
  {
    goto LABEL_32;
  }

  v6 = *(a1 + 72);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    if (v7 >= vcvts_n_u32_f32(v8, 2uLL))
    {
      v9 = 4;
      while ((v9 & 0x8000000000000000) == 0)
      {
        v9 *= 2;
        if (v7 < (v8 * v9))
        {
          goto LABEL_12;
        }
      }

LABEL_32:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

    v9 = 4;
LABEL_12:
    if (v9 > v6)
    {
      v10 = v5 - *(a1 + 40) + a2;
      v11 = 4;
      if (v6 > 4)
      {
        goto LABEL_15;
      }

LABEL_14:
      if (v10 >= (v8 * v11))
      {
LABEL_15:
        while ((v11 & 0x8000000000000000) == 0)
        {
          v11 *= 2;
          if (v11 >= v6)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_32;
      }

      if (v11 < v9 && v11 <= 0x7FFFFFFFFFFFFFFELL && v10 >= (*(a1 + 20) * (2 * v11)))
      {
        v11 *= 2;
      }

      v27 = *(a1 + 16);
      *v28 = *(a1 + 32);
      memset(&v28[8], 0, 32);
      v29 = 0u;
      v26 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v27, 0)));
      BYTE8(v27) = 0;
      sub_B31E0C(&v26, 0, a1, v11);
      v13 = *a1;
      v12 = *(a1 + 16);
      v14 = v27;
      *a1 = v26;
      *(a1 + 16) = v14;
      v26 = v13;
      v27 = v12;
      v15 = *v28;
      v16 = *&v28[16];
      *v28 = *(a1 + 32);
      *&v28[16] = *(a1 + 48);
      v17 = *&v28[16];
      v18 = *&v28[32];
      v19 = *(a1 + 56);
      *(a1 + 32) = v15;
      *(a1 + 48) = v16;
      *(a1 + 64) = v18;
      *&v28[24] = v19;
      *&v15 = v29;
      v20 = *(a1 + 72);
      *(a1 + 72) = v29;
      v29 = v20;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v15)));
      *(a1 + 24) = 0;
      v26 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v27, v20)));
      BYTE8(v27) = 0;
      if (v17)
      {
        v21 = v19;
        v22 = v17;
        if (v19 != v17)
        {
          do
          {
            v24 = *(v21 - 2);
            v21 -= 2;
            v23 = v24;
            if (v24)
            {
              free(v23);
              *v21 = 0;
            }
          }

          while (v21 != v17);
          v22 = *&v28[16];
        }

        *&v28[24] = v17;
        free(v22);
      }

      return 1;
    }
  }

  return result;
}

__n128 sub_B35490@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_B34E80(a1, a2);
  if (v6 == -1)
  {
    sub_B356C0(a1, a2, v7, a3);
    *(a3 + 72) = 1;
    return result;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = 16 * (v6 / 0x30);
  v11 = v10 + v9;
  v13 = (v10 + v9 + 10);
  v12 = *(v10 + v9);
  v14 = v6 % 0x30;
  if (v6 % 0x30 < 9)
  {
    v18 = 0;
    goto LABEL_14;
  }

  v15 = 48 * (v6 / 0x30);
  v16 = (v15 - v6 + 7);
  if (v16 <= 0xFFF7)
  {
    LOWORD(v16) = -9;
  }

  v17 = v16 + v6 - v15;
  if (v17 >= 8u)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v17 >> 3) + 1;
    LOWORD(v19) = v14 - 8 * (((v17 >> 3) + 1) & 0x3FFE);
    v20 = &v13[v24 & 0x3FFE];
    v25 = (v10 + v9 + 11);
    v26 = v24 & 0x3FFE;
    do
    {
      v27 = *(v25 - 1);
      v28 = *v25;
      v25 += 2;
      v22 += byte_22A7D46[v27];
      v23 += byte_22A7D46[v28];
      v26 -= 2;
    }

    while (v26);
    v18 = v23 + v22;
    if ((v24 & 0x3FFE) == v24)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v19 = v6 % 0x30;
    v20 = (v10 + v9 + 10);
  }

  do
  {
    v29 = *v20++;
    v18 += byte_22A7D46[v29];
    LOWORD(v19) = v19 - 8;
  }

  while (v19 > 8u);
LABEL_13:
  v13 += ((v14 - 9) >> 3) + 1;
  LOBYTE(v14) = v19;
LABEL_14:
  v30 = v12 + 12 * (v18 + byte_22A7D46[~(-1 << v14) & *v13]);
  if (*v11 + 12 * *(v11 + 8) == v30)
  {
    v11 += 16;
    if (v11 != v8)
    {
      do
      {
        v31 = v11;
        if (*(v11 + 8))
        {
          break;
        }

        v11 += 16;
      }

      while (v31 + 2 != v8);
      v30 = *v31;
    }
  }

  *&v33 = a1;
  *(&v33 + 1) = v9;
  v34.n128_u64[0] = v8;
  v34.n128_u64[1] = v11;
  *&v35 = v30;
  *(&v35 + 1) = v9;
  *&v36 = v8;
  *(&v36 + 1) = v8;
  v37 = 0;
  sub_B35DDC(&v33);
  v32 = v36;
  *(a3 + 32) = v35;
  *(a3 + 48) = v32;
  *(a3 + 64) = v37;
  result = v34;
  *a3 = v33;
  *(a3 + 16) = result;
  *(a3 + 72) = 0;
  return result;
}

void *sub_B356C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = *(a1 + 40);
  if ((*(a1 + 80) - v4) >= 0x1555555555555555)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v5 = a3 / 0x30;
  v6 = a3 % 0x30;
  if (!v4)
  {
    v7 = *(a1 + 48);
    goto LABEL_22;
  }

  v7 = *(a1 + 48);
  v8 = (v7 + 16 * v5);
  if (((*(v8 + (v6 >> 3) + 10) >> (v6 & 7)) & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = v8 + 10;
  v9 = *v8;
  if (v6 < 9)
  {
    v13 = 0;
    v14 = a3 % 0x30;
    goto LABEL_16;
  }

  v11 = (48 * v5 - a3 + 7);
  if (v11 <= 0xFFF7)
  {
    LOWORD(v11) = -9;
  }

  v12 = v11 + a3 - 48 * v5;
  if (v12 >= 8u)
  {
    v16 = 0;
    v17 = 0;
    v18 = (v12 >> 3) + 1;
    LOWORD(v14) = v6 - 8 * (((v12 >> 3) + 1) & 0x3FFE);
    v15 = &v10[v18 & 0x3FFE];
    v19 = v8 + 11;
    v20 = v18 & 0x3FFE;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      v19 += 2;
      v16 += byte_22A7D46[v21];
      v17 += byte_22A7D46[v22];
      v20 -= 2;
    }

    while (v20);
    v13 = v17 + v16;
    if ((v18 & 0x3FFE) == v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v14 = a3 % 0x30;
    v15 = v8 + 10;
  }

  do
  {
    v23 = *v15++;
    v13 += byte_22A7D46[v23];
    LOWORD(v14) = v14 - 8;
  }

  while (v14 > 8u);
LABEL_15:
  v10 += ((v6 - 9) >> 3) + 1;
LABEL_16:
  v24 = (v9 + 12 * (v13 + byte_22A7D46[~(-1 << v14) & *v10]));
  if (*(a1 + 36) == v24[1] && *(a1 + 32) == *v24)
  {
    *(a1 + 40) = v4 - 1;
  }

LABEL_22:
  v26 = v7 + 16 * v5;
  v27 = *(v26 + 8);
  v28 = v26 + 10;
  if (v6 < 9)
  {
    v31 = 0;
    v34 = (v26 + 10);
    v32 = a3 % 0x30;
    goto LABEL_33;
  }

  v29 = (48 * (a3 / 0x30) - a3 + 7);
  if (v29 <= 0xFFF7)
  {
    LOWORD(v29) = -9;
  }

  v30 = v29 + a3 - 48 * (a3 / 0x30);
  if (v30 >= 8u)
  {
    v35 = 0;
    v36 = 0;
    v37 = (v30 >> 3) + 1;
    LOWORD(v32) = v6 - 8 * (((v30 >> 3) + 1) & 0x3FFE);
    v33 = (v28 + (v37 & 0x3FFE));
    v38 = (v26 + 11);
    v39 = v37 & 0x3FFE;
    do
    {
      v40 = *(v38 - 1);
      v41 = *v38;
      v38 += 2;
      v35 += byte_22A7D46[v40];
      v36 += byte_22A7D46[v41];
      v39 -= 2;
    }

    while (v39);
    v31 = v36 + v35;
    if ((v37 & 0x3FFE) == v37)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v31 = 0;
    v32 = a3 % 0x30;
    v33 = (v26 + 10);
  }

  do
  {
    v42 = *v33++;
    v31 += byte_22A7D46[v42];
    LOWORD(v32) = v32 - 8;
  }

  while (v32 > 8u);
LABEL_32:
  v34 = (v28 + ((v6 - 9) >> 3) + 1);
LABEL_33:
  v43 = v6 >> 3;
  v44 = v31 + byte_22A7D46[~(-1 << v32) & *v34];
  v45 = 1 << (v6 & 7);
  if ((v45 & *(v28 + (v6 >> 3))) == 0)
  {
    v73 = a2;
    v74 = a3 / 0x30;
    v46 = a1;
    v47 = a4;
    v72 = a3 % 0x30;
    v48 = a3;
    sub_B31684(v26, (v31 + byte_22A7D46[~(-1 << v32) & *v34]));
    LOWORD(a3) = v48;
    v6 = v72;
    a2 = v73;
    a1 = v46;
    a4 = v47;
    v5 = v74;
    ++*(v26 + 8);
    *(v28 + v43) |= v45;
  }

  v49 = *v26 + 12 * v44;
  v50 = *a2;
  *(v49 + 8) = *(a2 + 2);
  *v49 = v50;
  v51 = *(a1 + 48);
  v52 = *(a1 + 56);
  v53 = v51 + 16 * v5;
  *(a1 + 80) = *(a1 + 80) - v27 + *(v53 + 8);
  v54 = (v53 + 10);
  if (v6 >= 9)
  {
    v55 = (48 * v5 - a3 + 7);
    if (v55 <= 0xFFF7)
    {
      LOWORD(v55) = -9;
    }

    v56 = v55 + a3 - 48 * v5;
    if (v56 >= 8u)
    {
      v60 = 0;
      v61 = 0;
      v62 = (v56 >> 3) + 1;
      v58 = v6 - 8 * (((v56 >> 3) + 1) & 0x3FFE);
      v59 = &v54[v62 & 0x3FFE];
      v63 = (16 * v5 + v51 + 11);
      v64 = v62 & 0x3FFE;
      do
      {
        v65 = *(v63 - 1);
        v66 = *v63;
        v63 += 2;
        v60 += byte_22A7D46[v65];
        v61 += byte_22A7D46[v66];
        v64 -= 2;
      }

      while (v64);
      v57 = v61 + v60;
      if ((v62 & 0x3FFE) == v62)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v57 = 0;
      v58 = v6;
      v59 = (v53 + 10);
    }

    do
    {
      v67 = *v59++;
      v57 += byte_22A7D46[v67];
      v58 -= 8;
    }

    while (v58 > 8u);
LABEL_45:
    v54 += ((v6 - 9) >> 3) + 1;
    LOBYTE(v6) = v58;
    goto LABEL_46;
  }

  v57 = 0;
LABEL_46:
  v68 = *v53 + 12 * (v57 + byte_22A7D46[~(-1 << v6) & *v54]);
  if (*v53 + 12 * *(v53 + 8) == v68)
  {
    v53 += 16;
    if (v53 != v52)
    {
      do
      {
        v69 = v53;
        if (*(v53 + 8))
        {
          break;
        }

        v53 += 16;
      }

      while (v69 + 2 != v52);
      v68 = *v69;
    }
  }

  *a4 = a1;
  a4[1] = v51;
  a4[2] = v52;
  a4[3] = v53;
  a4[4] = v68;
  a4[5] = v51;
  a4[6] = v52;
  a4[7] = v52;
  a4[8] = 0;

  return sub_B35DDC(a4);
}

uint64_t sub_B35C0C(uint64_t a1)
{
  v2 = *(a1 + 80) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 72), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    do
    {
      v6 = v5;
      v5 >>= 1;
    }

    while (v6 >= 0x42 && v2 < (*(a1 + 20) * v5));
    v22 = *(a1 + 16);
    *v23 = *(a1 + 32);
    memset(&v23[8], 0, 32);
    v24 = 0u;
    v21 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*&v22, 0)));
    BYTE8(v22) = 0;
    sub_B31E0C(&v21, 0, a1, v5);
    v8 = *a1;
    v7 = *(a1 + 16);
    v9 = v22;
    *a1 = v21;
    *(a1 + 16) = v9;
    v21 = v8;
    v22 = v7;
    v10 = *v23;
    v11 = *&v23[16];
    *v23 = *(a1 + 32);
    *&v23[16] = *(a1 + 48);
    v12 = *&v23[16];
    v13 = *&v23[32];
    v14 = *(a1 + 56);
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 64) = v13;
    *&v23[24] = v14;
    *&v10 = v24;
    v15 = *(a1 + 72);
    *(a1 + 72) = v24;
    v24 = v15;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v10)));
    *(a1 + 24) = 0;
    v21 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v22, v15)));
    BYTE8(v22) = 0;
    if (v12)
    {
      v16 = v14;
      v17 = v12;
      if (v14 != v12)
      {
        do
        {
          v19 = *(v16 - 2);
          v16 -= 2;
          v18 = v19;
          if (v19)
          {
            free(v18);
            *v16 = 0;
          }
        }

        while (v16 != v12);
        v17 = *&v23[16];
      }

      *&v23[24] = v12;
      free(v17);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void *sub_B35DDC(void *result)
{
  if (result[1] == result[5])
  {
    v9 = result[2];
    if (v9 == result[6])
    {
      v14 = result[7];
      v15 = result[3];
      while (v15 != v14 || v14 != v9 && result[4] != result[8])
      {
        v16 = *result;
        if (!*(*result + 40))
        {
          break;
        }

        v17 = result[4];
        v19 = v16 + 32;
        v18 = *(v16 + 32);
        if (*(v19 + 4) != v17[1] || v18 != *v17)
        {
          break;
        }

        result[4] = v17 + 3;
        if (v17 + 3 == (*v15 + 12 * *(v15 + 4)))
        {
          v21 = v15 + 2;
          do
          {
            v15 = v21;
            if (v21 == v9)
            {
              break;
            }

            result[4] = *v21;
            v21 += 2;
          }

          while (!*(v15 + 4));
          result[3] = v15;
        }
      }
    }

    else
    {
      v10 = *result;
      if (*(*result + 40))
      {
        v11 = result[4];
        v12 = *(v10 + 36);
        if (v12 == v11[1] && *(v10 + 32) == *v11)
        {
          v22 = result[3];
          do
          {
            v11 += 3;
            result[4] = v11;
            if (v11 == (*v22 + 12 * *(v22 + 8)))
            {
              v22 += 16;
              if (v22 != v9)
              {
                do
                {
                  v24 = v22;
                  if (*(v22 + 8))
                  {
                    break;
                  }

                  v22 += 16;
                }

                while (v24 + 2 != v9);
                v11 = *v24;
                result[4] = v11;
              }

              result[3] = v22;
            }
          }

          while (v12 == v11[1] && *(v10 + 32) == *v11);
        }
      }
    }
  }

  else
  {
    v1 = *result;
    if (*(*result + 40))
    {
      v2 = result[4];
      v3 = *(v1 + 36);
      if (v3 == v2[1] && *(v1 + 32) == *v2)
      {
        v5 = result[3];
        do
        {
          v2 += 3;
          result[4] = v2;
          if (v2 == (*v5 + 12 * *(v5 + 8)))
          {
            v7 = result[2];
            v5 += 16;
            if (v5 != v7)
            {
              do
              {
                v8 = v5;
                if (*(v5 + 8))
                {
                  break;
                }

                v5 += 16;
              }

              while (v8 + 2 != v7);
              v2 = *v8;
              result[4] = v2;
            }

            result[3] = v5;
          }
        }

        while (v3 == v2[1] && *(v1 + 32) == *v2);
      }
    }
  }

  return result;
}

void sub_B35FCC(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v46);
  v4 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 152) = *(a2 + 40);
  sub_B36474(a1);
  v5 = *(a1 + 48);
  v47[0] = 0x1FFFFFFFDLL;
  v6 = sub_B34C5C(v5, v47);
  v7 = *(v6 + 8);
  if (v7 != -1)
  {
    *(a1 + 456) = v7;
    if (*(a1 + 33) != 1)
    {
      goto LABEL_6;
    }

LABEL_5:
    if (!sub_A822FC(*(a1 + 40)))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = *(v5 + 112);
  *(v5 + 112) = v8 + 1;
  *(v6 + 8) = v8;
  v9 = v6;
  sub_2512DC(v5 + 88, v47);
  *(a1 + 456) = *(v9 + 8);
  if (*(a1 + 33) == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v47[0] = 0x1FFFFFFFELL;
  v11 = sub_B34C5C(v10, v47);
  v12 = *(v11 + 8);
  if (v12 == -1)
  {
    v13 = *(v10 + 112);
    *(v10 + 112) = v13 + 1;
    *(v11 + 8) = v13;
    v14 = v11;
    sub_2512DC(v10 + 88, v47);
    v12 = *(v14 + 8);
  }

  sub_B39144(a1, 0, v12, 0, *(a1 + 116));
LABEL_9:
  LODWORD(v15) = *(a1 + 168);
  if (v15 >= 2)
  {
    v16 = 1;
    while (1)
    {
      if (*(a1 + 25) & 1) == 0 && v16 >= 2 && (*(a1 + 27))
      {
        v17 = *(a1 + 360);
        v18 = *(a1 + 368);
        if (v17 == v18)
        {
          v26 = *(a1 + 360);
        }

        else
        {
          do
          {
            v19 = *v17;
            v20 = *(a1 + 176);
            LODWORD(v47[0]) = (*v17 << *v20) | (v16 - 2);
            v21 = *(sub_B54B10((v20 + 2), v47) + 4);
            v22 = *(a1 + 176);
            LODWORD(v47[0]) = (v19 << *v22) | v16;
            v23 = sub_B54B10((v22 + 2), v47);
            if (v21 != 0x7FFFFFFF)
            {
              v24 = *(v23 + 4);
              if (v24 == 0x7FFFFFFF || v21 < v24)
              {
                *(v23 + 4) = v21;
              }
            }

            ++v17;
          }

          while (v17 != v18);
          v17 = *(a1 + 360);
          v26 = *(a1 + 368);
        }

        *(a1 + 696) = *(a1 + 696) + ((v26 - v17) >> 2);
      }

      if (v16)
      {
        v36 = *(a1 + 312);
        v37 = *(a1 + 320);
        if (v36 != v37)
        {
          v38 = *(a1 + 288);
          v39 = *(a1 + 312);
          do
          {
            v40 = *v39++;
            *(v38 + ((v40 >> 3) & 0x1FFFFFF8)) &= ~(1 << v40);
          }

          while (v39 != v37);
        }

        *(a1 + 320) = v36;
        sub_B36720(a1, v16);
        sub_B3691C(a1, v16);
        v41 = *(a1 + 456);
        if (*(a1 + 296) > v41 && ((*(*(a1 + 288) + ((v41 >> 3) & 0x1FFFFFF8)) >> v41) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        }

        if (*(a1 + 25) == 1 && *(a1 + 312) == *(a1 + 320))
        {
LABEL_55:
          LODWORD(v15) = *(a1 + 168);
          if (v15)
          {
            goto LABEL_56;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v27 = *(a1 + 264);
        v28 = *(a1 + 272);
        if (v27 != v28)
        {
          v29 = *(a1 + 240);
          v30 = *(a1 + 264);
          do
          {
            v31 = *v30++;
            *(v29 + ((v31 >> 3) & 0x1FFFFFF8)) &= ~(1 << v31);
          }

          while (v30 != v28);
        }

        *(a1 + 272) = v27;
        sub_B378F4(a1, v16);
        sub_7E9A4(v47);
        v32 = *(a1 + 432);
        v33 = *(a1 + 440);
        while (v32 != v33)
        {
          v34 = *v32++;
          sub_B39DF8(a1, v16, v34);
        }

        *(a1 + 624) = sub_7EA60(v47) + *(a1 + 624);
        v35 = *(a1 + 456);
        if (*(a1 + 248) > v35 && ((*(*(a1 + 240) + ((v35 >> 3) & 0x1FFFFFF8)) >> v35) & 1) != 0)
        {
          *(*(a1 + 464) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v16 & 0x3E);
        }

        if (*(a1 + 25) == 1 && *(a1 + 264) == *(a1 + 272))
        {
          goto LABEL_55;
        }
      }

      v42 = sub_B3AE5C(a1) + 744;
      if (*(a1 + 736) > v42)
      {
        v42 = *(a1 + 736);
      }

      *(a1 + 736) = v42;
      if (sub_B38CCC(a1, v16))
      {
        goto LABEL_55;
      }

      ++v16;
      v15 = *(a1 + 168);
      if (v16 >= v15)
      {
        goto LABEL_53;
      }
    }
  }

  LODWORD(v16) = 1;
LABEL_53:
  if (v15)
  {
LABEL_56:
    v43 = 0;
    v44 = v15;
    do
    {
      if ((*(*(a1 + 464) + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v43))
      {
        *(a1 + 656) = *(a1 + 656) + 1.0;
        v45 = *(a1 + 176);
        LODWORD(v47[0]) = (*(a1 + 456) << *v45) | v43;
        *(a1 + 648) += *(sub_B54B10((v45 + 2), v47) + 4);
      }

      ++v43;
    }

    while (v44 != v43);
  }

LABEL_60:
  *(a1 + 664) = v16;
  *(a1 + 616) = sub_7EA60(v46);
}

double sub_B36474(uint64_t a1)
{
  v2 = *(a1 + 264);
  v3 = *(a1 + 272);
  if (v2 != v3)
  {
    v4 = *(a1 + 240);
    v5 = *(a1 + 264);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 272) = v2;
  v7 = *(a1 + 312);
  v8 = *(a1 + 320);
  if (v7 != v8)
  {
    v9 = *(a1 + 288);
    v10 = *(a1 + 312);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 320) = v7;
  v12 = *(a1 + 360);
  v13 = *(a1 + 368);
  if (v12 != v13)
  {
    v14 = *(a1 + 336);
    v15 = *(a1 + 360);
    do
    {
      v16 = *v15++;
      *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
    }

    while (v15 != v13);
  }

  *(a1 + 368) = v12;
  v17 = *(a1 + 432);
  v18 = *(a1 + 440);
  if (v17 != v18)
  {
    v19 = *(a1 + 408);
    v20 = *(a1 + 384);
    v21 = *(a1 + 432);
    do
    {
      v22 = *v21++;
      *(v19 + ((v22 >> 3) & 0x1FFFFFF8)) &= ~(1 << v22);
      *(v20 + 4 * v22) = -1;
    }

    while (v21 != v18);
  }

  *(a1 + 440) = v17;
  sub_C4306C((a1 + 488));
  *(a1 + 472) = 0;
  v34 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v35, &__p);
  v23 = (a1 + 592);
  if (*(a1 + 615) < 0)
  {
    operator delete(*v23);
  }

  *v23 = v35;
  *(a1 + 608) = v36;
  HIBYTE(v36) = 0;
  LOBYTE(v35) = 0;
  v24 = v42;
  *(a1 + 680) = v41;
  *(a1 + 696) = v24;
  v25 = v44;
  *(a1 + 712) = v43;
  *(a1 + 728) = v25;
  v26 = v38;
  *(a1 + 616) = v37;
  *(a1 + 632) = v26;
  v27 = v40;
  *(a1 + 648) = v39;
  *(a1 + 664) = v27;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  v28 = 2 * *(a1 + 8) + 2;
  *(a1 + 168) = v28;
  if (*(a1 + 24) == 1)
  {
    v29 = *(a1 + 176);
    *v29 = 32 - __clz(v28);
    if (*(v29 + 48) | *(v29 + 88))
    {
      for (i = *(v29 + 56); i != *(v29 + 64); i += 16)
      {
        if (*i)
        {
          free(*i);
          *i = 0;
        }

        *(i + 8) = 0;
      }

      *(v29 + 88) = 0;
    }

    *(v29 + 8) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(v29 + 24), *(v29 + 80))));
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    v28 = *(a1 + 168);
  }

  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  sub_4D9168(a1 + 464, v28, 0);
  return sub_C430C8((a1 + 488), *(a1 + 16), v31);
}

void sub_B36704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_B36720(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v22);
  v4 = *(a1 + 264);
  v5 = *(a1 + 272);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      v7 = *sub_A9C5E0((*(a1 + 48) + 88), *v4);
      v8 = *(a1 + 176);
      v23 = (v6 << *v8) | (a2 - 1);
      v9 = *(sub_B54B10((v8 + 2), &v23) + 4);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
LABEL_14:
        v15 = v9;
        v16 = *(a1 + 64);
        if (v16)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      v11 = *(*(a1 + 40) + 4120);
      if (*(v11 + 17) == 1)
      {
        break;
      }

      v12 = sub_502FF8(v11 + 24, __ROR8__(v7, 32), 0, "stop");
      v17 = (v12 - *v12);
      if (*v17 >= 0x15u)
      {
        v14 = v17[10];
        if (v14)
        {
          goto LABEL_18;
        }
      }

      v15 = v9 + 30;
      v16 = *(a1 + 64);
      if (v16)
      {
LABEL_21:
        v18 = sub_B394F8(v16, v6, *(a1 + 168) + ~a2);
        if (v18 == 0x7FFFFFFF || v18 < v15)
        {
          goto LABEL_3;
        }
      }

LABEL_25:
      if (sub_B39144(a1, 1u, v6, a2, v15))
      {
        v20 = *(a1 + 176);
        v23 = (v6 << *v20) | a2;
        sub_B54B10((v20 + 2), &v23);
      }

LABEL_3:
      if (++v4 == v5)
      {
        goto LABEL_27;
      }
    }

    v12 = sub_A74944(v11 + 24, v7, 0, "transfers at stop");
    v13 = (v12 - *v12);
    if (*v13 < 5u)
    {
      goto LABEL_14;
    }

    v14 = v13[2];
    if (!v14)
    {
      v15 = v9;
      v16 = *(a1 + 64);
      if (v16)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }

LABEL_18:
    v15 = *(v12 + v14) + v9;
    v16 = *(a1 + 64);
    if (v16)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_27:
  result = sub_7EA60(v22) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_B3691C(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v210);
  v3 = *(a1 + 264);
  v197 = *(a1 + 272);
  if (v3 != v197)
  {
    v200 = a1;
    do
    {
      v198 = v3;
      v4 = *v3;
      v5 = *sub_A9C5E0((*(a1 + 48) + 88), *v3);
      v6 = *(a1 + 176);
      v203 = v4;
      LODWORD(v214[0]) = (v4 << *v6) | (a2 - 1);
      v201 = *(sub_B54B10((v6 + 2), v214) + 4);
      sub_A74644(&v204, *(a1 + 40), v5);
      v7 = v205;
      v8 = 16;
      if (v209)
      {
        v8 = 32;
      }

      v9 = *(&v204 + v8);
      while (v7 < v9)
      {
        v12 = 0;
        v13 = __ROR8__(*v7, 32);
        v14 = *(a1 + 48);
        v15 = *(v14 + 72) - 1;
        v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
        v17 = v16 ^ (v16 >> 33);
        v18 = *(v14 + 48);
        v19 = v18 + 11;
        v20 = -1;
        for (i = v17; ; i = v12 + v22)
        {
          v22 = i & v15;
          v23 = (i & v15) / 0x30;
          v24 = (i & v15) % 0x30;
          v25 = (v18 + 16 * v23);
          if (((*(v25 + (v24 >> 3) + 10) >> (v24 & 7)) & 1) == 0)
          {
            if (v20 == -1)
            {
              v61 = v22;
            }

            else
            {
              v61 = v20;
            }

            if (!sub_B35190(*(a1 + 48), 1))
            {
              goto LABEL_99;
            }

            goto LABEL_55;
          }

          v26 = *v25;
          if (!*(v14 + 40))
          {
            break;
          }

          v27 = v25 + 10;
          if (v24 < 9)
          {
            v29 = 0;
            LOBYTE(v30) = v24;
            goto LABEL_29;
          }

          v28 = (48 * v23 - v22 + 7);
          if (v28 <= 0xFFF7)
          {
            LOWORD(v28) = -9;
          }

          if ((v28 + v22 - 48 * v23) >= 8u)
          {
            v32 = 0;
            v33 = 0;
            v34 = ((v28 + v22 - 48 * v23) >> 3) + 1;
            v30 = v24 - 8 * ((((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
            v31 = &v27[(((v28 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
            v35 = (v19 + 16 * v23);
            v36 = v34 & 0x3FFE;
            do
            {
              v37 = *(v35 - 1);
              v38 = *v35;
              v35 += 2;
              v32 += byte_22A7D46[v37];
              v33 += byte_22A7D46[v38];
              v36 -= 2;
            }

            while (v36);
            v29 = v33 + v32;
            if ((v34 & 0x3FFE) == v34)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v29 = 0;
            v30 = v24;
            v31 = v25 + 10;
          }

          do
          {
            v39 = *v31++;
            v29 += byte_22A7D46[v39];
            v30 -= 8;
          }

          while (v30 > 8u);
LABEL_28:
          v27 += ((v24 - 9) >> 3) + 1;
LABEL_29:
          v40 = (v26 + 12 * (v29 + byte_22A7D46[~(-1 << v30) & *v27]));
          if (*(v14 + 36) != v40[1] || *(v14 + 32) != *v40)
          {
            break;
          }

          if (v20 == -1)
          {
            v20 = v22;
          }

LABEL_15:
          ++v12;
        }

        v42 = v25 + 10;
        if (v24 < 9)
        {
          v44 = 0;
          LOBYTE(v45) = v24;
        }

        else
        {
          v43 = (48 * v23 - v22 + 7);
          if (v43 <= 0xFFF7)
          {
            LOWORD(v43) = -9;
          }

          if ((v43 + v22 - 48 * v23) < 8u)
          {
            v44 = 0;
            v45 = v24;
            v46 = v25 + 10;
            goto LABEL_42;
          }

          v47 = 0;
          v48 = 0;
          v49 = ((v43 + v22 - 48 * v23) >> 3) + 1;
          v45 = v24 - 8 * ((((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE);
          v46 = &v42[(((v43 + v22 - 48 * v23) >> 3) + 1) & 0x3FFE];
          v50 = (v19 + 16 * v23);
          v51 = v49 & 0x3FFE;
          do
          {
            v52 = *(v50 - 1);
            v53 = *v50;
            v50 += 2;
            v47 += byte_22A7D46[v52];
            v48 += byte_22A7D46[v53];
            v51 -= 2;
          }

          while (v51);
          v44 = v48 + v47;
          if ((v49 & 0x3FFE) != v49)
          {
            do
            {
LABEL_42:
              v54 = *v46++;
              v44 += byte_22A7D46[v54];
              v45 -= 8;
            }

            while (v45 > 8u);
          }

          v42 += ((v24 - 9) >> 3) + 1;
        }

        if (v13 != *(v26 + 12 * (v44 + byte_22A7D46[~(-1 << v45) & *v42])))
        {
          goto LABEL_15;
        }

        if (v22 != -1)
        {
          v55 = v25 + 10;
          if (v24 < 9)
          {
            v58 = 0;
          }

          else
          {
            v56 = (48 * v23 - v22 + 7);
            if (v56 <= 0xFFF7)
            {
              LOWORD(v56) = -9;
            }

            v57 = v56 + v22 - 48 * v23;
            if (v57 < 8u)
            {
              v58 = 0;
              v59 = v24;
              v60 = v25 + 10;
              goto LABEL_104;
            }

            v109 = 0;
            v110 = 0;
            v111 = (v57 >> 3) + 1;
            v59 = v24 - 8 * (((v57 >> 3) + 1) & 0x3FFE);
            v60 = &v55[v111 & 0x3FFE];
            v112 = v25 + 11;
            v113 = v111 & 0x3FFE;
            do
            {
              v114 = *(v112 - 1);
              v115 = *v112;
              v112 += 2;
              v109 += byte_22A7D46[v114];
              v110 += byte_22A7D46[v115];
              v113 -= 2;
            }

            while (v113);
            v58 = v110 + v109;
            if ((v111 & 0x3FFE) != v111)
            {
              do
              {
LABEL_104:
                v116 = *v60++;
                v58 += byte_22A7D46[v116];
                v59 -= 8;
              }

              while (v59 > 8u);
            }

            v55 += ((v24 - 9) >> 3) + 1;
            LOBYTE(v24) = v59;
          }

          v117 = *(v14 + 56);
          v108 = (v26 + 12 * (v58 + byte_22A7D46[~(-1 << v24) & *v55]));
          if ((*v25 + 12 * *(v25 + 4)) == v108 && v25 + 2 != v117)
          {
            v119 = v25 + 4;
            do
            {
              if (*(v119 - 4))
              {
                v120 = 1;
              }

              else
              {
                v120 = v119 == v117;
              }

              v119 += 2;
            }

            while (!v120);
            v108 = *(v119 - 4);
          }

          goto LABEL_117;
        }

        v61 = -1;
        if (!sub_B35190(*(a1 + 48), 1))
        {
LABEL_99:
          v212 = v13;
          v213 = -1;
          sub_B356C0(v14, &v212, v61, v214);
          v108 = v215;
          goto LABEL_117;
        }

LABEL_55:
        v62 = 0;
        v212 = v13;
        v213 = -1;
        v63 = *(v14 + 72) - 1;
        v64 = *(v14 + 48);
        v65 = v64 + 11;
        v66 = -1;
        while (2)
        {
          v67 = v17 & v63;
          v68 = (v17 & v63) / 0x30;
          v69 = (v17 & v63) % 0x30;
          v70 = v64 + 16 * v68;
          if (((*(v70 + (v69 >> 3) + 10) >> (v69 & 7)) & 1) == 0)
          {
            if (v66 == -1)
            {
              v107 = v17 & v63;
            }

            else
            {
              v107 = v66;
            }

            goto LABEL_97;
          }

          v71 = *(v14 + 40);
          v72 = *v70;
          if (v71)
          {
            v73 = (v70 + 10);
            if (v69 < 9)
            {
              v75 = 0;
              LOBYTE(v76) = (v17 & v63) % 0x30;
            }

            else
            {
              v74 = (48 * v68 - v67 + 7);
              if (v74 <= 0xFFF7)
              {
                LOWORD(v74) = -9;
              }

              if ((v74 + v67 - 48 * v68) < 8u)
              {
                v75 = 0;
                v76 = (v17 & v63) % 0x30;
                v77 = (v70 + 10);
                goto LABEL_70;
              }

              v78 = 0;
              v79 = 0;
              v80 = ((v74 + v67 - 48 * v68) >> 3) + 1;
              v76 = v69 - 8 * ((((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
              v77 = &v73[(((v74 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
              v81 = (v65 + 16 * v68);
              v82 = v80 & 0x3FFE;
              do
              {
                v83 = *(v81 - 1);
                v84 = *v81;
                v81 += 2;
                v78 += byte_22A7D46[v83];
                v79 += byte_22A7D46[v84];
                v82 -= 2;
              }

              while (v82);
              v75 = v79 + v78;
              if ((v80 & 0x3FFE) != v80)
              {
                do
                {
LABEL_70:
                  v85 = *v77++;
                  v75 += byte_22A7D46[v85];
                  v76 -= 8;
                }

                while (v76 > 8u);
              }

              v73 += ((v69 - 9) >> 3) + 1;
            }

            v86 = &v72[3 * (v75 + byte_22A7D46[~(-1 << v76) & *v73])];
            if (*(v14 + 36) == v86[1] && *(v14 + 32) == *v86)
            {
              if (v66 == -1)
              {
                v66 = v67;
              }

LABEL_58:
              v17 = ++v62 + v67;
              continue;
            }
          }

          break;
        }

        v88 = (v70 + 10);
        if (v69 < 9)
        {
          v90 = 0;
          LOBYTE(v91) = v69;
        }

        else
        {
          v89 = (48 * v68 - v67 + 7);
          if (v89 <= 0xFFF7)
          {
            LOWORD(v89) = -9;
          }

          if ((v89 + v67 - 48 * v68) < 8u)
          {
            v90 = 0;
            v91 = v69;
            v92 = (v70 + 10);
            goto LABEL_85;
          }

          v93 = 0;
          v94 = 0;
          v95 = ((v89 + v67 - 48 * v68) >> 3) + 1;
          v91 = v69 - 8 * ((((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE);
          v92 = &v88[(((v89 + v67 - 48 * v68) >> 3) + 1) & 0x3FFE];
          v96 = (v65 + 16 * v68);
          v97 = v95 & 0x3FFE;
          do
          {
            v98 = *(v96 - 1);
            v99 = *v96;
            v96 += 2;
            v93 += byte_22A7D46[v98];
            v94 += byte_22A7D46[v99];
            v97 -= 2;
          }

          while (v97);
          v90 = v94 + v93;
          if ((v95 & 0x3FFE) != v95)
          {
            do
            {
LABEL_85:
              v100 = *v92++;
              v90 += byte_22A7D46[v100];
              v91 -= 8;
            }

            while (v91 > 8u);
          }

          v88 += ((v69 - 9) >> 3) + 1;
        }

        if (v13 != *&v72[3 * (v90 + byte_22A7D46[~(-1 << v91) & *v88])])
        {
          goto LABEL_58;
        }

        if (v67 == -1)
        {
          v107 = -1;
LABEL_97:
          sub_B356C0(v14, &v212, v107, v214);
          v108 = v215;
          goto LABEL_117;
        }

        v101 = (v70 + 10);
        if (v69 < 9)
        {
          v104 = 0;
        }

        else
        {
          v102 = (48 * v68 - v67 + 7);
          if (v102 <= 0xFFF7)
          {
            LOWORD(v102) = -9;
          }

          v103 = v102 + v67 - 48 * v68;
          if (v103 < 8u)
          {
            v104 = 0;
            v105 = v69;
            v106 = (v70 + 10);
            goto LABEL_220;
          }

          v184 = 0;
          v185 = 0;
          v186 = (v103 >> 3) + 1;
          v105 = v69 - 8 * (((v103 >> 3) + 1) & 0x3FFE);
          v106 = &v101[v186 & 0x3FFE];
          v187 = (v70 + 11);
          v188 = v186 & 0x3FFE;
          do
          {
            v189 = *(v187 - 1);
            v190 = *v187;
            v187 += 2;
            v184 += byte_22A7D46[v189];
            v185 += byte_22A7D46[v190];
            v188 -= 2;
          }

          while (v188);
          v104 = v185 + v184;
          if ((v186 & 0x3FFE) != v186)
          {
            do
            {
LABEL_220:
              v191 = *v106++;
              v104 += byte_22A7D46[v191];
              v105 -= 8;
            }

            while (v105 > 8u);
          }

          v101 += ((v69 - 9) >> 3) + 1;
          LOBYTE(v69) = v105;
        }

        v192 = *(v14 + 56);
        v108 = &v72[3 * (v104 + byte_22A7D46[~(-1 << v69) & *v101])];
        if ((*v70 + 12 * *(v70 + 8)) == v108)
        {
          v70 += 16;
          if (v70 != v192)
          {
            do
            {
              v193 = v70;
              if (*(v70 + 8))
              {
                break;
              }

              v70 += 16;
            }

            while (v193 + 2 != v192);
            v108 = *v193;
          }
        }

        if (v70 != v192 && v71)
        {
          do
          {
            if (*(v14 + 36) != v108[1] || *(v14 + 32) != *v108)
            {
              break;
            }

            v108 += 3;
            if (v108 == (*v70 + 12 * *(v70 + 8)))
            {
              v70 += 16;
              if (v70 != v192)
              {
                do
                {
                  v195 = v70;
                  if (*(v70 + 8))
                  {
                    break;
                  }

                  v70 += 16;
                }

                while (v195 + 2 != v192);
                v108 = *v195;
              }
            }
          }

          while (v70 != v192);
        }

LABEL_117:
        v121 = v108[2];
        if (v121 == -1)
        {
          v122 = *(v14 + 112);
          *(v14 + 112) = v122 + 1;
          v108[2] = v122;
          v124 = *(v14 + 96);
          v123 = *(v14 + 104);
          if (v124 >= v123)
          {
            v126 = *(v14 + 88);
            v127 = v124 - v126;
            v128 = (v124 - v126) >> 3;
            v129 = v128 + 1;
            if ((v128 + 1) >> 61)
            {
              sub_1794();
            }

            v130 = v123 - v126;
            if (v130 >> 2 > v129)
            {
              v129 = v130 >> 2;
            }

            if (v130 >= 0x7FFFFFFFFFFFFFF8)
            {
              v131 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v131 = v129;
            }

            if (v131)
            {
              if (!(v131 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v132 = (v124 - v126) >> 3;
            v133 = (8 * v128);
            v134 = (8 * v128 - 8 * v132);
            *v133 = v13;
            v125 = v133 + 1;
            memcpy(v134, v126, v127);
            *(v14 + 88) = v134;
            *(v14 + 96) = v125;
            *(v14 + 104) = 0;
            if (v126)
            {
              operator delete(v126);
            }

            a1 = v200;
          }

          else
          {
            *v124 = v13;
            v125 = v124 + 1;
          }

          *(v14 + 96) = v125;
          v121 = v108[2];
        }

        *(a1 + 688) = *(a1 + 688) + 1.0;
        if (v203 == v121)
        {
          goto LABEL_193;
        }

        v135 = v121;
        v136 = *(v205 + 2);
        v137 = v136 / 10;
        v138 = v136 % 10;
        if (v136 < 0)
        {
          v139 = -5;
        }

        else
        {
          v139 = 5;
        }

        v140 = (((103 * (v139 + v138)) >> 15) & 1) + ((103 * (v139 + v138)) >> 10);
        v141 = v137 + v201;
        v142 = v141 + v140;
        v143 = *(a1 + 64);
        if (!v143)
        {
          goto LABEL_186;
        }

        v202 = v141 + v140;
        v144 = 0;
        v145 = *(a1 + 168) + ~a2;
        while (2)
        {
          while (2)
          {
            LODWORD(v214[0]) = (v135 << *v143) | (v145 - v144);
            if (*(v143 + 88) == *(v143 + 48))
            {
              goto LABEL_139;
            }

            v148 = sub_B397F8(v143 + 8, v214);
            if (v148 == -1)
            {
              goto LABEL_139;
            }

            v149 = *(v143 + 56) + 16 * (v148 / 0x30);
            v150 = (v149 + 10);
            v151 = v148 % 0x30;
            if (v148 % 0x30 < 9)
            {
              v155 = 0;
            }

            else
            {
              v152 = 48 * (v148 / 0x30);
              v153 = (v152 - v148 + 7);
              if (v153 <= 0xFFF7)
              {
                LOWORD(v153) = -9;
              }

              v154 = v153 + v148 - v152;
              if (v154 < 8u)
              {
                v155 = 0;
                v156 = v148 % 0x30;
                v157 = (v149 + 10);
                goto LABEL_154;
              }

              v158 = 0;
              v159 = 0;
              v160 = (v154 >> 3) + 1;
              LOWORD(v156) = v151 - 8 * (((v154 >> 3) + 1) & 0x3FFE);
              v157 = &v150[v160 & 0x3FFE];
              v161 = (v149 + 11);
              v162 = v160 & 0x3FFE;
              do
              {
                v163 = *(v161 - 1);
                v164 = *v161;
                v161 += 2;
                v158 += byte_22A7B46[v163];
                v159 += byte_22A7B46[v164];
                v162 -= 2;
              }

              while (v162);
              v155 = v159 + v158;
              if ((v160 & 0x3FFE) != v160)
              {
                do
                {
LABEL_154:
                  v165 = *v157++;
                  v155 += byte_22A7B46[v165];
                  LOWORD(v156) = v156 - 8;
                }

                while (v156 > 8u);
              }

              v150 += ((v151 - 9) >> 3) + 1;
              LOBYTE(v151) = v156;
            }

            v166 = *(v143 + 64);
            v167 = (*v149 + 8 * (v155 + byte_22A7B46[~(-1 << v151) & *v150]));
            if ((*v149 + 8 * *(v149 + 8)) == v167)
            {
              v149 += 16;
              if (v149 != v166)
              {
                do
                {
                  v168 = v149;
                  if (*(v149 + 8))
                  {
                    break;
                  }

                  v149 += 16;
                }

                while (v168 + 2 != v166);
                v167 = *v168;
              }
            }

            if (v149 == v166)
            {
LABEL_139:
              v146 = *(v143 + 4);
              v144 += 2;
              if (v146 != 0x7FFFFFFF || v144 > v145)
              {
                goto LABEL_182;
              }

              continue;
            }

            break;
          }

          if (*(v143 + 48))
          {
            v169 = v149;
            do
            {
              if (*(v143 + 40) != *v167)
              {
                break;
              }

              v167 += 2;
              if (v167 == (*v149 + 8 * *(v149 + 8)))
              {
                v149 += 16;
                v169 = *(v143 + 64);
                if (v149 != v166)
                {
                  do
                  {
                    v170 = v149;
                    if (*(v149 + 8))
                    {
                      v169 = v149;
                      goto LABEL_165;
                    }

                    v149 += 16;
                  }

                  while (v170 + 2 != v166);
                  v169 = *(v143 + 64);
LABEL_165:
                  v167 = *v170;
                }
              }
            }

            while (v149 != v166);
          }

          else
          {
            v169 = v149;
          }

          if (v169 == v166)
          {
            v171 = v143;
          }

          else
          {
            v171 = v167;
          }

          v146 = v171[1];
          v144 += 2;
          if (v146 == 0x7FFFFFFF && v144 <= v145)
          {
            continue;
          }

          break;
        }

LABEL_182:
        v142 = v202;
        if (v146 != 0x7FFFFFFF && v146 >= v202)
        {
LABEL_186:
          if (sub_B39144(a1, 1u, v135, a2, v142))
          {
            v174 = *(a1 + 176);
            v176 = *v174;
            v175 = (v174 + 2);
            v211 = (v135 << v176) | a2;
            if (sub_B397F8(v175, &v211) == -1)
            {
              v178 = v177;
              if (sub_B54D24(v175, 1))
              {
                v212 = v211 | 0x7FFFFFFF00000000;
                sub_B55034(v175, &v212, v214);
              }

              else
              {
                v212 = v211 | 0x7FFFFFFF00000000;
                sub_B5525C(v175, &v212, v178, v214);
              }
            }
          }
        }

LABEL_193:
        v9 = v206;
        v7 = (v205 + 12);
        v205 = v7;
        if (v7 == v206)
        {
          v7 = v207;
          v205 = v207;
          v10 = 1;
          v209 = 1;
        }

        else
        {
          v10 = v209;
        }

        v11 = v208;
        if (v10)
        {
          v179 = v208;
        }

        else
        {
          v179 = v206;
        }

        if (*(v204 + 16) == 1 && v7 < v179)
        {
          while (1)
          {
            v181 = __ROR8__(*v7, 32);
            if (HIDWORD(v181) == 1 && (v181 + 3) < 2)
            {
              break;
            }

            if (sub_2D5204(**(v204 + 4120)))
            {
              v7 = v205;
              v9 = v206;
              v10 = v209;
              break;
            }

            v9 = v206;
            v7 = (v205 + 12);
            v205 = v7;
            if (v7 == v206)
            {
              v7 = v207;
              v205 = v207;
              v10 = 1;
              v209 = 1;
              if (v207 >= v208)
              {
                break;
              }
            }

            else
            {
              v10 = v209;
              v183 = 16;
              if (v209)
              {
                v183 = 32;
              }

              if (v7 >= *(&v204 + v183))
              {
                break;
              }
            }
          }

          v11 = v208;
        }

        if (v10)
        {
          v9 = v11;
        }
      }

      v3 = v198 + 1;
    }

    while (v198 + 1 != v197);
  }

  result = sub_7EA60(v210) + *(a1 + 632);
  *(a1 + 632) = result;
  return result;
}

double sub_B378F4(uint64_t a1, unsigned int a2)
{
  sub_7E9A4(v251);
  v4 = *(a1 + 432);
  v5 = *(a1 + 440);
  if (v4 != v5)
  {
    v6 = *(a1 + 408);
    v7 = *(a1 + 384);
    v8 = *(a1 + 432);
    do
    {
      v9 = *v8++;
      *(v6 + ((v9 >> 3) & 0x1FFFFFF8)) &= ~(1 << v9);
      *(v7 + 4 * v9) = -1;
    }

    while (v8 != v5);
  }

  *(a1 + 440) = v4;
  v10 = *(a1 + 312);
  v240 = *(a1 + 320);
  if (v10 != v240)
  {
    v241 = a2;
    v237 = a2 + 1;
    do
    {
      v243 = v10;
      v11 = a1;
      v12 = sub_A9C5E0((*(a1 + 48) + 88), *v10);
      sub_A7905C(v244, *(a1 + 40), *v12, 0, 0, 0);
      v13 = v247;
      v14 = v248;
      while (v13 < v14)
      {
        v15 = 0;
        v16 = __ROR8__(*v13, 32);
        v17 = v11[7];
        v18 = *(v17 + 72) - 1;
        v19 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v16 ^ (v16 >> 33))) >> 33));
        v20 = v19 ^ (v19 >> 33);
        v21 = *(v17 + 48);
        v22 = v21 + 11;
        v23 = -1;
        for (i = v20; ; i = v15 + v25)
        {
          v25 = i & v18;
          v26 = (i & v18) / 0x30;
          v27 = (i & v18) % 0x30;
          v28 = (v21 + 16 * v26);
          if (((*(v28 + (v27 >> 3) + 10) >> (v27 & 7)) & 1) == 0)
          {
            if (v23 == -1)
            {
              v64 = v25;
            }

            else
            {
              v64 = v23;
            }

            if (!sub_B35190(v11[7], 1))
            {
              goto LABEL_96;
            }

            goto LABEL_52;
          }

          v29 = *v28;
          if (!*(v17 + 40))
          {
            break;
          }

          v30 = v28 + 10;
          if (v27 < 9)
          {
            v32 = 0;
            LOBYTE(v33) = v27;
            goto LABEL_26;
          }

          v31 = (48 * v26 - v25 + 7);
          if (v31 <= 0xFFF7)
          {
            LOWORD(v31) = -9;
          }

          if ((v31 + v25 - 48 * v26) >= 8u)
          {
            v35 = 0;
            v36 = 0;
            v37 = ((v31 + v25 - 48 * v26) >> 3) + 1;
            v33 = v27 - 8 * ((((v31 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE);
            v34 = &v30[(((v31 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE];
            v38 = (v22 + 16 * v26);
            v39 = v37 & 0x3FFE;
            do
            {
              v40 = *(v38 - 1);
              v41 = *v38;
              v38 += 2;
              v35 += byte_22A7D46[v40];
              v36 += byte_22A7D46[v41];
              v39 -= 2;
            }

            while (v39);
            v32 = v36 + v35;
            if ((v37 & 0x3FFE) == v37)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v32 = 0;
            v33 = v27;
            v34 = v28 + 10;
          }

          do
          {
            v42 = *v34++;
            v32 += byte_22A7D46[v42];
            v33 -= 8;
          }

          while (v33 > 8u);
LABEL_25:
          v30 += ((v27 - 9) >> 3) + 1;
LABEL_26:
          v43 = (v29 + 12 * (v32 + byte_22A7D46[~(-1 << v33) & *v30]));
          if (*(v17 + 36) != v43[1] || *(v17 + 32) != *v43)
          {
            break;
          }

          if (v23 == -1)
          {
            v23 = v25;
          }

LABEL_12:
          ++v15;
        }

        v45 = v28 + 10;
        if (v27 < 9)
        {
          v47 = 0;
          LOBYTE(v48) = v27;
        }

        else
        {
          v46 = (48 * v26 - v25 + 7);
          if (v46 <= 0xFFF7)
          {
            LOWORD(v46) = -9;
          }

          if ((v46 + v25 - 48 * v26) < 8u)
          {
            v47 = 0;
            v48 = v27;
            v49 = v28 + 10;
            goto LABEL_39;
          }

          v50 = 0;
          v51 = 0;
          v52 = ((v46 + v25 - 48 * v26) >> 3) + 1;
          v48 = v27 - 8 * ((((v46 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE);
          v49 = &v45[(((v46 + v25 - 48 * v26) >> 3) + 1) & 0x3FFE];
          v53 = (v22 + 16 * v26);
          v54 = v52 & 0x3FFE;
          do
          {
            v55 = *(v53 - 1);
            v56 = *v53;
            v53 += 2;
            v50 += byte_22A7D46[v55];
            v51 += byte_22A7D46[v56];
            v54 -= 2;
          }

          while (v54);
          v47 = v51 + v50;
          if ((v52 & 0x3FFE) != v52)
          {
            do
            {
LABEL_39:
              v57 = *v49++;
              v47 += byte_22A7D46[v57];
              v48 -= 8;
            }

            while (v48 > 8u);
          }

          v45 += ((v27 - 9) >> 3) + 1;
        }

        if (v16 != *(v29 + 12 * (v47 + byte_22A7D46[~(-1 << v48) & *v45])))
        {
          goto LABEL_12;
        }

        if (v25 != -1)
        {
          v58 = v28 + 10;
          if (v27 < 9)
          {
            v61 = 0;
          }

          else
          {
            v59 = (48 * v26 - v25 + 7);
            if (v59 <= 0xFFF7)
            {
              LOWORD(v59) = -9;
            }

            v60 = v59 + v25 - 48 * v26;
            if (v60 < 8u)
            {
              v61 = 0;
              v62 = v27;
              v63 = v28 + 10;
              goto LABEL_138;
            }

            v147 = 0;
            v148 = 0;
            v149 = (v60 >> 3) + 1;
            v62 = v27 - 8 * (((v60 >> 3) + 1) & 0x3FFE);
            v63 = &v58[v149 & 0x3FFE];
            v150 = v28 + 11;
            v151 = v149 & 0x3FFE;
            do
            {
              v152 = *(v150 - 1);
              v153 = *v150;
              v150 += 2;
              v147 += byte_22A7D46[v152];
              v148 += byte_22A7D46[v153];
              v151 -= 2;
            }

            while (v151);
            v61 = v148 + v147;
            if ((v149 & 0x3FFE) != v149)
            {
              do
              {
LABEL_138:
                v154 = *v63++;
                v61 += byte_22A7D46[v154];
                v62 -= 8;
              }

              while (v62 > 8u);
            }

            v58 += ((v27 - 9) >> 3) + 1;
            LOBYTE(v27) = v62;
          }

          v155 = *(v17 + 56);
          v112 = (v29 + 12 * (v61 + byte_22A7D46[~(-1 << v27) & *v58]));
          if ((*v28 + 12 * *(v28 + 4)) == v112 && v28 + 2 != v155)
          {
            v157 = v28 + 4;
            do
            {
              if (*(v157 - 4))
              {
                v158 = 1;
              }

              else
              {
                v158 = v157 == v155;
              }

              v157 += 2;
            }

            while (!v158);
            v112 = *(v157 - 4);
          }

          goto LABEL_98;
        }

        v64 = -1;
        if (!sub_B35190(v11[7], 1))
        {
LABEL_96:
          v252 = v16;
          v253 = -1;
          v111 = v17;
          v110 = v64;
LABEL_97:
          sub_B356C0(v111, &v252, v110, v254);
          v112 = v254[4];
          goto LABEL_98;
        }

LABEL_52:
        v65 = 0;
        v252 = v16;
        v253 = -1;
        v66 = *(v17 + 72) - 1;
        v67 = *(v17 + 48);
        v68 = v67 + 11;
        v69 = -1;
        while (2)
        {
          v70 = v20 & v66;
          v71 = (v20 & v66) / 0x30;
          v72 = (v20 & v66) % 0x30;
          v73 = v67 + 16 * v71;
          if (((*(v73 + (v72 >> 3) + 10) >> (v72 & 7)) & 1) == 0)
          {
            if (v69 == -1)
            {
              v110 = v20 & v66;
            }

            else
            {
              v110 = v69;
            }

            goto LABEL_94;
          }

          v74 = *(v17 + 40);
          v75 = *v73;
          if (v74)
          {
            v76 = (v73 + 10);
            if (v72 < 9)
            {
              v78 = 0;
              LOBYTE(v79) = (v20 & v66) % 0x30;
            }

            else
            {
              v77 = (48 * v71 - v70 + 7);
              if (v77 <= 0xFFF7)
              {
                LOWORD(v77) = -9;
              }

              if ((v77 + v70 - 48 * v71) < 8u)
              {
                v78 = 0;
                v79 = (v20 & v66) % 0x30;
                v80 = (v73 + 10);
                goto LABEL_67;
              }

              v81 = 0;
              v82 = 0;
              v83 = ((v77 + v70 - 48 * v71) >> 3) + 1;
              v79 = v72 - 8 * ((((v77 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE);
              v80 = &v76[(((v77 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE];
              v84 = (v68 + 16 * v71);
              v85 = v83 & 0x3FFE;
              do
              {
                v86 = *(v84 - 1);
                v87 = *v84;
                v84 += 2;
                v81 += byte_22A7D46[v86];
                v82 += byte_22A7D46[v87];
                v85 -= 2;
              }

              while (v85);
              v78 = v82 + v81;
              if ((v83 & 0x3FFE) != v83)
              {
                do
                {
LABEL_67:
                  v88 = *v80++;
                  v78 += byte_22A7D46[v88];
                  v79 -= 8;
                }

                while (v79 > 8u);
              }

              v76 += ((v72 - 9) >> 3) + 1;
            }

            v89 = &v75[3 * (v78 + byte_22A7D46[~(-1 << v79) & *v76])];
            if (*(v17 + 36) == v89[1] && *(v17 + 32) == *v89)
            {
              if (v69 == -1)
              {
                v69 = v70;
              }

LABEL_55:
              v20 = ++v65 + v70;
              continue;
            }
          }

          break;
        }

        v91 = (v73 + 10);
        if (v72 < 9)
        {
          v93 = 0;
          LOBYTE(v94) = v72;
        }

        else
        {
          v92 = (48 * v71 - v70 + 7);
          if (v92 <= 0xFFF7)
          {
            LOWORD(v92) = -9;
          }

          if ((v92 + v70 - 48 * v71) < 8u)
          {
            v93 = 0;
            v94 = v72;
            v95 = (v73 + 10);
            goto LABEL_82;
          }

          v96 = 0;
          v97 = 0;
          v98 = ((v92 + v70 - 48 * v71) >> 3) + 1;
          v94 = v72 - 8 * ((((v92 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE);
          v95 = &v91[(((v92 + v70 - 48 * v71) >> 3) + 1) & 0x3FFE];
          v99 = (v68 + 16 * v71);
          v100 = v98 & 0x3FFE;
          do
          {
            v101 = *(v99 - 1);
            v102 = *v99;
            v99 += 2;
            v96 += byte_22A7D46[v101];
            v97 += byte_22A7D46[v102];
            v100 -= 2;
          }

          while (v100);
          v93 = v97 + v96;
          if ((v98 & 0x3FFE) != v98)
          {
            do
            {
LABEL_82:
              v103 = *v95++;
              v93 += byte_22A7D46[v103];
              v94 -= 8;
            }

            while (v94 > 8u);
          }

          v91 += ((v72 - 9) >> 3) + 1;
        }

        if (v16 != *&v75[3 * (v93 + byte_22A7D46[~(-1 << v94) & *v91])])
        {
          goto LABEL_55;
        }

        if (v70 == -1)
        {
          v110 = -1;
LABEL_94:
          v111 = v17;
          goto LABEL_97;
        }

        v104 = (v73 + 10);
        if (v72 < 9)
        {
          v107 = 0;
        }

        else
        {
          v105 = (48 * v71 - v70 + 7);
          if (v105 <= 0xFFF7)
          {
            LOWORD(v105) = -9;
          }

          v106 = v105 + v70 - 48 * v71;
          if (v106 < 8u)
          {
            v107 = 0;
            v108 = v72;
            v109 = (v73 + 10);
            goto LABEL_158;
          }

          v160 = 0;
          v161 = 0;
          v162 = (v106 >> 3) + 1;
          v108 = v72 - 8 * (((v106 >> 3) + 1) & 0x3FFE);
          v109 = &v104[v162 & 0x3FFE];
          v163 = (v73 + 11);
          v164 = v162 & 0x3FFE;
          do
          {
            v165 = *(v163 - 1);
            v166 = *v163;
            v163 += 2;
            v160 += byte_22A7D46[v165];
            v161 += byte_22A7D46[v166];
            v164 -= 2;
          }

          while (v164);
          v107 = v161 + v160;
          if ((v162 & 0x3FFE) != v162)
          {
            do
            {
LABEL_158:
              v167 = *v109++;
              v107 += byte_22A7D46[v167];
              v108 -= 8;
            }

            while (v108 > 8u);
          }

          v104 += ((v72 - 9) >> 3) + 1;
          LOBYTE(v72) = v108;
        }

        v168 = *(v17 + 56);
        v112 = &v75[3 * (v107 + byte_22A7D46[~(-1 << v72) & *v104])];
        if ((*v73 + 12 * *(v73 + 8)) == v112)
        {
          v73 += 16;
          if (v73 != v168)
          {
            do
            {
              v169 = v73;
              if (*(v73 + 8))
              {
                break;
              }

              v73 += 16;
            }

            while (v169 + 2 != v168);
            v112 = *v169;
          }
        }

        if (v73 != v168 && v74)
        {
          do
          {
            if (*(v17 + 36) != v112[1] || *(v17 + 32) != *v112)
            {
              break;
            }

            v112 += 3;
            if (v112 == (*v73 + 12 * *(v73 + 8)))
            {
              v73 += 16;
              if (v73 != v168)
              {
                do
                {
                  v233 = v73;
                  if (*(v73 + 8))
                  {
                    break;
                  }

                  v73 += 16;
                }

                while (v233 + 2 != v168);
                v112 = *v233;
              }
            }
          }

          while (v73 != v168);
        }

LABEL_98:
        v113 = v112[2];
        if (v113 == -1)
        {
          v117 = *(v17 + 112);
          *(v17 + 112) = v117 + 1;
          v112[2] = v117;
          v119 = *(v17 + 96);
          v118 = *(v17 + 104);
          if (v119 >= v118)
          {
            v121 = *(v17 + 88);
            v122 = v119 - v121;
            v123 = (v119 - v121) >> 3;
            v124 = v123 + 1;
            if ((v123 + 1) >> 61)
            {
              sub_1794();
            }

            v125 = v118 - v121;
            if (v125 >> 2 > v124)
            {
              v124 = v125 >> 2;
            }

            if (v125 >= 0x7FFFFFFFFFFFFFF8)
            {
              v126 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v126 = v124;
            }

            if (v126)
            {
              if (!(v126 >> 61))
              {
                operator new();
              }

LABEL_294:
              sub_1808();
            }

            v127 = v123;
            v128 = (8 * v123);
            v129 = &v128[-v127];
            *v128 = v16;
            v120 = v128 + 1;
            memcpy(v129, v121, v122);
            *(v17 + 88) = v129;
            *(v17 + 96) = v120;
            *(v17 + 104) = 0;
            if (v121)
            {
              operator delete(v121);
            }

            v11 = a1;
          }

          else
          {
            *v119 = v16;
            v120 = v119 + 1;
          }

          *(v17 + 96) = v120;
          v113 = v112[2];
          v114 = *(v247 + 4);
          v115 = v11[12];
          v116 = v113;
          if (!v115)
          {
            goto LABEL_121;
          }

          goto LABEL_117;
        }

        v114 = *(v247 + 4);
        v115 = v11[12];
        v116 = v113;
        if (!v115)
        {
          goto LABEL_121;
        }

LABEL_117:
        v130 = *v115;
        v131 = 0xAAAAAAAAAAAAAAABLL * ((*(v115 + 8) - *v115) >> 4);
        if (v131 <= v241)
        {
          sub_A9C3BC(v115, v237 - v131);
          v130 = *v115;
        }

        v132 = &v130[48 * v241];
        if (*(v132 + 1) > v116 && ((*(*v132 + ((v116 >> 3) & 0x1FFFFFF8)) >> v116) & 1) != 0)
        {
LABEL_121:
          v133 = v116 >> 6;
          v242 = v114;
          if (v11[52] <= v116)
          {
            v137 = v11[48];
            goto LABEL_186;
          }

          v134 = v11[51];
          v135 = *(v134 + 8 * v133);
          v136 = 1 << v116;
          v137 = v11[48];
          if ((v135 & (1 << v116)) != 0)
          {
            v138 = v11[49];
            v139 = &v138[-v137] >> 2;
            if (v139 <= v116)
            {
              v140 = v113 + 1;
              v141 = v140 >= v139;
              v142 = v140 - v139;
              if (v142 == 0 || !v141)
              {
                if (!v141)
                {
                  v159 = (v137 + 4 * v140);
                  goto LABEL_166;
                }

                goto LABEL_167;
              }

              v143 = v11[50];
              if (v142 > (v143 - v138) >> 2)
              {
                v144 = v143 - v137;
                v145 = v144 >> 1;
                if (v144 >> 1 <= v140)
                {
                  v145 = v113 + 1;
                }

                v141 = v144 >= 0x7FFFFFFFFFFFFFFCLL;
                v146 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v141)
                {
                  v146 = v145;
                }

                if (!(v146 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v170 = 4 * v142;
              memset(v138, 255, 4 * v142);
              v159 = &v138[v170];
LABEL_166:
              v11[49] = v159;
LABEL_167:
              sub_4D9168((v11 + 51), v113 + 1, 0);
              v134 = v11[51];
              v133 = v116 >> 6;
              v135 = *(v134 + 8 * (v116 >> 6));
            }

            if ((v135 & v136) != 0)
            {
              v137 = v11[48];
              if (*(v137 + 4 * v116) <= v242)
              {
                goto LABEL_216;
              }

              goto LABEL_186;
            }

            *(v134 + 8 * v133) = v135 | v136;
            v172 = v11[55];
            v171 = v11[56];
            if (v172 < v171)
            {
              *v172 = v113;
              v173 = v172 + 4;
              goto LABEL_185;
            }

            v174 = v11[54];
            v175 = v172 - v174;
            v176 = (v172 - v174) >> 2;
            v177 = v176 + 1;
            if (!((v176 + 1) >> 62))
            {
              v178 = v171 - v174;
              if (v178 >> 1 > v177)
              {
                v177 = v178 >> 1;
              }

              if (v178 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v179 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v179 = v177;
              }

              v238 = v133;
              if (v179)
              {
                if (!(v179 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v180 = (v172 - v174) >> 2;
              v181 = (4 * v176);
              v182 = (4 * v176 - 4 * v180);
              *v181 = v113;
              v173 = v181 + 1;
              memcpy(v182, v174, v175);
              v11[54] = v182;
              v11[55] = v173;
              v11[56] = 0;
              if (v174)
              {
                operator delete(v174);
              }

              v133 = v238;
LABEL_185:
              v11[55] = v173;
              v137 = v11[48];
              if (*(v137 + 4 * v116) <= v242)
              {
                goto LABEL_216;
              }

              goto LABEL_186;
            }

LABEL_297:
            sub_1794();
          }

LABEL_186:
          v183 = v11[49];
          v184 = &v183[-v137] >> 2;
          if (v184 <= v116)
          {
            v185 = v113 + 1;
            v186 = v185 - v184;
            v239 = v133;
            if (v185 <= v184)
            {
              if (v185 < v184)
              {
                v191 = (v137 + 4 * v185);
                goto LABEL_198;
              }
            }

            else
            {
              v187 = v11[50];
              if (v186 > (v187 - v183) >> 2)
              {
                v188 = v187 - v137;
                v189 = v188 >> 1;
                if (v188 >> 1 <= v185)
                {
                  v189 = v113 + 1;
                }

                v141 = v188 >= 0x7FFFFFFFFFFFFFFCLL;
                v190 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v141)
                {
                  v190 = v189;
                }

                if (!(v190 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v192 = 4 * v186;
              memset(v183, 255, v192);
              v191 = &v183[v192];
LABEL_198:
              v11[49] = v191;
            }

            sub_4D9168((v11 + 51), v113 + 1, 0);
            v133 = v239;
          }

          v193 = v11[51];
          v194 = *(v193 + 8 * v133);
          if ((v194 & (1 << v116)) == 0)
          {
            *(v193 + 8 * v133) = v194 | (1 << v116);
            v196 = v11[55];
            v195 = v11[56];
            if (v196 >= v195)
            {
              v198 = v11[54];
              v199 = v196 - v198;
              v200 = (v196 - v198) >> 2;
              v201 = v200 + 1;
              if ((v200 + 1) >> 62)
              {
                goto LABEL_297;
              }

              v202 = v195 - v198;
              if (v202 >> 1 > v201)
              {
                v201 = v202 >> 1;
              }

              if (v202 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v203 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v203 = v201;
              }

              if (v203)
              {
                if (!(v203 >> 62))
                {
                  operator new();
                }

                goto LABEL_294;
              }

              v204 = (v196 - v198) >> 2;
              v205 = (4 * v200);
              v206 = (4 * v200 - 4 * v204);
              *v205 = v113;
              v197 = v205 + 1;
              memcpy(v206, v198, v199);
              v11[54] = v206;
              v11[55] = v197;
              v11[56] = 0;
              if (v198)
              {
                operator delete(v198);
              }
            }

            else
            {
              *v196 = v113;
              v197 = v196 + 4;
            }

            v11[55] = v197;
          }

          *(v11[48] + 4 * v116) = v242;
        }

LABEL_216:
        v14 = v248;
        v13 = v247 + 2;
        v247 = v13;
        if (v13 == v248)
        {
          v207 = v245 + 2;
          v245 = v207;
          if (v207 >= v246)
          {
            break;
          }

          while (1)
          {
            v13 = *v207;
            v14 = v207[1];
            if (*v207 != v14)
            {
              break;
            }

            v207 += 2;
            v245 = v207;
            if (v207 >= v246)
            {
              goto LABEL_6;
            }
          }

          v247 = *v207;
          v248 = v14;
          if (v13 < v14)
          {
            goto LABEL_227;
          }
        }

        else if (v13 < v248)
        {
          while (1)
          {
LABEL_227:
            if ((v250 & 1) == 0)
            {
              v208 = v244[0];
              v209 = *v13;
              v210 = *(v244[0] + 4136);
              if (sub_68312C(v210 + 3896))
              {
                if (*(v210 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v230 = sub_A57824(-85.0, 0.0);
                    sub_58168(v230 >> 17, v230 >> 49);
                    dword_27339C0 = v231 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                    v11 = a1;
                  }

                  v211 = __ROR8__(v209, 32);
                  v212 = *(v208 + 4136);
                  if (dword_27339C0 == HIDWORD(v211))
                  {
                    if (!sub_68312C(v212 + 3896) || !*(v212 + 3944))
                    {
                      exception = __cxa_allocate_exception(0x40uLL);
                      v236 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v215 = *(v212 + 3944);
                    v216 = v215[1];
                    if (v216)
                    {
                      v217 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v211 ^ (v211 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v211 ^ (v211 >> 33))) >> 33));
                      v218 = v217 ^ (v217 >> 33);
                      v219 = vcnt_s8(v216);
                      v219.i16[0] = vaddlv_u8(v219);
                      if (v219.u32[0] > 1uLL)
                      {
                        v220 = v218;
                        if (v218 >= *&v216)
                        {
                          v220 = v218 % *&v216;
                        }
                      }

                      else
                      {
                        v220 = (*&v216 - 1) & v218;
                      }

                      v221 = *(*v215 + 8 * v220);
                      if (v221)
                      {
                        v222 = *v221;
                        if (v222)
                        {
                          if (v219.u32[0] < 2uLL)
                          {
                            v223 = *&v216 - 1;
                            while (1)
                            {
                              v227 = v222[1];
                              if (v218 == v227)
                              {
                                if (*(v222 + 5) == HIDWORD(v211) && *(v222 + 4) == v211)
                                {
                                  goto LABEL_225;
                                }
                              }

                              else if ((v227 & v223) != v220)
                              {
                                goto LABEL_267;
                              }

                              v222 = *v222;
                              if (!v222)
                              {
                                goto LABEL_267;
                              }
                            }
                          }

                          do
                          {
                            v225 = v222[1];
                            if (v218 == v225)
                            {
                              if (*(v222 + 5) == HIDWORD(v211) && *(v222 + 4) == v211)
                              {
                                goto LABEL_225;
                              }
                            }

                            else
                            {
                              if (v225 >= *&v216)
                              {
                                v225 %= *&v216;
                              }

                              if (v225 != v220)
                              {
                                break;
                              }
                            }

                            v222 = *v222;
                          }

                          while (v222);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_267:
            if (v249 == 1)
            {
              break;
            }

            v228 = sub_C9E544(v244[0] + 3896);
            v13 = v247;
            if (v228 >= *(v247 + 14))
            {
              if (v249)
              {
                goto LABEL_276;
              }

              v229 = sub_585D8((v244[0] + 3896));
              v13 = v247;
              if ((v229 & 1) != 0 || (*(v247 + 15) & 1) == 0)
              {
                goto LABEL_276;
              }
            }

LABEL_225:
            v13 = v247 + 2;
            v247 = v13;
            if (v13 == v248)
            {
              v213 = v245 + 2;
              v245 = v213;
              if (v213 >= v246)
              {
                goto LABEL_276;
              }

              while (1)
              {
                v13 = *v213;
                v214 = v213[1];
                if (*v213 != v214)
                {
                  break;
                }

                v213 += 2;
                v245 = v213;
                if (v213 >= v246)
                {
                  goto LABEL_6;
                }
              }

              v247 = *v213;
              v248 = v214;
              if (v13 >= v214)
              {
                goto LABEL_276;
              }
            }

            else if (v13 >= v248)
            {
              goto LABEL_276;
            }
          }

          v13 = v247;
LABEL_276:
          v14 = v248;
        }
      }

LABEL_6:
      v10 = v243 + 1;
    }

    while (v243 + 1 != v240);
  }

  result = sub_7EA60(v251) + *(a1 + 624);
  *(a1 + 624) = result;
  return result;
}