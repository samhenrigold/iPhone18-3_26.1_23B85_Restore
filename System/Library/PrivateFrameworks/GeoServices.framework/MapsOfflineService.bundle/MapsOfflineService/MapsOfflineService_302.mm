unint64_t sub_124A4BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F2F1C(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_124A5E8(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_124B5DC(v8, __p, 0, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_124A700(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_124B5DC(v10, __p, a4, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

uint64_t *sub_124A824(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a1;
  if (a4)
  {
    v13 = *a4;
  }

  else
  {
    v13 = 50331648;
  }

  v14 = a2[1];
  v96 = *a2;
  v101 = v13;
  *a5 = a6;
  if (a6 <= a7)
  {
    v99 = v14;
    while (1)
    {
      switch(a6)
      {
        case 1:
          v17 = sub_1249218(v12, a2, &v101);
          goto LABEL_172;
        case 2:
          v17 = sub_1236DD0(v12, a2, &v101);
          goto LABEL_172;
        case 3:
          if (!v9)
          {
            goto LABEL_179;
          }

          v17 = sub_1236F58(v12, a2, v9[5]);
          goto LABEL_172;
        case 4:
          if (!v9)
          {
            goto LABEL_179;
          }

          v55 = *(v9 + 1);
          if (!v55 || !*(v55 + 40))
          {
            goto LABEL_179;
          }

          v56 = sub_1234220(v55);
          v17 = sub_1236FB0(v12, a2, v56);
          goto LABEL_172;
        case 5:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v36 = sub_1237028(&v101);
          if ((v9[4] & 2) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v38 = *v36;
          v92 = v36[1];
          if (*v36 == v92)
          {
            goto LABEL_173;
          }

          v39 = 0.0;
          v40 = v37;
          do
          {
            if ((v38[2] & 2) != 0)
            {
              v41 = *v38;
              v102 = *v38;
              v43 = *a1;
              v42 = a1[1];
              while (v43 != v42)
              {
                if (*(v43[1] + 8) == *(v41 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v44 = i[1];
                    if (*v41 == *v44 && *(v41 + 8) == *(v44 + 8))
                    {
                      v103 = i[1];
                      v45 = sub_12374D8(&v102);
                      if (v45 > v39)
                      {
                        v40 = i;
                        v39 = v45;
                        if (v45 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v40;
                  v40 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v43 += 2;
              }
            }

            v38 += 3;
            i = v40;
          }

          while (v38 != v92);
          goto LABEL_174;
        case 6:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v67 = sub_1237028(&v101);
          if ((v9[4] & 4) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v68 = *v67;
          v94 = v67[1];
          if (*v67 == v94)
          {
            goto LABEL_173;
          }

          v69 = 0.0;
          v70 = v37;
          do
          {
            if ((v68[2] & 4) != 0)
            {
              v71 = *v68;
              v102 = *v68;
              v73 = *a1;
              v72 = a1[1];
              while (v73 != v72)
              {
                if (*(v73[1] + 8) == *(v71 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v74 = i[1];
                    if (*v71 == *v74 && *(v71 + 8) == *(v74 + 8))
                    {
                      v103 = i[1];
                      v75 = sub_12374D8(&v102);
                      if (v75 > v69)
                      {
                        v70 = i;
                        v69 = v75;
                        if (v75 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v70;
                  v70 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v73 += 2;
              }
            }

            v68 += 3;
            i = v70;
          }

          while (v68 != v94);
          goto LABEL_174;
        case 7:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v83 = sub_1237028(&v101);
          if ((v9[4] & 8) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v84 = *v83;
          v95 = v83[1];
          if (*v83 == v95)
          {
            goto LABEL_173;
          }

          v85 = 0.0;
          v86 = v37;
          do
          {
            if ((v84[2] & 8) != 0)
            {
              v87 = *v84;
              v102 = *v84;
              v89 = *a1;
              v88 = a1[1];
              while (v89 != v88)
              {
                if (*(v89[1] + 8) == *(v87 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v90 = i[1];
                    if (*v87 == *v90 && *(v87 + 8) == *(v90 + 8))
                    {
                      v103 = i[1];
                      v91 = sub_12374D8(&v102);
                      if (v91 > v85)
                      {
                        v86 = i;
                        v85 = v91;
                        if (v91 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v86;
                  v86 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v89 += 2;
              }
            }

            v84 += 3;
            i = v86;
          }

          while (v84 != v95);
LABEL_174:
          v10 = a3;
          v9 = a4;
          goto LABEL_176;
        case 8:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v57 = sub_1237028(&v101);
          if ((v9[4] & 1) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v58 = *v57;
          v93 = v57[1];
          if (*v57 == v93)
          {
LABEL_173:
            i = v37;
            goto LABEL_174;
          }

          v59 = 0.0;
          v60 = v37;
          while (2)
          {
            v61 = *(v58 + 4);
            if ((v61 & 0xF) == 0)
            {
              goto LABEL_113;
            }

            v62 = *v58;
            if (v61 == 1 && v58[1] <= 0.5)
            {
              goto LABEL_113;
            }

            v102 = *v58;
            v64 = *a1;
            v63 = a1[1];
LABEL_102:
            if (v64 == v63)
            {
LABEL_113:
              v58 += 3;
              i = v60;
              if (v58 == v93)
              {
                goto LABEL_174;
              }

              continue;
            }

            break;
          }

          if (*(v64[1] + 8) != *(v62 + 8))
          {
            goto LABEL_112;
          }

          for (i = *a2; ; i += 2)
          {
            if (i == v37)
            {
              i = v60;
              v60 = v37;
              if (i != v37)
              {
                goto LABEL_174;
              }

LABEL_112:
              v64 += 2;
              goto LABEL_102;
            }

            v65 = i[1];
            if (*v62 == *v65 && *(v62 + 8) == *(v65 + 8))
            {
              v103 = i[1];
              v66 = sub_12374D8(&v102);
              if (v66 > v59)
              {
                v60 = i;
                v59 = v66;
                if (v66 >= 1.0)
                {
                  break;
                }
              }
            }

            v37 = a2[1];
          }

          goto LABEL_174;
        case 9:
          v17 = sub_12370B4(v12, a2);
          goto LABEL_172;
        case 10:
          v17 = sub_12372C0(v12, a2);
          goto LABEL_172;
        case 11:
          v17 = sub_1237370(v12, a2);
          goto LABEL_172;
        case 12:
          if (!v9)
          {
            goto LABEL_179;
          }

          v35 = v9[5];
          if ((v35 & 0x80000000) != 0 || v35 >= ((a2[1] - *a2) >> 4))
          {
            goto LABEL_179;
          }

          i = &v96[2 * v35];
          goto LABEL_178;
        case 13:
          if (!v9)
          {
            goto LABEL_179;
          }

          v46 = *(v9 + 1);
          if (!v46 || !*(v46 + 40))
          {
            goto LABEL_179;
          }

          v47 = sub_1234220(v46);
          v17 = sub_124B240(a2, v47, &v101);
LABEL_172:
          i = v17;
          goto LABEL_178;
        case 14:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v76 = sub_1237028(&v101);
          if ((v9[4] & 2) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v77 = *v76;
          v78 = v76[1];
          if (*v76 == v78)
          {
            goto LABEL_175;
          }

          v79 = 0.0;
          v80 = v28;
          do
          {
            if ((v77[16] & 2) != 0)
            {
              v102 = *v77;
              for (i = *a2; i != v28; i += 2)
              {
                v81 = **v77;
                if (v81 == *i[1])
                {
                  if (v81 == 16802154)
                  {
                    v79 = 100.0;
                    v80 = i;
                    break;
                  }

                  v103 = i[1];
                  v82 = sub_12374D8(&v102);
                  if (v82 > v79)
                  {
                    v80 = i;
                    v79 = v82;
                    if (v82 >= 1.0)
                    {
                      goto LABEL_176;
                    }
                  }
                }

                v28 = a2[1];
              }

              i = v80;
              v80 = v28;
              if (i != v28)
              {
                break;
              }
            }

            v77 += 24;
            i = v80;
          }

          while (v77 != v78);
          goto LABEL_176;
        case 15:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v27 = sub_1237028(&v101);
          if ((v9[4] & 4) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v29 = *v27;
          v30 = v27[1];
          if (*v27 == v30)
          {
            goto LABEL_175;
          }

          v31 = 0.0;
          v32 = v28;
          break;
        case 16:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v48 = sub_1237028(&v101);
          if ((v9[4] & 8) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v49 = *v48;
          v50 = v48[1];
          if (*v48 == v50)
          {
LABEL_175:
            i = v28;
            goto LABEL_176;
          }

          v51 = 0.0;
          v52 = v28;
          while (2)
          {
            if ((v49[16] & 8) == 0)
            {
              goto LABEL_88;
            }

            v102 = *v49;
            i = *a2;
LABEL_80:
            if (i == v28)
            {
              goto LABEL_87;
            }

            v53 = **v49;
            if (v53 != *i[1])
            {
              goto LABEL_85;
            }

            if (v53 == 16802154)
            {
              v51 = 100.0;
              v52 = i;
LABEL_87:
              i = v52;
              v52 = v28;
              if (i != v28)
              {
                goto LABEL_176;
              }

LABEL_88:
              v49 += 24;
              i = v52;
              if (v49 == v50)
              {
                goto LABEL_176;
              }

              continue;
            }

            break;
          }

          v103 = i[1];
          v54 = sub_12374D8(&v102);
          if (v54 <= v51 || (v52 = i, v51 = v54, v54 < 1.0))
          {
LABEL_85:
            i += 2;
            v28 = a2[1];
            goto LABEL_80;
          }

          goto LABEL_176;
        case 17:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v18 = sub_1237028(&v101);
          if ((v9[4] & 1) == 0)
          {
            goto LABEL_179;
          }

          v19 = a2[1];
          v103 = 0;
          v20 = *v18;
          v21 = v18[1];
          if (*v18 == v21)
          {
            i = v19;
            goto LABEL_182;
          }

          v22 = 0.0;
          v23 = v19;
          while (2)
          {
            v24 = *(v20 + 4);
            if ((v24 & 0xF) == 0 || v24 == 1 && v20[1] <= 0.5)
            {
              goto LABEL_26;
            }

            v102 = *v20;
            i = *a2;
LABEL_18:
            if (i == v19)
            {
              goto LABEL_25;
            }

            v25 = **v20;
            if (v25 != *i[1])
            {
              goto LABEL_23;
            }

            if (v25 == 16802154)
            {
              v22 = 100.0;
              v23 = i;
LABEL_25:
              i = v23;
              v23 = v19;
              if (i != v19)
              {
                goto LABEL_182;
              }

LABEL_26:
              v20 += 3;
              i = v23;
              if (v20 == v21)
              {
                goto LABEL_182;
              }

              continue;
            }

            break;
          }

          v103 = i[1];
          v26 = sub_12374D8(&v102);
          if (v26 <= v22 || (v23 = i, v22 = v26, v26 < 1.0))
          {
LABEL_23:
            i += 2;
            v19 = a2[1];
            goto LABEL_18;
          }

LABEL_182:
          v9 = a4;
          goto LABEL_177;
        default:
          goto LABEL_179;
      }

      do
      {
        if ((v29[16] & 4) != 0)
        {
          v102 = *v29;
          for (i = *a2; i != v28; i += 2)
          {
            v33 = **v29;
            if (v33 == *i[1])
            {
              if (v33 == 16802154)
              {
                v31 = 100.0;
                v32 = i;
                break;
              }

              v103 = i[1];
              v34 = sub_12374D8(&v102);
              if (v34 > v31)
              {
                v32 = i;
                v31 = v34;
                if (v34 >= 1.0)
                {
                  goto LABEL_176;
                }
              }
            }

            v28 = a2[1];
          }

          i = v32;
          v32 = v28;
          if (i != v28)
          {
            break;
          }
        }

        v29 += 24;
        i = v32;
      }

      while (v29 != v30);
LABEL_176:
      v12 = a1;
LABEL_177:
      v14 = v99;
LABEL_178:
      if (i != v14)
      {
        break;
      }

LABEL_179:
      LOBYTE(a6) = *a5 + 1;
      *a5 = a6;
      if (a7 < a6)
      {
        goto LABEL_5;
      }
    }

    *v10 = *a5 > 9u;
  }

  else
  {
LABEL_5:
    *v10 = 1;
    *a5 = 0;
    return v14;
  }

  return i;
}

uint64_t *sub_124B240(uint64_t **a1, uint64_t a2, int *a3)
{
  *&v10 = a2;
  *(&v10 + 1) = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, &v10, &v11, 1uLL);
  v5 = sub_1249218(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_124B2F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t *sub_124B304(uint64_t **a1, uint64_t **a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
{
  __p = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_1239DB8(&__p, 0);
  sub_123A1D4(&v46, 0);
  sub_123A204(&__p, a3[1] - *a3);
  sub_123A2A4(&v46, a3[1] - *a3);
  v40 = a6;
  v41 = a7;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = *a2;
    v13 = (a2[1] - *a2) >> 4;
    do
    {
      v14 = *v10;
      if ((v14 & 0x80000000) == 0 && v14 < v13)
      {
        v15 = &v12[2 * v14];
        v16 = v50;
        if (v50 >= v51)
        {
          v18 = (v50 - __p) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_1794();
          }

          v20 = v51 - __p;
          if ((v51 - __p) >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_12395E8(&__p, v21);
          }

          v22 = (16 * v18);
          *v22 = *v15;
          v17 = 16 * v18 + 16;
          v23 = v22 - (v50 - __p);
          memcpy(v23, __p, v50 - __p);
          v24 = __p;
          __p = v23;
          v50 = v17;
          v51 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v50 = *v15;
          v17 = (v16 + 16);
        }

        v50 = v17;
        v25 = v47;
        if (v47 >= v48)
        {
          v27 = (v47 - v46) >> 3;
          if ((v27 + 1) >> 61)
          {
            sub_1794();
          }

          v28 = (v48 - v46) >> 2;
          if (v28 <= v27 + 1)
          {
            v28 = v27 + 1;
          }

          if (v48 - v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            sub_122422C(&v46, v29);
          }

          v30 = (8 * v27);
          *v30 = v15;
          v26 = 8 * v27 + 8;
          v31 = v30 - (v47 - v46);
          memcpy(v31, v46, v47 - v46);
          v32 = v46;
          v46 = v31;
          v47 = v26;
          v48 = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v47 = v15;
          v26 = (v25 + 8);
        }

        v47 = v26;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v33 = __p;
  v34 = v50;
  v35 = sub_1249218(a1, &__p, a5);
  if (v34 != v35)
  {
    *a4 = 0;
    v36 = v35 - v33;
    v37 = v46;
    v38 = *(v46 + (v36 >> 1));
LABEL_33:
    v47 = v37;
    operator delete(v37);
    goto LABEL_34;
  }

  v38 = sub_124A824(a1, a2, a4, a5, v40, 1u, v41);
  *a4 = 1;
  v37 = v46;
  if (v46)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  return v38;
}

void sub_124B5DC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_124A824(a1, &__p, &v54, v51, &v53, v53, 1u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_124BA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_124BAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124BBE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124BD04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124BE1C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124BF34(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124C088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124C1A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124C2CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124C3E4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124C4FC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124C650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124C770(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124C894(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124C9AC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124CAC4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124CC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124CD38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124CE5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124CF74(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124D08C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124D1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124D300(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124D424(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124D53C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124D654(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124D7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124D8C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124D9EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124DB04(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124DC1C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124DE90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124DFB4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124E0CC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124E1E4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124E458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124E57C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124E694(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124E7AC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124E900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124EA20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124EB44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124EC5C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124ED74(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124EFE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124F10C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124F224(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124F33C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124F490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124F5B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124F6D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124F7EC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124F904(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_124FA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_124FB78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_124FC9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_124FDB4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_124FECC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1250020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1250140(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1250264(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125037C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1250494(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12505E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1250708(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125082C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1250944(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1250A5C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1250BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1250CD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1250DF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1250F0C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1251024(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1251178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1251298(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12513BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12514D4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12515EC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1251740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1251860(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1251984(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1251A9C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1251BB4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1251D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1251E28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1251F4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1252064(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125217C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12522D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12523F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1252514(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125262C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1252744(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1252898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12529B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1252ADC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1252BF4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1252D0C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1252E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1252F80(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12530A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12531BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12532D4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1253428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1253548(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125366C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1253784(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125389C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12539F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1253B10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1253C34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1253D4C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1253E64(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1253FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12540D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12541FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1254314(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125442C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1254580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12546A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12547C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12548DC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12549F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1254B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1254C68(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1254D8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1254EA4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1254FBC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1255110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1255230(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1255354(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125546C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1255584(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12556D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12557F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125591C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1255A34(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1255B4C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1255CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1255DC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1255EE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1255FFC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1256114(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1256268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1256388(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12564AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12565C4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12566DC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1256830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1256950(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1256A74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F3024(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_1256BA0(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_1256DDC(v8, __p, 0, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_1256CB8(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_1256DDC(v10, __p, a4, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void sub_1256DDC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_1236040(a1, &__p, &v54, v51, &v53, v53, 0x11u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_125723C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_12572C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12573E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1257504(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F312C(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_1257630(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_125786C(v8, __p, 0, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_1257748(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_125786C(v10, __p, a4, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void sub_125786C(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_123AF04(a1, &__p, &v54, v51, &v53, v53, 0x11u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_1257CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1257D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1257E70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1257F94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12580AC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12581C4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1258318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1258438(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125855C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1258674(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125878C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12588E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1258A00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1258B24(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1258C3C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1258D54(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1258EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1258FC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12590EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1259204(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125931C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1259470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1259590(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12596B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12597CC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12598E4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1259A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1259B58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1259C7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1259D94(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1259EAC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125A000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125A120(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125A244(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125A35C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125A474(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125A6E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125A80C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125A924(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125AA3C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125ACB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125ADD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125AEEC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125B004(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125B158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125B278(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125B39C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125B4B4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125B5CC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125B720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125B840(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125B964(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125BA7C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125BB94(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125BE08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125BF2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125C044(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125C15C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125C3D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125C4F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125C60C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125C724(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125C878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125C998(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125CABC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125CBD4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125CCEC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125CE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125CF60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125D084(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125D19C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125D2B4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125D408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125D528(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125D64C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125D764(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125D87C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125D9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125DAF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125DC14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125DD2C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125DE44(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125E0B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125E1DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125E2F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125E40C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125E680(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125E7A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125E8BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125E9D4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125EB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125EC48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125ED6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125EE84(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125EF9C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125F0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125F210(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125F334(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125F44C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125F564(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125F6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125F7D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125F8FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125FA14(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_125FB2C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_125FC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_125FDA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_125FEC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125FFDC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12600F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1260248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1260368(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126048C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12605A4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12606BC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1260810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1260930(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1260A54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1260B6C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1260C84(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1260DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1260EF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126101C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1261134(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126124C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12613A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12614C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12615E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12616FC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1261814(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1261968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1261A88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1261BAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1261CC4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1261DDC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1261F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1262050(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1262174(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126228C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12623A4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12624F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1262618(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126273C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1262854(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126296C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1262AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1262BE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1262D04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F3024(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_1262E30(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_126306C(v8, __p, 0, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_1262F48(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_126306C(v10, __p, a4, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void sub_126306C(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_1236040(a1, &__p, &v54, v51, &v53, v53, 0x11u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_12634CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1263550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1263670(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1263794(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F312C(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_12638C0(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_1263AFC(v8, __p, 0, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }
}

void sub_12639D8(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_1263AFC(v10, __p, a4, x8_0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}