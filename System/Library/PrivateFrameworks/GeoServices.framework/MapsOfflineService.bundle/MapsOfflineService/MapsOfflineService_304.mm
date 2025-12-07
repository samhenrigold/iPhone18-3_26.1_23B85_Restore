void sub_127D204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_127D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_127D3A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_127D4CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F35CC(v12, __p, a4, a5);
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

void sub_127D5F8(uint64_t a2@<X1>, uint64_t a3@<X2>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_127E5EC(v8, __p, 0, x8_0);
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

void sub_127D710(uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, const void **x8_0@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  sub_127E5EC(v10, __p, a4, x8_0);
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

uint64_t *sub_127D834(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
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
          v17 = sub_127C210(v12, a2, &v101);
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
          v17 = sub_127E250(a2, v47, &v101);
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

uint64_t *sub_127E250(uint64_t **a1, uint64_t a2, int *a3)
{
  *&v10 = a2;
  *(&v10 + 1) = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, &v10, &v11, 1uLL);
  v5 = sub_127C210(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_127E308(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t *sub_127E314(uint64_t **a1, uint64_t **a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
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
  v35 = sub_127C210(a1, &__p, a5);
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

  v38 = sub_127D834(a1, a2, a4, a5, v40, 1u, v41);
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

void sub_127E5EC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_127D834(a1, &__p, &v54, v51, &v53, v53, 1u);
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

void sub_127EA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_127EAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_127EBF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_127ED14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127EE2C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_127EF44(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_127F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_127F1B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_127F2DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127F3F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_127F50C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_127F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_127F780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_127F8A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127F9BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_127FAD4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_127FC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_127FD48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_127FE6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127FF84(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_128009C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_12801F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1280310(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1280434(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_128054C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1280664(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_12807B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_12808D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_12809FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1280B14(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_1280C2C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1280D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1280EA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1280FC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12810DC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_12811F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1281348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1281468(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_128158C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12816A4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_12817BC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1281910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1281A30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1281B54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1281C6C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1281D84(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1281ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1281FF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_128211C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1282234(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_128234C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_12824A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_12825C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_12826E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12827FC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1282914(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1282A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1282B88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_1282CAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1282DC4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_1282EDC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1283030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1283150(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1283274(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_128338C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_12834A4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_12835F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1283718(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_128383C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1283954(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_1283A6C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1283BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1283CE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1283E04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1283F1C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1284034(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1284188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_12842A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_12843CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12844E4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_12845FC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1284750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1284870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1284994(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1284AAC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1284BC4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1284D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1284E38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_1284F5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1285074(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_128518C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_12852E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1285400(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1285524(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_128563C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1285754(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_12858A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_12859C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_1285AEC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1285C04(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_1285D1C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1285E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1285F90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_12860B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12861CC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_12862E4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1286438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1286558(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_128667C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1286794(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_12868AC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1286A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1286B20(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1286C44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1286D5C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1286E74(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1286FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_12870E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_128720C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1287324(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_128743C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1287590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_12876B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_12877D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12878EC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1287A04(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1287B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1287C78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_1287D9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1287EB4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_1287FCC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1288120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1288240(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1288364(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_128847C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1288594(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_12886E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1288808(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_128892C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1288A44(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_1288B5C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

unint64_t sub_1288CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
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

unint64_t sub_1288DD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
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

unint64_t sub_1288EF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_128900C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
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

void sub_1289124(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
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

unint64_t sub_1289278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
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

unint64_t sub_1289398(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
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

unint64_t sub_12894BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12895D4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
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

void sub_12896EC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1();
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
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

void sub_1289820(uint64_t a1)
{
  v2 = sub_1289810(a1);
  if (v2)
  {
    *(v3 + 8) = v2;
    operator delete(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }
}

__n128 sub_128985C(__n128 *a1, uint64_t a2)
{
  result = *(a2 + 24);
  *a1 = result;
  return result;
}

uint64_t sub_1289868(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
  }

  *a1 = a2;
  v4 = *sub_45AC50(a1);
  v5 = 1;
  if (*(a1 + 24) == 1)
  {
    sub_45AC50(a1 + 16);
  }

  sub_1223B7C(a1 + 32, &v4);
  return a1;
}

uint64_t sub_1289900(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = sub_12340BC(&v5);
  return sub_1289868(a1, v3);
}

uint64_t sub_1289940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != 1)
  {
    *(a1 + 24) = 1;
  }

  *(a1 + 16) = a2;
  if (*(a1 + 8))
  {
    v5 = *sub_45AC50(a1);
    v3 = *(a1 + 24);
    v6 = 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
    v6 = 0;
  }

  sub_45AC50(a1 + 16);
LABEL_8:
  sub_1223B7C(a1 + 32, &v5);
  return a1;
}

uint64_t sub_12899E8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = sub_12340BC(&v5);
  return sub_1289940(a1, v3);
}

uint64_t sub_1289A28(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if ((*(a1 + 40) & 1) == 0)
  {
    *(a1 + 40) = 1;
  }

  *(a1 + 32) = v3;
  if (*(a1 + 8) == 1)
  {
    v6 = *sub_45AC50(a1);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    LOBYTE(v6) = 0;
  }

  v7 = v4;
  if (*(a1 + 24) == 1)
  {
    sub_45AC50(a1 + 16);
  }

  sub_1223B7C(a1 + 32, &v6);
  return a1;
}

uint64_t sub_1289ADC(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a3 >= 7)
  {
    a3 = 7;
  }

  sub_12244D0(&v5, a2, a3);
  v6 = sub_1234374(&v5);
  return sub_1289A28(a1, &v6);
}

void *sub_1289B30(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  sub_1289BE0(a1);
  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_5:
  sub_12A4324(a1 + 12);
  sub_12A42A0(a1 + 9);
  sub_12A421C(a1 + 6);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void ***sub_1289BE0(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = (a1 + 120);
  if (v3 != &qword_278E990)
  {
    sub_194E89C(v2);
  }

  result = (a1 + 128);
  if (*(a1 + 128) != &qword_278E990)
  {
    sub_194E89C(result);
  }

  if (a1 != &off_2768770)
  {
    v5 = *(a1 + 136);
    if (v5)
    {
      sub_153FD8C(v5);
      operator delete();
    }

    v6 = *(a1 + 144);
    if (v6)
    {
      sub_1547884(v6);
      operator delete();
    }

    v7 = *(a1 + 152);
    if (v7)
    {
      sub_12938C4(v7);
      operator delete();
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      sub_128E6EC(v8);
      operator delete();
    }

    v9 = *(a1 + 168);
    if (v9)
    {
      sub_12904F0(v9);
      operator delete();
    }

    v10 = *(a1 + 176);
    if (v10)
    {
      sub_18FA778(v10);
      operator delete();
    }

    result = *(a1 + 184);
    if (result)
    {
      sub_18FDA18(result);

      operator delete();
    }
  }

  return result;
}

void sub_1289D38(void *a1)
{
  sub_1289B30(a1);

  operator delete();
}

uint64_t sub_1289D70(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 56);
  if (v2 >= 1)
  {
    v3 = (*(result + 64) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1292BC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 56) = 0;
  }

  v5 = *(v1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 88) + 8);
    do
    {
      v7 = *v6++;
      result = sub_12924A4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 80) = 0;
  }

  v8 = *(v1 + 104);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 112) + 8);
    do
    {
      v10 = *v9++;
      result = sub_128C0B4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 104) = 0;
  }

  v11 = *(v1 + 16);
  if (!v11)
  {
    goto LABEL_23;
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_33:
    v15 = *(v1 + 128) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v15 + 23) < 0)
    {
      **v15 = 0;
      *(v15 + 8) = 0;
      if ((v11 & 4) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      *v15 = 0;
      *(v15 + 23) = 0;
      if ((v11 & 4) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  v14 = *(v1 + 120) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v11 & 2) != 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *v14 = 0;
    *(v14 + 23) = 0;
    if ((v11 & 2) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_16:
  if ((v11 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_37:
  result = sub_153FDC8(*(v1 + 136));
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = sub_14D28E4(*(v1 + 144));
  if ((v11 & 0x10) == 0)
  {
LABEL_19:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = sub_1289F6C(*(v1 + 160));
    if ((v11 & 0x40) == 0)
    {
LABEL_21:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_41;
  }

LABEL_39:
  result = sub_1289F28(*(v1 + 152));
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  result = sub_128A070(*(v1 + 168));
  if ((v11 & 0x80) != 0)
  {
LABEL_22:
    result = sub_18FA7B4(*(v1 + 176));
  }

LABEL_23:
  if ((v11 & 0x100) != 0)
  {
    result = sub_18FDA54(*(v1 + 184));
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 184) = 0;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_1957EA8(v12);
  }

  return result;
}

uint64_t sub_1289F28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 80) = 0;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_1289F6C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = sub_128E8DC(*(result + 24));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_128E8DC(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_128E8DC(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_128E8DC(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    result = sub_128E900(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  result = sub_128E8DC(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  result = sub_128E900(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = sub_128E900(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = sub_128E900(*(v1 + 88));
    }

    if ((v2 & 0x200) != 0)
    {
      result = sub_128E900(*(v1 + 96));
    }
  }

  if ((v2 & 0x3C00) != 0)
  {
    *(v1 + 104) = 0;
    *(v1 + 112) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

uint64_t sub_128A070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
  }

  if ((v1 & 0x3000000) != 0)
  {
    *(a1 + 120) = 0;
  }

  v3 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v3)
  {
    return sub_1957EA8(result);
  }

  return result;
}

uint64_t sub_128A0D0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v74 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v74, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (2)
  {
    v7 = (*v74 + 1);
    v8 = **v74;
    if (**v74 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v74, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v74 + 2);
      }
    }

    *v74 = v7;
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 4u;
        v11 = *(a1 + 136);
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          sub_1551D64(v13);
          v11 = v14;
          *(a1 + 136) = v14;
          v7 = *v74;
        }

        sub_21F3650(a3, v11, v7);
        goto LABEL_115;
      case 2u:
        if (v8 != 18)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 8u;
        v43 = *(a1 + 144);
        if (!v43)
        {
          v44 = *(a1 + 8);
          v45 = (v44 & 0xFFFFFFFFFFFFFFFCLL);
          if (v44)
          {
            v45 = *v45;
          }

          sub_155218C(v45);
          v43 = v46;
          *(a1 + 144) = v46;
          v7 = *v74;
        }

        v15 = sub_21F36E0(a3, v43, v7);
        goto LABEL_115;
      case 3u:
        if (v8 == 26)
        {
          v15 = sub_1958928((a1 + 24), v7, a3);
          goto LABEL_115;
        }

        if (v8 == 24)
        {
          v75 = sub_128A7C8(v74);
          sub_1950044((a1 + 24), &v75);
          if (!*v74)
          {
            goto LABEL_121;
          }

LABEL_116:
          if (sub_195ADC0(a3, v74, a3[11].u32[1]))
          {
            goto LABEL_2;
          }

          continue;
        }

LABEL_108:
        if (v8)
        {
          v71 = (v8 & 7) == 4;
        }

        else
        {
          v71 = 1;
        }

        if (!v71)
        {
          v72 = *(a1 + 8);
          if (v72)
          {
            v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL) + 8;
          }

          else
          {
            v73 = sub_11F1920((a1 + 8));
            v7 = *v74;
          }

          v15 = sub_1952690(v8, v73, v7, a3);
LABEL_115:
          *v74 = v15;
          if (!v15)
          {
            goto LABEL_121;
          }

          goto LABEL_116;
        }

        if (v7)
        {
          a3[10].i32[0] = v8 - 1;
        }

        else
        {
LABEL_121:
          *v74 = 0;
        }

LABEL_2:
        *(a1 + 16) |= v5;
        return *v74;
      case 4u:
        if (v8 != 34)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 0x10u;
        v33 = *(a1 + 152);
        if (!v33)
        {
          v34 = *(a1 + 8);
          v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
          if (v34)
          {
            v35 = *v35;
          }

          sub_12954F4(v35);
          v33 = v36;
          *(a1 + 152) = v36;
          v7 = *v74;
        }

        v15 = sub_21F3770(a3, v33, v7);
        goto LABEL_115;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
        if (v23)
        {
          v24 = *v24;
        }

        v25 = (a1 + 120);
        goto LABEL_69;
      case 6u:
        if (v8 != 50)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 2u;
        v47 = *(a1 + 8);
        v24 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
        if (v47)
        {
          v24 = *v24;
        }

        v25 = (a1 + 128);
LABEL_69:
        v48 = sub_194DB04(v25, v24);
        v15 = sub_1958890(v48, *v74, a3);
        goto LABEL_115;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_108;
        }

        v52 = v7 - 1;
        while (1)
        {
          v53 = v52 + 1;
          *v74 = v52 + 1;
          v54 = *(a1 + 64);
          if (v54 && (v55 = *(a1 + 56), v55 < *v54))
          {
            *(a1 + 56) = v55 + 1;
            v56 = *&v54[2 * v55 + 2];
          }

          else
          {
            v57 = sub_1295434(*(a1 + 48));
            v56 = sub_19593CC(a1 + 48, v57);
            v53 = *v74;
          }

          v52 = sub_21F3800(a3, v56, v53);
          *v74 = v52;
          if (!v52)
          {
            goto LABEL_121;
          }

          if (*a3 <= v52 || *v52 != 58)
          {
            goto LABEL_116;
          }
        }

      case 8u:
        if (v8 != 66)
        {
          goto LABEL_108;
        }

        v37 = v7 - 1;
        while (1)
        {
          v38 = v37 + 1;
          *v74 = v37 + 1;
          v39 = *(a1 + 88);
          if (v39 && (v40 = *(a1 + 80), v40 < *v39))
          {
            *(a1 + 80) = v40 + 1;
            v41 = *&v39[2 * v40 + 2];
          }

          else
          {
            v42 = sub_12953AC(*(a1 + 72));
            v41 = sub_19593CC(a1 + 72, v42);
            v38 = *v74;
          }

          v37 = sub_21F3890(a3, v41, v38);
          *v74 = v37;
          if (!v37)
          {
            goto LABEL_121;
          }

          if (*a3 <= v37 || *v37 != 66)
          {
            goto LABEL_116;
          }
        }

      case 9u:
        if (v8 != 72)
        {
          goto LABEL_108;
        }

        v5 |= 0x200u;
        v65 = v7 + 1;
        v64 = *v7;
        if ((v64 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        v66 = *v65;
        v64 = (v66 << 7) + v64 - 128;
        if (v66 < 0)
        {
          v69 = sub_19587DC(v7, v64);
          *v74 = v69;
          *(a1 + 192) = v70 != 0;
          if (!v69)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v65 = v7 + 2;
LABEL_100:
          *v74 = v65;
          *(a1 + 192) = v64 != 0;
        }

        goto LABEL_116;
      case 0xAu:
        if (v8 != 80)
        {
          goto LABEL_108;
        }

        v5 |= 0x400u;
        v31 = v7 + 1;
        v30 = *v7;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v67 = sub_19587DC(v7, v30);
          *v74 = v67;
          *(a1 + 193) = v68 != 0;
          if (!v67)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v31 = v7 + 2;
LABEL_40:
          *v74 = v31;
          *(a1 + 193) = v30 != 0;
        }

        goto LABEL_116;
      case 0xBu:
        if (v8 != 90)
        {
          goto LABEL_108;
        }

        v58 = v7 - 1;
        while (1)
        {
          v59 = v58 + 1;
          *v74 = v58 + 1;
          v60 = *(a1 + 112);
          if (v60 && (v61 = *(a1 + 104), v61 < *v60))
          {
            *(a1 + 104) = v61 + 1;
            v62 = *&v60[2 * v61 + 2];
          }

          else
          {
            v63 = sub_1294F00(*(a1 + 96));
            v62 = sub_19593CC(a1 + 96, v63);
            v59 = *v74;
          }

          v58 = sub_21F3920(a3, v62, v59);
          *v74 = v58;
          if (!v58)
          {
            goto LABEL_121;
          }

          if (*a3 <= v58 || *v58 != 90)
          {
            goto LABEL_116;
          }
        }

      case 0xCu:
        if (v8 != 98)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 0x20u;
        v19 = *(a1 + 160);
        if (!v19)
        {
          v20 = *(a1 + 8);
          v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL);
          if (v20)
          {
            v21 = *v21;
          }

          sub_12951A8(v21);
          v19 = v22;
          *(a1 + 160) = v22;
          v7 = *v74;
        }

        v15 = sub_21F39B0(a3, v19, v7);
        goto LABEL_115;
      case 0xDu:
        if (v8 != 106)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 0x40u;
        v26 = *(a1 + 168);
        if (!v26)
        {
          v27 = *(a1 + 8);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          sub_1295324(v28);
          v26 = v29;
          *(a1 + 168) = v29;
          v7 = *v74;
        }

        v15 = sub_21F3A40(a3, v26, v7);
        goto LABEL_115;
      case 0xEu:
        if (v8 != 114)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 0x80u;
        v49 = *(a1 + 176);
        if (!v49)
        {
          v50 = *(a1 + 8);
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL);
          if (v50)
          {
            v51 = *v51;
          }

          v49 = sub_1906254(v51);
          *(a1 + 176) = v49;
          v7 = *v74;
        }

        v15 = sub_21F3AD0(a3, v49, v7);
        goto LABEL_115;
      case 0xFu:
        if (v8 != 122)
        {
          goto LABEL_108;
        }

        *(a1 + 16) |= 0x100u;
        v16 = *(a1 + 184);
        if (!v16)
        {
          v17 = *(a1 + 8);
          v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
          if (v17)
          {
            v18 = *v18;
          }

          v16 = sub_190630C(v18);
          *(a1 + 184) = v16;
          v7 = *v74;
        }

        v15 = sub_21F3B60(a3, v16, v7);
        goto LABEL_115;
      default:
        goto LABEL_108;
    }
  }
}

uint64_t sub_128A7C8(char **a1)
{
  v2 = *a1;
  v3 = *a1;
  v6 = *v3;
  v4 = v3 + 1;
  v5 = v6;
  if (v6 < 0)
  {
    v5 = (*v4 << 7) + v5 - 128;
    if (*v4 < 0)
    {
      v4 = sub_19587DC(v2, v5);
    }

    else
    {
      v4 = (v2 + 2);
    }
  }

  *a1 = v4;
  return v5;
}

char *sub_128A828(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      v4 = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 136);
    *v4 = 10;
    v8 = *(v7 + 28);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v9 = sub_19575D0(v8, v4 + 1);
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = sub_1540418(v7, v9, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v10 = *(a1 + 144);
    *v4 = 18;
    v11 = *(v10 + 20);
    v4[1] = v11;
    if (v11 > 0x7F)
    {
      v12 = sub_19575D0(v11, v4 + 1);
    }

    else
    {
      v12 = v4 + 2;
    }

    v4 = sub_15480D4(v10, v12, a3);
  }

  v13 = *(a1 + 40);
  if (v13 >= 1)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    *v4 = 26;
    v14 = v4 + 1;
    if (v13 >= 0x80)
    {
      do
      {
        *v14++ = v13 | 0x80;
        v60 = v13 >> 14;
        v13 >>= 7;
      }

      while (v60);
      v4 = v14 - 1;
    }

    v15 = v4 + 2;
    *v14 = v13;
    v16 = *(a1 + 32);
    v17 = &v16[*(a1 + 24)];
    do
    {
      if (*a3 <= v15)
      {
        v15 = sub_225EB68(a3, v15);
      }

      v19 = *v16++;
      v18 = v19;
      *v15 = v19;
      if (v19 > 0x7F)
      {
        *v15 = v18 | 0x80;
        v20 = v18 >> 7;
        v15[1] = v18 >> 7;
        v4 = v15 + 2;
        if (v18 >= 0x4000)
        {
          LOBYTE(v21) = v15[1];
          do
          {
            *(v4 - 1) = v21 | 0x80;
            v21 = v20 >> 7;
            *v4++ = v20 >> 7;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
        }
      }

      else
      {
        v4 = v15 + 1;
      }

      v15 = v4;
    }

    while (v16 < v17);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v40 = *(a1 + 152);
    *v4 = 34;
    v41 = *(v40 + 20);
    v4[1] = v41;
    if (v41 > 0x7F)
    {
      v42 = sub_19575D0(v41, v4 + 1);
    }

    else
    {
      v42 = v4 + 2;
    }

    v4 = sub_1294144(v40, v42, a3);
    if ((v6 & 1) == 0)
    {
LABEL_30:
      if ((v6 & 2) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_30;
  }

  v4 = sub_128AEEC(a3, 5, (*(a1 + 120) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_31:
    v4 = sub_128AEEC(a3, 6, (*(a1 + 128) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_32:
  v23 = *(a1 + 56);
  if (v23)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v25 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 58;
      v26 = *(v25 + 20);
      v4[1] = v26;
      if (v26 > 0x7F)
      {
        v27 = sub_19575D0(v26, v4 + 1);
      }

      else
      {
        v27 = v4 + 2;
      }

      v4 = sub_129304C(v25, v27, a3);
    }
  }

  v28 = *(a1 + 80);
  if (v28)
  {
    for (j = 0; j != v28; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v30 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 66;
      v31 = *(v30 + 20);
      v4[1] = v31;
      if (v31 > 0x7F)
      {
        v32 = sub_19575D0(v31, v4 + 1);
      }

      else
      {
        v32 = v4 + 2;
      }

      v4 = sub_1292724(v30, v32, a3);
    }
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v33 = *(a1 + 192);
    *v4 = 72;
    v4[1] = v33;
    v4 += 2;
  }

  if ((v6 & 0x400) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v34 = *(a1 + 193);
    *v4 = 80;
    v4[1] = v34;
    v4 += 2;
  }

  v35 = *(a1 + 104);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v37 = *(*(a1 + 112) + 8 * k + 8);
      *v4 = 90;
      v38 = *(v37 + 20);
      v4[1] = v38;
      if (v38 > 0x7F)
      {
        v39 = sub_19575D0(v38, v4 + 1);
      }

      else
      {
        v39 = v4 + 2;
      }

      v4 = sub_128C468(v37, v39, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v43 = *(a1 + 160);
    *v4 = 98;
    v44 = *(v43 + 20);
    v4[1] = v44;
    if (v44 > 0x7F)
    {
      v45 = sub_19575D0(v44, v4 + 1);
    }

    else
    {
      v45 = v4 + 2;
    }

    v4 = sub_128EECC(v43, v45, a3);
    if ((v6 & 0x40) == 0)
    {
LABEL_66:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_89;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_66;
  }

  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v46 = *(a1 + 168);
  *v4 = 106;
  v47 = *(v46 + 20);
  v4[1] = v47;
  if (v47 > 0x7F)
  {
    v48 = sub_19575D0(v47, v4 + 1);
  }

  else
  {
    v48 = v4 + 2;
  }

  v4 = sub_12910A8(v46, v48, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_67:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_95;
  }

LABEL_89:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v49 = *(a1 + 176);
  *v4 = 114;
  v50 = *(v49 + 44);
  v4[1] = v50;
  if (v50 > 0x7F)
  {
    v51 = sub_19575D0(v50, v4 + 1);
  }

  else
  {
    v51 = v4 + 2;
  }

  v4 = sub_18FB10C(v49, v51, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_95:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v52 = *(a1 + 184);
    *v4 = 122;
    v53 = *(v52 + 44);
    v4[1] = v53;
    if (v53 > 0x7F)
    {
      v54 = sub_19575D0(v53, v4 + 1);
    }

    else
    {
      v54 = v4 + 2;
    }

    v4 = sub_18FE368(v52, v54, a3);
  }

LABEL_101:
  v55 = *(a1 + 8);
  if ((v55 & 1) == 0)
  {
    return v4;
  }

  v57 = v55 & 0xFFFFFFFFFFFFFFFCLL;
  v58 = *(v57 + 31);
  if (v58 < 0)
  {
    v59 = *(v57 + 8);
    v58 = *(v57 + 16);
  }

  else
  {
    v59 = (v57 + 8);
  }

  if ((*a3 - v4) >= v58)
  {
    v61 = v58;
    memcpy(v4, v59, v58);
    v4 += v61;
    return v4;
  }

  return sub_1957130(a3, v59, v58, v4);
}

char *sub_128AEEC(unint64_t *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if (v4 < 0)
  {
    v4 = a3[1];
    if (v4 > 127)
    {
      goto LABEL_21;
    }
  }

  v5 = 8 * a2;
  v6 = 1;
  v7 = 2;
  v8 = 3;
  v9 = 4;
  if ((8 * a2) >> 28)
  {
    v9 = 5;
  }

  if (v5 >= 0x200000)
  {
    v8 = v9;
  }

  if (v5 >= 0x4000)
  {
    v7 = v8;
  }

  if (v5 >= 0x80)
  {
    v6 = v7;
  }

  if ((*a1 + ~&a4[v6] + 16) < v4)
  {
LABEL_21:

    return sub_19572D4(a1, a2, a3, a4);
  }

  else
  {
    *a4 = v5 | 2;
    if (v5 > 0x7F)
    {
      *a4 = v5 | 0x82;
      v11 = v5 >> 7;
      a4[1] = v5 >> 7;
      v10 = a4 + 2;
      if (v5 >= 0x4000)
      {
        LOBYTE(v12) = a4[1];
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v10++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v10 = a4 + 1;
    }

    *v10 = v4;
    v14 = v10 + 1;
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    memcpy(v14, v15, v4);
    return &v14[v4];
  }
}

uint64_t sub_128B008(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  v3 = 11;
  v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v2 >= 0)
  {
    v3 = v4;
  }

  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (!v2)
  {
    v3 = 0;
  }

  *(a1 + 40) = v5;
  v6 = v3 + v2;
  v7 = *(a1 + 56);
  v8 = v6 + v7;
  v9 = *(a1 + 64);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = sub_12934E0(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

  v14 = *(a1 + 80);
  v15 = v8 + v14;
  v16 = *(a1 + 88);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_12928F0(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(a1 + 104);
  v22 = v15 + v21;
  v23 = *(a1 + 112);
  if (v23)
  {
    v24 = (v23 + 8);
  }

  else
  {
    v24 = 0;
  }

  if (v21)
  {
    v25 = 8 * v21;
    do
    {
      v26 = *v24++;
      v27 = sub_128C7A0(v26);
      v22 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6);
      v25 -= 8;
    }

    while (v25);
  }

  v28 = *(a1 + 16);
  if (!v28)
  {
    goto LABEL_36;
  }

  if (v28)
  {
    v33 = *(a1 + 120) & 0xFFFFFFFFFFFFFFFELL;
    v34 = *(v33 + 23);
    v35 = *(v33 + 8);
    if ((v34 & 0x80u) == 0)
    {
      v35 = v34;
    }

    v22 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 2) == 0)
    {
LABEL_29:
      if ((v28 & 4) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }
  }

  else if ((v28 & 2) == 0)
  {
    goto LABEL_29;
  }

  v36 = *(a1 + 128) & 0xFFFFFFFFFFFFFFFELL;
  v37 = *(v36 + 23);
  v38 = *(v36 + 8);
  if ((v37 & 0x80u) == 0)
  {
    v38 = v37;
  }

  v22 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 4) == 0)
  {
LABEL_30:
    if ((v28 & 8) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_48:
  v39 = sub_1541FC0(*(a1 + 136));
  v22 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 8) == 0)
  {
LABEL_31:
    if ((v28 & 0x10) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_50;
  }

LABEL_49:
  v40 = sub_1548710(*(a1 + 144));
  v22 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x10) == 0)
  {
LABEL_32:
    if ((v28 & 0x20) == 0)
    {
      goto LABEL_33;
    }

LABEL_51:
    v42 = sub_128F5A4(*(a1 + 160));
    v22 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v28 & 0x40) == 0)
    {
LABEL_34:
      if ((v28 & 0x80) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    goto LABEL_52;
  }

LABEL_50:
  v41 = sub_1294AD0(*(a1 + 152));
  v22 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_33:
  if ((v28 & 0x40) == 0)
  {
    goto LABEL_34;
  }

LABEL_52:
  v43 = sub_1291EE8(*(a1 + 168));
  v22 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v28 & 0x80) != 0)
  {
LABEL_35:
    v29 = sub_18FB7A4(*(a1 + 176));
    v22 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_36:
  if ((v28 & 0x700) != 0)
  {
    if ((v28 & 0x100) != 0)
    {
      v30 = sub_18FE97C(*(a1 + 184));
      v22 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v22 += ((v28 >> 9) & 2) + ((v28 >> 8) & 2);
  }

  v31 = *(a1 + 8);
  if (v31)
  {
    v44 = v31 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = *((v31 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v45 < 0)
    {
      v45 = *(v44 + 16);
    }

    v22 += v45;
  }

  *(a1 + 20) = v22;
  return v22;
}

void sub_128B3B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 24);
    sub_1959094((a1 + 24), v6 + v4);
    v7 = *(a1 + 32);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_12A4534((a1 + 48), v10, (v9 + 8), v8, **(a1 + 64) - *(a1 + 56));
    v11 = *(a1 + 56) + v8;
    *(a1 + 56) = v11;
    v12 = *(a1 + 64);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 80);
  if (v13)
  {
    v14 = *(a2 + 88);
    v15 = sub_19592E8(a1 + 72, *(a2 + 80));
    sub_12A45C0((a1 + 72), v15, (v14 + 8), v13, **(a1 + 88) - *(a1 + 80));
    v16 = *(a1 + 80) + v13;
    *(a1 + 80) = v16;
    v17 = *(a1 + 88);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 104);
  if (v18)
  {
    v19 = *(a2 + 112);
    v20 = sub_19592E8(a1 + 96, *(a2 + 104));
    sub_12A464C((a1 + 96), v20, (v19 + 8), v18, **(a1 + 112) - *(a1 + 104));
    v21 = *(a1 + 104) + v18;
    *(a1 + 104) = v21;
    v22 = *(a1 + 112);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if (!v23)
  {
    goto LABEL_76;
  }

  if (v23)
  {
    v24 = *(a2 + 120);
    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
    if (v25)
    {
      v26 = *v26;
    }

    sub_194EA1C((a1 + 120), (v24 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v23 & 2) == 0)
    {
LABEL_15:
      if ((v23 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_15;
  }

  v27 = *(a2 + 128);
  *(a1 + 16) |= 2u;
  v28 = *(a1 + 8);
  v29 = (v28 & 0xFFFFFFFFFFFFFFFCLL);
  if (v28)
  {
    v29 = *v29;
  }

  sub_194EA1C((a1 + 128), (v27 & 0xFFFFFFFFFFFFFFFELL), v29);
  if ((v23 & 4) == 0)
  {
LABEL_16:
    if ((v23 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_28:
  *(a1 + 16) |= 4u;
  v30 = *(a1 + 136);
  if (!v30)
  {
    v31 = *(a1 + 8);
    v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
    if (v31)
    {
      v32 = *v32;
    }

    sub_1551D64(v32);
    *(a1 + 136) = v30;
  }

  if (*(a2 + 136))
  {
    v33 = *(a2 + 136);
  }

  else
  {
    v33 = &off_27769A8;
  }

  sub_1542CDC(v30, v33);
  if ((v23 & 8) == 0)
  {
LABEL_17:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_36:
  *(a1 + 16) |= 8u;
  v34 = *(a1 + 144);
  if (!v34)
  {
    v35 = *(a1 + 8);
    v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL);
    if (v35)
    {
      v36 = *v36;
    }

    sub_155218C(v36);
    *(a1 + 144) = v34;
  }

  if (*(a2 + 144))
  {
    v37 = *(a2 + 144);
  }

  else
  {
    v37 = &off_2776D50;
  }

  sub_14D3AD8(v34, v37);
  if ((v23 & 0x10) == 0)
  {
LABEL_18:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_52:
    *(a1 + 16) |= 0x20u;
    v42 = *(a1 + 160);
    if (!v42)
    {
      v43 = *(a1 + 8);
      v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
      if (v43)
      {
        v44 = *v44;
      }

      sub_12951A8(v44);
      *(a1 + 160) = v42;
    }

    if (*(a2 + 160))
    {
      v45 = *(a2 + 160);
    }

    else
    {
      v45 = &off_2768838;
    }

    sub_128B9AC(v42, v45);
    if ((v23 & 0x40) == 0)
    {
LABEL_20:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_68;
    }

    goto LABEL_60;
  }

LABEL_44:
  *(a1 + 16) |= 0x10u;
  v38 = *(a1 + 152);
  if (!v38)
  {
    v39 = *(a1 + 8);
    v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
    if (v39)
    {
      v40 = *v40;
    }

    sub_12954F4(v40);
    *(a1 + 152) = v38;
  }

  if (*(a2 + 152))
  {
    v41 = *(a2 + 152);
  }

  else
  {
    v41 = &off_2768978;
  }

  sub_128B84C(v38, v41);
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_52;
  }

LABEL_19:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_60:
  *(a1 + 16) |= 0x40u;
  v46 = *(a1 + 168);
  if (!v46)
  {
    v47 = *(a1 + 8);
    v48 = (v47 & 0xFFFFFFFFFFFFFFFCLL);
    if (v47)
    {
      v48 = *v48;
    }

    sub_1295324(v48);
    *(a1 + 168) = v46;
  }

  if (*(a2 + 168))
  {
    v49 = *(a2 + 168);
  }

  else
  {
    v49 = &off_27688F8;
  }

  sub_128BD5C(v46, v49);
  if ((v23 & 0x80) != 0)
  {
LABEL_68:
    *(a1 + 16) |= 0x80u;
    v50 = *(a1 + 176);
    if (!v50)
    {
      v51 = *(a1 + 8);
      v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL);
      if (v51)
      {
        v52 = *v52;
      }

      v50 = sub_1906254(v52);
      *(a1 + 176) = v50;
    }

    if (*(a2 + 176))
    {
      v53 = *(a2 + 176);
    }

    else
    {
      v53 = &off_278AFA0;
    }

    sub_18FBB2C(v50, v53);
  }

LABEL_76:
  if ((v23 & 0x700) == 0)
  {
    goto LABEL_82;
  }

  if ((v23 & 0x100) == 0)
  {
    if ((v23 & 0x200) == 0)
    {
      goto LABEL_79;
    }

LABEL_94:
    *(a1 + 192) = *(a2 + 192);
    if ((v23 & 0x400) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  *(a1 + 16) |= 0x100u;
  v55 = *(a1 + 184);
  if (!v55)
  {
    v56 = *(a1 + 8);
    v57 = (v56 & 0xFFFFFFFFFFFFFFFCLL);
    if (v56)
    {
      v57 = *v57;
    }

    v55 = sub_190630C(v57);
    *(a1 + 184) = v55;
  }

  if (*(a2 + 184))
  {
    v58 = *(a2 + 184);
  }

  else
  {
    v58 = &off_278B0B0;
  }

  sub_18FED20(v55, v58);
  if ((v23 & 0x200) != 0)
  {
    goto LABEL_94;
  }

LABEL_79:
  if ((v23 & 0x400) != 0)
  {
LABEL_80:
    *(a1 + 193) = *(a2 + 193);
  }

LABEL_81:
  *(a1 + 16) |= v23;
LABEL_82:
  v54 = *(a2 + 8);
  if (v54)
  {

    sub_1957EF4((a1 + 8), (v54 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

std::string *sub_128B84C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_29;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }

LABEL_29:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

LABEL_30:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_31:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_32:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
      goto LABEL_11;
    }

LABEL_33:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  HIDWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  HIDWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
  if ((v2 & 0x1000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(result[3].__r_.__value_.__l.__data_) = *(a2 + 72);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_41:
    LODWORD(result[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_40:
  HIDWORD(result[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
  if ((v2 & 0x4000) != 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  if ((v2 & 0x8000) != 0)
  {
LABEL_21:
    HIDWORD(result[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
  }

LABEL_22:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_23:
  if ((v2 & 0x10000) != 0)
  {
    v3 = *(a2 + 88);
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 0x10000u;
    LODWORD(result[3].__r_.__value_.__r.__words[2]) = v3;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_128B9AC(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_76;
  }

  if (v4)
  {
    LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
    data = result[1].__r_.__value_.__l.__data_;
    if (!data)
    {
      v6 = *(v3 + 8);
      v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
      if (v6)
      {
        v7 = *v7;
      }

      data = sub_1295230(v7);
      *(v3 + 24) = data;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &off_27688B0;
    }

    result = sub_128F8FC(data, v8);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(v3 + 16) |= 2u;
  v9 = *(v3 + 32);
  if (!v9)
  {
    v10 = *(v3 + 8);
    v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
    if (v10)
    {
      v11 = *v11;
    }

    v9 = sub_1295230(v11);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = &off_27688B0;
  }

  result = sub_128F8FC(v9, v12);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_24:
  *(v3 + 16) |= 4u;
  v13 = *(v3 + 40);
  if (!v13)
  {
    v14 = *(v3 + 8);
    v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
    if (v14)
    {
      v15 = *v15;
    }

    v13 = sub_1295230(v15);
    *(v3 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v16 = *(a2 + 40);
  }

  else
  {
    v16 = &off_27688B0;
  }

  result = sub_128F8FC(v13, v16);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_32:
  *(v3 + 16) |= 8u;
  v17 = *(v3 + 48);
  if (!v17)
  {
    v18 = *(v3 + 8);
    v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    if (v18)
    {
      v19 = *v19;
    }

    v17 = sub_1295230(v19);
    *(v3 + 48) = v17;
  }

  if (*(a2 + 48))
  {
    v20 = *(a2 + 48);
  }

  else
  {
    v20 = &off_27688B0;
  }

  result = sub_128F8FC(v17, v20);
  if ((v4 & 0x10) != 0)
  {
LABEL_40:
    *(v3 + 16) |= 0x10u;
    v21 = *(v3 + 56);
    if (!v21)
    {
      v22 = *(v3 + 8);
      v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
      if (v22)
      {
        v23 = *v23;
      }

      v21 = sub_1295230(v23);
      *(v3 + 56) = v21;
    }

    if (*(a2 + 56))
    {
      v24 = *(a2 + 56);
    }

    else
    {
      v24 = &off_27688B0;
    }

    result = sub_128F8FC(v21, v24);
  }

LABEL_48:
  if ((v4 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v25 = *(v3 + 64);
    if (!v25)
    {
      v26 = *(v3 + 8);
      v27 = (v26 & 0xFFFFFFFFFFFFFFFCLL);
      if (v26)
      {
        v27 = *v27;
      }

      v25 = sub_12952A8(v27);
      *(v3 + 64) = v25;
    }

    if (*(a2 + 64))
    {
      v28 = *(a2 + 64);
    }

    else
    {
      v28 = &off_27688D0;
    }

    result = sub_128F948(v25, v28);
    if ((v4 & 0x40) == 0)
    {
LABEL_50:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_68;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_50;
  }

  *(v3 + 16) |= 0x40u;
  v29 = *(v3 + 72);
  if (!v29)
  {
    v30 = *(v3 + 8);
    v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
    if (v30)
    {
      v31 = *v31;
    }

    v29 = sub_12952A8(v31);
    *(v3 + 72) = v29;
  }

  if (*(a2 + 72))
  {
    v32 = *(a2 + 72);
  }

  else
  {
    v32 = &off_27688D0;
  }

  result = sub_128F948(v29, v32);
  if ((v4 & 0x80) != 0)
  {
LABEL_68:
    *(v3 + 16) |= 0x80u;
    v33 = *(v3 + 80);
    if (!v33)
    {
      v34 = *(v3 + 8);
      v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
      if (v34)
      {
        v35 = *v35;
      }

      v33 = sub_12952A8(v35);
      *(v3 + 80) = v33;
    }

    if (*(a2 + 80))
    {
      v36 = *(a2 + 80);
    }

    else
    {
      v36 = &off_27688D0;
    }

    result = sub_128F948(v33, v36);
  }

LABEL_76:
  if ((v4 & 0x3F00) == 0)
  {
    goto LABEL_85;
  }

  if ((v4 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v38 = *(v3 + 88);
    if (!v38)
    {
      v39 = *(v3 + 8);
      v40 = (v39 & 0xFFFFFFFFFFFFFFFCLL);
      if (v39)
      {
        v40 = *v40;
      }

      v38 = sub_12952A8(v40);
      *(v3 + 88) = v38;
    }

    if (*(a2 + 88))
    {
      v41 = *(a2 + 88);
    }

    else
    {
      v41 = &off_27688D0;
    }

    result = sub_128F948(v38, v41);
    if ((v4 & 0x200) == 0)
    {
LABEL_79:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_105;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_79;
  }

  *(v3 + 16) |= 0x200u;
  v42 = *(v3 + 96);
  if (!v42)
  {
    v43 = *(v3 + 8);
    v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL);
    if (v43)
    {
      v44 = *v44;
    }

    v42 = sub_12952A8(v44);
    *(v3 + 96) = v42;
  }

  if (*(a2 + 96))
  {
    v45 = *(a2 + 96);
  }

  else
  {
    v45 = &off_27688D0;
  }

  result = sub_128F948(v42, v45);
  if ((v4 & 0x400) == 0)
  {
LABEL_80:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v3 + 104) = *(a2 + 104);
  if ((v4 & 0x800) == 0)
  {
LABEL_81:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_82;
    }

LABEL_107:
    *(v3 + 112) = *(a2 + 112);
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_106:
  *(v3 + 108) = *(a2 + 108);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_107;
  }

LABEL_82:
  if ((v4 & 0x2000) != 0)
  {
LABEL_83:
    *(v3 + 116) = *(a2 + 116);
  }

LABEL_84:
  *(v3 + 16) |= v4;
LABEL_85:
  v37 = *(a2 + 8);
  if (v37)
  {

    return sub_1957EF4((v3 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

std::string *sub_128BD5C(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (v2)
    {
      LODWORD(result[1].__r_.__value_.__l.__data_) = *(a2 + 24);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_44;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    HIDWORD(result[1].__r_.__value_.__r.__words[0]) = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_45;
    }

LABEL_44:
    LODWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_46;
    }

LABEL_45:
    HIDWORD(result[1].__r_.__value_.__r.__words[1]) = *(a2 + 36);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }

LABEL_46:
    LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_48;
    }

LABEL_47:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
        goto LABEL_12;
      }

LABEL_10:
      HIDWORD(result[2].__r_.__value_.__r.__words[0]) = *(a2 + 52);
      goto LABEL_11;
    }

LABEL_48:
    LODWORD(result[2].__r_.__value_.__l.__data_) = *(a2 + 48);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    LODWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 56);
    if ((v2 & 0x200) == 0)
    {
LABEL_15:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_52;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  HIDWORD(result[2].__r_.__value_.__r.__words[1]) = *(a2 + 60);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 64);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  HIDWORD(result[2].__r_.__value_.__r.__words[2]) = *(a2 + 68);
  if ((v2 & 0x1000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  LODWORD(result[3].__r_.__value_.__l.__data_) = *(a2 + 72);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

LABEL_56:
    LODWORD(result[3].__r_.__value_.__r.__words[1]) = *(a2 + 80);
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_55:
  HIDWORD(result[3].__r_.__value_.__r.__words[0]) = *(a2 + 76);
  if ((v2 & 0x4000) != 0)
  {
    goto LABEL_56;
  }

LABEL_20:
  if ((v2 & 0x8000) != 0)
  {
LABEL_21:
    HIDWORD(result[3].__r_.__value_.__r.__words[1]) = *(a2 + 84);
  }

LABEL_22:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_23:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_34;
  }

  if ((v2 & 0x10000) != 0)
  {
    LODWORD(result[3].__r_.__value_.__r.__words[2]) = *(a2 + 88);
    if ((v2 & 0x20000) == 0)
    {
LABEL_26:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_60;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  HIDWORD(result[3].__r_.__value_.__r.__words[2]) = *(a2 + 92);
  if ((v2 & 0x40000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  LODWORD(result[4].__r_.__value_.__l.__data_) = *(a2 + 96);
  if ((v2 & 0x80000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  HIDWORD(result[4].__r_.__value_.__r.__words[0]) = *(a2 + 100);
  if ((v2 & 0x100000) == 0)
  {
LABEL_29:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  LODWORD(result[4].__r_.__value_.__r.__words[1]) = *(a2 + 104);
  if ((v2 & 0x200000) == 0)
  {
LABEL_30:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

LABEL_64:
    LODWORD(result[4].__r_.__value_.__r.__words[2]) = *(a2 + 112);
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_63:
  HIDWORD(result[4].__r_.__value_.__r.__words[1]) = *(a2 + 108);
  if ((v2 & 0x400000) != 0)
  {
    goto LABEL_64;
  }

LABEL_31:
  if ((v2 & 0x800000) != 0)
  {
LABEL_32:
    HIDWORD(result[4].__r_.__value_.__r.__words[2]) = *(a2 + 116);
  }

LABEL_33:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_34:
  if ((v2 & 0x3000000) != 0)
  {
    if ((v2 & 0x1000000) != 0)
    {
      LODWORD(result[5].__r_.__value_.__l.__data_) = *(a2 + 120);
    }

    if ((v2 & 0x2000000) != 0)
    {
      HIDWORD(result[5].__r_.__value_.__r.__words[0]) = *(a2 + 124);
    }

    LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_128BF64(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    result = sub_1543A14(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_14D3EC8(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = sub_18FCAE4(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) == 0)
  {
    return 1;
  }

  result = sub_18FF13C(*(a1 + 184));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_128BFE8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12A442C(a1 + 9);
  sub_12A43A8(a1 + 6);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_128C07C(void *a1)
{
  sub_128BFE8(a1);

  operator delete();
}

uint64_t sub_128C0B4(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 56);
  if (v2 >= 1)
  {
    v3 = (*(result + 64) + 8);
    do
    {
      v4 = *v3++;
      result = sub_128CB68(v4);
      --v2;
    }

    while (v2);
    *(v1 + 56) = 0;
  }

  v5 = *(v1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 88) + 8);
    do
    {
      v7 = *v6++;
      result = sub_128E0E8(v7);
      --v5;
    }

    while (v5);
    *(v1 + 80) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 88) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

char *sub_128C164(uint64_t a1, char *a2, int32x2_t *a3)
{
  v34 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v34 + 1;
    v8 = *v34;
    if (*v34 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v34, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v34 + 2;
      }
    }

    v34 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 == 26)
        {
          v23 = v7 - 1;
          while (1)
          {
            v24 = v23 + 1;
            v34 = v23 + 1;
            v25 = *(a1 + 64);
            if (v25 && (v26 = *(a1 + 56), v26 < *v25))
            {
              *(a1 + 56) = v26 + 1;
              v27 = *&v25[2 * v26 + 2];
            }

            else
            {
              v28 = sub_1294FBC(*(a1 + 48));
              v27 = sub_19593CC(a1 + 48, v28);
              v24 = v34;
            }

            v23 = sub_21F3BF0(a3, v27, v24);
            v34 = v23;
            if (!v23)
            {
              goto LABEL_60;
            }

            if (*a3 <= v23 || *v23 != 26)
            {
              goto LABEL_55;
            }
          }
        }
      }

      else if (v11 == 4 && v8 == 34)
      {
        v16 = v7 - 1;
        while (1)
        {
          v17 = v16 + 1;
          v34 = v16 + 1;
          v18 = *(a1 + 88);
          if (v18 && (v19 = *(a1 + 80), v19 < *v18))
          {
            *(a1 + 80) = v19 + 1;
            v20 = *&v18[2 * v19 + 2];
          }

          else
          {
            v21 = sub_1295120(*(a1 + 72));
            v20 = sub_19593CC(a1 + 72, v21);
            v17 = v34;
          }

          v16 = sub_21F3C80(a3, v20, v17);
          v34 = v16;
          if (!v16)
          {
            goto LABEL_60;
          }

          if (*a3 <= v16 || *v16 != 34)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_47;
    }

    if (v11 == 1)
    {
      break;
    }

    if (v11 != 2 || v8 != 16)
    {
      goto LABEL_47;
    }

    v14 = v7 + 1;
    LODWORD(v13) = *v7;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    v15 = *v14;
    v13 = v13 + (v15 << 7) - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = v7 + 2;
LABEL_17:
      v34 = v14;
      *(a1 + 96) = v13;
      v5 = 1;
      goto LABEL_55;
    }

    v29 = sub_19587DC(v7, v13);
    v34 = v29;
    *(a1 + 96) = v30;
    v5 = 1;
    if (!v29)
    {
      goto LABEL_60;
    }

LABEL_55:
    if (sub_195ADC0(a3, &v34, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 == 10)
  {
    v22 = sub_1958928((a1 + 24), v7, a3);
    goto LABEL_54;
  }

  if (v8 == 8)
  {
    v35 = sub_128A7C8(&v34);
    sub_1950044((a1 + 24), &v35);
    if (!v34)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

LABEL_47:
  if (v8)
  {
    v31 = (v8 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v33 = sub_11F1920((a1 + 8));
      v7 = v34;
    }

    v22 = sub_1952690(v8, v33, v7, a3);
LABEL_54:
    v34 = v22;
    if (!v22)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_60:
  v34 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

char *sub_128C468(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 40);
  if (v5 >= 1)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    *__dst = 10;
    v6 = __dst + 1;
    if (v5 >= 0x80)
    {
      do
      {
        *v6++ = v5 | 0x80;
        v34 = v5 >> 14;
        v5 >>= 7;
      }

      while (v34);
      __dst = v6 - 1;
    }

    v7 = __dst + 2;
    *v6 = v5;
    v8 = *(a1 + 32);
    v9 = &v8[*(a1 + 24)];
    do
    {
      if (*a3 <= v7)
      {
        v7 = sub_225EB68(a3, v7);
      }

      v11 = *v8++;
      v10 = v11;
      *v7 = v11;
      if (v11 > 0x7F)
      {
        *v7 = v10 | 0x80;
        v12 = v10 >> 7;
        v7[1] = v10 >> 7;
        __dst = v7 + 2;
        if (v10 >= 0x4000)
        {
          LOBYTE(v7) = v7[1];
          do
          {
            *(__dst - 1) = v7 | 0x80;
            v7 = (v12 >> 7);
            *__dst++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        __dst = v7 + 1;
      }

      v7 = __dst;
    }

    while (v8 < v9);
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v15 = *(a1 + 96);
    *__dst = 16;
    __dst[1] = v15;
    if (v15 > 0x7F)
    {
      __dst[1] = v15 | 0x80;
      v16 = v15 >> 7;
      __dst[2] = v15 >> 7;
      v14 = __dst + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v17) = __dst[2];
        do
        {
          *(v14 - 1) = v17 | 0x80;
          v17 = v16 >> 7;
          *v14++ = v16 >> 7;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v14 = __dst + 2;
    }
  }

  else
  {
    v14 = __dst;
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v21 = *(*(a1 + 64) + 8 * i + 8);
      *v14 = 26;
      v22 = *(v21 + 20);
      v14[1] = v22;
      if (v22 > 0x7F)
      {
        v23 = sub_19575D0(v22, v14 + 1);
      }

      else
      {
        v23 = v14 + 2;
      }

      v14 = sub_128CEE4(v21, v23, a3);
    }
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    for (j = 0; j != v24; ++j)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v26 = *(*(a1 + 88) + 8 * j + 8);
      *v14 = 34;
      v27 = *(v26 + 20);
      v14[1] = v27;
      if (v27 > 0x7F)
      {
        v28 = sub_19575D0(v27, v14 + 1);
      }

      else
      {
        v28 = v14 + 2;
      }

      v14 = sub_128E36C(v26, v28, a3);
    }
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v14;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if ((*a3 - v14) >= v32)
  {
    v35 = v32;
    memcpy(v14, v33, v32);
    v14 += v35;
    return v14;
  }

  return sub_1957130(a3, v33, v32, v14);
}

uint64_t sub_128C7A0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  v5 = *(a1 + 56);
  v6 = v4 + v2 + v5;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_128D1D0(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 80);
  v13 = v6 + v12;
  v14 = *(a1 + 88);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = sub_128E4D4(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  if (*(a1 + 16))
  {
    v19 = *(a1 + 96);
    v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v19 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 11;
    }

    v13 += v21;
  }

  v22 = *(a1 + 8);
  if (v22)
  {
    v24 = v22 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v22 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    v13 += v25;
  }

  *(a1 + 20) = v13;
  return v13;
}

void sub_128C918(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 24;
    v6 = *(result + 6);
    sub_1959094(result + 6, v6 + v4);
    v7 = *(result + 4);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = sub_19592E8((result + 48), *(a2 + 56));
    sub_12A46D8(result + 6, v10, (v9 + 8), v8, **(result + 8) - *(result + 14));
    v11 = *(result + 14) + v8;
    *(result + 14) = v11;
    v12 = *(result + 8);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 80);
  if (v13)
  {
    v14 = *(a2 + 88);
    v15 = sub_19592E8((result + 72), *(a2 + 80));
    sub_12A4764(result + 9, v15, (v14 + 8), v13, **(result + 11) - *(result + 20));
    v16 = *(result + 20) + v13;
    *(result + 20) = v16;
    v17 = *(result + 11);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  if (*(a2 + 16))
  {
    v18 = *(a2 + 96);
    *(result + 4) |= 1u;
    *(result + 24) = v18;
  }

  v19 = *(a2 + 8);
  if (v19)
  {

    sub_1957EF4(result + 1, (v19 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_128CAA8(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_12A44B0(a1 + 6);
  sub_1956ABC((a1 + 3));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_128CB30(void *a1)
{
  sub_128CAA8(a1);

  operator delete();
}

uint64_t sub_128CB68(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  v2 = *(result + 56);
  if (v2 >= 1)
  {
    v3 = (*(result + 64) + 8);
    do
    {
      v4 = *v3++;
      result = sub_128D54C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 56) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_128CC00(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v32 + 1;
    v8 = *v32;
    if (*v32 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v32, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v32 + 2;
      }
    }

    v32 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 != 3)
    {
      if (v11 == 4 && v8 == 34)
      {
        v13 = v7 - 1;
        while (1)
        {
          v14 = v13 + 1;
          v32 = v13 + 1;
          v15 = *(a1 + 64);
          if (v15 && (v16 = *(a1 + 56), v16 < *v15))
          {
            *(a1 + 56) = v16 + 1;
            v17 = *&v15[2 * v16 + 2];
          }

          else
          {
            v18 = sub_1295074(*(a1 + 48));
            v17 = sub_19593CC(a1 + 48, v18);
            v14 = v32;
          }

          v13 = sub_21F3D10(a3, v17, v14);
          v32 = v13;
          if (!v13)
          {
            goto LABEL_54;
          }

          if (*a3 <= v13 || *v13 != 34)
          {
            goto LABEL_49;
          }
        }
      }

      goto LABEL_41;
    }

    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
    v23 = v7 + 1;
    v22 = *v7;
    if ((v22 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v24 = *v23;
    v22 = (v24 << 7) + v22 - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v23 = v7 + 2;
LABEL_33:
      v32 = v23;
      *(a1 + 76) = v22 != 0;
      goto LABEL_49;
    }

    v27 = sub_19587DC(v7, v22);
    v32 = v27;
    *(a1 + 76) = v28 != 0;
    if (!v27)
    {
      goto LABEL_54;
    }

LABEL_49:
    if (sub_195ADC0(a3, &v32, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_41;
    }

    v5 |= 1u;
    v20 = v7 + 1;
    LODWORD(v19) = *v7;
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    v21 = *v20;
    v19 = v19 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = v7 + 2;
LABEL_28:
      v32 = v20;
      *(a1 + 72) = v19;
      goto LABEL_49;
    }

    v25 = sub_19587DC(v7, v19);
    v32 = v25;
    *(a1 + 72) = v26;
    if (!v25)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (v11 != 2)
  {
    goto LABEL_41;
  }

  if (v8 == 18)
  {
    v12 = sub_1958928((a1 + 24), v7, a3);
    goto LABEL_48;
  }

  if (v8 == 16)
  {
    v33 = sub_128A7C8(&v32);
    sub_1950044((a1 + 24), &v33);
    if (!v32)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

LABEL_41:
  if (v8)
  {
    v29 = (v8 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v31 = sub_11F1920((a1 + 8));
      v7 = v32;
    }

    v12 = sub_1952690(v8, v31, v7, a3);
LABEL_48:
    v32 = v12;
    if (!v12)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_54:
  v32 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

char *sub_128CEE4(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 72);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  v11 = *(a1 + 40);
  if (v11 >= 1)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    *v6 = 18;
    v12 = v6 + 1;
    if (v11 >= 0x80)
    {
      do
      {
        *v12++ = v11 | 0x80;
        v32 = v11 >> 14;
        v11 >>= 7;
      }

      while (v32);
      v6 = v12 - 1;
    }

    v13 = v6 + 2;
    *v12 = v11;
    v14 = *(a1 + 32);
    v15 = &v14[*(a1 + 24)];
    do
    {
      if (*a3 <= v13)
      {
        v13 = sub_225EB68(a3, v13);
      }

      v17 = *v14++;
      v16 = v17;
      *v13 = v17;
      if (v17 > 0x7F)
      {
        *v13 = v16 | 0x80;
        v18 = v16 >> 7;
        v13[1] = v16 >> 7;
        v6 = v13 + 2;
        if (v16 >= 0x4000)
        {
          LOBYTE(v19) = v13[1];
          do
          {
            *(v6 - 1) = v19 | 0x80;
            v19 = v18 >> 7;
            *v6++ = v18 >> 7;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
        }
      }

      else
      {
        v6 = v13 + 1;
      }

      v13 = v6;
    }

    while (v14 < v15);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v21 = *(a1 + 76);
    *v6 = 24;
    v6[1] = v21;
    v6 += 2;
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v24 = *(*(a1 + 64) + 8 * i + 8);
      *v6 = 34;
      v25 = *(v24 + 20);
      v6[1] = v25;
      if (v25 > 0x7F)
      {
        v26 = sub_19575D0(v25, v6 + 1);
      }

      else
      {
        v26 = v6 + 2;
      }

      v6 = sub_128D9FC(v24, v26, a3);
    }
  }

  v27 = *(a1 + 8);
  if ((v27 & 1) == 0)
  {
    return v6;
  }

  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  v30 = *(v29 + 31);
  if (v30 < 0)
  {
    v31 = *(v29 + 8);
    v30 = *(v29 + 16);
  }

  else
  {
    v31 = (v29 + 8);
  }

  if ((*a3 - v6) >= v30)
  {
    v33 = v30;
    memcpy(v6, v31, v30);
    v6 += v33;
    return v6;
  }

  return sub_1957130(a3, v31, v30, v6);
}

uint64_t sub_128D1D0(uint64_t a1)
{
  v2 = sub_1959F14((a1 + 24));
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(a1 + 40) = v3;
  v5 = *(a1 + 56);
  v6 = v4 + v2 + v5;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_128DCBC(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 16);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      v13 = *(a1 + 72);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v6 += v15;
    }

    v6 += v12 & 2;
  }

  v16 = *(a1 + 8);
  if (v16)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
    v19 = *((v16 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v19 < 0)
    {
      v19 = *(v18 + 16);
    }

    v6 += v19;
  }

  *(a1 + 20) = v6;
  return v6;
}

void sub_128D308(char *result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 24;
    v6 = *(result + 6);
    sub_1959094(result + 6, v6 + v4);
    v7 = *(result + 4);
    *v5 += *(a2 + 24);
    memcpy((v7 + 8 * v6), *(a2 + 32), 8 * *(a2 + 24));
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = sub_19592E8((result + 48), *(a2 + 56));
    sub_12A47F0(result + 6, v10, (v9 + 8), v8, **(result + 8) - *(result + 14));
    v11 = *(result + 14) + v8;
    *(result + 14) = v11;
    v12 = *(result + 8);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      *(result + 18) = *(a2 + 72);
    }

    if ((v13 & 2) != 0)
    {
      result[76] = *(a2 + 76);
    }

    *(result + 4) |= v13;
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4(result + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_128D450(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (*(a1 + 56) != &qword_278E990)
  {
    sub_194E89C((a1 + 56));
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_9:
  sub_12A442C((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_128D514(uint64_t a1)
{
  sub_128D450(a1);

  operator delete();
}

uint64_t sub_128D54C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_128E0E8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_15:
  if ((v5 & 0x3C) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1957EA8(v8);
  }

  return result;
}

uint64_t sub_128D644(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v43 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v43, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v43 + 1);
    v8 = **v43;
    if (**v43 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v43, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v43 + 2);
      }
    }

    *v43 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 3)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v8 != 10)
      {
        goto LABEL_55;
      }

      *(a1 + 16) |= 1u;
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v27 = (a1 + 48);
      goto LABEL_54;
    }

    if (v11 == 2)
    {
      if (v8 != 18)
      {
        goto LABEL_55;
      }

      *(a1 + 16) |= 2u;
      v31 = *(a1 + 8);
      v26 = (v31 & 0xFFFFFFFFFFFFFFFCLL);
      if (v31)
      {
        v26 = *v26;
      }

      v27 = (a1 + 56);
LABEL_54:
      v32 = sub_194DB04(v27, v26);
      v33 = sub_1958890(v32, *v43, a3);
LABEL_62:
      *v43 = v33;
      if (!v33)
      {
        goto LABEL_74;
      }

      goto LABEL_63;
    }

    if (v11 != 3 || v8 != 24)
    {
      goto LABEL_55;
    }

    v5 |= 4u;
    v17 = v7 + 1;
    LODWORD(v16) = *v7;
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    v18 = *v17;
    v16 = v16 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_26:
      *v43 = v17;
      *(a1 + 64) = v16;
      goto LABEL_63;
    }

    v41 = sub_19587DC(v7, v16);
    *v43 = v41;
    *(a1 + 64) = v42;
    if (!v41)
    {
      goto LABEL_74;
    }

LABEL_63:
    if (sub_195ADC0(a3, v43, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 > 5)
  {
    if (v11 != 6)
    {
      if (v11 == 7 && v8 == 58)
      {
        v19 = v7 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v43 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_1295120(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v43;
          }

          v19 = sub_21F3C80(a3, v23, v20);
          *v43 = v19;
          if (!v19)
          {
            goto LABEL_74;
          }

          if (*a3 <= v19 || *v19 != 58)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_55;
    }

    if (v8 != 48)
    {
      goto LABEL_55;
    }

    v5 |= 0x20u;
    v29 = v7 + 1;
    v28 = *v7;
    if ((v28 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v30 = *v29;
    v28 = (v30 << 7) + v28 - 128;
    if ((v30 & 0x80000000) == 0)
    {
      v29 = v7 + 2;
LABEL_49:
      *v43 = v29;
      *(a1 + 73) = v28 != 0;
      goto LABEL_63;
    }

    v37 = sub_19587DC(v7, v28);
    *v43 = v37;
    *(a1 + 73) = v38 != 0;
    if (!v37)
    {
      goto LABEL_74;
    }

    goto LABEL_63;
  }

  if (v11 != 4)
  {
    if (v11 != 5 || v8 != 40)
    {
      goto LABEL_55;
    }

    v5 |= 0x10u;
    v13 = v7 + 1;
    v12 = *v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

    v14 = *v13;
    v12 = (v14 << 7) + v12 - 128;
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v7 + 2;
LABEL_15:
      *v43 = v13;
      *(a1 + 72) = v12 != 0;
      goto LABEL_63;
    }

    v39 = sub_19587DC(v7, v12);
    *v43 = v39;
    *(a1 + 72) = v40 != 0;
    if (!v39)
    {
      goto LABEL_74;
    }

    goto LABEL_63;
  }

  if (v8 == 37)
  {
    v5 |= 8u;
    *(a1 + 68) = *v7;
    *v43 = v7 + 4;
    goto LABEL_63;
  }

LABEL_55:
  if (v8)
  {
    v34 = (v8 & 7) == 4;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    v35 = *(a1 + 8);
    if (v35)
    {
      v36 = (v35 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v36 = sub_11F1920((a1 + 8));
      v7 = *v43;
    }

    v33 = sub_1952690(v8, v36, v7, a3);
    goto LABEL_62;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_74:
  *v43 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v43;
}