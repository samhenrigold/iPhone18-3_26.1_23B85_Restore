void sub_10953D0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 184);
  if (!v4)
  {
    sub_487EC4(v1);
    _Unwind_Resume(a1);
  }

  *(v2 - 176) = v4;
  operator delete(v4);
  sub_487EC4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10954F8(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (*a4 != a4[1])
  {
    v5 = a3;
    result = sub_F69D08(a3);
    if (result)
    {
      if (*(a2 + 1472) == 1)
      {
        result = sub_6EECC();
        if (result)
        {
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v7 = *(a2 + 224);
          v8 = sub_2FEF94((a4[1] - *a4) >> 2);
          v9 = *(v7 + 3872);
          if (v9 != -1 || (v9 = 1, (v76 = sub_101E790(v7, 1u, 1)) == 0))
          {
LABEL_6:
            if (v9 >= v8)
            {
              v10 = v8;
            }

            else
            {
              v10 = v9;
            }

            v106 = 256;
            v88 = v10;
            if (v10 < 2)
            {
              return sub_F69D08(v5);
            }

            v11 = 0;
            v87 = v7 + 16;
            v96 = (v7 + 688);
            v93 = (v7 + 736);
            v94 = (v7 + 712);
            v92 = (v7 + 760);
            while (1)
            {
              if (!*(&v106 + v11))
              {
                v12 = 0;
                v13 = 1;
                goto LABEL_19;
              }

              result = sub_F69D08(v5);
              v12 = result - 1;
              if (result - 1 >= 0)
              {
                break;
              }

LABEL_14:
              if (++v11 == 2)
              {
                return result;
              }
            }

            v13 = -1;
LABEL_19:
            v97 = v13;
            v14 = 1;
            while (1)
            {
              result = sub_F69D08(v5);
              if (v12 >= result)
              {
                goto LABEL_14;
              }

              v100 = *(*a4 + 4 * v14);
              if (v100)
              {
                break;
              }

LABEL_113:
              if (++v14 == v88 || v12 < 0)
              {
                goto LABEL_14;
              }
            }

            v15 = *(sub_F6F53C(v5, v12) + 32);
            if ((v15 & 0x4000000000000000) == 0 && v15 < 0)
            {
              v17 = 0x40000000;
            }

            else
            {
              v17 = 0;
            }

            v18 = HIDWORD(v15) & 0xFFFFFFF | (v15 >> 33) & 0x10000000 | ((HIDWORD(v15) & 0x40000000u) >> 1) | v17;
            LODWORD(v107) = v14;
            v19 = sub_101F854(v7, v15 | ((v18 & 0xFFFFFFF) << 32), (v18 >> 28) & 1, &v107);
            v103 = 0;
            v20 = HIDWORD(v19);
            v102 = v14;
            v95 = v14 - 1;
            v21 = v19;
LABEL_29:
            v98 = v20;
            v99 = v21;
            while (1)
            {
              result = sub_F69D08(v5);
              if (v12 < 0)
              {
                v14 = v102;
                goto LABEL_113;
              }

              v14 = v102;
              if (v12 >= result || v103 >= v100)
              {
                goto LABEL_113;
              }

              v22 = sub_F6F53C(v5, v12);
              v23 = v11;
              v24 = v5;
              v25 = v4;
              v26 = *(v22 + 32);
              v27 = HIDWORD(v26) & 0xFFFFFFF;
              v28 = HIDWORD(v26) & 0x40000000;
              if (v26 < 0 && v28 == 0)
              {
                v30 = 0x40000000;
              }

              else
              {
                v30 = 0;
              }

              v104 = (v26 >> 33) & 0x10000000 | (*(v22 + 80) >> 25) & 0x80000000 | (v28 >> 1) | v30 | v27;
              v101 = v26;
              v109 = 1;
              v110[0] = v26;
              v107 = &v109;
              v108 = v110;
              v31 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v31;
              if (!*v7)
              {
                goto LABEL_94;
              }

              v32 = v7 + 688;
              if (*v96 != v26)
              {
                v32 = v7 + 712;
                if (*v94 != v26)
                {
                  v32 = v7 + 736;
                  if (*v93 != v26)
                  {
                    v32 = v7 + 760;
                    if (*v92 != v26)
                    {
                      break;
                    }
                  }
                }
              }

              ++*(v7 + 3864);
              *(v32 + 8) = v31;
              v33 = *(v32 + 16);
              if (v33)
              {
                goto LABEL_45;
              }

LABEL_94:
              v21 = 0;
              LODWORD(v20) = -1;
LABEL_95:
              v11 = v23;
              v12 += v97;
              v4 = v25;
              v5 = v24;
              if (v21 != v99 || v20 != v98)
              {
                v65 = v101 | (v104 << 32);
                v67 = v25[1];
                v66 = v25[2];
                if (v67 >= v66)
                {
                  v69 = *v25;
                  v70 = v67 - *v25;
                  v71 = v70 >> 4;
                  v72 = (v70 >> 4) + 1;
                  if (v72 >> 60)
                  {
                    sub_1794();
                  }

                  v73 = v66 - v69;
                  if (v73 >> 3 > v72)
                  {
                    v72 = v73 >> 3;
                  }

                  if (v73 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v74 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v74 = v72;
                  }

                  if (v74)
                  {
                    if (!(v74 >> 60))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v75 = 16 * v71;
                  *v75 = v65;
                  *(v75 + 8) = v102;
                  v105 = 16 * v71 + 16;
                  memcpy(0, v69, v70);
                  v4 = v25;
                  *v25 = 0;
                  v25[2] = 0;
                  if (v69)
                  {
                    operator delete(v69);
                  }

                  v5 = v24;
                  v11 = v23;
                  v68 = v105;
                }

                else
                {
                  *v67 = v65;
                  *(v67 + 8) = v102;
                  v68 = v67 + 16;
                }

                v4[1] = v68;
                ++v103;
                goto LABEL_29;
              }
            }

            v51 = *(v7 + 744);
            v52 = *(v7 + 720);
            v53 = *(v7 + 696);
            v90 = *(v7 + 768);
            v33 = sub_2D52A4(*v7, 7, v26, 1);
            if (v53 >= v31)
            {
              v54 = v31;
            }

            else
            {
              v54 = v53;
            }

            v55 = 28;
            if (v53 >= v31)
            {
              v55 = 0;
            }

            if (v52 < v54)
            {
              v54 = v52;
              v55 = 29;
            }

            if (v51 < v54)
            {
              v55 = 30;
              v54 = v51;
            }

            v56 = v90 >= v54;
            v57 = 31;
            if (v56)
            {
              v57 = v55;
            }

            v58 = v87 + 24 * v57;
            *v58 = v110[0];
            *(v58 + 8) = *(v7 + 3856);
            *(v58 + 16) = v33;
            if (v33)
            {
LABEL_45:
              v34 = (v33 + *v33);
              v35 = (v34 - *v34);
              if (*v35 < 5u)
              {
                goto LABEL_54;
              }

              v36 = v35[2];
              if (!v36)
              {
                goto LABEL_54;
              }

              v37 = sub_101F5B8((v34 + v36 + *(v34 + v36)), v27);
              v38 = (v34 - *v34);
              if (*v38 < 7u)
              {
                v39 = 0;
              }

              else
              {
                v39 = v38[3];
                if (v39)
                {
                  v39 = (v39 + v34 + *(v39 + v34));
                }
              }

              v40 = sub_101F704(v39, *(v37 + (~(v104 >> 27) & 2)));
              v41 = (v40 - *v40);
              if (*v41 >= 5u && (v42 = v41[2]) != 0)
              {
                v43 = (v40 + v42 + *(v40 + v42));
              }

              else
              {
LABEL_54:
                v43 = 0;
              }

              v44 = sub_C54264(v43, v95);
              v21 = *v44;
              LODWORD(v20) = v44[1];
              if (*(v7 + 3876) != 1)
              {
                goto LABEL_95;
              }

              v109 = 1;
              v110[0] = v21;
              v107 = &v109;
              v108 = v110;
              v45 = *(v7 + 3856) + 1;
              *(v7 + 3856) = v45;
              if (!*v7)
              {
                goto LABEL_94;
              }

              v46 = v7 + 688;
              if (*v96 == v21 || (v46 = v7 + 712, *v94 == v21) || (v46 = v7 + 736, *v93 == v21) || (v46 = v7 + 760, *v92 == v21))
              {
                ++*(v7 + 3864);
                *(v46 + 8) = v45;
                v47 = *(v46 + 16);
                if (v47)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v91 = *(v7 + 744);
                v59 = *(v7 + 720);
                v60 = *(v7 + 696);
                v86 = *(v7 + 768);
                v47 = sub_2D52A4(*v7, 7, v21, 1);
                if (v60 >= v45)
                {
                  v61 = v45;
                }

                else
                {
                  v61 = v60;
                }

                v62 = 28;
                if (v60 >= v45)
                {
                  v62 = 0;
                }

                if (v59 < v61)
                {
                  v61 = v59;
                  v62 = 29;
                }

                if (v91 < v61)
                {
                  v62 = 30;
                  v61 = v91;
                }

                v56 = v86 >= v61;
                v63 = 31;
                if (v56)
                {
                  v63 = v62;
                }

                v64 = v87 + 24 * v63;
                *v64 = v110[0];
                *(v64 + 8) = *(v7 + 3856);
                *(v64 + 16) = v47;
                if (v47)
                {
LABEL_62:
                  v48 = (v47 + *v47);
                  v49 = (v48 - *v48);
                  if (*v49 >= 9u)
                  {
                    v50 = v49[4];
                    if (v50)
                    {
                      if (*(v48 + v50 + *(v48 + v50)))
                      {
                        goto LABEL_95;
                      }
                    }
                  }

                  goto LABEL_94;
                }
              }
            }

            sub_101E964(&v107);
            goto LABEL_94;
          }

          v77 = &v76[-*v76];
          v78 = *v77;
          if (v78 < 0xB)
          {
            if (v78 < 9)
            {
LABEL_127:
              v9 = 1;
              goto LABEL_6;
            }
          }

          else if (*(v77 + 5))
          {
            v79 = &v76[*(v77 + 5) + *&v76[*(v77 + 5)]];
            v80 = &v79[-*v79];
            if (*v80 >= 5u && (v81 = *(v80 + 2)) != 0)
            {
              v9 = v79[v81];
            }

            else
            {
              v9 = 0;
            }

            goto LABEL_6;
          }

          v82 = *(v77 + 4);
          if (v82)
          {
            v83 = sub_101E640(&v76[v82 + *&v76[v82]], 0);
            v84 = (v83 - *v83);
            if (*v84 >= 5u && (v85 = v84[2]) != 0)
            {
              v9 = *(v83 + v85);
            }

            else
            {
              v9 = 0;
            }

            *(v7 + 3872) = v9;
            goto LABEL_6;
          }

          goto LABEL_127;
        }
      }
    }
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

void sub_1095CDC(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void sub_1095D28(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, char **a6@<X8>)
{
  sub_101B3B4(a2, v93);
  sub_101B3B4(a3, v92);
  sub_1031BD0((a1 + 494), &v89);
  v9 = v90;
  v10 = v91;
  if (v90 != v91)
  {
    v21 = v89;
    do
    {
      v25 = *v21 + 80 * *v9;
      if (sub_1049940((a1 + 1), v25))
      {
        sub_109CE44((a1 + 989), v25, v94);
        v26 = v95;
        *(v95 + 8) = *v25;
        *(v26 + 60) = *(v25 + 8);
        if ((*(v25 + 72) & 0x80000000) != 0)
        {
          v22 = 0;
        }

        else
        {
          v22 = *(v25 + 32);
        }

        *(v26 + 24) = v22;
        v23 = v92[0] + 12 * (*(v25 + 72) & 0x7FFFFFFF);
        v24 = *(v23 + 2);
        *(v26 + 88) = *v23;
        *(v26 + 96) = v24;
      }

      ++v9;
    }

    while (v9 != v10);
  }

  v82 = a6;
  sub_1031BD0((a1 + 1), &v86);
  v11 = v87;
  v12 = v88;
  if (v87 != v88)
  {
    v27 = v86;
    do
    {
      v67 = *v27 + 80 * *v11;
      sub_1096B1C((a1 + 989), v67, v94);
      if (v94[0])
      {
        v68 = v95;
        *(v95 + 52) = *(v67 + 8);
        v69 = (*(v67 + 72) & 0x80000000) != 0 ? 0 : *(v67 + 24);
        *(v68 + 16) = v69;
        *(v68 + 48) = *(v67 + 16);
        v70 = v93[0] + 12 * (*(v67 + 72) & 0x7FFFFFFF);
        v71 = *(v70 + 2);
        *(v68 + 76) = *v70;
        *(v68 + 84) = v71;
        sub_1096C88(a1, (v68 + 8));
        if (*(v68 + 52) != -1 && *(v68 + 56) != 0x7FFFFFFF)
        {
          v72 = *(v68 + 60);
          if (v72 != -1)
          {
            v73 = *(v68 + 64);
            if (v73 != 0x7FFFFFFF)
            {
              v74 = (v73 + *(v68 + 56));
              if (v74 != 0x7FFFFFFF)
              {
                v75 = (v72 + *(v68 + 52));
                if (v75 != -1)
                {
                  if (*(a1 + 2218) == -1 || (v76 = *(a1 + 2219), v76 == 0x7FFFFFFF) || v74 < v76)
                  {
                    a1[1109] = (v75 | (v74 << 32));
                  }
                }
              }
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v13 = a1 + 989;
  v14 = a1 + 1085;
  v15 = a1[989];
  v16 = a1[990];
  if (*v15 <= -2)
  {
    v17 = a1[989];
    do
    {
      v18 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v17 = (v17 + v18);
      v16 += 13 * v18;
    }

    while (*v17 < -1);
    v19 = (a1[992] + v15);
    v20 = a1 + 989;
    if (v17 == v19)
    {
      goto LABEL_80;
    }

    goto LABEL_17;
  }

  v17 = a1[989];
  v28 = a1[992];
  v19 = (v28 + v15);
  v20 = a1 + 989;
  if (v15 != (v28 + v15))
  {
LABEL_17:
    __p = 0;
    v85 = 0;
    while (1)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v85 - __p) >> 5);
      if (v29 >= *(a1 + 2191) && *v14 != 1)
      {
        goto LABEL_97;
      }

      v83 = v85 - __p;
      v30 = v16 + 1;
      if (!*(v16 + 2))
      {
        goto LABEL_34;
      }

      if (*(v16 + 13) == -1)
      {
        goto LABEL_34;
      }

      if (*(v16 + 14) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (*(v16 + 15) == -1)
      {
        goto LABEL_34;
      }

      if (*(v16 + 16) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      if (*(v16 + 17) == -1)
      {
        goto LABEL_34;
      }

      if (*(v16 + 18) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      sub_1096B1C((a1 + 989), v16 + 6, v94);
      if (v94[0])
      {
        if (*v30 == *(v95 + 16) && *(v16 + 3) == *(v95 + 20))
        {
          goto LABEL_34;
        }
      }

      if (*(v16 + 13) == -1)
      {
        goto LABEL_34;
      }

      if (*(v16 + 14) == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      v31 = *(v16 + 15);
      if (v31 == -1)
      {
        goto LABEL_34;
      }

      v32 = *(v16 + 16);
      if (v32 == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      v39 = v32 + *(v16 + 14);
      if (v39 == 0x7FFFFFFF)
      {
        goto LABEL_34;
      }

      v40 = v31 + *(v16 + 13);
      if (v40 == -1)
      {
        goto LABEL_34;
      }

      v41 = *(a1 + 1097);
      v42 = v41 * *(a1 + 2219);
      if (v42 >= 0.0)
      {
        HIDWORD(v43) = 1127219200;
        if (v42 >= 4.50359963e15)
        {
          goto LABEL_55;
        }

        v44 = (v42 + v42) + 1;
      }

      else
      {
        HIDWORD(v43) = -1020264448;
        if (v42 <= -4.50359963e15)
        {
          goto LABEL_55;
        }

        v44 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
      }

      v42 = (v44 >> 1);
LABEL_55:
      if (v39 <= v42)
      {
        if (*(a1 + 8784) != 1 || (LODWORD(v43) = *(a1 + 2214), v41 * v43 >= v40))
        {
          v45 = *a1;
          v46 = **a1;
          if (*(v46 + 7774) != 1)
          {
            goto LABEL_65;
          }

          v78 = **a1;
          v79 = *(v16 + 3);
          v77 = *(v16 + 2);
          v47 = sub_2AF704(v46 + 3896, v77, 1);
          if (v47)
          {
            v48 = &v47[-*v47];
            if (*v48 >= 5u)
            {
              v49 = *(v48 + 2);
              if (v49)
              {
                if (*&v47[v49 + *&v47[v49]] > (v79 & 0xFFFFFFFu) && sub_2B817C(v78, v77 & 0xF0000000FFFFFFFFLL | ((v79 & 0xFFFFFFF) << 32)))
                {
                  v45 = *a1;
LABEL_65:
                  v50 = sub_104A508(v45, v16 + 2, 0x3B9ACA00u, a4, v16 + 12, a5);
                  if (v50 != -1 && HIDWORD(v50) != 0x7FFFFFFF)
                  {
                    v51 = *(v16 + 18) + HIDWORD(v50);
                    *(v16 + 17) += v50;
                    *(v16 + 18) = v51;
                    if (sub_1096E00(a1, v16 + 2))
                    {
                      if (sub_1096F14(a1, (v16 + 1)))
                      {
                        v52 = v29 + 1;
                        if (v29 + 1 > 0x2AAAAAAAAAAAAAALL)
                        {
                          sub_1794();
                        }

                        if (0x5555555555555556 * (-__p >> 5) > v52)
                        {
                          v52 = 0x5555555555555556 * (-__p >> 5);
                        }

                        if (0xAAAAAAAAAAAAAAABLL * (-__p >> 5) >= 0x155555555555555)
                        {
                          v52 = 0x2AAAAAAAAAAAAAALL;
                        }

                        if (v52)
                        {
                          if (v52 <= 0x2AAAAAAAAAAAAAALL)
                          {
                            operator new();
                          }

                          sub_1808();
                        }

                        v53 = (32 * ((v85 - __p) >> 5));
                        v54 = *(v16 + 3);
                        *v53 = *v30;
                        v53[1] = v54;
                        v55 = *(v16 + 5);
                        v56 = *(v16 + 7);
                        v57 = *(v16 + 11);
                        v53[4] = *(v16 + 9);
                        v53[5] = v57;
                        v53[2] = v55;
                        v53[3] = v56;
                        v85 = v53 + 6;
                        memcpy((96 * v29 + 96 * (v83 / -96)), __p, v83);
                        if (__p)
                        {
                          operator delete(__p);
                        }

                        __p = 96 * v29 + 96 * (v83 / -96);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_34:
      v33 = *(v17 + 1);
      v17 = (v17 + 1);
      v16 += 13;
      if (v33 <= -2)
      {
        do
        {
          v34 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v17 = (v17 + v34);
          v16 += 13 * v34;
        }

        while (*v17 < -1);
      }

      if (v17 == v19)
      {
        v35 = v20 + 6;
        if (v20 + 6 == v14)
        {
          goto LABEL_86;
        }

        while (1)
        {
          v36 = v35;
          v37 = v20[6];
          v16 = v20[7];
          v17 = v37;
          if (*v37 <= -2)
          {
            do
            {
              v38 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
              v17 = (v17 + v38);
              v16 += 13 * v38;
            }

            while (*v17 < -1);
          }

          v19 = (v20[9] + v37);
          if (v17 != v19)
          {
            break;
          }

          v35 = v36 + 6;
          v20 = v36;
          if (v36 + 6 == v14)
          {
            goto LABEL_86;
          }
        }

        v20 = v36;
        if (!v36)
        {
          goto LABEL_86;
        }
      }

      else if (!v20)
      {
        goto LABEL_86;
      }
    }
  }

LABEL_80:
  v20 = a1 + 995;
  v58 = 6;
  v59 = a1 + 989;
  do
  {
    v16 = v59[7];
    v17 = *v20;
    if (**v20 <= -2)
    {
      do
      {
        v60 = (__clz(__rbit64(((*v17 >> 7) & ~*v17 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v17 = (v17 + v60);
        v16 += 13 * v60;
      }

      while (*v17 < -1);
    }

    v19 = (v59[9] + *v20);
    if (v17 != v19)
    {
      goto LABEL_17;
    }

    v59 = &v13[v58];
    v58 += 6;
    v20 = &v13[v58];
  }

  while (v58 != 96);
  __p = 0;
  v85 = 0;
LABEL_86:
  if (*v14 == 1)
  {
    v61 = v85;
    v62 = 0xAAAAAAAAAAAAAAABLL * ((v85 - __p) >> 5);
    v63 = 126 - 2 * __clz(v62);
    v64 = v85 - __p;
    if (v85 == __p)
    {
      v65 = 0;
    }

    else
    {
      v65 = v63;
    }

    sub_1099FE8(__p, v85, v94, v65, 1);
    v66 = *(a1 + 2191);
    if (v62 > v66)
    {
      v64 = 96 * v66;
      v61 = (96 * v66 + __p);
    }

    *v82 = 0;
    v82[1] = 0;
    v82[2] = 0;
    if (v61 != __p)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v64 >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else
  {
LABEL_97:
    *v82 = __p;
    v82[1] = v85;
    v82[2] = 0;
  }

  if (v92[0])
  {
    v92[1] = v92[0];
    operator delete(v92[0]);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }
}

void sub_10966C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
    v32 = a29;
    if (!a29)
    {
LABEL_3:
      v33 = *(v30 - 168);
      if (!v33)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v32 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v32);
  v33 = *(v30 - 168);
  if (!v33)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v30 - 160) = v33;
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1096798@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1048C8C((a1 + 8), a2, v48);
  if (sub_F6FDC8(v48))
  {
    *a3 = *v48;
    v6 = v50;
    *(a3 + 16) = *&v48[16];
    *&v48[8] = 0u;
    *(a3 + 24) = v49;
    *(a3 + 40) = v6;
    v49 = 0u;
    *v48 = 0;
    v50 = 0;
    v7 = v56;
    *(a3 + 96) = v54;
    v8 = v53;
    *(a3 + 64) = v52;
    *(a3 + 80) = v8;
    *(a3 + 48) = v51;
    *(a3 + 104) = v55;
    *(a3 + 120) = v7;
    v55 = 0u;
    *(a3 + 128) = v57;
    v9 = v60;
    *(a3 + 144) = v58;
    v57 = 0u;
    v56 = 0;
    v58 = 0;
    *(a3 + 152) = v59;
    *(a3 + 168) = v9;
    v59 = 0u;
    v10 = v61;
    v11 = v62;
    v12 = v65;
    *(a3 + 208) = v63;
    *(a3 + 176) = v10;
    *(a3 + 192) = v11;
    *(a3 + 216) = v64;
    *(a3 + 232) = v12;
    v64 = 0u;
    v60 = 0;
    v65 = 0;
    *(a3 + 240) = v66;
    v13 = v83;
    *(a3 + 256) = v67;
    v66 = 0u;
    v14 = v68;
    v15 = v70;
    *(a3 + 280) = v69;
    *(a3 + 296) = v15;
    *(a3 + 264) = v14;
    v16 = v71;
    v17 = v72;
    v18 = v74;
    *(a3 + 344) = v73;
    *(a3 + 360) = v18;
    *(a3 + 312) = v16;
    *(a3 + 328) = v17;
    v19 = v75;
    v20 = v76;
    v21 = v78;
    *(a3 + 408) = v77;
    *(a3 + 424) = v21;
    *(a3 + 376) = v19;
    *(a3 + 392) = v20;
    v22 = v79;
    v23 = v80;
    v24 = v82;
    *(a3 + 472) = v81;
    *(a3 + 488) = v24;
    *(a3 + 440) = v22;
    *(a3 + 456) = v23;
    *(a3 + 504) = v13;
    v67 = 0;
    v83 = 0;
    v25 = v85;
    *(a3 + 512) = v84;
    *(a3 + 528) = v25;
    *(a3 + 544) = v86;
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
  }

  else
  {
    sub_104F580((a1 + 3952), a2, v47);
    if (sub_F6FDC8(v47))
    {
      sub_49F780(a3, v47);
    }

    else
    {
      sub_F708E4(v48, v47);
      *a3 = *v48;
      v26 = v50;
      *(a3 + 16) = *&v48[16];
      *&v48[8] = 0u;
      *(a3 + 24) = v49;
      *(a3 + 40) = v26;
      v49 = 0u;
      *v48 = 0;
      v50 = 0;
      v27 = v56;
      *(a3 + 96) = v54;
      v28 = v53;
      *(a3 + 64) = v52;
      *(a3 + 80) = v28;
      *(a3 + 48) = v51;
      *(a3 + 104) = v55;
      *(a3 + 120) = v27;
      v55 = 0u;
      *(a3 + 128) = v57;
      v29 = v60;
      *(a3 + 144) = v58;
      v57 = 0u;
      v56 = 0;
      v58 = 0;
      *(a3 + 152) = v59;
      *(a3 + 168) = v29;
      v59 = 0u;
      v30 = v61;
      v31 = v62;
      v32 = v65;
      *(a3 + 208) = v63;
      *(a3 + 176) = v30;
      *(a3 + 192) = v31;
      *(a3 + 216) = v64;
      *(a3 + 232) = v32;
      v64 = 0u;
      v60 = 0;
      v65 = 0;
      *(a3 + 240) = v66;
      v33 = v83;
      *(a3 + 256) = v67;
      v66 = 0u;
      v34 = v68;
      v35 = v70;
      *(a3 + 280) = v69;
      *(a3 + 296) = v35;
      *(a3 + 264) = v34;
      v36 = v71;
      v37 = v72;
      v38 = v74;
      *(a3 + 344) = v73;
      *(a3 + 360) = v38;
      *(a3 + 312) = v36;
      *(a3 + 328) = v37;
      v39 = v75;
      v40 = v76;
      v41 = v78;
      *(a3 + 408) = v77;
      *(a3 + 424) = v41;
      *(a3 + 376) = v39;
      *(a3 + 392) = v40;
      v42 = v79;
      v43 = v80;
      v44 = v82;
      *(a3 + 472) = v81;
      *(a3 + 488) = v44;
      *(a3 + 440) = v42;
      *(a3 + 456) = v43;
      *(a3 + 504) = v33;
      v67 = 0;
      v83 = 0;
      v45 = v85;
      *(a3 + 512) = v84;
      *(a3 + 528) = v45;
      *(a3 + 544) = v86;
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
    }

    sub_4547F0(v47);
  }

  return sub_4547F0(v48);
}

void sub_1096AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_4547F0(&a9);
  sub_4547F0(&STACK[0x228]);
  _Unwind_Resume(a1);
}

uint64_t sub_1096B1C@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_11;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = v10[1] + 104 * v18;
    if (*v19 == v4 && *(v19 + 4) == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if (v12 == v18)
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v10;
  a3[1] = (result + 768);
  a3[2] = (v13 + v18);
  a3[3] = v19;
  a3[4] = (v13 + v12);
  return result;
}

void *sub_1096C88(void *result, uint64_t *a2)
{
  *(a2 + 60) = 0;
  v3 = *a2;
  a2[3] = *a2;
  a2[4] = v3;
  v4 = 0x7FFFFFFF;
  v5 = *(a2 + 11) == -1 || *(a2 + 12) == 0x7FFFFFFF;
  if (v5 || (v6 = *(a2 + 13), v6 == -1) || (v7 = *(a2 + 14), v7 == 0x7FFFFFFF))
  {
    v8 = -1;
    v16 = a2[1];
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    v8 = v6 + *(a2 + 11);
    v4 = v7 + *(a2 + 12);
    v16 = a2[1];
    if (!v16)
    {
      return result;
    }
  }

  result = sub_1097608((result + 989), &v16, v14);
  if (v14[0])
  {
    v9 = v15;
    v10 = v15[13];
    if (v10 == -1)
    {
      v12 = 0x7FFFFFFF;
      v11 = -1;
    }

    else if (v15[14] == 0x7FFFFFFF)
    {
      v11 = -1;
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v11 = v15[15];
      v12 = 0x7FFFFFFF;
      if (v11 != -1)
      {
        v13 = v15[16];
        if (v13 == 0x7FFFFFFF)
        {
          v11 = -1;
        }

        else
        {
          v10 = v15[13];
          v11 += v10;
          v12 = v13 + v15[14];
        }
      }
    }

    if (v12 != 0x7FFFFFFF && v11 != -1 && v11 == v8 && v12 == v4)
    {
      *(a2 + 60) = (*(a2 + 11) - v10 + v15[17]) | ((*(a2 + 12) - v15[14] + v15[18]) << 32);
      a2[3] = *(v9 + 4);
    }
  }

  return result;
}

BOOL sub_1096E00(void **a1, unsigned int *a2)
{
  if (a1[1104] == a1[1105])
  {
    v4 = a2[12];
    v5 = a2[16];
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v7 < 0 != v6)
    {
      v7 = 0;
    }

    if (*(a1 + 8800) == 1)
    {
      v7 = *(a1 + 2219);
    }

    v12 = v7 / 10.0;
    return v5 >= sub_FB43D4(&v12, a1 + 1101);
  }

  else
  {
    if (*(a1 + 8800) == 1)
    {
      v3 = a1[1108];
    }

    else
    {
      v9 = a2;
      v10 = sub_1093070(a2, *a1);
      a2 = v9;
      v3 = v10;
    }

    v11 = sub_1092DA0(a2, *a1);
    v12 = v3 / 100.0;
    return v11 >= sub_108E97C(&v12, a1 + 1104);
  }
}

uint64_t sub_1096F14(void **a1, uint64_t a2)
{
  v4 = *(a1 + 2201);
  if (v4 == 2)
  {
    v7 = *(a2 + 44);
    v6 = *(a2 + 48);
    if (v7 != -1 && v6 != 0x7FFFFFFF && *(a2 + 52) != -1)
    {
      v10 = *(a2 + 56);
      if (v10 != 0x7FFFFFFF)
      {
        v6 = *(a2 + 48);
        if (v10 + v6 < *(a1 + 2215))
        {
          return 1;
        }

        v7 = *(a2 + 44);
      }
    }

    v96 = a1;
    v11 = 0x7FFFFFFFLL;
    if (v7 == -1 || v6 == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v4 == 3)
    {
      return 1;
    }

    v14 = *(a2 + 44);
    v13 = *(a2 + 48);
    v96 = a1;
    v11 = 0x7FFFFFFFLL;
    if (v14 == -1 || v13 == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  v16 = *(a2 + 52);
  if (v16 == -1 || (v17 = *(a2 + 56), v17 == 0x7FFFFFFF))
  {
LABEL_26:
    v18 = 0xFFFFFFFFLL;
    goto LABEL_27;
  }

  v18 = (v16 + *(a2 + 44));
  v11 = (v17 + *(a2 + 48));
LABEL_27:
  if (v4)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  v94 = sub_109CD74(**a1, (a2 + 24), 0);
  v95 = v20;
  v5 = 1;
  v21 = sub_109CD74(**a1, (a2 + 32), 1);
  v93 = v22;
  v23 = *(a2 + 32);
  v91 = *(a2 + 24);
  v92 = v21;
  v90 = v23;
  v24 = v91 != 0;
  if (__PAIR64__(v23, v91))
  {
    v85 = v19;
    v26 = v11;
    v27 = v18;
    while (1)
    {
      v28 = v11 >= v26;
      if (v18 != v27)
      {
        v28 = v18 >= v27;
      }

      v29 = v18;
      v30 = v11;
      if (v28)
      {
        break;
      }

LABEL_61:
      if (!v23)
      {
        return 1;
      }

      v90 = sub_10503C8((a1 + 494), v90);
      if (!v90)
      {
        return 1;
      }

      sub_1097608((a1 + 989), &v90, v88);
      if (v88[0])
      {
        if (v89[13] != -1 && v89[14] != 0x7FFFFFFF)
        {
          v37 = v89[15];
          if (v37 != -1)
          {
            v38 = v89[16];
            if (v38 != 0x7FFFFFFF)
            {
              v39 = v38 + v89[14];
              if (v39 != 0x7FFFFFFF)
              {
                v40 = v37 + v89[13];
                if (v40 != -1 && (v40 != v27 || v39 != v26))
                {
                  v41 = *(a1 + 2201);
                  v82 = v40;
                  if (v41)
                  {
                    v42 = v39;
                  }

                  else
                  {
                    v42 = v40;
                  }

                  v43 = v89 + 16;
                  if (!v41)
                  {
                    v43 = v89 + 15;
                  }

                  if (v41 == 2)
                  {
                    v44 = sub_104A07C((a1 + 1), v90, *a2);
                    if (v44)
                    {
                      sub_2B7A20(**a1, (((HIDWORD(v90) & 0x10000000) << 20) | (WORD2(v90) << 32) | v90) ^ 0x1000000000000, &v97);
                      v45 = v98;
                      if (v98 == v99)
                      {
                        v49 = 0x7FFFFFFF;
                        v50 = 0xFFFFFFFF00000000;
                        v51 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v46 = sub_31A76C(&v97);
                        v47 = v46;
                        v49 = v48;
                        v50 = v46 & 0xFFFFFFFF00000000;
                        v45 = v98;
                        v51 = v47;
                      }

                      if (v45)
                      {
                        v99 = v45;
                        v80 = v44;
                        v66 = v50;
                        operator delete(v45);
                        v50 = v66;
                        v44 = v80;
                      }

                      v86 = v50 | v51;
                      v87 = v49;
                      sub_2B7A20(**a1, (v44 & 0xFFFFFFFFFFFFLL | (((v44 >> 60) & 1) << 48)) ^ 0x1000000000000, &v97);
                      v67 = v98;
                      if (v98 == v99)
                      {
                        v71 = 0x7FFFFFFF;
                        v72 = 0xFFFFFFFF00000000;
                        v73 = 0xFFFFFFFFLL;
                      }

                      else
                      {
                        v68 = sub_31AA0C(&v97);
                        v69 = v68;
                        v71 = v70;
                        v72 = v68 & 0xFFFFFFFF00000000;
                        v67 = v98;
                        v73 = v69;
                      }

                      if (v67)
                      {
                        v99 = v67;
                        operator delete(v67);
                      }

                      v97 = v72 | v73;
                      LODWORD(v98) = v71;
                      if (sub_108EA9C(&v96, &v97, &v94, &v92, &v86))
                      {
                        return 0;
                      }
                    }
                  }

                  else
                  {
                    v52 = *v43;
                    if (*(a1 + 1099) * (v42 - *v43) < (v85 - *v43))
                    {
                      return 0;
                    }

                    v53 = sub_104A07C((a1 + 1), v90, *a2);
                    if (v53)
                    {
                      v54 = sub_1049FFC((a1 + 1), v53);
                      v55 = HIDWORD(v54);
                      if (!*(a1 + 2201))
                      {
                        LODWORD(v55) = v54;
                      }

                      if (*(a1 + 1099) * (v42 - (v52 + v55)) < (v85 - (v52 + v55)))
                      {
                        return 0;
                      }
                    }
                  }

                  v27 = v82;
                  v26 = v39;
                }
              }
            }
          }
        }
      }

LABEL_36:
      LODWORD(v23) = v90;
      v24 = v91 != 0;
      if (!(v91 | v90))
      {
        return 1;
      }
    }

    while (v24)
    {
      v91 = sub_1049DEC((a1 + 1), v91);
      if (!v91)
      {
        break;
      }

      sub_1097608((a1 + 989), &v91, v88);
      if (v88[0])
      {
        if (v89[13] != -1 && v89[14] != 0x7FFFFFFF)
        {
          v31 = v89[15];
          if (v31 != -1)
          {
            v32 = v89[16];
            if (v32 != 0x7FFFFFFF)
            {
              v18 = (v31 + v89[13]);
              v11 = (v32 + v89[14]);
              v33 = v11 == 0x7FFFFFFF || v18 == -1;
              if (!v33 && (v18 != v29 || v11 != v30))
              {
                v34 = *(a1 + 2201);
                if (v34 != 2)
                {
                  if (v34)
                  {
                    v56 = v32 + v89[14];
                  }

                  else
                  {
                    v56 = v18;
                  }

                  if (v34)
                  {
                    v57 = v89[14];
                  }

                  else
                  {
                    v57 = v89[13];
                  }

                  if (*(a1 + 1099) * (v56 - v57) >= (v85 - v57))
                  {
                    v58 = sub_1050450((a1 + 494), v91, *a2);
                    if (!v58)
                    {
                      goto LABEL_36;
                    }

                    v59 = sub_1049FFC((a1 + 494), v58);
                    v60 = HIDWORD(v59);
                    if (!*(a1 + 2201))
                    {
                      LODWORD(v60) = v59;
                    }

                    if (*(a1 + 1099) * (v56 - (v57 + v60)) >= (v85 - (v57 + v60)))
                    {
                      goto LABEL_36;
                    }
                  }

                  return 0;
                }

                v35 = sub_1050450((a1 + 494), v91, *a2);
                if (v35)
                {
                  sub_2B7A20(**a1, (((HIDWORD(v91) & 0x10000000) << 20) | (WORD2(v91) << 32) | v91) ^ 0x1000000000000, &v97);
                  v61 = v98;
                  if (v98 == v99)
                  {
                    v63 = 0x7FFFFFFF;
                    v64 = 0xFFFFFFFF00000000;
                    v65 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v62 = sub_31AA0C(&v97);
                    LODWORD(v65) = v62;
                    v64 = v62 & 0xFFFFFFFF00000000;
                    v61 = v98;
                    v65 = v65;
                  }

                  if (v61)
                  {
                    v99 = v61;
                    v81 = v65;
                    v83 = v63;
                    operator delete(v61);
                    v65 = v81;
                    v63 = v83;
                  }

                  v86 = v64 | v65;
                  v87 = v63;
                  sub_2B7A20(**a1, (v35 & 0xFFFFFFFFFFFFLL | (((v35 >> 60) & 1) << 48)) ^ 0x1000000000000, &v97);
                  v74 = v98;
                  if (v98 == v99)
                  {
                    v76 = 0x7FFFFFFF;
                    v78 = 0xFFFFFFFF00000000;
                    v79 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v75 = sub_31A76C(&v97);
                    v77 = v75;
                    v78 = v75 & 0xFFFFFFFF00000000;
                    v74 = v98;
                    v79 = v77;
                  }

                  if (v74)
                  {
                    v99 = v74;
                    v84 = v76;
                    operator delete(v74);
                    v76 = v84;
                  }

                  v97 = v78 | v79;
                  LODWORD(v98) = v76;
                  if (!sub_108EA9C(&v96, &v86, &v94, &v92, &v97))
                  {
                    goto LABEL_36;
                  }

                  return 0;
                }

                v29 = v18;
                v30 = v11;
              }
            }
          }
        }
      }

      LODWORD(v23) = v90;
      v24 = v91 != 0;
      if (!(v91 | v90))
      {
        return 1;
      }

      v36 = v30 >= v26;
      if (v29 != v27)
      {
        v36 = v29 >= v27;
      }

      if (!v36)
      {
        v11 = v30;
        v18 = v29;
        goto LABEL_61;
      }
    }

    return 1;
  }

  return v5;
}

void sub_10975E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1097608@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_8:
    if ((v16 & (~v16 << 6) & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v12;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v18 = v10[1];
    v20 = (v18 + 104 * v19);
    if (*v20 == v4 && v20[1] == v5)
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v22 = v12 == v19;
  v23 = (v13 + v19);
  v24 = (v12 + v13);
  v25 = (result + 768);
  if (v12 == v19)
  {
    v23 = 0;
    v25 = 0;
    v10 = 0;
    v26 = a3;
  }

  else
  {
    v26 = (v18 + 104 * v19);
  }

  if (v22)
  {
    v24 = 0;
  }

  *a3 = v10;
  a3[1] = v25;
  a3[2] = v23;
  a3[3] = v26;
  a3[4] = v24;
  return result;
}

void *sub_1097790(void *a1, unint64_t *a2)
{
  v2 = *a2;
  a1[5] = 0;
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    a1[5] = v4;
    operator new();
  }

  a1[6] = &unk_2290750;
  v5 = *a2;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    a1[11] = v7;
    operator new();
  }

  a1[12] = &unk_2290750;
  v8 = *a2;
  a1[17] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    a1[17] = v10;
    operator new();
  }

  a1[18] = &unk_2290750;
  v11 = *a2;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    a1[23] = v13;
    operator new();
  }

  a1[24] = &unk_2290750;
  v14 = *a2;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    a1[29] = v16;
    operator new();
  }

  a1[30] = &unk_2290750;
  v17 = *a2;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    a1[35] = v19;
    operator new();
  }

  v20 = *a2;
  a1[41] = 0;
  a1[36] = &unk_2290750;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    a1[41] = v22;
    operator new();
  }

  v23 = *a2;
  a1[47] = 0;
  a1[42] = &unk_2290750;
  a1[43] = 0;
  a1[44] = 0;
  a1[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    a1[47] = v25;
    operator new();
  }

  v26 = *a2;
  a1[53] = 0;
  a1[48] = &unk_2290750;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    a1[53] = v28;
    operator new();
  }

  v29 = *a2;
  a1[59] = 0;
  a1[54] = &unk_2290750;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    a1[59] = v31;
    operator new();
  }

  v32 = *a2;
  a1[65] = 0;
  a1[60] = &unk_2290750;
  a1[61] = 0;
  a1[62] = 0;
  a1[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    a1[65] = v34;
    operator new();
  }

  v35 = *a2;
  a1[66] = &unk_2290750;
  a1[71] = 0;
  a1[67] = 0;
  a1[69] = 0;
  a1[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    a1[71] = v37;
    operator new();
  }

  v38 = *a2;
  a1[72] = &unk_2290750;
  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    a1[77] = v40;
    operator new();
  }

  v41 = *a2;
  a1[78] = &unk_2290750;
  a1[83] = 0;
  a1[79] = 0;
  a1[81] = 0;
  a1[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    a1[83] = v43;
    operator new();
  }

  v44 = *a2;
  a1[84] = &unk_2290750;
  a1[89] = 0;
  a1[85] = 0;
  a1[87] = 0;
  a1[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    a1[89] = v46;
    operator new();
  }

  v47 = *a2;
  a1[90] = &unk_2290750;
  a1[95] = 0;
  a1[91] = 0;
  a1[93] = 0;
  a1[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    a1[95] = v49;
    operator new();
  }

  return a1;
}

void *sub_109813C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  a1[5] = 0;
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    a1[5] = v4;
    operator new();
  }

  a1[6] = &unk_2290750;
  v5 = *a2;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    a1[11] = v7;
    operator new();
  }

  a1[12] = &unk_2290750;
  v8 = *a2;
  a1[17] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    a1[17] = v10;
    operator new();
  }

  a1[18] = &unk_2290750;
  v11 = *a2;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    a1[23] = v13;
    operator new();
  }

  a1[24] = &unk_2290750;
  v14 = *a2;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    a1[29] = v16;
    operator new();
  }

  a1[30] = &unk_2290750;
  v17 = *a2;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    a1[35] = v19;
    operator new();
  }

  v20 = *a2;
  a1[41] = 0;
  a1[36] = &unk_2290750;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    a1[41] = v22;
    operator new();
  }

  v23 = *a2;
  a1[47] = 0;
  a1[42] = &unk_2290750;
  a1[43] = 0;
  a1[44] = 0;
  a1[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    a1[47] = v25;
    operator new();
  }

  v26 = *a2;
  a1[53] = 0;
  a1[48] = &unk_2290750;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    a1[53] = v28;
    operator new();
  }

  v29 = *a2;
  a1[59] = 0;
  a1[54] = &unk_2290750;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    a1[59] = v31;
    operator new();
  }

  v32 = *a2;
  a1[65] = 0;
  a1[60] = &unk_2290750;
  a1[61] = 0;
  a1[62] = 0;
  a1[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    a1[65] = v34;
    operator new();
  }

  v35 = *a2;
  a1[66] = &unk_2290750;
  a1[71] = 0;
  a1[67] = 0;
  a1[69] = 0;
  a1[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    a1[71] = v37;
    operator new();
  }

  v38 = *a2;
  a1[72] = &unk_2290750;
  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    a1[77] = v40;
    operator new();
  }

  v41 = *a2;
  a1[78] = &unk_2290750;
  a1[83] = 0;
  a1[79] = 0;
  a1[81] = 0;
  a1[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    a1[83] = v43;
    operator new();
  }

  v44 = *a2;
  a1[84] = &unk_2290750;
  a1[89] = 0;
  a1[85] = 0;
  a1[87] = 0;
  a1[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    a1[89] = v46;
    operator new();
  }

  v47 = *a2;
  a1[90] = &unk_2290750;
  a1[95] = 0;
  a1[91] = 0;
  a1[93] = 0;
  a1[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    a1[95] = v49;
    operator new();
  }

  return a1;
}

void *sub_1098AE8(void *a1, unint64_t *a2)
{
  v2 = *a2;
  a1[5] = 0;
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    a1[5] = v4;
    operator new();
  }

  a1[6] = &unk_2290750;
  v5 = *a2;
  a1[11] = 0;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    a1[11] = v7;
    operator new();
  }

  a1[12] = &unk_2290750;
  v8 = *a2;
  a1[17] = 0;
  a1[14] = 0;
  a1[15] = 0;
  a1[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    a1[17] = v10;
    operator new();
  }

  a1[18] = &unk_2290750;
  v11 = *a2;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = 0;
  a1[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    a1[23] = v13;
    operator new();
  }

  a1[24] = &unk_2290750;
  v14 = *a2;
  a1[29] = 0;
  a1[26] = 0;
  a1[27] = 0;
  a1[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    a1[29] = v16;
    operator new();
  }

  a1[30] = &unk_2290750;
  v17 = *a2;
  a1[35] = 0;
  a1[32] = 0;
  a1[33] = 0;
  a1[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    a1[35] = v19;
    operator new();
  }

  v20 = *a2;
  a1[41] = 0;
  a1[36] = &unk_2290750;
  a1[37] = 0;
  a1[38] = 0;
  a1[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    a1[41] = v22;
    operator new();
  }

  v23 = *a2;
  a1[47] = 0;
  a1[42] = &unk_2290750;
  a1[43] = 0;
  a1[44] = 0;
  a1[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    a1[47] = v25;
    operator new();
  }

  v26 = *a2;
  a1[53] = 0;
  a1[48] = &unk_2290750;
  a1[49] = 0;
  a1[50] = 0;
  a1[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    a1[53] = v28;
    operator new();
  }

  v29 = *a2;
  a1[59] = 0;
  a1[54] = &unk_2290750;
  a1[55] = 0;
  a1[56] = 0;
  a1[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    a1[59] = v31;
    operator new();
  }

  v32 = *a2;
  a1[65] = 0;
  a1[60] = &unk_2290750;
  a1[61] = 0;
  a1[62] = 0;
  a1[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    a1[65] = v34;
    operator new();
  }

  v35 = *a2;
  a1[66] = &unk_2290750;
  a1[71] = 0;
  a1[67] = 0;
  a1[69] = 0;
  a1[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    a1[71] = v37;
    operator new();
  }

  v38 = *a2;
  a1[72] = &unk_2290750;
  a1[77] = 0;
  a1[73] = 0;
  a1[75] = 0;
  a1[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    a1[77] = v40;
    operator new();
  }

  v41 = *a2;
  a1[78] = &unk_2290750;
  a1[83] = 0;
  a1[79] = 0;
  a1[81] = 0;
  a1[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    a1[83] = v43;
    operator new();
  }

  v44 = *a2;
  a1[84] = &unk_2290750;
  a1[89] = 0;
  a1[85] = 0;
  a1[87] = 0;
  a1[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    a1[89] = v46;
    operator new();
  }

  v47 = *a2;
  a1[90] = &unk_2290750;
  a1[95] = 0;
  a1[91] = 0;
  a1[93] = 0;
  a1[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    a1[95] = v49;
    operator new();
  }

  return a1;
}

void sub_1099494(void *a1, uint64_t *a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v24 = 9;
        strcpy(__p, "threshold");
        v10 = sub_10996C8(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = 5;
        strcpy(__p, "value");
        v11 = sub_63D34(v9, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          v13 = a3[1];
          v12 = a3[2];
          if (v13 < v12)
          {
            goto LABEL_4;
          }

LABEL_12:
          v14 = *a3;
          v15 = v13 - *a3;
          v16 = v15 >> 4;
          v17 = (v15 >> 4) + 1;
          if (v17 >> 60)
          {
            sub_1794();
          }

          v18 = v12 - v14;
          if (v18 >> 3 > v17)
          {
            v17 = v18 >> 3;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v19 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            if (!(v19 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v20 = 16 * v16;
          *v20 = v10;
          *(v20 + 8) = v11;
          v21 = 16 * v16 + 16;
          v22 = (v20 - 16 * (v15 >> 4));
          memcpy(v22, v14, v15);
          *a3 = v22;
          a3[1] = v21;
          a3[2] = 0;
          if (v14)
          {
            operator delete(v14);
          }

          a3[1] = v21;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v13 = v10;
          *(v13 + 8) = v11;
          a3[1] = v13 + 16;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_10996A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10996C8(void *a1, uint64_t *a2)
{
  v2 = sub_62A70(a1, a2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v7 = v15;
    }

    else
    {
      v7 = v14;
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  v3 = *(v2 + 12);
  if (v3 == 4 || v3 == 3)
  {
    return *(v2 + 10);
  }

  if (v3 != 2)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v15 & 0x80u) == 0)
    {
      v10 = &v13;
    }

    else
    {
      v10 = v13;
    }

    if ((v15 & 0x80u) == 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v14;
    }

    v12 = sub_2D390(v9, v10, v11);
  }

  return *(v2 + 5);
}

void sub_1099804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_109983C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = 0x2127599BF4325C37 * (*a2 ^ (*a2 >> 23));
  v6 = (v5 ^ ~(v5 >> 47)) + ((v5 ^ (v5 >> 47)) << 21);
  v7 = 21 * ((265 * (v6 ^ (v6 >> 24))) ^ ((265 * (v6 ^ (v6 >> 24))) >> 14));
  v8 = 2147483649u * (v7 ^ (v7 >> 28));
  v9 = (a1 + 48 * (((((v7 ^ (v7 >> 28)) >> 8) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 16)) ^ ((-2147483647 * (v7 ^ (v7 >> 28))) >> 24)) & 0xF));
  v10 = v8 >> 7;
  v11 = v9[3];
  while (1)
  {
    v12 = v10 & v11;
    v13 = *(*v9 + v12);
    v14 = ((v13 ^ (0x101010101010101 * (v8 & 0x7F))) - 0x101010101010101) & ~(v13 ^ (0x101010101010101 * (v8 & 0x7F))) & 0x8080808080808080;
    if (v14)
    {
      break;
    }

LABEL_5:
    if ((v13 & (~v13 << 6) & 0x8080808080808080) != 0)
    {
      result = sub_1099978(v9, v8);
      *a3 = v9;
      *(a3 + 8) = result;
      *(a3 + 16) = 1;
      return result;
    }

    v3 += 8;
    v10 = v3 + v12;
  }

  while (1)
  {
    result = (v12 + (__clz(__rbit64(v14)) >> 3)) & v11;
    if (*(v9[1] + 104 * result) == v4)
    {
      break;
    }

    v14 &= v14 - 1;
    if (!v14)
    {
      goto LABEL_5;
    }
  }

  *a3 = v9;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

unint64_t sub_1099978(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_1099A70(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_1099A70(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_1099AA0(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_1099C90(a1);
}

uint64_t sub_1099C90(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = *(*(result + 8) + 104 * i);
        v19 = ((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) ^ ~((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) ^ ((0x2127599BF4325C37 * (v18 ^ (v18 >> 23))) >> 47)) << 21);
        v20 = 21 * ((265 * (v19 ^ (v19 >> 24))) ^ ((265 * (v19 ^ (v19 >> 24))) >> 14));
        v21 = 2147483649u * (v20 ^ (v20 >> 28));
        v22 = v13 & (v21 >> 7);
        v23 = *(v17->i64 + v22) & (~*(v17->i64 + v22) << 7) & 0x8080808080808080;
        if (v23)
        {
          v15 = v13 & (v21 >> 7);
        }

        else
        {
          v24 = 8;
          v15 = v13 & (v21 >> 7);
          do
          {
            v15 = (v15 + v24) & v13;
            v24 += 8;
            v23 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v23);
        }

        v16 = (v15 + (__clz(__rbit64(v23)) >> 3)) & v13;
        if ((((v16 - v22) ^ (i - v22)) & v13) > 7)
        {
          v25 = v17->u8[v16];
          v17->i8[v16] = v21 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v21 & 0x7F;
          v26 = *(result + 8);
          if (v25 == 128)
          {
            v27 = v26 + 104 * v16;
            v28 = (v26 + 104 * i);
            v29 = *v28;
            v30 = v28[2];
            *(v27 + 16) = v28[1];
            *(v27 + 32) = v30;
            *v27 = v29;
            v31 = v28[3];
            v32 = v28[4];
            v33 = v28[5];
            *(v27 + 96) = *(v28 + 12);
            *(v27 + 64) = v32;
            *(v27 + 80) = v33;
            *(v27 + 48) = v31;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v34 = (v26 + 104 * i);
            v49 = v34[4];
            v50 = v34[5];
            v51 = *(v34 + 12);
            v45 = *v34;
            v46 = v34[1];
            v47 = v34[2];
            v48 = v34[3];
            v35 = (v26 + 104 * v16);
            v37 = v35[1];
            v36 = v35[2];
            *v34 = *v35;
            v34[1] = v37;
            v34[2] = v36;
            v39 = v35[4];
            v38 = v35[5];
            v40 = v35[3];
            *(v34 + 12) = *(v35 + 12);
            v34[4] = v39;
            v34[5] = v38;
            v34[3] = v40;
            v41 = *(result + 8) + 104 * v16;
            *v41 = v45;
            *(v41 + 16) = v46;
            *(v41 + 96) = v51;
            *(v41 + 64) = v49;
            *(v41 + 80) = v50;
            *(v41 + 32) = v47;
            *(v41 + 48) = v48;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v21 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v21 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v42 = i - (i >> 3);
    v43 = i == 7;
    v44 = 6;
    if (!v43)
    {
      v44 = v42;
    }
  }

  else
  {
    v44 = 0;
  }

  *(result + 40) = v44 - *(result + 16);
  return result;
}

__n128 sub_1099FE8(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 6;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 5);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v37 = -1;
        v38 = 0x7FFFFFFF;
        if (*(a2 - 13) != -1 && *(a2 - 12) != 0x7FFFFFFF)
        {
          v37 = *(a2 - 11);
          if (v37 != -1)
          {
            v39 = *(a2 - 10);
            if (v39 == 0x7FFFFFFF)
            {
              v37 = -1;
            }

            else
            {
              v37 += *(a2 - 13);
              v38 = v39 + *(a2 - 12);
            }
          }
        }

        v40 = -1;
        v41 = 0x7FFFFFFF;
        if (*(v10 + 11) != -1 && *(v10 + 12) != 0x7FFFFFFF)
        {
          v40 = *(v10 + 13);
          if (v40 != -1)
          {
            v42 = *(v10 + 14);
            if (v42 == 0x7FFFFFFF)
            {
              v40 = -1;
            }

            else
            {
              v40 += *(v10 + 11);
              v41 = v42 + *(v10 + 12);
            }
          }
        }

        v43 = v38 < v41;
        v31 = v37 == v40;
        v44 = v37 < v40;
        if (!v31)
        {
          v43 = v44;
        }

        if (v43)
        {
          v50 = *v10;
          v52 = v10[1];
          *v58 = v10[4];
          *&v58[16] = v10[5];
          v54 = v10[2];
          v56 = v10[3];
          v46 = *(a2 - 3);
          v45 = *(a2 - 2);
          v47 = *(a2 - 4);
          *(v10 + 76) = *(a2 - 20);
          v10[3] = v46;
          v10[4] = v45;
          v10[2] = v47;
          v48 = *(a2 - 5);
          *v10 = *v9;
          v10[1] = v48;
          *(a2 - 4) = v54;
          *(a2 - 3) = v56;
          *(a2 - 2) = *v58;
          *(a2 - 20) = *&v58[12];
          result = v50;
          *v9 = v50;
          *(a2 - 5) = v52;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      result.n128_u64[0] = sub_109AB04(v10, (v10 + 6), (v10 + 12), (a2 - 6)).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_109AE80(v10, (v10 + 6), (v10 + 12), (v10 + 18), (a2 - 6)).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v13 <= 2303)
    {
      if (a5)
      {

        sub_109B314(v10, a2);
      }

      else
      {

        sub_109B558(v10, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_109C34C(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = &v10[6 * (v14 >> 1)];
    if (v13 <= 0x3000)
    {
      sub_109A5A4(&v10[6 * v15], v10, a2 - 6);
      if (a5)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_109A5A4(v10, &v10[6 * v15], a2 - 6);
      v17 = v10 + 6;
      v18 = 6 * v15;
      v19 = &a1[6 * v15 - 6];
      sub_109A5A4(a1 + 6, v19, a2 - 12);
      sub_109A5A4(a1 + 12, &v17[v18], a2 - 18);
      sub_109A5A4(v19, v16, &v17[v18]);
      v49 = *a1;
      v51 = a1[1];
      *v57 = a1[4];
      *&v57[16] = a1[5];
      v53 = a1[2];
      v55 = a1[3];
      v21 = v16[3];
      v20 = v16[4];
      v22 = v16[2];
      *(a1 + 76) = *(v16 + 76);
      a1[3] = v21;
      a1[4] = v20;
      a1[2] = v22;
      v23 = v16[1];
      *a1 = *v16;
      a1[1] = v23;
      *v16 = v49;
      v16[1] = v51;
      *(v16 + 76) = *&v57[12];
      v16[3] = v55;
      v16[4] = *v57;
      v16[2] = v53;
      if (a5)
      {
        goto LABEL_32;
      }
    }

    v24 = -1;
    v25 = 0x7FFFFFFF;
    if (*(a1 - 13) != -1 && *(a1 - 12) != 0x7FFFFFFF)
    {
      v24 = *(a1 - 11);
      if (v24 != -1)
      {
        v26 = *(a1 - 10);
        if (v26 != 0x7FFFFFFF)
        {
          v24 += *(a1 - 13);
          v25 = v26 + *(a1 - 12);
          v27 = -1;
          v28 = 0x7FFFFFFF;
          if (*(a1 + 11) == -1)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }

        v24 = -1;
      }
    }

    v27 = -1;
    v28 = 0x7FFFFFFF;
    if (*(a1 + 11) == -1)
    {
      goto LABEL_29;
    }

LABEL_22:
    if (*(a1 + 12) != 0x7FFFFFFF)
    {
      v27 = *(a1 + 13);
      if (v27 != -1)
      {
        v29 = *(a1 + 14);
        if (v29 == 0x7FFFFFFF)
        {
          v27 = -1;
        }

        else
        {
          v27 += *(a1 + 11);
          v28 = v29 + *(a1 + 12);
        }
      }
    }

LABEL_29:
    v30 = v25 < v28;
    v31 = v24 == v27;
    v32 = v24 < v27;
    if (!v31)
    {
      v30 = v32;
    }

    if (!v30)
    {
      v10 = sub_109B774(a1, a2);
      goto LABEL_37;
    }

LABEL_32:
    v33 = sub_109BB64(a1, a2);
    if ((v34 & 1) == 0)
    {
      goto LABEL_35;
    }

    v35 = sub_109BEE4(a1, v33);
    v10 = v33 + 6;
    if (sub_109BEE4((v33 + 6), a2))
    {
      a4 = -v12;
      a2 = v33;
      if (v35)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v35)
    {
LABEL_35:
      result.n128_u64[0] = sub_1099FE8(a1, v33, a3, -v12, a5 & 1).n128_u64[0];
      v10 = v33 + 6;
LABEL_37:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  sub_109A5A4(v10, v10 + 6, a2 - 6);
  return result;
}

uint64_t sub_109A5A4(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = 0x7FFFFFFF;
  v4 = *(a2 + 11) == -1 || *(a2 + 12) == 0x7FFFFFFF;
  v5 = v4;
  if (v4)
  {
    v6 = -1;
    if (*(a1 + 11) == -1 || *(a1 + 12) == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = *(a2 + 13);
    if (v6 == -1)
    {
      goto LABEL_19;
    }

    v11 = *(a2 + 14);
    if (v11 == 0x7FFFFFFF)
    {
      v6 = -1;
LABEL_19:
      if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
      {
        goto LABEL_13;
      }

LABEL_24:
      v8 = -1;
      v9 = 0x7FFFFFFF;
      goto LABEL_26;
    }

    v6 += *(a2 + 11);
    v3 = v11 + *(a2 + 12);
    if (*(a1 + 11) == -1 || *(a1 + 12) == 0x7FFFFFFF)
    {
      goto LABEL_24;
    }
  }

LABEL_13:
  v8 = *(a1 + 13);
  v9 = 0x7FFFFFFF;
  if (v8 != -1)
  {
    v10 = *(a1 + 14);
    if (v10 == 0x7FFFFFFF)
    {
      v8 = -1;
    }

    else
    {
      v8 += *(a1 + 11);
      v9 = v10 + *(a1 + 12);
    }
  }

LABEL_26:
  v13 = v3 < v9;
  v4 = v6 == v8;
  v14 = v6 < v8;
  if (v4)
  {
    v14 = v13;
  }

  v16 = *(a3 + 11) == -1 || *(a3 + 12) == 0x7FFFFFFF;
  if (v14)
  {
    if (v16)
    {
      v17 = -1;
      v18 = 0x7FFFFFFF;
      if ((v5 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_49:
      v19 = -1;
      v20 = 0x7FFFFFFF;
LABEL_61:
      v30 = v18 < v20;
      if (v17 != v19)
      {
        v30 = v17 < v19;
      }

      if (v30)
      {
        v77 = a1[2];
        v81 = a1[3];
        *v85 = a1[4];
        *&v85[16] = a1[5];
        v69 = *a1;
        v73 = a1[1];
        v31 = a3[1];
        *a1 = *a3;
        a1[1] = v31;
        v33 = a3[3];
        v32 = a3[4];
        v34 = a3[2];
        *(a1 + 76) = *(a3 + 76);
        a1[3] = v33;
        a1[4] = v32;
        a1[2] = v34;
LABEL_101:
        a3[4] = *v85;
        *(a3 + 76) = *&v85[12];
        a3[2] = v77;
        a3[3] = v81;
        result = 1;
        *a3 = v69;
        a3[1] = v73;
        return result;
      }

      v78 = a1[2];
      v82 = a1[3];
      *v86 = a1[4];
      *&v86[16] = a1[5];
      v70 = *a1;
      v74 = a1[1];
      v35 = a2[1];
      *a1 = *a2;
      a1[1] = v35;
      v37 = a2[3];
      v36 = a2[4];
      v38 = a2[2];
      *(a1 + 76) = *(a2 + 76);
      a1[3] = v37;
      a1[4] = v36;
      a1[2] = v38;
      a2[4] = *v86;
      *(a2 + 76) = *&v86[12];
      a2[2] = v78;
      a2[3] = v82;
      *a2 = v70;
      a2[1] = v74;
      v39 = -1;
      v40 = 0x7FFFFFFF;
      if (*(a3 + 11) != -1 && *(a3 + 12) != 0x7FFFFFFF)
      {
        v39 = *(a3 + 13);
        if (v39 != -1)
        {
          v41 = *(a3 + 14);
          if (v41 == 0x7FFFFFFF)
          {
            v39 = -1;
          }

          else
          {
            v39 += *(a3 + 11);
            v40 = v41 + *(a3 + 12);
          }
        }
      }

      v51 = -1;
      v52 = 0x7FFFFFFF;
      if (*(a2 + 11) != -1 && *(a2 + 12) != 0x7FFFFFFF)
      {
        v51 = *(a2 + 13);
        if (v51 != -1)
        {
          v53 = *(a2 + 14);
          if (v53 == 0x7FFFFFFF)
          {
            v51 = -1;
          }

          else
          {
            v51 += *(a2 + 11);
            v52 = v53 + *(a2 + 12);
          }
        }
      }

      v57 = v40 < v52;
      v4 = v39 == v51;
      v58 = v39 < v51;
      if (!v4)
      {
        v57 = v58;
      }

      if (v57)
      {
        v77 = a2[2];
        v81 = a2[3];
        *v85 = a2[4];
        *&v85[16] = a2[5];
        v69 = *a2;
        v73 = a2[1];
        v59 = a3[1];
        *a2 = *a3;
        a2[1] = v59;
        v61 = a3[3];
        v60 = a3[4];
        v62 = a3[2];
        *(a2 + 76) = *(a3 + 76);
        a2[3] = v61;
        a2[4] = v60;
        a2[2] = v62;
        goto LABEL_101;
      }

      return 1;
    }

    v17 = *(a3 + 13);
    v18 = 0x7FFFFFFF;
    if (v17 != -1)
    {
      v27 = *(a3 + 14);
      if (v27 != 0x7FFFFFFF)
      {
        v17 += *(a3 + 11);
        v18 = v27 + *(a3 + 12);
        if (v5)
        {
          goto LABEL_49;
        }

        goto LABEL_37;
      }

      v17 = -1;
    }

    if (v5)
    {
      goto LABEL_49;
    }

LABEL_37:
    v19 = *(a2 + 13);
    v20 = 0x7FFFFFFF;
    if (v19 != -1)
    {
      v21 = *(a2 + 14);
      if (v21 == 0x7FFFFFFF)
      {
        v19 = -1;
      }

      else
      {
        v19 += *(a2 + 11);
        v20 = v21 + *(a2 + 12);
      }
    }

    goto LABEL_61;
  }

  if (v16)
  {
    v22 = -1;
    v23 = 0x7FFFFFFF;
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_54:
    v24 = -1;
    v25 = 0x7FFFFFFF;
    goto LABEL_71;
  }

  v22 = *(a3 + 13);
  v23 = 0x7FFFFFFF;
  if (v22 != -1)
  {
    v28 = *(a3 + 14);
    if (v28 != 0x7FFFFFFF)
    {
      v22 += *(a3 + 11);
      v23 = v28 + *(a3 + 12);
      if (v5)
      {
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    v22 = -1;
  }

  if (v5)
  {
    goto LABEL_54;
  }

LABEL_42:
  v24 = *(a2 + 13);
  v25 = 0x7FFFFFFF;
  if (v24 != -1)
  {
    v26 = *(a2 + 14);
    if (v26 == 0x7FFFFFFF)
    {
      v24 = -1;
    }

    else
    {
      v24 += *(a2 + 11);
      v25 = v26 + *(a2 + 12);
    }
  }

LABEL_71:
  v42 = v23 < v25;
  if (v22 != v24)
  {
    v42 = v22 < v24;
  }

  if (!v42)
  {
    return 0;
  }

  v79 = a2[2];
  v83 = a2[3];
  *v87 = a2[4];
  *&v87[16] = a2[5];
  v71 = *a2;
  v75 = a2[1];
  v43 = a3[1];
  *a2 = *a3;
  a2[1] = v43;
  v45 = a3[3];
  v44 = a3[4];
  v46 = a3[2];
  *(a2 + 76) = *(a3 + 76);
  a2[3] = v45;
  a2[4] = v44;
  a2[2] = v46;
  a3[4] = *v87;
  *(a3 + 76) = *&v87[12];
  a3[2] = v79;
  a3[3] = v83;
  *a3 = v71;
  a3[1] = v75;
  v47 = -1;
  v48 = 0x7FFFFFFF;
  if (*(a2 + 11) != -1 && *(a2 + 12) != 0x7FFFFFFF)
  {
    v47 = *(a2 + 13);
    if (v47 != -1)
    {
      v49 = *(a2 + 14);
      if (v49 == 0x7FFFFFFF)
      {
        v47 = -1;
      }

      else
      {
        v47 += *(a2 + 11);
        v48 = v49 + *(a2 + 12);
      }
    }
  }

  v54 = -1;
  v55 = 0x7FFFFFFF;
  if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
  {
    v54 = *(a1 + 13);
    if (v54 != -1)
    {
      v56 = *(a1 + 14);
      if (v56 == 0x7FFFFFFF)
      {
        v54 = -1;
      }

      else
      {
        v54 += *(a1 + 11);
        v55 = v56 + *(a1 + 12);
      }
    }
  }

  v63 = v48 < v55;
  v4 = v47 == v54;
  v64 = v47 < v54;
  if (!v4)
  {
    v63 = v64;
  }

  if (v63)
  {
    v80 = a1[2];
    v84 = a1[3];
    *v88 = a1[4];
    *&v88[16] = a1[5];
    v72 = *a1;
    v76 = a1[1];
    v65 = a2[1];
    *a1 = *a2;
    a1[1] = v65;
    v67 = a2[3];
    v66 = a2[4];
    v68 = a2[2];
    *(a1 + 76) = *(a2 + 76);
    a1[3] = v67;
    a1[4] = v66;
    a1[2] = v68;
    a2[4] = *v88;
    *(a2 + 76) = *&v88[12];
    a2[2] = v80;
    a2[3] = v84;
    result = 1;
    *a2 = v72;
    a2[1] = v76;
    return result;
  }

  return 1;
}

__n128 sub_109AB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_109A5A4(a1, a2, a3);
  v9 = 0x7FFFFFFF;
  v10 = *(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF;
  if (v10)
  {
    v11 = -1;
    v12 = 0x7FFFFFFF;
    if (*(a3 + 44) == -1 || *(a3 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = *(a4 + 52);
    if (v11 == -1)
    {
      goto LABEL_14;
    }

    v14 = *(a4 + 56);
    if (v14 == 0x7FFFFFFF)
    {
      v11 = -1;
LABEL_14:
      v12 = 0x7FFFFFFF;
      if (*(a3 + 44) == -1 || *(a3 + 48) == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    v11 += *(a4 + 44);
    v9 = v14 + *(a4 + 48);
    v12 = 0x7FFFFFFF;
    if (*(a3 + 44) == -1 || *(a3 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

LABEL_18:
  v16 = *(a3 + 52);
  if (v16 == -1)
  {
    goto LABEL_27;
  }

  v17 = *(a3 + 56);
  if (v17 != 0x7FFFFFFF)
  {
    v16 += *(a3 + 44);
    v12 = v17 + *(a3 + 48);
    goto LABEL_27;
  }

LABEL_26:
  v16 = -1;
LABEL_27:
  v19 = v9 < v12;
  v10 = v11 == v16;
  v20 = v11 < v16;
  if (!v10)
  {
    v19 = v20;
  }

  if (v19)
  {
    v55 = *(a3 + 32);
    v58 = *(a3 + 48);
    *v61 = *(a3 + 64);
    *&v61[16] = *(a3 + 80);
    v49 = *a3;
    v52 = *(a3 + 16);
    v21 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v21;
    v23 = *(a4 + 48);
    v22 = *(a4 + 64);
    v24 = *(a4 + 32);
    *(a3 + 76) = *(a4 + 76);
    *(a3 + 48) = v23;
    *(a3 + 64) = v22;
    *(a3 + 32) = v24;
    *(a4 + 64) = *v61;
    *(a4 + 76) = *&v61[12];
    *(a4 + 32) = v55;
    *(a4 + 48) = v58;
    result = v49;
    *a4 = v49;
    *(a4 + 16) = v52;
    v25 = -1;
    v26 = 0x7FFFFFFF;
    if (*(a3 + 44) != -1 && *(a3 + 48) != 0x7FFFFFFF)
    {
      v25 = *(a3 + 52);
      if (v25 != -1)
      {
        v27 = *(a3 + 56);
        if (v27 == 0x7FFFFFFF)
        {
          v25 = -1;
        }

        else
        {
          v25 += *(a3 + 44);
          v26 = v27 + *(a3 + 48);
        }
      }
    }

    v28 = -1;
    v29 = 0x7FFFFFFF;
    if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
    {
      v28 = *(a2 + 52);
      if (v28 != -1)
      {
        v30 = *(a2 + 56);
        if (v30 == 0x7FFFFFFF)
        {
          v28 = -1;
        }

        else
        {
          v28 += *(a2 + 44);
          v29 = v30 + *(a2 + 48);
        }
      }
    }

    v31 = v26 < v29;
    v10 = v25 == v28;
    v32 = v25 < v28;
    if (!v10)
    {
      v31 = v32;
    }

    if (v31)
    {
      v56 = *(a2 + 32);
      v59 = *(a2 + 48);
      *v62 = *(a2 + 64);
      *&v62[16] = *(a2 + 80);
      v50 = *a2;
      v53 = *(a2 + 16);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      v35 = *(a3 + 48);
      v34 = *(a3 + 64);
      v36 = *(a3 + 32);
      *(a2 + 76) = *(a3 + 76);
      *(a2 + 48) = v35;
      *(a2 + 64) = v34;
      *(a2 + 32) = v36;
      *(a3 + 64) = *v62;
      *(a3 + 76) = *&v62[12];
      *(a3 + 32) = v56;
      *(a3 + 48) = v59;
      result = v50;
      *a3 = v50;
      *(a3 + 16) = v53;
      v37 = -1;
      v38 = 0x7FFFFFFF;
      if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
      {
        v37 = *(a2 + 52);
        if (v37 != -1)
        {
          v39 = *(a2 + 56);
          if (v39 == 0x7FFFFFFF)
          {
            v37 = -1;
          }

          else
          {
            v37 += *(a2 + 44);
            v38 = v39 + *(a2 + 48);
          }
        }
      }

      v40 = -1;
      v41 = 0x7FFFFFFF;
      if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
      {
        v40 = *(a1 + 52);
        if (v40 != -1)
        {
          v42 = *(a1 + 56);
          if (v42 == 0x7FFFFFFF)
          {
            v40 = -1;
          }

          else
          {
            v40 += *(a1 + 44);
            v41 = v42 + *(a1 + 48);
          }
        }
      }

      v43 = v38 < v41;
      v10 = v37 == v40;
      v44 = v37 < v40;
      if (!v10)
      {
        v43 = v44;
      }

      if (v43)
      {
        v57 = *(a1 + 32);
        v60 = *(a1 + 48);
        *v63 = *(a1 + 64);
        *&v63[16] = *(a1 + 80);
        v51 = *a1;
        v54 = *(a1 + 16);
        v45 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v45;
        v47 = *(a2 + 48);
        v46 = *(a2 + 64);
        v48 = *(a2 + 32);
        *(a1 + 76) = *(a2 + 76);
        *(a1 + 48) = v47;
        *(a1 + 64) = v46;
        *(a1 + 32) = v48;
        *(a2 + 64) = *v63;
        *(a2 + 76) = *&v63[12];
        *(a2 + 32) = v57;
        *(a2 + 48) = v60;
        result = v51;
        *a2 = v51;
        *(a2 + 16) = v54;
      }
    }
  }

  return result;
}

__n128 sub_109AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result.n128_u64[0] = sub_109AB04(a1, a2, a3, a4).n128_u64[0];
  v11 = 0x7FFFFFFF;
  v12 = *(a5 + 44) == -1 || *(a5 + 48) == 0x7FFFFFFF;
  if (v12)
  {
    v13 = -1;
    v14 = 0x7FFFFFFF;
    if (*(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v13 = *(a5 + 52);
    if (v13 == -1)
    {
      goto LABEL_14;
    }

    v16 = *(a5 + 56);
    if (v16 == 0x7FFFFFFF)
    {
      v13 = -1;
LABEL_14:
      v14 = 0x7FFFFFFF;
      if (*(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    v13 += *(a5 + 44);
    v11 = v16 + *(a5 + 48);
    v14 = 0x7FFFFFFF;
    if (*(a4 + 44) == -1 || *(a4 + 48) == 0x7FFFFFFF)
    {
      goto LABEL_26;
    }
  }

LABEL_18:
  v18 = *(a4 + 52);
  if (v18 == -1)
  {
    goto LABEL_27;
  }

  v19 = *(a4 + 56);
  if (v19 != 0x7FFFFFFF)
  {
    v18 += *(a4 + 44);
    v14 = v19 + *(a4 + 48);
    goto LABEL_27;
  }

LABEL_26:
  v18 = -1;
LABEL_27:
  v21 = v11 < v14;
  v12 = v13 == v18;
  v22 = v13 < v18;
  if (!v12)
  {
    v21 = v22;
  }

  if (v21)
  {
    v71 = *(a4 + 32);
    v75 = *(a4 + 48);
    *v79 = *(a4 + 64);
    *&v79[16] = *(a4 + 80);
    v63 = *a4;
    v67 = *(a4 + 16);
    v23 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v23;
    v25 = *(a5 + 48);
    v24 = *(a5 + 64);
    v26 = *(a5 + 32);
    *(a4 + 76) = *(a5 + 76);
    *(a4 + 48) = v25;
    *(a4 + 64) = v24;
    *(a4 + 32) = v26;
    *(a5 + 64) = *v79;
    *(a5 + 76) = *&v79[12];
    *(a5 + 32) = v71;
    *(a5 + 48) = v75;
    result = v63;
    *a5 = v63;
    *(a5 + 16) = v67;
    v27 = -1;
    v28 = 0x7FFFFFFF;
    if (*(a4 + 44) != -1 && *(a4 + 48) != 0x7FFFFFFF)
    {
      v27 = *(a4 + 52);
      if (v27 != -1)
      {
        v29 = *(a4 + 56);
        if (v29 == 0x7FFFFFFF)
        {
          v27 = -1;
        }

        else
        {
          v27 += *(a4 + 44);
          v28 = v29 + *(a4 + 48);
        }
      }
    }

    v30 = -1;
    v31 = 0x7FFFFFFF;
    if (*(a3 + 44) != -1 && *(a3 + 48) != 0x7FFFFFFF)
    {
      v30 = *(a3 + 52);
      if (v30 != -1)
      {
        v32 = *(a3 + 56);
        if (v32 == 0x7FFFFFFF)
        {
          v30 = -1;
        }

        else
        {
          v30 += *(a3 + 44);
          v31 = v32 + *(a3 + 48);
        }
      }
    }

    v33 = v28 < v31;
    v12 = v27 == v30;
    v34 = v27 < v30;
    if (!v12)
    {
      v33 = v34;
    }

    if (v33)
    {
      v72 = *(a3 + 32);
      v76 = *(a3 + 48);
      *v80 = *(a3 + 64);
      *&v80[16] = *(a3 + 80);
      v64 = *a3;
      v68 = *(a3 + 16);
      v35 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v35;
      v37 = *(a4 + 48);
      v36 = *(a4 + 64);
      v38 = *(a4 + 32);
      *(a3 + 76) = *(a4 + 76);
      *(a3 + 48) = v37;
      *(a3 + 64) = v36;
      *(a3 + 32) = v38;
      *(a4 + 64) = *v80;
      *(a4 + 76) = *&v80[12];
      *(a4 + 32) = v72;
      *(a4 + 48) = v76;
      result = v64;
      *a4 = v64;
      *(a4 + 16) = v68;
      v39 = -1;
      v40 = 0x7FFFFFFF;
      if (*(a3 + 44) != -1 && *(a3 + 48) != 0x7FFFFFFF)
      {
        v39 = *(a3 + 52);
        if (v39 != -1)
        {
          v41 = *(a3 + 56);
          if (v41 == 0x7FFFFFFF)
          {
            v39 = -1;
          }

          else
          {
            v39 += *(a3 + 44);
            v40 = v41 + *(a3 + 48);
          }
        }
      }

      v42 = -1;
      v43 = 0x7FFFFFFF;
      if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
      {
        v42 = *(a2 + 52);
        if (v42 != -1)
        {
          v44 = *(a2 + 56);
          if (v44 == 0x7FFFFFFF)
          {
            v42 = -1;
          }

          else
          {
            v42 += *(a2 + 44);
            v43 = v44 + *(a2 + 48);
          }
        }
      }

      v45 = v40 < v43;
      v12 = v39 == v42;
      v46 = v39 < v42;
      if (!v12)
      {
        v45 = v46;
      }

      if (v45)
      {
        v73 = *(a2 + 32);
        v77 = *(a2 + 48);
        *v81 = *(a2 + 64);
        *&v81[16] = *(a2 + 80);
        v65 = *a2;
        v69 = *(a2 + 16);
        v47 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v47;
        v49 = *(a3 + 48);
        v48 = *(a3 + 64);
        v50 = *(a3 + 32);
        *(a2 + 76) = *(a3 + 76);
        *(a2 + 48) = v49;
        *(a2 + 64) = v48;
        *(a2 + 32) = v50;
        *(a3 + 64) = *v81;
        *(a3 + 76) = *&v81[12];
        *(a3 + 32) = v73;
        *(a3 + 48) = v77;
        result = v65;
        *a3 = v65;
        *(a3 + 16) = v69;
        v51 = -1;
        v52 = 0x7FFFFFFF;
        if (*(a2 + 44) != -1 && *(a2 + 48) != 0x7FFFFFFF)
        {
          v51 = *(a2 + 52);
          if (v51 != -1)
          {
            v53 = *(a2 + 56);
            if (v53 == 0x7FFFFFFF)
            {
              v51 = -1;
            }

            else
            {
              v51 += *(a2 + 44);
              v52 = v53 + *(a2 + 48);
            }
          }
        }

        v54 = -1;
        v55 = 0x7FFFFFFF;
        if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
        {
          v54 = *(a1 + 52);
          if (v54 != -1)
          {
            v56 = *(a1 + 56);
            if (v56 == 0x7FFFFFFF)
            {
              v54 = -1;
            }

            else
            {
              v54 += *(a1 + 44);
              v55 = v56 + *(a1 + 48);
            }
          }
        }

        v57 = v52 < v55;
        v12 = v51 == v54;
        v58 = v51 < v54;
        if (!v12)
        {
          v57 = v58;
        }

        if (v57)
        {
          v74 = *(a1 + 32);
          v78 = *(a1 + 48);
          *v82 = *(a1 + 64);
          *&v82[16] = *(a1 + 80);
          v66 = *a1;
          v70 = *(a1 + 16);
          v59 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v59;
          v61 = *(a2 + 48);
          v60 = *(a2 + 64);
          v62 = *(a2 + 32);
          *(a1 + 76) = *(a2 + 76);
          *(a1 + 48) = v61;
          *(a1 + 64) = v60;
          *(a1 + 32) = v62;
          *(a2 + 64) = *v82;
          *(a2 + 76) = *&v82[12];
          *(a2 + 32) = v74;
          *(a2 + 48) = v78;
          result = v66;
          *a2 = v66;
          *(a2 + 16) = v70;
        }
      }
    }
  }

  return result;
}

_OWORD *sub_109B314(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 6;
    if (result + 6 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v2;
        v7 = *(v4 + 35) == -1 || *(v4 + 36) == 0x7FFFFFFF;
        if (v7)
        {
          v8 = -1;
          v9 = 0x7FFFFFFF;
          if (*(v4 + 11) != -1 && *(v4 + 12) != 0x7FFFFFFF)
          {
LABEL_30:
            v13 = *(v4 + 13);
            v14 = 0x7FFFFFFF;
            if (v13 != -1)
            {
              v16 = *(v4 + 14);
              if (v16 == 0x7FFFFFFF)
              {
                v13 = -1;
              }

              else
              {
                v13 += *(v4 + 11);
                v14 = v16 + *(v4 + 12);
              }
            }

            goto LABEL_34;
          }
        }

        else
        {
          v8 = *(v4 + 37);
          v9 = 0x7FFFFFFF;
          if (v8 == -1)
          {
            goto LABEL_20;
          }

          v11 = *(v4 + 38);
          if (v11 == 0x7FFFFFFF)
          {
            v8 = -1;
LABEL_20:
            if (*(v4 + 11) != -1 && *(v4 + 12) != 0x7FFFFFFF)
            {
              goto LABEL_30;
            }

            goto LABEL_25;
          }

          v8 += *(v4 + 35);
          v9 = v11 + *(v4 + 36);
          if (*(v4 + 11) != -1 && *(v4 + 12) != 0x7FFFFFFF)
          {
            goto LABEL_30;
          }
        }

LABEL_25:
        v13 = -1;
        v14 = 0x7FFFFFFF;
LABEL_34:
        v17 = v9 < v14;
        v7 = v8 == v13;
        v18 = v8 < v13;
        if (!v7)
        {
          v17 = v18;
        }

        if (v17)
        {
          v37 = *v6;
          *v38 = v6[1];
          *&v38[12] = *(v6 + 28);
          v19 = *(v4 + 140);
          v20 = *(v4 + 37);
          v21 = *(v4 + 38);
          v35 = *(v4 + 156);
          v36 = *(v4 + 172);
          v24 = v19 != -1 && HIDWORD(v19) != 0x7FFFFFFF && v20 != -1;
          v25 = v24 && v21 != 0x7FFFFFFF;
          if (v25)
          {
            v26 = v20 + v19;
          }

          else
          {
            v26 = -1;
          }

          v27 = v3;
          do
          {
            v31 = (result + v27);
            v32 = *(result + v27 + 48);
            v31[8] = *(result + v27 + 32);
            v31[9] = v32;
            v31[10] = *(result + v27 + 64);
            *(v31 + 172) = *(result + v27 + 76);
            v33 = *(result + v27 + 16);
            v31[6] = *(result + v27);
            v31[7] = v33;
            if (!v27)
            {
              v5 = result;
              goto LABEL_5;
            }

            v28 = -1;
            v29 = 0x7FFFFFFF;
            if (*(v31 - 13) != -1 && *(v31 - 12) != 0x7FFFFFFF)
            {
              v28 = *(result + v27 - 44);
              if (v28 != -1)
              {
                v34 = *(result + v27 - 40);
                if (v34 == 0x7FFFFFFF)
                {
                  v28 = -1;
                }

                else
                {
                  v28 += *(v31 - 13);
                  v29 = v34 + *(v31 - 12);
                }
              }
            }

            v30 = v25 & (v21 + HIDWORD(v19) < v29);
            if (v26 != v28)
            {
              v30 = v26 < v28;
            }

            v27 -= 96;
          }

          while ((v30 & 1) != 0);
          v5 = (result + v27 + 96);
LABEL_5:
          *v5 = v37;
          v5[1] = *v38;
          *(v5 + 28) = *&v38[12];
          *(v5 + 44) = v19;
          *(v5 + 13) = v20;
          *(v5 + 14) = v21;
          *(v5 + 60) = v35;
          *(v5 + 76) = v36;
        }

        v2 = v6 + 6;
        v3 += 96;
        v4 = v6;
      }

      while (v6 + 6 != a2);
    }
  }

  return result;
}

_OWORD *sub_109B558(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 6;
    if (result + 6 != a2)
    {
      do
      {
        v3 = v2;
        v4 = *(result + 35) == -1 || *(result + 36) == 0x7FFFFFFF;
        if (v4)
        {
          v5 = -1;
          v6 = 0x7FFFFFFF;
          if (*(result + 11) != -1 && *(result + 12) != 0x7FFFFFFF)
          {
LABEL_29:
            v10 = *(result + 13);
            v11 = 0x7FFFFFFF;
            if (v10 != -1)
            {
              v13 = *(result + 14);
              if (v13 == 0x7FFFFFFF)
              {
                v10 = -1;
              }

              else
              {
                v10 += *(result + 11);
                v11 = v13 + *(result + 12);
              }
            }

            goto LABEL_33;
          }
        }

        else
        {
          v5 = *(result + 37);
          v6 = 0x7FFFFFFF;
          if (v5 == -1)
          {
            goto LABEL_19;
          }

          v8 = *(result + 38);
          if (v8 == 0x7FFFFFFF)
          {
            v5 = -1;
LABEL_19:
            if (*(result + 11) != -1 && *(result + 12) != 0x7FFFFFFF)
            {
              goto LABEL_29;
            }

            goto LABEL_24;
          }

          v5 += *(result + 35);
          v6 = v8 + *(result + 36);
          if (*(result + 11) != -1 && *(result + 12) != 0x7FFFFFFF)
          {
            goto LABEL_29;
          }
        }

LABEL_24:
        v10 = -1;
        v11 = 0x7FFFFFFF;
LABEL_33:
        v14 = v6 < v11;
        v4 = v5 == v10;
        v15 = v5 < v10;
        if (!v4)
        {
          v14 = v15;
        }

        if (v14)
        {
          v34 = *v3;
          *v35 = v3[1];
          *&v35[12] = *(v3 + 28);
          v16 = *(result + 140);
          v17 = *(result + 37);
          v18 = *(result + 38);
          v32 = *(result + 156);
          v33 = *(result + 172);
          v21 = v16 != -1 && HIDWORD(v16) != 0x7FFFFFFF && v17 != -1;
          v22 = v21 && v18 != 0x7FFFFFFF;
          v23 = v17 + v16;
          if (!v22)
          {
            v23 = -1;
          }

          v24 = v3;
          do
          {
            v29 = *(v24 - 3);
            v24[2] = *(v24 - 4);
            v24[3] = v29;
            v24[4] = *(v24 - 2);
            *(v24 + 76) = *(v24 - 20);
            v30 = *(v24 - 5);
            *v24 = *(v24 - 6);
            v24[1] = v30;
            v25 = -1;
            v26 = 0x7FFFFFFF;
            if (*(v24 - 37) != -1 && *(v24 - 36) != 0x7FFFFFFF)
            {
              v25 = *(v24 - 35);
              if (v25 != -1)
              {
                v31 = *(v24 - 34);
                if (v31 == 0x7FFFFFFF)
                {
                  v25 = -1;
                }

                else
                {
                  v25 += *(v24 - 37);
                  v26 = v31 + *(v24 - 36);
                }
              }
            }

            v4 = v23 == v25;
            v27 = v23 < v25;
            v28 = v22 & (v18 + HIDWORD(v16) < v26);
            if (!v4)
            {
              v28 = v27;
            }

            v24 -= 6;
          }

          while ((v28 & 1) != 0);
          *v24 = v34;
          v24[1] = *v35;
          *(v24 + 28) = *&v35[12];
          *(v24 + 44) = v16;
          *(v24 + 13) = v17;
          *(v24 + 14) = v18;
          *(v24 + 60) = v32;
          *(v24 + 76) = v33;
        }

        v2 = v3 + 6;
        result = v3;
      }

      while (v3 + 6 != a2);
    }
  }

  return result;
}

__int128 *sub_109B774(__int128 *a1, __int128 *a2)
{
  v60 = *a1;
  *v61 = a1[1];
  *&v61[12] = *(a1 + 28);
  v2 = *(a1 + 44);
  v3 = *(a1 + 13);
  v4 = *(a1 + 14);
  v58 = *(a1 + 60);
  v59 = *(a1 + 76);
  v5 = 0x7FFFFFFF;
  v6 = v2 == -1 || HIDWORD(v2) == 0x7FFFFFFF;
  v8 = !v6 && v3 != -1;
  v9 = v8 & (v4 != 0x7FFFFFFF);
  v10 = v3 + v2;
  v11 = v4 + HIDWORD(v2);
  if (!v9)
  {
    v10 = -1;
  }

  v12 = -1;
  if (*(a2 - 13) != -1 && *(a2 - 12) != 0x7FFFFFFF)
  {
    v12 = *(a2 - 11);
    v5 = 0x7FFFFFFF;
    if (v12 != -1)
    {
      v13 = *(a2 - 10);
      if (v13 == 0x7FFFFFFF)
      {
        v12 = -1;
      }

      else
      {
        v12 += *(a2 - 13);
        v5 = v13 + *(a2 - 12);
      }
    }
  }

  v6 = v10 == v12;
  v14 = v10 < v12;
  v15 = v9 & (v11 < v5);
  if (!v6)
  {
    v15 = v14;
  }

  if (v15)
  {
    v16 = a1;
    do
    {
      if (*(v16 + 35) == -1 || *(v16 + 36) == 0x7FFFFFFF)
      {
        v17 = -1;
        v18 = 0x7FFFFFFF;
      }

      else
      {
        v17 = *(v16 + 37);
        v18 = 0x7FFFFFFF;
        if (v17 != -1)
        {
          v22 = *(v16 + 38);
          if (v22 == 0x7FFFFFFF)
          {
            v17 = -1;
          }

          else
          {
            v17 += *(v16 + 35);
            v18 = v22 + *(v16 + 36);
          }
        }
      }

      v16 += 6;
      v6 = v10 == v17;
      v19 = v10 < v17;
      v20 = v9 & (v11 < v18);
      if (!v6)
      {
        v20 = v19;
      }
    }

    while ((v20 & 1) == 0);
  }

  else
  {
    v23 = a1 + 6;
    do
    {
      v16 = v23;
      if (v23 >= a2)
      {
        break;
      }

      if (*(v23 + 11) == -1 || *(v23 + 12) == 0x7FFFFFFF)
      {
        v24 = -1;
        v25 = 0x7FFFFFFF;
      }

      else
      {
        v24 = *(v23 + 13);
        v25 = 0x7FFFFFFF;
        if (v24 != -1)
        {
          v29 = *(v16 + 14);
          if (v29 == 0x7FFFFFFF)
          {
            v24 = -1;
          }

          else
          {
            v24 += *(v16 + 11);
            v25 = v29 + *(v16 + 12);
          }
        }
      }

      v6 = v10 == v24;
      v26 = v10 < v24;
      v27 = v9 & (v11 < v25);
      if (v6)
      {
        v26 = v27;
      }

      v23 = v16 + 6;
    }

    while (!v26);
  }

  if (v16 < a2)
  {
    do
    {
      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v30 = -1;
        v31 = 0x7FFFFFFF;
      }

      else
      {
        v30 = *(a2 - 11);
        v31 = 0x7FFFFFFF;
        if (v30 != -1)
        {
          v35 = *(a2 - 10);
          if (v35 == 0x7FFFFFFF)
          {
            v30 = -1;
          }

          else
          {
            v30 += *(a2 - 13);
            v31 = v35 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v6 = v10 == v30;
      v32 = v10 < v30;
      v33 = v9 & (v11 < v31);
      if (!v6)
      {
        v33 = v32;
      }
    }

    while ((v33 & 1) != 0);
  }

  while (v16 < a2)
  {
    v62 = *v16;
    v63 = v16[1];
    *v66 = v16[4];
    *&v66[16] = v16[5];
    v64 = v16[2];
    v65 = v16[3];
    v37 = a2[3];
    v36 = a2[4];
    v38 = a2[2];
    *(v16 + 76) = *(a2 + 76);
    v16[3] = v37;
    v16[4] = v36;
    v16[2] = v38;
    v39 = a2[1];
    *v16 = *a2;
    v16[1] = v39;
    *a2 = v62;
    a2[1] = v63;
    *(a2 + 76) = *&v66[12];
    a2[3] = v65;
    a2[4] = *v66;
    a2[2] = v64;
    do
    {
      if (*(v16 + 35) == -1 || *(v16 + 36) == 0x7FFFFFFF)
      {
        v40 = -1;
        v41 = 0x7FFFFFFF;
      }

      else
      {
        v40 = *(v16 + 37);
        v41 = 0x7FFFFFFF;
        if (v40 != -1)
        {
          v45 = *(v16 + 38);
          if (v45 == 0x7FFFFFFF)
          {
            v40 = -1;
          }

          else
          {
            v40 += *(v16 + 35);
            v41 = v45 + *(v16 + 36);
          }
        }
      }

      v16 += 6;
      v6 = v10 == v40;
      v42 = v10 < v40;
      v43 = v9 & (v11 < v41);
      if (!v6)
      {
        v43 = v42;
      }
    }

    while (v43 != 1);
    do
    {
      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v46 = -1;
        v47 = 0x7FFFFFFF;
      }

      else
      {
        v46 = *(a2 - 11);
        v47 = 0x7FFFFFFF;
        if (v46 != -1)
        {
          v51 = *(a2 - 10);
          if (v51 == 0x7FFFFFFF)
          {
            v46 = -1;
          }

          else
          {
            v46 += *(a2 - 13);
            v47 = v51 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v6 = v10 == v46;
      v48 = v10 < v46;
      v49 = v9 & (v11 < v47);
      if (!v6)
      {
        v49 = v48;
      }
    }

    while ((v49 & 1) != 0);
  }

  v52 = v16 - 6;
  if (v16 - 6 != a1)
  {
    v53 = *(v16 - 5);
    *a1 = *v52;
    a1[1] = v53;
    v54 = *(v16 - 4);
    v55 = *(v16 - 3);
    v56 = *(v16 - 2);
    *(a1 + 76) = *(v16 - 20);
    a1[3] = v55;
    a1[4] = v56;
    a1[2] = v54;
  }

  *v52 = v60;
  *(v16 - 5) = *v61;
  *(v16 - 68) = *&v61[12];
  *(v16 - 52) = v2;
  *(v16 - 11) = v3;
  *(v16 - 10) = v4;
  *(v16 - 20) = v59;
  *(v16 - 36) = v58;
  return v16;
}

__int128 *sub_109BB64(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v59 = *a1;
  *v60 = a1[1];
  *&v60[12] = *(a1 + 28);
  v3 = *(a1 + 44);
  v4 = *(a1 + 13);
  v5 = *(a1 + 14);
  v57 = *(a1 + 60);
  v58 = *(a1 + 76);
  v6 = v3 == -1 || HIDWORD(v3) == 0x7FFFFFFF;
  v8 = v6 || v4 == -1 || v5 == 0x7FFFFFFF;
  v9 = v4 + v3;
  v10 = v5 + HIDWORD(v3);
  if (v8)
  {
    v10 = 0x7FFFFFFF;
    v9 = -1;
  }

  do
  {
    v15 = &a1[v2];
    if (HIDWORD(a1[v2 + 8]) == -1 || LODWORD(a1[v2 + 9]) == 0x7FFFFFFF)
    {
      v11 = -1;
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v17 = *(v15 + 37);
      v12 = 0x7FFFFFFF;
      if (v17 == -1 || (v18 = DWORD2(a1[v2 + 9]), v18 == 0x7FFFFFFF))
      {
        v11 = -1;
      }

      else
      {
        v19 = v15 + 140;
        v11 = v17 + *(v15 + 35);
        v12 = v18 + *(v19 + 1);
      }
    }

    v13 = v12 < v10;
    v6 = v11 == v9;
    v14 = v11 < v9;
    if (!v6)
    {
      v13 = v14;
    }

    v2 += 6;
  }

  while (v13);
  v20 = &a1[v2];
  if (v2 == 6)
  {
    do
    {
      if (v20 >= a2)
      {
        break;
      }

      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v27 = -1;
        v28 = 0x7FFFFFFF;
      }

      else
      {
        v27 = *(a2 - 11);
        v28 = 0x7FFFFFFF;
        if (v27 != -1)
        {
          v32 = *(a2 - 10);
          if (v32 == 0x7FFFFFFF)
          {
            v27 = -1;
          }

          else
          {
            v27 += *(a2 - 13);
            v28 = v32 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v29 = v28 < v10;
      v6 = v27 == v9;
      v30 = v27 < v9;
      if (!v6)
      {
        v29 = v30;
      }
    }

    while (!v29);
  }

  else
  {
    do
    {
      if (*(a2 - 13) == -1 || *(a2 - 12) == 0x7FFFFFFF)
      {
        v21 = -1;
        v22 = 0x7FFFFFFF;
      }

      else
      {
        v21 = *(a2 - 11);
        v22 = 0x7FFFFFFF;
        if (v21 != -1)
        {
          v26 = *(a2 - 10);
          if (v26 == 0x7FFFFFFF)
          {
            v21 = -1;
          }

          else
          {
            v21 += *(a2 - 13);
            v22 = v26 + *(a2 - 12);
          }
        }
      }

      a2 -= 6;
      v23 = v22 < v10;
      v6 = v21 == v9;
      v24 = v21 < v9;
      if (!v6)
      {
        v23 = v24;
      }
    }

    while (!v23);
  }

  if (v20 >= a2)
  {
    v33 = &a1[v2];
  }

  else
  {
    v33 = &a1[v2];
    v34 = a2;
    do
    {
      v63 = v33[2];
      v64 = v33[3];
      *v65 = v33[4];
      *&v65[16] = v33[5];
      v61 = *v33;
      v62 = v33[1];
      v35 = v34[1];
      *v33 = *v34;
      v33[1] = v35;
      v37 = v34[3];
      v36 = v34[4];
      v38 = v34[2];
      *(v33 + 76) = *(v34 + 76);
      v33[3] = v37;
      v33[4] = v36;
      v33[2] = v38;
      *v34 = v61;
      v34[1] = v62;
      *(v34 + 76) = *&v65[12];
      v34[3] = v64;
      v34[4] = *v65;
      v34[2] = v63;
      do
      {
        if (*(v33 + 35) == -1 || *(v33 + 36) == 0x7FFFFFFF)
        {
          v39 = -1;
          v40 = 0x7FFFFFFF;
        }

        else
        {
          v39 = *(v33 + 37);
          v40 = 0x7FFFFFFF;
          if (v39 != -1)
          {
            v44 = *(v33 + 38);
            if (v44 == 0x7FFFFFFF)
            {
              v39 = -1;
            }

            else
            {
              v39 += *(v33 + 35);
              v40 = v44 + *(v33 + 36);
            }
          }
        }

        v33 += 6;
        v41 = v40 < v10;
        v6 = v39 == v9;
        v42 = v39 < v9;
        if (!v6)
        {
          v41 = v42;
        }
      }

      while (v41);
      do
      {
        if (*(v34 - 13) == -1 || *(v34 - 12) == 0x7FFFFFFF)
        {
          v45 = -1;
          v46 = 0x7FFFFFFF;
        }

        else
        {
          v45 = *(v34 - 11);
          v46 = 0x7FFFFFFF;
          if (v45 != -1)
          {
            v50 = *(v34 - 10);
            if (v50 == 0x7FFFFFFF)
            {
              v45 = -1;
            }

            else
            {
              v45 += *(v34 - 13);
              v46 = v50 + *(v34 - 12);
            }
          }
        }

        v34 -= 6;
        v47 = v46 < v10;
        v6 = v45 == v9;
        v48 = v45 < v9;
        if (!v6)
        {
          v47 = v48;
        }
      }

      while (!v47);
    }

    while (v33 < v34);
  }

  v51 = v33 - 6;
  if (v33 - 6 != a1)
  {
    v52 = *(v33 - 5);
    *a1 = *v51;
    a1[1] = v52;
    v53 = *(v33 - 4);
    v54 = *(v33 - 3);
    v55 = *(v33 - 2);
    *(a1 + 76) = *(v33 - 20);
    a1[3] = v54;
    a1[4] = v55;
    a1[2] = v53;
  }

  *v51 = v59;
  *(v33 - 5) = *v60;
  *(v33 - 68) = *&v60[12];
  *(v33 - 52) = v3;
  *(v33 - 11) = v4;
  *(v33 - 10) = v5;
  *(v33 - 20) = v58;
  *(v33 - 36) = v57;
  return v33 - 6;
}

BOOL sub_109BEE4(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_109A5A4(a1, (a1 + 96), a2 - 6);
        return 1;
      case 4:
        sub_109AB04(a1, a1 + 96, a1 + 192, (a2 - 6));
        return 1;
      case 5:
        sub_109AE80(a1, a1 + 96, a1 + 192, a1 + 288, (a2 - 6));
        return 1;
    }

LABEL_14:
    v6 = (a1 + 192);
    sub_109A5A4(a1, (a1 + 96), (a1 + 192));
    v9 = (a1 + 288);
    if ((a1 + 288) == a2)
    {
      return 1;
    }

    v10 = 0;
    v11 = 0;
    while (1)
    {
      v13 = *(v9 + 11) == -1 || *(v9 + 12) == 0x7FFFFFFF;
      if (v13)
      {
        v14 = -1;
        v15 = 0x7FFFFFFF;
        if (*(v6 + 11) != -1 && *(v6 + 12) != 0x7FFFFFFF)
        {
LABEL_42:
          v19 = *(v6 + 13);
          v20 = 0x7FFFFFFF;
          if (v19 != -1)
          {
            v22 = *(v6 + 14);
            if (v22 == 0x7FFFFFFF)
            {
              v19 = -1;
            }

            else
            {
              v19 += *(v6 + 11);
              v20 = v22 + *(v6 + 12);
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v14 = *(v9 + 13);
        v15 = 0x7FFFFFFF;
        if (v14 == -1)
        {
          goto LABEL_32;
        }

        v17 = *(v9 + 14);
        if (v17 == 0x7FFFFFFF)
        {
          v14 = -1;
LABEL_32:
          if (*(v6 + 11) != -1 && *(v6 + 12) != 0x7FFFFFFF)
          {
            goto LABEL_42;
          }

          goto LABEL_37;
        }

        v14 += *(v9 + 11);
        v15 = v17 + *(v9 + 12);
        if (*(v6 + 11) != -1 && *(v6 + 12) != 0x7FFFFFFF)
        {
          goto LABEL_42;
        }
      }

LABEL_37:
      v19 = -1;
      v20 = 0x7FFFFFFF;
LABEL_46:
      v23 = v15 < v20;
      v13 = v14 == v19;
      v24 = v14 < v19;
      if (!v13)
      {
        v23 = v24;
      }

      if (v23)
      {
        v54 = *v9;
        *v56 = v9[1];
        *&v56[12] = *(v9 + 28);
        v25 = *(v9 + 44);
        v26 = *(v9 + 13);
        v27 = *(v9 + 14);
        v52 = *(v9 + 60);
        v53 = *(v9 + 76);
        v28 = v25 == -1 || HIDWORD(v25) == 0x7FFFFFFF;
        v29 = v28 || v26 == -1;
        v30 = !v29;
        v31 = v30 && v27 != 0x7FFFFFFF;
        v32 = v31 ? v26 + v25 : -1;
        v33 = v10;
        do
        {
          v37 = a1 + v33;
          v38 = *(a1 + v33 + 240);
          *(v37 + 320) = *(a1 + v33 + 224);
          *(v37 + 336) = v38;
          *(v37 + 352) = *(a1 + v33 + 256);
          v39 = *(a1 + v33 + 208);
          *(v37 + 288) = *(a1 + v33 + 192);
          *(v37 + 304) = v39;
          *(a1 + v33 + 364) = *(a1 + v33 + 268);
          if (v33 == -192)
          {
            v12 = a1;
            goto LABEL_17;
          }

          v34 = -1;
          v35 = 0x7FFFFFFF;
          if (*(v37 + 140) != -1 && *(v37 + 144) != 0x7FFFFFFF)
          {
            v34 = *(a1 + v33 + 148);
            if (v34 != -1)
            {
              v40 = *(a1 + v33 + 152);
              if (v40 == 0x7FFFFFFF)
              {
                v34 = -1;
              }

              else
              {
                v34 += *(v37 + 140);
                v35 = v40 + *(v37 + 144);
              }
            }
          }

          v36 = v31 & (v27 + HIDWORD(v25) < v35);
          if (v32 != v34)
          {
            v36 = v32 < v34;
          }

          v33 -= 96;
        }

        while ((v36 & 1) != 0);
        v12 = a1 + v33 + 288;
LABEL_17:
        *v12 = v54;
        *(v12 + 16) = *v56;
        *(v12 + 28) = *&v56[12];
        *(v12 + 60) = v52;
        *(v12 + 44) = v25;
        *(v12 + 52) = v26;
        *(v12 + 56) = v27;
        ++v11;
        *(v12 + 76) = v53;
        if (v11 == 8)
        {
          return v9 + 6 == a2;
        }
      }

      v6 = v9;
      v10 += 96;
      v9 += 6;
      if (v9 == a2)
      {
        return 1;
      }
    }
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v3 = -1;
  v4 = 0x7FFFFFFF;
  if (*(a2 - 13) != -1 && *(a2 - 12) != 0x7FFFFFFF)
  {
    v3 = *(a2 - 11);
    if (v3 != -1)
    {
      v5 = *(a2 - 10);
      if (v5 == 0x7FFFFFFF)
      {
        v3 = -1;
      }

      else
      {
        v3 += *(a2 - 13);
        v4 = v5 + *(a2 - 12);
      }
    }
  }

  v42 = -1;
  v43 = 0x7FFFFFFF;
  if (*(a1 + 44) != -1 && *(a1 + 48) != 0x7FFFFFFF)
  {
    v42 = *(a1 + 52);
    if (v42 != -1)
    {
      v44 = *(a1 + 56);
      if (v44 == 0x7FFFFFFF)
      {
        v42 = -1;
      }

      else
      {
        v42 += *(a1 + 44);
        v43 = v44 + *(a1 + 48);
      }
    }
  }

  v45 = v4 < v43;
  v13 = v3 == v42;
  v46 = v3 < v42;
  if (!v13)
  {
    v45 = v46;
  }

  if (v45)
  {
    v47 = a2 - 6;
    v58 = *(a1 + 32);
    v59 = *(a1 + 48);
    *v60 = *(a1 + 64);
    *&v60[16] = *(a1 + 80);
    v55 = *a1;
    v57 = *(a1 + 16);
    v48 = *(a2 - 5);
    *a1 = *(a2 - 6);
    *(a1 + 16) = v48;
    v50 = *(a2 - 3);
    v49 = *(a2 - 2);
    v51 = *(a2 - 4);
    *(a1 + 76) = *(a2 - 20);
    *(a1 + 48) = v50;
    *(a1 + 64) = v49;
    *(a1 + 32) = v51;
    v47[4] = *v60;
    *(v47 + 76) = *&v60[12];
    v47[2] = v58;
    v47[3] = v59;
    result = 1;
    *v47 = v55;
    v47[1] = v57;
    return result;
  }

  return 1;
}

__int128 *sub_109C34C(char *a1, char *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 5);
    if (a2 - a1 >= 97)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[96 * v10];
      do
      {
        sub_109C788(a1, a4, v9, v12);
        v12 -= 6;
        --v11;
      }

      while (v11);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 6)
      {
        v14 = *(i + 11) == -1 || *(i + 12) == 0x7FFFFFFF;
        if (v14)
        {
          v15 = -1;
          v16 = 0x7FFFFFFF;
          if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
          {
LABEL_31:
            v20 = *(a1 + 13);
            v21 = 0x7FFFFFFF;
            if (v20 != -1)
            {
              v23 = *(a1 + 14);
              if (v23 == 0x7FFFFFFF)
              {
                v20 = -1;
              }

              else
              {
                v20 += *(a1 + 11);
                v21 = v23 + *(a1 + 12);
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v15 = *(i + 13);
          v16 = 0x7FFFFFFF;
          if (v15 == -1)
          {
            goto LABEL_21;
          }

          v18 = *(i + 14);
          if (v18 == 0x7FFFFFFF)
          {
            v15 = -1;
LABEL_21:
            if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }

          v15 += *(i + 11);
          v16 = v18 + *(i + 12);
          if (*(a1 + 11) != -1 && *(a1 + 12) != 0x7FFFFFFF)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v20 = -1;
        v21 = 0x7FFFFFFF;
LABEL_35:
        v24 = v16 < v21;
        v14 = v15 == v20;
        v25 = v15 < v20;
        if (!v14)
        {
          v24 = v25;
        }

        if (v24)
        {
          v63 = i[2];
          v65 = i[3];
          *v67 = i[4];
          *&v67[16] = i[5];
          v59 = *i;
          v61 = i[1];
          v26 = *(a1 + 1);
          *i = *a1;
          i[1] = v26;
          v28 = *(a1 + 3);
          v27 = *(a1 + 4);
          v29 = *(a1 + 2);
          *(i + 76) = *(a1 + 76);
          i[3] = v28;
          i[4] = v27;
          i[2] = v29;
          *(a1 + 4) = *v67;
          *(a1 + 76) = *&v67[12];
          *(a1 + 2) = v63;
          *(a1 + 3) = v65;
          *a1 = v59;
          *(a1 + 1) = v61;
          sub_109C788(a1, a4, v9, a1);
        }
      }
    }

    if (v8 >= 97)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 5);
      do
      {
        while (2)
        {
          v36 = 0;
          v64 = *(a1 + 2);
          v66 = *(a1 + 3);
          *v68 = *(a1 + 4);
          *&v68[16] = *(a1 + 5);
          v37 = a1;
          v60 = *a1;
          v62 = *(a1 + 1);
          do
          {
            v42 = &v37[96 * v36];
            v43 = (v42 + 96);
            v44 = (2 * v36) | 1;
            v36 = 2 * v36 + 2;
            if (v36 >= v30)
            {
              v36 = v44;
              goto LABEL_48;
            }

            if (*(v42 + 35) == -1 || *(v42 + 36) == 0x7FFFFFFF)
            {
              v46 = -1;
              v47 = 0x7FFFFFFF;
              if (*(v42 + 59) != -1 && *(v42 + 60) != 0x7FFFFFFF)
              {
LABEL_73:
                v51 = *(v42 + 61);
                v52 = 0x7FFFFFFF;
                if (v51 != -1)
                {
                  v54 = *(v42 + 62);
                  if (v54 == 0x7FFFFFFF)
                  {
                    v51 = -1;
                  }

                  else
                  {
                    v51 += *(v42 + 59);
                    v52 = v54 + *(v42 + 60);
                  }
                }

                goto LABEL_77;
              }
            }

            else
            {
              v46 = *(v42 + 37);
              v47 = 0x7FFFFFFF;
              if (v46 == -1)
              {
                goto LABEL_63;
              }

              v49 = *(v42 + 38);
              if (v49 == 0x7FFFFFFF)
              {
                v46 = -1;
LABEL_63:
                if (*(v42 + 59) != -1 && *(v42 + 60) != 0x7FFFFFFF)
                {
                  goto LABEL_73;
                }

                goto LABEL_68;
              }

              v46 += *(v42 + 35);
              v47 = v49 + *(v42 + 36);
              if (*(v42 + 59) != -1 && *(v42 + 60) != 0x7FFFFFFF)
              {
                goto LABEL_73;
              }
            }

LABEL_68:
            v51 = -1;
            v52 = 0x7FFFFFFF;
LABEL_77:
            v55 = v47 < v52;
            v14 = v46 == v51;
            v56 = v46 < v51;
            if (!v14)
            {
              v55 = v56;
            }

            v57 = (v42 + 192);
            if (v55)
            {
              v43 = v57;
            }

            else
            {
              v36 = v44;
            }

LABEL_48:
            v38 = v43[1];
            *v37 = *v43;
            *(v37 + 1) = v38;
            v39 = v43[2];
            v40 = v43[3];
            v41 = v43[4];
            *(v37 + 76) = *(v43 + 76);
            *(v37 + 3) = v40;
            *(v37 + 4) = v41;
            *(v37 + 2) = v39;
            v37 = v43;
          }

          while (v36 <= (v30 - 2) / 2);
          v6 -= 6;
          if (v43 != v6)
          {
            v31 = v6[1];
            *v43 = *v6;
            v43[1] = v31;
            v32 = v6[2];
            v33 = v6[3];
            v34 = v6[4];
            *(v43 + 76) = *(v6 + 76);
            v43[3] = v33;
            v43[4] = v34;
            v43[2] = v32;
            v6[2] = v64;
            v6[3] = v66;
            v6[4] = *v68;
            *(v6 + 76) = *&v68[12];
            *v6 = v60;
            v6[1] = v62;
            sub_109CB78(a1, (v43 + 6), a4, 0xAAAAAAAAAAAAAAABLL * (((v43 + 6) - a1) >> 5));
            v35 = v30-- <= 2;
            if (v35)
            {
              return i;
            }

            continue;
          }

          break;
        }

        *v43 = v60;
        v43[1] = v62;
        *(v43 + 76) = *&v68[12];
        v43[3] = v66;
        v43[4] = *v68;
        v43[2] = v64;
        v35 = v30-- <= 2;
      }

      while (!v35);
    }

    return i;
  }

  return a3;
}

__n128 sub_109C788(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 5)))
  {
    return result;
  }

  v5 = (0x5555555555555556 * ((a4 - a1) >> 5)) | 1;
  v6 = a1 + 96 * v5;
  if (0x5555555555555556 * ((a4 - a1) >> 5) + 2 < a3)
  {
    v7 = 0x7FFFFFFF;
    v8 = *(v6 + 44) == -1 || *(v6 + 48) == 0x7FFFFFFF;
    if (!v8)
    {
      v9 = *(v6 + 52);
      if (v9 == -1)
      {
        goto LABEL_11;
      }

      v10 = *(v6 + 56);
      if (v10 != 0x7FFFFFFF)
      {
        v9 += *(v6 + 44);
        v7 = v10 + *(v6 + 48);
        v11 = 0x7FFFFFFF;
        if (*(v6 + 140) == -1 || *(v6 + 144) == 0x7FFFFFFF)
        {
          goto LABEL_23;
        }

LABEL_15:
        v13 = *(v6 + 148);
        if (v13 == -1)
        {
LABEL_24:
          v16 = v7 < v11;
          v8 = v9 == v13;
          v17 = v9 < v13;
          if (!v8)
          {
            v16 = v17;
          }

          v18 = !v16;
          v19 = 96;
          if (v18)
          {
            v19 = 0;
          }

          v6 += v19;
          if (!v18)
          {
            v5 = 0x5555555555555556 * ((a4 - a1) >> 5) + 2;
          }

          goto LABEL_31;
        }

        v14 = *(v6 + 152);
        if (v14 != 0x7FFFFFFF)
        {
          v13 += *(v6 + 140);
          v11 = v14 + *(v6 + 144);
          goto LABEL_24;
        }

LABEL_23:
        v13 = -1;
        goto LABEL_24;
      }
    }

    v9 = -1;
LABEL_11:
    v11 = 0x7FFFFFFF;
    if (*(v6 + 140) == -1 || *(v6 + 144) == 0x7FFFFFFF)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

LABEL_31:
  v20 = 0x7FFFFFFF;
  if (*(v6 + 44) != -1 && *(v6 + 48) != 0x7FFFFFFF)
  {
    v22 = *(v6 + 52);
    if (v22 == -1)
    {
      goto LABEL_38;
    }

    v23 = *(v6 + 56);
    if (v23 != 0x7FFFFFFF)
    {
      v22 += *(v6 + 44);
      v20 = v23 + *(v6 + 48);
      v24 = -1;
      v25 = 0x7FFFFFFF;
      if (*(a4 + 11) == -1)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }
  }

  v22 = -1;
LABEL_38:
  v24 = -1;
  v25 = 0x7FFFFFFF;
  if (*(a4 + 11) == -1)
  {
    goto LABEL_46;
  }

LABEL_39:
  if (*(a4 + 12) != 0x7FFFFFFF)
  {
    v24 = *(a4 + 13);
    if (v24 != -1)
    {
      v26 = *(a4 + 14);
      if (v26 == 0x7FFFFFFF)
      {
        v24 = -1;
      }

      else
      {
        v24 += *(a4 + 11);
        v25 = v26 + *(a4 + 12);
      }
    }
  }

LABEL_46:
  v27 = v20 < v25;
  v8 = v22 == v24;
  v28 = v22 < v24;
  if (!v8)
  {
    v27 = v28;
  }

  if (!v27)
  {
    v67 = *a4;
    *v68 = a4[1];
    *&v68[12] = *(a4 + 28);
    v29 = *(a4 + 44);
    v30 = *(a4 + 13);
    v31 = *(a4 + 14);
    v65 = *(a4 + 60);
    v66 = *(a4 + 76);
    v34 = v29 == -1 || HIDWORD(v29) == 0x7FFFFFFF || v30 == -1 || v31 == 0x7FFFFFFF;
    v35 = v30 + v29;
    v36 = v31 + HIDWORD(v29);
    if (v34)
    {
      v36 = 0x7FFFFFFF;
      v35 = -1;
    }

    while (1)
    {
      v41 = a4;
      a4 = v6;
      v42 = *(v6 + 16);
      *v41 = *v6;
      v41[1] = v42;
      v43 = *(v6 + 32);
      v44 = *(v6 + 48);
      v45 = *(v6 + 64);
      *(v41 + 76) = *(v6 + 76);
      v41[3] = v44;
      v41[4] = v45;
      v41[2] = v43;
      if (v4 < v5)
      {
LABEL_115:
        *a4 = v67;
        a4[1] = *v68;
        *(a4 + 28) = *&v68[12];
        *(a4 + 44) = v29;
        *(a4 + 13) = v30;
        *(a4 + 14) = v31;
        result = v65;
        *(a4 + 60) = v65;
        *(a4 + 76) = v66;
        return result;
      }

      v46 = (2 * v5) | 1;
      v6 = a1 + 96 * v46;
      v5 = 2 * v5 + 2;
      if (v5 >= a3)
      {
        v5 = v46;
        if (*(v6 + 44) != -1 && *(v6 + 48) != 0x7FFFFFFF)
        {
          goto LABEL_106;
        }

        goto LABEL_60;
      }

      if (*(v6 + 44) == -1 || *(v6 + 48) == 0x7FFFFFFF)
      {
        v48 = -1;
        v49 = 0x7FFFFFFF;
        if (*(v6 + 140) == -1 || *(v6 + 144) == 0x7FFFFFFF)
        {
LABEL_92:
          v51 = -1;
          v52 = 0x7FFFFFFF;
          goto LABEL_94;
        }
      }

      else
      {
        v48 = *(v6 + 52);
        v49 = 0x7FFFFFFF;
        if (v48 == -1)
        {
          goto LABEL_87;
        }

        v55 = *(v6 + 56);
        if (v55 == 0x7FFFFFFF)
        {
          v48 = -1;
LABEL_87:
          if (*(v6 + 140) == -1 || *(v6 + 144) == 0x7FFFFFFF)
          {
            goto LABEL_92;
          }

          goto LABEL_75;
        }

        v48 += *(v6 + 44);
        v49 = v55 + *(v6 + 48);
        if (*(v6 + 140) == -1 || *(v6 + 144) == 0x7FFFFFFF)
        {
          goto LABEL_92;
        }
      }

LABEL_75:
      v51 = *(v6 + 148);
      v52 = 0x7FFFFFFF;
      if (v51 != -1)
      {
        v53 = *(v6 + 152);
        if (v53 == 0x7FFFFFFF)
        {
          v51 = -1;
        }

        else
        {
          v51 += *(v6 + 140);
          v52 = v53 + *(v6 + 144);
        }
      }

LABEL_94:
      v57 = v49 < v52;
      v8 = v48 == v51;
      v58 = v48 < v51;
      if (!v8)
      {
        v57 = v58;
      }

      v59 = !v57;
      if (v57)
      {
        v60 = 96;
      }

      else
      {
        v60 = 0;
      }

      v6 += v60;
      if (v59)
      {
        v5 = v46;
      }

      if (*(v6 + 44) != -1 && *(v6 + 48) != 0x7FFFFFFF)
      {
LABEL_106:
        v37 = *(v6 + 52);
        v38 = 0x7FFFFFFF;
        if (v37 != -1)
        {
          v62 = *(v6 + 56);
          if (v62 == 0x7FFFFFFF)
          {
            v37 = -1;
          }

          else
          {
            v37 += *(v6 + 44);
            v38 = v62 + *(v6 + 48);
          }
        }

        goto LABEL_61;
      }

LABEL_60:
      v37 = -1;
      v38 = 0x7FFFFFFF;
LABEL_61:
      v39 = v38 < v36;
      v8 = v37 == v35;
      v40 = v37 < v35;
      if (!v8)
      {
        v39 = v40;
      }

      if (v39)
      {
        goto LABEL_115;
      }
    }
  }

  return result;
}

__n128 sub_109CB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = (a4 - 2) >> 1;
  v5 = a1 + 96 * v4;
  v6 = 0x7FFFFFFF;
  v7 = *(v5 + 44) == -1 || *(v5 + 48) == 0x7FFFFFFF;
  if (!v7)
  {
    v8 = *(v5 + 52);
    if (v8 == -1)
    {
      goto LABEL_9;
    }

    v9 = *(v5 + 56);
    if (v9 != 0x7FFFFFFF)
    {
      v8 += *(v5 + 44);
      v6 = v9 + *(v5 + 48);
      v10 = -1;
      v11 = 0x7FFFFFFF;
      if (*(a2 - 52) != -1)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  v8 = -1;
LABEL_9:
  v10 = -1;
  v11 = 0x7FFFFFFF;
  if (*(a2 - 52) != -1)
  {
LABEL_10:
    if (*(a2 - 48) != 0x7FFFFFFF)
    {
      v10 = *(a2 - 44);
      if (v10 != -1)
      {
        v12 = *(a2 - 40);
        if (v12 == 0x7FFFFFFF)
        {
          v10 = -1;
        }

        else
        {
          v10 += *(a2 - 52);
          v11 = v12 + *(a2 - 48);
        }
      }
    }
  }

LABEL_17:
  v13 = v6 < v11;
  v7 = v8 == v10;
  v14 = v8 < v10;
  if (!v7)
  {
    v13 = v14;
  }

  if (v13)
  {
    v15 = a2 - 96;
    v38 = *(a2 - 96);
    *v39 = *(a2 - 80);
    *&v39[12] = *(a2 - 68);
    v16 = *(a2 - 52);
    v17 = *(a2 - 44);
    v18 = *(a2 - 40);
    v36 = *(a2 - 36);
    v37 = *(a2 - 20);
    v21 = v16 == -1 || HIDWORD(v16) == 0x7FFFFFFF || v17 == -1 || v18 == 0x7FFFFFFF;
    v22 = v17 + v16;
    v23 = v18 + HIDWORD(v16);
    if (v21)
    {
      v23 = 0x7FFFFFFF;
      v22 = -1;
    }

    do
    {
      v28 = v15;
      v15 = v5;
      v29 = *(v5 + 16);
      *v28 = *v5;
      v28[1] = v29;
      v30 = *(v5 + 32);
      v31 = *(v5 + 48);
      v32 = *(v5 + 64);
      *(v28 + 76) = *(v5 + 76);
      v28[3] = v31;
      v28[4] = v32;
      v28[2] = v30;
      if (!v4)
      {
        break;
      }

      v4 = (v4 - 1) >> 1;
      v5 = a1 + 96 * v4;
      if (*(v5 + 44) == -1 || *(v5 + 48) == 0x7FFFFFFF)
      {
        v24 = -1;
        v25 = 0x7FFFFFFF;
      }

      else
      {
        v24 = *(v5 + 52);
        v25 = 0x7FFFFFFF;
        if (v24 != -1)
        {
          v34 = *(v5 + 56);
          if (v34 == 0x7FFFFFFF)
          {
            v24 = -1;
          }

          else
          {
            v24 += *(v5 + 44);
            v25 = v34 + *(v5 + 48);
          }
        }
      }

      v26 = v25 < v23;
      v7 = v24 == v22;
      v27 = v24 < v22;
      if (!v7)
      {
        v26 = v27;
      }
    }

    while (v26);
    *v15 = v38;
    *(v15 + 16) = *v39;
    *(v15 + 28) = *&v39[12];
    *(v15 + 44) = v16;
    *(v15 + 52) = v17;
    *(v15 + 56) = v18;
    result = v36;
    *(v15 + 60) = v36;
    *(v15 + 76) = v37;
  }

  return result;
}

unint64_t sub_109CD74(void *a1, unsigned int *a2, char a3)
{
  sub_2B7A20(a1, (((a2[1] & 0x10000000) << 20) | (a2[1] << 32) | *a2) ^ 0x1000000000000, v10);
  v4 = __p;
  if (__p == v12)
  {
    v6 = 0xFFFFFFFF00000000;
    v7 = 0xFFFFFFFFLL;
    if (!__p)
    {
      return v6 | v7;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    v5 = sub_31AA0C(v10);
  }

  else
  {
    v5 = sub_31A76C(v10);
  }

  v8 = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  v4 = __p;
  v7 = v8;
  if (__p)
  {
LABEL_8:
    v12 = v4;
    operator delete(v4);
  }

  return v6 | v7;
}

void sub_109CE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_109CE44@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = 0x2127599BF4325C37 * ((((v4 << 32) + (16 * v5)) | (v5 >> 29) & 2 | (v5 >> 31) | (v5 >> 27) & 4 | (v5 >> 25) & 8) ^ (((v4 << 32) + (16 * v5)) >> 23));
  v7 = (v6 ^ ~(v6 >> 47)) + ((v6 ^ (v6 >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  while (1)
  {
    v14 = v11 & v12;
    v15 = *(v13 + (v11 & v12));
    v16 = ((v15 ^ (0x101010101010101 * (v9 & 0x7F))) - 0x101010101010101) & ~(v15 ^ (0x101010101010101 * (v9 & 0x7F))) & 0x8080808080808080;
    if (v16)
    {
      break;
    }

LABEL_9:
    if ((v15 & (~v15 << 6) & 0x8080808080808080) != 0)
    {
      v24 = result;
      v26 = a3;
      v27 = sub_109D03C((result + 48 * (((BYTE1(v9) ^ BYTE2(v9)) ^ BYTE3(v9)) & 0xF)), v9);
      a3 = v26;
      v18 = v27;
      result = v24;
      v28 = v10[1] + 104 * v18;
      *v28 = *a2;
      *(v28 + 40) = 0u;
      *(v28 + 56) = 0u;
      *(v28 + 72) = 0u;
      *(v28 + 88) = 0u;
      *(v28 + 24) = 0u;
      *(v28 + 8) = 0u;
      *&v29.f64[0] = 0x8000000080000000;
      *&v29.f64[1] = 0x8000000080000000;
      v30 = vnegq_f64(v29);
      *(v28 + 48) = v30;
      *(v28 + 64) = v30;
      *(v28 + 80) = xmmword_2266550;
      *(v28 + 96) = 0x7FFFFFFF;
      v13 = *v10;
      v17 = v10[1];
      v12 = v10[3];
      v23 = 1;
      goto LABEL_13;
    }

    v3 += 8;
    v11 = v3 + v14;
  }

  v17 = v10[1];
  while (1)
  {
    v18 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v12;
    v19 = (v17 + 104 * v18);
    v21 = *v19;
    v20 = v19[1];
    if (v21 == v4 && v20 == v5)
    {
      break;
    }

    v16 &= v16 - 1;
    if (!v16)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
LABEL_13:
  *a3 = v10;
  *(a3 + 8) = result + 768;
  *(a3 + 16) = v13 + v18;
  *(a3 + 24) = v17 + 104 * v18;
  *(a3 + 32) = v13 + v12;
  *(a3 + 48) = v23;
  return result;
}

unint64_t sub_109D03C(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_109D134(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_109D134(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    v2 = (&dword_0 + 1);
LABEL_4:
    sub_109D164(a1, v2);
  }

  if (*(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    v2 = ((2 * v1) | 1);
    goto LABEL_4;
  }

  return sub_109D388(a1);
}

uint64_t sub_109D388(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_28;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_28:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 104 * i);
        v19 = *v18;
        LODWORD(v18) = v18[1];
        v20 = 0x2127599BF4325C37 * ((((v19 << 32) + 16 * v18) | (v18 >> 29) & 2 | (v18 >> 31) | (v18 >> 27) & 4 | (v18 >> 25) & 8) ^ (((v19 << 32) + 16 * v18) >> 23));
        v21 = (v20 ^ ~(v20 >> 47)) + ((v20 ^ (v20 >> 47)) << 21);
        v22 = 21 * ((265 * (v21 ^ (v21 >> 24))) ^ ((265 * (v21 ^ (v21 >> 24))) >> 14));
        v23 = 2147483649u * (v22 ^ (v22 >> 28));
        v24 = v13 & (v23 >> 7);
        v25 = *(v17->i64 + v24) & (~*(v17->i64 + v24) << 7) & 0x8080808080808080;
        if (v25)
        {
          v15 = v13 & (v23 >> 7);
        }

        else
        {
          v26 = 8;
          v15 = v13 & (v23 >> 7);
          do
          {
            v15 = (v15 + v26) & v13;
            v26 += 8;
            v25 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v25);
        }

        v16 = (v15 + (__clz(__rbit64(v25)) >> 3)) & v13;
        if ((((v16 - v24) ^ (i - v24)) & v13) > 7)
        {
          v27 = v17->u8[v16];
          v17->i8[v16] = v23 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v23 & 0x7F;
          v28 = *(result + 8);
          if (v27 == 128)
          {
            v29 = v28 + 104 * v16;
            v30 = (v28 + 104 * i);
            v31 = *v30;
            v32 = v30[2];
            *(v29 + 16) = v30[1];
            *(v29 + 32) = v32;
            *v29 = v31;
            v33 = v30[3];
            v34 = v30[4];
            v35 = v30[5];
            *(v29 + 96) = *(v30 + 12);
            *(v29 + 64) = v34;
            *(v29 + 80) = v35;
            *(v29 + 48) = v33;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v36 = (v28 + 104 * i);
            v51 = v36[4];
            v52 = v36[5];
            v53 = *(v36 + 12);
            v47 = *v36;
            v48 = v36[1];
            v49 = v36[2];
            v50 = v36[3];
            v37 = (v28 + 104 * v16);
            v39 = v37[1];
            v38 = v37[2];
            *v36 = *v37;
            v36[1] = v39;
            v36[2] = v38;
            v41 = v37[4];
            v40 = v37[5];
            v42 = v37[3];
            *(v36 + 12) = *(v37 + 12);
            v36[4] = v41;
            v36[5] = v40;
            v36[3] = v42;
            v43 = *(result + 8) + 104 * v16;
            *v43 = v47;
            *(v43 + 16) = v48;
            *(v43 + 96) = v53;
            *(v43 + 64) = v51;
            *(v43 + 80) = v52;
            *(v43 + 32) = v49;
            *(v43 + 48) = v50;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v23 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v23 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v44 = i - (i >> 3);
    v45 = i == 7;
    v46 = 6;
    if (!v45)
    {
      v46 = v44;
    }
  }

  else
  {
    v46 = 0;
  }

  *(result + 40) = v46 - *(result + 16);
  return result;
}

void sub_109D72C()
{
  byte_27C15F7 = 3;
  LODWORD(qword_27C15E0) = 5136193;
  byte_27C160F = 3;
  LODWORD(qword_27C15F8) = 5136194;
  byte_27C1627 = 3;
  LODWORD(qword_27C1610) = 5136195;
  byte_27C163F = 15;
  strcpy(&qword_27C1628, "vehicle_mass_kg");
  byte_27C1657 = 21;
  strcpy(&xmmword_27C1640, "vehicle_cargo_mass_kg");
  byte_27C166F = 19;
  strcpy(&qword_27C1658, "vehicle_aux_power_w");
  byte_27C1687 = 15;
  strcpy(&qword_27C1670, "dcdc_efficiency");
  strcpy(&qword_27C1688, "drive_train_efficiency");
  HIBYTE(word_27C169E) = 22;
  operator new();
}

void sub_109D908(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C169E) < 0)
  {
    sub_21E703C();
  }

  sub_21E7048();
  _Unwind_Resume(a1);
}

uint64_t sub_109D928(uint64_t a1, uint64_t a2)
{
  v3 = sub_102E1A4(a1, a2, 0);
  *(v3 + 3944) = 0;
  *(v3 + 3948) = -1;
  *(v3 + 3956) = -1;
  v5.n128_u64[0] = 0;
  v5.n128_u64[1] = &off_2669FE0;
  sub_434934((v3 + 3968), &v5);
  return a1;
}

void sub_109D998(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, void *a8@<X8>)
{
  sub_109DA78(a1, a2, a3, a4, a5, a6, a7, 0, &__p);
  sub_109E95C(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_109DA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

void sub_109DA78(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, void *a9@<X8>)
{
  *(a1 + 3944) = 0;
  v12 = *(a1 + 3992);
  v13 = *(a1 + 3984);
  while (v12 != v13)
  {
    if (*(v12 - 1) < 0)
    {
      operator delete(*(v12 - 24));
    }

    v12 -= 32;
  }

  v79 = a4;
  *(a1 + 3992) = v13;
  __p[0] = 0;
  __p[1] = 0;
  locale = 0;
  v14 = a2[1];
  if (v14 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v102 = a2[3];
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v15 = a3[1] - *a3;
  if (!v15)
  {
LABEL_100:
    v103[0] = 0;
    v103[1] = 0;
    v104.__locale_ = 0;
    v70 = v79[1];
    if (v70 != *v79)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - *v79) >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    v105[0] = v79[3];
    v94 = 0;
    v95 = 0;
    v93 = 0;
    __dst = &v93;
    LOBYTE(v91) = 0;
    operator new();
  }

  v16 = 0;
  v85 = v15 >> 5;
  v86 = a1;
  while (1)
  {
    ++v96;
    v17 = (*a3 + 32 * v16);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (a8 != 2)
    {
      v20 = *v17;
      v21 = v17[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_13;
        }

        v27 = v17[3];
        v28 = v94;
        if (v94 >= v95)
        {
          v34 = v93;
          v35 = (v94 - v93) >> 5;
          v36 = v35 + 1;
          if ((v35 + 1) >> 59)
          {
            sub_1794();
          }

          v37 = v95 - v93;
          if ((v95 - v93) >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v38 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v39 = (v94 - v93) >> 5;
          v40 = (32 * v35);
          *v40 = 0;
          v40[1] = 0;
          v40[2] = 0;
          v40[3] = v27;
          v41 = &v40[-4 * v39];
          if (v34 != v28)
          {
            v42 = v34;
            v43 = v41;
            do
            {
              *v43 = *v42;
              v43[2] = v42[2];
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v43[3] = v42[3];
              v42 += 4;
              v43 += 4;
            }

            while (v42 != v28);
            do
            {
              v44 = *v34;
              if (*v34)
              {
                v34[1] = v44;
                operator delete(v44);
              }

              v34 += 4;
            }

            while (v34 != v28);
            v34 = v93;
          }

          v29 = v40 + 4;
          v93 = v41;
          v94 = v40 + 4;
          v95 = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v94 = v40 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v40[1];
          v33 = v40[2];
          if (v32 < v33)
          {
LABEL_19:
            *v32 = v31;
            v22 = *v30;
            *(v32 + 24) = *(v30 + 1);
            *(v32 + 8) = v22;
            v23 = *(v30 + 2);
            v24 = *(v30 + 3);
            v25 = *(v30 + 4);
            *(v32 + 88) = v30[10];
            *(v32 + 72) = v25;
            *(v32 + 56) = v24;
            *(v32 + 40) = v23;
            v26 = v32 + 96;
            goto LABEL_20;
          }
        }

        else
        {
          *v94 = 0;
          v28[1] = 0;
          v29 = v28 + 4;
          v28[2] = 0;
          v28[3] = v27;
          v94 = v28 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v28[1];
          v33 = v28[2];
          if (v32 < v33)
          {
            goto LABEL_19;
          }
        }

        v45 = *(v29 - 4);
        v46 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v45) >> 5) + 1;
        if (v46 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v47 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v45) >> 5);
        if (2 * v47 > v46)
        {
          v46 = 2 * v47;
        }

        if (v47 >= 0x155555555555555)
        {
          v48 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (v48 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v49 = 32 * ((v32 - v45) >> 5);
        *v49 = v31;
        v50 = *v30;
        *(v49 + 24) = *(v30 + 1);
        *(v49 + 8) = v50;
        v51 = *(v30 + 2);
        v52 = *(v30 + 3);
        v53 = *(v30 + 4);
        *(v49 + 88) = v30[10];
        *(v49 + 72) = v53;
        *(v49 + 56) = v52;
        *(v49 + 40) = v51;
        v26 = v49 + 96;
        v54 = (v49 - (v32 - v45));
        memcpy(v54, v45, v32 - v45);
        *(v29 - 4) = v54;
        *(v29 - 3) = v26;
        *(v29 - 2) = 0;
        if (v45)
        {
          operator delete(v45);
        }

LABEL_20:
        *(v29 - 3) = v26;
        v20 += 12;
      }
    }

    v94 = sub_1055A68(&v93, v17);
LABEL_13:
    v18 = sub_109EC68(v86, __p, &v93, a5, a6, a7, v98);
    if (!v18)
    {
      *(v86 + 3968) = 11;
      *(v86 + 3976) = &off_2669FE0;
      sub_109EFA8("Failed to compute a path including waypoint ", ".", v103);
      v55 = *(v86 + 3992);
      if (v55 >= *(v86 + 4000))
      {
        *(v86 + 3992) = sub_10A4308((v86 + 3984), v103);
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *v55 = 0;
        v56 = (v55 + 8);
        if (SHIBYTE(v104.__locale_) < 0)
        {
          sub_325C(v56, v103[0], v103[1]);
        }

        else
        {
          v57 = *v103;
          *(v55 + 24) = v104;
          *v56 = v57;
        }

        *(v86 + 3992) = v55 + 32;
        *(v86 + 3992) = v55 + 32;
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
LABEL_61:
          *(v86 + 4008) = v96;
          *(v86 + 4010) = v97;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_90;
          }

          sub_19594F8(v103);
          sub_D166D4((*(v86 + 3992) - 32), &__dst);
          if ((v92 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v92 & 0x80u) == 0)
          {
            v59 = v92;
          }

          else
          {
            v59 = v91;
          }

          sub_4A5C(v103, p_dst, v59);
          if (v92 < 0)
          {
            operator delete(__dst);
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
LABEL_70:
              if ((v60 & 8) == 0)
              {
                v61 = 0;
                v92 = 0;
LABEL_85:
                *(&__dst + v61) = 0;
                sub_7E854(&__dst, 3u);
                if (v92 < 0)
                {
                  operator delete(__dst);
                }

                v103[0] = *&v83;
                *(v103 + *(*&v83 - 24)) = v82;
                if (v109 < 0)
                {
                  operator delete(v108);
                }

                std::locale::~locale(&v104);
                std::ostream::~ostream();
                std::ios::~ios();
LABEL_90:
                *a9 = 0;
                a9[1] = 0;
                a9[2] = 0;
                v19 = v93;
                if (!v93)
                {
                  goto LABEL_98;
                }

LABEL_91:
                v65 = v94;
                v66 = v19;
                if (v94 != v19)
                {
                  v67 = v94;
                  do
                  {
                    v69 = *(v67 - 4);
                    v67 -= 4;
                    v68 = v69;
                    if (v69)
                    {
                      *(v65 - 3) = v68;
                      operator delete(v68);
                    }

                    v65 = v67;
                  }

                  while (v67 != v19);
                  v66 = v93;
                }

                v94 = v19;
                operator delete(v66);
                goto LABEL_98;
              }

              v62 = v105[2];
              v63 = v105;
LABEL_79:
              v64 = *v63;
              v61 = v62 - *v63;
              if (v61 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v61 >= 0x17)
              {
                operator new();
              }

              v92 = v62 - *v63;
              if (v61)
              {
                memmove(&__dst, v64, v61);
              }

              goto LABEL_85;
            }
          }

          v62 = v110;
          v63 = &v106;
          if (v110 < v107)
          {
            v110 = v107;
            v62 = v107;
            v63 = &v106;
          }

          goto LABEL_79;
        }
      }

      operator delete(v103[0]);
      goto LABEL_61;
    }

    sub_109F25C(v98[1] - 3, a8, v103);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v103;
    locale = v104.__locale_;
    v102 = v105[0];
    v19 = v93;
    if (v93)
    {
      goto LABEL_91;
    }

LABEL_98:
    if (!v18)
    {
      break;
    }

    if (++v16 == v85)
    {
      goto LABEL_100;
    }
  }

  v71 = v98[0];
  if (v98[0])
  {
    v72 = v98[1];
    v73 = v98[0];
    if (v98[1] != v98[0])
    {
      v74 = v98[1];
      do
      {
        v76 = *(v74 - 3);
        v74 -= 3;
        v75 = v76;
        if (v76)
        {
          v77 = *(v72 - 2);
          v78 = v75;
          if (v77 != v75)
          {
            do
            {
              v77 = sub_4547F0(v77 - 568);
            }

            while (v77 != v75);
            v78 = *v74;
          }

          *(v72 - 2) = v75;
          operator delete(v78);
        }

        v72 = v74;
      }

      while (v74 != v71);
      v73 = v98[0];
    }

    v98[1] = v71;
    operator delete(v73);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_109E81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a47);
  sub_109EBA4(&a39);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void sub_109E95C(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1[1];
  if (*a1 == v3 || *(v3 - 24) == *(v3 - 16))
  {

    sub_F68960(a2);
  }

  else
  {
    sub_109F57C(a1, &__p);
    v5 = sub_109F744(a1, 0);
    v6 = sub_109FB7C(&__p, 0);
    v7 = sub_109F960(v5, *v6);
    sub_49D2CC(a2, v7);
    v8 = a1[1];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
    if (v9 >= 2)
    {
      for (i = 1; i != v9; ++i)
      {
        v11 = sub_109F744(a1, i);
        v12 = sub_109FB7C(&__p, i);
        v13 = sub_109F960(v11, *v12);
        if (sub_F695B8(a2) && sub_F695B8(v13))
        {
          v14 = *sub_73F1C(a2);
          v15 = *sub_F69058(v13);
          v16 = sub_F69DE0(a2, 0);
          v17 = sub_F69DE0(v13, 0)[4];
          if (__PAIR64__(*(v16 + 18), *(v16 + 8)) != __PAIR64__(WORD2(v17), v17) || *(v16 + 38) != BYTE6(v17) || v15 <= v14)
          {
            continue;
          }
        }

        sub_F6B1A0(a2, v13);
      }

      v8 = a1[1];
    }

    v18 = sub_109F960((v8 - 24), *(v27 - 1));
    v19 = sub_F69058(v18);
    v20 = *(v19 + 16);
    v24[0] = *v19;
    v24[1] = v20;
    v21 = *(v19 + 32);
    v22 = *(v19 + 48);
    v23 = *(v19 + 64);
    v25 = *(v19 + 80);
    v24[3] = v22;
    v24[4] = v23;
    v24[2] = v21;
    sub_F6901C(a2, v24);
    if (__p)
    {
      v27 = __p;
      operator delete(__p);
    }
  }
}

void sub_109EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_4547F0(v21);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***sub_109EBA4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 3;
        v6 = v7;
        if (v7)
        {
          v8 = *(v3 - 2);
          v9 = v6;
          if (v8 != v6)
          {
            do
            {
              v8 = sub_4547F0(v8 - 568);
            }

            while (v8 != v6);
            v9 = *v5;
          }

          *(v3 - 2) = v6;
          operator delete(v9);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL sub_109EC68(uint64_t a1, void *a2, unint64_t ***a3, uint64_t a4, int a5, unsigned int a6, void ***a7)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_109F478(&v33, (a3[1] - *a3) >> 5);
  sub_1030754(a1, a2, a3, a4, 0x7FFFFFFF, 0, a5, 0x7FFFFFFF, a6, 0, 0xFFFFFFFF);
  *(a1 + 3944) += sub_1031BE8(a1);
  v32[0].n128_u64[0] = sub_1031BFC(a1);
  v32[0].n128_u64[1] = v14;
  sub_32114((a1 + 3948), v32);
  v15 = a7[1];
  if (*a7 == v15)
  {
    LODWORD(v16) = 1;
  }

  else
  {
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5) / (0x193D4BB7E327A977 * ((*(v15 - 2) - *(v15 - 3)) >> 3));
  }

  v17 = sub_10309DC(a1);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (*v17 != v19)
  {
    v20 = v34;
    do
    {
      v21 = *v18;
      if (v20 >= v35)
      {
        v22 = sub_10A49DC(&v33);
      }

      else
      {
        bzero(v20, 0x238uLL);
        sub_F68960(v20);
        *(v20 + 552) = 0x7FFFFFFFFFFFFFFFLL;
        *(v20 + 560) = -1;
        v22 = v20 + 568;
      }

      v34 = v22;
      sub_1030C24(a1, v21, v32);
      sub_49C304((v34 - 71), v32);
      sub_4547F0(v32);
      v23 = sub_10309E4(a1, v21);
      *(v34 - 2) = v23;
      v24 = sub_1030A20(a1, v21);
      v20 = v34;
      *(v34 - 2) = v24 / v16;
      ++v18;
    }

    while (v18 != v19);
  }

  v25 = a7[1];
  if (v25 >= a7[2])
  {
    v26 = sub_10A4B54(a7, &v33);
  }

  else
  {
    *v25 = 0;
    v25[1] = 0;
    v25[2] = 0;
    sub_10A4D3C(v25, v33, v34, 0x193D4BB7E327A977 * ((v34 - v33) >> 3));
    v26 = v25 + 3;
    a7[1] = v25 + 3;
  }

  a7[1] = v26;
  v27 = v33;
  v28 = v34;
  if (v33)
  {
    v29 = v33;
    if (v33 != v34)
    {
      v30 = v34;
      do
      {
        v30 = sub_4547F0(v30 - 568);
      }

      while (v30 != v27);
      v29 = v33;
    }

    v34 = v27;
    operator delete(v29);
  }

  return v27 != v28;
}

void sub_109EEEC(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_10A4F90((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_109EF54(_Unwind_Exception *a1)
{
  *(v2 - 104) = v1;
  sub_10A4F90((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_109EFA8@<X0>(const char *a1@<X0>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v15);
  v7 = strlen(a1);
  v8 = sub_4A5C(&v16, a1, v7);
  std::ostream::operator<<();
  v9 = strlen(a3);
  sub_4A5C(v8, a3, v9);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_12;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_12:
  a4[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_109F238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_109F25C(int32x2_t **a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = -1;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    if (a2 == 2)
    {
      do
      {
        v6 = sub_F69610(v4);
        LODWORD(v19) = 0;
        v20 = 0uLL;
        *(&v19 + 1) = 0;
        LOBYTE(v21) = 0;
        *(&v21 + 1) = 0x3FF0000000000000;
        LOBYTE(v22) = 1;
        *(&v22 + 1) = 0;
        *v23 = 0;
        *&v23[8] = 0;
        *&v23[10] = -29536;
        *&v23[12] = 0;
        *&v23[15] = 0;
        v7 = sub_F69058(v4);
        v9 = *(v7 + 48);
        v8 = *(v7 + 64);
        v10 = *(v7 + 32);
        *&v23[15] = *(v7 + 79);
        v22 = v9;
        *v23 = v8;
        v11 = *(v7 + 16);
        v19 = *v7;
        v20 = v11;
        v21 = v10;
        *(&v22 + 1) = vadd_s32(v4[69], *(&v22 + 8));
        *&v23[12] = 5;
        sub_1015104(a3, v6, &v19);
        LODWORD(v19) = 1000000000 - v19;
        LOBYTE(v21) = v21 ^ 1;
        if (v23[9] == 1)
        {
          if (v23[8])
          {
            v12 = 256;
          }

          else
          {
            v12 = 257;
          }

          *&v23[8] = v12;
        }

        sub_1015104(a3, v6 & 0xFFFFFFFFFFFF0003 ^ 2, &v19);
        v4 += 71;
      }

      while (v4 != v5);
    }

    else
    {
      do
      {
        v13 = sub_F69610(v4);
        LODWORD(v19) = 0;
        v20 = 0uLL;
        *(&v19 + 1) = 0;
        LOBYTE(v21) = 0;
        *(&v21 + 1) = 0x3FF0000000000000;
        LOBYTE(v22) = 1;
        *(&v22 + 1) = 0;
        *v23 = 0;
        *&v23[8] = 0;
        *&v23[10] = -29536;
        *&v23[12] = 0;
        *&v23[15] = 0;
        v14 = sub_F69058(v4);
        v16 = *(v14 + 48);
        v15 = *(v14 + 64);
        v17 = *(v14 + 32);
        *&v23[15] = *(v14 + 79);
        v22 = v16;
        *v23 = v15;
        v18 = *(v14 + 16);
        v19 = *v14;
        v20 = v18;
        v21 = v17;
        *(&v22 + 1) = vadd_s32(v4[69], *(&v22 + 8));
        *&v23[12] = 5;
        sub_1015104(a3, v13, &v19);
        v4 += 71;
      }

      while (v4 != v5);
    }
  }
}

void sub_109F450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_109F478(void *a1, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x73615A240E6C2CLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_109F568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10A4988(va);
  _Unwind_Resume(a1);
}

void sub_109F57C(void *a1@<X1>, char **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = -1431655765 * ((a1[1] - *a1) >> 3) - 1;
  if ((v3 & 0x80000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = a2[2];
      if (v5 >= v7)
      {
        v8 = v5;
        v9 = v5 >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v7 >> 1 > v10)
        {
          v10 = v7 >> 1;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          if (!(v11 >> 62))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        v12 = (4 * v9);
        *v12 = v6;
        v5 = (v12 + 1);
        memcpy(0, 0, v8);
        a2[1] = v5;
        a2[2] = 0;
      }

      else
      {
        *v5 = v6;
        v5 += 4;
      }

      a2[1] = v5;
      v13 = sub_109F744(a1, v3);
      LODWORD(v6) = *(sub_109F960(v13, v6) + 560);
    }

    while (v6 != -1 && v3-- > 0);
    *a2 = 0;
    if (v5)
    {
      v15 = (v5 - 4);
      if (v5 != 4)
      {
        v16 = 4;
        do
        {
          v17 = *(v16 - 4);
          *(v16 - 4) = *v15;
          *v15 = v17;
          v15 -= 4;
          v18 = v16 >= v15;
          v16 += 4;
        }

        while (!v18);
      }
    }
  }
}

void sub_109F71C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_109F744(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_109F880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_109F960(void *a1, unint64_t a2)
{
  if (0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, 0x193D4BB7E327A977 * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 568 * a2;
}

void sub_109FA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

unint64_t sub_109FB7C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(&v16, ",size=", &v15);
    std::to_string(&v13, (a1[1] - *a1) >> 2);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 4 * a2;
}

void sub_109FC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_109FD78(uint64_t a1, uint64_t a2)
{
  v3 = sub_103A224(a1, a2, 0);
  *(v3 + 3944) = 0;
  *(v3 + 3948) = -1;
  *(v3 + 3956) = -1;
  v5.n128_u64[0] = 0;
  v5.n128_u64[1] = &off_2669FE0;
  sub_434934((v3 + 3968), &v5);
  return a1;
}

void sub_109FDE8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, void *a8@<X8>)
{
  sub_109FEC8(a1, a2, a3, a4, a5, a6, a7, 0, &__p);
  sub_10A0DA8(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_109FEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}

void sub_109FEC8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, void *a9@<X8>)
{
  *(a1 + 3944) = 0;
  v12 = *(a1 + 3992);
  v13 = *(a1 + 3984);
  while (v12 != v13)
  {
    if (*(v12 - 1) < 0)
    {
      operator delete(*(v12 - 24));
    }

    v12 -= 32;
  }

  v79 = a4;
  *(a1 + 3992) = v13;
  __p[0] = 0;
  __p[1] = 0;
  locale = 0;
  v14 = a2[1];
  if (v14 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - *a2) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v102 = a2[3];
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v15 = a3[1] - *a3;
  if (!v15)
  {
LABEL_100:
    v103[0] = 0;
    v103[1] = 0;
    v104.__locale_ = 0;
    v70 = v79[1];
    if (v70 != *v79)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v70 - *v79) >> 5) <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1794();
    }

    v105[0] = v79[3];
    v94 = 0;
    v95 = 0;
    v93 = 0;
    __dst = &v93;
    LOBYTE(v91) = 0;
    operator new();
  }

  v16 = 0;
  v85 = v15 >> 5;
  v86 = a1;
  while (1)
  {
    ++v96;
    v17 = (*a3 + 32 * v16);
    v93 = 0;
    v94 = 0;
    v95 = 0;
    if (a8 != 2)
    {
      v20 = *v17;
      v21 = v17[1];
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_13;
        }

        v27 = v17[3];
        v28 = v94;
        if (v94 >= v95)
        {
          v34 = v93;
          v35 = (v94 - v93) >> 5;
          v36 = v35 + 1;
          if ((v35 + 1) >> 59)
          {
            sub_1794();
          }

          v37 = v95 - v93;
          if ((v95 - v93) >> 4 > v36)
          {
            v36 = v37 >> 4;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFE0)
          {
            v38 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            if (!(v38 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v39 = (v94 - v93) >> 5;
          v40 = (32 * v35);
          *v40 = 0;
          v40[1] = 0;
          v40[2] = 0;
          v40[3] = v27;
          v41 = &v40[-4 * v39];
          if (v34 != v28)
          {
            v42 = v34;
            v43 = v41;
            do
            {
              *v43 = *v42;
              v43[2] = v42[2];
              *v42 = 0;
              v42[1] = 0;
              v42[2] = 0;
              v43[3] = v42[3];
              v42 += 4;
              v43 += 4;
            }

            while (v42 != v28);
            do
            {
              v44 = *v34;
              if (*v34)
              {
                v34[1] = v44;
                operator delete(v44);
              }

              v34 += 4;
            }

            while (v34 != v28);
            v34 = v93;
          }

          v29 = v40 + 4;
          v93 = v41;
          v94 = v40 + 4;
          v95 = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v94 = v40 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v40[1];
          v33 = v40[2];
          if (v32 < v33)
          {
LABEL_19:
            *v32 = v31;
            v22 = *v30;
            *(v32 + 24) = *(v30 + 1);
            *(v32 + 8) = v22;
            v23 = *(v30 + 2);
            v24 = *(v30 + 3);
            v25 = *(v30 + 4);
            *(v32 + 88) = v30[10];
            *(v32 + 72) = v25;
            *(v32 + 56) = v24;
            *(v32 + 40) = v23;
            v26 = v32 + 96;
            goto LABEL_20;
          }
        }

        else
        {
          *v94 = 0;
          v28[1] = 0;
          v29 = v28 + 4;
          v28[2] = 0;
          v28[3] = v27;
          v94 = v28 + 4;
          v30 = v20 + 1;
          v31 = *v20;
          v32 = v28[1];
          v33 = v28[2];
          if (v32 < v33)
          {
            goto LABEL_19;
          }
        }

        v45 = *(v29 - 4);
        v46 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v45) >> 5) + 1;
        if (v46 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v47 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v45) >> 5);
        if (2 * v47 > v46)
        {
          v46 = 2 * v47;
        }

        if (v47 >= 0x155555555555555)
        {
          v48 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          if (v48 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v49 = 32 * ((v32 - v45) >> 5);
        *v49 = v31;
        v50 = *v30;
        *(v49 + 24) = *(v30 + 1);
        *(v49 + 8) = v50;
        v51 = *(v30 + 2);
        v52 = *(v30 + 3);
        v53 = *(v30 + 4);
        *(v49 + 88) = v30[10];
        *(v49 + 72) = v53;
        *(v49 + 56) = v52;
        *(v49 + 40) = v51;
        v26 = v49 + 96;
        v54 = (v49 - (v32 - v45));
        memcpy(v54, v45, v32 - v45);
        *(v29 - 4) = v54;
        *(v29 - 3) = v26;
        *(v29 - 2) = 0;
        if (v45)
        {
          operator delete(v45);
        }

LABEL_20:
        *(v29 - 3) = v26;
        v20 += 12;
      }
    }

    v94 = sub_1055A68(&v93, v17);
LABEL_13:
    v18 = sub_10A14C8(v86, __p, &v93, a5, a6, a7, v98);
    if (!v18)
    {
      *(v86 + 3968) = 11;
      *(v86 + 3976) = &off_2669FE0;
      sub_109EFA8("Failed to compute a path including waypoint ", ".", v103);
      v55 = *(v86 + 3992);
      if (v55 >= *(v86 + 4000))
      {
        *(v86 + 3992) = sub_10A4308((v86 + 3984), v103);
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *v55 = 0;
        v56 = (v55 + 8);
        if (SHIBYTE(v104.__locale_) < 0)
        {
          sub_325C(v56, v103[0], v103[1]);
        }

        else
        {
          v57 = *v103;
          *(v55 + 24) = v104;
          *v56 = v57;
        }

        *(v86 + 3992) = v55 + 32;
        *(v86 + 3992) = v55 + 32;
        if ((SHIBYTE(v104.__locale_) & 0x80000000) == 0)
        {
LABEL_61:
          *(v86 + 4008) = v96;
          *(v86 + 4010) = v97;
          if (!sub_7E7E4(3u))
          {
            goto LABEL_90;
          }

          sub_19594F8(v103);
          sub_D166D4((*(v86 + 3992) - 32), &__dst);
          if ((v92 & 0x80u) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if ((v92 & 0x80u) == 0)
          {
            v59 = v92;
          }

          else
          {
            v59 = v91;
          }

          sub_4A5C(v103, p_dst, v59);
          if (v92 < 0)
          {
            operator delete(__dst);
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
              goto LABEL_70;
            }
          }

          else
          {
            v60 = v111;
            if ((v111 & 0x10) == 0)
            {
LABEL_70:
              if ((v60 & 8) == 0)
              {
                v61 = 0;
                v92 = 0;
LABEL_85:
                *(&__dst + v61) = 0;
                sub_7E854(&__dst, 3u);
                if (v92 < 0)
                {
                  operator delete(__dst);
                }

                v103[0] = *&v83;
                *(v103 + *(*&v83 - 24)) = v82;
                if (v109 < 0)
                {
                  operator delete(v108);
                }

                std::locale::~locale(&v104);
                std::ostream::~ostream();
                std::ios::~ios();
LABEL_90:
                *a9 = 0;
                a9[1] = 0;
                a9[2] = 0;
                v19 = v93;
                if (!v93)
                {
                  goto LABEL_98;
                }

LABEL_91:
                v65 = v94;
                v66 = v19;
                if (v94 != v19)
                {
                  v67 = v94;
                  do
                  {
                    v69 = *(v67 - 4);
                    v67 -= 4;
                    v68 = v69;
                    if (v69)
                    {
                      *(v65 - 3) = v68;
                      operator delete(v68);
                    }

                    v65 = v67;
                  }

                  while (v67 != v19);
                  v66 = v93;
                }

                v94 = v19;
                operator delete(v66);
                goto LABEL_98;
              }

              v62 = v105[2];
              v63 = v105;
LABEL_79:
              v64 = *v63;
              v61 = v62 - *v63;
              if (v61 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v61 >= 0x17)
              {
                operator new();
              }

              v92 = v62 - *v63;
              if (v61)
              {
                memmove(&__dst, v64, v61);
              }

              goto LABEL_85;
            }
          }

          v62 = v110;
          v63 = &v106;
          if (v110 < v107)
          {
            v110 = v107;
            v62 = v107;
            v63 = &v106;
          }

          goto LABEL_79;
        }
      }

      operator delete(v103[0]);
      goto LABEL_61;
    }

    sub_10A1808(v98[1] - 3, a8, v103);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = *v103;
    locale = v104.__locale_;
    v102 = v105[0];
    v19 = v93;
    if (v93)
    {
      goto LABEL_91;
    }

LABEL_98:
    if (!v18)
    {
      break;
    }

    if (++v16 == v85)
    {
      goto LABEL_100;
    }
  }

  v71 = v98[0];
  if (v98[0])
  {
    v72 = v98[1];
    v73 = v98[0];
    if (v98[1] != v98[0])
    {
      v74 = v98[1];
      do
      {
        v76 = *(v74 - 3);
        v74 -= 3;
        v75 = v76;
        if (v76)
        {
          v77 = *(v72 - 2);
          v78 = v75;
          if (v77 != v75)
          {
            do
            {
              v77 = sub_4547F0(v77 - 568);
            }

            while (v77 != v75);
            v78 = *v74;
          }

          *(v72 - 2) = v75;
          operator delete(v78);
        }

        v72 = v74;
      }

      while (v74 != v71);
      v73 = v98[0];
    }

    v98[1] = v71;
    operator delete(v73);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10A0C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void **a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a47);
  sub_109EBA4(&a39);
  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  _Unwind_Resume(a1);
}

void sub_10A0DA8(void *a1@<X1>, void *a2@<X8>)
{
  v4 = a1[1];
  if (*a1 == v4 || *(v4 - 24) == *(v4 - 16))
  {

    sub_F6BEE8(a2);
  }

  else
  {
    sub_10A1A94(a1, &v47);
    v6 = sub_10A1C5C(a1, 0);
    v7 = sub_109FB7C(&v47, 0);
    v8 = sub_10A1E78(v6, *v7);
    sub_49EA74(a2, v8);
    v9 = a1[1];
    v41 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 3);
    if (v41 >= 2)
    {
      for (i = 1; i != v41; ++i)
      {
        v11 = sub_10A1C5C(a1, i);
        v12 = sub_109FB7C(&v47, i);
        v13 = sub_10A1E78(v11, *v12);
        v14 = sub_F6C7D0(a2);
        v15 = sub_F6C788(v13);
        v16 = ((v15 ^ v14) >> 1) & 1;
        if (WORD1(v14) != WORD1(v15))
        {
          LODWORD(v16) = 0;
        }

        if ((v15 ^ v14) >> 32)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        if (sub_F695B8(a2) && sub_F695B8(v13))
        {
          v18 = *sub_73F1C(a2);
          v19 = sub_F69058(v13);
          if ((v17 & 1) == 0)
          {
            v32 = *v19;
            v33 = sub_F6D17C(a2, 0);
            v34 = sub_F6D17C(v13, 0)[4];
            if (__PAIR64__(*(v33 + 18), *(v33 + 8)) != __PAIR64__(WORD2(v34), v34) || *(v33 + 38) != BYTE6(v34) || v32 <= v18)
            {
              continue;
            }
          }
        }

        if (((sub_F69D6C(a2) | v17 ^ 1) & 1) == 0)
        {
          v20 = sub_F6C814(a2);
          v21 = sub_F69654(v13);
          v22 = sub_F6C7D0(a2);
          v23 = sub_F6C788(v13);
          v24 = sub_F6C7D0(a2);
          v25 = sub_F6C788(v13);
          v2 = v2 & 0xFFFF8000 | 0x280;
          v26 = *v20;
          v27 = *(v20 + 16);
          *v44 = *(v20 + 32);
          v42 = v26;
          v43 = v27;
          v28 = *(v21 + 32);
          v29 = *(v21 + 16);
          *&v44[8] = *v21;
          *&v44[40] = v28;
          *&v44[24] = v29;
          LODWORD(v45) = (v23 << 14) & 0x3FFF0000 | (v22 >> 2);
          HIDWORD(v45) = v2 & 0xFF80;
          v46 = v24 & 1 | (2 * (v25 & 1)) | v46 & 0x80;
          sub_F6C3B8(a2, &v42, 0);
        }

        if (sub_F695B8(a2) && !sub_F695B8(v13))
        {
          sub_F687F4(a2);
        }

        v30 = sub_5FC64(v13);
        v31 = sub_445EF4(v13);
        sub_F6DCCC(a2, v30, v31);
      }

      v9 = a1[1];
    }

    v35 = sub_10A1E78((v9 - 24), *(v48 - 1));
    v36 = sub_F69058(v35);
    v37 = *(v36 + 16);
    v42 = *v36;
    v43 = v37;
    v38 = *(v36 + 32);
    v39 = *(v36 + 48);
    v40 = *(v36 + 64);
    v45 = *(v36 + 80);
    *&v44[16] = v39;
    *&v44[32] = v40;
    *v44 = v38;
    sub_F6901C(a2, &v42);
    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }
}

void sub_10A1100(_Unwind_Exception *a1)
{
  sub_4547F0(v1);
  v4 = *(v2 - 104);
  if (v4)
  {
    *(v2 - 96) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10A115C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, unsigned int a7@<W6>, std::string *a8@<X8>)
{
  sub_109FEC8(a1, a2, a3, a4, a5, a6, a7, 1, &__p);
  sub_10A123C(&__p, a8);
  v9 = __p;
  if (__p)
  {
    v10 = v18;
    v11 = __p;
    if (v18 != __p)
    {
      v12 = v18;
      do
      {
        v14 = *(v12 - 3);
        v12 -= 3;
        v13 = v14;
        if (v14)
        {
          v15 = *(v10 - 2);
          v16 = v13;
          if (v15 != v13)
          {
            do
            {
              v15 = sub_4547F0(v15 - 568);
            }

            while (v15 != v13);
            v16 = *v12;
          }

          *(v10 - 2) = v13;
          operator delete(v16);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = __p;
    }

    v18 = v9;
    operator delete(v11);
  }
}

void sub_10A1228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_109EBA4(va);
  _Unwind_Resume(a1);
}