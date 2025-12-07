void sub_AC3090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  STACK[0x268] = v17 + 240;
  sub_A31F30(&STACK[0x268]);
  v19 = *(v17 + 216);
  if (v19)
  {
    *(v17 + 224) = v19;
    operator delete(v19);
    v20 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v17 + 200) = v20;
      operator delete(v20);
      if ((*(v17 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v17 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = a17;
    if (!*a17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  v21 = a17;
  if (!*a17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v21);
  operator delete(*v21);
  _Unwind_Resume(a1);
}

double sub_AC35F8(uint64_t a1)
{
  *(a1 + 200) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 184) = 0;
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v2 != v3)
  {
    v4 = *(a1 + 208);
    v5 = *(a1 + 232);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 240) = v2;
  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  if (v7 != v8)
  {
    v9 = *(a1 + 256);
    v10 = *(a1 + 280);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 288) = v7;
  v12 = *(a1 + 352);
  v13 = *(a1 + 360);
  if (v12 != v13)
  {
    v14 = *(a1 + 328);
    v15 = *(a1 + 304);
    v16 = *(a1 + 352);
    do
    {
      v17 = *v16++;
      *(v14 + ((v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << v17);
      *(v15 + 4 * v17) = -1;
    }

    while (v16 != v13);
  }

  *(a1 + 360) = v12;
  sub_C4306C((a1 + 384));
  v25 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v26, &__p);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 480) = v26;
  *(a1 + 496) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  v18 = v33;
  *(a1 + 568) = v32;
  *(a1 + 584) = v18;
  v19 = v35;
  *(a1 + 600) = v34;
  *(a1 + 616) = v19;
  v20 = v29;
  *(a1 + 504) = v28;
  *(a1 + 520) = v20;
  v21 = v31;
  *(a1 + 536) = v30;
  *(a1 + 552) = v21;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v22 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v22;
  return sub_C430C8((a1 + 384), *(a1 + 8), v22);
}

void sub_AC37B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_AC37CC(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v21 = 0x1FFFFFFFDLL;
    v5 = sub_A98E8C(v4, &v21);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, &v21);
      v6 = *(v8 + 8);
    }

    v28 = v6;
    sub_AA6A84((a1 + 128), 0);
    v21 = xmmword_229B660;
    v22 = -1;
    v23 = v3;
    v24 = v2;
    v25 = 0;
    v26 = -1;
    v27 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || (v11 = *v9, v10 = *(*(a1 + 128) + 4), v10 == v11))
    {
      sub_ABC224((a1 + 128), 0, &v21);
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 152);
      v17 = v16 + 52 * v10;
      v18 = v16 + 52 * v11;
      do
      {
        v19 = *(v18 + 28);
        if (v19 != 0x7FFFFFFF)
        {
          if (v19 >= v24 && *(v18 + 32) <= v25)
          {
            goto LABEL_24;
          }

          if (v24 >= v19 && v25 <= *(v18 + 32))
          {
            *(v18 + 28) = 0x7FFFFFFF;
            v15 = 1;
          }
        }

        v18 += 52;
      }

      while (v18 != v17);
      v20 = sub_ABC224((a1 + 128), 0, &v21);
      *(v20 + 40) = -1;
      *(v20 + 48) = 0x7FFFFFFF;
LABEL_24:
      if (v15)
      {
        sub_AA75DC((a1 + 128), 0);
      }
    }

    v12 = *(a1 + 120);
    v13 = v12 * (v6 + 1);
    v14 = v13 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_AC5F88((a1 + 128), 0, v14, v13, v12 + v12 * *(a1 + 376), 0x80000000))
      {
        return;
      }
    }

    else if (!sub_AC5F88((a1 + 128), 0, v14, v13, 0xFFFFFFFF, 0x80000000))
    {
      return;
    }

    if (*(a1 + 216) <= v6)
    {
      sub_4D9168(a1 + 208, v6 + 1, 0);
    }

    if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 232, &v28);
      *(*(a1 + 208) + ((v28 >> 3) & 0x1FFFFFF8)) |= 1 << v28;
    }
  }
}

double sub_AC3A44(uint64_t a1, int a2)
{
  sub_7E9A4(v40);
  v4 = *(a1 + 232);
  v38 = *(a1 + 240);
  if (v4 != v38)
  {
    while (1)
    {
      v39 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v39);
      if (HIDWORD(v5) == 1 && (v5 + 3) < 2)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      v7 = *(*(a1 + 24) + 4120);
      if (*(v7 + 17) == 1)
      {
        break;
      }

      v8 = sub_502FF8(v7 + 24, __ROR8__(v5, 32), 0, "stop");
      v12 = (v8 - *v8);
      if (*v12 >= 0x15u)
      {
        v10 = v12[10];
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v11 = -30;
LABEL_17:
      sub_AA6A84((a1 + 128), 0);
      sub_AC6400((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v39, 0);
      v13 = *(a1 + 128);
      if (*(a1 + 136) != v13)
      {
        v14 = *(a1 + 152);
        v15 = *v13;
LABEL_19:
        v16 = v14;
        goto LABEL_22;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v14 = *(a1 + 152);
      v15 = *v13;
      if (*(a1 + 136) != v13)
      {
        goto LABEL_19;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v16 = *(a1 + 152);
LABEL_22:
      v17 = (v14 + 52 * v15);
      v18 = (v16 + 52 * v13[1]);
      if (v17 == v18)
      {
        goto LABEL_29;
      }

      v19 = v39;
      v20 = v18 - v17 - 52;
      if (v20 <= 0x33)
      {
        v21 = (v14 + 52 * v15);
        do
        {
LABEL_28:
          *v21 = v19;
          v27 = *(v21 + 7);
          *(v21 + 3) = v27;
          *(v21 + 4) = -1;
          *(v21 + 7) = v27 + v11;
          v21 += 52;
        }

        while (v21 != v18);
        goto LABEL_29;
      }

      v22 = v20 / 0x34 + 1;
      v21 = &v17[52 * (v22 & 0xFFFFFFFFFFFFFFELL)];
      v23 = (v17 + 80);
      v24 = v22 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v23 - 20) = v19;
        *(v23 - 7) = v19;
        v25 = *(v23 - 13);
        v26 = *v23;
        *(v23 - 17) = v25;
        *(v23 - 16) = -1;
        *(v23 - 4) = v26;
        *(v23 - 3) = -1;
        *(v23 - 13) = v25 + v11;
        *v23 = v26 + v11;
        v23 += 26;
        v24 -= 2;
      }

      while (v24);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_28;
      }

LABEL_29:
      v28 = v39;
      v29 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v30 = v29 + v29 * *(a1 + 376) + 1;
        v31 = *(a1 + 48);
        if (v31)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = -1;
        v31 = *(a1 + 48);
        if (v31)
        {
LABEL_31:
          if (*v31 > v39)
          {
            v32 = 0;
            v33 = *(a1 + 124) + ~a2;
            v34 = v33;
            while (v32 <= v33)
            {
              v35 = *sub_A9C7DC(v31 + 2, v31[1] * v28 + v34);
              v32 += 2;
              v34 -= 2;
              if (v35 != 0x7FFFFFFF)
              {
                goto LABEL_39;
              }
            }
          }

          v35 = 0x7FFFFFFF;
          goto LABEL_39;
        }
      }

      v35 = 0x80000000;
LABEL_39:
      if (sub_AC5F88((a1 + 128), 0, a2 + 2 + v29 + v29 * v28, v29 + v29 * v28 + 1, v30, v35))
      {
        v36 = v39;
        if (*(a1 + 264) <= v39)
        {
          sub_4D9168(a1 + 256, v39 + 1, 0);
          v36 = v39;
        }

        if (((*(*(a1 + 256) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v39);
          *(*(a1 + 256) + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
        }
      }

      if (++v4 == v38)
      {
        goto LABEL_44;
      }
    }

    v8 = sub_A74944(v7 + 24, v5, 0, "transfers at stop");
    v9 = (v8 - *v8);
    if (*v9 < 5u)
    {
      goto LABEL_12;
    }

    v10 = v9[2];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = -*(v8 + v10);
    goto LABEL_17;
  }

LABEL_44:
  result = sub_7EA60(v40) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

double sub_AC3E10(uint64_t a1, int a2)
{
  sub_7E9A4(v208);
  v4 = *(a1 + 232);
  v192 = *(a1 + 240);
  if (v4 != v192)
  {
    v193 = a2 + 2;
    v196 = ~a2;
    v197 = a2 + 1;
    while (1)
    {
      v195 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A82C20(&v202, *(a1 + 24), *v6);
      v7 = v203;
      v8 = 16;
      if (v207)
      {
        v8 = 32;
      }

      if (v203 < *(&v202 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v195 + 1;
      if (v195 + 1 == v192)
      {
        goto LABEL_273;
      }
    }

    v198 = v5 + 1;
    v200 = v5;
    while (1)
    {
      v12 = __ROR8__(*v7, 32);
      v13 = *(a1 + 32);
      v14 = *(v13 + 56) - 1;
      v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
      v16 = v15 ^ (v15 >> 33);
      v17 = *(v13 + 80);
      v19 = *(v13 + 64);
      v18 = *(v13 + 68);
      v20 = v16 & v14;
      v21 = (v17 + 12 * (v16 & v14));
      v23 = *v21;
      v22 = v21[1];
      if (v18 == v22 && v19 == v23)
      {
        break;
      }

      if (*(v13 + 40))
      {
        v25 = -1;
        v26 = 1;
        do
        {
          if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
          {
            if (v25 == -1)
            {
              v25 = v20;
            }
          }

          else if (__PAIR64__(v22, v23) == v12)
          {
            goto LABEL_53;
          }

          v20 = (v20 + v26) & v14;
          v27 = (v17 + 12 * v20);
          v23 = *v27;
          v22 = v27[1];
          ++v26;
        }

        while (v18 != v22 || v19 != v23);
        if (v25 == -1)
        {
          break;
        }

        if (!sub_A99094(*(a1 + 32), 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v43 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v43) & v14;
          v44 = (v17 + 12 * v20);
          v23 = *v44;
          v22 = v44[1];
          ++v43;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_56;
          }
        }

LABEL_53:
        if (v20 != -1)
        {
          v46 = v17 + 12 * v20;
          v47 = *(v46 + 8);
          if (v47 != -1)
          {
            goto LABEL_104;
          }

          goto LABEL_90;
        }

        v25 = -1;
        if (!sub_A99094(*(a1 + 32), 1))
        {
LABEL_57:
          v49 = *(v13 + 40);
          v48 = *(v13 + 48);
          if ((v48 - v49) >= 0x1555555555555555)
          {
            goto LABEL_283;
          }

          v30 = *(v13 + 80);
          if (v49 && ((v50 = (v30 + 12 * v25), *(v13 + 36) == v50[1]) ? (v51 = *(v13 + 32) == *v50) : (v51 = 0), v51))
          {
            *(v13 + 40) = v49 - 1;
          }

          else
          {
            *(v13 + 48) = v48 + 1;
          }

          v52 = 3 * v25;
          goto LABEL_89;
        }
      }

LABEL_31:
      v29 = *(v13 + 56) - 1;
      v30 = *(v13 + 80);
      v32 = *(v13 + 64);
      v31 = *(v13 + 68);
      v33 = v29 & v16;
      v34 = (v30 + 12 * (v29 & v16));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v13 + 40);
      if (v31 == v35 && v32 == v36)
      {
        goto LABEL_80;
      }

      if (v37)
      {
        v39 = -1;
        v40 = 1;
        do
        {
          if (*(v13 + 36) == v35 && *(v13 + 32) == v36)
          {
            if (v39 == -1)
            {
              v39 = v33;
            }
          }

          else if (__PAIR64__(v35, v36) == v12)
          {
            goto LABEL_74;
          }

          v33 = (v33 + v40) & v29;
          v41 = (v30 + 12 * v33);
          v36 = *v41;
          v35 = v41[1];
          ++v40;
        }

        while (v31 != v35 || v32 != v36);
        if (v39 == -1)
        {
LABEL_80:
          v39 = v33;
        }

        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
          goto LABEL_283;
        }

LABEL_82:
        if (v37 && ((v57 = (v30 + 12 * v39), *(v13 + 36) == v57[1]) ? (v58 = *(v13 + 32) == *v57) : (v58 = 0), v58))
        {
          *(v13 + 40) = v37 - 1;
          v52 = 3 * v39;
        }

        else
        {
          *(v13 + 48) = v56 + 1;
          v52 = 3 * v39;
        }

LABEL_89:
        v59 = 4 * v52;
        v60 = v30 + v59;
        *v60 = v12;
        *(v60 + 8) = -1;
        v46 = *(v13 + 80) + v59;
        v47 = *(v46 + 8);
        if (v47 != -1)
        {
          goto LABEL_104;
        }

        goto LABEL_90;
      }

      v53 = 1;
      while (__PAIR64__(v35, v36) != v12)
      {
        v33 = (v33 + v53) & v29;
        v54 = (v30 + 12 * v33);
        v36 = *v54;
        v35 = v54[1];
        ++v53;
        if (v31 == v35 && v32 == v36)
        {
          v37 = 0;
          goto LABEL_80;
        }
      }

LABEL_74:
      if (v33 == -1)
      {
        v39 = -1;
        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
LABEL_283:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_82;
      }

      v46 = v30 + 12 * v33;
      v47 = *(v46 + 8);
      if (v47 != -1)
      {
        goto LABEL_104;
      }

LABEL_90:
      v61 = *(v13 + 112);
      *(v13 + 112) = v61 + 1;
      *(v46 + 8) = v61;
      v63 = *(v13 + 96);
      v62 = *(v13 + 104);
      if (v63 >= v62)
      {
        v65 = *(v13 + 88);
        v66 = v63 - v65;
        v67 = (v63 - v65) >> 3;
        v68 = v67 + 1;
        if ((v67 + 1) >> 61)
        {
          sub_1794();
        }

        v69 = v62 - v65;
        if (v69 >> 2 > v68)
        {
          v68 = v69 >> 2;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFF8)
        {
          v70 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          if (!(v70 >> 61))
          {
            operator new();
          }

          goto LABEL_282;
        }

        v71 = v67;
        v72 = (8 * v67);
        v73 = &v72[-v71];
        *v72 = v12;
        v64 = v72 + 1;
        memcpy(v73, v65, v66);
        *(v13 + 88) = v73;
        *(v13 + 96) = v64;
        *(v13 + 104) = 0;
        if (v65)
        {
          operator delete(v65);
        }
      }

      else
      {
        *v63 = v12;
        v64 = v63 + 8;
      }

      *(v13 + 96) = v64;
      v47 = *(v46 + 8);
LABEL_104:
      *(a1 + 576) = *(a1 + 576) + 1.0;
      v199 = v47;
      if (v200 == v47)
      {
        goto LABEL_233;
      }

      v74 = *(a1 + 128);
      v75 = *(a1 + 136);
      if (v75 != v74)
      {
        v76 = *(a1 + 152);
        v77 = *v74;
LABEL_116:
        v84 = v76;
        goto LABEL_130;
      }

      v79 = 1 - ((v75 - v74) >> 3);
      v80 = *(a1 + 144);
      if (v79 > (v80 - v75) >> 3)
      {
        v81 = v80 - v74;
        v82 = v81 >> 2;
        if ((v81 >> 2) <= 1)
        {
          v82 = 1;
        }

        v185 = v81 >= 0x7FFFFFFFFFFFFFF8;
        v83 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v185)
        {
          v83 = v82;
        }

        if (!(v83 >> 61))
        {
          operator new();
        }

        goto LABEL_282;
      }

      bzero(*(a1 + 136), 8 * v79);
      v85 = &v75[2 * v79];
      *(a1 + 136) = v85;
      v74 = *(a1 + 128);
      v76 = *(a1 + 152);
      v77 = *v74;
      if (v74 != v85)
      {
        goto LABEL_116;
      }

      v78 = *(a1 + 144);
      if (v78 == v85)
      {
        v86 = 1;
        v87 = v78 - v74;
        if ((v87 >> 2) > 1)
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

          goto LABEL_282;
        }

        *&dword_0 = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 8;
        *(a1 + 144) = 0;
        if (v74)
        {
          operator delete(v74);
        }
      }

      else
      {
        *v85 = 0;
        *(a1 + 136) = v85 + 2;
      }

      v74 = *(a1 + 128);
      v84 = *(a1 + 152);
LABEL_130:
      sub_AA6CF0((a1 + 128), 0, (v76 + 52 * v77), (v84 + 52 * v74[1]));
      v89 = v197 + *(a1 + 120) * v198;
      v90 = *(a1 + 128);
      v91 = *(a1 + 136);
      if (v89 >= (v91 - v90) >> 3)
      {
        goto LABEL_166;
      }

      v92 = v90[2 * v89];
      v93 = v90[2 * v89 + 1];
      v94 = v93 - v92;
      if (v93 == v92)
      {
        goto LABEL_166;
      }

      v95 = 0;
      v96 = 0;
      do
      {
        v99 = *(a1 + 128);
        if (v89 >= (*(a1 + 136) - v99) >> 3)
        {
          goto LABEL_278;
        }

        v100 = v99[2 * v89];
        if (v99[2 * v89 + 1] - v100 <= v96)
        {
          goto LABEL_278;
        }

        v101 = v100 + v96;
        v102 = *(a1 + 152);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v102) >> 2) <= v101)
        {
LABEL_279:
          v190 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v190, "index out of range");
          goto LABEL_280;
        }

        v103 = v102 + 52 * v101;
        v104 = *v103;
        v105 = *(v103 + 16);
        v106 = *(v103 + 32);
        v212 = *(v103 + 48);
        v211 = v106;
        v209 = v104;
        v210 = v105;
        v108 = *v99;
        v107 = v99[1];
        if (v107 != *v99)
        {
          v97 = 0;
          v109 = v102 + 52 * v107;
          v110 = v102 + 52 * v108;
          while (1)
          {
            v111 = *(v110 + 28);
            if (v111 != 0x7FFFFFFF)
            {
              if (v111 >= SHIDWORD(v210) && *(v110 + 32) <= v211)
              {
                goto LABEL_135;
              }

              if (SHIDWORD(v210) >= v111 && v211 <= *(v110 + 32))
              {
                *(v110 + 28) = 0x7FFFFFFF;
                v97 = 1;
              }
            }

            v110 += 52;
            if (v110 == v109)
            {
              goto LABEL_134;
            }
          }
        }

        v97 = 0;
LABEL_134:
        v98 = sub_ABC224((a1 + 128), 0, &v209);
        *(v98 + 40) = -1;
        *(v98 + 48) = 0x7FFFFFFF;
LABEL_135:
        v95 |= v97;
        ++v96;
      }

      while (v96 != v94);
      v90 = *(a1 + 128);
      v91 = *(a1 + 136);
      if (v95)
      {
        if (v91 != v90)
        {
          v112 = *(a1 + 152);
          v113 = *v90;
          goto LABEL_151;
        }

        sub_30B70(a1 + 128, 1uLL);
        v90 = *(a1 + 128);
        v112 = *(a1 + 152);
        v113 = *v90;
        if (*(a1 + 136) == v90)
        {
          sub_30B70(a1 + 128, 1uLL);
          v90 = *(a1 + 128);
          v114 = *(a1 + 152);
        }

        else
        {
LABEL_151:
          v114 = v112;
        }

        v115 = (v112 + 52 * v113);
        v116 = (v114 + 52 * v90[1]);
        if (v115 != v116)
        {
          while (*(v115 + 7) != 0x7FFFFFFF)
          {
            v115 = (v115 + 52);
            if (v115 == v116)
            {
              v115 = v116;
              break;
            }
          }

          if (v116 == v115 || (v117 = (v115 + 52), (v115 + 52) == v116))
          {
            if (*(a1 + 136) != v90)
            {
              goto LABEL_165;
            }
          }

          else
          {
            do
            {
              if (*(v117 + 7) != 0x7FFFFFFF)
              {
                v122 = *v117;
                v123 = v117[1];
                v124 = v117[2];
                *(v115 + 12) = *(v117 + 12);
                v115[1] = v123;
                v115[2] = v124;
                *v115 = v122;
                v115 = (v115 + 52);
              }

              v117 = (v117 + 52);
            }

            while (v117 != v116);
            v90 = *(a1 + 128);
            if (*(a1 + 136) != v90)
            {
              goto LABEL_165;
            }
          }

LABEL_158:
          sub_30B70(a1 + 128, 1uLL);
          v90 = *(a1 + 128);
          goto LABEL_165;
        }

        v115 = v116;
        if (*(a1 + 136) == v90)
        {
          goto LABEL_158;
        }

LABEL_165:
        sub_AA6CF0((a1 + 128), 0, v115, (*(a1 + 152) + 52 * v90[1]));
        v90 = *(a1 + 128);
        v91 = *(a1 + 136);
      }

LABEL_166:
      if (v91 != v90)
      {
        v118 = v200;
        v119 = *(a1 + 152);
        v120 = *v90;
        goto LABEL_181;
      }

      v125 = 1 - ((v91 - v90) >> 3);
      v126 = *(a1 + 144);
      v118 = v200;
      if (v125 > (v126 - v91) >> 3)
      {
        v127 = v126 - v90;
        v128 = v127 >> 2;
        if ((v127 >> 2) <= 1)
        {
          v128 = 1;
        }

        v185 = v127 >= 0x7FFFFFFFFFFFFFF8;
        v129 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v185)
        {
          v129 = v128;
        }

        if (!(v129 >> 61))
        {
          operator new();
        }

        goto LABEL_282;
      }

      bzero(v91, 8 * v125);
      v130 = &v91[2 * v125];
      *(a1 + 136) = v130;
      v90 = *(a1 + 128);
      v119 = *(a1 + 152);
      v120 = *v90;
      if (v90 != v130)
      {
LABEL_181:
        v131 = v119;
        goto LABEL_193;
      }

      v121 = *(a1 + 144);
      if (v121 == v130)
      {
        v132 = 1;
        v133 = v121 - v90;
        if ((v133 >> 2) > 1)
        {
          v132 = v133 >> 2;
        }

        if (v133 >= 0x7FFFFFFFFFFFFFF8)
        {
          v134 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v134 = v132;
        }

        if (!v134)
        {
          *&dword_0 = 0;
          *(a1 + 128) = 0;
          *(a1 + 136) = 8;
          *(a1 + 144) = 0;
          if (v90)
          {
            operator delete(v90);
          }

          goto LABEL_192;
        }

        if (!(v134 >> 61))
        {
          operator new();
        }

LABEL_282:
        sub_1808();
      }

      *v130 = 0;
      *(a1 + 136) = v130 + 2;
LABEL_192:
      v90 = *(a1 + 128);
      v131 = *(a1 + 152);
LABEL_193:
      v135 = (v119 + 52 * v120);
      v136 = (v131 + 52 * v90[1]);
      if (v135 != v136)
      {
        v137 = v203;
        do
        {
          *v135 = v118;
          v138 = v135[7];
          v139 = v135[8];
          v135[3] = v138;
          v135[4] = -1;
          v140 = *(v137 + 2);
          v141 = v140 / -10;
          v142 = v140 / 10;
          v143 = v140 % 10;
          if (v140 < 0)
          {
            v144 = -5;
          }

          else
          {
            v144 = 5;
          }

          v145 = (v144 + v143);
          v135[7] = v141 + v138 + (((-103 * v145) >> 15) & 1) + ((-103 * v145) >> 10);
          v135[8] = v139 + v142 + (((103 * v145) >> 15) & 1) + ((103 * v145) >> 10);
          v135 += 13;
        }

        while (v135 != v136);
      }

      v146 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v201 = v146 + v146 * *(a1 + 376) + 1;
        v147 = v199;
        v148 = *(a1 + 48);
        if (v148)
        {
          goto LABEL_201;
        }

LABEL_208:
        v152 = 0x80000000;
        v153 = *(a1 + 128);
        if (*(a1 + 136) == v153)
        {
LABEL_233:
          v9 = v204;
          v7 = (v203 + 12);
          v203 = v7;
          if (v7 != v204)
          {
            goto LABEL_234;
          }

LABEL_251:
          v7 = v205;
          v203 = v205;
          v10 = 1;
          v207 = 1;
          goto LABEL_252;
        }
      }

      else
      {
        v201 = -1;
        v147 = v199;
        v148 = *(a1 + 48);
        if (!v148)
        {
          goto LABEL_208;
        }

LABEL_201:
        if (*v148 <= v147)
        {
          v152 = 0x7FFFFFFF;
          v153 = *(a1 + 128);
          if (*(a1 + 136) == v153)
          {
            goto LABEL_233;
          }
        }

        else
        {
          v149 = 0;
          v150 = *(a1 + 124) + v196;
          v151 = v150;
          do
          {
            if (v149 > v150)
            {
              v152 = 0x7FFFFFFF;
              v153 = *(a1 + 128);
              if (*(a1 + 136) == v153)
              {
                goto LABEL_233;
              }

              goto LABEL_213;
            }

            v152 = *sub_A9C7DC(v148 + 2, v148[1] * v147 + v151);
            v149 += 2;
            v151 -= 2;
          }

          while (v152 == 0x7FFFFFFF);
          v153 = *(a1 + 128);
          if (*(a1 + 136) == v153)
          {
            goto LABEL_233;
          }
        }
      }

LABEL_213:
      v154 = v153[1];
      v155 = v154 - *v153;
      if (v154 == *v153)
      {
        goto LABEL_233;
      }

      if (v152 == 0x7FFFFFFF)
      {
        v156 = 0;
        while (v153[1] - *v153 > v156)
        {
          if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - *(a1 + 152)) >> 2) <= (v156 + *v153))
          {
            goto LABEL_279;
          }

          if (v155 == ++v156)
          {
            goto LABEL_233;
          }
        }

LABEL_278:
        v190 = __cxa_allocate_exception(0x10uLL);
        sub_195A2D8(v190, "key does not exist and cannot be added");
LABEL_280:
      }

      v157 = 0;
      v158 = 0;
      v194 = v199 + 1;
      v159 = v193 + v146 * v194;
      v160 = v146 * v194 + 1;
      do
      {
        v161 = *(a1 + 128);
        if (*(a1 + 136) == v161)
        {
          goto LABEL_278;
        }

        v162 = *v161;
        if (*(*(a1 + 128) + 4) - v162 <= v158)
        {
          goto LABEL_278;
        }

        v163 = v158 + v162;
        v164 = *(a1 + 152);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v164) >> 2) <= v163)
        {
          goto LABEL_279;
        }

        v165 = v164 + 52 * v163;
        v167 = *(v165 + 16);
        v166 = *(v165 + 32);
        v168 = *v165;
        v212 = *(v165 + 48);
        v211 = v166;
        v209 = v168;
        v210 = v167;
        if (SHIDWORD(v167) >= v152)
        {
          v169 = sub_AC60D8(a1 + 128, &v209, v159, v160, v201);
          v157 = v169 | v157 | (v169 | v157) & 0xFF00;
        }

        ++v158;
      }

      while (v155 != v158);
      if ((v157 & 0x100) != 0)
      {
        sub_AA75DC((a1 + 128), v159);
        sub_AA75DC((a1 + 128), v160);
      }

      if ((v157 & 1) == 0)
      {
        goto LABEL_233;
      }

      if (*(a1 + 264) <= v147)
      {
        sub_4D9168(a1 + 256, v194, 0);
      }

      v170 = v147 >> 6;
      v171 = 1 << v147;
      if ((*(*(a1 + 256) + 8 * (v147 >> 6)) & (1 << v147)) != 0)
      {
        goto LABEL_233;
      }

      v173 = *(a1 + 288);
      v172 = *(a1 + 296);
      if (v173 >= v172)
      {
        v175 = *(a1 + 280);
        v176 = v173 - v175;
        v177 = (v173 - v175) >> 2;
        v178 = v177 + 1;
        if ((v177 + 1) >> 62)
        {
          sub_1794();
        }

        v179 = v172 - v175;
        if (v179 >> 1 > v178)
        {
          v178 = v179 >> 1;
        }

        if (v179 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v180 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v180 = v178;
        }

        if (v180)
        {
          if (!(v180 >> 62))
          {
            operator new();
          }

          goto LABEL_282;
        }

        v181 = v177;
        v182 = (4 * v177);
        v183 = &v182[-v181];
        *v182 = v199;
        v174 = v182 + 1;
        memcpy(v183, v175, v176);
        *(a1 + 280) = v183;
        *(a1 + 288) = v174;
        *(a1 + 296) = 0;
        if (v175)
        {
          operator delete(v175);
        }
      }

      else
      {
        *v173 = v199;
        v174 = v173 + 4;
      }

      *(a1 + 288) = v174;
      *(*(a1 + 256) + 8 * v170) |= v171;
      v9 = v204;
      v7 = (v203 + 12);
      v203 = v7;
      if (v7 == v204)
      {
        goto LABEL_251;
      }

LABEL_234:
      v10 = v207;
LABEL_252:
      v11 = v206;
      if (v10)
      {
        v184 = v206;
      }

      else
      {
        v184 = v9;
      }

      v185 = *(v202 + 16) != 1 || v7 >= v184;
      if (!v185)
      {
        while (1)
        {
          v186 = __ROR8__(*v7, 32);
          if (HIDWORD(v186) == 1 && (v186 + 3) < 2)
          {
            break;
          }

          if (sub_2D5204(**(v202 + 4120)))
          {
            v7 = v203;
            v9 = v204;
            v10 = v207;
            break;
          }

          v9 = v204;
          v7 = (v203 + 12);
          v203 = v7;
          if (v7 == v204)
          {
            v7 = v205;
            v203 = v205;
            v10 = 1;
            v207 = 1;
            if (v205 >= v206)
            {
              break;
            }
          }

          else
          {
            v10 = v207;
            v188 = 16;
            if (v207)
            {
              v188 = 32;
            }

            if (v7 >= *(&v202 + v188))
            {
              break;
            }
          }
        }

        v11 = v206;
      }

      if (v10)
      {
        v9 = v11;
      }

      if (v7 >= v9)
      {
        goto LABEL_3;
      }
    }

LABEL_56:
    v25 = v20;
    if (!sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_57;
    }

    goto LABEL_31;
  }

LABEL_273:
  result = sub_7EA60(v208) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

void sub_AC50DC(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 360);
  if (v2 != v3)
  {
    v4 = *(a1 + 328);
    v5 = *(a1 + 304);
    v6 = *(a1 + 352);
    do
    {
      v7 = *v6++;
      *(v4 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
      *(v5 + 4 * v7) = -1;
    }

    while (v6 != v3);
  }

  *(a1 + 360) = v2;
  v8 = *(a1 + 280);
  v159 = *(a1 + 288);
  while (v8 != v159)
  {
    v9 = sub_A9C5E0((*(a1 + 32) + 88), *v8);
    sub_A7905C(v163, *(a1 + 24), *v9, 0, 0, 0);
LABEL_8:
    v10 = v166;
LABEL_9:
    v11 = v167;
    while (v10 < v11)
    {
      v12 = __ROR8__(*v10, 32);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56) - 1;
      v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
      v16 = v15 ^ (v15 >> 33);
      v17 = *(v13 + 80);
      v19 = *(v13 + 64);
      v18 = *(v13 + 68);
      v20 = v16 & v14;
      v21 = (v17 + 12 * (v16 & v14));
      v23 = *v21;
      v22 = v21[1];
      if (v18 == v22 && v19 == v23)
      {
        goto LABEL_54;
      }

      if (*(v13 + 40))
      {
        v25 = -1;
        v26 = 1;
        do
        {
          if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
          {
            if (v25 == -1)
            {
              v25 = v20;
            }
          }

          else if (__PAIR64__(v22, v23) == v12)
          {
            goto LABEL_51;
          }

          v20 = (v20 + v26) & v14;
          v27 = (v17 + 12 * v20);
          v23 = *v27;
          v22 = v27[1];
          ++v26;
        }

        while (v18 != v22 || v19 != v23);
        if (v25 == -1)
        {
LABEL_54:
          v25 = v20;
          if (!sub_A99094(*(a1 + 40), 1))
          {
            goto LABEL_55;
          }

          goto LABEL_29;
        }

        if (!sub_A99094(*(a1 + 40), 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v43 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v43) & v14;
          v44 = (v17 + 12 * v20);
          v23 = *v44;
          v22 = v44[1];
          ++v43;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_54;
          }
        }

LABEL_51:
        if (v20 != -1)
        {
          v46 = v17 + 12 * v20;
          v47 = *(v46 + 8);
          if (v47 != -1)
          {
            goto LABEL_103;
          }

          goto LABEL_88;
        }

        v25 = -1;
        if (!sub_A99094(*(a1 + 40), 1))
        {
LABEL_55:
          v49 = *(v13 + 40);
          v48 = *(v13 + 48);
          if ((v48 - v49) >= 0x1555555555555555)
          {
            goto LABEL_232;
          }

          v30 = *(v13 + 80);
          if (v49 && ((v50 = (v30 + 12 * v25), *(v13 + 36) == v50[1]) ? (v51 = *(v13 + 32) == *v50) : (v51 = 0), v51))
          {
            *(v13 + 40) = v49 - 1;
          }

          else
          {
            *(v13 + 48) = v48 + 1;
          }

          v52 = 3 * v25;
          goto LABEL_87;
        }
      }

LABEL_29:
      v29 = *(v13 + 56) - 1;
      v30 = *(v13 + 80);
      v32 = *(v13 + 64);
      v31 = *(v13 + 68);
      v33 = v29 & v16;
      v34 = (v30 + 12 * (v29 & v16));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v13 + 40);
      if (v31 == v35 && v32 == v36)
      {
        goto LABEL_78;
      }

      if (v37)
      {
        v39 = -1;
        v40 = 1;
        do
        {
          if (*(v13 + 36) == v35 && *(v13 + 32) == v36)
          {
            if (v39 == -1)
            {
              v39 = v33;
            }
          }

          else if (__PAIR64__(v35, v36) == v12)
          {
            goto LABEL_72;
          }

          v33 = (v33 + v40) & v29;
          v41 = (v30 + 12 * v33);
          v36 = *v41;
          v35 = v41[1];
          ++v40;
        }

        while (v31 != v35 || v32 != v36);
        if (v39 == -1)
        {
LABEL_78:
          v39 = v33;
        }

        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
          goto LABEL_232;
        }

LABEL_80:
        if (v37 && ((v57 = (v30 + 12 * v39), *(v13 + 36) == v57[1]) ? (v58 = *(v13 + 32) == *v57) : (v58 = 0), v58))
        {
          *(v13 + 40) = v37 - 1;
          v52 = 3 * v39;
        }

        else
        {
          *(v13 + 48) = v56 + 1;
          v52 = 3 * v39;
        }

LABEL_87:
        v59 = 4 * v52;
        v60 = v30 + v59;
        *v60 = v12;
        *(v60 + 8) = -1;
        v46 = *(v13 + 80) + v59;
        v47 = *(v46 + 8);
        if (v47 != -1)
        {
          goto LABEL_103;
        }

        goto LABEL_88;
      }

      v53 = 1;
      while (__PAIR64__(v35, v36) != v12)
      {
        v33 = (v33 + v53) & v29;
        v54 = (v30 + 12 * v33);
        v36 = *v54;
        v35 = v54[1];
        ++v53;
        if (v31 == v35 && v32 == v36)
        {
          v37 = 0;
          goto LABEL_78;
        }
      }

LABEL_72:
      if (v33 == -1)
      {
        v39 = -1;
        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
LABEL_232:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_80;
      }

      v46 = v30 + 12 * v33;
      v47 = *(v46 + 8);
      if (v47 != -1)
      {
        goto LABEL_103;
      }

LABEL_88:
      v61 = *(v13 + 112);
      *(v13 + 112) = v61 + 1;
      *(v46 + 8) = v61;
      v63 = *(v13 + 96);
      v62 = *(v13 + 104);
      if (v63 >= v62)
      {
        v65 = *(v13 + 88);
        v66 = v63 - v65;
        v67 = (v63 - v65) >> 3;
        v68 = v67 + 1;
        if ((v67 + 1) >> 61)
        {
          sub_1794();
        }

        v69 = v8;
        v70 = v62 - v65;
        if (v70 >> 2 > v68)
        {
          v68 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v68;
        }

        if (v71)
        {
          if (!(v71 >> 61))
          {
            operator new();
          }

LABEL_231:
          sub_1808();
        }

        v72 = v67;
        v73 = (8 * v67);
        v74 = &v73[-v72];
        *v73 = v12;
        v64 = v73 + 1;
        memcpy(v74, v65, v66);
        *(v13 + 88) = v74;
        *(v13 + 96) = v64;
        *(v13 + 104) = 0;
        if (v65)
        {
          operator delete(v65);
        }

        v8 = v69;
      }

      else
      {
        *v63 = v12;
        v64 = v63 + 8;
      }

      *(v13 + 96) = v64;
      v47 = *(v46 + 8);
LABEL_103:
      v75 = *(v166 + 5);
      v76 = v47 >> 6;
      if (*(a1 + 336) <= v47)
      {
        v80 = *(a1 + 304);
        goto LABEL_122;
      }

      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v79 = 1 << v47;
      v80 = *(a1 + 304);
      if ((v78 & (1 << v47)) == 0)
      {
        goto LABEL_122;
      }

      v81 = *(a1 + 312);
      v82 = &v81[-v80] >> 2;
      if (v82 > v47)
      {
        goto LABEL_120;
      }

      v160 = *(v166 + 5);
      v83 = v8;
      v84 = v47 + 1;
      v85 = v84 - v82;
      if (v84 > v82)
      {
        v86 = *(a1 + 320);
        if (v85 > (v86 - v81) >> 2)
        {
          v87 = v86 - v80;
          v88 = v87 >> 1;
          if (v87 >> 1 <= v84)
          {
            v88 = v47 + 1;
          }

          v89 = v87 >= 0x7FFFFFFFFFFFFFFCLL;
          v90 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v89)
          {
            v90 = v88;
          }

          if (!(v90 >> 62))
          {
            operator new();
          }

          goto LABEL_231;
        }

        v92 = 4 * v85;
        memset(v81, 255, v92);
        v91 = &v81[v92];
        goto LABEL_118;
      }

      if (v84 < v82)
      {
        v91 = (v80 + 4 * v84);
LABEL_118:
        *(a1 + 312) = v91;
      }

      sub_4D9168(a1 + 328, v47 + 1, 0);
      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v8 = v83;
      v75 = v160;
LABEL_120:
      if ((v78 & v79) != 0)
      {
        v80 = *(a1 + 304);
        if (*(v80 + 4 * v47) < v75)
        {
          goto LABEL_122;
        }

LABEL_135:
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 == v167)
        {
          goto LABEL_158;
        }

LABEL_136:
        if (v10 < v11)
        {
          while (1)
          {
LABEL_181:
            if ((v169 & 1) == 0)
            {
              v132 = v163[0];
              v133 = *v10;
              v134 = *(v163[0] + 4136);
              if (sub_68312C(v134 + 3896))
              {
                if (*(v134 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v154 = sub_A57824(-85.0, 0.0);
                    sub_58168(v154 >> 17, v154 >> 49);
                    dword_27339C0 = v155 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                  }

                  v135 = __ROR8__(v133, 32);
                  v136 = *(v132 + 4136);
                  if (dword_27339C0 == HIDWORD(v135))
                  {
                    if (!sub_68312C(v136 + 3896) || !*(v136 + 3944))
                    {
                      v157 = __cxa_allocate_exception(0x40uLL);
                      v158 = sub_2D390(v157, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v139 = *(v136 + 3944);
                    v140 = v139[1];
                    if (v140)
                    {
                      v141 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) >> 33));
                      v142 = v141 ^ (v141 >> 33);
                      v143 = vcnt_s8(v140);
                      v143.i16[0] = vaddlv_u8(v143);
                      if (v143.u32[0] > 1uLL)
                      {
                        v144 = v142;
                        if (v142 >= *&v140)
                        {
                          v144 = v142 % *&v140;
                        }
                      }

                      else
                      {
                        v144 = (*&v140 - 1) & v142;
                      }

                      v145 = *(*v139 + 8 * v144);
                      if (v145)
                      {
                        v146 = *v145;
                        if (v146)
                        {
                          if (v143.u32[0] < 2uLL)
                          {
                            v147 = *&v140 - 1;
                            while (1)
                            {
                              v151 = v146[1];
                              if (v142 == v151)
                              {
                                if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                                {
                                  goto LABEL_179;
                                }
                              }

                              else if ((v151 & v147) != v144)
                              {
                                goto LABEL_221;
                              }

                              v146 = *v146;
                              if (!v146)
                              {
                                goto LABEL_221;
                              }
                            }
                          }

                          do
                          {
                            v149 = v146[1];
                            if (v142 == v149)
                            {
                              if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                              {
                                goto LABEL_179;
                              }
                            }

                            else
                            {
                              if (v149 >= *&v140)
                              {
                                v149 %= *&v140;
                              }

                              if (v149 != v144)
                              {
                                break;
                              }
                            }

                            v146 = *v146;
                          }

                          while (v146);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_221:
            if (v168 == 1)
            {
              goto LABEL_8;
            }

            v152 = sub_C9E544(v163[0] + 3896);
            v10 = v166;
            if (v152 >= *(v166 + 14))
            {
              if (v168)
              {
                goto LABEL_9;
              }

              v153 = sub_585D8((v163[0] + 3896));
              v10 = v166;
              if ((v153 & 1) != 0 || (*(v166 + 15) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

LABEL_179:
            v10 = v166 + 2;
            v166 = v10;
            if (v10 == v167)
            {
              v137 = v164 + 2;
              v164 = v137;
              if (v137 >= v165)
              {
                goto LABEL_9;
              }

              while (1)
              {
                v10 = *v137;
                v138 = v137[1];
                if (*v137 != v138)
                {
                  break;
                }

                v137 += 2;
                v164 = v137;
                if (v137 >= v165)
                {
                  goto LABEL_6;
                }
              }

              v166 = *v137;
              v167 = v138;
              if (v10 >= v138)
              {
                goto LABEL_9;
              }
            }

            else if (v10 >= v167)
            {
              goto LABEL_9;
            }
          }
        }
      }

      else
      {
        *(v77 + 8 * v76) = v78 | v79;
        v103 = *(a1 + 360);
        v102 = *(a1 + 368);
        if (v103 >= v102)
        {
          v121 = *(a1 + 352);
          v122 = v103 - v121;
          v123 = (v103 - v121) >> 2;
          v124 = v123 + 1;
          if ((v123 + 1) >> 62)
          {
LABEL_234:
            sub_1794();
          }

          v125 = v8;
          v126 = v102 - v121;
          if (v126 >> 1 > v124)
          {
            v124 = v126 >> 1;
          }

          if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v127 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v127 = v124;
          }

          v162 = v75;
          if (v127)
          {
            if (!(v127 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          v128 = (v103 - v121) >> 2;
          v129 = (4 * v123);
          v130 = (4 * v123 - 4 * v128);
          *v129 = v47;
          v131 = v129 + 1;
          memcpy(v130, v121, v122);
          *(a1 + 352) = v130;
          *(a1 + 360) = v131;
          *(a1 + 368) = 0;
          if (v121)
          {
            operator delete(v121);
          }

          v8 = v125;
          v75 = v162;
          *(a1 + 360) = v131;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) >= v162)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *v103 = v47;
          *(a1 + 360) = v103 + 4;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) >= v75)
          {
            goto LABEL_135;
          }
        }

LABEL_122:
        v93 = *(a1 + 312);
        v94 = &v93[-v80] >> 2;
        if (v94 > v47)
        {
          goto LABEL_141;
        }

        v161 = v75;
        v95 = v47 + 1;
        v96 = v95 - v94;
        if (v95 > v94)
        {
          v97 = *(a1 + 320);
          if (v96 > (v97 - v93) >> 2)
          {
            v98 = v97 - v80;
            v99 = v98 >> 1;
            if (v98 >> 1 <= v95)
            {
              v99 = v47 + 1;
            }

            v89 = v98 >= 0x7FFFFFFFFFFFFFFCLL;
            v100 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v89)
            {
              v100 = v99;
            }

            if (!(v100 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          memset(v93, 255, 4 * v96);
          v101 = &v93[4 * v96];
          goto LABEL_139;
        }

        if (v95 < v94)
        {
          v101 = (v80 + 4 * v95);
LABEL_139:
          *(a1 + 312) = v101;
        }

        sub_4D9168(a1 + 328, v47 + 1, 0);
        v75 = v161;
LABEL_141:
        v104 = *(a1 + 328);
        v105 = *(v104 + 8 * v76);
        if ((v105 & (1 << v47)) == 0)
        {
          *(v104 + 8 * v76) = v105 | (1 << v47);
          v107 = *(a1 + 360);
          v106 = *(a1 + 368);
          if (v107 >= v106)
          {
            v109 = *(a1 + 352);
            v110 = v107 - v109;
            v111 = (v107 - v109) >> 2;
            v112 = v111 + 1;
            if ((v111 + 1) >> 62)
            {
              goto LABEL_234;
            }

            v113 = v8;
            v114 = v106 - v109;
            if (v114 >> 1 > v112)
            {
              v112 = v114 >> 1;
            }

            if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v115 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v112;
            }

            if (v115)
            {
              if (!(v115 >> 62))
              {
                operator new();
              }

              goto LABEL_231;
            }

            v116 = v75;
            v117 = (v107 - v109) >> 2;
            v118 = (4 * v111);
            v119 = (4 * v111 - 4 * v117);
            *v118 = v47;
            v108 = v118 + 1;
            memcpy(v119, v109, v110);
            *(a1 + 352) = v119;
            *(a1 + 360) = v108;
            *(a1 + 368) = 0;
            if (v109)
            {
              operator delete(v109);
            }

            v8 = v113;
            v75 = v116;
          }

          else
          {
            *v107 = v47;
            v108 = v107 + 4;
          }

          *(a1 + 360) = v108;
        }

        *(*(a1 + 304) + 4 * v47) = v75;
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 != v167)
        {
          goto LABEL_136;
        }

LABEL_158:
        v120 = v164 + 2;
        v164 = v120;
        if (v120 >= v165)
        {
          break;
        }

        while (1)
        {
          v10 = *v120;
          v11 = v120[1];
          if (*v120 != v11)
          {
            break;
          }

          v120 += 2;
          v164 = v120;
          if (v120 >= v165)
          {
            goto LABEL_6;
          }
        }

        v166 = *v120;
        v167 = v11;
        if (v10 < v11)
        {
          goto LABEL_181;
        }
      }
    }

LABEL_6:
    ++v8;
  }
}

void sub_AC5E58(uint64_t a1)
{
  v1 = *(a1 + 124);
  if (v1)
  {
    v3 = 0;
    while (1)
    {
      sub_AA6A84((a1 + 128), 0);
      sub_AC6400((a1 + 128), v3 + *(a1 + 120) + *(a1 + 120) * *(a1 + 376) + 2, 0);
      v4 = *(a1 + 128);
      if (*(a1 + 136) != v4)
      {
        break;
      }

      sub_30B70(a1 + 128, 1uLL);
      v4 = *(a1 + 128);
      v5 = *(a1 + 152);
      v6 = *v4;
      if (*(a1 + 136) != v4)
      {
        goto LABEL_6;
      }

      sub_30B70(a1 + 128, 1uLL);
      v7 = v5 + 52 * v6;
      v8 = *(a1 + 152) + 52 * *(*(a1 + 128) + 4);
      if (v7 != v8)
      {
LABEL_10:
        v9 = *(a1 + 544);
        v10 = *(a1 + 536);
        do
        {
          v9 = v9 + 1.0;
          v10 += *(v7 + 28);
          v7 += 52;
        }

        while (v7 != v8);
        *(a1 + 544) = v9;
        *(a1 + 536) = v10;
      }

LABEL_3:
      if (++v3 == v1)
      {
        return;
      }
    }

    v5 = *(a1 + 152);
    v6 = *v4;
LABEL_6:
    v7 = v5 + 52 * v6;
    v8 = v5 + 52 * v4[1];
    if (v7 != v8)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }
}

uint64_t sub_AC5F88(uint64_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, int a6)
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
      sub_ABC7E4(a1, a2, v12++);
    }

    while (v9 != v12);
LABEL_6:
    LOBYTE(v13) = 0;
    return v13 & 1;
  }

  v13 = 0;
  v15 = 0;
  do
  {
    v19 = sub_ABC7E4(a1, a2, v15);
    v21 = *(v19 + 16);
    v20 = *(v19 + 32);
    v22 = *(v19 + 48);
    v24[0] = *v19;
    v24[1] = v21;
    v25 = v22;
    v24[2] = v20;
    if (SHIDWORD(v21) >= a6)
    {
      v23 = sub_AC60D8(a1, v24, a3, a4, a5);
      v13 = v23 | v13 | (v23 | v13) & 0xFF00;
    }

    ++v15;
  }

  while (v9 != v15);
  if ((v13 & 0x100) != 0)
  {
    sub_AA75DC(a1, a3);
    sub_AA75DC(a1, a4);
  }

  return v13 & 1;
}

unint64_t sub_AC60D8(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a5 == 0xFFFFFFFFLL || (sub_AC62C8(a1, a2, a5) & 1) == 0)
  {
    v11 = *a1;
    if (a4 < ((*(a1 + 8) - *a1) >> 3))
    {
      v13 = *(v11 + 8 * a4);
      v12 = *(v11 + 8 * a4 + 4);
      if (v12 != v13)
      {
        v10 = 0;
        v21 = *(a1 + 24);
        v22 = v21 + 52 * v12;
        v23 = v21 + 52 * v13;
        while (1)
        {
          v24 = *(v23 + 28);
          if (v24 != 0x7FFFFFFF)
          {
            v25 = *(a2 + 28);
            if (v24 >= v25 && *(v23 + 32) <= *(a2 + 32))
            {
              v9 = 0;
              return v9 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8);
            }

            if (v25 >= v24 && *(a2 + 32) <= *(v23 + 32))
            {
              *(v23 + 28) = 0x7FFFFFFF;
              v10 = 1;
            }
          }

          v23 += 52;
          if (v23 == v22)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v10 = 0;
LABEL_7:
    v14 = sub_ABC224(a1, a4, a2);
    *(v14 + 40) = -1;
    *(v14 + 48) = 0x7FFFFFFF;
    v15 = *a1;
    if (a3 < ((*(a1 + 8) - *a1) >> 3))
    {
      v17 = *(v15 + 8 * a3);
      v16 = *(v15 + 8 * a3 + 4);
      if (v16 != v17)
      {
        v26 = *(a1 + 24);
        v27 = v26 + 52 * v16;
        v28 = v26 + 52 * v17;
        do
        {
          v29 = *(v28 + 28);
          if (v29 != 0x7FFFFFFF && *(a2 + 28) >= v29 && *(a2 + 32) <= *(v28 + 32))
          {
            *(v28 + 28) = 0x7FFFFFFF;
          }

          v28 += 52;
        }

        while (v28 != v27);
      }
    }

    v18 = sub_ABC224(a1, a3, a2);
    *(v18 + 40) = -1;
    *(v18 + 48) = 0x7FFFFFFF;
    v19 = *(a1 + 72);
    *(a1 + 72) = v19 + 1;
    *(v18 + 24) = v19;
    *(v18 + 20) = *(a2 + 24);
    *(v18 + 40) = -1;
    *(v18 + 48) = 0x7FFFFFFF;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v9 & 0xFFFFFFFFFFFF00FFLL | (v10 << 8);
}

uint64_t sub_AC62C8(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = a3;
  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 3;
  if (v8 <= a3)
  {
    v9 = a3 + 1;
    if (v9 <= v8)
    {
      if (v9 < v8)
      {
        v7 = v6 + 8 * v9;
        a1[1] = v7;
      }
    }

    else
    {
      v10 = a3;
      sub_30B70(a1, v9 - v8);
      a3 = v10;
      v6 = *a1;
      v7 = a1[1];
    }
  }

  v11 = a1[3];
  v12 = *(v6 + 8 * v5);
  v13 = (v7 - v6) >> 3;
  if (v13 > v5)
  {
    goto LABEL_7;
  }

  v15 = a3 + 1;
  if (v15 <= v13)
  {
    if (v15 < v13)
    {
      a1[1] = v6 + 8 * v15;
    }

LABEL_7:
    v14 = v11;
    goto LABEL_10;
  }

  sub_30B70(a1, v15 - v13);
  v6 = *a1;
  v14 = a1[3];
LABEL_10:
  v16 = v11 + 52 * v12;
  v17 = v14 + 52 * *(v6 + 8 * v5 + 4);
  if (v16 == v17)
  {
    return 0;
  }

  while (1)
  {
    v19 = *(v16 + 28);
    v20 = v19 == 0x7FFFFFFF || v19 < *(a2 + 28);
    if (!v20 && *(v16 + 32) <= *(a2 + 32))
    {
      break;
    }

    v16 += 52;
    if (v16 == v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_AC6400(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= ((a1[1] - *a1) >> 3) || (v5 = (*a1 + 8 * a2), v4 = v5[1], v6 = v4 - *v5, v4 == *v5))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = 0;
    v10 = 0;
    v11 = a3;
    do
    {
      v12 = sub_ABC7E4(a1, a2, v10);
      v14 = *(v12 + 16);
      v13 = *(v12 + 32);
      v15 = *v12;
      v30 = *(v12 + 48);
      v28 = v14;
      v29 = v13;
      v27 = v15;
      v16 = *a1;
      if (v11 < (a1[1] - *a1) >> 3)
      {
        v18 = *(v16 + 8 * v11);
        v17 = *(v16 + 8 * v11 + 4);
        if (v17 != v18)
        {
          v19 = 0;
          v23 = a1[3];
          v24 = v23 + 52 * v17;
          v25 = v23 + 52 * v18;
          while (1)
          {
            v26 = *(v25 + 28);
            if (v26 != 0x7FFFFFFF)
            {
              if (v26 >= SHIDWORD(v28) && *(v25 + 32) <= v29)
              {
                v21 = 0;
                goto LABEL_10;
              }

              if (SHIDWORD(v28) >= v26 && v29 <= *(v25 + 32))
              {
                *(v25 + 28) = 0x7FFFFFFF;
                v19 = 1;
              }
            }

            v25 += 52;
            if (v25 == v24)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v19 = 0;
LABEL_9:
      v20 = sub_ABC224(a1, v11, &v27);
      *(v20 + 40) = -1;
      *(v20 + 48) = 0x7FFFFFFF;
      v21 = 1;
LABEL_10:
      v22 = v19 | (v7 >> 8);
      v7 = v7 & 0xFFFF00FF | v21 & 0xFFFF00FF | ((v19 | BYTE1(v7)) << 8);
      ++v10;
    }

    while (v10 != v6);
    if (v22)
    {
      sub_AA75DC(a1, v11);
    }
  }

  return v7 & 1;
}

uint64_t sub_AC65A0(uint64_t a1, int a2, unsigned int a3)
{
  v251 = a3;
  *(a1 + 560) = *(a1 + 560) + 1.0;
  v6 = a3;
  v229 = *sub_A9C5E0((*(a1 + 40) + 88), a3);
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
    sub_DD38(a1 + 352, &v251);
    v6 = v251;
  }

  v228 = *(*(a1 + 304) + 4 * v6);
  result = sub_A9D53C(&v249, *(a1 + 24), v229);
  v13 = v249;
  if (v249 >= v250)
  {
    return result;
  }

  v224 = a2 + 2;
  v225 = ~a2;
  v231 = a2 + 1;
  while (2)
  {
    *(a1 + 568) = *(a1 + 568) + 1.0;
    v235 = *v13;
    sub_AA6A84((a1 + 128), 0);
    result = sub_A79708(&v237, *(a1 + 24), v229, v228, 0, 1);
    v14 = v241;
    v15 = v241 < v240 || v241 >= v242;
    if (v15)
    {
      goto LABEL_11;
    }

    do
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

      if (!*(v17 + 40))
      {
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
        if (!sub_A99094(*(a1 + 32), 1))
        {
          goto LABEL_67;
        }

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

        if (!v41)
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
LABEL_347:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A000(exception, "insert overflow");
          }

          goto LABEL_96;
        }

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
          goto LABEL_347;
        }

LABEL_96:
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

LABEL_67:
      v67 = *(v17 + 40);
      v66 = *(v17 + 48);
      if ((v66 - v67) >= 0x1555555555555555)
      {
        goto LABEL_347;
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
        v236 = v51;
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

          goto LABEL_349;
        }

        v89 = (v81 - v83) >> 3;
        v90 = (8 * v85);
        v91 = (8 * v85 - 8 * v89);
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
      v236 = *(v50 + 8);
      result = sub_C435EC((a1 + 384), v236, v16);
      if ((result & 1) == 0)
      {
LABEL_118:
        if (*(a1 + 21))
        {
          goto LABEL_277;
        }

        v92 = *(a1 + 128);
        v93 = *(a1 + 136);
        if (v93 != v92)
        {
          v94 = *(a1 + 152);
          v95 = *v92;
LABEL_130:
          v102 = v94;
LABEL_153:
          result = sub_AA6CF0((a1 + 128), 0, (v94 + 52 * v95), (v102 + 52 * *(v92 + 1)));
          goto LABEL_277;
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

          goto LABEL_349;
        }

        bzero(*(a1 + 136), 8 * v97);
        v103 = &v93[8 * v97];
        *(a1 + 136) = v103;
        v92 = *(a1 + 128);
        v94 = *(a1 + 152);
        v95 = *v92;
        if (v92 != v103)
        {
          goto LABEL_130;
        }

        v96 = *(a1 + 144);
        if (v96 != v103)
        {
          *v103 = 0;
          *(a1 + 136) = v103 + 8;
LABEL_152:
          v92 = *(a1 + 128);
          v102 = *(a1 + 152);
          goto LABEL_153;
        }

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

        if (!v106)
        {
          *&dword_0 = 0;
          *(a1 + 128) = 0;
          *(a1 + 136) = 8;
          *(a1 + 144) = 0;
          if (v92)
          {
            operator delete(v92);
          }

          goto LABEL_152;
        }

        if (!(v106 >> 61))
        {
          operator new();
        }

LABEL_349:
        sub_1808();
      }

LABEL_59:
      v52 = *(a1 + 128);
      if (*(a1 + 136) == v52)
      {
        goto LABEL_270;
      }

      v54 = *v52;
      v53 = *(*(a1 + 128) + 4);
      if (v53 == v54)
      {
        goto LABEL_270;
      }

      v55 = *(a1 + 152);
      v56 = (v55 + 52 * v53);
      v57 = (v55 + 52 * v54);
      v58 = v246;
      v59 = v244;
      v60 = v241;
      v61 = v239;
      v62 = (v241 - v240) >> 4;
      do
      {
        v65 = (v59 + 12 * v57[10]);
        if (v58)
        {
          v247 = v57[11];
          v63 = v57[12];
          v248 = v63;
        }

        else
        {
          v63 = *v65;
        }

        v64 = (v61 + *(v61 - *v61 + 6));
        v57[7] = *(&v64[2 * (v65[1] + v62) + 2] + *v64) + v63 - *(v60 + 2);
        v57 += 13;
      }

      while (v57 != v56);
      v245 = v65;
      sub_AC7CB4((a1 + 128), 0);
      if ((*(v241 + 15) & 2) == 0 || v243 && (*(v243 + 4 * ((v241 - v240) >> 4)) & v235) != 0)
      {
        goto LABEL_238;
      }

      v107 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v108 = (v107 + v107 * *(a1 + 376));
        v109 = v236;
        v110 = *(a1 + 48);
        v232 = v108;
        if (v110)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v108 = 0xFFFFFFFFLL;
        v109 = v236;
        v110 = *(a1 + 48);
        v232 = 0xFFFFFFFFLL;
        if (v110)
        {
LABEL_145:
          if (*v110 <= v109)
          {
            v114 = 0x7FFFFFFF;
            v115 = *(a1 + 128);
            if (*(a1 + 136) == v115)
            {
              goto LABEL_238;
            }
          }

          else
          {
            v233 = *(a1 + 120);
            v111 = 0;
            v112 = *(a1 + 124) + v225;
            v113 = v112;
            while (v111 <= v112)
            {
              v114 = *sub_A9C7DC(v110 + 2, v110[1] * v109 + v113);
              v111 += 2;
              v113 -= 2;
              if (v114 != 0x7FFFFFFF)
              {
                goto LABEL_160;
              }
            }

            v114 = 0x7FFFFFFF;
LABEL_160:
            v108 = v232;
            v107 = v233;
            v115 = *(a1 + 128);
            if (*(a1 + 136) == v115)
            {
              goto LABEL_238;
            }
          }

          goto LABEL_161;
        }
      }

      v114 = 0x80000000;
      v115 = *(a1 + 128);
      if (*(a1 + 136) == v115)
      {
        goto LABEL_238;
      }

LABEL_161:
      v116 = v115[1];
      v117 = v116 - *v115;
      if (v116 == *v115)
      {
        goto LABEL_238;
      }

      if (v114 == 0x7FFFFFFF)
      {
        v118 = 0;
        while (v115[1] - *v115 > v118)
        {
          if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - *(a1 + 152)) >> 2) <= (v118 + *v115))
          {
            goto LABEL_351;
          }

          if (v117 == ++v118)
          {
            goto LABEL_238;
          }
        }

LABEL_352:
        v223 = __cxa_allocate_exception(0x10uLL);
        sub_195A2D8(v223, "key does not exist and cannot be added");
LABEL_353:
      }

      v234 = 0;
      v119 = 0;
      v120 = (v107 + v107 * v109);
      *v227 = (v224 + v120);
      v226 = (v108 + 1);
      v230 = (v120 + 1);
      do
      {
        v123 = *(a1 + 128);
        v124 = *(a1 + 136);
        if (v124 == v123 || *(v123 + 1) - *v123 <= v119)
        {
          goto LABEL_352;
        }

        v125 = *v123 + v119;
        v126 = *(a1 + 152);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v126) >> 2) <= v125)
        {
LABEL_351:
          v223 = __cxa_allocate_exception(0x10uLL);
          sub_195A2D8(v223, "index out of range");
          goto LABEL_353;
        }

        v127 = v126 + 52 * v125;
        v129 = *(v127 + 16);
        v128 = *(v127 + 32);
        v130 = *v127;
        v255 = *(v127 + 48);
        v253 = v129;
        v254 = v128;
        v252 = v130;
        if (SHIDWORD(v129) >= v114)
        {
          if (v108 == 0xFFFFFFFF)
          {
            goto LABEL_188;
          }

          v131 = (v124 - v123) >> 3;
          if (v131 <= v108)
          {
            if (v226 <= v131)
            {
              if (v226 < v131)
              {
                v124 = &v123[8 * v226];
                *(a1 + 136) = v124;
              }
            }

            else
            {
              sub_30B70(a1 + 128, v226 - v131);
              v108 = v232;
              v123 = *(a1 + 128);
              v124 = *(a1 + 136);
              v126 = *(a1 + 152);
            }
          }

          v132 = *&v123[8 * v108];
          v133 = (v124 - v123) >> 3;
          if (v133 <= v108)
          {
            if (v226 > v133)
            {
              sub_30B70(a1 + 128, v226 - v133);
              v108 = v232;
              v123 = *(a1 + 128);
              v134 = *(a1 + 152);
              goto LABEL_186;
            }

            if (v226 < v133)
            {
              *(a1 + 136) = &v123[8 * v226];
            }
          }

          v134 = v126;
LABEL_186:
          v135 = v126 + 52 * v132;
          for (i = v134 + 52 * *&v123[8 * v108 + 4]; v135 != i; v135 += 52)
          {
            v139 = *(v135 + 28);
            v140 = v139 == 0x7FFFFFFF || v139 < SHIDWORD(v253);
            if (!v140 && *(v135 + 32) <= v254)
            {
              goto LABEL_169;
            }
          }

          v126 = v134;
LABEL_188:
          v137 = *(a1 + 136);
          v138 = (v137 - v123) >> 3;
          if (v138 <= v120)
          {
            if (v230 <= v138)
            {
              if (v230 < v138)
              {
                v137 = &v123[8 * v230];
                *(a1 + 136) = v137;
              }
            }

            else
            {
              sub_30B70(a1 + 128, v230 - v138);
              v108 = v232;
              v123 = *(a1 + 128);
              v137 = *(a1 + 136);
              v126 = *(a1 + 152);
            }
          }

          v141 = *&v123[8 * v120];
          v142 = (v137 - v123) >> 3;
          if (v142 <= v120)
          {
            if (v230 > v142)
            {
              sub_30B70(a1 + 128, v230 - v142);
              v108 = v232;
              v123 = *(a1 + 128);
              v143 = *(a1 + 152);
              goto LABEL_205;
            }

            if (v230 < v142)
            {
              *(a1 + 136) = &v123[8 * v230];
            }
          }

          v143 = v126;
LABEL_205:
          v144 = v126 + 52 * v141;
          v145 = v143 + 52 * *&v123[8 * v120 + 4];
          if (v144 == v145)
          {
LABEL_206:
            if (*v227 < ((*(a1 + 136) - v123) >> 3))
            {
              v147 = *&v123[8 * *v227];
              v146 = *&v123[8 * *v227 + 4];
              if (v146 != v147)
              {
                v121 = 0;
                v152 = v143 + 52 * v146;
                v153 = v143 + 52 * v147;
                while (1)
                {
                  v154 = *(v153 + 28);
                  if (v154 != 0x7FFFFFFF)
                  {
                    if (v154 >= SHIDWORD(v253) && *(v153 + 32) <= v254)
                    {
                      v122 = 0;
                      goto LABEL_210;
                    }

                    if (SHIDWORD(v253) >= v154 && v254 <= *(v153 + 32))
                    {
                      *(v153 + 28) = 0x7FFFFFFF;
                      v121 = 1;
                    }
                  }

                  v153 += 52;
                  if (v153 == v152)
                  {
                    goto LABEL_209;
                  }
                }
              }
            }

            v121 = 0;
LABEL_209:
            v148 = sub_ABC224((a1 + 128), v227[0], &v252);
            *(v148 + 40) = -1;
            *(v148 + 48) = 0x7FFFFFFF;
            v149 = *(a1 + 200);
            *(a1 + 200) = v149 + 1;
            *(v148 + 24) = v149;
            *(v148 + 20) = DWORD2(v253);
            *(v148 + 40) = -1;
            *(v148 + 48) = 0x7FFFFFFF;
            v122 = 1;
LABEL_210:
            v108 = v232;
            goto LABEL_170;
          }

          while (1)
          {
            v150 = *(v144 + 28);
            v151 = v150 == 0x7FFFFFFF || v150 < SHIDWORD(v253);
            if (!v151 && *(v144 + 32) <= v254)
            {
              break;
            }

            v144 += 52;
            if (v144 == v145)
            {
              goto LABEL_206;
            }
          }

LABEL_169:
          v121 = 0;
          v122 = 0;
LABEL_170:
          v234 |= v122 | (v121 << 8);
        }

        ++v119;
      }

      while (v119 != v117);
      if ((v234 & 0x100) != 0)
      {
        sub_AA75DC((a1 + 128), v227[0]);
      }

      if ((v234 & 1) == 0)
      {
        goto LABEL_238;
      }

      v155 = v236;
      if (*(a1 + 216) <= v236)
      {
        sub_4D9168(a1 + 208, v236 + 1, 0);
        v155 = v236;
      }

      if (((*(*(a1 + 208) + ((v155 >> 3) & 0x1FFFFFF8)) >> v155) & 1) == 0)
      {
        sub_DD38(a1 + 232, &v236);
        *(*(a1 + 208) + ((v236 >> 3) & 0x1FFFFFF8)) |= 1 << v236;
        v156 = *(a1 + 128);
        v157 = *(a1 + 136);
        v158 = v157 - v156;
        if (v157 == v156)
        {
          goto LABEL_255;
        }

LABEL_239:
        v159 = *(a1 + 152);
        v160 = *v156;
        if (v156 != v157)
        {
          goto LABEL_262;
        }
      }

      else
      {
LABEL_238:
        v156 = *(a1 + 128);
        v157 = *(a1 + 136);
        v158 = v157 - v156;
        if (v157 != v156)
        {
          goto LABEL_239;
        }

LABEL_255:
        v167 = 1 - (v158 >> 3);
        v168 = *(a1 + 144);
        if (v167 > (v168 - v157) >> 3)
        {
          v169 = v168 - v156;
          v170 = v169 >> 2;
          if ((v169 >> 2) <= 1)
          {
            v170 = 1;
          }

          v15 = v169 >= 0x7FFFFFFFFFFFFFF8;
          v171 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v15)
          {
            v171 = v170;
          }

          if (!(v171 >> 61))
          {
            operator new();
          }

          goto LABEL_349;
        }

        bzero(v157, 8 * v167);
        v157 += 8 * v167;
        *(a1 + 136) = v157;
        v156 = *(a1 + 128);
        v159 = *(a1 + 152);
        v160 = *v156;
        if (v156 != v157)
        {
LABEL_262:
          v165 = (v159 + 52 * v160);
          v166 = v159 + 52 * *(v156 + 1);
          if (v165 != v166)
          {
            goto LABEL_263;
          }

          goto LABEL_269;
        }
      }

      v161 = *(a1 + 144);
      if (v161 == v157)
      {
        v162 = 1;
        v163 = v161 - v156;
        if ((v163 >> 2) > 1)
        {
          v162 = v163 >> 2;
        }

        if (v163 >= 0x7FFFFFFFFFFFFFF8)
        {
          v164 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v164 = v162;
        }

        if (v164)
        {
          if (!(v164 >> 61))
          {
            operator new();
          }

          goto LABEL_349;
        }

        *&dword_0 = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 8;
        *(a1 + 144) = 0;
        if (v156)
        {
          operator delete(v156);
        }
      }

      else
      {
        *v157 = 0;
        *(a1 + 136) = v157 + 8;
      }

      v165 = (v159 + 52 * v160);
      v166 = *(a1 + 152) + 52 * *(*(a1 + 128) + 4);
      if (v165 != v166)
      {
LABEL_263:
        v172 = v246;
        v173 = v244;
        v174 = v239;
        v175 = (v241 - v240) >> 4;
        do
        {
          v178 = (v173 + 12 * v165[10]);
          if (v172)
          {
            v247 = v165[11];
            v176 = v165[12];
            v248 = v176;
          }

          else
          {
            v176 = *v178;
          }

          v177 = (v174 + *(v174 - *v174 + 6));
          v165[7] = *(&v177[2 * (v178[1] + v175) + 1] + *v177) + v176;
          v165 += 13;
        }

        while (v165 != v166);
        v245 = v178;
      }

LABEL_269:
      result = sub_AC7CB4((a1 + 128), 0);
LABEL_270:
      if ((*(v241 + 15) & 1) == 0)
      {
        goto LABEL_277;
      }

      if (!v243)
      {
        if (!v235)
        {
          goto LABEL_275;
        }

        goto LABEL_277;
      }

      if (*(v243 + 4 * ((v241 - v240) >> 4)) != v235)
      {
        goto LABEL_277;
      }

LABEL_275:
      v179 = v231 + *(a1 + 120) + *(a1 + 120) * v236;
      v180 = *(a1 + 128);
      if (v179 < (*(a1 + 136) - v180) >> 3)
      {
        v182 = (v180 + 8 * v179);
        v181 = v182[1];
        v183 = v181 - *v182;
        if (v181 != *v182)
        {
          for (j = 0; j != v183; ++j)
          {
            v189 = *(a1 + 128);
            if (v179 >= (*(a1 + 136) - v189) >> 3)
            {
              goto LABEL_352;
            }

            v191 = (v189 + 8 * v179);
            v190 = *v191;
            if (v191[1] - *v191 <= j)
            {
              goto LABEL_352;
            }

            v192 = v190 + j;
            v193 = *(a1 + 152);
            if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 160) - v193) >> 2) <= v192)
            {
              goto LABEL_351;
            }

            v194 = v193 + 52 * v192;
            if (v246 == 1)
            {
              result = sub_A84F48(*(a1 + 24), &v237, *(v194 + 28), 1u);
              if ((result & 1) == 0)
              {
                continue;
              }
            }

            else
            {
              result = sub_A8552C(&v237, *(v194 + 28), 1);
              if (!result)
              {
                continue;
              }
            }

            v195 = *(v194 + 20);
            v196 = *(v194 + 32);
            v197 = v248;
            v198 = 0xFFFFFFFF00000000;
            if (v246)
            {
              v198 = v247 << 32;
            }

            v199 = (-1431655765 * ((v245 - v244) >> 2)) | v198;
            if (!v246)
            {
              v197 = 0x7FFFFFFF;
            }

            v200 = (v239 + *(v239 - *v239 + 6));
            v201 = v200 + *v200;
            v202 = &v248;
            if (!v246)
            {
              v202 = v245;
            }

            v203 = *&v201[8 * v245[1] + 4 + 8 * ((v241 - v240) >> 4)] + *v202;
            *(&v252 + 4) = v199;
            LODWORD(v252) = (v241 - v240) >> 4;
            HIDWORD(v252) = v197;
            LODWORD(v253) = v251;
            *(&v253 + 4) = v195;
            HIDWORD(v253) = v203;
            *&v254 = v196;
            *(&v254 + 1) = v199;
            v255 = v197;
            v204 = *(a1 + 128);
            if (*(a1 + 136) != v204)
            {
              v206 = *v204;
              v205 = *(*(a1 + 128) + 4);
              if (v205 != v206)
              {
                v207 = 0;
                v208 = *(a1 + 152);
                v209 = v208 + 52 * v205;
                v210 = v208 + 52 * v206;
                do
                {
                  v211 = *(v210 + 28);
                  if (v211 != 0x7FFFFFFF)
                  {
                    if (v211 >= SHIDWORD(v253) && *(v210 + 32) <= v254)
                    {
                      goto LABEL_322;
                    }

                    if (SHIDWORD(v253) >= v211 && v254 <= *(v210 + 32))
                    {
                      *(v210 + 28) = 0x7FFFFFFF;
                      v207 = 1;
                    }
                  }

                  v210 += 52;
                }

                while (v210 != v209);
                result = sub_ABC224((a1 + 128), 0, &v252);
LABEL_322:
                if ((v207 & 1) == 0)
                {
                  continue;
                }

                v212 = *(a1 + 128);
                if (*(a1 + 136) != v212)
                {
                  v213 = *(a1 + 152);
                  v214 = *v212;
LABEL_325:
                  v215 = v213 + 52 * v214;
                  v216 = v213 + 52 * v212[1];
                  if (v215 != v216)
                  {
                    goto LABEL_330;
                  }

                  goto LABEL_326;
                }

                sub_30B70(a1 + 128, 1uLL);
                v212 = *(a1 + 128);
                v213 = *(a1 + 152);
                v214 = *v212;
                if (*(a1 + 136) != v212)
                {
                  goto LABEL_325;
                }

                sub_30B70(a1 + 128, 1uLL);
                v212 = *(a1 + 128);
                v215 = v213 + 52 * v214;
                v216 = *(a1 + 152) + 52 * v212[1];
                if (v215 == v216)
                {
LABEL_326:
                  v215 = v216;
                  if (*(a1 + 136) == v212)
                  {
                    goto LABEL_327;
                  }
                }

                else
                {
LABEL_330:
                  while (*(v215 + 28) != 0x7FFFFFFF)
                  {
                    v215 += 52;
                    if (v215 == v216)
                    {
                      v215 = v216;
                      break;
                    }
                  }

                  if (v216 == v215 || (v218 = v215 + 52, v215 + 52 == v216))
                  {
                    if (*(a1 + 136) != v212)
                    {
                      goto LABEL_336;
                    }
                  }

                  else
                  {
                    do
                    {
                      if (*(v218 + 28) != 0x7FFFFFFF)
                      {
                        v219 = *v218;
                        v220 = *(v218 + 16);
                        v221 = *(v218 + 32);
                        *(v215 + 48) = *(v218 + 48);
                        *(v215 + 16) = v220;
                        *(v215 + 32) = v221;
                        *v215 = v219;
                        v215 += 52;
                      }

                      v218 += 52;
                    }

                    while (v218 != v216);
                    v212 = *(a1 + 128);
                    if (*(a1 + 136) != v212)
                    {
                      goto LABEL_336;
                    }
                  }

LABEL_327:
                  v217 = v215;
                  sub_30B70(a1 + 128, 1uLL);
                  v215 = v217;
                  v212 = *(a1 + 128);
                }

LABEL_336:
                result = sub_AA6CF0((a1 + 128), 0, v215, (*(a1 + 152) + 52 * v212[1]));
                continue;
              }
            }

            result = sub_ABC224((a1 + 128), 0, &v252);
          }
        }
      }

LABEL_277:
      v184 = v240;
      v14 = v241 - 2;
      v241 -= 2;
      if (*(v237 + 16) == 1 && (v238 & 1) == 0 && v14 >= v240 && v14 < v242)
      {
        do
        {
          v185 = __ROR8__(*v14, 32);
          if (HIDWORD(v185) == 1 && (v185 + 3) < 2)
          {
            break;
          }

          result = sub_2D5204(**(v237 + 4120));
          v184 = v240;
          v14 = v241;
          if (result)
          {
            break;
          }

          v14 = v241 - 2;
          v241 = v14;
        }

        while (v14 >= v240 && v14 < v242);
      }
    }

    while (v14 >= v184 && v14 < v242);
LABEL_11:
    v13 = v249 + 4;
    v249 = v13;
    if (v13 < v250)
    {
      continue;
    }

    return result;
  }
}

char *sub_AC7CB4(char *result, unsigned int a2)
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

        result = sub_ABC7E4(v2, v3, v6++);
        if (*(result + 7) != 0x7FFFFFFF && v6 < v4)
        {
          if (v3 >= (v2[1] - *v2) >> 3)
          {
LABEL_31:
            exception = __cxa_allocate_exception(0x10uLL);
            sub_195A2D8(exception, "key does not exist and cannot be added");
          }

          else
          {
            v10 = (*v2 + 8 * v3);
            v11 = v6;
            while (1)
            {
              if (v10[1] - *v10 <= v11)
              {
                goto LABEL_31;
              }

              v12 = v11 + *v10;
              v13 = v2[3];
              if (0x4EC4EC4EC4EC4EC5 * ((v2[4] - v13) >> 2) <= v12)
              {
                break;
              }

              v14 = v13 + 52 * v12;
              v15 = *(v14 + 28);
              if (v15 != 0x7FFFFFFF)
              {
                v16 = *(result + 7);
                if (v16 >= v15 && *(result + 8) <= *(v14 + 32))
                {
                  *(v14 + 28) = 0x7FFFFFFF;
                  v5 = 1;
                }

                else if (v15 >= v16 && *(v14 + 32) <= *(result + 8))
                {
                  *(result + 7) = 0x7FFFFFFF;
                  v5 = 1;
                  goto LABEL_6;
                }
              }

              if (v8 == ++v11)
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

        return sub_AA75DC(v2, v3);
      }
    }
  }

  return result;
}

uint64_t sub_AC7EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *a1 = xmmword_229B660;
  *(a1 + 16) = 8;
  *(a1 + 20) = 1;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  v6 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 128) = 0u;
  *(a1 + 64) = 0;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a1 + 68) = v7;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x100000004;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = -1;
  sub_C43044(a1 + 384, a2);
  v10 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(a1 + 480, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_AC7FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_A95814((v17 + 256));
  sub_A95860(v15 + 304);
  sub_4D0584(v15 + 256);
  sub_4D0584(v18);
  sub_4CB154(v17);
  sub_1F1A8(v16);
  _Unwind_Resume(a1);
}

void sub_AC804C(uint64_t a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  *__p = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v26 = 0;
  LOBYTE(v25) = 0;
  sub_CC9264(v10, &v25);
  if (v26 < 0)
  {
    operator delete(v25);
  }

  BYTE8(v19) = 0;
  *v20 = 0u;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  sub_A98AD4(a1 + 152, v8);
  *&v25 = &v23;
  sub_A31F30(&v25);
  if (__p[1])
  {
    *&v22 = __p[1];
    operator delete(__p[1]);
  }

  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (v8[1])
  {
    sub_A95778(&v8[1]);
    operator delete(v8[1]);
  }

  *(a1 + 336) = *(a1 + 88);
  sub_A98CD4(a1 + 416);
  sub_A98CD4(a1 + 536);
  *(a1 + 2072) = 0;
  *(a1 + 2056) = 0u;
  v2 = *(a1 + 24);
  *(a1 + 1440) = v2;
  *(a1 + 1444) = *(a1 + 28);
  v3 = *(a1 + 72);
  *(a1 + 1445) = v3;
  *(a1 + 688) = v2;
  *(a1 + 706) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = v3;
  v8[0] = 0x1FFFFFFFDLL;
  v4 = sub_A98E8C(a1 + 416, v8);
  v5 = *(v4 + 8);
  if (v5 == -1)
  {
    v6 = *(a1 + 528);
    *(a1 + 528) = v6 + 1;
    *(v4 + 8) = v6;
    v7 = v4;
    sub_2512DC(a1 + 504, v8);
    *(a1 + 656) = *(v7 + 8);
  }

  else
  {
    *(a1 + 656) = v5;
  }
}

void sub_AC81FC(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  sub_A31EF4((v1 | 8));
  _Unwind_Resume(a1);
}

uint64_t sub_AC8220(uint64_t a1)
{
  v2 = *(a1 + 80);
  v21 = 0.0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v34 = 0;
  v35 = 0;
  sub_A96160(&v36, v2, a1 + 416, a1 + 536, (a1 + 664), &v21, &v18, &v34);
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
  sub_A99960(&v36, a1 + 88);
  sub_CC92D8(a1 + 184, v42, &__p);
  if (v33 < 0)
  {
    operator delete(__p);
  }

  v7 = *(a1 + 2056);
  v8 = *(a1 + 328);
  if (v7 > v8)
  {
    v8 = *(a1 + 2056);
  }

  *(a1 + 2056) = v8 + v7;
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

void sub_AC8650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_AC86F0(uint64_t a1, unsigned int a2)
{
  v133 = a2;
  *(a1 + 688) = a2;
  v3 = *(a1 + 104);
  v131[0] = *(a1 + 88);
  v131[1] = v3;
  v131[2] = *(a1 + 120);
  v132 = *(a1 + 136);
  LOBYTE(v131[0]) = 1;
  v130[0] = v131;
  v130[1] = a1;
  v130[2] = &v133;
  v4 = *(a1 + 664);
  v5 = *(a1 + 656);
  if (*v4 <= v5)
  {
    *v4 = v5 + 1;
    v6 = v4[2];
    v7 = v4[1] * (v5 + 1);
    v8 = (v4[3] - v6) >> 2;
    v9 = v7 >= v8;
    v10 = v7 - v8;
    if (v10 != 0 && v9)
    {
      v11 = a2;
      sub_617214((v4 + 2), v10);
      a2 = v11;
    }

    else if (!v9)
    {
      v4[3] = v6 + 4 * v7;
    }
  }

  v12 = *(v4[2] + 4 * v4[1] * v5 + 4 * ((2 * a2) | 1));
  v14 = (a1 + 92);
  v13 = *(a1 + 92);
  v134[0] = v13;
  if (*(a1 + 49) != 1)
  {
    goto LABEL_56;
  }

  v15 = 10 * (v12 - v13);
  if (v15 >= *(a1 + 52))
  {
    v16 = sub_ACA5A8(v130, v12);
    LODWORD(v115) = v16;
    v13 = v134[0];
    if (v16 == 0x7FFFFFFF || v134[0] >= v16)
    {
LABEL_34:
      if ((*(a1 + 49) & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_35;
    }

    if (!sub_7E7E4(2u))
    {
LABEL_33:
      v13 = v115;
      v134[0] = v115;
      goto LABEL_34;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v18 = std::ostream::operator<<();
    v19 = sub_4A5C(v18, "] Tightening only improved the journey's departure (arrival) from ", 66);
    v20 = sub_258D4(v19, v134);
    v21 = sub_4A5C(v20, " to ", 4);
    sub_258D4(v21, &v115);
    if ((v129 & 0x10) != 0)
    {
      v23 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v23 = v125;
      }

      v24 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v22 = 0;
        v118 = 0;
LABEL_28:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 2u);
        if (v118 < 0)
        {
          operator delete(__dst);
        }

        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_33;
      }

      v24 = v122;
      v23 = v123;
    }

    v25 = *v24;
    v22 = v23 - *v24;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v118 = v23 - *v24;
    if (v22)
    {
      memmove(&__dst, v25, v22);
    }

    goto LABEL_28;
  }

LABEL_35:
  if (v15 < *(a1 + 52))
  {
    goto LABEL_56;
  }

  sub_7E9A4(&__dst);
  if (!sub_7E7E4(2u))
  {
    goto LABEL_53;
  }

  sub_19594F8(&v119);
  sub_4A5C(&v119, "[", 1);
  v26 = std::ostream::operator<<();
  sub_4A5C(v26, "] Journey duration (", 20);
  v27 = std::ostream::operator<<();
  sub_4A5C(v27, " sec) exceeds tightening threshold; performing tightening by time shift", 71);
  if ((v129 & 0x10) != 0)
  {
    v29 = v128;
    if (v128 < v125)
    {
      v128 = v125;
      v29 = v125;
    }

    v30 = v124;
    v28 = v29 - v124;
    if (v29 - v124 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_132:
      sub_3244();
    }

LABEL_43:
    if (v28 >= 0x17)
    {
      operator new();
    }

    v116 = v28;
    if (v28)
    {
      memmove(&v115, v30, v28);
    }

    goto LABEL_48;
  }

  if ((v129 & 8) != 0)
  {
    v30 = v122[0];
    v28 = v123 - v122[0];
    if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_132;
    }

    goto LABEL_43;
  }

  v28 = 0;
  v116 = 0;
LABEL_48:
  *(&v115 + v28) = 0;
  sub_7E854(&v115, 2u);
  if (v116 < 0)
  {
    operator delete(v115);
  }

  if (v127 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v121);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_53:
  v31 = *(a1 + 60);
  if (v31 > *(a1 + 56))
  {
LABEL_54:
    v112 = v12;
    goto LABEL_55;
  }

  v111 = v12;
  while (1)
  {
    *(a1 + 296) = *(a1 + 296) + 1.0;
    if (!sub_7E7E4(2u))
    {
      v43 = v31 / 10;
      v44 = v31 % 10;
      goto LABEL_89;
    }

    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v42 = std::ostream::operator<<();
    sub_4A5C(v42, "] Examining time shift of ", 26);
    v43 = v31 / 10;
    v44 = v31 % 10;
    v45 = std::ostream::operator<<();
    sub_4A5C(v45, " sec (exponential search)", 25);
    if ((v129 & 0x10) != 0)
    {
      v47 = v128;
      v48 = &v124;
      if (v128 < v125)
      {
        v128 = v125;
        v47 = v125;
        v48 = &v124;
      }

      goto LABEL_78;
    }

    if ((v129 & 8) != 0)
    {
      v47 = v123;
      v48 = v122;
LABEL_78:
      v49 = *v48;
      v46 = v47 - *v48;
      if (v46 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v46 >= 0x17)
      {
        operator new();
      }

      v116 = v47 - *v48;
      if (v46)
      {
        memmove(&v115, v49, v46);
      }

      goto LABEL_84;
    }

    v46 = 0;
    v116 = 0;
LABEL_84:
    *(&v115 + v46) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(*&v114 - 24)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
LABEL_89:
    v50 = v31 < 0 ? -5 : 5;
    v51 = v43 + (((103 * (v50 + v44)) >> 15) & 1) + ((103 * (v50 + v44)) >> 10);
    v52 = v51 + v12;
    v53 = sub_ACA5A8(v130, v51 + v12);
    if (*(a1 + 64) * fabs((10 * (v53 - v134[0]))) >= fabs((10 * v51)))
    {
      break;
    }

    v41 = v31 + v31;
    if (v41 >= 0.0)
    {
      if (v41 >= 4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) + 1;
    }

    else
    {
      if (v41 <= -4.50359963e15)
      {
        goto LABEL_69;
      }

      v54 = (v41 + v41) - 1 + (((v41 + v41) - 1) >> 63);
    }

    v41 = (v54 >> 1);
LABEL_69:
    v31 = v41;
    if (*(a1 + 56) < v41)
    {
      goto LABEL_54;
    }
  }

  v71 = v53;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v119);
    sub_4A5C(&v119, "[", 1);
    v72 = std::ostream::operator<<();
    sub_4A5C(v72, "] Journey duration improved from ", 33);
    v73 = std::ostream::operator<<();
    sub_4A5C(v73, " to ", 4);
    v74 = std::ostream::operator<<();
    sub_4A5C(v74, " sec for time shift of ", 23);
    v75 = std::ostream::operator<<();
    sub_4A5C(v75, " sec", 4);
    if ((v129 & 0x10) != 0)
    {
      v77 = v128;
      if (v128 < v125)
      {
        v128 = v125;
        v77 = v125;
      }

      v78 = &v124;
    }

    else
    {
      if ((v129 & 8) == 0)
      {
        v76 = 0;
        v116 = 0;
        goto LABEL_143;
      }

      v78 = v122;
      v77 = v123;
    }

    v79 = *v78;
    v76 = v77 - *v78;
    if (v76 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v76 >= 0x17)
    {
      operator new();
    }

    v116 = v77 - *v78;
    if (v76)
    {
      memmove(&v115, v79, v76);
    }

LABEL_143:
    *(&v115 + v76) = 0;
    sub_7E854(&v115, 2u);
    if (v116 < 0)
    {
      operator delete(v115);
    }

    v119 = v114;
    *(&v119 + *(*&v114 - 24)) = v113;
    if (v127 < 0)
    {
      operator delete(__p);
    }

    std::locale::~locale(&v121);
    std::ostream::~ostream();
    std::ios::~ios();
    v12 = v111;
  }

  v134[0] = v71;
  v112 = v12;
  if (v51)
  {
    v80 = vcvtd_n_f64_s32(v31, 1uLL);
    if (v80 >= 0.0)
    {
      if (v80 < 4.50359963e15)
      {
        v81 = (v80 + v80) + 1;
LABEL_154:
        v80 = (v81 >> 1);
      }
    }

    else if (v80 > -4.50359963e15)
    {
      v81 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
      goto LABEL_154;
    }

    v82 = v31 * 0.25;
    if (v82 >= 0.0)
    {
      if (v82 < 4.50359963e15)
      {
        v83 = (v82 + v82) + 1;
LABEL_160:
        v82 = (v83 >> 1);
      }
    }

    else if (v82 > -4.50359963e15)
    {
      v83 = (v82 + v82) - 1 + (((v82 + v82) - 1) >> 63);
      goto LABEL_160;
    }

    v84 = v82;
    if (*(a1 + 60) > v82)
    {
      v112 = v52;
      goto LABEL_55;
    }

    v85 = v80;
    v112 = v52;
    while (2)
    {
      *(a1 + 296) = *(a1 + 296) + 1.0;
      v87 = v84 + v85;
      if (sub_7E7E4(2u))
      {
        sub_19594F8(&v119);
        sub_4A5C(&v119, "[", 1);
        v88 = std::ostream::operator<<();
        sub_4A5C(v88, "] Examining time shift of ", 26);
        v89 = v87 / 10;
        v90 = v87 % 10;
        v91 = std::ostream::operator<<();
        sub_4A5C(v91, " sec (binary refinement search)", 31);
        if ((v129 & 0x10) != 0)
        {
          v93 = v85;
          v94 = v128;
          v95 = &v124;
          if (v128 < v125)
          {
            v128 = v125;
            v94 = v125;
            v95 = &v124;
          }
        }

        else
        {
          if ((v129 & 8) == 0)
          {
            v92 = 0;
            v116 = 0;
            goto LABEL_181;
          }

          v93 = v85;
          v94 = v123;
          v95 = v122;
        }

        v96 = *v95;
        v92 = v94 - *v95;
        if (v92 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v92 >= 0x17)
        {
          operator new();
        }

        v116 = v94 - *v95;
        if (v92)
        {
          memmove(&v115, v96, v92);
        }

        v85 = v93;
LABEL_181:
        *(&v115 + v92) = 0;
        sub_7E854(&v115, 2u);
        if (v116 < 0)
        {
          operator delete(v115);
        }

        v119 = v114;
        *(&v119 + *(*&v114 - 24)) = v113;
        if (v127 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v121);
        std::ostream::~ostream();
        std::ios::~ios();
      }

      else
      {
        v89 = v87 / 10;
        v90 = v87 % 10;
      }

      if (v87 < 0)
      {
        v97 = -5;
      }

      else
      {
        v97 = 5;
      }

      v98 = v89 + (((103 * (v97 + v90)) >> 15) & 1) + ((103 * (v97 + v90)) >> 10) + v111;
      v99 = sub_ACA5A8(v130, v98);
      if (*(a1 + 64) * fabs((10 * (v134[0] - v99))) >= fabs((10 * (v112 - v98))))
      {
        v85 = v87;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v100 = v99;
        if (sub_7E7E4(2u))
        {
          sub_19594F8(&v119);
          sub_4A5C(&v119, "[", 1);
          v101 = std::ostream::operator<<();
          sub_4A5C(v101, "] Journey duration improved from ", 33);
          v102 = std::ostream::operator<<();
          sub_4A5C(v102, " to ", 4);
          v103 = std::ostream::operator<<();
          sub_4A5C(v103, " sec for time shift of ", 23);
          v104 = std::ostream::operator<<();
          sub_4A5C(v104, " sec", 4);
          if ((v129 & 0x10) != 0)
          {
            v107 = v85;
            v108 = v128;
            v109 = &v124;
            if (v128 < v125)
            {
              v128 = v125;
              v108 = v125;
              v109 = &v124;
            }
          }

          else
          {
            if ((v129 & 8) == 0)
            {
              v105 = 0;
              v116 = 0;
              goto LABEL_207;
            }

            v107 = v85;
            v108 = v123;
            v109 = v122;
          }

          v110 = *v109;
          v105 = v108 - *v109;
          if (v105 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v105 >= 0x17)
          {
            operator new();
          }

          v116 = v108 - *v109;
          if (v105)
          {
            memmove(&v115, v110, v105);
          }

          v85 = v107;
LABEL_207:
          *(&v115 + v105) = 0;
          sub_7E854(&v115, 2u);
          if (v116 < 0)
          {
            operator delete(v115);
          }

          v119 = v114;
          *(&v119 + *(*&v114 - 24)) = v113;
          if (v127 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v121);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v134[0] = v100;
        v112 = v98;
        v86 = vcvtd_n_f64_s32(v84, 1uLL);
        if (v86 >= 0.0)
        {
LABEL_213:
          if (v86 < 4.50359963e15)
          {
            v106 = (v86 + v86) + 1;
LABEL_164:
            v86 = (v106 >> 1);
          }

          goto LABEL_165;
        }
      }

      if (v86 > -4.50359963e15)
      {
        v106 = (v86 + v86) - 1 + (((v86 + v86) - 1) >> 63);
        goto LABEL_164;
      }

LABEL_165:
      v84 = v86;
      if (*(a1 + 60) > v86)
      {
        break;
      }

      continue;
    }
  }

LABEL_55:
  *(a1 + 232) = sub_7EA60(&__dst);
  v13 = v134[0];
  v12 = v112;
  v14 = (a1 + 92);
LABEL_56:
  if (v13 != *v14)
  {
    if (sub_7E7E4(2u))
    {
      sub_19594F8(&v119);
      sub_4A5C(&v119, "[", 1);
      v32 = std::ostream::operator<<();
      v33 = sub_4A5C(v32, "] Shifting ", 11);
      v34 = sub_4A5C(v33, "departure", 9);
      v35 = sub_4A5C(v34, " time from ", 11);
      v36 = sub_258D4(v35, v14);
      v37 = sub_4A5C(v36, " to ", 4);
      sub_258D4(v37, v134);
      if ((v129 & 0x10) != 0)
      {
        v39 = v128;
        if (v128 < v125)
        {
          v128 = v125;
          v39 = v125;
        }

        v40 = v124;
        v38 = v39 - v124;
        if (v39 - v124 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_126;
        }
      }

      else
      {
        if ((v129 & 8) == 0)
        {
          v38 = 0;
          v118 = 0;
          goto LABEL_100;
        }

        v40 = v122[0];
        v38 = v123 - v122[0];
        if (v123 - v122[0] > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_126:
          sub_3244();
        }
      }

      if (v38 >= 0x17)
      {
        operator new();
      }

      v118 = v38;
      if (v38)
      {
        memmove(&__dst, v40, v38);
      }

LABEL_100:
      *(&__dst + v38) = 0;
      sub_7E854(&__dst, 2u);
      if (v118 < 0)
      {
        operator delete(__dst);
      }

      if (v127 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v121);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    *(a1 + 304) = 0x3FF0000000000000;
  }

  v55 = v133;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_118;
  }

  v56 = v133 + 1;
  v57 = *(a1 + 24);
  if (v133 + 1 <= v57 + 1)
  {
    v56 = v57 + 1;
  }

  if (v133 + 1 < v57 + 1)
  {
    v58 = v56 - 1;
    v59 = 2 * v133 + 3;
    v60 = v133;
    while (1)
    {
      v61 = *(a1 + 664);
      v62 = *(a1 + 656);
      if (*v61 <= v62)
      {
        *v61 = v62 + 1;
        v63 = v61[2];
        v64 = v61[1] * (v62 + 1);
        v65 = (v61[3] - v63) >> 2;
        if (v64 <= v65)
        {
          if (v64 < v65)
          {
            v61[3] = v63 + 4 * v64;
          }
        }

        else
        {
          sub_617214((v61 + 2), v64 - v65);
        }
      }

      if (*(v61[2] + 4 * v61[1] * v62 + 4 * v59) != 0x7FFFFFFF)
      {
        break;
      }

      ++v60;
      v59 += 2;
      if (v58 == v60)
      {
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    if (*(a1 + 24) >= *(a1 + 148) + v55)
    {
      v60 = *(a1 + 148) + v55;
    }

    else
    {
      v60 = *(a1 + 24);
    }
  }

  *(a1 + 688) = v60;
  v66 = *(a1 + 144);
  v67 = v66 / 10;
  v68 = v66 % 10;
  if (v66 < 0)
  {
    v69 = -5;
  }

  else
  {
    v69 = 5;
  }

  sub_ACA5A8(v130, v67 + v12 + (((103 * (v69 + v68)) >> 15) & 1) + ((103 * (v69 + v68)) >> 10));
  return v134[0];
}

void sub_AC9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
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

void sub_ACA09C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_13;
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
      v12 = *(a1 + 656);
      if (*v11 <= v12)
      {
        *v11 = v12 + 1;
        v13 = v11[2];
        v14 = v11[1] * (v12 + 1);
        v15 = (v11[3] - v13) >> 2;
        if (v14 <= v15)
        {
          if (v14 < v15)
          {
            v11[3] = v13 + 4 * v14;
          }
        }

        else
        {
          sub_617214((v11 + 2), v14 - v15);
        }
      }

      if (*(v11[2] + 4 * v11[1] * v12 + 4 * v9) != 0x7FFFFFFF)
      {
        break;
      }

      ++v10;
      v9 += 2;
      if (v8 == v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(a1 + 24) >= (*(a1 + 148) + v4))
    {
      v10 = *(a1 + 148) + v4;
    }

    else
    {
      v10 = *(a1 + 24);
    }
  }

  v16 = *(a1 + 104);
  v51[0] = *(a1 + 88);
  v51[1] = v16;
  v51[2] = *(a1 + 120);
  v52 = *(a1 + 136);
  DWORD1(v51[0]) = a3;
  *(a1 + 1440) = v10;
  sub_ACA948(a1 + 1424, v51);
  sub_ACAC38((a1 + 1424), v4, &v43);
  sub_CC92D8(a1 + 184, a1 + 1904, &__p);
  if (v42 < 0)
  {
    operator delete(__p);
  }

  v17 = *(a1 + 2048);
  *(a1 + 328) -= v17;
  v18 = *(a1 + 2072);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  *(a1 + 2072) = v18;
  sub_AA9EA4(v44[0], v44[1], (a1 + 160));
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v30);
    sub_4A5C(&v30, "[", 1);
    v19 = std::ostream::operator<<();
    sub_4A5C(v19, "] McSPA scanned ", 16);
    v20 = std::ostream::operator<<();
    sub_4A5C(v20, " stop patterns and obtained ", 28);
    v21 = std::ostream::operator<<();
    sub_4A5C(v21, " journeys in ", 13);
    v22 = std::ostream::operator<<();
    v23 = sub_4A5C(v22, " ms using ", 10);
    v24 = sub_71478(v23, *(a1 + 2048));
    sub_4A5C(v24, " of memory", 10);
    if ((v40 & 0x10) != 0)
    {
      v26 = v39;
      if (v39 < v36)
      {
        v39 = v36;
        v26 = v36;
      }

      v27 = v35;
      v25 = v26 - v35;
      if (v26 - v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if ((v40 & 8) == 0)
      {
        v25 = 0;
        v29 = 0;
LABEL_32:
        *(&v28 + v25) = 0;
        sub_7E854(&v28, 2u);
        if (v29 < 0)
        {
          operator delete(v28);
        }

        if (v38 < 0)
        {
          operator delete(v37);
        }

        std::locale::~locale(&v32);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v27 = v33;
      v25 = v34 - v33;
      if ((v34 - v33) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_47:
        sub_3244();
      }
    }

    if (v25 >= 0x17)
    {
      operator new();
    }

    v29 = v25;
    if (v25)
    {
      memmove(&v28, v27, v25);
    }

    goto LABEL_32;
  }

LABEL_37:
  v30 = COERCE_DOUBLE(&v50);
  sub_A31F30(&v30);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v45 < 0)
  {
    operator delete(v44[3]);
  }

  if (v44[0])
  {
    sub_A95778(v44);
    operator delete(v44[0]);
  }
}

void sub_ACA52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
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

uint64_t sub_ACA5A8(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(v2 + 4) = a2;
  sub_A9DD88(v3 + 680, v2);
  sub_CC92D8(v3 + 184, v3 + 1272, &v32);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  v4 = *(v3 + 1416);
  *(v3 + 328) -= v4;
  v5 = *(v3 + 2064);
  if (v5 <= v4)
  {
    v5 = v4;
  }

  *(v3 + 2064) = v5;
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v21);
    sub_4A5C(&v21, "[", 1);
    v6 = std::ostream::operator<<();
    sub_4A5C(v6, "] Secondary SPA scanned ", 24);
    v7 = std::ostream::operator<<();
    sub_4A5C(v7, " stop patterns and obtained ", 28);
    v8 = std::ostream::operator<<();
    sub_4A5C(v8, " journeys in ", 13);
    v9 = std::ostream::operator<<();
    v10 = sub_4A5C(v9, " ms using ", 10);
    v11 = sub_71478(v10, *(v3 + 1416));
    sub_4A5C(v11, " of memory", 10);
    if ((v31 & 0x10) != 0)
    {
      v13 = v30;
      if (v30 < v27)
      {
        v30 = v27;
        v13 = v27;
      }

      v14 = v26;
      v12 = v13 - v26;
      if (v13 - v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ((v31 & 8) == 0)
      {
        v12 = 0;
        v20 = 0;
LABEL_17:
        *(&__dst + v12) = 0;
        sub_7E854(&__dst, 2u);
        if (v20 < 0)
        {
          operator delete(__dst);
        }

        if (v29 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v23);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_22;
      }

      v14 = v24;
      v12 = v25 - v24;
      if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_26:
        sub_3244();
      }
    }

    if (v12 >= 0x17)
    {
      operator new();
    }

    v20 = v12;
    if (v12)
    {
      memmove(&__dst, v14, v12);
    }

    goto LABEL_17;
  }

LABEL_22:
  v15 = *(v3 + 1136);
  v16 = *(v3 + 896);
  v17 = (*(v3 + 904) - v16) >> 2;
  if (v17 <= v15)
  {
    sub_617214(v3 + 896, v15 - v17 + 1);
    v16 = *(v3 + 896);
  }

  return *(v16 + 4 * v15);
}

void sub_ACA8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_ACA948(uint64_t a1, uint64_t a2)
{
  sub_7E9A4(v42);
  v4 = *(a2 + 16);
  *(a1 + 64) = *a2;
  *(a1 + 80) = v4;
  *(a1 + 96) = *(a2 + 32);
  *(a1 + 104) = *(a2 + 40);
  sub_ACD084(a1);
  v5 = *(a1 + 32);
  v43[0] = 0x1FFFFFFFDLL;
  v6 = sub_A98E8C(v5, v43);
  v7 = *(v6 + 8);
  if (v7 == -1)
  {
    v8 = *(v5 + 112);
    *(v5 + 112) = v8 + 1;
    *(v6 + 8) = v8;
    v9 = v6;
    sub_2512DC(v5 + 88, v43);
    v7 = *(v9 + 8);
  }

  *(a1 + 376) = v7;
  sub_ACD258(a1);
  v10 = 1.0;
  if (*(a1 + 124) >= 2u)
  {
    v11 = 1;
    while (1)
    {
      if (v11)
      {
        v22 = *(a1 + 280);
        v23 = *(a1 + 288);
        if (v22 != v23)
        {
          v24 = *(a1 + 256);
          v25 = *(a1 + 280);
          do
          {
            v26 = *v25++;
            *(v24 + ((v26 >> 3) & 0x1FFFFFF8)) &= ~(1 << v26);
          }

          while (v25 != v23);
        }

        *(a1 + 288) = v22;
        sub_ACD4EC(a1, v11);
        sub_ACD8B4(a1, v11);
        v21 = *(a1 + 280);
        if (v21 == *(a1 + 288))
        {
LABEL_22:
          v10 = v11;
          break;
        }

        v20 = *(a1 + 232);
      }

      else
      {
        v12 = *(a1 + 232);
        v13 = *(a1 + 240);
        if (v12 != v13)
        {
          v14 = *(a1 + 208);
          v15 = *(a1 + 232);
          do
          {
            v16 = *v15++;
            *(v14 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~(1 << v16);
          }

          while (v15 != v13);
        }

        *(a1 + 240) = v12;
        sub_ACF084(a1);
        sub_7E9A4(v43);
        v17 = *(a1 + 352);
        v18 = *(a1 + 360);
        while (v17 != v18)
        {
          v19 = *v17++;
          sub_AD1A18(a1, v11, v19);
        }

        *(a1 + 512) = sub_7EA60(v43) + *(a1 + 512);
        v20 = *(a1 + 232);
        if (v20 == *(a1 + 240))
        {
          goto LABEL_22;
        }

        v21 = *(a1 + 280);
      }

      v40 = *(a1 + 168);
      v41 = *(a1 + 128);
      v38 = *(a1 + 152);
      v39 = *(a1 + 144);
      v36 = 8 * (*(a1 + 224) & 0x3FFFFFFFFFFFFFFLL);
      v37 = 8 * (*(a1 + 192) & 0x3FFFFFFFFFFFFFFLL);
      v27 = *(a1 + 248);
      v34 = *(a1 + 320);
      v35 = 8 * (*(a1 + 272) & 0x3FFFFFFFFFFFFFFLL);
      v28 = *(a1 + 296);
      v29 = *(a1 + 304);
      v33 = *(a1 + 352);
      v30 = 8 * (*(a1 + 344) & 0x3FFFFFFFFFFFFFFLL);
      v31 = *(a1 + 368);
      v32 = v39 + v40 - (v41 + v38) + v37 + v27 + v36 - v20 + v28 + v35 + v34 - (v21 + v29) + v30 + v31 - v33 + sub_C439D4((a1 + 384)) + 632;
      if (*(a1 + 624) > v32)
      {
        v32 = *(a1 + 624);
      }

      *(a1 + 624) = v32;
      if ((sub_ACFE00(a1, v11) & 1) == 0 && ++v11 < *(a1 + 124))
      {
        continue;
      }

      goto LABEL_22;
    }
  }

  sub_AD0334(a1);
  *(a1 + 552) = v10;
  *(a1 + 504) = sub_7EA60(v42);
}

__n128 sub_ACAC38@<Q0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v275 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HIBYTE(v311) = 0;
  LOBYTE(__p) = 0;
  v271 = (a3 + 32);
  sub_CC9264(a3 + 32, &__p);
  if (SHIBYTE(v311) < 0)
  {
    operator delete(__p);
  }

  *(a3 + 192) = 0u;
  *(a3 + 256) = 0;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 184) = *(a1 + 64);
  v5 = (2 * a2) | 1;
  v6 = *(a1 + 31);
  if (v5 > v6)
  {
    v7 = 2 * a2 + 1;
  }

  else
  {
    v7 = *(a1 + 31);
  }

  v272 = v7;
  v273 = (2 * a2) | 1;
  if (v5 < v6)
  {
    __asm { FMOV            V0.2D, #1.0 }

    v274 = _Q0;
    v285 = a1;
    while (1)
    {
      sub_AD0464(a1 + 16, 0);
      sub_AD1858(a1 + 16, v273 + *(a1 + 30) + *(a1 + 30) * *(a1 + 94) + 2, 0);
      v11 = a1[16];
      if (a1[17] != v11)
      {
        break;
      }

      sub_30B70((a1 + 16), 1uLL);
      v11 = a1[16];
      v12 = a1[19];
      v13 = *v11;
      if (a1[17] != v11)
      {
        goto LABEL_11;
      }

      sub_30B70((a1 + 16), 1uLL);
      v11 = a1[16];
      v14 = a1[19];
LABEL_14:
      v278 = (v12 + 56 * v13);
      v276 = (v14 + 56 * v11[1]);
      if (v278 != v276)
      {
        while (1)
        {
          LOWORD(__p) = 0;
          BYTE2(__p) = 0;
          *(&__p + 4) = 0;
          HIDWORD(__p) = 0;
          v311 = -NAN;
          v312 = 0x7FFFFFFF;
          v313 = 0;
          v314 = 0x8000000080000000;
          v315 = 0;
          v316 = 0x8000000080000000;
          v317 = 0x7FFFFFFF;
          v318 = 0;
          v319 = 0x8000000080000000;
          v320 = 0;
          v321 = 0x8000000080000000;
          v322 = 0;
          v323 = 0xFFFFFFFF00000000;
          v324 = -1;
          v325 = 0;
          v327 = 0;
          v328 = 0;
          v329 = 0;
          v326 = 0x7FFFFFFF;
          v330 = 100;
          v331 = -1;
          v332 = v274;
          v333 = v274;
          v334 = v274;
          v335 = 0u;
          v336 = 0u;
          v337 = 0u;
          v338 = 0u;
          v339 = 0u;
          v340 = 0u;
          v15 = a1[3];
          if (sub_68312C(v15 + 3896) && *(v15 + 3944))
          {
            v16 = 1;
          }

          else
          {
            v17 = a1[3];
            v16 = sub_4C2B90(v17 + 3896) && *(v17 + 3960) != 0;
          }

          BYTE1(__p) = v16;
          v18 = a1[3];
          if (sub_4C2B90(v18 + 3896))
          {
            DWORD2(__p) = 2 * (*(v18 + 3960) != 0);
            DWORD1(__p) = DWORD2(__p);
            if (*v278 != -1)
            {
              break;
            }

            goto LABEL_330;
          }

          *(&__p + 4) = 0;
          if (*v278 != -1)
          {
            break;
          }

LABEL_330:
          v226 = v335;
          if (v335 != *(&v335 + 1))
          {
            v227 = *(&v335 + 1) - 72;
            if (*(&v335 + 1) - 72 > v335)
            {
              do
              {
                __na = *v226;
                v232 = *(v226 + 16);
                *(v226 + 8) = 0;
                *(v226 + 16) = 0;
                *v226 = 0;
                v233 = *(v226 + 24);
                v284 = *(v226 + 32);
                v282 = *(v226 + 48);
                *(v226 + 32) = 0;
                *(v226 + 40) = 0;
                *(v226 + 48) = 0;
                *v297 = *(v226 + 56);
                *&v297[7] = *(v226 + 63);
                v234 = *(v227 + 24);
                v235 = *(v227 + 16);
                *v226 = *v227;
                *(v226 + 16) = v235;
                *(v227 + 8) = 0;
                *(v227 + 16) = 0;
                *v227 = 0;
                *(v226 + 24) = v234;
                v236 = *(v226 + 32);
                if (v236)
                {
                  *(v226 + 40) = v236;
                  operator delete(v236);
                  *(v226 + 32) = 0;
                  *(v226 + 40) = 0;
                  *(v226 + 48) = 0;
                }

                *(v226 + 32) = *(v227 + 32);
                *(v226 + 48) = *(v227 + 48);
                *(v227 + 32) = 0;
                *(v227 + 40) = 0;
                *(v227 + 48) = 0;
                v237 = *(v227 + 56);
                *(v226 + 63) = *(v227 + 63);
                *(v226 + 56) = v237;
                v238 = *v227;
                if (*v227)
                {
                  v239 = *(v227 + 8);
                  v240 = *v227;
                  if (v239 != v238)
                  {
                    do
                    {
                      v241 = v239 - 168;
                      v242 = *(v239 - 8);
                      if (v242 != -1)
                      {
                        (off_2670F08[v242])(&v342, v239 - 168);
                      }

                      *(v239 - 8) = -1;
                      v239 -= 168;
                    }

                    while (v241 != v238);
                    v240 = *v227;
                  }

                  *(v227 + 8) = v238;
                  operator delete(v240);
                }

                *v227 = __na;
                *(v227 + 16) = v232;
                *(v227 + 24) = v233;
                v243 = *(v227 + 32);
                if (v243)
                {
                  *(v227 + 40) = v243;
                  operator delete(v243);
                }

                *(v227 + 32) = v284;
                *(v227 + 48) = v282;
                *(v227 + 56) = *v297;
                *(v227 + 63) = *&v297[7];
                v226 += 72;
                v227 -= 72;
              }

              while (v226 < v227);
            }
          }

          sub_A83920(&__p);
          a1 = v285;
          v229 = *(a3 + 16);
          v228 = *(a3 + 24);
          if (v229 >= v228)
          {
            v244 = 0x14C1BACF914C1BADLL * ((v229 - *v275) >> 3);
            v245 = v244 + 1;
            if ((v244 + 1) > 0xDD67C8A60DD67CLL)
            {
              sub_1794();
            }

            v246 = 0x14C1BACF914C1BADLL * ((v228 - *v275) >> 3);
            if (2 * v246 > v245)
            {
              v245 = 2 * v246;
            }

            if (v246 >= 0x6EB3E45306EB3ELL)
            {
              v247 = 0xDD67C8A60DD67CLL;
            }

            else
            {
              v247 = v245;
            }

            *v298 = v275;
            if (v247)
            {
              if (v247 <= 0xDD67C8A60DD67CLL)
              {
                operator new();
              }

              sub_1808();
            }

            *v297 = 0;
            *&v297[8] = 296 * v244;
            *&v297[16] = (296 * v244);
            v231 = a3;
            sub_A32C84(296 * v244, &__p);
            *&v297[16] += 296;
            v230 = *&v297[16];
            v248 = *(a3 + 8);
            v249 = *(a3 + 16);
            v250 = *&v297[8] + v248 - v249;
            sub_A7CAB8(v275, v248, v249, v250);
            v251 = *(a3 + 8);
            *(a3 + 8) = v250;
            *(a3 + 16) = v230;
            *(a3 + 24) = *&v297[24];
            if (v251)
            {
              operator delete(v251);
            }
          }

          else
          {
            sub_A32C84(*(a3 + 16), &__p);
            v230 = v229 + 296;
            v231 = a3;
          }

          *(v231 + 16) = v230;
          if (*(&v339 + 1))
          {
            *&v340 = *(&v339 + 1);
            operator delete(*(&v339 + 1));
          }

          if (v338)
          {
            *(&v338 + 1) = v338;
            operator delete(v338);
          }

          if (*(&v336 + 1))
          {
            *&v337 = *(&v336 + 1);
            operator delete(*(&v336 + 1));
          }

          v252 = v335;
          if (v335)
          {
            v253 = *(&v335 + 1);
            v254 = v335;
            if (*(&v335 + 1) != v335)
            {
              do
              {
                v256 = *(v253 - 40);
                if (v256)
                {
                  *(v253 - 32) = v256;
                  operator delete(v256);
                }

                v257 = (v253 - 72);
                v258 = *(v253 - 72);
                if (v258)
                {
                  v259 = *(v253 - 64);
                  v255 = *(v253 - 72);
                  if (v259 != v258)
                  {
                    do
                    {
                      v260 = v259 - 168;
                      v261 = *(v259 - 8);
                      if (v261 != -1)
                      {
                        (off_2670F08[v261])(v297, v259 - 168);
                      }

                      *(v259 - 8) = -1;
                      v259 -= 168;
                    }

                    while (v260 != v258);
                    v255 = *v257;
                  }

                  *(v253 - 64) = v258;
                  operator delete(v255);
                }

                v253 -= 72;
              }

              while (v257 != v252);
              v254 = v335;
            }

            *(&v335 + 1) = v252;
            operator delete(v254);
          }

          if (SHIBYTE(v329) < 0)
          {
            operator delete(v327);
          }

          v278 += 14;
          if (v278 == v276)
          {
            goto LABEL_8;
          }
        }

        v283 = *(a1 + 94);
        v19 = v278;
        v281 = v273;
        while (2)
        {
          v304 = 0;
          *v303 = 0u;
          v305 = 1;
          v307 = 0;
          v308 = 0;
          v306 = 0;
          v309[0] = 1;
          *&v309[4] = 0x8000000080000000;
          *&v309[12] = 0;
          v309[14] = 0;
          *v297 = 0;
          *&v297[16] = 0u;
          *&v298[16] = 0u;
          v301[0] = 0x7FFFFFFFuLL;
          *&v297[4] = 0x8000000080000000;
          *&v297[12] = 0x7FFFFFFF;
          *&v297[20] = 0x8000000080000000;
          *&v298[8] = xmmword_2266560;
          *v298 = 0xFFFFFFFFLL;
          *&v298[24] = -1;
          *__dst = 0u;
          memset(v300, 0, sizeof(v300));
          v301[1] = 0uLL;
          *v302 = 1;
          *&v302[4] = xmmword_22A7500;
          if (v19[4] == -1)
          {
            goto LABEL_214;
          }

          v286 = xmmword_2297BF0;
          LOWORD(v287) = 0;
          *(&v287 + 4) = 0x8000000080000000;
          WORD6(v287) = 0;
          *v288 = xmmword_22A7450;
          *&v288[16] = -COERCE_DOUBLE(0x8000000080000000);
          v289 = 0uLL;
          v290 = 0uLL;
          v291 = 0uLL;
          *&v288[24] = -1;
          v292 = 0x7FFFFFFF;
          v294 = 0;
          v295 = 0;
          v293 = 0;
          LOBYTE(v296) = 1;
          *(&v296 + 4) = 0x8000000080000000;
          HIDWORD(v296) = 0;
          v305 = 0;
          v21 = *sub_A9C5E0((a1[5] + 88), v19[4]);
          *v288 = v21;
          v22 = *(v19 + 1);
          *&v288[16] = v19[3];
          *&v288[8] = v22;
          *&v288[20] = *v19;
          v23 = *&v288[20];
          v24 = a1[3];
          v341 = *sub_A9C5E0((a1[4] + 88), v283);
          sub_A79708(&v342, v24, v21, v23, 0, 0);
          v349 = (v348 + 12 * *&v288[8]);
          if (v352[0] == 1)
          {
            *&v352[4] = *&v288[12];
          }

          if (v347)
          {
            v25 = *(v347 + 4 * ((v345 - v344) >> 4));
          }

          else
          {
            v25 = 0;
          }

          sub_AA98A0(&v342, &v341, v25);
          _CF = v345 < v346 && v345 >= v344;
          v27 = (v345 - v344) >> 4;
          if (!_CF)
          {
            LODWORD(v27) = -1;
          }

          *&v288[24] = v27;
          v28 = a1[4];
          v29 = *&v288[20];
          v30 = sub_A57920((a1[3] + 4136), *v288);
          v31 = (v30 - *v30);
          if (*v31 >= 9u && (v32 = v31[4]) != 0)
          {
            v33 = (v30 + v32 + *(v30 + v32));
          }

          else
          {
            v33 = 0;
          }

          v34 = __ROR8__(*sub_A571D4(v33, v29), 32);
          v35 = *(v28 + 56) - 1;
          v36 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v34 ^ (v34 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v34 ^ (v34 >> 33))) >> 33));
          v37 = v36 ^ (v36 >> 33);
          v38 = *(v28 + 80);
          v40 = *(v28 + 64);
          v39 = *(v28 + 68);
          v41 = v37 & v35;
          v42 = (v38 + 12 * (v37 & v35));
          v44 = *v42;
          v43 = v42[1];
          if (v39 == v43 && v40 == v44)
          {
            goto LABEL_48;
          }

          if (*(v28 + 40))
          {
            v45 = -1;
            v60 = 1;
            do
            {
              if (*(v28 + 36) == v43 && *(v28 + 32) == v44)
              {
                if (v45 == -1)
                {
                  v45 = v41;
                }
              }

              else if (__PAIR64__(v43, v44) == v34)
              {
                goto LABEL_93;
              }

              v41 = (v41 + v60) & v35;
              v61 = (v38 + 12 * v41);
              v44 = *v61;
              v43 = v61[1];
              ++v60;
            }

            while (v39 != v43 || v40 != v44);
            if (v45 == -1)
            {
LABEL_48:
              v45 = v41;
            }

LABEL_49:
            if (!sub_A99094(v28, 1))
            {
              v64 = *(v28 + 40);
              v63 = *(v28 + 48);
              if ((v63 - v64) >= 0x1555555555555555)
              {
                goto LABEL_401;
              }

              v47 = *(v28 + 80);
              if (v64 && ((v65 = (v47 + 12 * v45), *(v28 + 36) == v65[1]) ? (v66 = *(v28 + 32) == *v65) : (v66 = 0), v66))
              {
                *(v28 + 40) = v64 - 1;
              }

              else
              {
                *(v28 + 48) = v63 + 1;
              }

              v71 = 3 * v45;
              goto LABEL_121;
            }

            v46 = *(v28 + 56) - 1;
            v47 = *(v28 + 80);
            v49 = *(v28 + 64);
            v48 = *(v28 + 68);
            v50 = v46 & v37;
            v51 = (v47 + 12 * (v46 & v37));
            v53 = *v51;
            v52 = v51[1];
            v54 = *(v28 + 40);
            if (v48 == v52 && v49 == v53)
            {
              goto LABEL_111;
            }

            if (v54)
            {
              v56 = -1;
              v57 = 1;
              do
              {
                if (*(v28 + 36) == v52 && *(v28 + 32) == v53)
                {
                  if (v56 == -1)
                  {
                    v56 = v50;
                  }
                }

                else if (__PAIR64__(v52, v53) == v34)
                {
                  goto LABEL_106;
                }

                v50 = (v50 + v57) & v46;
                v58 = (v47 + 12 * v50);
                v53 = *v58;
                v52 = v58[1];
                ++v57;
              }

              while (v48 != v52 || v49 != v53);
              if (v56 == -1)
              {
LABEL_111:
                v56 = v50;
              }

              v75 = *(v28 + 48);
              if ((v75 - v54) >= 0x1555555555555555)
              {
                goto LABEL_401;
              }

LABEL_113:
              if (v54 && ((v76 = (v47 + 12 * v56), *(v28 + 36) == v76[1]) ? (v77 = *(v28 + 32) == *v76) : (v77 = 0), v77))
              {
                *(v28 + 40) = v54 - 1;
              }

              else
              {
                *(v28 + 48) = v75 + 1;
              }

              v71 = 3 * v56;
LABEL_121:
              v78 = 4 * v71;
              v79 = v47 + v78;
              *v79 = v34;
              *(v79 + 8) = -1;
              v70 = *(v28 + 80) + v78;
              v283 = *(v70 + 8);
              if (v283 == -1)
              {
LABEL_122:
                v80 = *(v28 + 112);
                *(v28 + 112) = v80 + 1;
                *(v70 + 8) = v80;
                v82 = *(v28 + 96);
                v81 = *(v28 + 104);
                if (v82 >= v81)
                {
                  v84 = *(v28 + 88);
                  v85 = v82 - v84;
                  v86 = (v82 - v84) >> 3;
                  v87 = v86 + 1;
                  if ((v86 + 1) >> 61)
                  {
                    sub_1794();
                  }

                  v88 = v81 - v84;
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

                  v90 = v86;
                  v91 = (8 * v86);
                  v92 = &v91[-v90];
                  *v91 = v34;
                  v83 = v91 + 1;
                  memcpy(v92, v84, v85);
                  *(v28 + 88) = v92;
                  *(v28 + 96) = v83;
                  *(v28 + 104) = 0;
                  if (v84)
                  {
                    operator delete(v84);
                  }

                  a1 = v285;
                }

                else
                {
                  *v82 = v34;
                  v83 = v82 + 8;
                }

                *(v28 + 96) = v83;
                v283 = *(v70 + 8);
              }
            }

            else
            {
              v72 = 1;
              while (__PAIR64__(v52, v53) != v34)
              {
                v50 = (v50 + v72) & v46;
                v73 = (v47 + 12 * v50);
                v53 = *v73;
                v52 = v73[1];
                ++v72;
                if (v48 == v52 && v49 == v53)
                {
                  v54 = 0;
                  goto LABEL_111;
                }
              }

LABEL_106:
              if (v50 == -1)
              {
                v56 = -1;
                v75 = *(v28 + 48);
                if ((v75 - v54) >= 0x1555555555555555)
                {
LABEL_401:
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "insert overflow");
                }

                goto LABEL_113;
              }

              v70 = v47 + 12 * v50;
              v283 = *(v70 + 8);
              if (v283 == -1)
              {
                goto LABEL_122;
              }
            }
          }

          else
          {
            v67 = 1;
            while (__PAIR64__(v43, v44) != v34)
            {
              v41 = (v41 + v67) & v35;
              v68 = (v38 + 12 * v41);
              v44 = *v68;
              v43 = v68[1];
              ++v67;
              if (v39 == v43 && v40 == v44)
              {
                goto LABEL_48;
              }
            }

LABEL_93:
            if (v41 == -1)
            {
              v45 = -1;
              goto LABEL_49;
            }

            v70 = v38 + 12 * v41;
            v283 = *(v70 + 8);
            if (v283 == -1)
            {
              goto LABEL_122;
            }
          }

          v93 = *&v288[20];
          v94 = sub_A57920((a1[3] + 4136), *v288);
          v95 = (v94 - *v94);
          if (*v95 >= 9u && (v96 = v95[4]) != 0)
          {
            v97 = (v94 + v96 + *(v94 + v96));
          }

          else
          {
            v97 = 0;
          }

          DWORD1(v286) = 10 * sub_A571D4(v97, v93)[2];
          v98 = a1[3];
          v99 = *v288;
          v100 = *&v288[20];
          v101 = *&v288[8];
          v102 = sub_A5706C((v98 + 4136), *v288);
          v103 = v102;
          v104 = &v102[-*v102];
          if (*v104 < 5u)
          {
            v105 = 0;
          }

          else
          {
            v105 = *(v104 + 2);
            if (v105)
            {
              v105 += &v102[*&v102[v105]];
            }
          }

          v106 = (v105 + 4 * v99 + 4 + *(v105 + 4 * v99 + 4));
          v107 = (v106 - *v106);
          if (*v107 >= 9u && (v108 = v107[4]) != 0)
          {
            v109 = (v106 + v108 + *(v106 + v108));
          }

          else
          {
            v109 = 0;
          }

          v110 = sub_A571D4(v109, v100);
          v111 = (v103 - *v103);
          if (*v111 < 0xBu)
          {
            v112 = 0;
            v113 = (v106 - *v106);
            if (*v113 >= 0x11u)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v112 = v111[5];
            if (v112)
            {
              v112 = (v112 + v103 + *(v112 + v103));
            }

            v113 = (v106 - *v106);
            if (*v113 >= 0x11u)
            {
LABEL_153:
              v114 = v113[8];
              if (v113[8])
              {
                LODWORD(v114) = *(v106 + v114);
              }

LABEL_157:
              v115 = sub_A57320(v112, v114 + *(v106 + v113[2] + *(v106 + v113[2])) * v101 + *(v110 + 14));
              if (v115)
              {
                v116 = __ROR8__(*v115, 32);
                v117 = v115[2];
              }

              else
              {
                v117 = 0;
                v116 = 0xFFFFFFFFLL;
              }

              *&v342 = v116;
              DWORD2(v342) = v117;
              v118 = sub_A57920((v98 + 4136), v99);
              v119 = (v118 - *v118);
              if (*v119 >= 9u && (v120 = v119[4]) != 0)
              {
                v121 = (v118 + v120 + *(v118 + v120));
              }

              else
              {
                v121 = 0;
              }

              v122 = *(sub_A571D4(v121, v100) + 6);
              if (*&v288[12] == -1)
              {
                v123 = 0x7FFFFFFF;
              }

              else
              {
                v123 = *&v288[16];
              }

              *(&v286 + 1) = sub_A56700((v98 + 4184), &v342, v122, v123);
              LOWORD(v287) = v124;
              v125 = v285[3];
              v126 = *v288;
              v127 = *&v288[24];
              v128 = *&v288[8];
              v129 = sub_A5706C((v125 + 4136), *v288);
              v130 = v129;
              v131 = &v129[-*v129];
              if (*v131 < 5u)
              {
                v132 = 0;
              }

              else
              {
                v132 = *(v131 + 2);
                if (v132)
                {
                  v132 += &v129[*&v129[v132]];
                }
              }

              v133 = (v132 + 4 * v126 + 4 + *(v132 + 4 * v126 + 4));
              v134 = (v133 - *v133);
              if (*v134 >= 9u && (v135 = v134[4]) != 0)
              {
                v136 = (v133 + v135 + *(v133 + v135));
              }

              else
              {
                v136 = 0;
              }

              v137 = sub_A571D4(v136, v127);
              v138 = (v130 - *v130);
              if (*v138 < 0xBu)
              {
                v139 = 0;
                v140 = (v133 - *v133);
                if (*v140 >= 0x11u)
                {
                  goto LABEL_179;
                }
              }

              else
              {
                v139 = v138[5];
                if (v139)
                {
                  v139 = (v139 + v130 + *(v139 + v130));
                }

                v140 = (v133 - *v133);
                if (*v140 >= 0x11u)
                {
LABEL_179:
                  v141 = v140[8];
                  if (v140[8])
                  {
                    LODWORD(v141) = *(v133 + v141);
                  }

LABEL_183:
                  v142 = sub_A57320(v139, v141 + *(v133 + v140[2] + *(v133 + v140[2])) * v128 + *(v137 + 14));
                  if (v142)
                  {
                    v143 = __ROR8__(*v142, 32);
                    v144 = v142[2];
                  }

                  else
                  {
                    v144 = 0;
                    v143 = 0xFFFFFFFFLL;
                  }

                  *&v342 = v143;
                  DWORD2(v342) = v144;
                  v145 = sub_A57920((v125 + 4136), v126);
                  v146 = (v145 - *v145);
                  if (*v146 >= 9u && (v147 = v146[4]) != 0)
                  {
                    v148 = (v145 + v147 + *(v145 + v147));
                  }

                  else
                  {
                    v148 = 0;
                  }

                  v149 = *(sub_A571D4(v148, v127) + 6);
                  if (*&v288[12] == -1)
                  {
                    v150 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v150 = *&v288[16];
                  }

                  *(&v287 + 4) = sub_A56A5C((v125 + 4184), &v342, v149, v150);
                  WORD6(v287) = v151;
                  if (*&v302[16])
                  {
                    sub_A332F8(&v342, &v286);
                    a1 = v285;
                    sub_A34B68(v297, &v342);
                    if (v353)
                    {
                      v354 = v353;
                      operator delete(v353);
                    }

                    if (v351)
                    {
                      *v352 = v351;
                      operator delete(v351);
                    }

                    if (v349)
                    {
                      v350 = v349;
                      operator delete(v349);
                    }

                    v152 = v293;
                    if (v293)
                    {
                      goto LABEL_201;
                    }
                  }

                  else
                  {
                    *v297 = v286;
                    *&v297[16] = v287;
                    *v298 = *v288;
                    *&v298[12] = *&v288[12];
                    v166 = v289;
                    v167 = *(&v289 + 1) - v289;
                    v168 = *&v300[0];
                    v169 = __dst[0];
                    a1 = v285;
                    if (*&v300[0] - __dst[0] < *(&v289 + 1) - v289)
                    {
                      if (__dst[0])
                      {
                        __dst[1] = __dst[0];
                        operator delete(__dst[0]);
                        v168 = 0;
                        __dst[0] = 0;
                        __dst[1] = 0;
                        *&v300[0] = 0;
                      }

                      v170 = 0xEEEEEEEEEEEEEEEFLL * (v167 >> 2);
                      if (v170 <= 0x444444444444444)
                      {
                        v171 = 0xEEEEEEEEEEEEEEEFLL * (v168 >> 2);
                        if (2 * v171 > v170)
                        {
                          v170 = 2 * v171;
                        }

                        if (v171 >= 0x222222222222222)
                        {
                          v172 = 0x444444444444444;
                        }

                        else
                        {
                          v172 = v170;
                        }

                        if (v172 <= 0x444444444444444)
                        {
                          operator new();
                        }
                      }

                      sub_1794();
                    }

                    v214 = __dst[1];
                    v215 = __dst[1] - __dst[0];
                    if ((__dst[1] - __dst[0]) >= v167)
                    {
                      if (*(&v289 + 1) != v289)
                      {
                        v218 = __dst[0];
                        memmove(__dst[0], v289, v167 - 3);
                        v169 = v218;
                      }

                      v217 = &v169[v167];
                    }

                    else
                    {
                      if (__dst[1] != __dst[0])
                      {
                        memmove(__dst[0], v289, v215 - 3);
                        v214 = __dst[1];
                      }

                      v216 = *(&v166 + 1) - (v166 + v215);
                      if (v216)
                      {
                        memmove(v214, (v166 + v215), v216 - 3);
                      }

                      v217 = &v214[v216];
                    }

                    __dst[1] = v217;
                    sub_A349D4(v300 + 1, *(&v290 + 1), v291, 0xEEEEEEEEEEEEEEEFLL * ((v291 - *(&v290 + 1)) >> 2));
                    LODWORD(v301[0]) = v292;
                    sub_956400(v301 + 1, v293, v294, 0xCCCCCCCCCCCCCCCDLL * ((v294 - v293) >> 3));
                    *v302 = v296;
                    v152 = v293;
                    if (v293)
                    {
LABEL_201:
                      v294 = v152;
                      operator delete(v152);
                    }
                  }

                  if (*(&v290 + 1))
                  {
                    *&v291 = *(&v290 + 1);
                    operator delete(*(&v290 + 1));
                  }

                  if (v289)
                  {
                    *(&v289 + 1) = v289;
                    operator delete(v289);
                  }

                  if (v19[4] != -1)
                  {
                    v153 = v303[1];
                    if (v303[1] < v304)
                    {
                      goto LABEL_208;
                    }

LABEL_235:
                    v155 = sub_AA9AE0(v303, v297);
                    v303[1] = v155;
                    v156 = *(&v335 + 1);
                    v157 = v336;
                    if (*(&v335 + 1) >= v336)
                    {
LABEL_236:
                      v173 = 0x8E38E38E38E38E39 * ((v156 - v335) >> 3);
                      v174 = v173 + 1;
                      if (v173 + 1 > 0x38E38E38E38E38ELL)
                      {
                        sub_1794();
                      }

                      v175 = 0x8E38E38E38E38E39 * ((v157 - v335) >> 3);
                      if (2 * v175 > v174)
                      {
                        v174 = 2 * v175;
                      }

                      if (v175 >= 0x1C71C71C71C71C7)
                      {
                        v176 = 0x38E38E38E38E38ELL;
                      }

                      else
                      {
                        v176 = v174;
                      }

                      v345 = &v335;
                      if (v176)
                      {
                        if (v176 <= 0x38E38E38E38E38ELL)
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v177 = (8 * ((v156 - v335) >> 3));
                      *&v342 = 0;
                      *(&v342 + 1) = v177;
                      v343 = 72 * v173;
                      v344 = 0;
                      v177[1] = 0;
                      v177[2] = 0;
                      *v177 = 0;
                      if (v155 != v303[0])
                      {
                        if (0xCF3CF3CF3CF3CF3DLL * ((v155 - v303[0]) >> 3) <= 0x186186186186186)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      v178 = v305;
                      *(&stru_20.cmd + 9 * v173) = 0;
                      LOBYTE(dword_18[18 * v173]) = v178;
                      *&stru_20.segname[72 * v173] = 0;
                      *&stru_20.segname[72 * v173 + 8] = 0;
                      if (v307 != v306)
                      {
                        if (0xCCCCCCCCCCCCCCCDLL * ((v307 - v306) >> 3) <= 0x666666666666666)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      *&stru_20.segname[72 * v173 + 16] = *v309;
                      *&stru_20.segname[72 * v173 + 23] = *&v309[7];
                      v165 = v343 + 72;
                      v343 += 72;
                      v179 = *(&v335 + 1);
                      v180 = v335;
                      v181 = *(&v342 + 1) + v335 - *(&v335 + 1);
                      if (v335 != *(&v335 + 1))
                      {
                        v182 = v335;
                        v183 = *(&v342 + 1) + v335 - *(&v335 + 1);
                        do
                        {
                          *v183 = 0;
                          *(v183 + 8) = 0;
                          *(v183 + 16) = 0;
                          *v183 = *v182;
                          *(v183 + 16) = *(v182 + 16);
                          *(v182 + 8) = 0;
                          *(v182 + 16) = 0;
                          *v182 = 0;
                          *(v183 + 24) = *(v182 + 24);
                          *(v183 + 40) = 0;
                          *(v183 + 48) = 0;
                          *(v183 + 32) = 0;
                          *(v183 + 32) = *(v182 + 32);
                          *(v183 + 48) = *(v182 + 48);
                          *(v182 + 32) = 0;
                          *(v182 + 40) = 0;
                          *(v182 + 48) = 0;
                          v184 = *(v182 + 56);
                          *(v183 + 63) = *(v182 + 63);
                          *(v183 + 56) = v184;
                          v182 += 72;
                          v183 += 72;
                        }

                        while (v182 != v179);
                        do
                        {
                          v186 = v180[4];
                          if (v186)
                          {
                            v180[5] = v186;
                            operator delete(v186);
                          }

                          v187 = *v180;
                          if (*v180)
                          {
                            v188 = v180[1];
                            v185 = *v180;
                            if (v188 != v187)
                            {
                              do
                              {
                                v189 = v188 - 168;
                                v190 = *(v188 - 2);
                                if (v190 != -1)
                                {
                                  (off_2670F08[v190])(&v286, v188 - 168);
                                }

                                *(v188 - 2) = -1;
                                v188 -= 168;
                              }

                              while (v189 != v187);
                              v185 = *v180;
                            }

                            v180[1] = v187;
                            operator delete(v185);
                          }

                          v180 += 9;
                        }

                        while (v180 != v179);
                      }

                      v191 = v335;
                      *&v335 = v181;
                      *(&v335 + 1) = v165;
                      *&v336 = v344;
                      if (v191)
                      {
                        operator delete(v191);
                      }

                      v163 = v285;
LABEL_269:
                      *(&v335 + 1) = v165;
                      v192 = v281 + *(v163 + 30) + *(v163 + 30) * v283 + 1;
                      v193 = v19[5];
                      v195 = v163[16];
                      v194 = v163[17];
                      v196 = (v194 - v195) >> 3;
                      if (v196 <= v192)
                      {
                        v202 = v281 + *(v163 + 30) + *(v163 + 30) * v283 + 2;
                        v203 = v202 - v196;
                        if (v202 <= v196)
                        {
                          if (v202 >= v196)
                          {
                            goto LABEL_270;
                          }

                          v194 = &v195[8 * v202];
                          v197 = v285;
                          v285[17] = v194;
                        }

                        else
                        {
                          v197 = v285;
                          v204 = v285[18];
                          if (v203 > (v204 - v194) >> 3)
                          {
                            v205 = v204 - v195;
                            if (v205 >> 2 > v202)
                            {
                              v202 = v205 >> 2;
                            }

                            if (v205 >= 0x7FFFFFFFFFFFFFF8)
                            {
                              v206 = 0x1FFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v206 = v202;
                            }

                            if (!(v206 >> 61))
                            {
                              operator new();
                            }

LABEL_403:
                            sub_1808();
                          }

                          bzero(v194, 8 * v203);
                          v194 += 8 * v203;
                          v285[17] = v194;
                          v195 = v285[16];
                        }
                      }

                      else
                      {
LABEL_270:
                        v197 = v285;
                      }

                      v198 = v197[19];
                      v199 = *&v195[8 * v192];
                      v200 = (v194 - v195) >> 3;
                      if (v200 <= v192)
                      {
                        v207 = (v192 + 1);
                        v208 = v207 - v200;
                        if (v207 <= v200)
                        {
                          if (v207 < v200)
                          {
                            v285[17] = &v195[8 * v207];
                          }

                          goto LABEL_272;
                        }

                        v209 = v285;
                        v210 = v285[18];
                        if (v208 <= (v210 - v194) >> 3)
                        {
                          bzero(v194, 8 * v208);
                          v285[17] = &v194[8 * v208];
                        }

                        else
                        {
                          __n = *&v195[8 * v192];
                          v211 = v194 - v195;
                          v212 = (v211 >> 3) + v208;
                          if (v212 >> 61)
                          {
                            sub_1794();
                          }

                          v213 = v210 - v195;
                          if (v213 >> 2 > v212)
                          {
                            v212 = v213 >> 2;
                          }

                          if (v213 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v212 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          if (v212)
                          {
                            if (!(v212 >> 61))
                            {
                              operator new();
                            }

                            goto LABEL_403;
                          }

                          v209 = v285;
                          v219 = (8 * (v211 >> 3));
                          v220 = 8 * v208;
                          bzero(v219, v220);
                          memcpy(0, v195, v211);
                          v285[16] = 0;
                          v285[17] = &v219[v220];
                          v285[18] = 0;
                          v199 = __n;
                          if (v195)
                          {
                            operator delete(v195);
                          }
                        }

                        v195 = v209[16];
                        v201 = v209[19];
                      }

                      else
                      {
LABEL_272:
                        v201 = v198;
                      }

                      v19 = (v198 + 56 * v199);
                      v221 = (v201 + 56 * *&v195[8 * v192 + 4]);
                      if (v19 == v221)
                      {
                        v19 = 0;
                        a1 = v285;
                      }

                      else
                      {
                        a1 = v285;
                        while (v19[6] != v193)
                        {
                          v19 += 14;
                          if (v19 == v221)
                          {
                            v19 = 0;
                            break;
                          }
                        }
                      }

                      if (*&v302[16] != -1)
                      {
                        (off_2670F08[*&v302[16]])(&v342, v297);
                      }

                      if (v306)
                      {
                        v307 = v306;
                        operator delete(v306);
                      }

                      v222 = v303[0];
                      if (v303[0])
                      {
                        v223 = v303[1];
                        v20 = v303[0];
                        if (v303[1] != v303[0])
                        {
                          do
                          {
                            v224 = v223 - 168;
                            v225 = *(v223 - 2);
                            if (v225 != -1)
                            {
                              (off_2670F08[v225])(v297, v223 - 168);
                            }

                            *(v223 - 2) = -1;
                            v223 -= 168;
                          }

                          while (v224 != v222);
                          v20 = v303[0];
                        }

                        v303[1] = v222;
                        operator delete(v20);
                      }

                      --v281;
                      if (*v19 == -1)
                      {
                        goto LABEL_330;
                      }

                      continue;
                    }

LABEL_211:
                    *v156 = 0;
                    *(v156 + 8) = 0;
                    *(v156 + 16) = 0;
                    if (v303[1] != v303[0])
                    {
                      if (0xCF3CF3CF3CF3CF3DLL * ((v303[1] - v303[0]) >> 3) <= 0x186186186186186)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v162 = v305;
                    *(v156 + 32) = 0;
                    *(v156 + 24) = v162;
                    *(v156 + 40) = 0;
                    *(v156 + 48) = 0;
                    v163 = v285;
                    if (v307 != v306)
                    {
                      if (0xCCCCCCCCCCCCCCCDLL * ((v307 - v306) >> 3) <= 0x666666666666666)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v164 = *v309;
                    *(v156 + 63) = *&v309[7];
                    *(v156 + 56) = v164;
                    v165 = v156 + 72;
                    goto LABEL_269;
                  }

LABEL_214:
                  v305 = 1;
                  v158 = v19[3];
                  v159 = v19[7];
                  v160 = *sub_A9C5E0((a1[4] + 88), *v19);
                  v161 = *sub_A9C5E0((a1[4] + 88), v283);
                  if (*&v302[16] != -1)
                  {
                    if (*&v302[16] == 1)
                    {
                      *v297 = 0;
                      *&v297[4] = v158;
                      *&v297[8] = v159;
                      *&v297[12] = v160;
                      *&v297[20] = v161;
                      v283 = *v19;
                      v153 = v303[1];
                      if (v303[1] >= v304)
                      {
                        goto LABEL_235;
                      }

LABEL_208:
                      *v153 = 0;
                      v153[40] = -1;
                      v154 = *&v302[16];
                      if (*&v302[16] != -1)
                      {
                        *&v342 = v153;
                        (off_2670F18[*&v302[16]])(&v342, v297);
                        v153[40] = v154;
                      }

                      v155 = v153 + 42;
                      v303[1] = v153 + 42;
                      v156 = *(&v335 + 1);
                      v157 = v336;
                      if (*(&v335 + 1) >= v336)
                      {
                        goto LABEL_236;
                      }

                      goto LABEL_211;
                    }

                    (off_2670F08[*&v302[16]])(&v342, v297);
                  }

                  *v297 = 0;
                  *&v297[4] = v158;
                  *&v297[12] = v160;
                  *&v297[20] = v161;
                  *&v297[8] = v159;
                  *&v302[16] = 1;
                  v283 = *v19;
                  v153 = v303[1];
                  if (v303[1] >= v304)
                  {
                    goto LABEL_235;
                  }

                  goto LABEL_208;
                }
              }

              LODWORD(v141) = 0;
              goto LABEL_183;
            }
          }

          break;
        }

        LODWORD(v114) = 0;
        goto LABEL_157;
      }

LABEL_8:
      if (++v273 == v272)
      {
        goto LABEL_382;
      }
    }

    v12 = a1[19];
    v13 = *v11;
LABEL_11:
    v14 = v12;
    goto LABEL_14;
  }

LABEL_382:
  if (v271 != a1 + 60)
  {
    v262 = *(a1 + 503);
    if (*(a3 + 55) < 0)
    {
      if (v262 >= 0)
      {
        v263 = a1 + 60;
      }

      else
      {
        v263 = a1[60];
      }

      if (v262 >= 0)
      {
        v264 = *(a1 + 503);
      }

      else
      {
        v264 = a1[61];
      }

      sub_13B38(v271, v263, v264);
    }

    else if ((*(a1 + 503) & 0x80) != 0)
    {
      sub_13A68(v271, a1[60], a1[61]);
    }

    else
    {
      *v271 = *(a1 + 30);
      v271[2] = a1[62];
    }
  }

  v265 = *(a1 + 73);
  *(a3 + 120) = *(a1 + 71);
  *(a3 + 136) = v265;
  v266 = *(a1 + 77);
  *(a3 + 152) = *(a1 + 75);
  *(a3 + 168) = v266;
  v267 = *(a1 + 65);
  *(a3 + 56) = *(a1 + 63);
  *(a3 + 72) = v267;
  result = *(a1 + 67);
  v269 = *(a1 + 69);
  *(a3 + 88) = result;
  *(a3 + 104) = v269;
  return result;
}

void sub_ACCB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  STACK[0x288] = v16 + 240;
  sub_A31F30(&STACK[0x288]);
  v18 = *(v16 + 216);
  if (v18)
  {
    *(v16 + 224) = v18;
    operator delete(v18);
    v19 = *a10;
    if (*a10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *a10;
    if (*a10)
    {
LABEL_3:
      *(v16 + 200) = v19;
      operator delete(v19);
      if ((*(v16 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  if ((*(v16 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    v20 = a16;
    if (!*a16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a11);
  v20 = a16;
  if (!*a16)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  sub_A95778(v20);
  operator delete(*v20);
  _Unwind_Resume(a1);
}

double sub_ACD084(uint64_t a1)
{
  *(a1 + 200) = 0;
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 184) = 0;
  v2 = *(a1 + 232);
  v3 = *(a1 + 240);
  if (v2 != v3)
  {
    v4 = *(a1 + 208);
    v5 = *(a1 + 232);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(a1 + 240) = v2;
  v7 = *(a1 + 280);
  v8 = *(a1 + 288);
  if (v7 != v8)
  {
    v9 = *(a1 + 256);
    v10 = *(a1 + 280);
    do
    {
      v11 = *v10++;
      *(v9 + ((v11 >> 3) & 0x1FFFFFF8)) &= ~(1 << v11);
    }

    while (v10 != v8);
  }

  *(a1 + 288) = v7;
  v12 = *(a1 + 352);
  v13 = *(a1 + 360);
  if (v12 != v13)
  {
    v14 = *(a1 + 328);
    v15 = *(a1 + 304);
    v16 = *(a1 + 352);
    do
    {
      v17 = *v16++;
      *(v14 + ((v17 >> 3) & 0x1FFFFFF8)) &= ~(1 << v17);
      *(v15 + 4 * v17) = -1;
    }

    while (v16 != v13);
  }

  *(a1 + 360) = v12;
  sub_C4306C((a1 + 384));
  v25 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v26, &__p);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  *(a1 + 480) = v26;
  *(a1 + 496) = v27;
  HIBYTE(v27) = 0;
  LOBYTE(v26) = 0;
  v18 = v33;
  *(a1 + 568) = v32;
  *(a1 + 584) = v18;
  v19 = v35;
  *(a1 + 600) = v34;
  *(a1 + 616) = v19;
  v20 = v29;
  *(a1 + 504) = v28;
  *(a1 + 520) = v20;
  v21 = v31;
  *(a1 + 536) = v30;
  *(a1 + 552) = v21;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v22 = COERCE_DOUBLE(vadd_s32(vdup_n_s32(2 * *(a1 + 16)), 0x200000004));
  *(a1 + 120) = v22;
  return sub_C430C8((a1 + 384), *(a1 + 8), v22);
}

void sub_ACD23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ACD258(uint64_t a1)
{
  if (sub_A822FC(*(a1 + 24)))
  {
    v2 = *(a1 + 68);
    v3 = *(a1 + 200);
    *(a1 + 200) = v3 + 1;
    v4 = *(a1 + 32);
    *&v21 = 0x1FFFFFFFELL;
    v5 = sub_A98E8C(v4, &v21);
    v6 = *(v5 + 8);
    if (v6 == -1)
    {
      v7 = *(v4 + 112);
      *(v4 + 112) = v7 + 1;
      *(v5 + 8) = v7;
      v8 = v5;
      sub_2512DC(v4 + 88, &v21);
      v6 = *(v8 + 8);
    }

    v28 = v6;
    sub_AD0464((a1 + 128), 0);
    v21 = xmmword_229B660;
    v22 = -1;
    v23 = v3;
    v24 = v2;
    v25 = 0;
    v26 = -1;
    v27 = 0x7FFFFFFF;
    v9 = *(a1 + 128);
    if (*(a1 + 136) == v9 || (v11 = *v9, v10 = *(*(a1 + 128) + 4), v10 == v11))
    {
      sub_AD0BAC((a1 + 128), 0, &v21);
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 152);
      v17 = (v16 + 56 * v10);
      v18 = (v16 + 56 * v11);
      do
      {
        v19 = v18[7];
        if (v19 != 0x7FFFFFFF)
        {
          if (v19 <= v24 && v18[8] <= v25 && v18[9] <= HIDWORD(v25))
          {
            goto LABEL_26;
          }

          if (v24 <= v19 && v25 <= v18[8] && HIDWORD(v25) <= v18[9])
          {
            v18[7] = 0x7FFFFFFF;
            v15 = 1;
          }
        }

        v18 += 14;
      }

      while (v18 != v17);
      v20 = sub_AD0BAC((a1 + 128), 0, &v21);
      *(v20 + 44) = -1;
      *(v20 + 52) = 0x7FFFFFFF;
LABEL_26:
      if (v15)
      {
        sub_AD10F4((a1 + 128), 0);
      }
    }

    v12 = *(a1 + 120);
    v13 = v12 * (v6 + 1);
    v14 = v13 + 2;
    if (*(a1 + 20) == 1)
    {
      if (!sub_AD0554((a1 + 128), 0, v14, v13, v12 + v12 * *(a1 + 376), 2147483646))
      {
        return;
      }
    }

    else if (!sub_AD0554((a1 + 128), 0, v14, v13, 0xFFFFFFFF, 2147483646))
    {
      return;
    }

    if (*(a1 + 216) <= v6)
    {
      sub_4D9168(a1 + 208, v6 + 1, 0);
    }

    if (((*(*(a1 + 208) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6) & 1) == 0)
    {
      sub_DD38(a1 + 232, &v28);
      *(*(a1 + 208) + ((v28 >> 3) & 0x1FFFFFF8)) |= 1 << v28;
    }
  }
}

double sub_ACD4EC(uint64_t a1, int a2)
{
  sub_7E9A4(v40);
  v4 = *(a1 + 232);
  v38 = *(a1 + 240);
  if (v4 != v38)
  {
    while (1)
    {
      v39 = *v4;
      v5 = *sub_A9C5E0((*(a1 + 32) + 88), v39);
      if (HIDWORD(v5) == 1 && (v5 + 3) < 2)
      {
LABEL_12:
        v11 = 0;
        goto LABEL_17;
      }

      v7 = *(*(a1 + 24) + 4120);
      if (*(v7 + 17) == 1)
      {
        break;
      }

      v8 = sub_502FF8(v7 + 24, __ROR8__(v5, 32), 0, "stop");
      v12 = (v8 - *v8);
      if (*v12 >= 0x15u)
      {
        v10 = v12[10];
        if (v10)
        {
          goto LABEL_15;
        }
      }

      v11 = 30;
LABEL_17:
      sub_AD0464((a1 + 128), 0);
      sub_AD1858((a1 + 128), a2 + 1 + *(a1 + 120) + *(a1 + 120) * v39, 0);
      v13 = *(a1 + 128);
      if (*(a1 + 136) != v13)
      {
        v14 = *(a1 + 152);
        v15 = *v13;
LABEL_19:
        v16 = v14;
        goto LABEL_22;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v14 = *(a1 + 152);
      v15 = *v13;
      if (*(a1 + 136) != v13)
      {
        goto LABEL_19;
      }

      sub_30B70(a1 + 128, 1uLL);
      v13 = *(a1 + 128);
      v16 = *(a1 + 152);
LABEL_22:
      v17 = (v14 + 56 * v15);
      v18 = (v16 + 56 * v13[1]);
      if (v17 == v18)
      {
        goto LABEL_29;
      }

      v19 = v39;
      v20 = v18 - v17 - 56;
      if (v20 <= 0x37)
      {
        v21 = (v14 + 56 * v15);
        do
        {
LABEL_28:
          *v21 = v19;
          v27 = *(v21 + 7);
          *(v21 + 3) = v27;
          *(v21 + 4) = -1;
          *(v21 + 7) = v27 + v11;
          v21 += 56;
        }

        while (v21 != v18);
        goto LABEL_29;
      }

      v22 = v20 / 0x38 + 1;
      v21 = &v17[56 * (v22 & 0xFFFFFFFFFFFFFFELL)];
      v23 = (v17 + 84);
      v24 = v22 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v23 - 21) = v19;
        *(v23 - 7) = v19;
        v25 = *(v23 - 14);
        v26 = *v23;
        *(v23 - 18) = v25;
        *(v23 - 17) = -1;
        *(v23 - 4) = v26;
        *(v23 - 3) = -1;
        *(v23 - 14) = v25 + v11;
        *v23 = v26 + v11;
        v23 += 28;
        v24 -= 2;
      }

      while (v24);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_28;
      }

LABEL_29:
      v28 = v39;
      v29 = *(a1 + 120);
      if (*(a1 + 20) == 1)
      {
        v30 = v29 + v29 * *(a1 + 376) + 1;
        v31 = *(a1 + 48);
        if (v31)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v30 = -1;
        v31 = *(a1 + 48);
        if (v31)
        {
LABEL_31:
          if (*v31 > v39)
          {
            v32 = 0;
            v33 = *(a1 + 124) + ~a2;
            v34 = v33;
            while (v32 <= v33)
            {
              v35 = *sub_A9C7DC(v31 + 2, v31[1] * v28 + v34);
              v32 += 2;
              v34 -= 2;
              if (v35 != 0x7FFFFFFF)
              {
                goto LABEL_39;
              }
            }
          }

          v35 = 0x7FFFFFFF;
          goto LABEL_39;
        }
      }

      v35 = 2147483646;
LABEL_39:
      if (sub_AD0554((a1 + 128), 0, a2 + 2 + v29 + v29 * v28, v29 + v29 * v28 + 1, v30, v35))
      {
        v36 = v39;
        if (*(a1 + 264) <= v39)
        {
          sub_4D9168(a1 + 256, v39 + 1, 0);
          v36 = v39;
        }

        if (((*(*(a1 + 256) + ((v36 >> 3) & 0x1FFFFFF8)) >> v36) & 1) == 0)
        {
          sub_DD38(a1 + 280, &v39);
          *(*(a1 + 256) + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
        }
      }

      if (++v4 == v38)
      {
        goto LABEL_44;
      }
    }

    v8 = sub_A74944(v7 + 24, v5, 0, "transfers at stop");
    v9 = (v8 - *v8);
    if (*v9 < 5u)
    {
      goto LABEL_12;
    }

    v10 = v9[2];
    if (!v10)
    {
      goto LABEL_12;
    }

LABEL_15:
    v11 = *(v8 + v10);
    goto LABEL_17;
  }

LABEL_44:
  result = sub_7EA60(v40) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

double sub_ACD8B4(uint64_t a1, int a2)
{
  sub_7E9A4(v253);
  v4 = *(a1 + 232);
  v230 = *(a1 + 240);
  if (v4 != v230)
  {
    v231 = a2 + 2;
    v237 = ~a2;
    v238 = a2 + 1;
    while (1)
    {
      v233 = v4;
      v5 = *v4;
      v6 = sub_A9C5E0((*(a1 + 32) + 88), *v4);
      sub_A74644(&v247, *(a1 + 24), *v6);
      v7 = v248;
      v8 = 16;
      if (v252)
      {
        v8 = 32;
      }

      if (v248 < *(&v247 + v8))
      {
        break;
      }

LABEL_3:
      v4 = v233 + 1;
      if (v233 + 1 == v230)
      {
        goto LABEL_352;
      }
    }

    v239 = v5 + 1;
    v242 = v5;
LABEL_11:
    v10 = __ROR8__(*v7, 32);
    v11 = *(a1 + 32);
    v12 = *(v11 + 56) - 1;
    v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
    v14 = v13 ^ (v13 >> 33);
    v15 = *(v11 + 80);
    v17 = *(v11 + 64);
    v16 = *(v11 + 68);
    v18 = v14 & v12;
    v19 = (v15 + 12 * (v14 & v12));
    v21 = *v19;
    v20 = v19[1];
    if (v16 != v20 || v17 != v21)
    {
      if (!*(v11 + 40))
      {
        v41 = 1;
        while (__PAIR64__(v20, v21) != v10)
        {
          v18 = (v18 + v41) & v12;
          v42 = (v15 + 12 * v18);
          v21 = *v42;
          v20 = v42[1];
          ++v41;
          if (v16 == v20 && v17 == v21)
          {
            goto LABEL_55;
          }
        }

LABEL_51:
        if (v18 != -1)
        {
          v44 = v15 + 12 * v18;
          v45 = *(v44 + 8);
          if (v45 == -1)
          {
            goto LABEL_53;
          }

          goto LABEL_103;
        }

        v23 = -1;
        if (sub_A99094(*(a1 + 32), 1))
        {
LABEL_29:
          v27 = *(v11 + 56) - 1;
          v28 = *(v11 + 80);
          v30 = *(v11 + 64);
          v29 = *(v11 + 68);
          v31 = v27 & v14;
          v32 = (v28 + 12 * (v27 & v14));
          v34 = *v32;
          v33 = v32[1];
          v35 = *(v11 + 40);
          if (v29 == v33 && v30 == v34)
          {
LABEL_93:
            v37 = v31;
            goto LABEL_94;
          }

          if (v35)
          {
            v37 = -1;
            v38 = 1;
            do
            {
              if (*(v11 + 36) == v33 && *(v11 + 32) == v34)
              {
                if (v37 == -1)
                {
                  v37 = v31;
                }
              }

              else if (__PAIR64__(v33, v34) == v10)
              {
                goto LABEL_83;
              }

              v31 = (v31 + v38) & v27;
              v39 = (v28 + 12 * v31);
              v34 = *v39;
              v33 = v39[1];
              ++v38;
            }

            while (v29 != v33 || v30 != v34);
            if (v37 == -1)
            {
              goto LABEL_93;
            }

LABEL_94:
            v69 = *(v11 + 48);
            if ((v69 - v35) >= 0x1555555555555555)
            {
LABEL_361:
              exception = __cxa_allocate_exception(0x10uLL);
              sub_195A000(exception, "insert overflow");
            }

            if (v35 && ((v70 = (v28 + 12 * v37), *(v11 + 36) == v70[1]) ? (v71 = *(v11 + 32) == *v70) : (v71 = 0), v71))
            {
              *(v11 + 40) = v35 - 1;
            }

            else
            {
              *(v11 + 48) = v69 + 1;
            }

            v72 = v28 + 12 * v37;
            *v72 = v10;
            *(v72 + 8) = -1;
            v44 = *(v11 + 80) + 12 * v37;
            v45 = *(v44 + 8);
            if (v45 != -1)
            {
              goto LABEL_103;
            }

LABEL_53:
            v46 = *(v11 + 112);
            *(v11 + 112) = v46 + 1;
            *(v44 + 8) = v46;
            v48 = *(v11 + 96);
            v47 = *(v11 + 104);
            if (v48 >= v47)
            {
              v55 = *(v11 + 88);
              v56 = v48 - v55;
              v57 = (v48 - v55) >> 3;
              v58 = v57 + 1;
              if ((v57 + 1) >> 61)
              {
                sub_1794();
              }

              v59 = v47 - v55;
              if (v59 >> 2 > v58)
              {
                v58 = v59 >> 2;
              }

              if (v59 >= 0x7FFFFFFFFFFFFFF8)
              {
                v60 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v60 = v58;
              }

              if (v60)
              {
                if (!(v60 >> 61))
                {
                  operator new();
                }

                goto LABEL_360;
              }

              v65 = (v48 - v55) >> 3;
              v66 = (8 * v57);
              v67 = (8 * v57 - 8 * v65);
              *v66 = v10;
              v49 = v66 + 1;
              memcpy(v67, v55, v56);
              *(v11 + 88) = v67;
              *(v11 + 96) = v49;
              *(v11 + 104) = 0;
              if (v55)
              {
                operator delete(v55);
              }
            }

            else
            {
              *v48 = v10;
              v49 = v48 + 8;
            }

            *(v11 + 96) = v49;
            v68 = *(v44 + 8);
            *(a1 + 576) = *(a1 + 576) + 1.0;
            v244 = v68;
            if (v5 == v68)
            {
              goto LABEL_301;
            }

LABEL_104:
            v73 = *(a1 + 128);
            v74 = *(a1 + 136);
            if (v74 == v73)
            {
              v79 = 1 - ((v74 - v73) >> 3);
              v80 = *(a1 + 144);
              if (v79 > (v80 - v74) >> 3)
              {
                v81 = v80 - v73;
                v82 = v81 >> 2;
                if ((v81 >> 2) <= 1)
                {
                  v82 = 1;
                }

                v220 = v81 >= 0x7FFFFFFFFFFFFFF8;
                v83 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v220)
                {
                  v83 = v82;
                }

                if (!(v83 >> 61))
                {
                  operator new();
                }

                goto LABEL_360;
              }

              bzero(*(a1 + 136), 8 * v79);
              v84 = &v74[2 * v79];
              *(a1 + 136) = v84;
              v73 = *(a1 + 128);
              v75 = *(a1 + 152);
              v76 = *v73;
              if (v73 == v84)
              {
                v77 = *(a1 + 144);
                if (v77 == v84)
                {
                  v86 = 1;
                  v87 = v77 - v73;
                  if ((v87 >> 2) > 1)
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

                  v78 = v242;
                  if (v88)
                  {
                    if (!(v88 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_360;
                  }

                  *&dword_0 = 0;
                  *(a1 + 128) = 0;
                  *(a1 + 136) = 8;
                  *(a1 + 144) = 0;
                  if (v73)
                  {
                    operator delete(v73);
                  }
                }

                else
                {
                  *v84 = 0;
                  *(a1 + 136) = v84 + 2;
                  v78 = v242;
                }

                v73 = *(a1 + 128);
                v85 = *(a1 + 152);
                goto LABEL_128;
              }
            }

            else
            {
              v75 = *(a1 + 152);
              v76 = *v73;
            }

            v85 = v75;
            v78 = v242;
LABEL_128:
            sub_AD06A4((a1 + 128), 0, (v75 + 56 * v76), (v85 + 56 * v73[1]));
            v89 = v238 + *(a1 + 120) * v239;
            v90 = *(a1 + 128);
            v91 = *(a1 + 136);
            if (v89 >= (v91 - v90) >> 3)
            {
              goto LABEL_166;
            }

            v92 = v90[2 * v89];
            v93 = v90[2 * v89 + 1];
            v94 = v93 - v92;
            if (v93 == v92)
            {
              goto LABEL_166;
            }

            v95 = 0;
            v96 = 0;
            do
            {
              v97 = *(a1 + 128);
              if (v89 >= (*(a1 + 136) - v97) >> 3)
              {
                goto LABEL_357;
              }

              v98 = v97[2 * v89];
              if (v97[2 * v89 + 1] - v98 <= v96)
              {
                goto LABEL_357;
              }

              v99 = v98 + v96;
              v100 = *(a1 + 152);
              if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v100) >> 3) <= v99)
              {
LABEL_358:
                v228 = __cxa_allocate_exception(0x10uLL);
                sub_195A2D8(v228, "index out of range");
                goto LABEL_359;
              }

              v101 = v100 + 56 * v99;
              v102 = *v101;
              v103 = *(v101 + 16);
              v104 = *(v101 + 32);
              v257 = *(v101 + 48);
              v256 = v104;
              v254 = v102;
              v255 = v103;
              v106 = *v97;
              v105 = v97[1];
              if (v105 != *v97)
              {
                v107 = 0;
                v109 = (v100 + 56 * v105);
                v110 = (v100 + 56 * v106);
                while (1)
                {
                  v111 = v110[7];
                  if (v111 != 0x7FFFFFFF)
                  {
                    if (v111 <= SHIDWORD(v255) && v110[8] <= v256 && v110[9] <= DWORD1(v256))
                    {
                      goto LABEL_137;
                    }

                    if (SHIDWORD(v255) <= v111 && v256 <= v110[8] && DWORD1(v256) <= v110[9])
                    {
                      v110[7] = 0x7FFFFFFF;
                      v107 = 1;
                    }
                  }

                  v110 += 14;
                  if (v110 == v109)
                  {
                    goto LABEL_136;
                  }
                }
              }

              v107 = 0;
LABEL_136:
              v108 = sub_AD0BAC((a1 + 128), 0, &v254);
              *(v108 + 44) = -1;
              *(v108 + 52) = 0x7FFFFFFF;
LABEL_137:
              v95 |= v107;
              ++v96;
            }

            while (v96 != v94);
            v90 = *(a1 + 128);
            v91 = *(a1 + 136);
            if (v95)
            {
              if (v91 != v90)
              {
                v112 = *(a1 + 152);
                v113 = *v90;
                goto LABEL_152;
              }

              sub_30B70(a1 + 128, 1uLL);
              v90 = *(a1 + 128);
              v112 = *(a1 + 152);
              v113 = *v90;
              if (*(a1 + 136) == v90)
              {
                sub_30B70(a1 + 128, 1uLL);
                v90 = *(a1 + 128);
                v114 = *(a1 + 152);
              }

              else
              {
LABEL_152:
                v114 = v112;
              }

              v115 = (v112 + 56 * v113);
              v116 = (v114 + 56 * v90[1]);
              if (v115 != v116)
              {
                while (*(v115 + 7) != 0x7FFFFFFF)
                {
                  v115 = (v115 + 56);
                  if (v115 == v116)
                  {
                    v115 = v116;
                    break;
                  }
                }

                if (v116 == v115 || (v117 = (v115 + 56), (v115 + 56) == v116))
                {
                  if (*(a1 + 136) != v90)
                  {
                    goto LABEL_165;
                  }
                }

                else
                {
                  do
                  {
                    if (*(v117 + 7) != 0x7FFFFFFF)
                    {
                      v121 = *v117;
                      v122 = v117[1];
                      v123 = v117[2];
                      *(v115 + 6) = *(v117 + 6);
                      v115[1] = v122;
                      v115[2] = v123;
                      *v115 = v121;
                      v115 = (v115 + 56);
                    }

                    v117 = (v117 + 56);
                  }

                  while (v117 != v116);
                  v90 = *(a1 + 128);
                  if (*(a1 + 136) != v90)
                  {
                    goto LABEL_165;
                  }
                }

LABEL_158:
                sub_30B70(a1 + 128, 1uLL);
                v90 = *(a1 + 128);
                goto LABEL_165;
              }

              v115 = v116;
              if (*(a1 + 136) == v90)
              {
                goto LABEL_158;
              }

LABEL_165:
              sub_AD06A4((a1 + 128), 0, v115, (*(a1 + 152) + 56 * v90[1]));
              v90 = *(a1 + 128);
              v91 = *(a1 + 136);
            }

LABEL_166:
            if (v91 != v90)
            {
              v118 = *(a1 + 152);
              v119 = *v90;
              goto LABEL_181;
            }

            v124 = 1 - ((v91 - v90) >> 3);
            v125 = *(a1 + 144);
            if (v124 > (v125 - v91) >> 3)
            {
              v126 = v125 - v90;
              v127 = v126 >> 2;
              if ((v126 >> 2) <= 1)
              {
                v127 = 1;
              }

              v220 = v126 >= 0x7FFFFFFFFFFFFFF8;
              v128 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v220)
              {
                v128 = v127;
              }

              if (!(v128 >> 61))
              {
                operator new();
              }

              goto LABEL_360;
            }

            bzero(v91, 8 * v124);
            v129 = &v91[2 * v124];
            *(a1 + 136) = v129;
            v90 = *(a1 + 128);
            v118 = *(a1 + 152);
            v119 = *v90;
            if (v90 != v129)
            {
LABEL_181:
              v130 = v118;
              goto LABEL_193;
            }

            v120 = *(a1 + 144);
            if (v120 == v129)
            {
              v131 = 1;
              v132 = v120 - v90;
              if ((v132 >> 2) > 1)
              {
                v131 = v132 >> 2;
              }

              if (v132 >= 0x7FFFFFFFFFFFFFF8)
              {
                v133 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v133 = v131;
              }

              if (!v133)
              {
                *&dword_0 = 0;
                *(a1 + 128) = 0;
                *(a1 + 136) = 8;
                *(a1 + 144) = 0;
                if (v90)
                {
                  operator delete(v90);
                }

                goto LABEL_192;
              }

              if (!(v133 >> 61))
              {
                operator new();
              }

LABEL_360:
              sub_1808();
            }

            *v129 = 0;
            *(a1 + 136) = v129 + 2;
LABEL_192:
            v90 = *(a1 + 128);
            v130 = *(a1 + 152);
LABEL_193:
            v134 = v118 + 56 * v119;
            v135 = v130 + 56 * v90[1];
            if (v134 != v135)
            {
              v136 = v248;
              do
              {
                *v134 = v78;
                *(v134 + 16) = -1;
                v137 = *(v134 + 28);
                *(v134 + 12) = v137.i32[0];
                v138 = *(v136 + 2);
                v139 = v138 / 10;
                v140 = v138 % 10;
                if (v138 < 0)
                {
                  v141 = -5;
                }

                else
                {
                  v141 = 5;
                }

                *(v134 + 28) = vadd_s32(vdup_n_s32(v139 + (((103 * (v141 + v140)) >> 15) & 1) + ((103 * (v141 + v140)) >> 10)), v137);
                v134 += 56;
              }

              while (v134 != v135);
            }

            v142 = *(a1 + 120);
            if (*(a1 + 20) != 1)
            {
              v143 = 0xFFFFFFFFLL;
              v144 = v244;
              v145 = *(a1 + 48);
              v245 = 0xFFFFFFFFLL;
              if (v145)
              {
                goto LABEL_201;
              }

LABEL_208:
              v149 = 2147483646;
              v150 = *(a1 + 128);
              if (*(a1 + 136) == v150)
              {
                goto LABEL_301;
              }

              goto LABEL_213;
            }

            v143 = (v142 + v142 * *(a1 + 376) + 1);
            v144 = v244;
            v145 = *(a1 + 48);
            v245 = v143;
            if (!v145)
            {
              goto LABEL_208;
            }

LABEL_201:
            if (*v145 <= v144)
            {
              v149 = 0x7FFFFFFF;
              v150 = *(a1 + 128);
              if (*(a1 + 136) == v150)
              {
                goto LABEL_301;
              }
            }

            else
            {
              v146 = 0;
              v147 = *(a1 + 124) + v237;
              v148 = v147;
              do
              {
                if (v146 > v147)
                {
                  v149 = 0x7FFFFFFF;
                  v143 = v245;
                  v150 = *(a1 + 128);
                  if (*(a1 + 136) == v150)
                  {
                    goto LABEL_301;
                  }

                  goto LABEL_213;
                }

                v149 = *sub_A9C7DC(v145 + 2, v145[1] * v144 + v148);
                v146 += 2;
                v148 -= 2;
              }

              while (v149 == 0x7FFFFFFF);
              v143 = v245;
              v150 = *(a1 + 128);
              if (*(a1 + 136) == v150)
              {
                goto LABEL_301;
              }
            }

LABEL_213:
            v151 = v150[1];
            v152 = v151 - *v150;
            if (v151 == *v150)
            {
              goto LABEL_301;
            }

            if (v149 == 0x7FFFFFFF)
            {
              v153 = 0;
              while (v150[1] - *v150 > v153)
              {
                if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - *(a1 + 152)) >> 3) <= (v153 + *v150))
                {
                  goto LABEL_358;
                }

                if (v152 == ++v153)
                {
                  goto LABEL_301;
                }
              }

LABEL_357:
              v228 = __cxa_allocate_exception(0x10uLL);
              sub_195A2D8(v228, "key does not exist and cannot be added");
LABEL_359:
            }

            v236 = v144;
            v246 = 0;
            v154 = 0;
            v232 = v244 + 1;
            v155 = (v142 * v232 + 1);
            v240 = (v143 + 1);
            *v241 = (v231 + v142 * v232);
            v243 = v155;
            while (1)
            {
              while (1)
              {
                v156 = *(a1 + 128);
                v157 = *(a1 + 136);
                v158 = v157 - v156;
                if (v157 == v156 || v156[1] - *v156 <= v154)
                {
                  goto LABEL_357;
                }

                v159 = *v156 + v154;
                v160 = *(a1 + 152);
                if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 160) - v160) >> 3) <= v159)
                {
                  goto LABEL_358;
                }

                v161 = v160 + 56 * v159;
                v163 = *(v161 + 16);
                v162 = *(v161 + 32);
                v164 = *v161;
                v257 = *(v161 + 48);
                v256 = v162;
                v254 = v164;
                v255 = v163;
                if (SHIDWORD(v163) <= v149)
                {
                  break;
                }

                if (++v154 == v152)
                {
                  goto LABEL_295;
                }
              }

              if (v143 == 0xFFFFFFFF)
              {
                goto LABEL_259;
              }

              v165 = v158 >> 3;
              if (v158 >> 3 > v143)
              {
                goto LABEL_228;
              }

              v169 = v240 - v165;
              if (v240 <= v165)
              {
                break;
              }

              v170 = *(a1 + 144);
              if (v169 > (v170 - v157) >> 3)
              {
                v171 = v170 - v156;
                v172 = v171 >> 2;
                if (v171 >> 2 <= v240)
                {
                  v172 = v240;
                }

                v220 = v171 >= 0x7FFFFFFFFFFFFFF8;
                v173 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v220)
                {
                  v173 = v172;
                }

                if (!(v173 >> 61))
                {
                  operator new();
                }

                goto LABEL_360;
              }

              bzero(v157, 8 * v169);
              v143 = v245;
              v157 += 8 * v169;
              *(a1 + 136) = v157;
              v156 = *(a1 + 128);
              v160 = *(a1 + 152);
              v155 = v243;
              v166 = v156[2 * v245];
              v167 = (v157 - v156) >> 3;
              if (v167 > v245)
              {
                goto LABEL_229;
              }

LABEL_241:
              v174 = v240 - v167;
              if (v240 > v167)
              {
                v175 = *(a1 + 144);
                if (v174 <= (v175 - v157) >> 3)
                {
                  v179 = 8 * v174;
                  bzero(v157, 8 * v174);
                  *(a1 + 136) = &v157[v179];
                }

                else
                {
                  v176 = (v157 - v156) >> 3;
                  v177 = v176 + v174;
                  if ((v176 + v174) >> 61)
                  {
                    sub_1794();
                  }

                  v178 = v175 - v156;
                  if (v178 >> 2 > v177)
                  {
                    v177 = v178 >> 2;
                  }

                  if (v178 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v177 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  if (v177)
                  {
                    if (!(v177 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_360;
                  }

                  v234 = (v157 - v156) >> 3;
                  v235 = v157 - v156;
                  v180 = (8 * v176);
                  v181 = 8 * v174;
                  bzero(v180, 8 * v174);
                  v182 = &v180[v181];
                  v183 = &v180[-8 * v234];
                  memcpy(v183, v156, v235);
                  *(a1 + 128) = v183;
                  *(a1 + 136) = v182;
                  *(a1 + 144) = 0;
                  if (v156)
                  {
                    operator delete(v156);
                  }
                }

                v156 = *(a1 + 128);
                v168 = *(a1 + 152);
                v143 = v245;
                v155 = v243;
                goto LABEL_257;
              }

              if (v240 < v167)
              {
                *(a1 + 136) = &v156[2 * v240];
              }

LABEL_229:
              v168 = v160;
LABEL_257:
              v184 = (v160 + 56 * v166);
              for (i = (v168 + 56 * v156[2 * v143 + 1]); v184 != i; v184 += 14)
              {
                v196 = v184[7];
                v197 = v196 != 0x7FFFFFFF && v196 <= SHIDWORD(v255);
                if (v197 && v184[8] <= v256 && v184[9] <= DWORD1(v256))
                {
                  v195 = 0;
                  v188 = 0;
                  goto LABEL_265;
                }
              }

              v160 = v168;
LABEL_259:
              if (v155 < (*(a1 + 136) - v156) >> 3)
              {
                v187 = v156[2 * v155];
                v186 = v156[2 * v155 + 1];
                if (v186 != v187)
                {
                  v188 = 0;
                  v198 = (v160 + 56 * v186);
                  v199 = (v160 + 56 * v187);
                  while (1)
                  {
                    v200 = v199[7];
                    if (v200 != 0x7FFFFFFF)
                    {
                      if (v200 <= SHIDWORD(v255) && v199[8] <= v256 && v199[9] <= DWORD1(v256))
                      {
                        v195 = 0;
                        goto LABEL_265;
                      }

                      if (SHIDWORD(v255) <= v200 && v256 <= v199[8] && DWORD1(v256) <= v199[9])
                      {
                        v199[7] = 0x7FFFFFFF;
                        v188 = 1;
                      }
                    }

                    v199 += 14;
                    if (v199 == v198)
                    {
                      goto LABEL_262;
                    }
                  }
                }
              }

              v188 = 0;
LABEL_262:
              v189 = sub_AD0BAC((a1 + 128), v155, &v254);
              *(v189 + 44) = -1;
              *(v189 + 52) = 0x7FFFFFFF;
              v190 = *(a1 + 128);
              if (*v241 < ((*(a1 + 136) - v190) >> 3))
              {
                v192 = *(v190 + 8 * *v241);
                v191 = *(v190 + 8 * *v241 + 4);
                if (v191 != v192)
                {
                  v201 = *(a1 + 152);
                  v202 = (v201 + 56 * v191);
                  v203 = (v201 + 56 * v192);
                  do
                  {
                    v204 = v203[7];
                    if (v204 != 0x7FFFFFFF && SHIDWORD(v255) <= v204 && v256 <= v203[8] && DWORD1(v256) <= v203[9])
                    {
                      v203[7] = 0x7FFFFFFF;
                    }

                    v203 += 14;
                  }

                  while (v203 != v202);
                }
              }

              v193 = sub_AD0BAC((a1 + 128), v241[0], &v254);
              *(v193 + 44) = -1;
              *(v193 + 52) = 0x7FFFFFFF;
              v194 = *(a1 + 200);
              *(a1 + 200) = v194 + 1;
              *(v193 + 24) = v194;
              *(v193 + 20) = DWORD2(v255);
              *(v193 + 44) = -1;
              *(v193 + 52) = 0x7FFFFFFF;
              v195 = 1;
              v143 = v245;
              v155 = v243;
LABEL_265:
              v246 |= v195 | (v188 << 8);
              if (++v154 == v152)
              {
LABEL_295:
                if ((v246 & 0x100) != 0)
                {
                  v205 = v155;
                  sub_AD10F4((a1 + 128), v241[0]);
                  sub_AD10F4((a1 + 128), v205);
                }

                if ((v246 & 1) == 0)
                {
                  goto LABEL_301;
                }

                if (*(a1 + 264) <= v236)
                {
                  sub_4D9168(a1 + 256, v232, 0);
                }

                if ((*(*(a1 + 256) + 8 * (v236 >> 6)) & (1 << v236)) != 0)
                {
LABEL_301:
                  v9 = v249;
                  v7 = (v248 + 12);
                  v248 = v7;
                  if (v7 != v249)
                  {
                    goto LABEL_302;
                  }

LABEL_319:
                  v7 = v250;
                  v248 = v250;
                  v206 = 1;
                  v252 = 1;
                  goto LABEL_320;
                }

                v208 = *(a1 + 288);
                v207 = *(a1 + 296);
                if (v208 >= v207)
                {
                  v210 = *(a1 + 280);
                  v211 = v208 - v210;
                  v212 = (v208 - v210) >> 2;
                  v213 = v212 + 1;
                  if ((v212 + 1) >> 62)
                  {
                    sub_1794();
                  }

                  v214 = v207 - v210;
                  if (v214 >> 1 > v213)
                  {
                    v213 = v214 >> 1;
                  }

                  if (v214 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v215 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v215 = v213;
                  }

                  if (!v215)
                  {
                    v216 = (v208 - v210) >> 2;
                    v217 = (4 * v212);
                    v218 = (4 * v212 - 4 * v216);
                    *v217 = v244;
                    v209 = v217 + 1;
                    memcpy(v218, v210, v211);
                    *(a1 + 280) = v218;
                    *(a1 + 288) = v209;
                    *(a1 + 296) = 0;
                    if (v210)
                    {
                      operator delete(v210);
                    }

                    goto LABEL_318;
                  }

                  if (!(v215 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_360;
                }

                *v208 = v244;
                v209 = v208 + 4;
LABEL_318:
                *(a1 + 288) = v209;
                *(*(a1 + 256) + 8 * (v236 >> 6)) |= 1 << v236;
                v9 = v249;
                v7 = (v248 + 12);
                v248 = v7;
                if (v7 == v249)
                {
                  goto LABEL_319;
                }

LABEL_302:
                v206 = v252;
LABEL_320:
                if (v206)
                {
                  v219 = v251;
                }

                else
                {
                  v219 = v9;
                }

                v220 = *(v247 + 16) != 1 || v7 >= v219;
                if (v220)
                {
                  v5 = v242;
                  if (v206)
                  {
                    v9 = v251;
                  }

                  if (v7 >= v9)
                  {
                    goto LABEL_3;
                  }
                }

                else
                {
                  v221 = __ROR8__(*v7, 32);
                  v222 = HIDWORD(v221) != 1 || (v221 + 3) >= 2;
                  v5 = v242;
                  if (v222)
                  {
                    while (!sub_2D5204(**(v247 + 4120)))
                    {
                      v9 = v249;
                      v7 = (v248 + 12);
                      v248 = v7;
                      if (v7 == v249)
                      {
                        v7 = v250;
                        v248 = v250;
                        v206 = 1;
                        v252 = 1;
                        if (v250 >= v251)
                        {
                          goto LABEL_344;
                        }
                      }

                      else
                      {
                        v206 = v252;
                        v225 = 16;
                        if (v252)
                        {
                          v225 = 32;
                        }

                        if (v7 >= *(&v247 + v225))
                        {
                          goto LABEL_344;
                        }
                      }

                      v223 = __ROR8__(*v7, 32);
                      if (HIDWORD(v223) == 1 && (v223 + 3) < 2)
                      {
                        goto LABEL_344;
                      }
                    }

                    v7 = v248;
                    v226 = v249;
                    if (v252)
                    {
                      v226 = v251;
                    }

                    if (v248 >= v226)
                    {
                      goto LABEL_3;
                    }
                  }

                  else
                  {
LABEL_344:
                    if (v206)
                    {
                      v9 = v251;
                    }

                    if (v7 >= v9)
                    {
                      goto LABEL_3;
                    }
                  }
                }

                goto LABEL_11;
              }
            }

            if (v240 < v165)
            {
              v157 = &v156[2 * v240];
              *(a1 + 136) = v157;
            }

LABEL_228:
            v166 = v156[2 * v143];
            v167 = (v157 - v156) >> 3;
            if (v167 > v143)
            {
              goto LABEL_229;
            }

            goto LABEL_241;
          }

          v62 = 1;
          while (__PAIR64__(v33, v34) != v10)
          {
            v31 = (v31 + v62) & v27;
            v63 = (v28 + 12 * v31);
            v34 = *v63;
            v33 = v63[1];
            ++v62;
            if (v29 == v33 && v30 == v34)
            {
              v35 = 0;
              goto LABEL_93;
            }
          }

LABEL_83:
          if (v31 == -1)
          {
            v37 = -1;
            goto LABEL_94;
          }

          v44 = v28 + 12 * v31;
          v45 = *(v44 + 8);
          if (v45 == -1)
          {
            goto LABEL_53;
          }

LABEL_103:
          *(a1 + 576) = *(a1 + 576) + 1.0;
          v244 = v45;
          if (v5 == v45)
          {
            goto LABEL_301;
          }

          goto LABEL_104;
        }

LABEL_56:
        v51 = *(v11 + 40);
        v50 = *(v11 + 48);
        if ((v50 - v51) >= 0x1555555555555555)
        {
          goto LABEL_361;
        }

        v52 = *(v11 + 80);
        if (v51 && ((v53 = (v52 + 12 * v23), *(v11 + 36) == v53[1]) ? (v54 = *(v11 + 32) == *v53) : (v54 = 0), v54))
        {
          *(v11 + 40) = v51 - 1;
        }

        else
        {
          *(v11 + 48) = v50 + 1;
        }

        v61 = v52 + 12 * v23;
        *v61 = v10;
        *(v61 + 8) = -1;
        v44 = *(v11 + 80) + 12 * v23;
        v45 = *(v44 + 8);
        if (v45 == -1)
        {
          goto LABEL_53;
        }

        goto LABEL_103;
      }

      v23 = -1;
      v24 = 1;
      do
      {
        if (*(v11 + 36) == v20 && *(v11 + 32) == v21)
        {
          if (v23 == -1)
          {
            v23 = v18;
          }
        }

        else if (__PAIR64__(v20, v21) == v10)
        {
          goto LABEL_51;
        }

        v18 = (v18 + v24) & v12;
        v25 = (v15 + 12 * v18);
        v21 = *v25;
        v20 = v25[1];
        ++v24;
      }

      while (v16 != v20 || v17 != v21);
      if (v23 != -1)
      {
        if (sub_A99094(*(a1 + 32), 1))
        {
          goto LABEL_29;
        }

        goto LABEL_56;
      }
    }

LABEL_55:
    v23 = v18;
    if (sub_A99094(*(a1 + 32), 1))
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_352:
  result = sub_7EA60(v253) + *(a1 + 520);
  *(a1 + 520) = result;
  return result;
}

void sub_ACF084(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = *(a1 + 360);
  if (v2 != v3)
  {
    v4 = *(a1 + 328);
    v5 = *(a1 + 304);
    v6 = *(a1 + 352);
    do
    {
      v7 = *v6++;
      *(v4 + ((v7 >> 3) & 0x1FFFFFF8)) &= ~(1 << v7);
      *(v5 + 4 * v7) = -1;
    }

    while (v6 != v3);
  }

  *(a1 + 360) = v2;
  v8 = *(a1 + 280);
  v159 = *(a1 + 288);
  while (v8 != v159)
  {
    v9 = sub_A9C5E0((*(a1 + 32) + 88), *v8);
    sub_A7905C(v163, *(a1 + 24), *v9, 0, 0, 0);
LABEL_8:
    v10 = v166;
LABEL_9:
    v11 = v167;
    while (v10 < v11)
    {
      v12 = __ROR8__(*v10, 32);
      v13 = *(a1 + 40);
      v14 = *(v13 + 56) - 1;
      v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
      v16 = v15 ^ (v15 >> 33);
      v17 = *(v13 + 80);
      v19 = *(v13 + 64);
      v18 = *(v13 + 68);
      v20 = v16 & v14;
      v21 = (v17 + 12 * (v16 & v14));
      v23 = *v21;
      v22 = v21[1];
      if (v18 == v22 && v19 == v23)
      {
        goto LABEL_54;
      }

      if (*(v13 + 40))
      {
        v25 = -1;
        v26 = 1;
        do
        {
          if (*(v13 + 36) == v22 && *(v13 + 32) == v23)
          {
            if (v25 == -1)
            {
              v25 = v20;
            }
          }

          else if (__PAIR64__(v22, v23) == v12)
          {
            goto LABEL_51;
          }

          v20 = (v20 + v26) & v14;
          v27 = (v17 + 12 * v20);
          v23 = *v27;
          v22 = v27[1];
          ++v26;
        }

        while (v18 != v22 || v19 != v23);
        if (v25 == -1)
        {
LABEL_54:
          v25 = v20;
          if (!sub_A99094(*(a1 + 40), 1))
          {
            goto LABEL_55;
          }

          goto LABEL_29;
        }

        if (!sub_A99094(*(a1 + 40), 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v43 = 1;
        while (__PAIR64__(v22, v23) != v12)
        {
          v20 = (v20 + v43) & v14;
          v44 = (v17 + 12 * v20);
          v23 = *v44;
          v22 = v44[1];
          ++v43;
          if (v18 == v22 && v19 == v23)
          {
            goto LABEL_54;
          }
        }

LABEL_51:
        if (v20 != -1)
        {
          v46 = v17 + 12 * v20;
          v47 = *(v46 + 8);
          if (v47 != -1)
          {
            goto LABEL_103;
          }

          goto LABEL_88;
        }

        v25 = -1;
        if (!sub_A99094(*(a1 + 40), 1))
        {
LABEL_55:
          v49 = *(v13 + 40);
          v48 = *(v13 + 48);
          if ((v48 - v49) >= 0x1555555555555555)
          {
            goto LABEL_232;
          }

          v30 = *(v13 + 80);
          if (v49 && ((v50 = (v30 + 12 * v25), *(v13 + 36) == v50[1]) ? (v51 = *(v13 + 32) == *v50) : (v51 = 0), v51))
          {
            *(v13 + 40) = v49 - 1;
          }

          else
          {
            *(v13 + 48) = v48 + 1;
          }

          v52 = 3 * v25;
          goto LABEL_87;
        }
      }

LABEL_29:
      v29 = *(v13 + 56) - 1;
      v30 = *(v13 + 80);
      v32 = *(v13 + 64);
      v31 = *(v13 + 68);
      v33 = v29 & v16;
      v34 = (v30 + 12 * (v29 & v16));
      v36 = *v34;
      v35 = v34[1];
      v37 = *(v13 + 40);
      if (v31 == v35 && v32 == v36)
      {
        goto LABEL_78;
      }

      if (v37)
      {
        v39 = -1;
        v40 = 1;
        do
        {
          if (*(v13 + 36) == v35 && *(v13 + 32) == v36)
          {
            if (v39 == -1)
            {
              v39 = v33;
            }
          }

          else if (__PAIR64__(v35, v36) == v12)
          {
            goto LABEL_72;
          }

          v33 = (v33 + v40) & v29;
          v41 = (v30 + 12 * v33);
          v36 = *v41;
          v35 = v41[1];
          ++v40;
        }

        while (v31 != v35 || v32 != v36);
        if (v39 == -1)
        {
LABEL_78:
          v39 = v33;
        }

        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
          goto LABEL_232;
        }

LABEL_80:
        if (v37 && ((v57 = (v30 + 12 * v39), *(v13 + 36) == v57[1]) ? (v58 = *(v13 + 32) == *v57) : (v58 = 0), v58))
        {
          *(v13 + 40) = v37 - 1;
          v52 = 3 * v39;
        }

        else
        {
          *(v13 + 48) = v56 + 1;
          v52 = 3 * v39;
        }

LABEL_87:
        v59 = 4 * v52;
        v60 = v30 + v59;
        *v60 = v12;
        *(v60 + 8) = -1;
        v46 = *(v13 + 80) + v59;
        v47 = *(v46 + 8);
        if (v47 != -1)
        {
          goto LABEL_103;
        }

        goto LABEL_88;
      }

      v53 = 1;
      while (__PAIR64__(v35, v36) != v12)
      {
        v33 = (v33 + v53) & v29;
        v54 = (v30 + 12 * v33);
        v36 = *v54;
        v35 = v54[1];
        ++v53;
        if (v31 == v35 && v32 == v36)
        {
          v37 = 0;
          goto LABEL_78;
        }
      }

LABEL_72:
      if (v33 == -1)
      {
        v39 = -1;
        v56 = *(v13 + 48);
        if ((v56 - v37) >= 0x1555555555555555)
        {
LABEL_232:
          exception = __cxa_allocate_exception(0x10uLL);
          sub_195A000(exception, "insert overflow");
        }

        goto LABEL_80;
      }

      v46 = v30 + 12 * v33;
      v47 = *(v46 + 8);
      if (v47 != -1)
      {
        goto LABEL_103;
      }

LABEL_88:
      v61 = *(v13 + 112);
      *(v13 + 112) = v61 + 1;
      *(v46 + 8) = v61;
      v63 = *(v13 + 96);
      v62 = *(v13 + 104);
      if (v63 >= v62)
      {
        v65 = *(v13 + 88);
        v66 = v63 - v65;
        v67 = (v63 - v65) >> 3;
        v68 = v67 + 1;
        if ((v67 + 1) >> 61)
        {
          sub_1794();
        }

        v69 = v8;
        v70 = v62 - v65;
        if (v70 >> 2 > v68)
        {
          v68 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v68;
        }

        if (v71)
        {
          if (!(v71 >> 61))
          {
            operator new();
          }

LABEL_231:
          sub_1808();
        }

        v72 = v67;
        v73 = (8 * v67);
        v74 = &v73[-v72];
        *v73 = v12;
        v64 = v73 + 1;
        memcpy(v74, v65, v66);
        *(v13 + 88) = v74;
        *(v13 + 96) = v64;
        *(v13 + 104) = 0;
        if (v65)
        {
          operator delete(v65);
        }

        v8 = v69;
      }

      else
      {
        *v63 = v12;
        v64 = v63 + 8;
      }

      *(v13 + 96) = v64;
      v47 = *(v46 + 8);
LABEL_103:
      v75 = *(v166 + 4);
      v76 = v47 >> 6;
      if (*(a1 + 336) <= v47)
      {
        v80 = *(a1 + 304);
        goto LABEL_122;
      }

      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v79 = 1 << v47;
      v80 = *(a1 + 304);
      if ((v78 & (1 << v47)) == 0)
      {
        goto LABEL_122;
      }

      v81 = *(a1 + 312);
      v82 = &v81[-v80] >> 2;
      if (v82 > v47)
      {
        goto LABEL_120;
      }

      v160 = *(v166 + 4);
      v83 = v8;
      v84 = v47 + 1;
      v85 = v84 - v82;
      if (v84 > v82)
      {
        v86 = *(a1 + 320);
        if (v85 > (v86 - v81) >> 2)
        {
          v87 = v86 - v80;
          v88 = v87 >> 1;
          if (v87 >> 1 <= v84)
          {
            v88 = v47 + 1;
          }

          v89 = v87 >= 0x7FFFFFFFFFFFFFFCLL;
          v90 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v89)
          {
            v90 = v88;
          }

          if (!(v90 >> 62))
          {
            operator new();
          }

          goto LABEL_231;
        }

        v92 = 4 * v85;
        memset(v81, 255, v92);
        v91 = &v81[v92];
        goto LABEL_118;
      }

      if (v84 < v82)
      {
        v91 = (v80 + 4 * v84);
LABEL_118:
        *(a1 + 312) = v91;
      }

      sub_4D9168(a1 + 328, v47 + 1, 0);
      v77 = *(a1 + 328);
      v78 = *(v77 + 8 * v76);
      v8 = v83;
      v75 = v160;
LABEL_120:
      if ((v78 & v79) != 0)
      {
        v80 = *(a1 + 304);
        if (*(v80 + 4 * v47) > v75)
        {
          goto LABEL_122;
        }

LABEL_135:
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 == v167)
        {
          goto LABEL_158;
        }

LABEL_136:
        if (v10 < v11)
        {
          while (1)
          {
LABEL_181:
            if ((v169 & 1) == 0)
            {
              v132 = v163[0];
              v133 = *v10;
              v134 = *(v163[0] + 4136);
              if (sub_68312C(v134 + 3896))
              {
                if (*(v134 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v154 = sub_A57824(-85.0, 0.0);
                    sub_58168(v154 >> 17, v154 >> 49);
                    dword_27339C0 = v155 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                  }

                  v135 = __ROR8__(v133, 32);
                  v136 = *(v132 + 4136);
                  if (dword_27339C0 == HIDWORD(v135))
                  {
                    if (!sub_68312C(v136 + 3896) || !*(v136 + 3944))
                    {
                      v157 = __cxa_allocate_exception(0x40uLL);
                      v158 = sub_2D390(v157, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v139 = *(v136 + 3944);
                    v140 = v139[1];
                    if (v140)
                    {
                      v141 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v135 ^ (v135 >> 33))) >> 33));
                      v142 = v141 ^ (v141 >> 33);
                      v143 = vcnt_s8(v140);
                      v143.i16[0] = vaddlv_u8(v143);
                      if (v143.u32[0] > 1uLL)
                      {
                        v144 = v142;
                        if (v142 >= *&v140)
                        {
                          v144 = v142 % *&v140;
                        }
                      }

                      else
                      {
                        v144 = (*&v140 - 1) & v142;
                      }

                      v145 = *(*v139 + 8 * v144);
                      if (v145)
                      {
                        v146 = *v145;
                        if (v146)
                        {
                          if (v143.u32[0] < 2uLL)
                          {
                            v147 = *&v140 - 1;
                            while (1)
                            {
                              v151 = v146[1];
                              if (v142 == v151)
                              {
                                if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                                {
                                  goto LABEL_179;
                                }
                              }

                              else if ((v151 & v147) != v144)
                              {
                                goto LABEL_221;
                              }

                              v146 = *v146;
                              if (!v146)
                              {
                                goto LABEL_221;
                              }
                            }
                          }

                          do
                          {
                            v149 = v146[1];
                            if (v142 == v149)
                            {
                              if (*(v146 + 5) == HIDWORD(v135) && *(v146 + 4) == v135)
                              {
                                goto LABEL_179;
                              }
                            }

                            else
                            {
                              if (v149 >= *&v140)
                              {
                                v149 %= *&v140;
                              }

                              if (v149 != v144)
                              {
                                break;
                              }
                            }

                            v146 = *v146;
                          }

                          while (v146);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_221:
            if (v168 == 1)
            {
              goto LABEL_8;
            }

            v152 = sub_C9E544(v163[0] + 3896);
            v10 = v166;
            if (v152 >= *(v166 + 14))
            {
              if (v168)
              {
                goto LABEL_9;
              }

              v153 = sub_585D8((v163[0] + 3896));
              v10 = v166;
              if ((v153 & 1) != 0 || (*(v166 + 15) & 1) == 0)
              {
                goto LABEL_9;
              }
            }

LABEL_179:
            v10 = v166 + 2;
            v166 = v10;
            if (v10 == v167)
            {
              v137 = v164 + 2;
              v164 = v137;
              if (v137 >= v165)
              {
                goto LABEL_9;
              }

              while (1)
              {
                v10 = *v137;
                v138 = v137[1];
                if (*v137 != v138)
                {
                  break;
                }

                v137 += 2;
                v164 = v137;
                if (v137 >= v165)
                {
                  goto LABEL_6;
                }
              }

              v166 = *v137;
              v167 = v138;
              if (v10 >= v138)
              {
                goto LABEL_9;
              }
            }

            else if (v10 >= v167)
            {
              goto LABEL_9;
            }
          }
        }
      }

      else
      {
        *(v77 + 8 * v76) = v78 | v79;
        v103 = *(a1 + 360);
        v102 = *(a1 + 368);
        if (v103 >= v102)
        {
          v121 = *(a1 + 352);
          v122 = v103 - v121;
          v123 = (v103 - v121) >> 2;
          v124 = v123 + 1;
          if ((v123 + 1) >> 62)
          {
LABEL_234:
            sub_1794();
          }

          v125 = v8;
          v126 = v102 - v121;
          if (v126 >> 1 > v124)
          {
            v124 = v126 >> 1;
          }

          if (v126 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v127 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v127 = v124;
          }

          v162 = v75;
          if (v127)
          {
            if (!(v127 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          v128 = (v103 - v121) >> 2;
          v129 = (4 * v123);
          v130 = (4 * v123 - 4 * v128);
          *v129 = v47;
          v131 = v129 + 1;
          memcpy(v130, v121, v122);
          *(a1 + 352) = v130;
          *(a1 + 360) = v131;
          *(a1 + 368) = 0;
          if (v121)
          {
            operator delete(v121);
          }

          v8 = v125;
          v75 = v162;
          *(a1 + 360) = v131;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) <= v162)
          {
            goto LABEL_135;
          }
        }

        else
        {
          *v103 = v47;
          *(a1 + 360) = v103 + 4;
          v80 = *(a1 + 304);
          if (*(v80 + 4 * v47) <= v75)
          {
            goto LABEL_135;
          }
        }

LABEL_122:
        v93 = *(a1 + 312);
        v94 = &v93[-v80] >> 2;
        if (v94 > v47)
        {
          goto LABEL_141;
        }

        v161 = v75;
        v95 = v47 + 1;
        v96 = v95 - v94;
        if (v95 > v94)
        {
          v97 = *(a1 + 320);
          if (v96 > (v97 - v93) >> 2)
          {
            v98 = v97 - v80;
            v99 = v98 >> 1;
            if (v98 >> 1 <= v95)
            {
              v99 = v47 + 1;
            }

            v89 = v98 >= 0x7FFFFFFFFFFFFFFCLL;
            v100 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v89)
            {
              v100 = v99;
            }

            if (!(v100 >> 62))
            {
              operator new();
            }

            goto LABEL_231;
          }

          memset(v93, 255, 4 * v96);
          v101 = &v93[4 * v96];
          goto LABEL_139;
        }

        if (v95 < v94)
        {
          v101 = (v80 + 4 * v95);
LABEL_139:
          *(a1 + 312) = v101;
        }

        sub_4D9168(a1 + 328, v47 + 1, 0);
        v75 = v161;
LABEL_141:
        v104 = *(a1 + 328);
        v105 = *(v104 + 8 * v76);
        if ((v105 & (1 << v47)) == 0)
        {
          *(v104 + 8 * v76) = v105 | (1 << v47);
          v107 = *(a1 + 360);
          v106 = *(a1 + 368);
          if (v107 >= v106)
          {
            v109 = *(a1 + 352);
            v110 = v107 - v109;
            v111 = (v107 - v109) >> 2;
            v112 = v111 + 1;
            if ((v111 + 1) >> 62)
            {
              goto LABEL_234;
            }

            v113 = v8;
            v114 = v106 - v109;
            if (v114 >> 1 > v112)
            {
              v112 = v114 >> 1;
            }

            if (v114 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v115 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v115 = v112;
            }

            if (v115)
            {
              if (!(v115 >> 62))
              {
                operator new();
              }

              goto LABEL_231;
            }

            v116 = v75;
            v117 = (v107 - v109) >> 2;
            v118 = (4 * v111);
            v119 = (4 * v111 - 4 * v117);
            *v118 = v47;
            v108 = v118 + 1;
            memcpy(v119, v109, v110);
            *(a1 + 352) = v119;
            *(a1 + 360) = v108;
            *(a1 + 368) = 0;
            if (v109)
            {
              operator delete(v109);
            }

            v8 = v113;
            v75 = v116;
          }

          else
          {
            *v107 = v47;
            v108 = v107 + 4;
          }

          *(a1 + 360) = v108;
        }

        *(*(a1 + 304) + 4 * v47) = v75;
        v11 = v167;
        v10 = v166 + 2;
        v166 = v10;
        if (v10 != v167)
        {
          goto LABEL_136;
        }

LABEL_158:
        v120 = v164 + 2;
        v164 = v120;
        if (v120 >= v165)
        {
          break;
        }

        while (1)
        {
          v10 = *v120;
          v11 = v120[1];
          if (*v120 != v11)
          {
            break;
          }

          v120 += 2;
          v164 = v120;
          if (v120 >= v165)
          {
            goto LABEL_6;
          }
        }

        v166 = *v120;
        v167 = v11;
        if (v10 < v11)
        {
          goto LABEL_181;
        }
      }
    }

LABEL_6:
    ++v8;
  }
}