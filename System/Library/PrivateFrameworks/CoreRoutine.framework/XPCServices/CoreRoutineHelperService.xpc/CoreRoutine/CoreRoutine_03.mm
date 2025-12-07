uint64_t sub_100036CC0(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a2[18];
    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = v6 + 1;
      do
      {
        result = sub_10003F7B8(v5);
        --v7;
      }

      while (v7);
    }

    v8 = v4 + 25;
    if (v4 + 25 == a3)
    {
      v9 = v4;
LABEL_70:
      v35 = *(v5 + 40);
      if ((~v35 & 6) != 0)
      {
        if (v9 == a3)
        {
          goto LABEL_92;
        }

        LOBYTE(v36) = 0;
        v37 = 0;
        v38 = v9;
        do
        {
          while (1)
          {
            v39 = *(v38 + 10);
            if (v39 != 2)
            {
              break;
            }

            if (*(v38 + 30) != 2)
            {
              goto LABEL_94;
            }

            v37 = 1;
            v17 = v38 == v4;
            v38 += 25;
            if (v17)
            {
              goto LABEL_84;
            }
          }

          if (v39 != 1)
          {
            goto LABEL_94;
          }

          v36 = *(v38 + 30);
          if (v36 != 1)
          {
            goto LABEL_94;
          }

          v17 = v38 == v4;
          v38 += 25;
        }

        while (!v17);
        if ((v37 & 1) == 0)
        {
          goto LABEL_89;
        }

        LOBYTE(v36) = 1;
LABEL_84:
        v40 = *(v5 + 24);
        if (*v40 - 58 <= 0xFFFFFFF7)
        {
          *v40 = 50;
          v35 = *(v5 + 40);
          v40 = *(v5 + 24);
        }

        v41 = v35 | 1;
        *(v5 + 40) = v41;
        if (v40[1] - 58 <= 0xFFFFFFF6)
        {
          v40[1] = 49;
          v41 = *(v5 + 40);
        }

        v35 = v41 | 4;
        if (v36)
        {
LABEL_89:
          v35 |= 2u;
        }

        *(v5 + 40) = v35;
        if (v35 != 7)
        {
LABEL_92:
          v42 = *(*(v5 + 24) + 9);
        }

        else
        {
          v42 = 1;
        }

        *(v5 + 16) = v42 & 1;
      }

LABEL_94:
      v43 = v9[18];
      if (v43 <= -2)
      {
        v44 = v43 + 1;
        do
        {
          result = sub_10003F7B8(v5);
          v31 = __CFADD__(v44++, 1);
        }

        while (!v31);
      }
    }

    else
    {
      v9 = v4;
      while (1)
      {
        v4 = v8;
        if (v9[17] == v9[42])
        {
          v10 = v9[18];
          v11 = v9[43];
          if (v10 != v11)
          {
            v12 = *(v5 + 40);
            if ((~v12 & 6) != 0)
            {
              LOBYTE(v13) = 0;
              v14 = 0;
              v15 = v9;
              do
              {
                while (1)
                {
                  v16 = *(v15 + 10);
                  if (v16 != 2)
                  {
                    break;
                  }

                  if (*(v15 + 30) != 2)
                  {
                    goto LABEL_63;
                  }

                  v14 = 1;
                  v17 = v15 == v9;
                  v15 += 25;
                  if (v17)
                  {
                    goto LABEL_22;
                  }
                }

                if (v16 != 1)
                {
                  goto LABEL_63;
                }

                v13 = *(v15 + 30);
                if (v13 != 1)
                {
                  goto LABEL_63;
                }

                v17 = v15 == v9;
                v15 += 25;
              }

              while (!v17);
              if ((v14 & 1) == 0)
              {
                goto LABEL_27;
              }

              LOBYTE(v13) = 1;
LABEL_22:
              v18 = *(v5 + 24);
              if (*v18 - 58 <= 0xFFFFFFF7)
              {
                *v18 = 50;
                v12 = *(v5 + 40);
                v18 = *(v5 + 24);
              }

              v19 = v12 | 1;
              *(v5 + 40) = v19;
              if (v18[1] - 58 <= 0xFFFFFFF6)
              {
                v18[1] = 49;
                v19 = *(v5 + 40);
              }

              v12 = v19 | 4;
              if (v13)
              {
LABEL_27:
                v12 |= 2u;
              }

              *(v5 + 40) = v12;
              if (v12 == 7)
              {
                v20 = 1;
              }

              else
              {
                v20 = *(*(v5 + 24) + 9);
              }

              *(v5 + 16) = v20 & 1;
              v10 = v9[18];
              v11 = v9[43];
            }

LABEL_63:
            if (v10 + 1 < v11)
            {
              v34 = ~v10 + v11;
              do
              {
                result = sub_10003F7B8(v5);
                --v34;
              }

              while (v34);
            }
          }
        }

        else
        {
          v21 = *(v5 + 40);
          if ((~v21 & 6) != 0)
          {
            LOBYTE(v22) = 0;
            v23 = 0;
            v24 = v9;
            do
            {
              while (1)
              {
                v25 = *(v24 + 10);
                if (v25 != 2)
                {
                  break;
                }

                if (*(v24 + 30) != 2)
                {
                  goto LABEL_53;
                }

                v23 = 1;
                v17 = v24 == v9;
                v24 += 25;
                if (v17)
                {
                  goto LABEL_43;
                }
              }

              if (v25 != 1)
              {
                goto LABEL_53;
              }

              v22 = *(v24 + 30);
              if (v22 != 1)
              {
                goto LABEL_53;
              }

              v17 = v24 == v9;
              v24 += 25;
            }

            while (!v17);
            if ((v23 & 1) == 0)
            {
              goto LABEL_48;
            }

            LOBYTE(v22) = 1;
LABEL_43:
            v26 = *(v5 + 24);
            if (*v26 - 58 <= 0xFFFFFFF7)
            {
              *v26 = 50;
              v21 = *(v5 + 40);
              v26 = *(v5 + 24);
            }

            v27 = v21 | 1;
            *(v5 + 40) = v27;
            if (v26[1] - 58 <= 0xFFFFFFF6)
            {
              v26[1] = 49;
              v27 = *(v5 + 40);
            }

            v21 = v27 | 4;
            if (v22)
            {
LABEL_48:
              v21 |= 2u;
            }

            *(v5 + 40) = v21;
            if (v21 == 7)
            {
              v28 = 1;
            }

            else
            {
              v28 = *(*(v5 + 24) + 9);
            }

            *(v5 + 16) = v28 & 1;
          }

LABEL_53:
          v29 = v9[18];
          if (v29 <= -2)
          {
            v30 = v29 + 1;
            do
            {
              result = sub_10003F7B8(v5);
              v31 = __CFADD__(v30++, 1);
            }

            while (!v31);
          }

          v32 = v9[43];
          if ((v32 & 0x8000000000000000) == 0)
          {
            v33 = v32 + 1;
            do
            {
              result = sub_10003F7B8(v5);
              --v33;
            }

            while (v33);
          }
        }

        if (*(v5 + 16))
        {
          break;
        }

        v9 += 25;
        v8 = v4 + 25;
        if (v4 + 25 == a3)
        {
          goto LABEL_70;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000370D4(double *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, int *a5)
{
  v8 = (*a1 + a1[2]) * 0.5;
  v9 = *(a1 + 1);
  v72 = *a1;
  v74 = *(&v9 + 1);
  v70[1] = *(&v72 + 1);
  v71 = v9;
  v73 = v8;
  v70[0] = v8;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = 0;
  v54 = 0;
  sub_100019804(&v72, v70, a2, &v67, &v64, &v61);
  sub_100019804(&v72, v70, a3, &v58, &v55, &__p);
  v10 = v61;
  v11 = v62;
  v12 = __p;
  if (v61 == v62)
  {
    v49 = a4;
    v14 = v53;
  }

  else
  {
    v13 = v62 - v61;
    v14 = v53;
    if ((v62 - v61) < 0x80 || a4 > 0x63 || (v53 - __p) < 0x79)
    {
      if (__p != v53)
      {
        v15 = v61;
LABEL_5:
        v16 = v12;
        while ((sub_100037714(a5, *v15, *v16) & 1) != 0)
        {
          if (++v16 == v14)
          {
            if (++v15 != v11)
            {
              goto LABEL_5;
            }

            goto LABEL_35;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v25 = v61;
      do
      {
        sub_10001911C(&v75, *v25++ + 2);
      }

      while (v25 != v11);
      v26 = v75;
      v27 = v76;
      if (v12 != v14)
      {
        v28 = v12;
        do
        {
          sub_10001911C(&v75, *v28++ + 2);
        }

        while (v28 != v14);
        v26 = v75;
        v27 = v76;
      }

      v50 = v26;
      v51 = v27;
      if ((sub_1000383C4(v50.f64, &v61, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_35:
    v30 = v58;
    v29 = v59;
    v49 = a4;
    if ((v59 - v58) < 0x80 || (v56 - v55) < 0x80 || a4 > 0x63 || v13 < 0x79)
    {
      if (v58 != v59)
      {
        v31 = v10;
LABEL_39:
        v32 = v30;
        while ((sub_100037714(a5, *v31, *v32) & 1) != 0)
        {
          if (++v32 == v29)
          {
            if (++v31 != v11)
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_87;
      }

LABEL_43:
      v33 = v55;
      v34 = v56;
      if (v55 != v56)
      {
        v35 = v10;
LABEL_45:
        v36 = v33;
        while ((sub_100037714(a5, *v35, *v36) & 1) != 0)
        {
          if (++v36 == v34)
          {
            if (++v35 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_11;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v37 = v10;
      do
      {
        sub_10001911C(&v75, *v37++ + 2);
      }

      while (v37 != v11);
      v50 = v75;
      v51 = v76;
      if (!sub_1000383C4(v50.f64, &v61, &v58, a4 + 1, a5) || (sub_1000383C4(v50.f64, &v61, &v55, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_11:
  v18 = v67;
  v17 = v68;
  v19 = v68 - v67;
  if (v12 != v14)
  {
    if (v19 < 0x80 || (v65 - v64) < 0x80 || v49 > 0x63 || (v14 - v12) < 0x79)
    {
      if (v67 != v68)
      {
        v20 = v67;
LABEL_16:
        v21 = v12;
        while ((sub_100037714(a5, *v20, *v21) & 1) != 0)
        {
          if (++v21 == v14)
          {
            if (++v20 != v17)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          }
        }

        goto LABEL_87;
      }

LABEL_20:
      v22 = v64;
      v23 = v65;
LABEL_21:
      if (v22 != v23)
      {
        v24 = v12;
        while ((sub_100037714(a5, *v22, *v24) & 1) != 0)
        {
          if (++v24 == v14)
          {
            ++v22;
            goto LABEL_21;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v38 = v12;
      do
      {
        sub_10001911C(&v75, *v38++ + 2);
      }

      while (v38 != v14);
      v50 = v75;
      v51 = v76;
      if (!sub_1000383C4(v50.f64, &v67, &__p, v49 + 1, a5) || (sub_1000383C4(v50.f64, &v64, &__p, v49 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

  if (v19 < 0x80 || v49 > 0x63 || (v59 - v58) < 0x79)
  {
    if (v18 != v17)
    {
      v39 = v58;
      v40 = v59;
      if (v58 != v59)
      {
LABEL_66:
        v41 = v39;
        while ((sub_100037714(a5, *v18, *v41) & 1) != 0)
        {
          if (++v41 == v40)
          {
            if (++v18 != v17)
            {
              goto LABEL_66;
            }

            goto LABEL_74;
          }
        }

        goto LABEL_87;
      }
    }
  }

  else if ((sub_1000383C4(&v72, &v67, &v58, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_74:
  v43 = v64;
  v42 = v65;
  if ((v65 - v64) < 0x80 || v49 > 0x63 || (v56 - v55) < 0x79)
  {
    if (v64 == v65)
    {
      goto LABEL_85;
    }

    v44 = v55;
    v45 = v56;
    if (v55 == v56)
    {
      goto LABEL_85;
    }

LABEL_77:
    v46 = v44;
    while ((sub_100037714(a5, *v43, *v46) & 1) != 0)
    {
      if (++v46 == v45)
      {
        if (++v43 != v42)
        {
          goto LABEL_77;
        }

        goto LABEL_85;
      }
    }

LABEL_87:
    v47 = 0;
    if (!v12)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if ((sub_1000383C4(v70, &v64, &v55, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_85:
  v47 = 1;
  if (v12)
  {
LABEL_88:
    operator delete(v12);
  }

LABEL_89:
  if (v55)
  {
    operator delete(v55);
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (v64)
  {
    operator delete(v64);
  }

  if (v67)
  {
    operator delete(v67);
  }

  return v47;
}

void sub_100037680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100037714(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  if (v7 - v6 < 360.0 && v9 - v8 < 360.0)
  {
    v10 = vabdd_f64(v8, v6);
    v11 = 180.0;
    if (v10 != 180.0)
    {
      v12 = v8 - v6;
      if (COERCE__INT64(fabs(v8 - v6)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_30;
      }

      v31 = fabs(v10 + -180.0);
      v11 = 180.0;
      if (v10 < 180.0)
      {
        v10 = 180.0;
      }

      if (v10 < 1.0)
      {
        v10 = 1.0;
      }

      if (v31 > v10 * 2.22044605e-16)
      {
LABEL_30:
        v11 = 180.0;
        if (v12 <= 180.0)
        {
          if (v12 >= -180.0)
          {
            goto LABEL_5;
          }

          v11 = fmod(v12 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v12 = fmod(v12 + 180.0, 360.0) + -180.0;
          if (v12 != -180.0)
          {
            if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_5;
            }

            v32 = fabs(v12);
            v11 = 180.0;
            v33 = fabs(v12 + 180.0);
            if (v32 < 180.0)
            {
              v32 = 180.0;
            }

            if (v32 < 1.0)
            {
              v32 = 1.0;
            }

            if (v33 > v32 * 2.22044605e-16)
            {
LABEL_5:
              if (v12 < 0.0)
              {
                v12 = v12 + 360.0;
              }

              v13 = v6 + v12;
              v14 = v9 - v8 + v6 + v12 + -360.0;
              if (vabdd_f64(v14, v9) < 180.0)
              {
                v14 = v9;
              }

              if (v13 > v7 && v14 < v6)
              {
                return 1;
              }

              goto LABEL_11;
            }
          }
        }
      }
    }

    v12 = v11;
    goto LABEL_5;
  }

LABEL_11:
  if (*(v4 + 56) >= *(a3 + 40) && *(v4 + 40) <= *(a3 + 56))
  {
    v16 = *(a1 + 1);
    v116 = a1[4];
    v117 = *a1;
    v17 = *(a1 + 3);
    v115 = *(a1 + 2);
    v18 = *(a1 + 6);
    v19 = *(a1 + 7);
    v20 = *v16;
    v21 = v16[1];
    v123 = *v17;
    v124 = v18;
    v122 = v17[1];
    if ((*(v4 + 96) != 1 || (*(v4 + 80) + 1) >= *(v4 + 88)) && (*(a3 + 96) != 1 || (*(a3 + 80) + 1) >= *(a3 + 88)))
    {
      v22 = *v4;
      v24 = *(v4 + 64);
      v23 = *(v4 + 72);
      v25 = *a3;
      v26 = &v20[2 * v24];
      v113 = &v20[2 * v23 + 2];
      if (16 * v24 != 16 * v23)
      {
        if (sub_10000EF08(v22, v26[2], v6, v7, v8, v9))
        {
          v27 = v24 + 1;
          v28 = &v20[2 * v24 + 4];
          do
          {
            v24 = v27;
            v29 = v28;
            if (v28 == v113)
            {
              break;
            }

            v28 += 16;
            v30 = sub_10000EF08(v22, *v29, v6, v7, v8, v9);
            v27 = v24 + 1;
          }

          while (v30);
          v26 = v29 - 2;
        }

        else
        {
          v26 = &v20[2 * v24];
        }
      }

      v34 = v26 + 2;
      if (v26 + 2 != v113)
      {
        v35 = &v20[2 * (v26 != v20)];
        if (v34 != v21)
        {
          v35 = v26 + 2;
        }

        v36 = v35 != v20;
        v37 = v35 + 2;
        v38 = &v20[2 * v36];
        if (v37 == v21)
        {
          v37 = v38;
        }

        v112 = v37;
        v114 = -v25;
        v106 = v21;
        v107 = v20;
        v105 = v25;
        while (1)
        {
          v111 = v34;
          v39 = *(v4 + 32);
          v40 = *(v4 + 48);
          v41 = *(a3 + 32);
          v42 = *(a3 + 48);
          v43 = v26;
          if (sub_10000EF08(-v22, *v26, v39, v40, v41, v42))
          {
            return 1;
          }

          v139[0] = v4;
          v118 = v24;
          v139[1] = v24;
          v110 = v43;
          v140 = v43;
          v44 = v111;
          v141 = v111;
          v142 = v112;
          v143 = v20;
          v144 = v21;
          v145 = 1;
          v146 = 0;
          v45 = *(a3 + 64);
          v46 = &v123[2 * v45];
          v121 = &v123[2 * *(a3 + 72) + 2];
          if (v46 + 2 != v121 && sub_10000EF08(v25, v46[2], v41, v42, v39, v40))
          {
            v47 = v45 + 1;
            v48 = v46 + 4;
            do
            {
              v45 = v47;
              v49 = v48;
              if (v48 == v121)
              {
                break;
              }

              v48 += 2;
              v50 = sub_10000EF08(v25, *v49, v41, v42, v39, v40);
              v47 = v45 + 1;
            }

            while (v50);
            v46 = v49 - 2;
            v44 = v111;
          }

          v51 = v46 + 2;
          if (v46 + 2 != v121)
          {
            break;
          }

LABEL_136:
          v26 = v110 + 2;
          v34 = v44 + 2;
          v24 = v118 + 1;
          v21 = v106;
          v20 = v107;
          v97 = &v107[2 * (v112 != v107)];
          if (v112 + 2 != v106)
          {
            v97 = v112 + 2;
          }

          v112 = v97;
          result = 1;
          v25 = v105;
          if (v34 == v113)
          {
            return result;
          }
        }

        v52 = &v123[2 * (v46 != v123)];
        if (v51 != v122)
        {
          v52 = v46 + 2;
        }

        v53 = v52 != v123;
        v54 = v52 + 2;
        v55 = &v123[2 * v53];
        if (v54 == v122)
        {
          v56 = v55;
        }

        else
        {
          v56 = v54;
        }

        while (1)
        {
          v57 = sub_10000EF08(v114, *v46, *(a3 + 32), *(a3 + 48), *(v4 + 32), *(v4 + 48));
          *&v58 = -1;
          *(&v58 + 1) = -1;
          if (v57)
          {
            goto LABEL_136;
          }

          v59 = 0;
          v136[0] = a3;
          v136[1] = v45;
          v136[2] = v46;
          v136[3] = v51;
          v136[4] = v56;
          v136[5] = v123;
          v136[6] = v122;
          v137 = 0;
          v138 = 0;
          LODWORD(v126) = 0;
          BYTE4(v126) = 0;
          *(&v126 + 1) = -1;
          LOWORD(v127) = 0;
          do
          {
            v60 = &v125 + v59;
            *(v60 + 10) = 0;
            *(v60 + 3) = v58;
            *(v60 + 4) = v58;
            *(v60 + 10) = -1;
            *(v60 + 88) = xmmword_100092590;
            v59 += 80;
            *(v60 + 13) = 0;
            *(v60 + 14) = 0;
          }

          while (v59 != 160);
          *v128 = v117;
          *&v128[8] = *(v4 + 16);
          *&v128[24] = v118;
          *&v129 = -1;
          *v132 = v116;
          *&v132[8] = *(a3 + 16);
          *&v132[24] = v45;
          *&v133 = -1;
          v119 = *v124;
          v120 = v124[1];
          v165 = v139;
          v166 = v136;
          v168 = v139;
          v169 = v136;
          v170[1] = v136;
          v170[2] = v139;
          sub_10000F564(&v171, v140, v141, v46, v51);
          v187 = v115;
          if (v182 == 100)
          {
            goto LABEL_95;
          }

          v151[0] = v133;
          v151[1] = v134;
          v152 = v135;
          v150[1] = v130;
          v150[2] = v131;
          v150[3] = *v132;
          v150[4] = *&v132[16];
          v149[0] = v127;
          v149[1] = *v128;
          v149[2] = *&v128[16];
          v150[0] = v129;
          v147 = v125;
          v148 = v126;
          if (v182 > 0x68u)
          {
            switch(v182)
            {
              case 'i':
                LODWORD(v148) = 2;
                v147 = v172;
                *(v150 + 8) = v174;
                *(&v150[1] + 1) = v175;
                *(v151 + 8) = v176;
                *(&v151[1] + 1) = v177;
                v61 = v184 == 1;
                DWORD2(v149[5 * (v184 != 1)]) = 1;
                DWORD2(v149[5 * v61]) = 2;
                break;
              case 't':
                sub_100030F34(&v147, &v171, &v182, &v167);
                break;
              case 'm':
                if (v186 == 1)
                {
                  sub_1000303C4(&v147, &v171, &v182, &v167);
                }

                else
                {
                  sub_10003097C(&v147, &v171, &v182, v170);
                }

                break;
              default:
                goto LABEL_95;
            }

            goto LABEL_93;
          }

          if (v182 == 99)
          {
            break;
          }

          if (v182 == 101 && (v183 & 1) == 0)
          {
            sub_100031AF4(&v147, &v171, &v167);
LABEL_93:
            *&v154 = v124;
            v76 = &v154;
            v77 = &v147;
            goto LABEL_94;
          }

LABEL_95:
          v78 = v124[1];
          for (i = v120 - v119 + *v124; i != v78; i += 200)
          {
            if (*(i + 40) == 4 && **v19 - 58 <= 0xFFFFFFF7)
            {
              **v19 = 50;
            }

            if (*(i + 120) == 4 && **v19 - 58 <= 0xFFFFFFF7)
            {
              **v19 = 50;
            }
          }

          if ((*v19)[9])
          {
            return 0;
          }

          v46 += 2;
          v51 += 2;
          ++v45;
          if (v56 + 2 == v122)
          {
            v56 = &v123[2 * (v56 != v123)];
          }

          else
          {
            v56 += 2;
          }

          if (v51 == v121)
          {
            goto LABEL_136;
          }
        }

        if ((v183 & 1) == 0)
        {
          if (v185)
          {
            sub_100031614(v139, v136, &v147, &v171, &v182, &v167);
          }

          else
          {
            sub_100031AF4(&v147, &v171, &v167);
            LODWORD(v148) = 5;
          }

          goto LABEL_93;
        }

        v163[0] = v133;
        v163[1] = v134;
        v164 = v135;
        v159[1] = v130;
        v160 = v131;
        v161 = *v132;
        v162 = *&v132[16];
        v156 = v127;
        v157 = *v128;
        v158 = *&v128[16];
        v159[0] = v129;
        v154 = v125;
        v155 = v126;
        v62 = v186;
        if (v185 == 1)
        {
          v101 = v186;
          v63 = v168;
          v64 = v168[2];
          v65 = v168[3];
          if ((v168[10] & 1) == 0)
          {
            v98 = v168[2];
            v99 = v4;
            v67 = *v65;
            v66 = v65[1];
            v103 = v168[3];
            v68 = v168[4];
            v69 = v168;
            if (sub_10000B2C4(*v65, v66, *v68, v68[1]))
            {
              v70 = *(*v69 + 88) + 1;
              v63 = v69;
              v65 = v103;
              while (1)
              {
                v71 = v70 - 1;
                if (!v71)
                {
                  break;
                }

                v108 = v71;
                v72 = v68 + 2;
                v63[4] = v68 + 2;
                if (v68 + 2 == v63[6])
                {
                  v73 = v63[5];
                  v63[4] = v73;
                  v72 = v73;
                  if (*(v63 + 56) == 1)
                  {
                    v72 = v73 + 2;
                    v63[4] = v73 + 2;
                    if (v68 == v73)
                    {
                      v63[4] = v73;
                      v72 = v73;
                    }
                  }
                }

                v74 = v63;
                v75 = sub_10000B2C4(v67, v66, *v72, v72[1]);
                v63 = v74;
                v68 = v72;
                v65 = v103;
                v70 = v108;
                if (!v75)
                {
                  goto LABEL_111;
                }
              }

              v72 = v68;
            }

            else
            {
              v63 = v69;
              v72 = v68;
              v65 = v103;
            }

LABEL_111:
            *(v63 + 4) = *v72;
            *(v63 + 80) = 1;
            v64 = v98;
            v4 = v99;
            v44 = v111;
          }

          v80 = sub_10000DCA4(v64, v65, v63 + 8);
          if (v80 == 1)
          {
            v81 = 2;
          }

          else
          {
            v62 = v101;
            if (!v80)
            {
              goto LABEL_117;
            }

            v81 = 1;
          }

          DWORD2(v160) = 3;
          DWORD2(v156) = v81;
          LODWORD(v155) = 5;
          v154 = v173;
          *(v159 + 8) = v178;
          *(&v159[1] + 1) = v179;
          *(v163 + 8) = v180;
          *(&v163[1] + 1) = v181;
          v153 = v124;
          sub_100038A10(&v153, &v154);
          v62 = v101;
        }

LABEL_117:
        if (v62 == 1)
        {
          v82 = v169;
          v83 = v169[2];
          v84 = v169[3];
          if ((v169[10] & 1) == 0)
          {
            v100 = v4;
            v102 = v169[2];
            v86 = *v84;
            v85 = v84[1];
            v104 = v169[3];
            v87 = v169[4];
            v88 = v169;
            if (sub_10000B2C4(*v84, v85, *v87, v87[1]))
            {
              v89 = *(*v88 + 88) + 1;
              v82 = v88;
              v84 = v104;
              while (1)
              {
                v90 = v89 - 1;
                if (!v90)
                {
                  break;
                }

                v109 = v90;
                v91 = v87 + 2;
                v82[4] = v87 + 2;
                if (v87 + 2 == v82[6])
                {
                  v92 = v82[5];
                  v82[4] = v92;
                  v91 = v92;
                  if (*(v82 + 56) == 1)
                  {
                    v91 = v92 + 2;
                    v82[4] = v92 + 2;
                    if (v87 == v92)
                    {
                      v82[4] = v92;
                      v91 = v92;
                    }
                  }
                }

                v93 = v82;
                v94 = sub_10000B2C4(v86, v85, *v91, v91[1]);
                v82 = v93;
                v87 = v91;
                v84 = v104;
                v89 = v109;
                if (!v94)
                {
                  goto LABEL_130;
                }
              }

              v91 = v87;
            }

            else
            {
              v82 = v88;
              v91 = v87;
              v84 = v104;
            }

LABEL_130:
            *(v82 + 4) = *v91;
            *(v82 + 80) = 1;
            v4 = v100;
            v83 = v102;
            v44 = v111;
          }

          v95 = sub_10000DCA4(v83, v84, v82 + 8);
          if (v95 == 1)
          {
            v96 = 2;
LABEL_135:
            DWORD2(v160) = v96;
            DWORD2(v156) = 3;
            LODWORD(v155) = 5;
            v154 = v172;
            *(v159 + 8) = v174;
            *(&v159[1] + 1) = v175;
            *(v163 + 8) = v176;
            *(&v163[1] + 1) = v177;
            v153 = v124;
            v76 = &v153;
            v77 = &v154;
LABEL_94:
            sub_100038A10(v76, v77);
            goto LABEL_95;
          }

          if (v95)
          {
            v96 = 1;
            goto LABEL_135;
          }
        }

        goto LABEL_95;
      }
    }
  }

  return 1;
}

uint64_t sub_1000383C4(double *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, int *a5)
{
  v8 = a1[1] + a1[3];
  v72 = *a1;
  v73 = *(a1 + 2);
  v9 = *(a1 + 1);
  *&v70[0] = v72;
  v71 = v9;
  v74 = v8 * 0.5;
  v70[1] = v8 * 0.5;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  __p = 0;
  v53 = 0;
  v54 = 0;
  sub_100019804(&v72, v70, a2, &v67, &v64, &v61);
  sub_100019804(&v72, v70, a3, &v58, &v55, &__p);
  v10 = v61;
  v11 = v62;
  v12 = __p;
  if (v61 == v62)
  {
    v49 = a4;
    v14 = v53;
  }

  else
  {
    v13 = v62 - v61;
    v14 = v53;
    if ((v62 - v61) < 0x80 || a4 > 0x63 || (v53 - __p) < 0x79)
    {
      if (__p != v53)
      {
        v15 = v61;
LABEL_5:
        v16 = v12;
        while ((sub_100037714(a5, *v15, *v16) & 1) != 0)
        {
          if (++v16 == v14)
          {
            if (++v15 != v11)
            {
              goto LABEL_5;
            }

            goto LABEL_35;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v25 = v61;
      do
      {
        sub_10001911C(&v75, *v25++ + 2);
      }

      while (v25 != v11);
      v26 = v75;
      v27 = v76;
      if (v12 != v14)
      {
        v28 = v12;
        do
        {
          sub_10001911C(&v75, *v28++ + 2);
        }

        while (v28 != v14);
        v26 = v75;
        v27 = v76;
      }

      v50 = v26;
      v51 = v27;
      if ((sub_1000370D4(v50.f64, &v61, &__p, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

LABEL_35:
    v30 = v58;
    v29 = v59;
    v49 = a4;
    if ((v59 - v58) < 0x80 || (v56 - v55) < 0x80 || a4 > 0x63 || v13 < 0x79)
    {
      if (v58 != v59)
      {
        v31 = v10;
LABEL_39:
        v32 = v30;
        while ((sub_100037714(a5, *v31, *v32) & 1) != 0)
        {
          if (++v32 == v29)
          {
            if (++v31 != v11)
            {
              goto LABEL_39;
            }

            goto LABEL_43;
          }
        }

        goto LABEL_87;
      }

LABEL_43:
      v33 = v55;
      v34 = v56;
      if (v55 != v56)
      {
        v35 = v10;
LABEL_45:
        v36 = v33;
        while ((sub_100037714(a5, *v35, *v36) & 1) != 0)
        {
          if (++v36 == v34)
          {
            if (++v35 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_11;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v37 = v10;
      do
      {
        sub_10001911C(&v75, *v37++ + 2);
      }

      while (v37 != v11);
      v50 = v75;
      v51 = v76;
      if (!sub_1000370D4(v50.f64, &v61, &v58, a4 + 1, a5) || (sub_1000370D4(v50.f64, &v61, &v55, a4 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_11:
  v18 = v67;
  v17 = v68;
  v19 = v68 - v67;
  if (v12 != v14)
  {
    if (v19 < 0x80 || (v65 - v64) < 0x80 || v49 > 0x63 || (v14 - v12) < 0x79)
    {
      if (v67 != v68)
      {
        v20 = v67;
LABEL_16:
        v21 = v12;
        while ((sub_100037714(a5, *v20, *v21) & 1) != 0)
        {
          if (++v21 == v14)
          {
            if (++v20 != v17)
            {
              goto LABEL_16;
            }

            goto LABEL_20;
          }
        }

        goto LABEL_87;
      }

LABEL_20:
      v22 = v64;
      v23 = v65;
LABEL_21:
      if (v22 != v23)
      {
        v24 = v12;
        while ((sub_100037714(a5, *v22, *v24) & 1) != 0)
        {
          if (++v24 == v14)
          {
            ++v22;
            goto LABEL_21;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v75 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v76 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      v38 = v12;
      do
      {
        sub_10001911C(&v75, *v38++ + 2);
      }

      while (v38 != v14);
      v50 = v75;
      v51 = v76;
      if (!sub_1000370D4(v50.f64, &v67, &__p, v49 + 1, a5) || (sub_1000370D4(v50.f64, &v64, &__p, v49 + 1, a5) & 1) == 0)
      {
        goto LABEL_87;
      }
    }
  }

  if (v19 < 0x80 || v49 > 0x63 || (v59 - v58) < 0x79)
  {
    if (v18 != v17)
    {
      v39 = v58;
      v40 = v59;
      if (v58 != v59)
      {
LABEL_66:
        v41 = v39;
        while ((sub_100037714(a5, *v18, *v41) & 1) != 0)
        {
          if (++v41 == v40)
          {
            if (++v18 != v17)
            {
              goto LABEL_66;
            }

            goto LABEL_74;
          }
        }

        goto LABEL_87;
      }
    }
  }

  else if ((sub_1000370D4(&v72, &v67, &v58, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_74:
  v43 = v64;
  v42 = v65;
  if ((v65 - v64) < 0x80 || v49 > 0x63 || (v56 - v55) < 0x79)
  {
    if (v64 == v65)
    {
      goto LABEL_85;
    }

    v44 = v55;
    v45 = v56;
    if (v55 == v56)
    {
      goto LABEL_85;
    }

LABEL_77:
    v46 = v44;
    while ((sub_100037714(a5, *v43, *v46) & 1) != 0)
    {
      if (++v46 == v45)
      {
        if (++v43 != v42)
        {
          goto LABEL_77;
        }

        goto LABEL_85;
      }
    }

LABEL_87:
    v47 = 0;
    if (!v12)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  if ((sub_1000370D4(v70, &v64, &v55, v49 + 1, a5) & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_85:
  v47 = 1;
  if (v12)
  {
LABEL_88:
    operator delete(v12);
  }

LABEL_89:
  if (v55)
  {
    operator delete(v55);
  }

  if (v58)
  {
    operator delete(v58);
  }

  if (v10)
  {
    operator delete(v10);
  }

  if (v64)
  {
    operator delete(v64);
  }

  if (v67)
  {
    operator delete(v67);
  }

  return v47;
}

void sub_10003897C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  if (v30)
  {
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100038A10(uint64_t *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v4 >= v5)
  {
    v16 = *v3;
    v17 = v4 - *v3;
    v18 = 0x8F5C28F5C28F5C29 * (v17 >> 3) + 1;
    if (v18 > 0x147AE147AE147AELL)
    {
      sub_10002E420();
    }

    v19 = 0x8F5C28F5C28F5C29 * ((v5 - v16) >> 3);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0xA3D70A3D70A3D7)
    {
      v20 = 0x147AE147AE147AELL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 <= 0x147AE147AE147AELL)
      {
        operator new();
      }

      sub_10001A5DC();
    }

    v21 = a2[11];
    v22 = 8 * (v17 >> 3);
    *(v22 + 160) = a2[10];
    *(v22 + 176) = v21;
    *(v22 + 192) = *(a2 + 24);
    v23 = a2[7];
    *(v22 + 96) = a2[6];
    *(v22 + 112) = v23;
    v24 = a2[9];
    *(v22 + 128) = a2[8];
    *(v22 + 144) = v24;
    v25 = a2[3];
    *(v22 + 32) = a2[2];
    *(v22 + 48) = v25;
    v26 = a2[5];
    *(v22 + 64) = a2[4];
    *(v22 + 80) = v26;
    v27 = a2[1];
    v15 = v22 + 200;
    v28 = v22 - v17;
    *v22 = *a2;
    *(v22 + 16) = v27;
    memcpy((v22 - v17), v16, v17);
    *v3 = v28;
    *(v3 + 8) = v15;
    *(v3 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[4];
    *(v4 + 48) = a2[3];
    *(v4 + 64) = v8;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    v9 = a2[5];
    v10 = a2[6];
    v11 = a2[8];
    *(v4 + 112) = a2[7];
    *(v4 + 128) = v11;
    *(v4 + 80) = v9;
    *(v4 + 96) = v10;
    v12 = a2[9];
    v13 = a2[10];
    v14 = a2[11];
    *(v4 + 192) = *(a2 + 24);
    *(v4 + 160) = v13;
    *(v4 + 176) = v14;
    *(v4 + 144) = v12;
    v15 = v4 + 200;
  }

  *(v3 + 8) = v15;
  return a1;
}

__n128 sub_100038BBC(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v579 = a2;
  v581 = a2 - 200;
  v572 = (a2 - 600);
  v574 = a2 - 25;
  v571 = a2 - 9;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x8F5C28F5C28F5C29 * ((a2 - v7) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          result.n128_u64[0] = sub_10003A960(a1, (a1 + 200), v581).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = sub_10003AFF0(a1, a1 + 200, (a1 + 25), v581).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = sub_10003B428(a1, (a1 + 200), a1 + 25, (a1 + 600), v581).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v243 = *(a2 - 19);
        v244 = *(a1 + 6);
        if (v243 == v244)
        {
          v245 = *(a2 - 18);
          v246 = *(a1 + 7);
          v247 = v245 < v246;
          if (v245 == v246)
          {
            v248 = *(a2 - 17);
            v249 = *(a1 + 8);
            v247 = v248 < v249;
            if (v248 == v249)
            {
              v247 = *(a2 - 8) < *(a1 + 72);
            }
          }

          if (!v247 && (*(a2 - 16) != *(a1 + 9) || *(a2 - 17) != *(a1 + 8) || v245 != v246 || *(a2 - 15) != *(a1 + 10) || !sub_10003BEC0(v581, a1)))
          {
            return result;
          }
        }

        else if (v243 >= v244)
        {
          return result;
        }

        v598 = *a1;
        v504 = a1[1];
        v505 = a1[2];
        v506 = a1[4];
        v601 = a1[3];
        v602 = v506;
        v599 = v504;
        v600 = v505;
        v507 = a1[5];
        v508 = a1[6];
        v509 = a1[8];
        v605 = a1[7];
        v606 = v509;
        v603 = v507;
        v604 = v508;
        v510 = a1[9];
        v511 = a1[10];
        v512 = a1[11];
        v610 = *(a1 + 24);
        v608 = v511;
        v609 = v512;
        v607 = v510;
        *a1 = *v581;
        v513 = *(v581 + 16);
        v514 = *(v581 + 32);
        v515 = *(v581 + 64);
        a1[3] = *(v581 + 48);
        a1[4] = v515;
        a1[1] = v513;
        a1[2] = v514;
        v516 = *(v581 + 80);
        v517 = *(v581 + 96);
        v518 = *(v581 + 128);
        a1[7] = *(v581 + 112);
        a1[8] = v518;
        a1[5] = v516;
        a1[6] = v517;
        v519 = *(v581 + 144);
        v520 = *(v581 + 160);
        v521 = *(v581 + 176);
        *(a1 + 24) = *(v581 + 192);
        a1[10] = v520;
        a1[11] = v521;
        a1[9] = v519;
        *v581 = v598;
        v522 = v599;
        v523 = v600;
        v524 = v602;
        *(v581 + 48) = v601;
        *(v581 + 64) = v524;
        *(v581 + 16) = v522;
        *(v581 + 32) = v523;
        v525 = v603;
        v526 = v604;
        v527 = v606;
        *(v581 + 112) = v605;
        *(v581 + 128) = v527;
        *(v581 + 80) = v525;
        *(v581 + 96) = v526;
        result = v607;
        v528 = v608;
        v529 = v609;
        *(v581 + 192) = v610;
        *(v581 + 160) = v528;
        *(v581 + 176) = v529;
        *(v581 + 144) = result;
        return result;
      }
    }

    if (v8 <= 4799)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return result;
      }

      v299 = (v9 - 2) >> 1;
      v300 = v299;
      while (1)
      {
        v301 = v300;
        if (v299 < v300)
        {
          goto LABEL_334;
        }

        v302 = (2 * v300) | 1;
        v303 = a1 + 200 * v302;
        if (2 * v300 + 2 >= v9)
        {
          goto LABEL_280;
        }

        v304 = *(v303 + 6);
        v305 = *(v303 + 31);
        if (v304 == v305)
        {
          break;
        }

        if (v304 < v305)
        {
          goto LABEL_279;
        }

LABEL_280:
        v313 = a1 + 200 * v301;
        v314 = *(v303 + 6);
        v315 = *(v313 + 6);
        if (v314 == v315)
        {
          v316 = *(v303 + 7);
          v317 = *(v313 + 7);
          v318 = v316 < v317;
          if (v316 == v317)
          {
            v319 = *(v303 + 8);
            v320 = *(v313 + 8);
            v318 = v319 < v320;
            if (v319 == v320)
            {
              v318 = *(v303 + 72) < *(v313 + 72);
            }
          }

          if (v318)
          {
            goto LABEL_334;
          }

          if (*(v303 + 9) == *(v313 + 9) && *(v303 + 8) == *(v313 + 8) && v316 == v317 && *(v303 + 10) == *(v313 + 10))
          {
            v322 = sub_10003BEC0(v303, a1 + 200 * v301);
            v299 = (v9 - 2) >> 1;
            if (v322)
            {
              goto LABEL_334;
            }
          }
        }

        else if (v314 < v315)
        {
          goto LABEL_334;
        }

        v598 = *v313;
        v323 = *(v313 + 1);
        v324 = *(v313 + 2);
        v325 = *(v313 + 4);
        v601 = *(v313 + 3);
        v602 = v325;
        v599 = v323;
        v600 = v324;
        v326 = *(v313 + 5);
        v327 = *(v313 + 6);
        v328 = *(v313 + 8);
        v605 = *(v313 + 7);
        v606 = v328;
        v603 = v326;
        v604 = v327;
        v329 = *(v313 + 9);
        v330 = *(v313 + 10);
        v331 = *(v313 + 11);
        v610 = *(v313 + 24);
        v608 = v330;
        v609 = v331;
        v607 = v329;
        *v313 = *v303;
        v332 = *(v303 + 1);
        v333 = *(v303 + 2);
        v334 = *(v303 + 4);
        *(v313 + 3) = *(v303 + 3);
        *(v313 + 4) = v334;
        *(v313 + 1) = v332;
        *(v313 + 2) = v333;
        v335 = *(v303 + 5);
        v336 = *(v303 + 6);
        v337 = *(v303 + 8);
        *(v313 + 7) = *(v303 + 7);
        *(v313 + 8) = v337;
        *(v313 + 5) = v335;
        *(v313 + 6) = v336;
        v338 = *(v303 + 9);
        v339 = *(v303 + 10);
        v340 = *(v303 + 11);
        *(v313 + 24) = *(v303 + 24);
        *(v313 + 10) = v339;
        *(v313 + 11) = v340;
        *(v313 + 9) = v338;
        if (v299 < v302)
        {
          goto LABEL_333;
        }

        v341 = *(&v601 + 1);
        v342 = v601;
        v344 = *(&v602 + 1);
        v343 = v603;
        v345 = v602;
        v583 = *(&v601 + 1);
        v578 = v602;
        while (1)
        {
          v346 = v303;
          v347 = 2 * v302;
          v302 = (2 * v302) | 1;
          v303 = a1 + 200 * v302;
          v348 = v347 + 2;
          if (v347 + 2 >= v9)
          {
            goto LABEL_314;
          }

          v349 = *(v303 + 6);
          v350 = *(v303 + 31);
          if (v349 != v350)
          {
            if (v349 >= v350)
            {
              goto LABEL_314;
            }

LABEL_313:
            v303 += 200;
            v302 = v348;
            goto LABEL_314;
          }

          v351 = *(v303 + 7);
          v352 = *(v303 + 32);
          v353 = v351 < v352;
          if (v351 == v352)
          {
            v354 = *(v303 + 8);
            v355 = *(v303 + 33);
            v353 = v354 < v355;
            if (v354 == v355)
            {
              v353 = *(v303 + 72) < *(v303 + 17);
            }
          }

          if (v353)
          {
            goto LABEL_313;
          }

          if (*(v303 + 9) == *(v303 + 34) && *(v303 + 8) == *(v303 + 33) && v351 == v352 && *(v303 + 10) == *(v303 + 35))
          {
            v573 = v344;
            v575 = v343;
            v357 = sub_10003BEC0(a1 + 200 * v302, (v303 + 200));
            v344 = v573;
            v343 = v575;
            v299 = (v9 - 2) >> 1;
            v345 = v578;
            v341 = v583;
            if (v357)
            {
              goto LABEL_313;
            }
          }

LABEL_314:
          v358 = *(v303 + 6);
          if (v358 != v342)
          {
            if (v358 < v342)
            {
              break;
            }

            goto LABEL_330;
          }

          v359 = *(v303 + 7);
          v360 = v359 < v341;
          if (v359 == v341)
          {
            v361 = *(v303 + 8);
            v360 = v361 < v345;
            if (v361 == v345)
            {
              v362 = *(v303 + 10);
              v360 = v362 < v343;
              if (v362 == v343)
              {
                v360 = *(v303 + 9) < v344;
              }
            }
          }

          if (v360)
          {
            break;
          }

          if (*(v303 + 9) == v344 && *(v303 + 8) == v345 && v359 == v341 && *(v303 + 10) == v343)
          {
            v364 = v343;
            v365 = v344;
            v366 = sub_10003BEC0(v303, &v598);
            v344 = v365;
            v299 = (v9 - 2) >> 1;
            v345 = v578;
            v343 = v364;
            v341 = v583;
            if (v366)
            {
              break;
            }
          }

LABEL_330:
          *v346 = *v303;
          v367 = *(v303 + 1);
          v368 = *(v303 + 2);
          v369 = *(v303 + 4);
          *(v346 + 3) = *(v303 + 3);
          *(v346 + 4) = v369;
          *(v346 + 1) = v367;
          *(v346 + 2) = v368;
          v370 = *(v303 + 5);
          v371 = *(v303 + 6);
          v372 = *(v303 + 8);
          *(v346 + 7) = *(v303 + 7);
          *(v346 + 8) = v372;
          *(v346 + 5) = v370;
          *(v346 + 6) = v371;
          v373 = *(v303 + 9);
          v374 = *(v303 + 10);
          v375 = *(v303 + 11);
          *(v346 + 24) = *(v303 + 24);
          *(v346 + 10) = v374;
          *(v346 + 11) = v375;
          *(v346 + 9) = v373;
          if (v299 < v302)
          {
            goto LABEL_333;
          }
        }

        v303 = v346;
LABEL_333:
        *v303 = v598;
        v376 = v599;
        v377 = v600;
        v378 = v602;
        *(v303 + 3) = v601;
        *(v303 + 4) = v378;
        *(v303 + 1) = v376;
        *(v303 + 2) = v377;
        v379 = v603;
        v380 = v604;
        v381 = v606;
        *(v303 + 7) = v605;
        *(v303 + 8) = v381;
        *(v303 + 5) = v379;
        *(v303 + 6) = v380;
        v382 = v607;
        v383 = v608;
        v384 = v609;
        *(v303 + 24) = v610;
        *(v303 + 10) = v383;
        *(v303 + 11) = v384;
        *(v303 + 9) = v382;
LABEL_334:
        v300 = v301 - 1;
        if (!v301)
        {
          v385 = 0x8F5C28F5C28F5C29 * (v8 >> 3);
          v386 = v579;
          while (1)
          {
            v387 = v386;
            v388 = 0;
            v585 = *a1;
            v389 = a1[1];
            v390 = a1[2];
            v391 = a1[4];
            v588 = a1[3];
            v589 = v391;
            v586 = v389;
            v587 = v390;
            v392 = a1[5];
            v393 = a1[6];
            v394 = a1[8];
            v592 = a1[7];
            v593 = v394;
            v590 = v392;
            v591 = v393;
            v395 = a1[9];
            v396 = a1[10];
            v397 = a1[11];
            v597 = *(a1 + 24);
            v595 = v396;
            v596 = v397;
            v594 = v395;
            v398 = a1;
            do
            {
              v399 = v398;
              v400 = v398 + 200 * v388;
              v398 = (v400 + 200);
              v401 = 2 * v388;
              v388 = (2 * v388) | 1;
              v402 = v401 + 2;
              if (v401 + 2 >= v385)
              {
                goto LABEL_354;
              }

              v403 = (v400 + 400);
              v404 = *(v400 + 31);
              v405 = *(v400 + 56);
              if (v404 != v405)
              {
                if (v404 >= v405)
                {
                  goto LABEL_354;
                }

LABEL_353:
                v398 = v403;
                v388 = v402;
                goto LABEL_354;
              }

              v406 = *(v400 + 32);
              v407 = *(v400 + 57);
              v408 = v406 < v407;
              if (v406 == v407)
              {
                v409 = *(v400 + 33);
                v410 = *(v400 + 58);
                v408 = v409 < v410;
                if (v409 == v410)
                {
                  v408 = *(v400 + 17) < *(v400 + 472);
                }
              }

              if (v408)
              {
                goto LABEL_353;
              }

              if (*(v400 + 34) == *(v400 + 59) && *(v400 + 33) == *(v400 + 58))
              {
                v411 = *(v400 + 35);
                v412 = *(v400 + 60);
                v413 = v406 == v407 && v411 == v412;
                if (v413 && sub_10003BEC0(v398, v403))
                {
                  goto LABEL_353;
                }
              }

LABEL_354:
              *v399 = *v398;
              v414 = v398[1];
              v415 = v398[2];
              v416 = v398[4];
              v399[3] = v398[3];
              v399[4] = v416;
              v399[1] = v414;
              v399[2] = v415;
              v417 = v398[5];
              v418 = v398[6];
              v419 = v398[8];
              v399[7] = v398[7];
              v399[8] = v419;
              v399[5] = v417;
              v399[6] = v418;
              v420 = v398[9];
              v421 = v398[10];
              v422 = v398[11];
              *(v399 + 24) = *(v398 + 24);
              v399[10] = v421;
              v399[11] = v422;
              v399[9] = v420;
            }

            while (v388 <= (v385 - 2) / 2);
            v386 = (v387 - 200);
            if (v398 == (v387 - 200))
            {
              *v398 = v585;
              v451 = v586;
              v452 = v587;
              v453 = v589;
              v398[3] = v588;
              v398[4] = v453;
              v398[1] = v451;
              v398[2] = v452;
              v454 = v590;
              v455 = v591;
              v456 = v593;
              v398[7] = v592;
              v398[8] = v456;
              v398[5] = v454;
              v398[6] = v455;
              result = v594;
              v457 = v595;
              v458 = v596;
              *(v398 + 24) = v597;
              v398[10] = v457;
              v398[11] = v458;
              v398[9] = result;
              goto LABEL_391;
            }

            *v398 = *v386;
            v423 = *(v387 - 184);
            v424 = *(v387 - 168);
            v425 = *(v387 - 136);
            v398[3] = *(v387 - 152);
            v398[4] = v425;
            v398[1] = v423;
            v398[2] = v424;
            v426 = *(v387 - 120);
            v427 = *(v387 - 104);
            v428 = *(v387 - 72);
            v398[7] = *(v387 - 88);
            v398[8] = v428;
            v398[5] = v426;
            v398[6] = v427;
            v429 = *(v387 - 56);
            v430 = *(v387 - 40);
            v431 = *(v387 - 24);
            *(v398 + 24) = *(v387 - 1);
            v398[10] = v430;
            v398[11] = v431;
            v398[9] = v429;
            *v386 = v585;
            v432 = v586;
            v433 = v587;
            v434 = v589;
            *(v387 - 152) = v588;
            *(v387 - 136) = v434;
            *(v387 - 184) = v432;
            *(v387 - 168) = v433;
            v435 = v590;
            v436 = v591;
            v437 = v593;
            *(v387 - 88) = v592;
            *(v387 - 72) = v437;
            *(v387 - 120) = v435;
            *(v387 - 104) = v436;
            result = v594;
            v438 = v595;
            v439 = v596;
            *(v387 - 1) = v597;
            *(v387 - 40) = v438;
            *(v387 - 24) = v439;
            *(v387 - 56) = result;
            v440 = v398 - a1 + 200;
            if (v440 < 201)
            {
              goto LABEL_391;
            }

            v441 = -2 - 0x70A3D70A3D70A3D7 * (v440 >> 3);
            v442 = v441 >> 1;
            v443 = a1 + 200 * (v441 >> 1);
            v444 = *(v443 + 6);
            v445 = *(v398 + 6);
            if (v444 == v445)
            {
              v446 = *(v443 + 7);
              v447 = *(v398 + 7);
              v448 = v446 < v447;
              if (v446 == v447)
              {
                v449 = *(v443 + 8);
                v450 = *(v398 + 8);
                v448 = v449 < v450;
                if (v449 == v450)
                {
                  v448 = *(v443 + 72) < *(v398 + 72);
                }
              }

              if (!v448 && (*(v443 + 9) != *(v398 + 9) || *(v443 + 8) != *(v398 + 8) || v446 != v447 || *(v443 + 10) != *(v398 + 10) || !sub_10003BEC0(a1 + 200 * (v441 >> 1), v398)))
              {
                goto LABEL_391;
              }
            }

            else if (v444 >= v445)
            {
              goto LABEL_391;
            }

            v580 = v386;
            v598 = *v398;
            v459 = v398[1];
            v460 = v398[2];
            v461 = v398[4];
            v601 = v398[3];
            v602 = v461;
            v599 = v459;
            v600 = v460;
            v462 = v398[5];
            v463 = v398[6];
            v464 = v398[8];
            v605 = v398[7];
            v606 = v464;
            v603 = v462;
            v604 = v463;
            v465 = v398[9];
            v466 = v398[10];
            v467 = v398[11];
            v610 = *(v398 + 24);
            v608 = v466;
            v609 = v467;
            v607 = v465;
            *v398 = *v443;
            v468 = *(v443 + 1);
            v469 = *(v443 + 2);
            v470 = *(v443 + 4);
            v398[3] = *(v443 + 3);
            v398[4] = v470;
            v398[1] = v468;
            v398[2] = v469;
            v471 = *(v443 + 5);
            v472 = *(v443 + 6);
            v473 = *(v443 + 8);
            v398[7] = *(v443 + 7);
            v398[8] = v473;
            v398[5] = v471;
            v398[6] = v472;
            v474 = *(v443 + 9);
            v475 = *(v443 + 10);
            v476 = *(v443 + 11);
            *(v398 + 24) = *(v443 + 24);
            v398[10] = v475;
            v398[11] = v476;
            v398[9] = v474;
            if (v441 < 2)
            {
              goto LABEL_390;
            }

            v477 = v601;
            v584 = v603;
            v478 = v602;
            while (2)
            {
              v479 = v443;
              v480 = v442 - 1;
              v442 = (v442 - 1) >> 1;
              v443 = a1 + 200 * v442;
              v481 = *(v443 + 6);
              if (v481 != v477)
              {
                if (v481 >= v477)
                {
                  goto LABEL_389;
                }

LABEL_387:
                *v479 = *v443;
                v487 = *(v443 + 1);
                v488 = *(v443 + 2);
                v489 = *(v443 + 4);
                *(v479 + 3) = *(v443 + 3);
                *(v479 + 4) = v489;
                *(v479 + 1) = v487;
                *(v479 + 2) = v488;
                v490 = *(v443 + 5);
                v491 = *(v443 + 6);
                v492 = *(v443 + 8);
                *(v479 + 7) = *(v443 + 7);
                *(v479 + 8) = v492;
                *(v479 + 5) = v490;
                *(v479 + 6) = v491;
                v493 = *(v443 + 9);
                v494 = *(v443 + 10);
                v495 = *(v443 + 11);
                *(v479 + 24) = *(v443 + 24);
                *(v479 + 10) = v494;
                *(v479 + 11) = v495;
                *(v479 + 9) = v493;
                if (v480 <= 1)
                {
                  goto LABEL_390;
                }

                continue;
              }

              break;
            }

            v482 = *(v443 + 7);
            v483 = v482 < *(&v477 + 1);
            if (v482 == *(&v477 + 1))
            {
              v484 = *(v443 + 8);
              v483 = v484 < v478;
              if (v484 == v478)
              {
                v485 = *(v443 + 10);
                v483 = v485 < v584;
                if (v485 == v584)
                {
                  v483 = *(v443 + 9) < *(&v478 + 1);
                }
              }
            }

            if (v483)
            {
              goto LABEL_387;
            }

            if (*(v443 + 4) == v478)
            {
              v486 = v482 == *(&v477 + 1) && *(v443 + 10) == v584;
              if (v486 && sub_10003BEC0(a1 + 200 * v442, &v598))
              {
                goto LABEL_387;
              }
            }

LABEL_389:
            v443 = v479;
LABEL_390:
            *v443 = v598;
            v496 = v599;
            v497 = v600;
            v498 = v602;
            *(v443 + 3) = v601;
            *(v443 + 4) = v498;
            *(v443 + 1) = v496;
            *(v443 + 2) = v497;
            v499 = v603;
            v500 = v604;
            v501 = v606;
            *(v443 + 7) = v605;
            *(v443 + 8) = v501;
            *(v443 + 5) = v499;
            *(v443 + 6) = v500;
            result = v607;
            v502 = v608;
            v503 = v609;
            *(v443 + 24) = v610;
            *(v443 + 10) = v502;
            *(v443 + 11) = v503;
            *(v443 + 9) = result;
            v386 = v580;
LABEL_391:
            v44 = v385-- <= 2;
            if (v44)
            {
              return result;
            }
          }
        }
      }

      v306 = *(v303 + 7);
      v307 = *(v303 + 32);
      v308 = v306 < v307;
      if (v306 == v307)
      {
        v309 = *(v303 + 8);
        v310 = *(v303 + 33);
        v308 = v309 < v310;
        if (v309 == v310)
        {
          v308 = *(v303 + 72) < *(v303 + 17);
        }
      }

      if (!v308)
      {
        if (*(v303 + 9) != *(v303 + 34) || *(v303 + 8) != *(v303 + 33))
        {
          goto LABEL_280;
        }

        if (v306 != v307 || *(v303 + 10) != *(v303 + 35))
        {
          goto LABEL_280;
        }

        v312 = sub_10003BEC0(a1 + 200 * v302, (v303 + 200));
        v299 = (v9 - 2) >> 1;
        if (!v312)
        {
          goto LABEL_280;
        }
      }

LABEL_279:
      v303 += 200;
      v302 = 2 * v301 + 2;
      goto LABEL_280;
    }

    v10 = v9 >> 1;
    v11 = (a1 + 200 * (v9 >> 1));
    if (v8 < 0x6401)
    {
      sub_10003A960(v11, a1, v581);
    }

    else
    {
      sub_10003A960(a1, v11, v581);
      v12 = 200 * v10;
      sub_10003A960((a1 + 200), (a1 + v12 - 200), v574);
      sub_10003A960(a1 + 25, (a1 + v12 + 200), v572);
      sub_10003A960((a1 + v12 - 200), v11, (a1 + v12 + 200));
      v598 = *a1;
      v13 = a1[1];
      v14 = a1[2];
      v15 = a1[4];
      v601 = a1[3];
      v602 = v15;
      v599 = v13;
      v600 = v14;
      v16 = a1[5];
      v17 = a1[6];
      v18 = a1[8];
      v605 = a1[7];
      v606 = v18;
      v603 = v16;
      v604 = v17;
      v19 = a1[9];
      v20 = a1[10];
      v21 = a1[11];
      v610 = *(a1 + 24);
      v608 = v20;
      v609 = v21;
      v607 = v19;
      *a1 = *v11;
      v22 = v11[1];
      v23 = v11[2];
      v24 = v11[4];
      a1[3] = v11[3];
      a1[4] = v24;
      a1[1] = v22;
      a1[2] = v23;
      v25 = v11[5];
      v26 = v11[6];
      v27 = v11[8];
      a1[7] = v11[7];
      a1[8] = v27;
      a1[5] = v25;
      a1[6] = v26;
      v28 = v11[9];
      v29 = v11[10];
      v30 = v11[11];
      *(a1 + 24) = *(v11 + 24);
      a1[10] = v29;
      a1[11] = v30;
      a1[9] = v28;
      *v11 = v598;
      v31 = v599;
      v32 = v600;
      v33 = v602;
      v11[3] = v601;
      v11[4] = v33;
      v11[1] = v31;
      v11[2] = v32;
      v34 = v603;
      v35 = v604;
      v36 = v606;
      v11[7] = v605;
      v11[8] = v36;
      v11[5] = v34;
      v11[6] = v35;
      v37 = v607;
      v38 = v608;
      v39 = v609;
      *(v11 + 24) = v610;
      v11[10] = v38;
      v11[11] = v39;
      v11[9] = v37;
    }

    v577 = a3 - 1;
    if (a4)
    {
      goto LABEL_36;
    }

    v40 = *(a1 - 19);
    v41 = *(a1 + 6);
    if (v40 != v41)
    {
      if (v40 >= v41)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }

    v42 = *(a1 - 18);
    v43 = *(a1 + 7);
    v44 = v42 < v43;
    if (v42 == v43)
    {
      v45 = *(a1 - 17);
      v46 = *(a1 + 8);
      v44 = v45 < v46;
      if (v45 == v46)
      {
        v44 = *(a1 - 8) < *(a1 + 72);
      }
    }

    if (v44 || *(a1 - 16) == *(a1 + 9) && *(a1 - 17) == *(a1 + 8) && v42 == v43 && *(a1 - 15) == *(a1 + 10) && sub_10003BEC0(a1 - 200, a1))
    {
LABEL_36:
      v62 = 0;
      v585 = *a1;
      v63 = a1[1];
      v64 = a1[2];
      v65 = a1[4];
      v588 = a1[3];
      v589 = v65;
      v586 = v63;
      v587 = v64;
      v66 = a1[5];
      v67 = a1[6];
      v68 = a1[8];
      v592 = a1[7];
      v593 = v68;
      v590 = v66;
      v591 = v67;
      v69 = a1[9];
      v70 = a1[10];
      v71 = a1[11];
      v597 = *(a1 + 24);
      v595 = v70;
      v596 = v71;
      v594 = v69;
      v72 = v588;
      v73 = *(&v589 + 1);
      v74 = v590;
      v75 = v589;
      while (1)
      {
        v76 = a1 + v62;
        v77 = *(a1 + v62 + 248);
        if (v77 == v72)
        {
          break;
        }

        if (v77 >= v72)
        {
          goto LABEL_51;
        }

LABEL_50:
        v62 += 200;
      }

      v78 = *(v76 + 32);
      v79 = v78 < *(&v72 + 1);
      if (v78 == *(&v72 + 1))
      {
        v80 = *(a1 + v62 + 264);
        v79 = v80 < v75;
        if (v80 == v75)
        {
          v81 = *(a1 + v62 + 280);
          v79 = v81 < v74;
          if (v81 == v74)
          {
            v79 = *(a1 + v62 + 272) < v73;
          }
        }
      }

      if (v79 || *(a1 + v62 + 272) == v73 && *(a1 + v62 + 264) == v75 && v78 == *(&v72 + 1) && *(a1 + v62 + 280) == v74 && sub_10003BEC0((v76 + 200), &v585))
      {
        goto LABEL_50;
      }

LABEL_51:
      v82 = a1 + v62;
      v83 = a1 + v62 + 200;
      i = v581;
      if (v62)
      {
        while (1)
        {
          v85 = *(i + 6);
          if (v85 == v72)
          {
            v86 = *(i + 7);
            v87 = v86 < *(&v72 + 1);
            if (v86 == *(&v72 + 1))
            {
              v88 = *(i + 8);
              v87 = v88 < v75;
              if (v88 == v75)
              {
                v89 = *(i + 10);
                v87 = v89 < v74;
                if (v89 == v74)
                {
                  v87 = *(i + 9) < v73;
                }
              }
            }

            if (v87 || *(i + 9) == v73 && *(i + 8) == v75 && v86 == *(&v72 + 1) && *(i + 10) == v74 && sub_10003BEC0(i, &v585))
            {
              goto LABEL_86;
            }
          }

          else if (v85 < v72)
          {
            goto LABEL_86;
          }

          i -= 200;
        }
      }

      i = v579;
      if (v83 < v579)
      {
        for (i = v581; ; i -= 200)
        {
          v90 = *(i + 6);
          if (v90 == v72)
          {
            v91 = *(i + 7);
            v92 = v91 < *(&v72 + 1);
            if (v91 == *(&v72 + 1))
            {
              v93 = *(i + 8);
              v92 = v93 < v75;
              if (v93 == v75)
              {
                v94 = *(i + 10);
                v92 = v94 < v74;
                if (v94 == v74)
                {
                  v92 = *(i + 9) < v73;
                }
              }
            }

            if (v92 || *(i + 9) == v73 && *(i + 8) == v75 && v91 == *(&v72 + 1) && *(i + 10) == v74 && sub_10003BEC0(i, &v585) || v83 >= i)
            {
              break;
            }
          }

          else if (v90 < v72 || v83 >= i)
          {
            break;
          }
        }
      }

LABEL_86:
      if (v83 < i)
      {
        v96 = a1 + v62 + 200;
        v97 = i;
        do
        {
          v598 = *v96;
          v98 = *(v96 + 1);
          v99 = *(v96 + 2);
          v100 = *(v96 + 4);
          v601 = *(v96 + 3);
          v602 = v100;
          v599 = v98;
          v600 = v99;
          v101 = *(v96 + 5);
          v102 = *(v96 + 6);
          v103 = *(v96 + 8);
          v605 = *(v96 + 7);
          v606 = v103;
          v603 = v101;
          v604 = v102;
          v104 = *(v96 + 9);
          v105 = *(v96 + 10);
          v106 = *(v96 + 11);
          v610 = *(v96 + 24);
          v608 = v105;
          v609 = v106;
          v607 = v104;
          *v96 = *v97;
          v107 = *(v97 + 16);
          v108 = *(v97 + 32);
          v109 = *(v97 + 64);
          *(v96 + 3) = *(v97 + 48);
          *(v96 + 4) = v109;
          *(v96 + 1) = v107;
          *(v96 + 2) = v108;
          v110 = *(v97 + 80);
          v111 = *(v97 + 96);
          v112 = *(v97 + 128);
          *(v96 + 7) = *(v97 + 112);
          *(v96 + 8) = v112;
          *(v96 + 5) = v110;
          *(v96 + 6) = v111;
          v113 = *(v97 + 144);
          v114 = *(v97 + 160);
          v115 = *(v97 + 176);
          *(v96 + 24) = *(v97 + 192);
          *(v96 + 10) = v114;
          *(v96 + 11) = v115;
          *(v96 + 9) = v113;
          *v97 = v598;
          v116 = v599;
          v117 = v600;
          v118 = v602;
          *(v97 + 48) = v601;
          *(v97 + 64) = v118;
          *(v97 + 16) = v116;
          *(v97 + 32) = v117;
          v119 = v603;
          v120 = v604;
          v121 = v606;
          *(v97 + 112) = v605;
          *(v97 + 128) = v121;
          *(v97 + 80) = v119;
          *(v97 + 96) = v120;
          v122 = v607;
          v123 = v608;
          v124 = v609;
          *(v97 + 192) = v610;
          *(v97 + 160) = v123;
          *(v97 + 176) = v124;
          *(v97 + 144) = v122;
          v125 = v588;
          v126 = *(&v589 + 1);
          v127 = v590;
          v128 = v589;
          do
          {
            while (1)
            {
              v96 += 200;
              v129 = *(v96 + 6);
              if (v129 == v125)
              {
                break;
              }

              if (v129 >= v125)
              {
                goto LABEL_104;
              }
            }

            v130 = *(v96 + 7);
            v131 = v130 < *(&v125 + 1);
            if (v130 == *(&v125 + 1))
            {
              v132 = *(v96 + 8);
              v131 = v132 < v128;
              if (v132 == v128)
              {
                v133 = *(v96 + 10);
                v131 = v133 < v127;
                if (v133 == v127)
                {
                  v131 = *(v96 + 9) < v126;
                }
              }
            }
          }

          while (v131 || *(v96 + 9) == v126 && *(v96 + 8) == v128 && v130 == *(&v125 + 1) && *(v96 + 10) == v127 && sub_10003BEC0(v96, &v585));
          do
          {
LABEL_104:
            while (1)
            {
              v97 -= 200;
              v134 = *(v97 + 48);
              if (v134 == v125)
              {
                break;
              }

              if (v134 < v125)
              {
                goto LABEL_115;
              }
            }

            v135 = *(v97 + 56);
            v136 = v135 < *(&v125 + 1);
            if (v135 == *(&v125 + 1))
            {
              v137 = *(v97 + 64);
              v136 = v137 < v128;
              if (v137 == v128)
              {
                v138 = *(v97 + 80);
                v136 = v138 < v127;
                if (v138 == v127)
                {
                  v136 = *(v97 + 72) < v126;
                }
              }
            }
          }

          while (!v136 && (*(v97 + 72) != v126 || *(v97 + 64) != v128 || v135 != *(&v125 + 1) || *(v97 + 80) != v127 || !sub_10003BEC0(v97, &v585)));
LABEL_115:
          ;
        }

        while (v96 < v97);
        v82 = v96 - 200;
      }

      if (v82 != a1)
      {
        *a1 = *v82;
        v139 = *(v82 + 1);
        v140 = *(v82 + 2);
        v141 = *(v82 + 4);
        a1[3] = *(v82 + 3);
        a1[4] = v141;
        a1[1] = v139;
        a1[2] = v140;
        v142 = *(v82 + 5);
        v143 = *(v82 + 6);
        v144 = *(v82 + 8);
        a1[7] = *(v82 + 7);
        a1[8] = v144;
        a1[5] = v142;
        a1[6] = v143;
        v145 = *(v82 + 9);
        v146 = *(v82 + 10);
        v147 = *(v82 + 11);
        *(a1 + 24) = *(v82 + 24);
        a1[10] = v146;
        a1[11] = v147;
        a1[9] = v145;
      }

      *v82 = v585;
      v148 = v586;
      v149 = v587;
      v150 = v589;
      *(v82 + 3) = v588;
      *(v82 + 4) = v150;
      *(v82 + 1) = v148;
      *(v82 + 2) = v149;
      v151 = v590;
      v152 = v591;
      v153 = v593;
      *(v82 + 7) = v592;
      *(v82 + 8) = v153;
      *(v82 + 5) = v151;
      *(v82 + 6) = v152;
      v154 = v594;
      v155 = v595;
      v156 = v596;
      *(v82 + 24) = v597;
      *(v82 + 10) = v155;
      *(v82 + 11) = v156;
      *(v82 + 9) = v154;
      a3 = v577;
      a2 = v579;
      if (v83 < i)
      {
LABEL_122:
        result.n128_u64[0] = sub_100038BBC(a1, v82, v577, a4 & 1).n128_u64[0];
        a4 = 0;
        v7 = (v82 + 200);
      }

      else
      {
        v157 = sub_10003B9B4(a1, v82);
        v7 = (v82 + 200);
        if (sub_10003B9B4((v82 + 200), v579))
        {
          a2 = v82;
          if (v157)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v157)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
LABEL_25:
      v585 = *a1;
      v47 = a1[1];
      v48 = a1[2];
      v49 = a1[4];
      v588 = a1[3];
      v589 = v49;
      v586 = v47;
      v587 = v48;
      v50 = a1[5];
      v51 = a1[6];
      v52 = a1[8];
      v592 = a1[7];
      v593 = v52;
      v590 = v50;
      v591 = v51;
      v53 = a1[9];
      v54 = a1[10];
      v55 = a1[11];
      v597 = *(a1 + 24);
      v595 = v54;
      v596 = v55;
      v594 = v53;
      v56 = v588;
      v57 = *(a2 - 19);
      if (v588 == v57)
      {
        v58 = *(&v588 + 1);
        v59 = *(a2 - 18);
        v60 = *(&v588 + 1) < v59;
        if (*(&v588 + 1) == v59)
        {
          v61 = *(a2 - 17);
          v60 = v589 < v61;
          if (v589 == v61)
          {
            v60 = __PAIR128__(v590, *(&v589 + 1)) < *(a2 - 8);
          }
        }

        if (v60 || v589 == *(a2 - 136) && *(&v588 + 1) == v59 && v590 == *(a2 - 15) && sub_10003BEC0(&v585, v581))
        {
          goto LABEL_125;
        }
      }

      else if (v588 < v57)
      {
        v58 = *(&v588 + 1);
LABEL_125:
        v160 = *(&v589 + 1);
        v159 = v590;
        v7 = (a1 + 200);
        v161 = v589;
        while (1)
        {
          v162 = *(v7 + 6);
          if (v56 == v162)
          {
            v163 = *(v7 + 7);
            v164 = v58 < v163;
            if (v58 == v163)
            {
              v165 = *(v7 + 8);
              v164 = v161 < v165;
              if (v161 == v165)
              {
                v166 = *(v7 + 10);
                v164 = v159 < v166;
                if (v159 == v166)
                {
                  v164 = v160 < *(v7 + 9);
                }
              }
            }

            if (v164 || v160 == *(v7 + 9) && v161 == *(v7 + 8) && v58 == v163 && v159 == *(v7 + 10) && sub_10003BEC0(&v585, v7))
            {
              goto LABEL_155;
            }
          }

          else if (v56 < v162)
          {
            goto LABEL_155;
          }

          v7 = (v7 + 200);
        }
      }

      v7 = (a1 + 200);
      if ((a1 + 200) < a2)
      {
        v167 = *(&v588 + 1);
        v169 = v589;
        v168 = v590;
        do
        {
          v170 = *(v7 + 6);
          if (v56 == v170)
          {
            v171 = *(v7 + 7);
            v172 = v167 < v171;
            if (v167 == v171)
            {
              v173 = *(v7 + 8);
              v172 = v169 < v173;
              if (v169 == v173)
              {
                v174 = *(v7 + 10);
                v172 = v168 < v174;
                if (v168 == v174)
                {
                  v172 = *(&v169 + 1) < *(v7 + 9);
                }
              }
            }

            if (v172 || v169 == v7[4] && v167 == v171 && v168 == *(v7 + 10) && sub_10003BEC0(&v585, v7))
            {
              break;
            }
          }

          else if (v56 < v170)
          {
            break;
          }

          v7 = (v7 + 200);
        }

        while (v7 < v579);
      }

LABEL_155:
      v175 = v579;
      if (v7 < v579)
      {
        v176 = *(&v588 + 1);
        v177 = v589;
        v178 = v571;
        v180 = *(&v589 + 1);
        v179 = v590;
        while (1)
        {
          v175 = v178 - 56;
          if (v56 == v57)
          {
            v181 = v176 < *v178;
            if (v176 == *v178)
            {
              v182 = *(v178 + 1);
              v181 = v177 < v182;
              if (v177 == v182)
              {
                v183 = *(v178 + 3);
                v181 = v179 < v183;
                if (v179 == v183)
                {
                  v181 = v180 < *(v178 + 2);
                }
              }
            }

            if (!v181 && (v180 != *(v178 + 2) || v177 != *(v178 + 1) || v176 != *v178 || v179 != *(v178 + 3) || !sub_10003BEC0(&v585, v178 - 56)))
            {
              break;
            }
          }

          else if (v56 >= v57)
          {
            break;
          }

          v57 = *(v178 - 26);
          v178 = (v178 - 200);
        }
      }

LABEL_198:
      while (v7 < v175)
      {
        v598 = *v7;
        v184 = v7[1];
        v185 = v7[2];
        v186 = v7[4];
        v601 = v7[3];
        v602 = v186;
        v599 = v184;
        v600 = v185;
        v187 = v7[5];
        v188 = v7[6];
        v189 = v7[8];
        v605 = v7[7];
        v606 = v189;
        v603 = v187;
        v604 = v188;
        v190 = v7[9];
        v191 = v7[10];
        v192 = v7[11];
        v610 = *(v7 + 24);
        v608 = v191;
        v609 = v192;
        v607 = v190;
        *v7 = *v175;
        v193 = *(v175 + 16);
        v194 = *(v175 + 32);
        v195 = *(v175 + 64);
        v7[3] = *(v175 + 48);
        v7[4] = v195;
        v7[1] = v193;
        v7[2] = v194;
        v196 = *(v175 + 80);
        v197 = *(v175 + 96);
        v198 = *(v175 + 128);
        v7[7] = *(v175 + 112);
        v7[8] = v198;
        v7[5] = v196;
        v7[6] = v197;
        v199 = *(v175 + 144);
        v200 = *(v175 + 160);
        v201 = *(v175 + 176);
        *(v7 + 24) = *(v175 + 192);
        v7[10] = v200;
        v7[11] = v201;
        v7[9] = v199;
        *v175 = v598;
        v202 = v599;
        v203 = v600;
        v204 = v602;
        *(v175 + 48) = v601;
        *(v175 + 64) = v204;
        *(v175 + 16) = v202;
        *(v175 + 32) = v203;
        v205 = v603;
        v206 = v604;
        v207 = v606;
        *(v175 + 112) = v605;
        *(v175 + 128) = v207;
        *(v175 + 80) = v205;
        *(v175 + 96) = v206;
        v208 = v607;
        v209 = v608;
        v210 = v609;
        *(v175 + 192) = v610;
        *(v175 + 160) = v209;
        *(v175 + 176) = v210;
        *(v175 + 144) = v208;
        v211 = v588;
        v213 = *(&v589 + 1);
        v212 = v590;
        v214 = v589;
        do
        {
          while (1)
          {
            v7 = (v7 + 200);
            v215 = *(v7 + 6);
            if (v211 == v215)
            {
              break;
            }

            if (v211 < v215)
            {
              goto LABEL_187;
            }
          }

          v216 = *(v7 + 7);
          v217 = *(&v211 + 1) < v216;
          if (*(&v211 + 1) == v216)
          {
            v218 = *(v7 + 8);
            v217 = v214 < v218;
            if (v214 == v218)
            {
              v219 = *(v7 + 10);
              v217 = v212 < v219;
              if (v212 == v219)
              {
                v217 = v213 < *(v7 + 9);
              }
            }
          }
        }

        while (!v217 && (v213 != *(v7 + 9) || v214 != *(v7 + 8) || *(&v211 + 1) != v216 || v212 != *(v7 + 10) || !sub_10003BEC0(&v585, v7)));
        do
        {
LABEL_187:
          while (1)
          {
            v175 -= 200;
            v220 = *(v175 + 48);
            if (v211 == v220)
            {
              break;
            }

            if (v211 >= v220)
            {
              goto LABEL_198;
            }
          }

          v221 = *(v175 + 56);
          v222 = *(&v211 + 1) < v221;
          if (*(&v211 + 1) == v221)
          {
            v223 = *(v175 + 64);
            v222 = v214 < v223;
            if (v214 == v223)
            {
              v224 = *(v175 + 80);
              v222 = v212 < v224;
              if (v212 == v224)
              {
                v222 = v213 < *(v175 + 72);
              }
            }
          }
        }

        while (v222 || v213 == *(v175 + 72) && v214 == *(v175 + 64) && *(&v211 + 1) == v221 && v212 == *(v175 + 80) && sub_10003BEC0(&v585, v175));
      }

      v225 = (v7 - 200);
      if ((v7 - 200) != a1)
      {
        *a1 = *v225;
        v226 = *(v7 - 184);
        v227 = *(v7 - 168);
        v228 = *(v7 - 136);
        a1[3] = *(v7 - 152);
        a1[4] = v228;
        a1[1] = v226;
        a1[2] = v227;
        v229 = *(v7 - 120);
        v230 = *(v7 - 104);
        v231 = *(v7 - 72);
        a1[7] = *(v7 - 88);
        a1[8] = v231;
        a1[5] = v229;
        a1[6] = v230;
        v232 = *(v7 - 56);
        v233 = *(v7 - 40);
        v234 = *(v7 - 24);
        *(a1 + 24) = *(v7 - 1);
        a1[10] = v233;
        a1[11] = v234;
        a1[9] = v232;
      }

      a4 = 0;
      *v225 = v585;
      v235 = v586;
      v236 = v587;
      v237 = v589;
      *(v7 - 152) = v588;
      *(v7 - 136) = v237;
      *(v7 - 184) = v235;
      *(v7 - 168) = v236;
      v238 = v590;
      v239 = v591;
      v240 = v593;
      *(v7 - 88) = v592;
      *(v7 - 72) = v240;
      *(v7 - 120) = v238;
      *(v7 - 104) = v239;
      result = v594;
      v241 = v595;
      v242 = v596;
      *(v7 - 1) = v597;
      *(v7 - 40) = v241;
      *(v7 - 24) = v242;
      *(v7 - 56) = result;
      a3 = v577;
      a2 = v579;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (a1 == a2)
    {
      return result;
    }

    while (1)
    {
LABEL_397:
      if ((a1 + 200) == a2)
      {
        return result;
      }

      v530 = a1;
      a1 = (a1 + 200);
      v531 = *(v530 + 31);
      v532 = *(v530 + 6);
      if (v531 != v532)
      {
        break;
      }

      v533 = *(v530 + 32);
      v534 = *(v530 + 7);
      v535 = v533 < v534;
      if (v533 == v534)
      {
        v536 = *(v530 + 33);
        v537 = *(v530 + 8);
        v535 = v536 < v537;
        if (v536 == v537)
        {
          v535 = v530[17] < *(v530 + 72);
        }
      }

      if (v535 || *(v530 + 34) == *(v530 + 9) && *(v530 + 33) == *(v530 + 8) && v533 == v534 && *(v530 + 35) == *(v530 + 10) && sub_10003BEC0(a1, v530))
      {
        goto LABEL_410;
      }
    }

    if (v531 >= v532)
    {
      goto LABEL_397;
    }

LABEL_410:
    v598 = *a1;
    v538 = a1[1];
    v539 = a1[2];
    v540 = a1[4];
    v601 = a1[3];
    v602 = v540;
    v599 = v538;
    v600 = v539;
    v541 = a1[5];
    v542 = a1[6];
    v543 = a1[8];
    v605 = a1[7];
    v606 = v543;
    v603 = v541;
    v604 = v542;
    v544 = a1[9];
    v545 = a1[10];
    v546 = a1[11];
    v610 = *(a1 + 24);
    v608 = v545;
    v609 = v546;
    v607 = v544;
    v547 = v601;
    v549 = *(&v602 + 1);
    v548 = v603;
    v550 = v602;
    for (j = a1; ; j = (j - 200))
    {
      v552 = *(j - 56);
      v553 = *(j - 24);
      j[10] = *(j - 40);
      j[11] = v553;
      *(j + 24) = *(j - 1);
      v554 = *(j - 120);
      v555 = *(j - 88);
      j[6] = *(j - 104);
      j[7] = v555;
      j[8] = *(j - 72);
      j[9] = v552;
      v556 = *(j - 184);
      v557 = *(j - 152);
      j[2] = *(j - 168);
      j[3] = v557;
      j[4] = *(j - 136);
      j[5] = v554;
      *j = *(j - 200);
      j[1] = v556;
      v558 = *(j - 44);
      if (v547 == v558)
      {
        v559 = *(j - 43);
        v560 = *(&v547 + 1) < v559;
        if (*(&v547 + 1) == v559)
        {
          v561 = *(j - 42);
          v560 = v550 < v561;
          if (v550 == v561)
          {
            v562 = *(j - 40);
            v560 = v548 < v562;
            if (v548 == v562)
            {
              v560 = v549 < *(j - 41);
            }
          }
        }

        if (!v560 && (v549 != *(j - 41) || v550 != *(j - 42) || *(&v547 + 1) != v559 || v548 != *(j - 40) || !sub_10003BEC0(&v598, (j - 25))))
        {
LABEL_425:
          *(j - 200) = v598;
          v563 = v599;
          v564 = v600;
          v565 = v601;
          *(j - 136) = v602;
          *(j - 152) = v565;
          *(j - 168) = v564;
          *(j - 184) = v563;
          v566 = v603;
          v567 = v604;
          v568 = v605;
          *(j - 72) = v606;
          *(j - 88) = v568;
          *(j - 104) = v567;
          *(j - 120) = v566;
          result = v607;
          v569 = v608;
          v570 = v609;
          *(j - 1) = v610;
          *(j - 24) = v570;
          *(j - 40) = v569;
          *(j - 56) = result;
          a2 = v579;
          goto LABEL_397;
        }
      }

      else if (v547 >= v558)
      {
        goto LABEL_425;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v250 = (a1 + 200);
  if ((a1 + 200) == a2)
  {
    return result;
  }

  v251 = 0;
  v252 = a1;
  while (2)
  {
    v253 = v252;
    v252 = v250;
    v254 = *(v253 + 248);
    v255 = *(v253 + 48);
    if (v254 == v255)
    {
      v256 = *(v253 + 256);
      v257 = *(v253 + 56);
      v258 = v256 < v257;
      if (v256 == v257)
      {
        v259 = *(v253 + 264);
        v260 = *(v253 + 64);
        v258 = v259 < v260;
        if (v259 == v260)
        {
          v258 = *(v253 + 272) < *(v253 + 72);
        }
      }

      if (!v258 && (*(v253 + 272) != *(v253 + 72) || *(v253 + 264) != *(v253 + 64) || v256 != v257 || *(v253 + 280) != *(v253 + 80) || !sub_10003BEC0(v252, v253)))
      {
        goto LABEL_258;
      }
    }

    else if (v254 >= v255)
    {
      goto LABEL_258;
    }

    v598 = *v252;
    v261 = v252[1];
    v262 = v252[2];
    v263 = v252[4];
    v601 = v252[3];
    v602 = v263;
    v599 = v261;
    v600 = v262;
    v264 = v252[5];
    v265 = v252[6];
    v266 = v252[8];
    v605 = v252[7];
    v606 = v266;
    v603 = v264;
    v604 = v265;
    v267 = v252[9];
    v268 = v252[10];
    v269 = v252[11];
    v610 = *(v252 + 24);
    v608 = v268;
    v609 = v269;
    v607 = v267;
    v270 = *(v253 + 176);
    v252[10] = *(v253 + 160);
    v252[11] = v270;
    *(v252 + 24) = *(v253 + 192);
    v271 = *(v253 + 112);
    v252[6] = *(v253 + 96);
    v252[7] = v271;
    v272 = *(v253 + 144);
    v252[8] = *(v253 + 128);
    v252[9] = v272;
    v273 = *(v253 + 48);
    v252[2] = *(v253 + 32);
    v252[3] = v273;
    v274 = *(v253 + 80);
    v252[4] = *(v253 + 64);
    v252[5] = v274;
    v275 = *(v253 + 16);
    v276 = a1;
    *v252 = *v253;
    v252[1] = v275;
    if (v253 == a1)
    {
      goto LABEL_257;
    }

    *v278 = v601;
    v582 = v603;
    v277 = v251;
    *&v278[16] = v602;
    while (2)
    {
      v279 = a1 + v277;
      v280 = *(a1 + v277 - 152);
      if (*v278 != v280)
      {
        if (*v278 >= v280)
        {
          goto LABEL_256;
        }

        goto LABEL_254;
      }

      v281 = *(v279 - 18);
      v282 = *&v278[8] < v281;
      if (*&v278[8] == v281)
      {
        v283 = *(a1 + v277 - 136);
        v282 = *&v278[16] < v283;
        if (*&v278[16] == v283)
        {
          v284 = *(a1 + v277 - 120);
          v282 = v582 < v284;
          if (v582 == v284)
          {
            v282 = *&v278[24] < *(a1 + v277 - 128);
          }
        }
      }

      if (v282)
      {
LABEL_254:
        v253 -= 200;
        v285 = *(a1 + v277 - 24);
        *(v279 + 10) = *(a1 + v277 - 40);
        *(v279 + 11) = v285;
        *(v279 + 24) = *(a1 + v277 - 8);
        v286 = *(a1 + v277 - 88);
        *(v279 + 6) = *(a1 + v277 - 104);
        *(v279 + 7) = v286;
        v287 = *(a1 + v277 - 56);
        *(v279 + 8) = *(a1 + v277 - 72);
        *(v279 + 9) = v287;
        v288 = *(a1 + v277 - 152);
        *(v279 + 2) = *(a1 + v277 - 168);
        *(v279 + 3) = v288;
        v289 = *(a1 + v277 - 120);
        *(v279 + 4) = *(a1 + v277 - 136);
        *(v279 + 5) = v289;
        v290 = *(a1 + v277 - 184);
        *v279 = *(a1 + v277 - 200);
        *(v279 + 1) = v290;
        v277 -= 200;
        if (!v277)
        {
          v276 = a1;
          goto LABEL_257;
        }

        continue;
      }

      break;
    }

    if (*&v278[24] == *(a1 + v277 - 128) && *&v278[8] == __PAIR128__(*(a1 + v277 - 136), v281) && v582 == *(a1 + v277 - 120))
    {
      if (!sub_10003BEC0(&v598, a1 + v277 - 200))
      {
        v276 = (a1 + v277);
        goto LABEL_257;
      }

      goto LABEL_254;
    }

LABEL_256:
    v276 = v253;
LABEL_257:
    *v276 = v598;
    v291 = v599;
    v292 = v600;
    v293 = v602;
    v276[3] = v601;
    v276[4] = v293;
    v276[1] = v291;
    v276[2] = v292;
    v294 = v603;
    v295 = v604;
    v296 = v606;
    v276[7] = v605;
    v276[8] = v296;
    v276[5] = v294;
    v276[6] = v295;
    result = v607;
    v297 = v608;
    v298 = v609;
    *(v276 + 24) = v610;
    v276[10] = v297;
    v276[11] = v298;
    v276[9] = result;
LABEL_258:
    v250 = (v252 + 200);
    v251 += 200;
    if ((v252 + 200) != v579)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_10003A960(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *(a2 + 6);
  v7 = *(a1 + 6);
  if (v6 == v7)
  {
    v8 = *(a2 + 7);
    v9 = *(a1 + 7);
    v10 = v8 < v9;
    if (v8 == v9)
    {
      v11 = *(a2 + 8);
      v12 = *(a1 + 8);
      v10 = v11 < v12;
      if (v11 == v12)
      {
        v10 = *(a2 + 72) < *(a1 + 72);
      }
    }

    if (!v10 && (*(a2 + 9) != *(a1 + 9) || *(a2 + 8) != *(a1 + 8) || v8 != v9 || *(a2 + 10) != *(a1 + 10) || !sub_10003BEC0(a2, a1)))
    {
LABEL_11:
      v14 = *(a3 + 6);
      if (v14 == v6)
      {
        v15 = *(a3 + 7);
        v16 = *(a2 + 7);
        v17 = v15 < v16;
        if (v15 == v16)
        {
          v18 = *(a3 + 8);
          v19 = *(a2 + 8);
          v17 = v18 < v19;
          if (v18 == v19)
          {
            v17 = *(a3 + 72) < *(a2 + 72);
          }
        }

        if (!v17 && (*(a3 + 9) != *(a2 + 9) || *(a3 + 8) != *(a2 + 8) || v15 != v16 || *(a3 + 10) != *(a2 + 10) || !sub_10003BEC0(a3, a2)))
        {
          return result;
        }
      }

      else if (v14 >= v6)
      {
        return result;
      }

      v127 = a2[10];
      v131 = a2[11];
      v135 = *(a2 + 24);
      v111 = a2[6];
      v115 = a2[7];
      v119 = a2[8];
      v123 = a2[9];
      v95 = a2[2];
      v99 = a2[3];
      v103 = a2[4];
      v107 = a2[5];
      v87 = *a2;
      v91 = a2[1];
      *a2 = *a3;
      v51 = a3[1];
      v52 = a3[2];
      v53 = a3[4];
      a2[3] = a3[3];
      a2[4] = v53;
      a2[1] = v51;
      a2[2] = v52;
      v54 = a3[5];
      v55 = a3[6];
      v56 = a3[8];
      a2[7] = a3[7];
      a2[8] = v56;
      a2[5] = v54;
      a2[6] = v55;
      v57 = a3[9];
      v58 = a3[10];
      v59 = a3[11];
      *(a2 + 24) = *(a3 + 24);
      a2[10] = v58;
      a2[11] = v59;
      a2[9] = v57;
      a3[10] = v127;
      a3[11] = v131;
      *(a3 + 24) = v135;
      a3[6] = v111;
      a3[7] = v115;
      a3[8] = v119;
      a3[9] = v123;
      a3[2] = v95;
      a3[3] = v99;
      a3[4] = v103;
      a3[5] = v107;
      result = v91;
      *a3 = v87;
      a3[1] = v91;
      v60 = *(a2 + 6);
      v61 = *(a1 + 6);
      if (v60 == v61)
      {
        v62 = *(a2 + 7);
        v63 = *(a1 + 7);
        v64 = v62 < v63;
        if (v62 == v63)
        {
          v65 = *(a2 + 8);
          v66 = *(a1 + 8);
          v64 = v65 < v66;
          if (v65 == v66)
          {
            v64 = *(a2 + 72) < *(a1 + 72);
          }
        }

        if (!v64 && (*(a2 + 9) != *(a1 + 9) || *(a2 + 8) != *(a1 + 8) || v62 != v63 || *(a2 + 10) != *(a1 + 10) || !sub_10003BEC0(a2, a1)))
        {
          return result;
        }
      }

      else if (v60 >= v61)
      {
        return result;
      }

      v128 = a1[10];
      v132 = a1[11];
      v136 = *(a1 + 24);
      v112 = a1[6];
      v116 = a1[7];
      v120 = a1[8];
      v124 = a1[9];
      v96 = a1[2];
      v100 = a1[3];
      v104 = a1[4];
      v108 = a1[5];
      v88 = *a1;
      v92 = a1[1];
      *a1 = *a2;
      v76 = a2[1];
      v77 = a2[2];
      v78 = a2[4];
      a1[3] = a2[3];
      a1[4] = v78;
      a1[1] = v76;
      a1[2] = v77;
      v79 = a2[5];
      v80 = a2[6];
      v81 = a2[8];
      a1[7] = a2[7];
      a1[8] = v81;
      a1[5] = v79;
      a1[6] = v80;
      v82 = a2[9];
      v83 = a2[10];
      v84 = a2[11];
      *(a1 + 24) = *(a2 + 24);
      a1[10] = v83;
      a1[11] = v84;
      a1[9] = v82;
      a2[10] = v128;
      a2[11] = v132;
      *(a2 + 24) = v136;
      a2[6] = v112;
      a2[7] = v116;
      a2[8] = v120;
      a2[9] = v124;
      a2[2] = v96;
      a2[3] = v100;
      a2[4] = v104;
      a2[5] = v108;
      result = v92;
      *a2 = v88;
      a2[1] = v92;
      return result;
    }
  }

  else if (v6 >= v7)
  {
    goto LABEL_11;
  }

  v20 = *(a3 + 6);
  if (v20 != v6)
  {
    if (v20 >= v6)
    {
      goto LABEL_33;
    }

LABEL_45:
    v126 = a1[10];
    v130 = a1[11];
    v134 = *(a1 + 24);
    v110 = a1[6];
    v114 = a1[7];
    v118 = a1[8];
    v122 = a1[9];
    v94 = a1[2];
    v98 = a1[3];
    v102 = a1[4];
    v106 = a1[5];
    v86 = *a1;
    v90 = a1[1];
    *a1 = *a3;
    v42 = a3[1];
    v43 = a3[2];
    v44 = a3[4];
    a1[3] = a3[3];
    a1[4] = v44;
    a1[1] = v42;
    a1[2] = v43;
    v45 = a3[5];
    v46 = a3[6];
    v47 = a3[8];
    a1[7] = a3[7];
    a1[8] = v47;
    a1[5] = v45;
    a1[6] = v46;
    v48 = a3[9];
    v49 = a3[10];
    v50 = a3[11];
    *(a1 + 24) = *(a3 + 24);
    a1[10] = v49;
    a1[11] = v50;
    a1[9] = v48;
LABEL_60:
    a3[10] = v126;
    a3[11] = v130;
    *(a3 + 24) = v134;
    a3[6] = v110;
    a3[7] = v114;
    a3[8] = v118;
    a3[9] = v122;
    a3[2] = v94;
    a3[3] = v98;
    a3[4] = v102;
    a3[5] = v106;
    result = v90;
    *a3 = v86;
    a3[1] = v90;
    return result;
  }

  v21 = *(a3 + 7);
  v22 = *(a2 + 7);
  v23 = v21 < v22;
  if (v21 == v22)
  {
    v24 = *(a3 + 8);
    v25 = *(a2 + 8);
    v23 = v24 < v25;
    if (v24 == v25)
    {
      v23 = *(a3 + 72) < *(a2 + 72);
    }
  }

  if (v23 || *(a3 + 9) == *(a2 + 9) && *(a3 + 8) == *(a2 + 8) && v21 == v22 && *(a3 + 10) == *(a2 + 10) && sub_10003BEC0(a3, a2))
  {
    goto LABEL_45;
  }

LABEL_33:
  v125 = a1[10];
  v129 = a1[11];
  v133 = *(a1 + 24);
  v109 = a1[6];
  v113 = a1[7];
  v117 = a1[8];
  v121 = a1[9];
  v93 = a1[2];
  v97 = a1[3];
  v101 = a1[4];
  v105 = a1[5];
  v85 = *a1;
  v89 = a1[1];
  *a1 = *a2;
  v26 = a2[1];
  v27 = a2[2];
  v28 = a2[4];
  a1[3] = a2[3];
  a1[4] = v28;
  a1[1] = v26;
  a1[2] = v27;
  v29 = a2[5];
  v30 = a2[6];
  v31 = a2[8];
  a1[7] = a2[7];
  a1[8] = v31;
  a1[5] = v29;
  a1[6] = v30;
  v32 = a2[9];
  v33 = a2[10];
  v34 = a2[11];
  *(a1 + 24) = *(a2 + 24);
  a1[10] = v33;
  a1[11] = v34;
  a1[9] = v32;
  a2[10] = v125;
  a2[11] = v129;
  *(a2 + 24) = v133;
  a2[6] = v109;
  a2[7] = v113;
  a2[8] = v117;
  a2[9] = v121;
  a2[2] = v93;
  a2[3] = v97;
  a2[4] = v101;
  a2[5] = v105;
  result = v89;
  *a2 = v85;
  a2[1] = v89;
  v35 = *(a3 + 6);
  v36 = *(a2 + 6);
  if (v35 != v36)
  {
    if (v35 >= v36)
    {
      return result;
    }

    goto LABEL_59;
  }

  v37 = *(a3 + 7);
  v38 = *(a2 + 7);
  v39 = v37 < v38;
  if (v37 == v38)
  {
    v40 = *(a3 + 8);
    v41 = *(a2 + 8);
    v39 = v40 < v41;
    if (v40 == v41)
    {
      v39 = *(a3 + 72) < *(a2 + 72);
    }
  }

  if (v39 || *(a3 + 9) == *(a2 + 9) && *(a3 + 8) == *(a2 + 8) && v37 == v38 && *(a3 + 10) == *(a2 + 10) && sub_10003BEC0(a3, a2))
  {
LABEL_59:
    v126 = a2[10];
    v130 = a2[11];
    v134 = *(a2 + 24);
    v110 = a2[6];
    v114 = a2[7];
    v118 = a2[8];
    v122 = a2[9];
    v94 = a2[2];
    v98 = a2[3];
    v102 = a2[4];
    v106 = a2[5];
    v86 = *a2;
    v90 = a2[1];
    *a2 = *a3;
    v67 = a3[1];
    v68 = a3[2];
    v69 = a3[4];
    a2[3] = a3[3];
    a2[4] = v69;
    a2[1] = v67;
    a2[2] = v68;
    v70 = a3[5];
    v71 = a3[6];
    v72 = a3[8];
    a2[7] = a3[7];
    a2[8] = v72;
    a2[5] = v70;
    a2[6] = v71;
    v73 = a3[9];
    v74 = a3[10];
    v75 = a3[11];
    *(a2 + 24) = *(a3 + 24);
    a2[10] = v74;
    a2[11] = v75;
    a2[9] = v73;
    goto LABEL_60;
  }

  return result;
}

__n128 sub_10003AFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result.n128_u64[0] = sub_10003A960(a1, a2, a3).n128_u64[0];
  v9 = *(a4 + 48);
  v10 = *(a3 + 48);
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      return result;
    }

LABEL_13:
    v87 = *(a3 + 160);
    v90 = *(a3 + 176);
    v93 = *(a3 + 192);
    v75 = *(a3 + 96);
    v78 = *(a3 + 112);
    v81 = *(a3 + 128);
    v84 = *(a3 + 144);
    v63 = *(a3 + 32);
    v66 = *(a3 + 48);
    v69 = *(a3 + 64);
    v72 = *(a3 + 80);
    v57 = *a3;
    v60 = *(a3 + 16);
    *a3 = *a4;
    v16 = *(a4 + 16);
    v17 = *(a4 + 32);
    v18 = *(a4 + 64);
    *(a3 + 48) = *(a4 + 48);
    *(a3 + 64) = v18;
    *(a3 + 16) = v16;
    *(a3 + 32) = v17;
    v19 = *(a4 + 80);
    v20 = *(a4 + 96);
    v21 = *(a4 + 128);
    *(a3 + 112) = *(a4 + 112);
    *(a3 + 128) = v21;
    *(a3 + 80) = v19;
    *(a3 + 96) = v20;
    v22 = *(a4 + 144);
    v23 = *(a4 + 160);
    v24 = *(a4 + 176);
    *(a3 + 192) = *(a4 + 192);
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    *(a3 + 144) = v22;
    *(a4 + 160) = v87;
    *(a4 + 176) = v90;
    *(a4 + 192) = v93;
    *(a4 + 96) = v75;
    *(a4 + 112) = v78;
    *(a4 + 128) = v81;
    *(a4 + 144) = v84;
    *(a4 + 32) = v63;
    *(a4 + 48) = v66;
    *(a4 + 64) = v69;
    *(a4 + 80) = v72;
    result = v60;
    *a4 = v57;
    *(a4 + 16) = v60;
    v25 = *(a3 + 48);
    v26 = *(a2 + 48);
    if (v25 == v26)
    {
      v27 = *(a3 + 56);
      v28 = *(a2 + 56);
      v29 = v27 < v28;
      if (v27 == v28)
      {
        v30 = *(a3 + 64);
        v31 = *(a2 + 64);
        v29 = v30 < v31;
        if (v30 == v31)
        {
          v29 = *(a3 + 72) < *(a2 + 72);
        }
      }

      if (!v29 && (*(a3 + 72) != *(a2 + 72) || *(a3 + 64) != *(a2 + 64) || v27 != v28 || *(a3 + 80) != *(a2 + 80) || !sub_10003BEC0(a3, a2)))
      {
        return result;
      }
    }

    else if (v25 >= v26)
    {
      return result;
    }

    v88 = *(a2 + 160);
    v91 = *(a2 + 176);
    v94 = *(a2 + 192);
    v76 = *(a2 + 96);
    v79 = *(a2 + 112);
    v82 = *(a2 + 128);
    v85 = *(a2 + 144);
    v64 = *(a2 + 32);
    v67 = *(a2 + 48);
    v70 = *(a2 + 64);
    v73 = *(a2 + 80);
    v58 = *a2;
    v61 = *(a2 + 16);
    *a2 = *a3;
    v32 = *(a3 + 16);
    v33 = *(a3 + 32);
    v34 = *(a3 + 64);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 64) = v34;
    *(a2 + 16) = v32;
    *(a2 + 32) = v33;
    v35 = *(a3 + 80);
    v36 = *(a3 + 96);
    v37 = *(a3 + 128);
    *(a2 + 112) = *(a3 + 112);
    *(a2 + 128) = v37;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = *(a3 + 144);
    v39 = *(a3 + 160);
    v40 = *(a3 + 176);
    *(a2 + 192) = *(a3 + 192);
    *(a2 + 160) = v39;
    *(a2 + 176) = v40;
    *(a2 + 144) = v38;
    *(a3 + 160) = v88;
    *(a3 + 176) = v91;
    *(a3 + 192) = v94;
    *(a3 + 96) = v76;
    *(a3 + 112) = v79;
    *(a3 + 128) = v82;
    *(a3 + 144) = v85;
    *(a3 + 32) = v64;
    *(a3 + 48) = v67;
    *(a3 + 64) = v70;
    *(a3 + 80) = v73;
    result = v61;
    *a3 = v58;
    *(a3 + 16) = v61;
    v41 = *(a2 + 48);
    v42 = *(a1 + 48);
    if (v41 == v42)
    {
      v43 = *(a2 + 56);
      v44 = *(a1 + 56);
      v45 = v43 < v44;
      if (v43 == v44)
      {
        v46 = *(a2 + 64);
        v47 = *(a1 + 64);
        v45 = v46 < v47;
        if (v46 == v47)
        {
          v45 = *(a2 + 72) < *(a1 + 72);
        }
      }

      if (!v45 && (*(a2 + 72) != *(a1 + 72) || *(a2 + 64) != *(a1 + 64) || v43 != v44 || *(a2 + 80) != *(a1 + 80) || !sub_10003BEC0(a2, a1)))
      {
        return result;
      }
    }

    else if (v41 >= v42)
    {
      return result;
    }

    v89 = *(a1 + 160);
    v92 = *(a1 + 176);
    v95 = *(a1 + 192);
    v77 = *(a1 + 96);
    v80 = *(a1 + 112);
    v83 = *(a1 + 128);
    v86 = *(a1 + 144);
    v65 = *(a1 + 32);
    v68 = *(a1 + 48);
    v71 = *(a1 + 64);
    v74 = *(a1 + 80);
    v59 = *a1;
    v62 = *(a1 + 16);
    *a1 = *a2;
    v48 = *(a2 + 16);
    v49 = *(a2 + 32);
    v50 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v50;
    *(a1 + 16) = v48;
    *(a1 + 32) = v49;
    v51 = *(a2 + 80);
    v52 = *(a2 + 96);
    v53 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v53;
    *(a1 + 80) = v51;
    *(a1 + 96) = v52;
    v54 = *(a2 + 144);
    v55 = *(a2 + 160);
    v56 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v55;
    *(a1 + 176) = v56;
    *(a1 + 144) = v54;
    *(a2 + 160) = v89;
    *(a2 + 176) = v92;
    *(a2 + 192) = v95;
    *(a2 + 96) = v77;
    *(a2 + 112) = v80;
    *(a2 + 128) = v83;
    *(a2 + 144) = v86;
    *(a2 + 32) = v65;
    *(a2 + 48) = v68;
    *(a2 + 64) = v71;
    *(a2 + 80) = v74;
    result = v62;
    *a2 = v59;
    *(a2 + 16) = v62;
    return result;
  }

  v11 = *(a4 + 56);
  v12 = *(a3 + 56);
  v13 = v11 < v12;
  if (v11 == v12)
  {
    v14 = *(a4 + 64);
    v15 = *(a3 + 64);
    v13 = v14 < v15;
    if (v14 == v15)
    {
      v13 = *(a4 + 72) < *(a3 + 72);
    }
  }

  if (v13 || *(a4 + 72) == *(a3 + 72) && *(a4 + 64) == *(a3 + 64) && v11 == v12 && *(a4 + 80) == *(a3 + 80) && sub_10003BEC0(a4, a3))
  {
    goto LABEL_13;
  }

  return result;
}

__n128 sub_10003B428(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result.n128_u64[0] = sub_10003AFF0(a1, a2, a3, a4).n128_u64[0];
  v11 = *(a5 + 6);
  v12 = *(a4 + 6);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      return result;
    }

LABEL_13:
    v115 = a4[10];
    v119 = a4[11];
    v123 = *(a4 + 24);
    v99 = a4[6];
    v103 = a4[7];
    v107 = a4[8];
    v111 = a4[9];
    v83 = a4[2];
    v87 = a4[3];
    v91 = a4[4];
    v95 = a4[5];
    v75 = *a4;
    v79 = a4[1];
    *a4 = *a5;
    v18 = a5[1];
    v19 = a5[2];
    v20 = a5[4];
    a4[3] = a5[3];
    a4[4] = v20;
    a4[1] = v18;
    a4[2] = v19;
    v21 = a5[5];
    v22 = a5[6];
    v23 = a5[8];
    a4[7] = a5[7];
    a4[8] = v23;
    a4[5] = v21;
    a4[6] = v22;
    v24 = a5[9];
    v25 = a5[10];
    v26 = a5[11];
    *(a4 + 24) = *(a5 + 24);
    a4[10] = v25;
    a4[11] = v26;
    a4[9] = v24;
    a5[10] = v115;
    a5[11] = v119;
    *(a5 + 24) = v123;
    a5[6] = v99;
    a5[7] = v103;
    a5[8] = v107;
    a5[9] = v111;
    a5[2] = v83;
    a5[3] = v87;
    a5[4] = v91;
    a5[5] = v95;
    result = v79;
    *a5 = v75;
    a5[1] = v79;
    v27 = *(a4 + 6);
    v28 = *(a3 + 6);
    if (v27 == v28)
    {
      v29 = *(a4 + 7);
      v30 = *(a3 + 7);
      v31 = v29 < v30;
      if (v29 == v30)
      {
        v32 = *(a4 + 8);
        v33 = *(a3 + 8);
        v31 = v32 < v33;
        if (v32 == v33)
        {
          v31 = *(a4 + 72) < *(a3 + 72);
        }
      }

      if (!v31 && (*(a4 + 9) != *(a3 + 9) || *(a4 + 8) != *(a3 + 8) || v29 != v30 || *(a4 + 10) != *(a3 + 10) || !sub_10003BEC0(a4, a3)))
      {
        return result;
      }
    }

    else if (v27 >= v28)
    {
      return result;
    }

    v116 = a3[10];
    v120 = a3[11];
    v124 = *(a3 + 24);
    v100 = a3[6];
    v104 = a3[7];
    v108 = a3[8];
    v112 = a3[9];
    v84 = a3[2];
    v88 = a3[3];
    v92 = a3[4];
    v96 = a3[5];
    v76 = *a3;
    v80 = a3[1];
    *a3 = *a4;
    v34 = a4[1];
    v35 = a4[2];
    v36 = a4[4];
    a3[3] = a4[3];
    a3[4] = v36;
    a3[1] = v34;
    a3[2] = v35;
    v37 = a4[5];
    v38 = a4[6];
    v39 = a4[8];
    a3[7] = a4[7];
    a3[8] = v39;
    a3[5] = v37;
    a3[6] = v38;
    v40 = a4[9];
    v41 = a4[10];
    v42 = a4[11];
    *(a3 + 24) = *(a4 + 24);
    a3[10] = v41;
    a3[11] = v42;
    a3[9] = v40;
    a4[10] = v116;
    a4[11] = v120;
    *(a4 + 24) = v124;
    a4[6] = v100;
    a4[7] = v104;
    a4[8] = v108;
    a4[9] = v112;
    a4[2] = v84;
    a4[3] = v88;
    a4[4] = v92;
    a4[5] = v96;
    result = v80;
    *a4 = v76;
    a4[1] = v80;
    v43 = *(a3 + 6);
    v44 = *(a2 + 6);
    if (v43 == v44)
    {
      v45 = *(a3 + 7);
      v46 = *(a2 + 7);
      v47 = v45 < v46;
      if (v45 == v46)
      {
        v48 = *(a3 + 8);
        v49 = *(a2 + 8);
        v47 = v48 < v49;
        if (v48 == v49)
        {
          v47 = *(a3 + 72) < *(a2 + 72);
        }
      }

      if (!v47 && (*(a3 + 9) != *(a2 + 9) || *(a3 + 8) != *(a2 + 8) || v45 != v46 || *(a3 + 10) != *(a2 + 10) || !sub_10003BEC0(a3, a2)))
      {
        return result;
      }
    }

    else if (v43 >= v44)
    {
      return result;
    }

    v117 = a2[10];
    v121 = a2[11];
    v125 = *(a2 + 24);
    v101 = a2[6];
    v105 = a2[7];
    v109 = a2[8];
    v113 = a2[9];
    v85 = a2[2];
    v89 = a2[3];
    v93 = a2[4];
    v97 = a2[5];
    v77 = *a2;
    v81 = a2[1];
    *a2 = *a3;
    v50 = a3[1];
    v51 = a3[2];
    v52 = a3[4];
    a2[3] = a3[3];
    a2[4] = v52;
    a2[1] = v50;
    a2[2] = v51;
    v53 = a3[5];
    v54 = a3[6];
    v55 = a3[8];
    a2[7] = a3[7];
    a2[8] = v55;
    a2[5] = v53;
    a2[6] = v54;
    v56 = a3[9];
    v57 = a3[10];
    v58 = a3[11];
    *(a2 + 24) = *(a3 + 24);
    a2[10] = v57;
    a2[11] = v58;
    a2[9] = v56;
    a3[10] = v117;
    a3[11] = v121;
    *(a3 + 24) = v125;
    a3[6] = v101;
    a3[7] = v105;
    a3[8] = v109;
    a3[9] = v113;
    a3[2] = v85;
    a3[3] = v89;
    a3[4] = v93;
    a3[5] = v97;
    result = v81;
    *a3 = v77;
    a3[1] = v81;
    v59 = *(a2 + 6);
    v60 = *(a1 + 6);
    if (v59 == v60)
    {
      v61 = *(a2 + 7);
      v62 = *(a1 + 7);
      v63 = v61 < v62;
      if (v61 == v62)
      {
        v64 = *(a2 + 8);
        v65 = *(a1 + 8);
        v63 = v64 < v65;
        if (v64 == v65)
        {
          v63 = *(a2 + 72) < *(a1 + 72);
        }
      }

      if (!v63 && (*(a2 + 9) != *(a1 + 9) || *(a2 + 8) != *(a1 + 8) || v61 != v62 || *(a2 + 10) != *(a1 + 10) || !sub_10003BEC0(a2, a1)))
      {
        return result;
      }
    }

    else if (v59 >= v60)
    {
      return result;
    }

    v118 = a1[10];
    v122 = a1[11];
    v126 = *(a1 + 24);
    v102 = a1[6];
    v106 = a1[7];
    v110 = a1[8];
    v114 = a1[9];
    v86 = a1[2];
    v90 = a1[3];
    v94 = a1[4];
    v98 = a1[5];
    v78 = *a1;
    v82 = a1[1];
    *a1 = *a2;
    v66 = a2[1];
    v67 = a2[2];
    v68 = a2[4];
    a1[3] = a2[3];
    a1[4] = v68;
    a1[1] = v66;
    a1[2] = v67;
    v69 = a2[5];
    v70 = a2[6];
    v71 = a2[8];
    a1[7] = a2[7];
    a1[8] = v71;
    a1[5] = v69;
    a1[6] = v70;
    v72 = a2[9];
    v73 = a2[10];
    v74 = a2[11];
    *(a1 + 24) = *(a2 + 24);
    a1[10] = v73;
    a1[11] = v74;
    a1[9] = v72;
    a2[10] = v118;
    a2[11] = v122;
    *(a2 + 24) = v126;
    a2[6] = v102;
    a2[7] = v106;
    a2[8] = v110;
    a2[9] = v114;
    a2[2] = v86;
    a2[3] = v90;
    a2[4] = v94;
    a2[5] = v98;
    result = v82;
    *a2 = v78;
    a2[1] = v82;
    return result;
  }

  v13 = *(a5 + 7);
  v14 = *(a4 + 7);
  v15 = v13 < v14;
  if (v13 == v14)
  {
    v16 = *(a5 + 8);
    v17 = *(a4 + 8);
    v15 = v16 < v17;
    if (v16 == v17)
    {
      v15 = *(a5 + 72) < *(a4 + 72);
    }
  }

  if (v15 || *(a5 + 9) == *(a4 + 9) && *(a5 + 8) == *(a4 + 8) && v13 == v14 && *(a5 + 10) == *(a4 + 10) && sub_10003BEC0(a5, a4))
  {
    goto LABEL_13;
  }

  return result;
}

BOOL sub_10003B9B4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0x8F5C28F5C28F5C29 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10003A960(a1, (a1 + 200), (a2 - 200));
        return 1;
      case 4:
        sub_10003AFF0(a1, a1 + 200, a1 + 400, a2 - 200);
        return 1;
      case 5:
        sub_10003B428(a1, (a1 + 200), (a1 + 400), (a1 + 600), (a2 - 200));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 200);
      v6 = *(a2 - 152);
      v7 = *(a1 + 48);
      if (v6 == v7)
      {
        v8 = *(a2 - 144);
        v9 = *(a1 + 56);
        v10 = v8 < v9;
        if (v8 == v9)
        {
          v11 = *(a2 - 136);
          v12 = *(a1 + 64);
          v10 = v11 < v12;
          if (v11 == v12)
          {
            v10 = *(a2 - 128) < *(a1 + 72);
          }
        }

        if (v10)
        {
          goto LABEL_58;
        }

        if (*(a2 - 128) == *(a1 + 72) && *(a2 - 136) == *(a1 + 64))
        {
          result = 1;
          if (v8 != v9 || *(a2 - 120) != *(a1 + 80))
          {
            return result;
          }

          if (sub_10003BEC0(a2 - 200, a1))
          {
LABEL_58:
            v63 = *(a1 + 176);
            v97 = *(a1 + 160);
            v98 = v63;
            v99 = *(a1 + 192);
            v64 = *(a1 + 112);
            v93 = *(a1 + 96);
            v94 = v64;
            v65 = *(a1 + 144);
            v95 = *(a1 + 128);
            v96 = v65;
            v66 = *(a1 + 48);
            v89 = *(a1 + 32);
            v90 = v66;
            v67 = *(a1 + 80);
            v91 = *(a1 + 64);
            v92 = v67;
            v68 = *(a1 + 16);
            v87 = *a1;
            v88 = v68;
            *a1 = *v5;
            v69 = *(v2 - 184);
            v70 = *(v2 - 168);
            v71 = *(v2 - 136);
            *(a1 + 48) = *(v2 - 152);
            *(a1 + 64) = v71;
            *(a1 + 16) = v69;
            *(a1 + 32) = v70;
            v72 = *(v2 - 120);
            v73 = *(v2 - 104);
            v74 = *(v2 - 72);
            *(a1 + 112) = *(v2 - 88);
            *(a1 + 128) = v74;
            *(a1 + 80) = v72;
            *(a1 + 96) = v73;
            v75 = *(v2 - 56);
            v76 = *(v2 - 40);
            v77 = *(v2 - 24);
            *(a1 + 192) = *(v2 - 8);
            *(a1 + 160) = v76;
            *(a1 + 176) = v77;
            *(a1 + 144) = v75;
            v78 = v98;
            *(v2 - 40) = v97;
            *(v2 - 24) = v78;
            *(v2 - 8) = v99;
            v79 = v94;
            *(v2 - 104) = v93;
            *(v2 - 88) = v79;
            v80 = v96;
            *(v2 - 72) = v95;
            *(v2 - 56) = v80;
            v81 = v90;
            *(v2 - 168) = v89;
            *(v2 - 152) = v81;
            v82 = v92;
            *(v2 - 136) = v91;
            *(v2 - 120) = v82;
            v83 = v88;
            result = 1;
            *v5 = v87;
            *(v2 - 184) = v83;
            return result;
          }
        }
      }

      else if (v6 < v7)
      {
        goto LABEL_58;
      }

      return 1;
    }
  }

  v14 = a1 + 400;
  sub_10003A960(a1, (a1 + 200), (a1 + 400));
  v15 = a1 + 600;
  if (a1 + 600 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v84 = v2;
  while (1)
  {
    v18 = *(v15 + 48);
    v19 = *(v14 + 48);
    if (v18 != v19)
    {
      break;
    }

    v20 = *(v15 + 56);
    v21 = *(v14 + 56);
    v22 = v20 < v21;
    if (v20 == v21)
    {
      v23 = *(v15 + 64);
      v24 = *(v14 + 64);
      v22 = v23 < v24;
      if (v23 == v24)
      {
        v22 = *(v15 + 72) < *(v14 + 72);
      }
    }

    if (v22 || *(v15 + 72) == *(v14 + 72) && *(v15 + 64) == *(v14 + 64) && v20 == v21 && *(v15 + 80) == *(v14 + 80) && sub_10003BEC0(v15, v14))
    {
      goto LABEL_34;
    }

LABEL_51:
    v14 = v15;
    v16 += 200;
    v15 += 200;
    if (v15 == v2)
    {
      return 1;
    }
  }

  if (v18 >= v19)
  {
    goto LABEL_51;
  }

LABEL_34:
  v86 = v17;
  v25 = *(v15 + 48);
  v89 = *(v15 + 32);
  v90 = v25;
  v26 = *(v15 + 112);
  v93 = *(v15 + 96);
  v94 = v26;
  v27 = *(v15 + 80);
  v91 = *(v15 + 64);
  v92 = v27;
  v99 = *(v15 + 192);
  v28 = *(v15 + 176);
  v97 = *(v15 + 160);
  v98 = v28;
  v29 = *(v15 + 144);
  v95 = *(v15 + 128);
  v96 = v29;
  v30 = *(v15 + 16);
  v87 = *v15;
  v88 = v30;
  v31 = *(v14 + 176);
  *(v15 + 160) = *(v14 + 160);
  *(v15 + 176) = v31;
  *(v15 + 192) = *(v14 + 192);
  v32 = *(v14 + 112);
  *(v15 + 96) = *(v14 + 96);
  *(v15 + 112) = v32;
  v33 = *(v14 + 144);
  *(v15 + 128) = *(v14 + 128);
  *(v15 + 144) = v33;
  v34 = *(v14 + 48);
  *(v15 + 32) = *(v14 + 32);
  *(v15 + 48) = v34;
  v35 = *(v14 + 80);
  *(v15 + 64) = *(v14 + 64);
  *(v15 + 80) = v35;
  v36 = *(v14 + 16);
  *v15 = *v14;
  *(v15 + 16) = v36;
  v37 = v90;
  v38 = v92;
  v85 = v16;
  v39 = v91;
  while (1)
  {
    v40 = a1 + v16;
    v41 = (a1 + v16 + 200);
    v42 = *(a1 + v16 + 248);
    if (v37 != v42)
    {
      if (v37 >= v42)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v43 = *(v40 + 256);
    v44 = *(&v37 + 1) < v43;
    if (*(&v37 + 1) == v43)
    {
      v45 = *(a1 + v16 + 264);
      v44 = v39 < v45;
      if (v39 == v45)
      {
        v46 = *(a1 + v16 + 280);
        v44 = v38 < v46;
        if (v38 == v46)
        {
          v44 = *(&v39 + 1) < *(a1 + v16 + 272);
        }
      }
    }

    if (!v44)
    {
      break;
    }

LABEL_47:
    v14 -= 200;
    v48 = *(a1 + v16 + 376);
    *(v40 + 560) = *(a1 + v16 + 360);
    *(v40 + 576) = v48;
    *(v40 + 592) = *(a1 + v16 + 392);
    v49 = *(a1 + v16 + 312);
    *(v40 + 496) = *(a1 + v16 + 296);
    *(v40 + 512) = v49;
    v50 = *(a1 + v16 + 344);
    *(v40 + 528) = *(a1 + v16 + 328);
    *(v40 + 544) = v50;
    v51 = *(a1 + v16 + 248);
    *(v40 + 432) = *(a1 + v16 + 232);
    *(v40 + 448) = v51;
    v52 = *(a1 + v16 + 280);
    *(v40 + 464) = *(a1 + v16 + 264);
    *(v40 + 480) = v52;
    v53 = *(a1 + v16 + 216);
    v16 -= 200;
    *(v40 + 400) = *v41;
    *(v40 + 416) = v53;
    if (v16 == -400)
    {
      v14 = a1;
      goto LABEL_49;
    }
  }

  if (v39 != *(a1 + v16 + 264))
  {
    goto LABEL_49;
  }

  v47 = a1 + v16;
  if (*(&v37 + 1) == v43 && v38 == *(v47 + 280))
  {
    if (!sub_10003BEC0(&v87, a1 + v16 + 200))
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v14 = v47 + 400;
LABEL_49:
  *v14 = v87;
  v54 = v88;
  v55 = v89;
  v56 = v91;
  *(v14 + 48) = v90;
  *(v14 + 64) = v56;
  *(v14 + 16) = v54;
  *(v14 + 32) = v55;
  v57 = v92;
  v58 = v93;
  v59 = v95;
  *(v14 + 112) = v94;
  *(v14 + 128) = v59;
  *(v14 + 80) = v57;
  *(v14 + 96) = v58;
  v60 = v96;
  v61 = v97;
  v62 = v98;
  *(v14 + 192) = v99;
  *(v14 + 160) = v61;
  *(v14 + 176) = v62;
  *(v14 + 144) = v60;
  v17 = v86 + 1;
  v2 = v84;
  if (v86 != 7)
  {
    v16 = v85;
    goto LABEL_51;
  }

  return v15 + 200 == v84;
}

BOOL sub_10003BEC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3 = *(a2 + 104);
  if (vabdd_f64(v2, v3) >= 50.0)
  {
    return v2 < v3;
  }

  v6 = *(a1 + 88) / *(a1 + 96);
  v7 = *(a2 + 88);
  v8 = v7 / *(a2 + 96);
  if (v6 != v8)
  {
    v14 = fabs(v7 / *(a2 + 96));
    if (COERCE_UNSIGNED_INT64(fabs(*(a1 + 88) / *(a1 + 96))) > 0x7FEFFFFFFFFFFFFFLL || *&v14 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    v16 = fabs(v6);
    v17 = fabs(v8);
    v18 = vabdd_f64(v6, v8);
    if (v16 < v17)
    {
      v16 = v17;
    }

    if (v16 < 1.0)
    {
      v16 = 1.0;
    }

    if (v18 > v16 * 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  if (sub_10000B2C4(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    if (*(a1 + 136) != *(a2 + 136))
    {
      v20 = *(a1 + 40);
      v21 = dword_100092770;
      if (v20 <= 5)
      {
        v12 = dword_100092770[v20];
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v9 = *(a1 + 144);
    v10 = *(a2 + 144);
    if (v9 == v10)
    {
      v11 = *(a1 + 40);
      if (v11 > 5)
      {
        v12 = -1;
      }

      else
      {
        v12 = dword_100092770[v11];
      }

      v26 = *(a2 + 40);
      if (v26 <= 5)
      {
        v27 = dword_100092770[v26];
        return v12 < v27;
      }

      goto LABEL_48;
    }

    if (v9 == -1)
    {
      v25 = *(a1 + 40);
      if (v25 == 1)
      {
        return 0;
      }

      if (v25 != 2)
      {
LABEL_43:
        v21 = dword_100092758;
        if (v25 <= 5)
        {
          v12 = dword_100092758[v25];
          goto LABEL_46;
        }

LABEL_45:
        v12 = -1;
LABEL_46:
        v28 = *(a2 + 40);
        if (v28 <= 5)
        {
          v27 = v21[v28];
          return v12 < v27;
        }

LABEL_48:
        v27 = -1;
        return v12 < v27;
      }
    }

    else
    {
      if (v10 != -1)
      {
LABEL_37:
        v25 = *(a1 + 40);
        goto LABEL_43;
      }

      v29 = *(a2 + 40);
      if (v29 != 1)
      {
        if (v29 != 2)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    return 1;
  }

  if (v6 != v8)
  {
LABEL_22:
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v22 = fabs(v6);
      v23 = fabs(v8);
      v24 = vabdd_f64(v6, v8);
      if (v22 < v23)
      {
        v22 = v23;
      }

      if (v22 < 1.0)
      {
        v22 = 1.0;
      }

      v19 = v24 > v22 * 2.22044605e-16;
    }

    else
    {
      v19 = 1;
    }

    return v6 < v8 && v19;
  }

  v19 = 0;
  return v6 < v8 && v19;
}

uint64_t sub_10003C118(uint64_t result)
{
  v3 = *(result + 40);
  if (v3 == 7)
  {
    return result;
  }

  v17 = v1;
  v18 = v2;
  v4 = result;
  v5 = **result;
  if (v5 == *(*result + 8))
  {
    return result;
  }

  v6 = *(result + 8);
  v7 = *v6;
  v8 = v6[1];
  if ((v8 - *v6) < 0x40)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v7 + 2 != v8)
  {
    do
    {
      result = sub_100016EF0(v5, v7, v7 + 2, &v14);
      if (!result)
      {
        break;
      }

      v9 = v7 + 4;
      v7 += 2;
    }

    while (v9 != v8);
    if ((v16 & 1) == 0)
    {
      if (v15 && HIDWORD(v15) && v15 >= 1)
      {
        if (!(v14 + HIDWORD(v14)))
        {
          goto LABEL_12;
        }
      }

      else if (!v14)
      {
        goto LABEL_12;
      }

      v12 = *(v4 + 24);
      if (*v12 - 58 <= 0xFFFFFFF7)
      {
        *v12 = 50;
        v12 = *(v4 + 24);
      }

      v13 = *(v4 + 40) | 1;
      *(v4 + 40) = v13;
      if (v12[3] - 58 <= 0xFFFFFFF6)
      {
        v12[3] = 49;
        v13 = *(v4 + 40);
      }

      v10 = v13 | 4;
      goto LABEL_14;
    }
  }

LABEL_12:
  v3 = *(v4 + 40);
LABEL_13:
  v10 = v3 | 2;
LABEL_14:
  *(v4 + 40) = v10;
  if (v10 == 7)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(*(v4 + 24) + 9);
  }

  *(v4 + 16) = v11 & 1;
  return result;
}

__n128 sub_10003C274(__int128 *a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v579 = a2;
  v581 = a2 - 200;
  v572 = (a2 - 600);
  v574 = a2 - 25;
  v571 = a2 - 4;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x8F5C28F5C28F5C29 * ((a2 - v7) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          result.n128_u64[0] = sub_10003E000(a1, (a1 + 200), v581).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = sub_10003E690(a1, a1 + 200, (a1 + 25), v581).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = sub_10003EAC8(a1, (a1 + 200), a1 + 25, (a1 + 600), v581).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v243 = *(a2 - 9);
        v244 = *(a1 + 16);
        if (v243 == v244)
        {
          v245 = *(a2 - 8);
          v246 = *(a1 + 17);
          v247 = v245 < v246;
          if (v245 == v246)
          {
            v248 = *(a2 - 7);
            v249 = *(a1 + 18);
            v247 = v248 < v249;
            if (v248 == v249)
            {
              v247 = *(a2 - 3) < *(a1 + 152);
            }
          }

          if (!v247 && (*(a2 - 6) != *(a1 + 19) || *(a2 - 7) != *(a1 + 18) || v245 != v246 || *(a2 - 5) != *(a1 + 20) || !sub_10003F560(v581, a1)))
          {
            return result;
          }
        }

        else if (v243 >= v244)
        {
          return result;
        }

        v598 = *a1;
        v504 = a1[1];
        v505 = a1[2];
        v506 = a1[4];
        v601 = a1[3];
        v602 = v506;
        v599 = v504;
        v600 = v505;
        v507 = a1[5];
        v508 = a1[6];
        v509 = a1[8];
        v605 = a1[7];
        v606 = v509;
        v603 = v507;
        v604 = v508;
        v510 = a1[9];
        v511 = a1[10];
        v512 = a1[11];
        v610 = *(a1 + 24);
        v608 = v511;
        v609 = v512;
        v607 = v510;
        *a1 = *v581;
        v513 = *(v581 + 16);
        v514 = *(v581 + 32);
        v515 = *(v581 + 64);
        a1[3] = *(v581 + 48);
        a1[4] = v515;
        a1[1] = v513;
        a1[2] = v514;
        v516 = *(v581 + 80);
        v517 = *(v581 + 96);
        v518 = *(v581 + 128);
        a1[7] = *(v581 + 112);
        a1[8] = v518;
        a1[5] = v516;
        a1[6] = v517;
        v519 = *(v581 + 144);
        v520 = *(v581 + 160);
        v521 = *(v581 + 176);
        *(a1 + 24) = *(v581 + 192);
        a1[10] = v520;
        a1[11] = v521;
        a1[9] = v519;
        *v581 = v598;
        v522 = v599;
        v523 = v600;
        v524 = v602;
        *(v581 + 48) = v601;
        *(v581 + 64) = v524;
        *(v581 + 16) = v522;
        *(v581 + 32) = v523;
        v525 = v603;
        v526 = v604;
        v527 = v606;
        *(v581 + 112) = v605;
        *(v581 + 128) = v527;
        *(v581 + 80) = v525;
        *(v581 + 96) = v526;
        result = v607;
        v528 = v608;
        v529 = v609;
        *(v581 + 192) = v610;
        *(v581 + 160) = v528;
        *(v581 + 176) = v529;
        *(v581 + 144) = result;
        return result;
      }
    }

    if (v8 <= 4799)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return result;
      }

      v299 = (v9 - 2) >> 1;
      v300 = v299;
      while (1)
      {
        v301 = v300;
        if (v299 < v300)
        {
          goto LABEL_334;
        }

        v302 = (2 * v300) | 1;
        v303 = a1 + 200 * v302;
        if (2 * v300 + 2 >= v9)
        {
          goto LABEL_280;
        }

        v304 = *(v303 + 16);
        v305 = *(v303 + 41);
        if (v304 == v305)
        {
          break;
        }

        if (v304 < v305)
        {
          goto LABEL_279;
        }

LABEL_280:
        v313 = a1 + 200 * v301;
        v314 = *(v303 + 16);
        v315 = *(v313 + 16);
        if (v314 == v315)
        {
          v316 = *(v303 + 17);
          v317 = *(v313 + 17);
          v318 = v316 < v317;
          if (v316 == v317)
          {
            v319 = *(v303 + 18);
            v320 = *(v313 + 18);
            v318 = v319 < v320;
            if (v319 == v320)
            {
              v318 = *(v303 + 152) < *(v313 + 152);
            }
          }

          if (v318)
          {
            goto LABEL_334;
          }

          if (*(v303 + 19) == *(v313 + 19) && *(v303 + 18) == *(v313 + 18) && v316 == v317 && *(v303 + 20) == *(v313 + 20))
          {
            v322 = sub_10003F560(v303, a1 + 200 * v301);
            v299 = (v9 - 2) >> 1;
            if (v322)
            {
              goto LABEL_334;
            }
          }
        }

        else if (v314 < v315)
        {
          goto LABEL_334;
        }

        v598 = *v313;
        v323 = *(v313 + 1);
        v324 = *(v313 + 2);
        v325 = *(v313 + 4);
        v601 = *(v313 + 3);
        v602 = v325;
        v599 = v323;
        v600 = v324;
        v326 = *(v313 + 5);
        v327 = *(v313 + 6);
        v328 = *(v313 + 8);
        v605 = *(v313 + 7);
        v606 = v328;
        v603 = v326;
        v604 = v327;
        v329 = *(v313 + 9);
        v330 = *(v313 + 10);
        v331 = *(v313 + 11);
        v610 = *(v313 + 24);
        v608 = v330;
        v609 = v331;
        v607 = v329;
        *v313 = *v303;
        v332 = *(v303 + 1);
        v333 = *(v303 + 2);
        v334 = *(v303 + 4);
        *(v313 + 3) = *(v303 + 3);
        *(v313 + 4) = v334;
        *(v313 + 1) = v332;
        *(v313 + 2) = v333;
        v335 = *(v303 + 5);
        v336 = *(v303 + 6);
        v337 = *(v303 + 8);
        *(v313 + 7) = *(v303 + 7);
        *(v313 + 8) = v337;
        *(v313 + 5) = v335;
        *(v313 + 6) = v336;
        v338 = *(v303 + 9);
        v339 = *(v303 + 10);
        v340 = *(v303 + 11);
        *(v313 + 24) = *(v303 + 24);
        *(v313 + 10) = v339;
        *(v313 + 11) = v340;
        *(v313 + 9) = v338;
        if (v299 < v302)
        {
          goto LABEL_333;
        }

        v341 = *(&v606 + 1);
        v342 = v606;
        v344 = v607.n128_i64[1];
        v343 = v608;
        v345 = v607.n128_u64[0];
        v583 = *(&v606 + 1);
        v578 = v607.n128_u64[0];
        while (1)
        {
          v346 = v303;
          v347 = 2 * v302;
          v302 = (2 * v302) | 1;
          v303 = a1 + 200 * v302;
          v348 = v347 + 2;
          if (v347 + 2 >= v9)
          {
            goto LABEL_314;
          }

          v349 = *(v303 + 16);
          v350 = *(v303 + 41);
          if (v349 != v350)
          {
            if (v349 >= v350)
            {
              goto LABEL_314;
            }

LABEL_313:
            v303 += 200;
            v302 = v348;
            goto LABEL_314;
          }

          v351 = *(v303 + 17);
          v352 = *(v303 + 42);
          v353 = v351 < v352;
          if (v351 == v352)
          {
            v354 = *(v303 + 18);
            v355 = *(v303 + 43);
            v353 = v354 < v355;
            if (v354 == v355)
            {
              v353 = *(v303 + 152) < *(v303 + 22);
            }
          }

          if (v353)
          {
            goto LABEL_313;
          }

          if (*(v303 + 19) == *(v303 + 44) && *(v303 + 18) == *(v303 + 43) && v351 == v352 && *(v303 + 20) == *(v303 + 45))
          {
            v573 = v344;
            v575 = v343;
            v357 = sub_10003F560(a1 + 200 * v302, (v303 + 200));
            v344 = v573;
            v343 = v575;
            v299 = (v9 - 2) >> 1;
            v345 = v578;
            v341 = v583;
            if (v357)
            {
              goto LABEL_313;
            }
          }

LABEL_314:
          v358 = *(v303 + 16);
          if (v358 != v342)
          {
            if (v358 < v342)
            {
              break;
            }

            goto LABEL_330;
          }

          v359 = *(v303 + 17);
          v360 = v359 < v341;
          if (v359 == v341)
          {
            v361 = *(v303 + 18);
            v360 = v361 < v345;
            if (v361 == v345)
            {
              v362 = *(v303 + 20);
              v360 = v362 < v343;
              if (v362 == v343)
              {
                v360 = *(v303 + 19) < v344;
              }
            }
          }

          if (v360)
          {
            break;
          }

          if (*(v303 + 19) == v344 && *(v303 + 18) == v345 && v359 == v341 && *(v303 + 20) == v343)
          {
            v364 = v343;
            v365 = v344;
            v366 = sub_10003F560(v303, &v598);
            v344 = v365;
            v299 = (v9 - 2) >> 1;
            v345 = v578;
            v343 = v364;
            v341 = v583;
            if (v366)
            {
              break;
            }
          }

LABEL_330:
          *v346 = *v303;
          v367 = *(v303 + 1);
          v368 = *(v303 + 2);
          v369 = *(v303 + 4);
          *(v346 + 3) = *(v303 + 3);
          *(v346 + 4) = v369;
          *(v346 + 1) = v367;
          *(v346 + 2) = v368;
          v370 = *(v303 + 5);
          v371 = *(v303 + 6);
          v372 = *(v303 + 8);
          *(v346 + 7) = *(v303 + 7);
          *(v346 + 8) = v372;
          *(v346 + 5) = v370;
          *(v346 + 6) = v371;
          v373 = *(v303 + 9);
          v374 = *(v303 + 10);
          v375 = *(v303 + 11);
          *(v346 + 24) = *(v303 + 24);
          *(v346 + 10) = v374;
          *(v346 + 11) = v375;
          *(v346 + 9) = v373;
          if (v299 < v302)
          {
            goto LABEL_333;
          }
        }

        v303 = v346;
LABEL_333:
        *v303 = v598;
        v376 = v599;
        v377 = v600;
        v378 = v602;
        *(v303 + 3) = v601;
        *(v303 + 4) = v378;
        *(v303 + 1) = v376;
        *(v303 + 2) = v377;
        v379 = v603;
        v380 = v604;
        v381 = v606;
        *(v303 + 7) = v605;
        *(v303 + 8) = v381;
        *(v303 + 5) = v379;
        *(v303 + 6) = v380;
        v382 = v607;
        v383 = v608;
        v384 = v609;
        *(v303 + 24) = v610;
        *(v303 + 10) = v383;
        *(v303 + 11) = v384;
        *(v303 + 9) = v382;
LABEL_334:
        v300 = v301 - 1;
        if (!v301)
        {
          v385 = 0x8F5C28F5C28F5C29 * (v8 >> 3);
          v386 = v579;
          while (1)
          {
            v387 = v386;
            v388 = 0;
            v585 = *a1;
            v389 = a1[1];
            v390 = a1[2];
            v391 = a1[4];
            v588 = a1[3];
            v589 = v391;
            v586 = v389;
            v587 = v390;
            v392 = a1[5];
            v393 = a1[6];
            v394 = a1[8];
            v592 = a1[7];
            v593 = v394;
            v590 = v392;
            v591 = v393;
            v395 = a1[9];
            v396 = a1[10];
            v397 = a1[11];
            v597 = *(a1 + 24);
            v595 = v396;
            v596 = v397;
            v594 = v395;
            v398 = a1;
            do
            {
              v399 = v398;
              v400 = v398 + 200 * v388;
              v398 = (v400 + 200);
              v401 = 2 * v388;
              v388 = (2 * v388) | 1;
              v402 = v401 + 2;
              if (v401 + 2 >= v385)
              {
                goto LABEL_354;
              }

              v403 = (v400 + 400);
              v404 = *(v400 + 41);
              v405 = *(v400 + 66);
              if (v404 != v405)
              {
                if (v404 >= v405)
                {
                  goto LABEL_354;
                }

LABEL_353:
                v398 = v403;
                v388 = v402;
                goto LABEL_354;
              }

              v406 = *(v400 + 42);
              v407 = *(v400 + 67);
              v408 = v406 < v407;
              if (v406 == v407)
              {
                v409 = *(v400 + 43);
                v410 = *(v400 + 68);
                v408 = v409 < v410;
                if (v409 == v410)
                {
                  v408 = *(v400 + 22) < *(v400 + 552);
                }
              }

              if (v408)
              {
                goto LABEL_353;
              }

              if (*(v400 + 44) == *(v400 + 69) && *(v400 + 43) == *(v400 + 68))
              {
                v411 = *(v400 + 45);
                v412 = *(v400 + 70);
                v413 = v406 == v407 && v411 == v412;
                if (v413 && sub_10003F560(v398, v403))
                {
                  goto LABEL_353;
                }
              }

LABEL_354:
              *v399 = *v398;
              v414 = v398[1];
              v415 = v398[2];
              v416 = v398[4];
              v399[3] = v398[3];
              v399[4] = v416;
              v399[1] = v414;
              v399[2] = v415;
              v417 = v398[5];
              v418 = v398[6];
              v419 = v398[8];
              v399[7] = v398[7];
              v399[8] = v419;
              v399[5] = v417;
              v399[6] = v418;
              v420 = v398[9];
              v421 = v398[10];
              v422 = v398[11];
              *(v399 + 24) = *(v398 + 24);
              v399[10] = v421;
              v399[11] = v422;
              v399[9] = v420;
            }

            while (v388 <= (v385 - 2) / 2);
            v386 = (v387 - 200);
            if (v398 == (v387 - 200))
            {
              *v398 = v585;
              v451 = v586;
              v452 = v587;
              v453 = v589;
              v398[3] = v588;
              v398[4] = v453;
              v398[1] = v451;
              v398[2] = v452;
              v454 = v590;
              v455 = v591;
              v456 = v593;
              v398[7] = v592;
              v398[8] = v456;
              v398[5] = v454;
              v398[6] = v455;
              result = v594;
              v457 = v595;
              v458 = v596;
              *(v398 + 24) = v597;
              v398[10] = v457;
              v398[11] = v458;
              v398[9] = result;
              goto LABEL_391;
            }

            *v398 = *v386;
            v423 = *(v387 - 184);
            v424 = *(v387 - 168);
            v425 = *(v387 - 136);
            v398[3] = *(v387 - 152);
            v398[4] = v425;
            v398[1] = v423;
            v398[2] = v424;
            v426 = *(v387 - 120);
            v427 = *(v387 - 104);
            v428 = *(v387 - 72);
            v398[7] = *(v387 - 88);
            v398[8] = v428;
            v398[5] = v426;
            v398[6] = v427;
            v429 = *(v387 - 56);
            v430 = *(v387 - 40);
            v431 = *(v387 - 24);
            *(v398 + 24) = *(v387 - 1);
            v398[10] = v430;
            v398[11] = v431;
            v398[9] = v429;
            *v386 = v585;
            v432 = v586;
            v433 = v587;
            v434 = v589;
            *(v387 - 152) = v588;
            *(v387 - 136) = v434;
            *(v387 - 184) = v432;
            *(v387 - 168) = v433;
            v435 = v590;
            v436 = v591;
            v437 = v593;
            *(v387 - 88) = v592;
            *(v387 - 72) = v437;
            *(v387 - 120) = v435;
            *(v387 - 104) = v436;
            result = v594;
            v438 = v595;
            v439 = v596;
            *(v387 - 1) = v597;
            *(v387 - 40) = v438;
            *(v387 - 24) = v439;
            *(v387 - 56) = result;
            v440 = v398 - a1 + 200;
            if (v440 < 201)
            {
              goto LABEL_391;
            }

            v441 = -2 - 0x70A3D70A3D70A3D7 * (v440 >> 3);
            v442 = v441 >> 1;
            v443 = a1 + 200 * (v441 >> 1);
            v444 = *(v443 + 16);
            v445 = *(v398 + 16);
            if (v444 == v445)
            {
              v446 = *(v443 + 17);
              v447 = *(v398 + 17);
              v448 = v446 < v447;
              if (v446 == v447)
              {
                v449 = *(v443 + 18);
                v450 = *(v398 + 18);
                v448 = v449 < v450;
                if (v449 == v450)
                {
                  v448 = *(v443 + 152) < *(v398 + 152);
                }
              }

              if (!v448 && (*(v443 + 19) != *(v398 + 19) || *(v443 + 18) != *(v398 + 18) || v446 != v447 || *(v443 + 20) != *(v398 + 20) || !sub_10003F560(a1 + 200 * (v441 >> 1), v398)))
              {
                goto LABEL_391;
              }
            }

            else if (v444 >= v445)
            {
              goto LABEL_391;
            }

            v580 = v386;
            v598 = *v398;
            v459 = v398[1];
            v460 = v398[2];
            v461 = v398[4];
            v601 = v398[3];
            v602 = v461;
            v599 = v459;
            v600 = v460;
            v462 = v398[5];
            v463 = v398[6];
            v464 = v398[8];
            v605 = v398[7];
            v606 = v464;
            v603 = v462;
            v604 = v463;
            v465 = v398[9];
            v466 = v398[10];
            v467 = v398[11];
            v610 = *(v398 + 24);
            v608 = v466;
            v609 = v467;
            v607 = v465;
            *v398 = *v443;
            v468 = *(v443 + 1);
            v469 = *(v443 + 2);
            v470 = *(v443 + 4);
            v398[3] = *(v443 + 3);
            v398[4] = v470;
            v398[1] = v468;
            v398[2] = v469;
            v471 = *(v443 + 5);
            v472 = *(v443 + 6);
            v473 = *(v443 + 8);
            v398[7] = *(v443 + 7);
            v398[8] = v473;
            v398[5] = v471;
            v398[6] = v472;
            v474 = *(v443 + 9);
            v475 = *(v443 + 10);
            v476 = *(v443 + 11);
            *(v398 + 24) = *(v443 + 24);
            v398[10] = v475;
            v398[11] = v476;
            v398[9] = v474;
            if (v441 < 2)
            {
              goto LABEL_390;
            }

            v477 = v606;
            v584 = v608;
            v478 = v607;
            while (2)
            {
              v479 = v443;
              v480 = v442 - 1;
              v442 = (v442 - 1) >> 1;
              v443 = a1 + 200 * v442;
              v481 = *(v443 + 16);
              if (v481 != v477)
              {
                if (v481 >= v477)
                {
                  goto LABEL_389;
                }

LABEL_387:
                *v479 = *v443;
                v487 = *(v443 + 1);
                v488 = *(v443 + 2);
                v489 = *(v443 + 4);
                *(v479 + 3) = *(v443 + 3);
                *(v479 + 4) = v489;
                *(v479 + 1) = v487;
                *(v479 + 2) = v488;
                v490 = *(v443 + 5);
                v491 = *(v443 + 6);
                v492 = *(v443 + 8);
                *(v479 + 7) = *(v443 + 7);
                *(v479 + 8) = v492;
                *(v479 + 5) = v490;
                *(v479 + 6) = v491;
                v493 = *(v443 + 9);
                v494 = *(v443 + 10);
                v495 = *(v443 + 11);
                *(v479 + 24) = *(v443 + 24);
                *(v479 + 10) = v494;
                *(v479 + 11) = v495;
                *(v479 + 9) = v493;
                if (v480 <= 1)
                {
                  goto LABEL_390;
                }

                continue;
              }

              break;
            }

            v482 = *(v443 + 17);
            v483 = v482 < *(&v477 + 1);
            if (v482 == *(&v477 + 1))
            {
              v484 = *(v443 + 18);
              v483 = v484 < v478.n128_u64[0];
              if (v484 == v478.n128_u64[0])
              {
                v485 = *(v443 + 20);
                v483 = v485 < v584;
                if (v485 == v584)
                {
                  v483 = *(v443 + 19) < v478.n128_u64[1];
                }
              }
            }

            if (v483)
            {
              goto LABEL_387;
            }

            if (*(v443 + 9) == *&v478)
            {
              v486 = v482 == *(&v477 + 1) && *(v443 + 20) == v584;
              if (v486 && sub_10003F560(a1 + 200 * v442, &v598))
              {
                goto LABEL_387;
              }
            }

LABEL_389:
            v443 = v479;
LABEL_390:
            *v443 = v598;
            v496 = v599;
            v497 = v600;
            v498 = v602;
            *(v443 + 3) = v601;
            *(v443 + 4) = v498;
            *(v443 + 1) = v496;
            *(v443 + 2) = v497;
            v499 = v603;
            v500 = v604;
            v501 = v606;
            *(v443 + 7) = v605;
            *(v443 + 8) = v501;
            *(v443 + 5) = v499;
            *(v443 + 6) = v500;
            result = v607;
            v502 = v608;
            v503 = v609;
            *(v443 + 24) = v610;
            *(v443 + 10) = v502;
            *(v443 + 11) = v503;
            *(v443 + 9) = result;
            v386 = v580;
LABEL_391:
            v44 = v385-- <= 2;
            if (v44)
            {
              return result;
            }
          }
        }
      }

      v306 = *(v303 + 17);
      v307 = *(v303 + 42);
      v308 = v306 < v307;
      if (v306 == v307)
      {
        v309 = *(v303 + 18);
        v310 = *(v303 + 43);
        v308 = v309 < v310;
        if (v309 == v310)
        {
          v308 = *(v303 + 152) < *(v303 + 22);
        }
      }

      if (!v308)
      {
        if (*(v303 + 19) != *(v303 + 44) || *(v303 + 18) != *(v303 + 43))
        {
          goto LABEL_280;
        }

        if (v306 != v307 || *(v303 + 20) != *(v303 + 45))
        {
          goto LABEL_280;
        }

        v312 = sub_10003F560(a1 + 200 * v302, (v303 + 200));
        v299 = (v9 - 2) >> 1;
        if (!v312)
        {
          goto LABEL_280;
        }
      }

LABEL_279:
      v303 += 200;
      v302 = 2 * v301 + 2;
      goto LABEL_280;
    }

    v10 = v9 >> 1;
    v11 = (a1 + 200 * (v9 >> 1));
    if (v8 < 0x6401)
    {
      sub_10003E000(v11, a1, v581);
    }

    else
    {
      sub_10003E000(a1, v11, v581);
      v12 = 200 * v10;
      sub_10003E000((a1 + 200), (a1 + v12 - 200), v574);
      sub_10003E000(a1 + 25, (a1 + v12 + 200), v572);
      sub_10003E000((a1 + v12 - 200), v11, (a1 + v12 + 200));
      v598 = *a1;
      v13 = a1[1];
      v14 = a1[2];
      v15 = a1[4];
      v601 = a1[3];
      v602 = v15;
      v599 = v13;
      v600 = v14;
      v16 = a1[5];
      v17 = a1[6];
      v18 = a1[8];
      v605 = a1[7];
      v606 = v18;
      v603 = v16;
      v604 = v17;
      v19 = a1[9];
      v20 = a1[10];
      v21 = a1[11];
      v610 = *(a1 + 24);
      v608 = v20;
      v609 = v21;
      v607 = v19;
      *a1 = *v11;
      v22 = v11[1];
      v23 = v11[2];
      v24 = v11[4];
      a1[3] = v11[3];
      a1[4] = v24;
      a1[1] = v22;
      a1[2] = v23;
      v25 = v11[5];
      v26 = v11[6];
      v27 = v11[8];
      a1[7] = v11[7];
      a1[8] = v27;
      a1[5] = v25;
      a1[6] = v26;
      v28 = v11[9];
      v29 = v11[10];
      v30 = v11[11];
      *(a1 + 24) = *(v11 + 24);
      a1[10] = v29;
      a1[11] = v30;
      a1[9] = v28;
      *v11 = v598;
      v31 = v599;
      v32 = v600;
      v33 = v602;
      v11[3] = v601;
      v11[4] = v33;
      v11[1] = v31;
      v11[2] = v32;
      v34 = v603;
      v35 = v604;
      v36 = v606;
      v11[7] = v605;
      v11[8] = v36;
      v11[5] = v34;
      v11[6] = v35;
      v37 = v607;
      v38 = v608;
      v39 = v609;
      *(v11 + 24) = v610;
      v11[10] = v38;
      v11[11] = v39;
      v11[9] = v37;
    }

    v577 = a3 - 1;
    if (a4)
    {
      goto LABEL_36;
    }

    v40 = *(a1 - 9);
    v41 = *(a1 + 16);
    if (v40 != v41)
    {
      if (v40 >= v41)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }

    v42 = *(a1 - 8);
    v43 = *(a1 + 17);
    v44 = v42 < v43;
    if (v42 == v43)
    {
      v45 = *(a1 - 7);
      v46 = *(a1 + 18);
      v44 = v45 < v46;
      if (v45 == v46)
      {
        v44 = *(a1 - 3) < *(a1 + 152);
      }
    }

    if (v44 || *(a1 - 6) == *(a1 + 19) && *(a1 - 7) == *(a1 + 18) && v42 == v43 && *(a1 - 5) == *(a1 + 20) && sub_10003F560(a1 - 200, a1))
    {
LABEL_36:
      v62 = 0;
      v585 = *a1;
      v63 = a1[1];
      v64 = a1[2];
      v65 = a1[4];
      v588 = a1[3];
      v589 = v65;
      v586 = v63;
      v587 = v64;
      v66 = a1[5];
      v67 = a1[6];
      v68 = a1[8];
      v592 = a1[7];
      v593 = v68;
      v590 = v66;
      v591 = v67;
      v69 = a1[9];
      v70 = a1[10];
      v71 = a1[11];
      v597 = *(a1 + 24);
      v595 = v70;
      v596 = v71;
      v594 = v69;
      v72 = v68;
      v73 = *(&v69 + 1);
      v74 = v70;
      v75 = v69;
      while (1)
      {
        v76 = a1 + v62;
        v77 = *(a1 + v62 + 328);
        if (v77 == v72)
        {
          break;
        }

        if (v77 >= v72)
        {
          goto LABEL_51;
        }

LABEL_50:
        v62 += 200;
      }

      v78 = *(v76 + 42);
      v79 = v78 < *(&v72 + 1);
      if (v78 == *(&v72 + 1))
      {
        v80 = *(a1 + v62 + 344);
        v79 = v80 < v75;
        if (v80 == v75)
        {
          v81 = *(a1 + v62 + 360);
          v79 = v81 < v74;
          if (v81 == v74)
          {
            v79 = *(a1 + v62 + 352) < v73;
          }
        }
      }

      if (v79 || *(a1 + v62 + 352) == v73 && *(a1 + v62 + 344) == v75 && v78 == *(&v72 + 1) && *(a1 + v62 + 360) == v74 && sub_10003F560((v76 + 200), &v585))
      {
        goto LABEL_50;
      }

LABEL_51:
      v82 = a1 + v62;
      v83 = a1 + v62 + 200;
      i = v581;
      if (v62)
      {
        while (1)
        {
          v85 = *(i + 16);
          if (v85 == v72)
          {
            v86 = *(i + 17);
            v87 = v86 < *(&v72 + 1);
            if (v86 == *(&v72 + 1))
            {
              v88 = *(i + 18);
              v87 = v88 < v75;
              if (v88 == v75)
              {
                v89 = *(i + 20);
                v87 = v89 < v74;
                if (v89 == v74)
                {
                  v87 = *(i + 19) < v73;
                }
              }
            }

            if (v87 || *(i + 19) == v73 && *(i + 18) == v75 && v86 == *(&v72 + 1) && *(i + 20) == v74 && sub_10003F560(i, &v585))
            {
              goto LABEL_86;
            }
          }

          else if (v85 < v72)
          {
            goto LABEL_86;
          }

          i -= 200;
        }
      }

      i = v579;
      if (v83 < v579)
      {
        for (i = v581; ; i -= 200)
        {
          v90 = *(i + 16);
          if (v90 == v72)
          {
            v91 = *(i + 17);
            v92 = v91 < *(&v72 + 1);
            if (v91 == *(&v72 + 1))
            {
              v93 = *(i + 18);
              v92 = v93 < v75;
              if (v93 == v75)
              {
                v94 = *(i + 20);
                v92 = v94 < v74;
                if (v94 == v74)
                {
                  v92 = *(i + 19) < v73;
                }
              }
            }

            if (v92 || *(i + 19) == v73 && *(i + 18) == v75 && v91 == *(&v72 + 1) && *(i + 20) == v74 && sub_10003F560(i, &v585) || v83 >= i)
            {
              break;
            }
          }

          else if (v90 < v72 || v83 >= i)
          {
            break;
          }
        }
      }

LABEL_86:
      if (v83 < i)
      {
        v96 = a1 + v62 + 200;
        v97 = i;
        do
        {
          v598 = *v96;
          v98 = *(v96 + 1);
          v99 = *(v96 + 2);
          v100 = *(v96 + 4);
          v601 = *(v96 + 3);
          v602 = v100;
          v599 = v98;
          v600 = v99;
          v101 = *(v96 + 5);
          v102 = *(v96 + 6);
          v103 = *(v96 + 8);
          v605 = *(v96 + 7);
          v606 = v103;
          v603 = v101;
          v604 = v102;
          v104 = *(v96 + 9);
          v105 = *(v96 + 10);
          v106 = *(v96 + 11);
          v610 = *(v96 + 24);
          v608 = v105;
          v609 = v106;
          v607 = v104;
          *v96 = *v97;
          v107 = *(v97 + 16);
          v108 = *(v97 + 32);
          v109 = *(v97 + 64);
          *(v96 + 3) = *(v97 + 48);
          *(v96 + 4) = v109;
          *(v96 + 1) = v107;
          *(v96 + 2) = v108;
          v110 = *(v97 + 80);
          v111 = *(v97 + 96);
          v112 = *(v97 + 128);
          *(v96 + 7) = *(v97 + 112);
          *(v96 + 8) = v112;
          *(v96 + 5) = v110;
          *(v96 + 6) = v111;
          v113 = *(v97 + 144);
          v114 = *(v97 + 160);
          v115 = *(v97 + 176);
          *(v96 + 24) = *(v97 + 192);
          *(v96 + 10) = v114;
          *(v96 + 11) = v115;
          *(v96 + 9) = v113;
          *v97 = v598;
          v116 = v599;
          v117 = v600;
          v118 = v602;
          *(v97 + 48) = v601;
          *(v97 + 64) = v118;
          *(v97 + 16) = v116;
          *(v97 + 32) = v117;
          v119 = v603;
          v120 = v604;
          v121 = v606;
          *(v97 + 112) = v605;
          *(v97 + 128) = v121;
          *(v97 + 80) = v119;
          *(v97 + 96) = v120;
          v122 = v607;
          v123 = v608;
          v124 = v609;
          *(v97 + 192) = v610;
          *(v97 + 160) = v123;
          *(v97 + 176) = v124;
          *(v97 + 144) = v122;
          v125 = v593;
          v126 = v594.n128_i64[1];
          v127 = v595;
          v128 = v594.n128_u64[0];
          do
          {
            while (1)
            {
              v96 += 200;
              v129 = *(v96 + 16);
              if (v129 == v125)
              {
                break;
              }

              if (v129 >= v125)
              {
                goto LABEL_104;
              }
            }

            v130 = *(v96 + 17);
            v131 = v130 < *(&v125 + 1);
            if (v130 == *(&v125 + 1))
            {
              v132 = *(v96 + 18);
              v131 = v132 < v128;
              if (v132 == v128)
              {
                v133 = *(v96 + 20);
                v131 = v133 < v127;
                if (v133 == v127)
                {
                  v131 = *(v96 + 19) < v126;
                }
              }
            }
          }

          while (v131 || *(v96 + 19) == v126 && *(v96 + 18) == v128 && v130 == *(&v125 + 1) && *(v96 + 20) == v127 && sub_10003F560(v96, &v585));
          do
          {
LABEL_104:
            while (1)
            {
              v97 -= 200;
              v134 = *(v97 + 128);
              if (v134 == v125)
              {
                break;
              }

              if (v134 < v125)
              {
                goto LABEL_115;
              }
            }

            v135 = *(v97 + 136);
            v136 = v135 < *(&v125 + 1);
            if (v135 == *(&v125 + 1))
            {
              v137 = *(v97 + 144);
              v136 = v137 < v128;
              if (v137 == v128)
              {
                v138 = *(v97 + 160);
                v136 = v138 < v127;
                if (v138 == v127)
                {
                  v136 = *(v97 + 152) < v126;
                }
              }
            }
          }

          while (!v136 && (*(v97 + 152) != v126 || *(v97 + 144) != v128 || v135 != *(&v125 + 1) || *(v97 + 160) != v127 || !sub_10003F560(v97, &v585)));
LABEL_115:
          ;
        }

        while (v96 < v97);
        v82 = v96 - 200;
      }

      if (v82 != a1)
      {
        *a1 = *v82;
        v139 = *(v82 + 1);
        v140 = *(v82 + 2);
        v141 = *(v82 + 4);
        a1[3] = *(v82 + 3);
        a1[4] = v141;
        a1[1] = v139;
        a1[2] = v140;
        v142 = *(v82 + 5);
        v143 = *(v82 + 6);
        v144 = *(v82 + 8);
        a1[7] = *(v82 + 7);
        a1[8] = v144;
        a1[5] = v142;
        a1[6] = v143;
        v145 = *(v82 + 9);
        v146 = *(v82 + 10);
        v147 = *(v82 + 11);
        *(a1 + 24) = *(v82 + 24);
        a1[10] = v146;
        a1[11] = v147;
        a1[9] = v145;
      }

      *v82 = v585;
      v148 = v586;
      v149 = v587;
      v150 = v589;
      *(v82 + 3) = v588;
      *(v82 + 4) = v150;
      *(v82 + 1) = v148;
      *(v82 + 2) = v149;
      v151 = v590;
      v152 = v591;
      v153 = v593;
      *(v82 + 7) = v592;
      *(v82 + 8) = v153;
      *(v82 + 5) = v151;
      *(v82 + 6) = v152;
      v154 = v594;
      v155 = v595;
      v156 = v596;
      *(v82 + 24) = v597;
      *(v82 + 10) = v155;
      *(v82 + 11) = v156;
      *(v82 + 9) = v154;
      a3 = v577;
      a2 = v579;
      if (v83 < i)
      {
LABEL_122:
        result.n128_u64[0] = sub_10003C274(a1, v82, v577, a4 & 1).n128_u64[0];
        a4 = 0;
        v7 = (v82 + 200);
      }

      else
      {
        v157 = sub_10003F054(a1, v82);
        v7 = (v82 + 200);
        if (sub_10003F054((v82 + 200), v579))
        {
          a2 = v82;
          if (v157)
          {
            return result;
          }

          goto LABEL_1;
        }

        if (!v157)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
LABEL_25:
      v585 = *a1;
      v47 = a1[1];
      v48 = a1[2];
      v49 = a1[4];
      v588 = a1[3];
      v589 = v49;
      v586 = v47;
      v587 = v48;
      v50 = a1[5];
      v51 = a1[6];
      v52 = a1[8];
      v592 = a1[7];
      v593 = v52;
      v590 = v50;
      v591 = v51;
      v53 = a1[9];
      v54 = a1[10];
      v55 = a1[11];
      v597 = *(a1 + 24);
      v595 = v54;
      v596 = v55;
      v594 = v53;
      v56 = v52;
      v57 = *(a2 - 9);
      if (v52 == v57)
      {
        v58 = *(&v593 + 1);
        v59 = *(a2 - 8);
        v60 = *(&v593 + 1) < v59;
        if (*(&v593 + 1) == v59)
        {
          v61 = *(a2 - 7);
          v60 = v594.n128_u64[0] < v61;
          if (v594.n128_u64[0] == v61)
          {
            v60 = __PAIR128__(v595, v594.n128_u64[1]) < *(a2 - 3);
          }
        }

        if (v60 || *&v594 == *(a2 - 56) && *(&v593 + 1) == v59 && v595 == *(a2 - 5) && sub_10003F560(&v585, v581))
        {
          goto LABEL_125;
        }
      }

      else if (v52 < v57)
      {
        v58 = *(&v593 + 1);
LABEL_125:
        v160 = v594.n128_i64[1];
        v159 = v595;
        v7 = (a1 + 200);
        v161 = v594.n128_u64[0];
        while (1)
        {
          v162 = *(v7 + 16);
          if (v56 == v162)
          {
            v163 = *(v7 + 17);
            v164 = v58 < v163;
            if (v58 == v163)
            {
              v165 = *(v7 + 18);
              v164 = v161 < v165;
              if (v161 == v165)
              {
                v166 = *(v7 + 20);
                v164 = v159 < v166;
                if (v159 == v166)
                {
                  v164 = v160 < *(v7 + 19);
                }
              }
            }

            if (v164 || v160 == *(v7 + 19) && v161 == *(v7 + 18) && v58 == v163 && v159 == *(v7 + 20) && sub_10003F560(&v585, v7))
            {
              goto LABEL_155;
            }
          }

          else if (v56 < v162)
          {
            goto LABEL_155;
          }

          v7 = (v7 + 200);
        }
      }

      v7 = (a1 + 200);
      if ((a1 + 200) < a2)
      {
        v167 = *(&v593 + 1);
        v169 = v594;
        v168 = v595;
        do
        {
          v170 = *(v7 + 16);
          if (v56 == v170)
          {
            v171 = *(v7 + 17);
            v172 = v167 < v171;
            if (v167 == v171)
            {
              v173 = *(v7 + 18);
              v172 = v169.n128_u64[0] < v173;
              if (v169.n128_u64[0] == v173)
              {
                v174 = *(v7 + 20);
                v172 = v168 < v174;
                if (v168 == v174)
                {
                  v172 = v169.n128_u64[1] < *(v7 + 19);
                }
              }
            }

            if (v172 || *&v169 == v7[9] && v167 == v171 && v168 == *(v7 + 20) && sub_10003F560(&v585, v7))
            {
              break;
            }
          }

          else if (v56 < v170)
          {
            break;
          }

          v7 = (v7 + 200);
        }

        while (v7 < v579);
      }

LABEL_155:
      v175 = v579;
      if (v7 < v579)
      {
        v176 = *(&v593 + 1);
        v177 = v594.n128_u64[0];
        v178 = v571;
        v180 = v594.n128_i64[1];
        v179 = v595;
        while (1)
        {
          v175 = v178 - 136;
          if (v56 == v57)
          {
            v181 = v176 < *v178;
            if (v176 == *v178)
            {
              v182 = *(v178 + 1);
              v181 = v177 < v182;
              if (v177 == v182)
              {
                v183 = *(v178 + 3);
                v181 = v179 < v183;
                if (v179 == v183)
                {
                  v181 = v180 < *(v178 + 2);
                }
              }
            }

            if (!v181 && (v180 != *(v178 + 2) || v177 != *(v178 + 1) || v176 != *v178 || v179 != *(v178 + 3) || !sub_10003F560(&v585, v178 - 136)))
            {
              break;
            }
          }

          else if (v56 >= v57)
          {
            break;
          }

          v57 = *(v178 - 26);
          v178 = (v178 - 200);
        }
      }

LABEL_198:
      while (v7 < v175)
      {
        v598 = *v7;
        v184 = v7[1];
        v185 = v7[2];
        v186 = v7[4];
        v601 = v7[3];
        v602 = v186;
        v599 = v184;
        v600 = v185;
        v187 = v7[5];
        v188 = v7[6];
        v189 = v7[8];
        v605 = v7[7];
        v606 = v189;
        v603 = v187;
        v604 = v188;
        v190 = v7[9];
        v191 = v7[10];
        v192 = v7[11];
        v610 = *(v7 + 24);
        v608 = v191;
        v609 = v192;
        v607 = v190;
        *v7 = *v175;
        v193 = *(v175 + 16);
        v194 = *(v175 + 32);
        v195 = *(v175 + 64);
        v7[3] = *(v175 + 48);
        v7[4] = v195;
        v7[1] = v193;
        v7[2] = v194;
        v196 = *(v175 + 80);
        v197 = *(v175 + 96);
        v198 = *(v175 + 128);
        v7[7] = *(v175 + 112);
        v7[8] = v198;
        v7[5] = v196;
        v7[6] = v197;
        v199 = *(v175 + 144);
        v200 = *(v175 + 160);
        v201 = *(v175 + 176);
        *(v7 + 24) = *(v175 + 192);
        v7[10] = v200;
        v7[11] = v201;
        v7[9] = v199;
        *v175 = v598;
        v202 = v599;
        v203 = v600;
        v204 = v602;
        *(v175 + 48) = v601;
        *(v175 + 64) = v204;
        *(v175 + 16) = v202;
        *(v175 + 32) = v203;
        v205 = v603;
        v206 = v604;
        v207 = v606;
        *(v175 + 112) = v605;
        *(v175 + 128) = v207;
        *(v175 + 80) = v205;
        *(v175 + 96) = v206;
        v208 = v607;
        v209 = v608;
        v210 = v609;
        *(v175 + 192) = v610;
        *(v175 + 160) = v209;
        *(v175 + 176) = v210;
        *(v175 + 144) = v208;
        v211 = v593;
        v213 = v594.n128_i64[1];
        v212 = v595;
        v214 = v594.n128_u64[0];
        do
        {
          while (1)
          {
            v7 = (v7 + 200);
            v215 = *(v7 + 16);
            if (v211 == v215)
            {
              break;
            }

            if (v211 < v215)
            {
              goto LABEL_187;
            }
          }

          v216 = *(v7 + 17);
          v217 = *(&v211 + 1) < v216;
          if (*(&v211 + 1) == v216)
          {
            v218 = *(v7 + 18);
            v217 = v214 < v218;
            if (v214 == v218)
            {
              v219 = *(v7 + 20);
              v217 = v212 < v219;
              if (v212 == v219)
              {
                v217 = v213 < *(v7 + 19);
              }
            }
          }
        }

        while (!v217 && (v213 != *(v7 + 19) || v214 != *(v7 + 18) || *(&v211 + 1) != v216 || v212 != *(v7 + 20) || !sub_10003F560(&v585, v7)));
        do
        {
LABEL_187:
          while (1)
          {
            v175 -= 200;
            v220 = *(v175 + 128);
            if (v211 == v220)
            {
              break;
            }

            if (v211 >= v220)
            {
              goto LABEL_198;
            }
          }

          v221 = *(v175 + 136);
          v222 = *(&v211 + 1) < v221;
          if (*(&v211 + 1) == v221)
          {
            v223 = *(v175 + 144);
            v222 = v214 < v223;
            if (v214 == v223)
            {
              v224 = *(v175 + 160);
              v222 = v212 < v224;
              if (v212 == v224)
              {
                v222 = v213 < *(v175 + 152);
              }
            }
          }
        }

        while (v222 || v213 == *(v175 + 152) && v214 == *(v175 + 144) && *(&v211 + 1) == v221 && v212 == *(v175 + 160) && sub_10003F560(&v585, v175));
      }

      v225 = (v7 - 200);
      if ((v7 - 200) != a1)
      {
        *a1 = *v225;
        v226 = *(v7 - 184);
        v227 = *(v7 - 168);
        v228 = *(v7 - 136);
        a1[3] = *(v7 - 152);
        a1[4] = v228;
        a1[1] = v226;
        a1[2] = v227;
        v229 = *(v7 - 120);
        v230 = *(v7 - 104);
        v231 = *(v7 - 72);
        a1[7] = *(v7 - 88);
        a1[8] = v231;
        a1[5] = v229;
        a1[6] = v230;
        v232 = *(v7 - 56);
        v233 = *(v7 - 40);
        v234 = *(v7 - 24);
        *(a1 + 24) = *(v7 - 1);
        a1[10] = v233;
        a1[11] = v234;
        a1[9] = v232;
      }

      a4 = 0;
      *v225 = v585;
      v235 = v586;
      v236 = v587;
      v237 = v589;
      *(v7 - 152) = v588;
      *(v7 - 136) = v237;
      *(v7 - 184) = v235;
      *(v7 - 168) = v236;
      v238 = v590;
      v239 = v591;
      v240 = v593;
      *(v7 - 88) = v592;
      *(v7 - 72) = v240;
      *(v7 - 120) = v238;
      *(v7 - 104) = v239;
      result = v594;
      v241 = v595;
      v242 = v596;
      *(v7 - 1) = v597;
      *(v7 - 40) = v241;
      *(v7 - 24) = v242;
      *(v7 - 56) = result;
      a3 = v577;
      a2 = v579;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (a1 == a2)
    {
      return result;
    }

    while (1)
    {
LABEL_397:
      if ((a1 + 200) == a2)
      {
        return result;
      }

      v530 = a1;
      a1 = (a1 + 200);
      v531 = *(v530 + 41);
      v532 = *(v530 + 16);
      if (v531 != v532)
      {
        break;
      }

      v533 = *(v530 + 42);
      v534 = *(v530 + 17);
      v535 = v533 < v534;
      if (v533 == v534)
      {
        v536 = *(v530 + 43);
        v537 = *(v530 + 18);
        v535 = v536 < v537;
        if (v536 == v537)
        {
          v535 = v530[22] < *(v530 + 152);
        }
      }

      if (v535 || *(v530 + 44) == *(v530 + 19) && *(v530 + 43) == *(v530 + 18) && v533 == v534 && *(v530 + 45) == *(v530 + 20) && sub_10003F560(a1, v530))
      {
        goto LABEL_410;
      }
    }

    if (v531 >= v532)
    {
      goto LABEL_397;
    }

LABEL_410:
    v598 = *a1;
    v538 = a1[1];
    v539 = a1[2];
    v540 = a1[4];
    v601 = a1[3];
    v602 = v540;
    v599 = v538;
    v600 = v539;
    v541 = a1[5];
    v542 = a1[6];
    v543 = a1[8];
    v605 = a1[7];
    v606 = v543;
    v603 = v541;
    v604 = v542;
    v544 = a1[9];
    v545 = a1[10];
    v546 = a1[11];
    v610 = *(a1 + 24);
    v608 = v545;
    v609 = v546;
    v607 = v544;
    v547 = v543;
    v549 = *(&v544 + 1);
    v548 = v545;
    v550 = v544;
    for (j = a1; ; j = (j - 200))
    {
      v552 = *(j - 56);
      v553 = *(j - 24);
      j[10] = *(j - 40);
      j[11] = v553;
      *(j + 24) = *(j - 1);
      v554 = *(j - 120);
      v555 = *(j - 88);
      j[6] = *(j - 104);
      j[7] = v555;
      j[8] = *(j - 72);
      j[9] = v552;
      v556 = *(j - 184);
      v557 = *(j - 152);
      j[2] = *(j - 168);
      j[3] = v557;
      j[4] = *(j - 136);
      j[5] = v554;
      *j = *(j - 200);
      j[1] = v556;
      v558 = *(j - 34);
      if (v547 == v558)
      {
        v559 = *(j - 33);
        v560 = *(&v547 + 1) < v559;
        if (*(&v547 + 1) == v559)
        {
          v561 = *(j - 32);
          v560 = v550 < v561;
          if (v550 == v561)
          {
            v562 = *(j - 30);
            v560 = v548 < v562;
            if (v548 == v562)
            {
              v560 = v549 < *(j - 31);
            }
          }
        }

        if (!v560 && (v549 != *(j - 31) || v550 != *(j - 32) || *(&v547 + 1) != v559 || v548 != *(j - 30) || !sub_10003F560(&v598, (j - 25))))
        {
LABEL_425:
          *(j - 200) = v598;
          v563 = v599;
          v564 = v600;
          v565 = v601;
          *(j - 136) = v602;
          *(j - 152) = v565;
          *(j - 168) = v564;
          *(j - 184) = v563;
          v566 = v603;
          v567 = v604;
          v568 = v605;
          *(j - 72) = v606;
          *(j - 88) = v568;
          *(j - 104) = v567;
          *(j - 120) = v566;
          result = v607;
          v569 = v608;
          v570 = v609;
          *(j - 1) = v610;
          *(j - 24) = v570;
          *(j - 40) = v569;
          *(j - 56) = result;
          a2 = v579;
          goto LABEL_397;
        }
      }

      else if (v547 >= v558)
      {
        goto LABEL_425;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v250 = (a1 + 200);
  if ((a1 + 200) == a2)
  {
    return result;
  }

  v251 = 0;
  v252 = a1;
  while (2)
  {
    v253 = v252;
    v252 = v250;
    v254 = *(v253 + 328);
    v255 = *(v253 + 128);
    if (v254 == v255)
    {
      v256 = *(v253 + 336);
      v257 = *(v253 + 136);
      v258 = v256 < v257;
      if (v256 == v257)
      {
        v259 = *(v253 + 344);
        v260 = *(v253 + 144);
        v258 = v259 < v260;
        if (v259 == v260)
        {
          v258 = *(v253 + 352) < *(v253 + 152);
        }
      }

      if (!v258 && (*(v253 + 352) != *(v253 + 152) || *(v253 + 344) != *(v253 + 144) || v256 != v257 || *(v253 + 360) != *(v253 + 160) || !sub_10003F560(v252, v253)))
      {
        goto LABEL_258;
      }
    }

    else if (v254 >= v255)
    {
      goto LABEL_258;
    }

    v598 = *v252;
    v261 = v252[1];
    v262 = v252[2];
    v263 = v252[4];
    v601 = v252[3];
    v602 = v263;
    v599 = v261;
    v600 = v262;
    v264 = v252[5];
    v265 = v252[6];
    v266 = v252[8];
    v605 = v252[7];
    v606 = v266;
    v603 = v264;
    v604 = v265;
    v267 = v252[9];
    v268 = v252[10];
    v269 = v252[11];
    v610 = *(v252 + 24);
    v608 = v268;
    v609 = v269;
    v607 = v267;
    v270 = *(v253 + 176);
    v252[10] = *(v253 + 160);
    v252[11] = v270;
    *(v252 + 24) = *(v253 + 192);
    v271 = *(v253 + 112);
    v252[6] = *(v253 + 96);
    v252[7] = v271;
    v272 = *(v253 + 144);
    v252[8] = *(v253 + 128);
    v252[9] = v272;
    v273 = *(v253 + 48);
    v252[2] = *(v253 + 32);
    v252[3] = v273;
    v274 = *(v253 + 80);
    v252[4] = *(v253 + 64);
    v252[5] = v274;
    v275 = *(v253 + 16);
    v276 = a1;
    *v252 = *v253;
    v252[1] = v275;
    if (v253 == a1)
    {
      goto LABEL_257;
    }

    *v278 = v606;
    v582 = v608;
    v277 = v251;
    *&v278[16] = v607;
    while (2)
    {
      v279 = a1 + v277;
      v280 = *(a1 + v277 - 72);
      if (*v278 != v280)
      {
        if (*v278 >= v280)
        {
          goto LABEL_256;
        }

        goto LABEL_254;
      }

      v281 = *(v279 - 8);
      v282 = *&v278[8] < v281;
      if (*&v278[8] == v281)
      {
        v283 = *(a1 + v277 - 56);
        v282 = *&v278[16] < v283;
        if (*&v278[16] == v283)
        {
          v284 = *(a1 + v277 - 40);
          v282 = v582 < v284;
          if (v582 == v284)
          {
            v282 = *&v278[24] < *(a1 + v277 - 48);
          }
        }
      }

      if (v282)
      {
LABEL_254:
        v253 -= 200;
        v285 = *(a1 + v277 - 24);
        *(v279 + 10) = *(a1 + v277 - 40);
        *(v279 + 11) = v285;
        *(v279 + 24) = *(a1 + v277 - 8);
        v286 = *(a1 + v277 - 88);
        *(v279 + 6) = *(a1 + v277 - 104);
        *(v279 + 7) = v286;
        v287 = *(a1 + v277 - 56);
        *(v279 + 8) = *(a1 + v277 - 72);
        *(v279 + 9) = v287;
        v288 = *(a1 + v277 - 152);
        *(v279 + 2) = *(a1 + v277 - 168);
        *(v279 + 3) = v288;
        v289 = *(a1 + v277 - 120);
        *(v279 + 4) = *(a1 + v277 - 136);
        *(v279 + 5) = v289;
        v290 = *(a1 + v277 - 184);
        *v279 = *(a1 + v277 - 200);
        *(v279 + 1) = v290;
        v277 -= 200;
        if (!v277)
        {
          v276 = a1;
          goto LABEL_257;
        }

        continue;
      }

      break;
    }

    if (*&v278[24] == *(a1 + v277 - 48) && *&v278[8] == __PAIR128__(*(a1 + v277 - 56), v281) && v582 == *(a1 + v277 - 40))
    {
      if (!sub_10003F560(&v598, a1 + v277 - 200))
      {
        v276 = (a1 + v277);
        goto LABEL_257;
      }

      goto LABEL_254;
    }

LABEL_256:
    v276 = v253;
LABEL_257:
    *v276 = v598;
    v291 = v599;
    v292 = v600;
    v293 = v602;
    v276[3] = v601;
    v276[4] = v293;
    v276[1] = v291;
    v276[2] = v292;
    v294 = v603;
    v295 = v604;
    v296 = v606;
    v276[7] = v605;
    v276[8] = v296;
    v276[5] = v294;
    v276[6] = v295;
    result = v607;
    v297 = v608;
    v298 = v609;
    *(v276 + 24) = v610;
    v276[10] = v297;
    v276[11] = v298;
    v276[9] = result;
LABEL_258:
    v250 = (v252 + 200);
    v251 += 200;
    if ((v252 + 200) != v579)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_10003E000(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  if (v6 == v7)
  {
    v8 = *(a2 + 17);
    v9 = *(a1 + 17);
    v10 = v8 < v9;
    if (v8 == v9)
    {
      v11 = *(a2 + 18);
      v12 = *(a1 + 18);
      v10 = v11 < v12;
      if (v11 == v12)
      {
        v10 = *(a2 + 152) < *(a1 + 152);
      }
    }

    if (!v10 && (*(a2 + 19) != *(a1 + 19) || *(a2 + 18) != *(a1 + 18) || v8 != v9 || *(a2 + 20) != *(a1 + 20) || !sub_10003F560(a2, a1)))
    {
LABEL_11:
      v14 = *(a3 + 16);
      if (v14 == v6)
      {
        v15 = *(a3 + 17);
        v16 = *(a2 + 17);
        v17 = v15 < v16;
        if (v15 == v16)
        {
          v18 = *(a3 + 18);
          v19 = *(a2 + 18);
          v17 = v18 < v19;
          if (v18 == v19)
          {
            v17 = *(a3 + 152) < *(a2 + 152);
          }
        }

        if (!v17 && (*(a3 + 19) != *(a2 + 19) || *(a3 + 18) != *(a2 + 18) || v15 != v16 || *(a3 + 20) != *(a2 + 20) || !sub_10003F560(a3, a2)))
        {
          return result;
        }
      }

      else if (v14 >= v6)
      {
        return result;
      }

      v127 = a2[10];
      v131 = a2[11];
      v135 = *(a2 + 24);
      v111 = a2[6];
      v115 = a2[7];
      v119 = a2[8];
      v123 = a2[9];
      v95 = a2[2];
      v99 = a2[3];
      v103 = a2[4];
      v107 = a2[5];
      v87 = *a2;
      v91 = a2[1];
      *a2 = *a3;
      v51 = a3[1];
      v52 = a3[2];
      v53 = a3[4];
      a2[3] = a3[3];
      a2[4] = v53;
      a2[1] = v51;
      a2[2] = v52;
      v54 = a3[5];
      v55 = a3[6];
      v56 = a3[8];
      a2[7] = a3[7];
      a2[8] = v56;
      a2[5] = v54;
      a2[6] = v55;
      v57 = a3[9];
      v58 = a3[10];
      v59 = a3[11];
      *(a2 + 24) = *(a3 + 24);
      a2[10] = v58;
      a2[11] = v59;
      a2[9] = v57;
      a3[10] = v127;
      a3[11] = v131;
      *(a3 + 24) = v135;
      a3[6] = v111;
      a3[7] = v115;
      a3[8] = v119;
      a3[9] = v123;
      a3[2] = v95;
      a3[3] = v99;
      a3[4] = v103;
      a3[5] = v107;
      result = v91;
      *a3 = v87;
      a3[1] = v91;
      v60 = *(a2 + 16);
      v61 = *(a1 + 16);
      if (v60 == v61)
      {
        v62 = *(a2 + 17);
        v63 = *(a1 + 17);
        v64 = v62 < v63;
        if (v62 == v63)
        {
          v65 = *(a2 + 18);
          v66 = *(a1 + 18);
          v64 = v65 < v66;
          if (v65 == v66)
          {
            v64 = *(a2 + 152) < *(a1 + 152);
          }
        }

        if (!v64 && (*(a2 + 19) != *(a1 + 19) || *(a2 + 18) != *(a1 + 18) || v62 != v63 || *(a2 + 20) != *(a1 + 20) || !sub_10003F560(a2, a1)))
        {
          return result;
        }
      }

      else if (v60 >= v61)
      {
        return result;
      }

      v128 = a1[10];
      v132 = a1[11];
      v136 = *(a1 + 24);
      v112 = a1[6];
      v116 = a1[7];
      v120 = a1[8];
      v124 = a1[9];
      v96 = a1[2];
      v100 = a1[3];
      v104 = a1[4];
      v108 = a1[5];
      v88 = *a1;
      v92 = a1[1];
      *a1 = *a2;
      v76 = a2[1];
      v77 = a2[2];
      v78 = a2[4];
      a1[3] = a2[3];
      a1[4] = v78;
      a1[1] = v76;
      a1[2] = v77;
      v79 = a2[5];
      v80 = a2[6];
      v81 = a2[8];
      a1[7] = a2[7];
      a1[8] = v81;
      a1[5] = v79;
      a1[6] = v80;
      v82 = a2[9];
      v83 = a2[10];
      v84 = a2[11];
      *(a1 + 24) = *(a2 + 24);
      a1[10] = v83;
      a1[11] = v84;
      a1[9] = v82;
      a2[10] = v128;
      a2[11] = v132;
      *(a2 + 24) = v136;
      a2[6] = v112;
      a2[7] = v116;
      a2[8] = v120;
      a2[9] = v124;
      a2[2] = v96;
      a2[3] = v100;
      a2[4] = v104;
      a2[5] = v108;
      result = v92;
      *a2 = v88;
      a2[1] = v92;
      return result;
    }
  }

  else if (v6 >= v7)
  {
    goto LABEL_11;
  }

  v20 = *(a3 + 16);
  if (v20 != v6)
  {
    if (v20 >= v6)
    {
      goto LABEL_33;
    }

LABEL_45:
    v126 = a1[10];
    v130 = a1[11];
    v134 = *(a1 + 24);
    v110 = a1[6];
    v114 = a1[7];
    v118 = a1[8];
    v122 = a1[9];
    v94 = a1[2];
    v98 = a1[3];
    v102 = a1[4];
    v106 = a1[5];
    v86 = *a1;
    v90 = a1[1];
    *a1 = *a3;
    v42 = a3[1];
    v43 = a3[2];
    v44 = a3[4];
    a1[3] = a3[3];
    a1[4] = v44;
    a1[1] = v42;
    a1[2] = v43;
    v45 = a3[5];
    v46 = a3[6];
    v47 = a3[8];
    a1[7] = a3[7];
    a1[8] = v47;
    a1[5] = v45;
    a1[6] = v46;
    v48 = a3[9];
    v49 = a3[10];
    v50 = a3[11];
    *(a1 + 24) = *(a3 + 24);
    a1[10] = v49;
    a1[11] = v50;
    a1[9] = v48;
LABEL_60:
    a3[10] = v126;
    a3[11] = v130;
    *(a3 + 24) = v134;
    a3[6] = v110;
    a3[7] = v114;
    a3[8] = v118;
    a3[9] = v122;
    a3[2] = v94;
    a3[3] = v98;
    a3[4] = v102;
    a3[5] = v106;
    result = v90;
    *a3 = v86;
    a3[1] = v90;
    return result;
  }

  v21 = *(a3 + 17);
  v22 = *(a2 + 17);
  v23 = v21 < v22;
  if (v21 == v22)
  {
    v24 = *(a3 + 18);
    v25 = *(a2 + 18);
    v23 = v24 < v25;
    if (v24 == v25)
    {
      v23 = *(a3 + 152) < *(a2 + 152);
    }
  }

  if (v23 || *(a3 + 19) == *(a2 + 19) && *(a3 + 18) == *(a2 + 18) && v21 == v22 && *(a3 + 20) == *(a2 + 20) && sub_10003F560(a3, a2))
  {
    goto LABEL_45;
  }

LABEL_33:
  v125 = a1[10];
  v129 = a1[11];
  v133 = *(a1 + 24);
  v109 = a1[6];
  v113 = a1[7];
  v117 = a1[8];
  v121 = a1[9];
  v93 = a1[2];
  v97 = a1[3];
  v101 = a1[4];
  v105 = a1[5];
  v85 = *a1;
  v89 = a1[1];
  *a1 = *a2;
  v26 = a2[1];
  v27 = a2[2];
  v28 = a2[4];
  a1[3] = a2[3];
  a1[4] = v28;
  a1[1] = v26;
  a1[2] = v27;
  v29 = a2[5];
  v30 = a2[6];
  v31 = a2[8];
  a1[7] = a2[7];
  a1[8] = v31;
  a1[5] = v29;
  a1[6] = v30;
  v32 = a2[9];
  v33 = a2[10];
  v34 = a2[11];
  *(a1 + 24) = *(a2 + 24);
  a1[10] = v33;
  a1[11] = v34;
  a1[9] = v32;
  a2[10] = v125;
  a2[11] = v129;
  *(a2 + 24) = v133;
  a2[6] = v109;
  a2[7] = v113;
  a2[8] = v117;
  a2[9] = v121;
  a2[2] = v93;
  a2[3] = v97;
  a2[4] = v101;
  a2[5] = v105;
  result = v89;
  *a2 = v85;
  a2[1] = v89;
  v35 = *(a3 + 16);
  v36 = *(a2 + 16);
  if (v35 != v36)
  {
    if (v35 >= v36)
    {
      return result;
    }

    goto LABEL_59;
  }

  v37 = *(a3 + 17);
  v38 = *(a2 + 17);
  v39 = v37 < v38;
  if (v37 == v38)
  {
    v40 = *(a3 + 18);
    v41 = *(a2 + 18);
    v39 = v40 < v41;
    if (v40 == v41)
    {
      v39 = *(a3 + 152) < *(a2 + 152);
    }
  }

  if (v39 || *(a3 + 19) == *(a2 + 19) && *(a3 + 18) == *(a2 + 18) && v37 == v38 && *(a3 + 20) == *(a2 + 20) && sub_10003F560(a3, a2))
  {
LABEL_59:
    v126 = a2[10];
    v130 = a2[11];
    v134 = *(a2 + 24);
    v110 = a2[6];
    v114 = a2[7];
    v118 = a2[8];
    v122 = a2[9];
    v94 = a2[2];
    v98 = a2[3];
    v102 = a2[4];
    v106 = a2[5];
    v86 = *a2;
    v90 = a2[1];
    *a2 = *a3;
    v67 = a3[1];
    v68 = a3[2];
    v69 = a3[4];
    a2[3] = a3[3];
    a2[4] = v69;
    a2[1] = v67;
    a2[2] = v68;
    v70 = a3[5];
    v71 = a3[6];
    v72 = a3[8];
    a2[7] = a3[7];
    a2[8] = v72;
    a2[5] = v70;
    a2[6] = v71;
    v73 = a3[9];
    v74 = a3[10];
    v75 = a3[11];
    *(a2 + 24) = *(a3 + 24);
    a2[10] = v74;
    a2[11] = v75;
    a2[9] = v73;
    goto LABEL_60;
  }

  return result;
}

__n128 sub_10003E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result.n128_u64[0] = sub_10003E000(a1, a2, a3).n128_u64[0];
  v9 = *(a4 + 128);
  v10 = *(a3 + 128);
  if (v9 != v10)
  {
    if (v9 >= v10)
    {
      return result;
    }

LABEL_13:
    v87 = *(a3 + 160);
    v90 = *(a3 + 176);
    v93 = *(a3 + 192);
    v75 = *(a3 + 96);
    v78 = *(a3 + 112);
    v81 = *(a3 + 128);
    v84 = *(a3 + 144);
    v63 = *(a3 + 32);
    v66 = *(a3 + 48);
    v69 = *(a3 + 64);
    v72 = *(a3 + 80);
    v57 = *a3;
    v60 = *(a3 + 16);
    *a3 = *a4;
    v16 = *(a4 + 16);
    v17 = *(a4 + 32);
    v18 = *(a4 + 64);
    *(a3 + 48) = *(a4 + 48);
    *(a3 + 64) = v18;
    *(a3 + 16) = v16;
    *(a3 + 32) = v17;
    v19 = *(a4 + 80);
    v20 = *(a4 + 96);
    v21 = *(a4 + 128);
    *(a3 + 112) = *(a4 + 112);
    *(a3 + 128) = v21;
    *(a3 + 80) = v19;
    *(a3 + 96) = v20;
    v22 = *(a4 + 144);
    v23 = *(a4 + 160);
    v24 = *(a4 + 176);
    *(a3 + 192) = *(a4 + 192);
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    *(a3 + 144) = v22;
    *(a4 + 160) = v87;
    *(a4 + 176) = v90;
    *(a4 + 192) = v93;
    *(a4 + 96) = v75;
    *(a4 + 112) = v78;
    *(a4 + 128) = v81;
    *(a4 + 144) = v84;
    *(a4 + 32) = v63;
    *(a4 + 48) = v66;
    *(a4 + 64) = v69;
    *(a4 + 80) = v72;
    result = v60;
    *a4 = v57;
    *(a4 + 16) = v60;
    v25 = *(a3 + 128);
    v26 = *(a2 + 128);
    if (v25 == v26)
    {
      v27 = *(a3 + 136);
      v28 = *(a2 + 136);
      v29 = v27 < v28;
      if (v27 == v28)
      {
        v30 = *(a3 + 144);
        v31 = *(a2 + 144);
        v29 = v30 < v31;
        if (v30 == v31)
        {
          v29 = *(a3 + 152) < *(a2 + 152);
        }
      }

      if (!v29 && (*(a3 + 152) != *(a2 + 152) || *(a3 + 144) != *(a2 + 144) || v27 != v28 || *(a3 + 160) != *(a2 + 160) || !sub_10003F560(a3, a2)))
      {
        return result;
      }
    }

    else if (v25 >= v26)
    {
      return result;
    }

    v88 = *(a2 + 160);
    v91 = *(a2 + 176);
    v94 = *(a2 + 192);
    v76 = *(a2 + 96);
    v79 = *(a2 + 112);
    v82 = *(a2 + 128);
    v85 = *(a2 + 144);
    v64 = *(a2 + 32);
    v67 = *(a2 + 48);
    v70 = *(a2 + 64);
    v73 = *(a2 + 80);
    v58 = *a2;
    v61 = *(a2 + 16);
    *a2 = *a3;
    v32 = *(a3 + 16);
    v33 = *(a3 + 32);
    v34 = *(a3 + 64);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 64) = v34;
    *(a2 + 16) = v32;
    *(a2 + 32) = v33;
    v35 = *(a3 + 80);
    v36 = *(a3 + 96);
    v37 = *(a3 + 128);
    *(a2 + 112) = *(a3 + 112);
    *(a2 + 128) = v37;
    *(a2 + 80) = v35;
    *(a2 + 96) = v36;
    v38 = *(a3 + 144);
    v39 = *(a3 + 160);
    v40 = *(a3 + 176);
    *(a2 + 192) = *(a3 + 192);
    *(a2 + 160) = v39;
    *(a2 + 176) = v40;
    *(a2 + 144) = v38;
    *(a3 + 160) = v88;
    *(a3 + 176) = v91;
    *(a3 + 192) = v94;
    *(a3 + 96) = v76;
    *(a3 + 112) = v79;
    *(a3 + 128) = v82;
    *(a3 + 144) = v85;
    *(a3 + 32) = v64;
    *(a3 + 48) = v67;
    *(a3 + 64) = v70;
    *(a3 + 80) = v73;
    result = v61;
    *a3 = v58;
    *(a3 + 16) = v61;
    v41 = *(a2 + 128);
    v42 = *(a1 + 128);
    if (v41 == v42)
    {
      v43 = *(a2 + 136);
      v44 = *(a1 + 136);
      v45 = v43 < v44;
      if (v43 == v44)
      {
        v46 = *(a2 + 144);
        v47 = *(a1 + 144);
        v45 = v46 < v47;
        if (v46 == v47)
        {
          v45 = *(a2 + 152) < *(a1 + 152);
        }
      }

      if (!v45 && (*(a2 + 152) != *(a1 + 152) || *(a2 + 144) != *(a1 + 144) || v43 != v44 || *(a2 + 160) != *(a1 + 160) || !sub_10003F560(a2, a1)))
      {
        return result;
      }
    }

    else if (v41 >= v42)
    {
      return result;
    }

    v89 = *(a1 + 160);
    v92 = *(a1 + 176);
    v95 = *(a1 + 192);
    v77 = *(a1 + 96);
    v80 = *(a1 + 112);
    v83 = *(a1 + 128);
    v86 = *(a1 + 144);
    v65 = *(a1 + 32);
    v68 = *(a1 + 48);
    v71 = *(a1 + 64);
    v74 = *(a1 + 80);
    v59 = *a1;
    v62 = *(a1 + 16);
    *a1 = *a2;
    v48 = *(a2 + 16);
    v49 = *(a2 + 32);
    v50 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v50;
    *(a1 + 16) = v48;
    *(a1 + 32) = v49;
    v51 = *(a2 + 80);
    v52 = *(a2 + 96);
    v53 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v53;
    *(a1 + 80) = v51;
    *(a1 + 96) = v52;
    v54 = *(a2 + 144);
    v55 = *(a2 + 160);
    v56 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v55;
    *(a1 + 176) = v56;
    *(a1 + 144) = v54;
    *(a2 + 160) = v89;
    *(a2 + 176) = v92;
    *(a2 + 192) = v95;
    *(a2 + 96) = v77;
    *(a2 + 112) = v80;
    *(a2 + 128) = v83;
    *(a2 + 144) = v86;
    *(a2 + 32) = v65;
    *(a2 + 48) = v68;
    *(a2 + 64) = v71;
    *(a2 + 80) = v74;
    result = v62;
    *a2 = v59;
    *(a2 + 16) = v62;
    return result;
  }

  v11 = *(a4 + 136);
  v12 = *(a3 + 136);
  v13 = v11 < v12;
  if (v11 == v12)
  {
    v14 = *(a4 + 144);
    v15 = *(a3 + 144);
    v13 = v14 < v15;
    if (v14 == v15)
    {
      v13 = *(a4 + 152) < *(a3 + 152);
    }
  }

  if (v13 || *(a4 + 152) == *(a3 + 152) && *(a4 + 144) == *(a3 + 144) && v11 == v12 && *(a4 + 160) == *(a3 + 160) && sub_10003F560(a4, a3))
  {
    goto LABEL_13;
  }

  return result;
}

__n128 sub_10003EAC8(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result.n128_u64[0] = sub_10003E690(a1, a2, a3, a4).n128_u64[0];
  v11 = *(a5 + 16);
  v12 = *(a4 + 16);
  if (v11 != v12)
  {
    if (v11 >= v12)
    {
      return result;
    }

LABEL_13:
    v115 = a4[10];
    v119 = a4[11];
    v123 = *(a4 + 24);
    v99 = a4[6];
    v103 = a4[7];
    v107 = a4[8];
    v111 = a4[9];
    v83 = a4[2];
    v87 = a4[3];
    v91 = a4[4];
    v95 = a4[5];
    v75 = *a4;
    v79 = a4[1];
    *a4 = *a5;
    v18 = a5[1];
    v19 = a5[2];
    v20 = a5[4];
    a4[3] = a5[3];
    a4[4] = v20;
    a4[1] = v18;
    a4[2] = v19;
    v21 = a5[5];
    v22 = a5[6];
    v23 = a5[8];
    a4[7] = a5[7];
    a4[8] = v23;
    a4[5] = v21;
    a4[6] = v22;
    v24 = a5[9];
    v25 = a5[10];
    v26 = a5[11];
    *(a4 + 24) = *(a5 + 24);
    a4[10] = v25;
    a4[11] = v26;
    a4[9] = v24;
    a5[10] = v115;
    a5[11] = v119;
    *(a5 + 24) = v123;
    a5[6] = v99;
    a5[7] = v103;
    a5[8] = v107;
    a5[9] = v111;
    a5[2] = v83;
    a5[3] = v87;
    a5[4] = v91;
    a5[5] = v95;
    result = v79;
    *a5 = v75;
    a5[1] = v79;
    v27 = *(a4 + 16);
    v28 = *(a3 + 16);
    if (v27 == v28)
    {
      v29 = *(a4 + 17);
      v30 = *(a3 + 17);
      v31 = v29 < v30;
      if (v29 == v30)
      {
        v32 = *(a4 + 18);
        v33 = *(a3 + 18);
        v31 = v32 < v33;
        if (v32 == v33)
        {
          v31 = *(a4 + 152) < *(a3 + 152);
        }
      }

      if (!v31 && (*(a4 + 19) != *(a3 + 19) || *(a4 + 18) != *(a3 + 18) || v29 != v30 || *(a4 + 20) != *(a3 + 20) || !sub_10003F560(a4, a3)))
      {
        return result;
      }
    }

    else if (v27 >= v28)
    {
      return result;
    }

    v116 = a3[10];
    v120 = a3[11];
    v124 = *(a3 + 24);
    v100 = a3[6];
    v104 = a3[7];
    v108 = a3[8];
    v112 = a3[9];
    v84 = a3[2];
    v88 = a3[3];
    v92 = a3[4];
    v96 = a3[5];
    v76 = *a3;
    v80 = a3[1];
    *a3 = *a4;
    v34 = a4[1];
    v35 = a4[2];
    v36 = a4[4];
    a3[3] = a4[3];
    a3[4] = v36;
    a3[1] = v34;
    a3[2] = v35;
    v37 = a4[5];
    v38 = a4[6];
    v39 = a4[8];
    a3[7] = a4[7];
    a3[8] = v39;
    a3[5] = v37;
    a3[6] = v38;
    v40 = a4[9];
    v41 = a4[10];
    v42 = a4[11];
    *(a3 + 24) = *(a4 + 24);
    a3[10] = v41;
    a3[11] = v42;
    a3[9] = v40;
    a4[10] = v116;
    a4[11] = v120;
    *(a4 + 24) = v124;
    a4[6] = v100;
    a4[7] = v104;
    a4[8] = v108;
    a4[9] = v112;
    a4[2] = v84;
    a4[3] = v88;
    a4[4] = v92;
    a4[5] = v96;
    result = v80;
    *a4 = v76;
    a4[1] = v80;
    v43 = *(a3 + 16);
    v44 = *(a2 + 16);
    if (v43 == v44)
    {
      v45 = *(a3 + 17);
      v46 = *(a2 + 17);
      v47 = v45 < v46;
      if (v45 == v46)
      {
        v48 = *(a3 + 18);
        v49 = *(a2 + 18);
        v47 = v48 < v49;
        if (v48 == v49)
        {
          v47 = *(a3 + 152) < *(a2 + 152);
        }
      }

      if (!v47 && (*(a3 + 19) != *(a2 + 19) || *(a3 + 18) != *(a2 + 18) || v45 != v46 || *(a3 + 20) != *(a2 + 20) || !sub_10003F560(a3, a2)))
      {
        return result;
      }
    }

    else if (v43 >= v44)
    {
      return result;
    }

    v117 = a2[10];
    v121 = a2[11];
    v125 = *(a2 + 24);
    v101 = a2[6];
    v105 = a2[7];
    v109 = a2[8];
    v113 = a2[9];
    v85 = a2[2];
    v89 = a2[3];
    v93 = a2[4];
    v97 = a2[5];
    v77 = *a2;
    v81 = a2[1];
    *a2 = *a3;
    v50 = a3[1];
    v51 = a3[2];
    v52 = a3[4];
    a2[3] = a3[3];
    a2[4] = v52;
    a2[1] = v50;
    a2[2] = v51;
    v53 = a3[5];
    v54 = a3[6];
    v55 = a3[8];
    a2[7] = a3[7];
    a2[8] = v55;
    a2[5] = v53;
    a2[6] = v54;
    v56 = a3[9];
    v57 = a3[10];
    v58 = a3[11];
    *(a2 + 24) = *(a3 + 24);
    a2[10] = v57;
    a2[11] = v58;
    a2[9] = v56;
    a3[10] = v117;
    a3[11] = v121;
    *(a3 + 24) = v125;
    a3[6] = v101;
    a3[7] = v105;
    a3[8] = v109;
    a3[9] = v113;
    a3[2] = v85;
    a3[3] = v89;
    a3[4] = v93;
    a3[5] = v97;
    result = v81;
    *a3 = v77;
    a3[1] = v81;
    v59 = *(a2 + 16);
    v60 = *(a1 + 16);
    if (v59 == v60)
    {
      v61 = *(a2 + 17);
      v62 = *(a1 + 17);
      v63 = v61 < v62;
      if (v61 == v62)
      {
        v64 = *(a2 + 18);
        v65 = *(a1 + 18);
        v63 = v64 < v65;
        if (v64 == v65)
        {
          v63 = *(a2 + 152) < *(a1 + 152);
        }
      }

      if (!v63 && (*(a2 + 19) != *(a1 + 19) || *(a2 + 18) != *(a1 + 18) || v61 != v62 || *(a2 + 20) != *(a1 + 20) || !sub_10003F560(a2, a1)))
      {
        return result;
      }
    }

    else if (v59 >= v60)
    {
      return result;
    }

    v118 = a1[10];
    v122 = a1[11];
    v126 = *(a1 + 24);
    v102 = a1[6];
    v106 = a1[7];
    v110 = a1[8];
    v114 = a1[9];
    v86 = a1[2];
    v90 = a1[3];
    v94 = a1[4];
    v98 = a1[5];
    v78 = *a1;
    v82 = a1[1];
    *a1 = *a2;
    v66 = a2[1];
    v67 = a2[2];
    v68 = a2[4];
    a1[3] = a2[3];
    a1[4] = v68;
    a1[1] = v66;
    a1[2] = v67;
    v69 = a2[5];
    v70 = a2[6];
    v71 = a2[8];
    a1[7] = a2[7];
    a1[8] = v71;
    a1[5] = v69;
    a1[6] = v70;
    v72 = a2[9];
    v73 = a2[10];
    v74 = a2[11];
    *(a1 + 24) = *(a2 + 24);
    a1[10] = v73;
    a1[11] = v74;
    a1[9] = v72;
    a2[10] = v118;
    a2[11] = v122;
    *(a2 + 24) = v126;
    a2[6] = v102;
    a2[7] = v106;
    a2[8] = v110;
    a2[9] = v114;
    a2[2] = v86;
    a2[3] = v90;
    a2[4] = v94;
    a2[5] = v98;
    result = v82;
    *a2 = v78;
    a2[1] = v82;
    return result;
  }

  v13 = *(a5 + 17);
  v14 = *(a4 + 17);
  v15 = v13 < v14;
  if (v13 == v14)
  {
    v16 = *(a5 + 18);
    v17 = *(a4 + 18);
    v15 = v16 < v17;
    if (v16 == v17)
    {
      v15 = *(a5 + 152) < *(a4 + 152);
    }
  }

  if (v15 || *(a5 + 19) == *(a4 + 19) && *(a5 + 18) == *(a4 + 18) && v13 == v14 && *(a5 + 20) == *(a4 + 20) && sub_10003F560(a5, a4))
  {
    goto LABEL_13;
  }

  return result;
}

BOOL sub_10003F054(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0x8F5C28F5C28F5C29 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10003E000(a1, (a1 + 200), (a2 - 200));
        return 1;
      case 4:
        sub_10003E690(a1, a1 + 200, a1 + 400, a2 - 200);
        return 1;
      case 5:
        sub_10003EAC8(a1, (a1 + 200), (a1 + 400), (a1 + 600), (a2 - 200));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 200);
      v6 = *(a2 - 72);
      v7 = *(a1 + 128);
      if (v6 == v7)
      {
        v8 = *(a2 - 64);
        v9 = *(a1 + 136);
        v10 = v8 < v9;
        if (v8 == v9)
        {
          v11 = *(a2 - 56);
          v12 = *(a1 + 144);
          v10 = v11 < v12;
          if (v11 == v12)
          {
            v10 = *(a2 - 48) < *(a1 + 152);
          }
        }

        if (v10)
        {
          goto LABEL_58;
        }

        if (*(a2 - 48) == *(a1 + 152) && *(a2 - 56) == *(a1 + 144))
        {
          result = 1;
          if (v8 != v9 || *(a2 - 40) != *(a1 + 160))
          {
            return result;
          }

          if (sub_10003F560(a2 - 200, a1))
          {
LABEL_58:
            v63 = *(a1 + 176);
            v97 = *(a1 + 160);
            v98 = v63;
            v99 = *(a1 + 192);
            v64 = *(a1 + 112);
            v93 = *(a1 + 96);
            v94 = v64;
            v65 = *(a1 + 144);
            v95 = *(a1 + 128);
            v96 = v65;
            v66 = *(a1 + 48);
            v89 = *(a1 + 32);
            v90 = v66;
            v67 = *(a1 + 80);
            v91 = *(a1 + 64);
            v92 = v67;
            v68 = *(a1 + 16);
            v87 = *a1;
            v88 = v68;
            *a1 = *v5;
            v69 = *(v2 - 184);
            v70 = *(v2 - 168);
            v71 = *(v2 - 136);
            *(a1 + 48) = *(v2 - 152);
            *(a1 + 64) = v71;
            *(a1 + 16) = v69;
            *(a1 + 32) = v70;
            v72 = *(v2 - 120);
            v73 = *(v2 - 104);
            v74 = *(v2 - 72);
            *(a1 + 112) = *(v2 - 88);
            *(a1 + 128) = v74;
            *(a1 + 80) = v72;
            *(a1 + 96) = v73;
            v75 = *(v2 - 56);
            v76 = *(v2 - 40);
            v77 = *(v2 - 24);
            *(a1 + 192) = *(v2 - 8);
            *(a1 + 160) = v76;
            *(a1 + 176) = v77;
            *(a1 + 144) = v75;
            v78 = v98;
            *(v2 - 40) = v97;
            *(v2 - 24) = v78;
            *(v2 - 8) = v99;
            v79 = v94;
            *(v2 - 104) = v93;
            *(v2 - 88) = v79;
            v80 = v96;
            *(v2 - 72) = v95;
            *(v2 - 56) = v80;
            v81 = v90;
            *(v2 - 168) = v89;
            *(v2 - 152) = v81;
            v82 = v92;
            *(v2 - 136) = v91;
            *(v2 - 120) = v82;
            v83 = v88;
            result = 1;
            *v5 = v87;
            *(v2 - 184) = v83;
            return result;
          }
        }
      }

      else if (v6 < v7)
      {
        goto LABEL_58;
      }

      return 1;
    }
  }

  v14 = a1 + 400;
  sub_10003E000(a1, (a1 + 200), (a1 + 400));
  v15 = a1 + 600;
  if (a1 + 600 == v2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  v84 = v2;
  while (1)
  {
    v18 = *(v15 + 128);
    v19 = *(v14 + 128);
    if (v18 != v19)
    {
      break;
    }

    v20 = *(v15 + 136);
    v21 = *(v14 + 136);
    v22 = v20 < v21;
    if (v20 == v21)
    {
      v23 = *(v15 + 144);
      v24 = *(v14 + 144);
      v22 = v23 < v24;
      if (v23 == v24)
      {
        v22 = *(v15 + 152) < *(v14 + 152);
      }
    }

    if (v22 || *(v15 + 152) == *(v14 + 152) && *(v15 + 144) == *(v14 + 144) && v20 == v21 && *(v15 + 160) == *(v14 + 160) && sub_10003F560(v15, v14))
    {
      goto LABEL_34;
    }

LABEL_51:
    v14 = v15;
    v16 += 200;
    v15 += 200;
    if (v15 == v2)
    {
      return 1;
    }
  }

  if (v18 >= v19)
  {
    goto LABEL_51;
  }

LABEL_34:
  v86 = v17;
  v25 = *(v15 + 48);
  v89 = *(v15 + 32);
  v90 = v25;
  v26 = *(v15 + 112);
  v93 = *(v15 + 96);
  v94 = v26;
  v27 = *(v15 + 80);
  v91 = *(v15 + 64);
  v92 = v27;
  v99 = *(v15 + 192);
  v28 = *(v15 + 176);
  v97 = *(v15 + 160);
  v98 = v28;
  v29 = *(v15 + 144);
  v95 = *(v15 + 128);
  v96 = v29;
  v30 = *(v15 + 16);
  v87 = *v15;
  v88 = v30;
  v31 = *(v14 + 176);
  *(v15 + 160) = *(v14 + 160);
  *(v15 + 176) = v31;
  *(v15 + 192) = *(v14 + 192);
  v32 = *(v14 + 112);
  *(v15 + 96) = *(v14 + 96);
  *(v15 + 112) = v32;
  v33 = *(v14 + 144);
  *(v15 + 128) = *(v14 + 128);
  *(v15 + 144) = v33;
  v34 = *(v14 + 48);
  *(v15 + 32) = *(v14 + 32);
  *(v15 + 48) = v34;
  v35 = *(v14 + 80);
  *(v15 + 64) = *(v14 + 64);
  *(v15 + 80) = v35;
  v36 = *(v14 + 16);
  *v15 = *v14;
  *(v15 + 16) = v36;
  v37 = v95;
  v38 = v97;
  v85 = v16;
  v39 = v96;
  while (1)
  {
    v40 = a1 + v16;
    v41 = (a1 + v16 + 200);
    v42 = *(a1 + v16 + 328);
    if (v37 != v42)
    {
      if (v37 >= v42)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v43 = *(v40 + 336);
    v44 = *(&v37 + 1) < v43;
    if (*(&v37 + 1) == v43)
    {
      v45 = *(a1 + v16 + 344);
      v44 = v39 < v45;
      if (v39 == v45)
      {
        v46 = *(a1 + v16 + 360);
        v44 = v38 < v46;
        if (v38 == v46)
        {
          v44 = *(&v39 + 1) < *(a1 + v16 + 352);
        }
      }
    }

    if (!v44)
    {
      break;
    }

LABEL_47:
    v14 -= 200;
    v48 = *(a1 + v16 + 376);
    *(v40 + 560) = *(a1 + v16 + 360);
    *(v40 + 576) = v48;
    *(v40 + 592) = *(a1 + v16 + 392);
    v49 = *(a1 + v16 + 312);
    *(v40 + 496) = *(a1 + v16 + 296);
    *(v40 + 512) = v49;
    v50 = *(a1 + v16 + 344);
    *(v40 + 528) = *(a1 + v16 + 328);
    *(v40 + 544) = v50;
    v51 = *(a1 + v16 + 248);
    *(v40 + 432) = *(a1 + v16 + 232);
    *(v40 + 448) = v51;
    v52 = *(a1 + v16 + 280);
    *(v40 + 464) = *(a1 + v16 + 264);
    *(v40 + 480) = v52;
    v53 = *(a1 + v16 + 216);
    v16 -= 200;
    *(v40 + 400) = *v41;
    *(v40 + 416) = v53;
    if (v16 == -400)
    {
      v14 = a1;
      goto LABEL_49;
    }
  }

  if (v39 != *(a1 + v16 + 344))
  {
    goto LABEL_49;
  }

  v47 = a1 + v16;
  if (*(&v37 + 1) == v43 && v38 == *(v47 + 360))
  {
    if (!sub_10003F560(&v87, a1 + v16 + 200))
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v14 = v47 + 400;
LABEL_49:
  *v14 = v87;
  v54 = v88;
  v55 = v89;
  v56 = v91;
  *(v14 + 48) = v90;
  *(v14 + 64) = v56;
  *(v14 + 16) = v54;
  *(v14 + 32) = v55;
  v57 = v92;
  v58 = v93;
  v59 = v95;
  *(v14 + 112) = v94;
  *(v14 + 128) = v59;
  *(v14 + 80) = v57;
  *(v14 + 96) = v58;
  v60 = v96;
  v61 = v97;
  v62 = v98;
  *(v14 + 192) = v99;
  *(v14 + 160) = v61;
  *(v14 + 176) = v62;
  *(v14 + 144) = v60;
  v17 = v86 + 1;
  v2 = v84;
  if (v86 != 7)
  {
    v16 = v85;
    goto LABEL_51;
  }

  return v15 + 200 == v84;
}

BOOL sub_10003F560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  v3 = *(a2 + 184);
  if (vabdd_f64(v2, v3) >= 50.0)
  {
    return v2 < v3;
  }

  v6 = *(a1 + 168) / *(a1 + 176);
  v7 = *(a2 + 168);
  v8 = v7 / *(a2 + 176);
  if (v6 != v8)
  {
    v14 = fabs(v7 / *(a2 + 176));
    if (COERCE_UNSIGNED_INT64(fabs(*(a1 + 168) / *(a1 + 176))) > 0x7FEFFFFFFFFFFFFFLL || *&v14 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    v16 = fabs(v6);
    v17 = fabs(v8);
    v18 = vabdd_f64(v6, v8);
    if (v16 < v17)
    {
      v16 = v17;
    }

    if (v16 < 1.0)
    {
      v16 = 1.0;
    }

    if (v18 > v16 * 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  if (sub_10000B2C4(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v20 = *(a1 + 120);
      v21 = dword_100092770;
      if (v20 <= 5)
      {
        v12 = dword_100092770[v20];
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v9 = *(a1 + 64);
    v10 = *(a2 + 64);
    if (v9 == v10)
    {
      v11 = *(a1 + 120);
      if (v11 > 5)
      {
        v12 = -1;
      }

      else
      {
        v12 = dword_100092770[v11];
      }

      v26 = *(a2 + 120);
      if (v26 <= 5)
      {
        v27 = dword_100092770[v26];
        return v12 < v27;
      }

      goto LABEL_48;
    }

    if (v9 == -1)
    {
      v25 = *(a1 + 120);
      if (v25 == 1)
      {
        return 0;
      }

      if (v25 != 2)
      {
LABEL_43:
        v21 = dword_100092758;
        if (v25 <= 5)
        {
          v12 = dword_100092758[v25];
          goto LABEL_46;
        }

LABEL_45:
        v12 = -1;
LABEL_46:
        v28 = *(a2 + 120);
        if (v28 <= 5)
        {
          v27 = v21[v28];
          return v12 < v27;
        }

LABEL_48:
        v27 = -1;
        return v12 < v27;
      }
    }

    else
    {
      if (v10 != -1)
      {
LABEL_37:
        v25 = *(a1 + 120);
        goto LABEL_43;
      }

      v29 = *(a2 + 120);
      if (v29 != 1)
      {
        if (v29 != 2)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    return 1;
  }

  if (v6 != v8)
  {
LABEL_22:
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v22 = fabs(v6);
      v23 = fabs(v8);
      v24 = vabdd_f64(v6, v8);
      if (v22 < v23)
      {
        v22 = v23;
      }

      if (v22 < 1.0)
      {
        v22 = 1.0;
      }

      v19 = v24 > v22 * 2.22044605e-16;
    }

    else
    {
      v19 = 1;
    }

    return v6 < v8 && v19;
  }

  v19 = 0;
  return v6 < v8 && v19;
}

uint64_t sub_10003F7B8(uint64_t result)
{
  v3 = *(result + 40);
  if (v3 == 7)
  {
    return result;
  }

  v17 = v1;
  v18 = v2;
  v4 = result;
  v5 = **result;
  if (v5 == *(*result + 8))
  {
    return result;
  }

  v6 = *(result + 8);
  v7 = *v6;
  v8 = v6[1];
  if ((v8 - *v6) < 0x40)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v7 + 2 != v8)
  {
    do
    {
      result = sub_100016EF0(v5, v7, v7 + 2, &v14);
      if (!result)
      {
        break;
      }

      v9 = v7 + 4;
      v7 += 2;
    }

    while (v9 != v8);
    if ((v16 & 1) == 0)
    {
      if (v15 && HIDWORD(v15) && v15 >= 1)
      {
        if (!(v14 + HIDWORD(v14)))
        {
          goto LABEL_12;
        }
      }

      else if (!v14)
      {
        goto LABEL_12;
      }

      v12 = *(v4 + 24);
      if (*v12 - 58 <= 0xFFFFFFF7)
      {
        *v12 = 50;
        v12 = *(v4 + 24);
      }

      v13 = *(v4 + 40) | 1;
      *(v4 + 40) = v13;
      if (v12[1] - 58 <= 0xFFFFFFF6)
      {
        v12[1] = 49;
        v13 = *(v4 + 40);
      }

      v10 = v13 | 4;
      goto LABEL_14;
    }
  }

LABEL_12:
  v3 = *(v4 + 40);
LABEL_13:
  v10 = v3 | 2;
LABEL_14:
  *(v4 + 40) = v10;
  if (v10 == 7)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(*(v4 + 24) + 9);
  }

  *(v4 + 16) = v11 & 1;
  return result;
}

uint64_t **sub_10003F914(uint64_t **a1, unint64_t a2, double *a3, _OWORD *a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_13:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v4;
      v8 = v4[5];
      if (!a3)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *a3;
      v10 = a3[1];
      v11 = *v8;
      v12 = v8[1];
      if ((sub_10003FA60(*a3, v10, *v8, v12) & 1) == 0)
      {
        if ((sub_10003FA60(v11, v12, v9, v10) & 1) == 0)
        {
          return v7;
        }

        goto LABEL_12;
      }

LABEL_9:
      v4 = *v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

    if (v8)
    {
      goto LABEL_9;
    }

    v13 = v7[4];
    if (v13 > a2)
    {
      goto LABEL_9;
    }

    if (v13 >= a2)
    {
      return v7;
    }

LABEL_12:
    v4 = v7[1];
    if (!v4)
    {
      goto LABEL_13;
    }
  }
}

uint64_t sub_10003FA60(double a1, double a2, double a3, double a4)
{
  if (a1 == a3)
  {
    goto LABEL_2;
  }

  v5 = fabs(a1);
  v6 = fabs(a3);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v11 = vabdd_f64(a1, a3);
      if (v5 >= v6)
      {
        v12 = v5;
      }

      else
      {
        v12 = v6;
      }

      if (v12 < 1.0)
      {
        v12 = 1.0;
      }

      if (v11 <= v12 * 2.22044605e-16)
      {
LABEL_2:
        if (a2 != a4)
        {
          if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            return a2 < a4;
          }

          v8 = fabs(a2);
          v9 = fabs(a4);
          v10 = vabdd_f64(a2, a4);
          if (v8 < v9)
          {
            v8 = v9;
          }

          if (v8 < 1.0)
          {
            v8 = 1.0;
          }

          if (v10 > v8 * 2.22044605e-16)
          {
            return a2 < a4;
          }
        }

        return 0;
      }
    }

    if (v5 == 180.0)
    {
      v7 = 1;
    }

    else
    {
      v13 = fabs(v5 + -180.0);
      if (v5 < 180.0)
      {
        v5 = 180.0;
      }

      if (v5 < 1.0)
      {
        v5 = 1.0;
      }

      v7 = v13 <= v5 * 2.22044605e-16;
    }
  }

  else
  {
    v7 = v5 == 180.0;
  }

  if (v6 == 180.0)
  {
    v14 = 1;
  }

  else
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      goto LABEL_38;
    }

    v15 = fabs(v6 + -180.0);
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v14 = v15 <= v6 * 2.22044605e-16;
  }

  if (v7 && v14)
  {
    goto LABEL_2;
  }

LABEL_38:
  v16 = fabs(a2);
  if (a2 == a4)
  {
    goto LABEL_45;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v18 = fabs(a4);
    v19 = vabdd_f64(a2, a4);
    if (v16 >= v18)
    {
      v18 = v16;
    }

    if (v18 < 1.0)
    {
      v18 = 1.0;
    }

    if (v19 <= v18 * 2.22044605e-16)
    {
LABEL_45:
      if (v16 == 90.0)
      {
        goto LABEL_2;
      }

      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v17 = fabs(v16 + -90.0);
        if (v16 < 90.0)
        {
          v16 = 90.0;
        }

        if (v16 < 1.0)
        {
          v16 = 1.0;
        }

        if (v17 <= v16 * 2.22044605e-16)
        {
          goto LABEL_2;
        }
      }
    }
  }

  if (v7)
  {
    return 0;
  }

  return a1 < a3 || v14;
}

uint64_t *sub_10003FCD8(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *(a2 + 32);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(*(v3 + 32) + 32);
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
      return result;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10003FDB0(unint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x200)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_1000330C4(v13);
    }

    a1[4] = v8 - 512;
    v14 = *v4;
    a1[1] = (v4 + 1);
    sub_100032FC0(a1, &v14);
    v4 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v4 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
}