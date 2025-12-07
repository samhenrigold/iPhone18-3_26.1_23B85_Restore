void *sub_100E27C(void *a1)
{
  v2 = a1[109];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[106];
  if (v3)
  {
    v4 = a1[107];
    v5 = a1[106];
    if (v4 != v3)
    {
      do
      {
        v6 = v4 - 40;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_2674EA8[v7])(&v12, v4 - 40);
        }

        *(v4 - 8) = -1;
        v4 -= 40;
      }

      while (v6 != v3);
      v5 = a1[106];
    }

    a1[107] = v3;
    operator delete(v5);
  }

  v8 = a1[103];
  if (v8)
  {
    a1[104] = v8;
    operator delete(v8);
  }

  sub_360988((a1 + 7));
  v9 = a1[4];
  if (v9)
  {
    a1[5] = v9;
    operator delete(v9);
  }

  v10 = a1[1];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return a1;
}

uint64_t *sub_100E3A0(uint64_t *a1, unint64_t a2)
{
  sub_F6EB3C(v5);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = a1;
  v7 = 0;
  if (a2)
  {
    if (a2 < 0x76B981DAE6076CLL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_4547F0(v5);
  return a1;
}

void sub_100E474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49D8D0((v3 - 64));
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_100E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 8) = v4;
  sub_49D8D0((v5 - 64));
  sub_4547F0(va);
  _Unwind_Resume(a1);
}

void sub_100E4B0()
{
  byte_27C0B9F = 3;
  LODWORD(qword_27C0B88) = 5136193;
  byte_27C0BB7 = 3;
  LODWORD(qword_27C0BA0) = 5136194;
  byte_27C0BCF = 3;
  LODWORD(qword_27C0BB8) = 5136195;
  byte_27C0BE7 = 15;
  strcpy(&qword_27C0BD0, "vehicle_mass_kg");
  byte_27C0BFF = 21;
  strcpy(&xmmword_27C0BE8, "vehicle_cargo_mass_kg");
  byte_27C0C17 = 19;
  strcpy(&qword_27C0C00, "vehicle_aux_power_w");
  byte_27C0C2F = 15;
  strcpy(&qword_27C0C18, "dcdc_efficiency");
  strcpy(&qword_27C0C30, "drive_train_efficiency");
  HIBYTE(word_27C0C46) = 22;
  operator new();
}

void sub_100E68C(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0C46) < 0)
  {
    sub_21E66C0();
  }

  sub_21E66CC();
  _Unwind_Resume(a1);
}

uint64_t sub_100E6AC(uint64_t result)
{
  if (result < 3)
  {
    return result;
  }

  LODWORD(result) = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v6);
  sub_4A5C(&v6, "Unknown path computation method encountered: ", 45);
  std::ostream::operator<<();
  if ((v16 & 0x10) != 0)
  {
    v2 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v2 = v12;
    }

    v3 = v11;
    v1 = v2 - v11;
    if (v2 - v11 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }

LABEL_9:
    if (v1 >= 0x17)
    {
      operator new();
    }

    v5 = v1;
    if (v1)
    {
      memmove(&__p, v3, v1);
    }

    goto LABEL_14;
  }

  if ((v16 & 8) != 0)
  {
    v3 = v9;
    v1 = v10 - v9;
    if ((v10 - v9) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  v1 = 0;
  v5 = 0;
LABEL_14:
  *(&__p + v1) = 0;
  sub_7E854(&__p, 3u);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  std::locale::~locale(&v8);
  std::ostream::~ostream();
  std::ios::~ios();
  LOBYTE(result) = 0;
  return result;
}

void sub_100E910(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_100E954(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_10AC4E0((a1 + 1), a2);
  return a1;
}

int *sub_100E984(uint64_t a1, void *a2, int *a3, int *a4, uint64_t a5, int a6)
{
  if (sub_F69D6C(a2))
  {
    return &dword_2733CF8;
  }

  if (a6)
  {

    return sub_100F6B4(a1, a2, a3, a4, a5);
  }

  else
  {

    return sub_100EA3C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100EA3C(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v10 = sub_F6BC80(a2, *a4, a5, *a3, 0);
  v11 = v10;
  if (*(v10 + 12) == -1)
  {
    *v10 = *v6;
    *(v10 + 4) = v5;
    *(v10 + 8) = 0;
    *(v10 + 12) = *a3;
    v132 = sub_F695C8(a2);
    v13 = sub_73F1C(a2);
    v134 = 0u;
    v135 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v130 = _Q0;
    v136 = _Q0;
    v137 = 0x3FF0000000000000;
    v138 = 1;
    sub_10A5C78((a1 + 8), &v134, &v132, v13, a3);
    if (v138 == 1)
    {
      v20 = sub_F8634C(&v134, &v136, v19);
      v22 = *(&v135 + 1) + v21;
      v23 = (v135 + v20) | ((DWORD1(v135) + HIDWORD(v20)) << 32);
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v131 = v23;
    v132 = sub_F69610(a2);
    v24 = sub_F69058(a2);
    v134 = 0u;
    v135 = 0u;
    v136 = v130;
    v137 = 0x3FF0000000000000;
    v138 = 1;
    sub_10A5C78((a1 + 8), &v134, &v132, v24, a3);
    if (v138 == 1)
    {
      v26 = sub_F8634C(&v134, &v136, v25);
      v28 = *(&v135 + 1) + v27;
      v29 = (v135 + v26) | ((DWORD1(v135) + HIDWORD(v26)) << 32);
      v30 = v131;
      if (v131 == -1)
      {
        return v11;
      }
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      v30 = v131;
      if (v131 == -1)
      {
        return v11;
      }
    }

    v31 = HIDWORD(v30);
    if (HIDWORD(v30) != 0x7FFFFFFF && v22 != 0x7FFFFFFFFFFFFFFFLL && v29 != -1 && (v29 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v123 = v29;
      v124 = v28;
      v126 = v6;
      v127 = a1;
      if (!sub_F695B8(a2))
      {
        v128 = v22;
        v46 = sub_F69D08(a2) + 3;
        v47 = *(v11 + 48);
        if (v46 <= (v47 - *(v11 + 32)) >> 4)
        {
          v48 = *(v11 + 40);
          if (v48 >= v47)
          {
            v51 = *(v11 + 32);
            v52 = v48 - v51;
            v53 = (v48 - v51) >> 4;
            v54 = v53 + 1;
            if ((v53 + 1) >> 60)
            {
              goto LABEL_123;
            }

            if ((v47 - v51) >> 3 > v54)
            {
              v54 = (v47 - v51) >> 3;
            }

            if (v47 - v51 >= 0x7FFFFFFFFFFFFFF0)
            {
              v55 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              if (!(v55 >> 60))
              {
                operator new();
              }

              goto LABEL_124;
            }

            v56 = v53;
            v57 = (16 * v53);
            *v57 = v131;
            v57[1] = v128;
            v50 = 16 * v53 + 16;
            v58 = &v57[-2 * v56];
            memcpy(v58, v51, v52);
            *(v11 + 32) = v58;
            *(v11 + 40) = v50;
            *(v11 + 48) = 0;
            if (v51)
            {
              operator delete(v51);
            }

            a1 = v127;
            v49 = v128;
          }

          else
          {
            v49 = v128;
            *v48 = v131;
            *(v48 + 1) = v128;
            v50 = (v48 + 16);
          }

          *(v11 + 40) = v50;
          sub_4C35D4(a2, &v132);
          v59 = v132;
          v129 = v133;
          if (v132 == v133)
          {
LABEL_76:
            v81 = sub_F6966C(a2);
            v82 = sub_F6A054(a2);
            v134 = 0u;
            v135 = 0u;
            v136 = v130;
            v137 = 0x3FF0000000000000;
            v138 = 1;
            sub_10A8B08(a1 + 8, &v134, v81, v82, a3, *&v130, v83);
            if ((v138 & 1) == 0 || (v85 = sub_F8634C(&v134, &v136, v84), v135 + v85 == -1) || DWORD1(v135) + HIDWORD(v85) == 0x7FFFFFFF || *(&v135 + 1) + v86 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_81:
              *(v11 + 40) = *(v11 + 32);
              return v11;
            }

            v87 = *(v11 + 40);
            v88 = *(v87 - 8) + *(&v135 + 1) + v86;
            *&v134 = (*(v87 - 16) + v135 + v85) | ((*(v87 - 12) + DWORD1(v135) + HIDWORD(v85)) << 32);
            *(&v134 + 1) = v88;
            sub_1010364(v11 + 32, &v134);
            v89 = *(v11 + 40);
            v90 = (*(v89 - 16) + v123);
            v91 = (*(v89 - 12) + HIDWORD(v123));
            v92 = *(v89 - 8) + v124;
            *&v134 = v90 | (v91 << 32);
            *(&v134 + 1) = v92;
            sub_1010364(v11 + 32, &v134);
            v93 = *(*(v11 + 40) - 16);
LABEL_122:
            *(v11 + 16) = v93;
            return v11;
          }

          v125 = v5;
          while (1)
          {
            while (1)
            {
              v60 = sub_5FC64(a2);
              v61 = *(v60 + 32);
              v62 = 1000000000;
              if (*(v59 + 32) == v61)
              {
                v62 = 1000000000;
                if (*(v59 + 36) == WORD2(v61))
                {
                  v62 = 1000000000;
                  if (*(v59 + 38) == BYTE6(v61))
                  {
                    v63 = *(v60 + 72);
                    v62 = 1000000000;
                    if (*(v59 + 72) == v63)
                    {
                      v62 = 1000000000;
                      if (*(v59 + 76) == WORD2(v63))
                      {
                        v62 = 1000000000;
                        if (*(v59 + 78) == BYTE6(v63))
                        {
                          v62 = 1000000000;
                          if (*(v59 + 80) == *(v60 + 80))
                          {
                            v62 = 1000000000;
                            if (((*(v60 + 84) ^ *(v59 + 84)) & 7) == 0)
                            {
                              v62 = sub_F6A040(a2);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (*v6 == 0x7FFFFFFF)
              {
                v64 = 0x7FFFFFFF;
              }

              else
              {
                if (v31 < 0)
                {
                  v65 = -5;
                }

                else
                {
                  v65 = 5;
                }

                v64 = v31 / 10 + *v6 + (((103 * (v65 + v31 % 10)) >> 15) & 1) + ((103 * (v65 + v31 % 10)) >> 10);
              }

              v134 = 0u;
              v135 = 0u;
              v136 = v130;
              v137 = 0x3FF0000000000000;
              v138 = 1;
              sub_10AB718(a1 + 8, &v134, v59, v62, a3, v64, v5);
              if ((v138 & 1) == 0)
              {
                goto LABEL_81;
              }

              v67 = sub_F8634C(&v134, &v136, v66);
              if (v135 + v67 == -1 || DWORD1(v135) + HIDWORD(v67) == 0x7FFFFFFF || *(&v135 + 1) + v68 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_81;
              }

              v69 = v135 + v67 + v131;
              LODWORD(v31) = DWORD1(v135) + HIDWORD(v67) + v31;
              v49 += *(&v135 + 1) + v68;
              v70 = *(v11 + 40);
              v71 = *(v11 + 48);
              LODWORD(v131) = v69;
              if (v70 >= v71)
              {
                break;
              }

              *v70 = v69;
              *(v70 + 4) = v31;
              *(v70 + 8) = v49;
              *(v11 + 40) = v70 + 16;
              v59 += 88;
              if (v59 == v129)
              {
                goto LABEL_76;
              }
            }

            v72 = v31;
            v31 = v49;
            v73 = *(v11 + 32);
            v74 = v70 - v73;
            v75 = (v70 - v73) >> 4;
            v76 = v75 + 1;
            if ((v75 + 1) >> 60)
            {
              goto LABEL_123;
            }

            v77 = v71 - v73;
            if (v77 >> 3 > v76)
            {
              v76 = v77 >> 3;
            }

            v78 = v77 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v76;
            if (v78)
            {
              break;
            }

            v79 = 16 * v75;
            *v79 = v69;
            *(v79 + 4) = v72;
            *(v79 + 8) = v31;
            v80 = 16 * v75 + 16;
            memcpy(0, v73, v74);
            *(v11 + 32) = 0;
            *(v11 + 40) = v80;
            *(v11 + 48) = 0;
            if (v73)
            {
              operator delete(v73);
            }

            v5 = v125;
            v49 = v31;
            LODWORD(v31) = v72;
            v6 = v126;
            a1 = v127;
            *(v11 + 40) = v80;
            v59 += 88;
            if (v59 == v129)
            {
              goto LABEL_76;
            }
          }

          if (!(v78 >> 60))
          {
            operator new();
          }

          goto LABEL_124;
        }

        if (!(v46 >> 60))
        {
          operator new();
        }

        goto LABEL_123;
      }

      if (*(v11 + 48) - *(v11 + 32) <= 0x20uLL)
      {
        operator new();
      }

      v32 = sub_F6A030(a2);
      v33 = sub_F69654(a2);
      v134 = 0u;
      v135 = 0u;
      v136 = v130;
      v137 = 0x3FF0000000000000;
      v138 = 1;
      sub_10A8B08(a1 + 8, &v134, v33, v32, a3, *&v130, v34);
      if (v138)
      {
        v36 = sub_F8634C(&v134, &v136, v35);
        v38 = v135 + v36;
        v40 = v123;
        v39 = v124;
        if (v135 + v36 != -1)
        {
          v41 = DWORD1(v135) + HIDWORD(v36);
          if (DWORD1(v135) + HIDWORD(v36) != 0x7FFFFFFF)
          {
            v42 = *(&v135 + 1) + v37;
            if (*(&v135 + 1) + v37 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v44 = *(v11 + 40);
              v43 = *(v11 + 48);
              if (v44 >= v43)
              {
                v94 = *(v11 + 32);
                v95 = v44 - v94;
                v96 = (v44 - v94) >> 4;
                v97 = v96 + 1;
                if ((v96 + 1) >> 60)
                {
                  goto LABEL_123;
                }

                v98 = v43 - v94;
                if (v98 >> 3 > v97)
                {
                  v97 = v98 >> 3;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v99 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  if (!(v99 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_124;
                }

                v100 = (16 * v96);
                *v100 = v131;
                v100[1] = v22;
                v45 = (16 * v96 + 16);
                memcpy(0, v94, v95);
                *(v11 + 32) = 0;
                *(v11 + 40) = v45;
                *(v11 + 48) = 0;
                if (v94)
                {
                  operator delete(v94);
                }

                v40 = v123;
                v39 = v124;
              }

              else
              {
                *v44 = v131;
                v44[1] = v22;
                v45 = v44 + 2;
              }

              *(v11 + 40) = v45;
              v101 = *(v45 - 1) + v42;
              v102 = (*(v45 - 4) + v38) | ((*(v45 - 3) + v41) << 32);
              v103 = *(v11 + 48);
              if (v45 >= v103)
              {
                v105 = *(v11 + 32);
                v106 = (v45 - v105) >> 4;
                v107 = v106 + 1;
                if ((v106 + 1) >> 60)
                {
                  goto LABEL_123;
                }

                v108 = v103 - v105;
                if (v108 >> 3 > v107)
                {
                  v107 = v108 >> 3;
                }

                if (v108 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v109 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v109 = v107;
                }

                if (v109)
                {
                  if (!(v109 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_124;
                }

                v110 = (16 * v106);
                *v110 = v102;
                v110[1] = v101;
                v104 = (16 * v106 + 16);
                v111 = &v110[-2 * ((v45 - v105) >> 4)];
                memcpy(v111, v105, v45 - v105);
                *(v11 + 32) = v111;
                *(v11 + 40) = v104;
                *(v11 + 48) = 0;
                if (v105)
                {
                  operator delete(v105);
                }

                v40 = v123;
                v39 = v124;
              }

              else
              {
                *v45 = v102;
                v45[1] = v101;
                v104 = v45 + 2;
              }

              *(v11 + 40) = v104;
              v112 = *(v104 - 1) + v39;
              v113 = (*(v104 - 4) + v40) | ((*(v104 - 3) + HIDWORD(v40)) << 32);
              v114 = *(v11 + 48);
              if (v104 < v114)
              {
                *v104 = v113;
                v104[1] = v112;
                v115 = (v104 + 2);
LABEL_121:
                *(v11 + 40) = v115;
                v93 = *(v115 - 16);
                goto LABEL_122;
              }

              v116 = *(v11 + 32);
              v117 = v104 - v116;
              v118 = (v104 - v116) >> 4;
              v119 = v118 + 1;
              if (!((v118 + 1) >> 60))
              {
                v120 = v114 - v116;
                if (v120 >> 3 > v119)
                {
                  v119 = v120 >> 3;
                }

                if (v120 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v121 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v121 = v119;
                }

                if (!v121)
                {
                  v122 = (16 * v118);
                  *v122 = v113;
                  v122[1] = v112;
                  v115 = 16 * v118 + 16;
                  memcpy(0, v116, v117);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v115;
                  *(v11 + 48) = 0;
                  if (v116)
                  {
                    operator delete(v116);
                  }

                  goto LABEL_121;
                }

                if (!(v121 >> 60))
                {
                  operator new();
                }

LABEL_124:
                sub_1808();
              }

LABEL_123:
              sub_1794();
            }
          }
        }
      }
    }
  }

  return v11;
}

uint64_t sub_100F6B4(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_F6BC80(a2, *a4, a5, *a3, 1);
  v11 = v10;
  if (*(v10 + 12) == -1)
  {
    *v10 = *a4;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1;
    *(v10 + 12) = *a3;
    v142 = sub_F695C8(a2);
    v13 = sub_73F1C(a2);
    v144 = 0u;
    v145 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v141 = _Q0;
    v146 = _Q0;
    v147 = 0x3FF0000000000000;
    v148 = 1;
    sub_10A5C78((a1 + 8), &v144, &v142, v13, a3);
    if (v148 == 1)
    {
      v20 = sub_F8634C(&v144, &v146, v19);
      v22 = *(&v145 + 1) + v21;
      v23 = (v145 + v20) | ((DWORD1(v145) + HIDWORD(v20)) << 32);
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v139 = a4;
    *&v143 = v23;
    *(&v143 + 1) = v22;
    v142 = sub_F69610(a2);
    v24 = sub_F69058(a2);
    v144 = 0u;
    v145 = 0u;
    v146 = v141;
    v147 = 0x3FF0000000000000;
    v148 = 1;
    sub_10A5C78((a1 + 8), &v144, &v142, v24, a3);
    v140 = a1;
    if (v148 == 1)
    {
      v26 = sub_F8634C(&v144, &v146, v25);
      v28 = *(&v145 + 1) + v27;
      v29 = (v145 + v26) | ((DWORD1(v145) + HIDWORD(v26)) << 32);
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v23 != -1 && (v23 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v22 != 0x7FFFFFFFFFFFFFFFLL && v29 != -1 && HIDWORD(v29) != 0x7FFFFFFF && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v137 = v28;
      if (sub_F695B8(a2))
      {
        if (*(v11 + 48) - *(v11 + 32) <= 0x20uLL)
        {
          operator new();
        }

        v30 = sub_F6A030(a2);
        v31 = sub_F6966C(a2);
        v144 = 0u;
        v145 = 0u;
        v146 = v141;
        v147 = 0x3FF0000000000000;
        v148 = 1;
        sub_10A8B08(a1 + 8, &v144, v31, v30, a3, *&v141, v32);
        if (v148)
        {
          v34 = sub_F8634C(&v144, &v146, v33);
          v36 = v145 + v34;
          if (v145 + v34 != -1)
          {
            v37 = DWORD1(v145) + HIDWORD(v34);
            if (DWORD1(v145) + HIDWORD(v34) != 0x7FFFFFFF)
            {
              v38 = *(&v145 + 1) + v35;
              if (*(&v145 + 1) + v35 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v40 = *(v11 + 40);
                v39 = *(v11 + 48);
                if (v40 >= v39)
                {
                  v54 = *(v11 + 32);
                  v55 = v40 - v54;
                  v56 = (v40 - v54) >> 4;
                  v57 = v56 + 1;
                  if ((v56 + 1) >> 60)
                  {
                    goto LABEL_127;
                  }

                  v58 = v39 - v54;
                  if (v58 >> 3 > v57)
                  {
                    v57 = v58 >> 3;
                  }

                  if (v58 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v59 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v59 = v57;
                  }

                  if (v59)
                  {
                    if (!(v59 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_128;
                  }

                  *(16 * v56) = v143;
                  v41 = (16 * v56 + 16);
                  memcpy(0, v54, v55);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v41;
                  *(v11 + 48) = 0;
                  if (v54)
                  {
                    operator delete(v54);
                  }
                }

                else
                {
                  *v40 = v143;
                  v41 = (v40 + 1);
                }

                *(v11 + 40) = v41;
                v65 = *(v41 - 1) + v38;
                v66 = (*(v41 - 4) + v36) | ((*(v41 - 3) + v37) << 32);
                v67 = *(v11 + 48);
                if (v41 >= v67)
                {
                  v70 = *(v11 + 32);
                  v71 = v41 - v70;
                  v72 = (v41 - v70) >> 4;
                  v73 = v72 + 1;
                  if ((v72 + 1) >> 60)
                  {
                    goto LABEL_127;
                  }

                  v74 = v67 - v70;
                  if (v74 >> 3 > v73)
                  {
                    v73 = v74 >> 3;
                  }

                  if (v74 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v75 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v75 = v73;
                  }

                  v69 = v137;
                  if (v75)
                  {
                    if (!(v75 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_128;
                  }

                  v116 = v72;
                  v117 = (16 * v72);
                  *v117 = v66;
                  v117[1] = v65;
                  v68 = (16 * v72 + 16);
                  v118 = &v117[-2 * v116];
                  memcpy(v118, v70, v71);
                  *(v11 + 32) = v118;
                  *(v11 + 40) = v68;
                  *(v11 + 48) = 0;
                  if (v70)
                  {
                    operator delete(v70);
                  }
                }

                else
                {
                  *v41 = v66;
                  v41[1] = v65;
                  v68 = v41 + 2;
                  v69 = v137;
                }

                *(v11 + 40) = v68;
                v119 = *(v68 - 1) + v69;
                v120 = (*(v68 - 4) + v29) | ((*(v68 - 3) + HIDWORD(v29)) << 32);
                v121 = *(v11 + 48);
                if (v68 < v121)
                {
                  *v68 = v120;
                  v68[1] = v119;
                  v122 = (v68 + 2);
LABEL_126:
                  *(v11 + 40) = v122;
                  *(v11 + 16) = *(v122 - 16);
                  return v11;
                }

                v123 = *(v11 + 32);
                v124 = v68 - v123;
                v125 = (v68 - v123) >> 4;
                v126 = v125 + 1;
                if (!((v125 + 1) >> 60))
                {
                  v127 = v121 - v123;
                  if (v127 >> 3 > v126)
                  {
                    v126 = v127 >> 3;
                  }

                  if (v127 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v128 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v128 = v126;
                  }

                  if (v128)
                  {
                    if (!(v128 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_128;
                  }

                  v129 = (16 * v125);
                  *v129 = v120;
                  v129[1] = v119;
                  v122 = 16 * v125 + 16;
                  memcpy(0, v123, v124);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v122;
                  *(v11 + 48) = 0;
                  if (v123)
                  {
                    operator delete(v123);
                  }

                  goto LABEL_126;
                }

LABEL_127:
                sub_1794();
              }
            }
          }
        }
      }

      else
      {
        v42 = sub_F6966C(a2);
        v43 = sub_F6A054(a2);
        v144 = 0u;
        v145 = 0u;
        v146 = v141;
        v147 = 0x3FF0000000000000;
        v148 = 1;
        sub_10A8B08(a1 + 8, &v144, v42, v43, a3, *&v141, v44);
        if (v148)
        {
          v46 = sub_F8634C(&v144, &v146, v45);
          v48 = v145 + v46;
          v49 = v137;
          if (v145 + v46 != -1 && DWORD1(v145) + HIDWORD(v46) != 0x7FFFFFFF && *(&v145 + 1) + v47 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v133 = *(&v145 + 1) + v47;
            v135 = DWORD1(v145) + HIDWORD(v46);
            v50 = sub_F69D08(a2) + 3;
            v51 = *(v11 + 48);
            v132 = a3;
            if (v50 > (v51 - *(v11 + 32)) >> 4)
            {
              if (!(v50 >> 60))
              {
                operator new();
              }

              goto LABEL_127;
            }

            v52 = *(v11 + 40);
            if (v52 >= v51)
            {
              v60 = *(v11 + 32);
              v61 = v52 - v60;
              v62 = (v52 - v60) >> 4;
              v63 = v62 + 1;
              if ((v62 + 1) >> 60)
              {
                goto LABEL_127;
              }

              if ((v51 - v60) >> 3 > v63)
              {
                v63 = (v51 - v60) >> 3;
              }

              if (v51 - v60 >= 0x7FFFFFFFFFFFFFF0)
              {
                v64 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                if (!(v64 >> 60))
                {
                  operator new();
                }

LABEL_128:
                sub_1808();
              }

              v76 = v62;
              v77 = (16 * v62);
              *v77 = v29;
              v77[1] = v137;
              v53 = 16 * v62 + 16;
              v78 = &v77[-2 * v76];
              memcpy(v78, v60, v61);
              *(v11 + 32) = v78;
              *(v11 + 40) = v53;
              *(v11 + 48) = 0;
              if (v60)
              {
                operator delete(v60);
              }

              v49 = v137;
            }

            else
            {
              *v52 = v29;
              v52[1] = v137;
              v53 = (v52 + 2);
            }

            *(v11 + 40) = v53;
            v79 = v48 + v29;
            v80 = v135 + HIDWORD(v29);
            v81 = v133 + v49;
            sub_4C35D4(a2, &v144);
            v82 = *(&v144 + 1);
            v131 = v144;
            if (*(&v144 + 1) == v144)
            {
LABEL_103:
              sub_1010364(v11 + 32, &v143);
              v107 = v80;
              v108 = (v143 + v79);
              v109 = (DWORD1(v143) + v107);
              v110 = *(&v143 + 1) + v81;
              v111 = *(v11 + 32);
              v112 = *(v11 + 40);
              if (v111 != v112)
              {
                v113 = v112 - 2;
                if (v112 - 2 > v111)
                {
                  v114 = v111 + 2;
                  do
                  {
                    v115 = *(v114 - 1);
                    *(v114 - 1) = *v113;
                    *v113 = v115;
                    v113 -= 2;
                    _CF = v114 >= v113;
                    v114 += 2;
                  }

                  while (!_CF);
                  v111 = *(v11 + 32);
                  v112 = *(v11 + 40);
                }
              }

              sub_1010474(v111, v112, v111);
              *(v11 + 16) = v108 | (v109 << 32);
              *(v11 + 24) = v110;
            }

            else
            {
              v130 = v5;
              v83 = v139;
              while (1)
              {
                v86 = sub_5FC64(a2);
                v87 = *(v86 + 32);
                v88 = 1000000000;
                if (*(v82 - 14) == v87)
                {
                  v88 = 1000000000;
                  if (*(v82 - 26) == WORD2(v87))
                  {
                    v88 = 1000000000;
                    if (*(v82 - 50) == BYTE6(v87))
                    {
                      v89 = *(v86 + 72);
                      v88 = 1000000000;
                      if (*(v82 - 4) == v89)
                      {
                        v88 = 1000000000;
                        if (*(v82 - 6) == WORD2(v89))
                        {
                          v88 = 1000000000;
                          if (*(v82 - 10) == BYTE6(v89))
                          {
                            v88 = 1000000000;
                            if (*(v82 - 2) == *(v86 + 80))
                            {
                              v88 = 1000000000;
                              if (((*(v86 + 84) ^ *(v82 - 4)) & 7) == 0)
                              {
                                v88 = sub_F6A040(a2);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (*v83 == 0x7FFFFFFF)
                {
                  v90 = 0x7FFFFFFF;
                }

                else
                {
                  v91 = v80 < 0 ? -5 : 5;
                  v90 = v80 / -10 + *v83 + (((-103 * (v91 + v80 % 10)) >> 15) & 1) + ((-103 * (v91 + v80 % 10)) >> 10);
                }

                v82 -= 11;
                v144 = 0u;
                v145 = 0u;
                v146 = v141;
                v147 = 0x3FF0000000000000;
                v148 = 1;
                sub_10AB718(a1 + 8, &v144, v82, v88, v132, v90, v5);
                if ((v148 & 1) == 0)
                {
                  break;
                }

                v136 = v81;
                v138 = v80;
                v93 = sub_F8634C(&v144, &v146, v92);
                v95 = (v145 + v93);
                if (v95 == -1)
                {
                  break;
                }

                v96 = (DWORD1(v145) + HIDWORD(v93));
                if (v96 == 0x7FFFFFFF)
                {
                  break;
                }

                v97 = *(&v145 + 1) + v94;
                if (*(&v145 + 1) + v94 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                v98 = *(v11 + 40);
                v99 = *(v11 + 48);
                v134 = v79;
                if (v98 < v99)
                {
                  v84 = v5;
                  *v98 = v95 | (v96 << 32);
                  *(v98 + 1) = v97;
                  v85 = (v98 + 16);
                }

                else
                {
                  v100 = *(v11 + 32);
                  v101 = v98 - v100;
                  v102 = (v98 - v100) >> 4;
                  v103 = v102 + 1;
                  if ((v102 + 1) >> 60)
                  {
                    goto LABEL_127;
                  }

                  v104 = v99 - v100;
                  if (v104 >> 3 > v103)
                  {
                    v103 = v104 >> 3;
                  }

                  if (v104 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v105 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v105 = v103;
                  }

                  if (v105)
                  {
                    if (!(v105 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_128;
                  }

                  v106 = (16 * v102);
                  *v106 = v95 | (v96 << 32);
                  v106[1] = v97;
                  v85 = 16 * v102 + 16;
                  memcpy(0, v100, v101);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v85;
                  *(v11 + 48) = 0;
                  if (v100)
                  {
                    operator delete(v100);
                  }

                  v84 = v130;
                  v83 = v139;
                  a1 = v140;
                }

                *(v11 + 40) = v85;
                v79 = v95 + v134;
                v80 = v96 + v138;
                v81 = v97 + v136;
                v5 = v84;
                if (v82 == v131)
                {
                  goto LABEL_103;
                }
              }

              *(v11 + 40) = *(v11 + 32);
            }
          }
        }
      }
    }
  }

  return v11;
}

_OWORD *sub_1010364(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
  return (v5 - 16);
}

unint64_t *sub_1010474(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1 != a2)
  {
    v4 = *a1;
    v3 = a1[1];
    *a3 = *a1;
    a3[1] = v3;
    a3 += 2;
    v5 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v6 = HIDWORD(v4);
      do
      {
        v4 = (*v5 + v4);
        v6 = (*(v5 + 1) + v6);
        v3 += v5[1];
        *a3 = v4 | (v6 << 32);
        a3[1] = v3;
        a3 += 2;
        v5 += 2;
      }

      while (v5 != a2);
    }
  }

  return a3;
}

void *sub_10104C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_10B73A8();
  return a1;
}

int *sub_10104F4(int32x2_t *a1, void *a2, int *a3, int *a4, uint64_t a5, int a6)
{
  if (sub_F69D6C(a2))
  {
    return &dword_2733D38;
  }

  if (a6)
  {

    return sub_10112A0(a1, a2, a3, a4, a5);
  }

  else
  {

    return sub_10105AC(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_10105AC(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v10 = sub_F6BC80(a2, *a4, a5, *a3, 0);
  v11 = v10;
  if (*(v10 + 12) == -1)
  {
    *v10 = *v6;
    *(v10 + 4) = v5;
    *(v10 + 8) = 0;
    *(v10 + 12) = *v7;
    v137 = sub_F6C788(v8);
    v13 = sub_73F1C(v8);
    v139 = 0u;
    v140 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v135 = _Q0;
    v141 = _Q0;
    v142 = 0x3FF0000000000000;
    v143 = 1;
    sub_10AFB6C(a1 + 8, &v139, &v137, v13, v7, 0);
    if (v143 == 1)
    {
      v20 = sub_F8634C(&v139, &v141, v19);
      v133 = *(&v140 + 1) + v21;
      v22 = (v140 + v20) | ((DWORD1(v140) + HIDWORD(v20)) << 32);
    }

    else
    {
      v133 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v137 = sub_F6C7D0(v8);
    v23 = sub_F69058(v8);
    v139 = 0u;
    v140 = 0u;
    v141 = v135;
    v142 = 0x3FF0000000000000;
    v143 = 1;
    sub_10AFB6C(a1 + 8, &v139, &v137, v23, v7, 0);
    if (v143 == 1)
    {
      v25 = sub_F8634C(&v139, &v141, v24);
      v27 = *(&v140 + 1) + v26;
      v28 = (v140 + v25) | ((DWORD1(v140) + HIDWORD(v25)) << 32);
      v29 = v133;
      v30 = v22;
      if (v22 == -1)
      {
        return v11;
      }
    }

    else
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = v133;
      v30 = v22;
      if (v22 == -1)
      {
        return v11;
      }
    }

    v131 = HIDWORD(v30);
    if (HIDWORD(v30) != 0x7FFFFFFF && v29 != 0x7FFFFFFFFFFFFFFFLL && v28 != -1 && (v28 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v125 = v28;
      v126 = v27;
      v132 = a1;
      if (!sub_F695B8(v8))
      {
        v46 = sub_F6D008(v8) + 3;
        v47 = *(v11 + 48);
        if (v46 <= (v47 - *(v11 + 32)) >> 4)
        {
          v48 = *(v11 + 40);
          if (v48 >= v47)
          {
            v50 = *(v11 + 32);
            v51 = v48 - v50;
            v52 = (v48 - v50) >> 4;
            v53 = v52 + 1;
            if ((v52 + 1) >> 60)
            {
              goto LABEL_135;
            }

            if ((v47 - v50) >> 3 > v53)
            {
              v53 = (v47 - v50) >> 3;
            }

            if (v47 - v50 >= 0x7FFFFFFFFFFFFFF0)
            {
              v54 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v53;
            }

            if (v54)
            {
              if (!(v54 >> 60))
              {
                operator new();
              }

              goto LABEL_136;
            }

            v55 = (16 * v52);
            *v55 = v22;
            v55[1] = v133;
            v49 = 16 * v52 + 16;
            memcpy(0, v50, v51);
            *(v11 + 32) = 0;
            *(v11 + 40) = v49;
            *(v11 + 48) = 0;
            if (v50)
            {
              operator delete(v50);
            }

            v29 = v133;
            LODWORD(v30) = v22;
          }

          else
          {
            *v48 = v30;
            v48[1] = v29;
            v49 = (v48 + 2);
          }

          *(v11 + 40) = v49;
          sub_4C35D4(v8, &v137);
          v134 = v138;
          v56 = v131;
          if (v137 == v138)
          {
LABEL_83:
            v82 = sub_F6C814(v8);
            v83 = sub_F6A054(v8);
            v84 = 0x7FFFFFFF;
            if (*v6 != 0x7FFFFFFF)
            {
              if (v56 < 0)
              {
                v85 = -5;
              }

              else
              {
                v85 = 5;
              }

              v84 = v56 / 10 + *v6 + (((103 * (v85 + v56 % 10)) >> 15) & 1) + ((103 * (v85 + v56 % 10)) >> 10);
            }

            LODWORD(v137) = v84;
            v139 = 0u;
            v140 = 0u;
            v141 = v135;
            v142 = 0x3FF0000000000000;
            v143 = 1;
            sub_10AFF14(v132 + 8, &v139, v82, v83, v7, &v137, v5);
            if ((v143 & 1) == 0 || (v87 = sub_F8634C(&v139, &v141, v86), v140 + v87 == -1) || DWORD1(v140) + HIDWORD(v87) == 0x7FFFFFFF || *(&v140 + 1) + v88 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_93:
              *(v11 + 40) = *(v11 + 32);
              return v11;
            }

            v89 = *(v11 + 40);
            v90 = *(v89 - 8) + *(&v140 + 1) + v88;
            *&v139 = (*(v89 - 16) + v140 + v87) | ((*(v89 - 12) + DWORD1(v140) + HIDWORD(v87)) << 32);
            *(&v139 + 1) = v90;
            sub_1010364(v11 + 32, &v139);
            v91 = *(v11 + 40);
            v92 = (*(v91 - 16) + v125);
            v93 = (*(v91 - 12) + HIDWORD(v125));
            v94 = *(v91 - 8) + v126;
            *&v139 = v92 | (v93 << 32);
            *(&v139 + 1) = v94;
            sub_1010364(v11 + 32, &v139);
            v95 = *(*(v11 + 40) - 16);
LABEL_134:
            *(v11 + 16) = v95;
            return v11;
          }

          v57 = v137 + 72;
          v130 = v5;
          v58 = v132;
          v128 = v6;
          v129 = v8;
          v127 = v7;
          while (1)
          {
            while (1)
            {
              v60 = sub_5FC64(v8);
              v61 = *(v60 + 32);
              v62 = 1000000000;
              if (*(v57 - 40) == v61)
              {
                v62 = 1000000000;
                if (*(v57 - 36) == WORD2(v61))
                {
                  v62 = 1000000000;
                  if (*(v57 - 34) == BYTE6(v61))
                  {
                    v63 = *(v60 + 72);
                    v62 = 1000000000;
                    if (*v57 == v63)
                    {
                      v62 = 1000000000;
                      if (*(v57 + 4) == WORD2(v63))
                      {
                        v62 = 1000000000;
                        if (*(v57 + 6) == BYTE6(v63))
                        {
                          v62 = 1000000000;
                          if (*(v60 + 80) == *(v57 + 8))
                          {
                            v62 = 1000000000;
                            if (((*(v60 + 88) ^ *(v57 + 16)) & 3) == 0)
                            {
                              v62 = 1000000000;
                              if (((*(v60 + 84) ^ *(v57 + 12)) & 0x7FFF) == 0)
                              {
                                v62 = 1000000000;
                                if (((*(v60 + 88) ^ *(v57 + 16)) & 0x7C) == 0)
                                {
                                  v62 = 1000000000;
                                  if (*(v60 + 86) == *(v57 + 14))
                                  {
                                    v62 = sub_F6A040(v8);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              v64 = 0x7FFFFFFF;
              if (*v6 != 0x7FFFFFFF)
              {
                if (v56 < 0)
                {
                  v65 = -5;
                }

                else
                {
                  v65 = 5;
                }

                v64 = v56 / 10 + *v6 + (((103 * (v65 + v56 % 10)) >> 15) & 1) + ((103 * (v65 + v56 % 10)) >> 10);
              }

              v136 = v64;
              v139 = 0u;
              v140 = 0u;
              v141 = v135;
              v142 = 0x3FF0000000000000;
              v143 = 1;
              sub_10B54B8(v58 + 1, &v139, (v57 - 72), v62, v7, &v136, v5);
              if ((v143 & 1) == 0)
              {
                goto LABEL_93;
              }

              v67 = sub_F8634C(&v139, &v141, v66);
              if (v140 + v67 == -1 || DWORD1(v140) + HIDWORD(v67) == 0x7FFFFFFF || *(&v140 + 1) + v68 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_93;
              }

              LODWORD(v30) = v140 + v67 + v30;
              v56 += DWORD1(v140) + HIDWORD(v67);
              v29 += *(&v140 + 1) + v68;
              v69 = *(v11 + 40);
              v70 = *(v11 + 48);
              if (v69 >= v70)
              {
                break;
              }

              *v69 = v30;
              *(v69 + 4) = v56;
              *(v69 + 8) = v29;
              *(v11 + 40) = v69 + 16;
              v59 = v57 + 24;
              v57 += 96;
              v58 = v132;
              if (v59 == v134)
              {
                goto LABEL_83;
              }
            }

            v71 = v30;
            v72 = v29;
            v73 = *(v11 + 32);
            v74 = v69 - v73;
            v75 = (v69 - v73) >> 4;
            v76 = v75 + 1;
            if ((v75 + 1) >> 60)
            {
              goto LABEL_135;
            }

            v77 = v70 - v73;
            if (v77 >> 3 > v76)
            {
              v76 = v77 >> 3;
            }

            v78 = v77 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v76;
            if (v78)
            {
              break;
            }

            v79 = 16 * v75;
            *v79 = v71;
            *(v79 + 4) = v56;
            *(v79 + 8) = v72;
            v80 = 16 * v75 + 16;
            memcpy(0, v73, v74);
            *(v11 + 32) = 0;
            *(v11 + 40) = v80;
            *(v11 + 48) = 0;
            if (v73)
            {
              operator delete(v73);
            }

            v29 = v72;
            LODWORD(v30) = v71;
            v7 = v127;
            v6 = v128;
            v8 = v129;
            v5 = v130;
            *(v11 + 40) = v80;
            v81 = v57 + 24;
            v57 += 96;
            v58 = v132;
            if (v81 == v134)
            {
              goto LABEL_83;
            }
          }

          if (!(v78 >> 60))
          {
            operator new();
          }

          goto LABEL_136;
        }

        if (!(v46 >> 60))
        {
          operator new();
        }

        goto LABEL_135;
      }

      if (*(v11 + 48) - *(v11 + 32) <= 0x20uLL)
      {
        operator new();
      }

      v31 = sub_F6A030(v8);
      v32 = sub_F69654(v8);
      v33 = 0x7FFFFFFF;
      if (*v6 != 0x7FFFFFFF)
      {
        if (v30 < 0)
        {
          v34 = -5;
        }

        else
        {
          v34 = 5;
        }

        v33 = SHIDWORD(v30) / 10 + *v6 + (((103 * (SHIDWORD(v30) % 10 + v34)) >> 15) & 1) + ((103 * (SHIDWORD(v30) % 10 + v34)) >> 10);
      }

      LODWORD(v137) = v33;
      v139 = 0u;
      v140 = 0u;
      v141 = v135;
      v142 = 0x3FF0000000000000;
      v143 = 1;
      sub_10AFF14(a1 + 8, &v139, v32, v31, v7, &v137, v5);
      if (v143)
      {
        v36 = sub_F8634C(&v139, &v141, v35);
        v38 = v140 + v36;
        v40 = v125;
        v39 = v126;
        if (v140 + v36 != -1)
        {
          v41 = DWORD1(v140) + HIDWORD(v36);
          if (DWORD1(v140) + HIDWORD(v36) != 0x7FFFFFFF)
          {
            v42 = *(&v140 + 1) + v37;
            if (*(&v140 + 1) + v37 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v44 = *(v11 + 40);
              v43 = *(v11 + 48);
              if (v44 >= v43)
              {
                v96 = *(v11 + 32);
                v97 = v44 - v96;
                v98 = (v44 - v96) >> 4;
                v99 = v98 + 1;
                if ((v98 + 1) >> 60)
                {
                  goto LABEL_135;
                }

                v100 = v43 - v96;
                if (v100 >> 3 > v99)
                {
                  v99 = v100 >> 3;
                }

                if (v100 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v101 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v101 = v99;
                }

                if (v101)
                {
                  if (!(v101 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_136;
                }

                v102 = (16 * v98);
                *v102 = v22;
                v102[1] = v29;
                v45 = (16 * v98 + 16);
                memcpy(0, v96, v97);
                *(v11 + 32) = 0;
                *(v11 + 40) = v45;
                *(v11 + 48) = 0;
                if (v96)
                {
                  operator delete(v96);
                }

                v40 = v125;
                v39 = v126;
              }

              else
              {
                *v44 = v30;
                v44[1] = v29;
                v45 = (v44 + 2);
              }

              *(v11 + 40) = v45;
              v103 = *(v45 - 1) + v42;
              v104 = (*(v45 - 4) + v38) | ((*(v45 - 3) + v41) << 32);
              v105 = *(v11 + 48);
              if (v45 >= v105)
              {
                v107 = *(v11 + 32);
                v108 = (v45 - v107) >> 4;
                v109 = v108 + 1;
                if ((v108 + 1) >> 60)
                {
                  goto LABEL_135;
                }

                v110 = v105 - v107;
                if (v110 >> 3 > v109)
                {
                  v109 = v110 >> 3;
                }

                if (v110 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v111 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v111 = v109;
                }

                if (v111)
                {
                  if (!(v111 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_136;
                }

                v112 = (16 * v108);
                *v112 = v104;
                v112[1] = v103;
                v106 = (16 * v108 + 16);
                v113 = &v112[-2 * ((v45 - v107) >> 4)];
                memcpy(v113, v107, v45 - v107);
                *(v11 + 32) = v113;
                *(v11 + 40) = v106;
                *(v11 + 48) = 0;
                if (v107)
                {
                  operator delete(v107);
                }

                v40 = v125;
                v39 = v126;
              }

              else
              {
                *v45 = v104;
                v45[1] = v103;
                v106 = v45 + 2;
              }

              *(v11 + 40) = v106;
              v114 = *(v106 - 1) + v39;
              v115 = (*(v106 - 4) + v40) | ((*(v106 - 3) + HIDWORD(v40)) << 32);
              v116 = *(v11 + 48);
              if (v106 < v116)
              {
                *v106 = v115;
                v106[1] = v114;
                v117 = (v106 + 2);
LABEL_133:
                *(v11 + 40) = v117;
                v95 = *(v117 - 16);
                goto LABEL_134;
              }

              v118 = *(v11 + 32);
              v119 = v106 - v118;
              v120 = (v106 - v118) >> 4;
              v121 = v120 + 1;
              if (!((v120 + 1) >> 60))
              {
                v122 = v116 - v118;
                if (v122 >> 3 > v121)
                {
                  v121 = v122 >> 3;
                }

                if (v122 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v123 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v123 = v121;
                }

                if (!v123)
                {
                  v124 = (16 * v120);
                  *v124 = v115;
                  v124[1] = v114;
                  v117 = 16 * v120 + 16;
                  memcpy(0, v118, v119);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v117;
                  *(v11 + 48) = 0;
                  if (v118)
                  {
                    operator delete(v118);
                  }

                  goto LABEL_133;
                }

                if (!(v123 >> 60))
                {
                  operator new();
                }

LABEL_136:
                sub_1808();
              }

LABEL_135:
              sub_1794();
            }
          }
        }
      }
    }
  }

  return v11;
}

uint64_t sub_10112A0(int32x2_t *a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  v10 = sub_F6BC80(a2, *a4, a5, *a3, 1);
  v11 = v10;
  if (*(v10 + 12) == -1)
  {
    *v10 = *a4;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1;
    *(v10 + 12) = *a3;
    v144 = sub_F6C788(a2);
    v13 = sub_73F1C(a2);
    v146 = 0u;
    v147 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v143 = _Q0;
    v148 = _Q0;
    v149 = 0x3FF0000000000000;
    v150 = 1;
    sub_10AFB6C(&a1[1], &v146, &v144, v13, a3, 0);
    if (v150 == 1)
    {
      v20 = sub_F8634C(&v146, &v148, v19);
      v22 = *(&v147 + 1) + v21;
      v23 = (v147 + v20) | ((DWORD1(v147) + HIDWORD(v20)) << 32);
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v141 = a4;
    *&v145 = v23;
    *(&v145 + 1) = v22;
    v144 = sub_F6C7D0(a2);
    v24 = sub_F69058(a2);
    v146 = 0u;
    v147 = 0u;
    v148 = v143;
    v149 = 0x3FF0000000000000;
    v150 = 1;
    sub_10AFB6C(&a1[1], &v146, &v144, v24, a3, 0);
    v142 = a1;
    if (v150 == 1)
    {
      v26 = sub_F8634C(&v146, &v148, v25);
      v28 = *(&v147 + 1) + v27;
      v29 = (v147 + v26) | ((DWORD1(v147) + HIDWORD(v26)) << 32);
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v23 != -1 && (v23 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v22 != 0x7FFFFFFFFFFFFFFFLL && v29 != -1 && HIDWORD(v29) != 0x7FFFFFFF && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v139 = v28;
      if (sub_F695B8(a2))
      {
        if (*(v11 + 48) - *(v11 + 32) <= 0x20uLL)
        {
          operator new();
        }

        v30 = sub_F6A030(a2);
        v31 = sub_F6C814(a2);
        v32 = 0x7FFFFFFF;
        if (*v141 != 0x7FFFFFFF)
        {
          if (v29 < 0)
          {
            v33 = -5;
          }

          else
          {
            v33 = 5;
          }

          v32 = SHIDWORD(v29) / -10 + *v141 + (((-103 * (SHIDWORD(v29) % 10 + v33)) >> 15) & 1) + ((-103 * (SHIDWORD(v29) % 10 + v33)) >> 10);
        }

        LODWORD(v144) = v32;
        v146 = 0u;
        v147 = 0u;
        v148 = v143;
        v149 = 0x3FF0000000000000;
        v150 = 1;
        sub_10AFF14(&a1[1], &v146, v31, v30, a3, &v144, v5);
        if (v150)
        {
          v35 = sub_F8634C(&v146, &v148, v34);
          v37 = v147 + v35;
          if (v147 + v35 != -1)
          {
            v38 = DWORD1(v147) + HIDWORD(v35);
            if (DWORD1(v147) + HIDWORD(v35) != 0x7FFFFFFF)
            {
              v39 = *(&v147 + 1) + v36;
              if (*(&v147 + 1) + v36 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v41 = *(v11 + 40);
                v40 = *(v11 + 48);
                if (v41 >= v40)
                {
                  v56 = *(v11 + 32);
                  v57 = v41 - v56;
                  v58 = (v41 - v56) >> 4;
                  v59 = v58 + 1;
                  if ((v58 + 1) >> 60)
                  {
                    goto LABEL_139;
                  }

                  v60 = v40 - v56;
                  if (v60 >> 3 > v59)
                  {
                    v59 = v60 >> 3;
                  }

                  if (v60 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v61 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v61 = v59;
                  }

                  if (v61)
                  {
                    if (!(v61 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_140;
                  }

                  *(16 * v58) = v145;
                  v42 = (16 * v58 + 16);
                  memcpy(0, v56, v57);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v42;
                  *(v11 + 48) = 0;
                  if (v56)
                  {
                    operator delete(v56);
                  }
                }

                else
                {
                  *v41 = v145;
                  v42 = (v41 + 1);
                }

                *(v11 + 40) = v42;
                v67 = *(v42 - 1) + v39;
                v68 = (*(v42 - 4) + v37) | ((*(v42 - 3) + v38) << 32);
                v69 = *(v11 + 48);
                if (v42 >= v69)
                {
                  v72 = *(v11 + 32);
                  v73 = v42 - v72;
                  v74 = (v42 - v72) >> 4;
                  v75 = v74 + 1;
                  if ((v74 + 1) >> 60)
                  {
                    goto LABEL_139;
                  }

                  v76 = v69 - v72;
                  if (v76 >> 3 > v75)
                  {
                    v75 = v76 >> 3;
                  }

                  if (v76 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v77 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v77 = v75;
                  }

                  v71 = v139;
                  if (v77)
                  {
                    if (!(v77 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_140;
                  }

                  v118 = v74;
                  v119 = (16 * v74);
                  *v119 = v68;
                  v119[1] = v67;
                  v70 = (16 * v74 + 16);
                  v120 = &v119[-2 * v118];
                  memcpy(v120, v72, v73);
                  *(v11 + 32) = v120;
                  *(v11 + 40) = v70;
                  *(v11 + 48) = 0;
                  if (v72)
                  {
                    operator delete(v72);
                  }
                }

                else
                {
                  *v42 = v68;
                  v42[1] = v67;
                  v70 = v42 + 2;
                  v71 = v139;
                }

                *(v11 + 40) = v70;
                v121 = *(v70 - 1) + v71;
                v122 = (*(v70 - 4) + v29) | ((*(v70 - 3) + HIDWORD(v29)) << 32);
                v123 = *(v11 + 48);
                if (v70 < v123)
                {
                  *v70 = v122;
                  v70[1] = v121;
                  v124 = (v70 + 2);
LABEL_138:
                  *(v11 + 40) = v124;
                  *(v11 + 16) = *(v124 - 16);
                  return v11;
                }

                v125 = *(v11 + 32);
                v126 = v70 - v125;
                v127 = (v70 - v125) >> 4;
                v128 = v127 + 1;
                if (!((v127 + 1) >> 60))
                {
                  v129 = v123 - v125;
                  if (v129 >> 3 > v128)
                  {
                    v128 = v129 >> 3;
                  }

                  if (v129 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v130 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v130 = v128;
                  }

                  if (v130)
                  {
                    if (!(v130 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_140;
                  }

                  v131 = (16 * v127);
                  *v131 = v122;
                  v131[1] = v121;
                  v124 = 16 * v127 + 16;
                  memcpy(0, v125, v126);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v124;
                  *(v11 + 48) = 0;
                  if (v125)
                  {
                    operator delete(v125);
                  }

                  goto LABEL_138;
                }

LABEL_139:
                sub_1794();
              }
            }
          }
        }
      }

      else
      {
        v43 = sub_F6C814(a2);
        v44 = sub_F6A054(a2);
        v45 = 0x7FFFFFFF;
        if (*v141 != 0x7FFFFFFF)
        {
          if (v29 < 0)
          {
            v46 = -5;
          }

          else
          {
            v46 = 5;
          }

          v45 = SHIDWORD(v29) / -10 + *v141 + (((-103 * (SHIDWORD(v29) % 10 + v46)) >> 15) & 1) + ((-103 * (SHIDWORD(v29) % 10 + v46)) >> 10);
        }

        LODWORD(v144) = v45;
        v146 = 0u;
        v147 = 0u;
        v148 = v143;
        v149 = 0x3FF0000000000000;
        v150 = 1;
        sub_10AFF14(&a1[1], &v146, v43, v44, a3, &v144, v5);
        if (v150)
        {
          v48 = sub_F8634C(&v146, &v148, v47);
          v50 = v147 + v48;
          v51 = v139;
          if (v147 + v48 != -1 && DWORD1(v147) + HIDWORD(v48) != 0x7FFFFFFF && *(&v147 + 1) + v49 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v135 = *(&v147 + 1) + v49;
            v137 = DWORD1(v147) + HIDWORD(v48);
            v52 = sub_F6D008(a2) + 3;
            v53 = *(v11 + 48);
            v134 = a3;
            if (v52 > (v53 - *(v11 + 32)) >> 4)
            {
              if (!(v52 >> 60))
              {
                operator new();
              }

              goto LABEL_139;
            }

            v54 = *(v11 + 40);
            if (v54 >= v53)
            {
              v62 = *(v11 + 32);
              v63 = v54 - v62;
              v64 = (v54 - v62) >> 4;
              v65 = v64 + 1;
              if ((v64 + 1) >> 60)
              {
                goto LABEL_139;
              }

              if ((v53 - v62) >> 3 > v65)
              {
                v65 = (v53 - v62) >> 3;
              }

              if (v53 - v62 >= 0x7FFFFFFFFFFFFFF0)
              {
                v66 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v66 = v65;
              }

              if (v66)
              {
                if (!(v66 >> 60))
                {
                  operator new();
                }

LABEL_140:
                sub_1808();
              }

              v78 = v64;
              v79 = (16 * v64);
              *v79 = v29;
              v79[1] = v139;
              v55 = 16 * v64 + 16;
              v80 = &v79[-2 * v78];
              memcpy(v80, v62, v63);
              *(v11 + 32) = v80;
              *(v11 + 40) = v55;
              *(v11 + 48) = 0;
              if (v62)
              {
                operator delete(v62);
              }

              v51 = v139;
            }

            else
            {
              *v54 = v29;
              v54[1] = v139;
              v55 = (v54 + 2);
            }

            *(v11 + 40) = v55;
            v81 = v50 + v29;
            v82 = v137 + HIDWORD(v29);
            v83 = v135 + v51;
            sub_4C35D4(a2, &v146);
            v84 = *(&v146 + 1);
            v133 = v146;
            if (*(&v146 + 1) == v146)
            {
LABEL_115:
              sub_1010364(v11 + 32, &v145);
              v109 = v82;
              v110 = (v145 + v81);
              v111 = (DWORD1(v145) + v109);
              v112 = *(&v145 + 1) + v83;
              v113 = *(v11 + 32);
              v114 = *(v11 + 40);
              if (v113 != v114)
              {
                v115 = v114 - 2;
                if (v114 - 2 > v113)
                {
                  v116 = v113 + 2;
                  do
                  {
                    v117 = *(v116 - 1);
                    *(v116 - 1) = *v115;
                    *v115 = v117;
                    v115 -= 2;
                    _CF = v116 >= v115;
                    v116 += 2;
                  }

                  while (!_CF);
                  v113 = *(v11 + 32);
                  v114 = *(v11 + 40);
                }
              }

              sub_1010474(v113, v114, v113);
              *(v11 + 16) = v110 | (v111 << 32);
              *(v11 + 24) = v112;
            }

            else
            {
              v132 = v5;
              v85 = v141;
              while (1)
              {
                v88 = sub_5FC64(a2);
                v89 = *(v88 + 32);
                v90 = 1000000000;
                if (*(v84 - 16) == v89)
                {
                  v90 = 1000000000;
                  if (*(v84 - 30) == WORD2(v89))
                  {
                    v90 = 1000000000;
                    if (*(v84 - 58) == BYTE6(v89))
                    {
                      v91 = *(v88 + 72);
                      v90 = 1000000000;
                      if (*(v84 - 6) == v91)
                      {
                        v90 = 1000000000;
                        if (*(v84 - 10) == WORD2(v91))
                        {
                          v90 = 1000000000;
                          if (*(v84 - 18) == BYTE6(v91))
                          {
                            v90 = 1000000000;
                            if (*(v88 + 80) == *(v84 - 4))
                            {
                              v90 = 1000000000;
                              if (((*(v88 + 88) ^ *(v84 - 8)) & 3) == 0)
                              {
                                v90 = 1000000000;
                                if (((*(v88 + 84) ^ *(v84 - 6)) & 0x7FFF) == 0)
                                {
                                  v90 = 1000000000;
                                  if (((*(v88 + 88) ^ *(v84 - 8)) & 0x7C) == 0)
                                  {
                                    v90 = 1000000000;
                                    if (*(v88 + 86) == *(v84 - 5))
                                    {
                                      v90 = sub_F6A040(a2);
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v92 = 0x7FFFFFFF;
                if (*v85 != 0x7FFFFFFF)
                {
                  if (v82 < 0)
                  {
                    v93 = -5;
                  }

                  else
                  {
                    v93 = 5;
                  }

                  v92 = v82 / -10 + *v85 + (((-103 * (v93 + v82 % 10)) >> 15) & 1) + ((-103 * (v93 + v82 % 10)) >> 10);
                }

                v84 -= 12;
                LODWORD(v144) = v92;
                v146 = 0u;
                v147 = 0u;
                v148 = v143;
                v149 = 0x3FF0000000000000;
                v150 = 1;
                sub_10B54B8(a1 + 1, &v146, v84, v90, v134, &v144, v5);
                if ((v150 & 1) == 0)
                {
                  break;
                }

                v138 = v83;
                v140 = v82;
                v95 = sub_F8634C(&v146, &v148, v94);
                v97 = (v147 + v95);
                if (v97 == -1)
                {
                  break;
                }

                v98 = (DWORD1(v147) + HIDWORD(v95));
                if (v98 == 0x7FFFFFFF)
                {
                  break;
                }

                v99 = *(&v147 + 1) + v96;
                if (*(&v147 + 1) + v96 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                v100 = *(v11 + 40);
                v101 = *(v11 + 48);
                v136 = v81;
                if (v100 < v101)
                {
                  v86 = v5;
                  *v100 = v97 | (v98 << 32);
                  *(v100 + 1) = v99;
                  v87 = (v100 + 16);
                }

                else
                {
                  v102 = *(v11 + 32);
                  v103 = v100 - v102;
                  v104 = (v100 - v102) >> 4;
                  v105 = v104 + 1;
                  if ((v104 + 1) >> 60)
                  {
                    goto LABEL_139;
                  }

                  v106 = v101 - v102;
                  if (v106 >> 3 > v105)
                  {
                    v105 = v106 >> 3;
                  }

                  if (v106 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v107 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v107 = v105;
                  }

                  if (v107)
                  {
                    if (!(v107 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_140;
                  }

                  v108 = (16 * v104);
                  *v108 = v97 | (v98 << 32);
                  v108[1] = v99;
                  v87 = 16 * v104 + 16;
                  memcpy(0, v102, v103);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v87;
                  *(v11 + 48) = 0;
                  if (v102)
                  {
                    operator delete(v102);
                  }

                  v86 = v132;
                  v85 = v141;
                  a1 = v142;
                }

                *(v11 + 40) = v87;
                v81 = v97 + v136;
                v82 = v98 + v140;
                v83 = v99 + v138;
                v5 = v86;
                if (v84 == v133)
                {
                  goto LABEL_115;
                }
              }

              *(v11 + 40) = *(v11 + 32);
            }
          }
        }
      }
    }
  }

  return v11;
}

void *sub_1011FA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_10BD0E0(a1 + 1, a2);
  return a1;
}

int *sub_1011FD4(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5, int a6)
{
  if (sub_F6FDC8(a2))
  {
    return &dword_2733D78;
  }

  if (a6)
  {

    return sub_1012CBC(a1, a2, a3, a4, a5);
  }

  else
  {

    return sub_101208C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_101208C(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v10 = sub_F6BC80(a2, *a4, a5, *a3, 0);
  v11 = v10;
  if (*(v10 + 12) == -1)
  {
    *v10 = *v6;
    *(v10 + 4) = v5;
    *(v10 + 8) = 0;
    *(v10 + 12) = *a3;
    v130 = sub_F6F638(a2);
    v13 = sub_73F1C(a2);
    v132 = 0u;
    v133 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v128 = _Q0;
    v134 = _Q0;
    v135 = 0x3FF0000000000000;
    v136 = 1;
    sub_10B9770((a1 + 8), &v132, &v130, v13, a3, 0, 1);
    if (v136 == 1)
    {
      v20 = sub_F8634C(&v132, &v134, v19);
      v22 = *(&v133 + 1) + v21;
      v23 = (v133 + v20) | ((DWORD1(v133) + HIDWORD(v20)) << 32);
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v129 = v23;
    v130 = sub_F6F698(a2);
    v24 = sub_F69058(a2);
    v132 = 0u;
    v133 = 0u;
    v134 = v128;
    v135 = 0x3FF0000000000000;
    v136 = 1;
    sub_10B9770((a1 + 8), &v132, &v130, v24, a3, 0, 1);
    if (v136 == 1)
    {
      v26 = sub_F8634C(&v132, &v134, v25);
      v28 = *(&v133 + 1) + v27;
      v29 = (v133 + v26) | ((DWORD1(v133) + HIDWORD(v26)) << 32);
      v30 = v129;
      if (v129 == -1)
      {
        return v11;
      }
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      v30 = v129;
      if (v129 == -1)
      {
        return v11;
      }
    }

    v31 = HIDWORD(v30);
    if (HIDWORD(v30) != 0x7FFFFFFF && v22 != 0x7FFFFFFFFFFFFFFFLL && v29 != -1 && (v29 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v121 = v29;
      v122 = v28;
      v124 = v6;
      v125 = a1;
      if (!sub_83EB8(a2))
      {
        v126 = v22;
        v45 = sub_F69D08(a2) + 3;
        v46 = *(v11 + 48);
        if (v45 <= (v46 - *(v11 + 32)) >> 4)
        {
          v47 = *(v11 + 40);
          if (v47 >= v46)
          {
            v50 = *(v11 + 32);
            v51 = v47 - v50;
            v52 = (v47 - v50) >> 4;
            v53 = v52 + 1;
            if ((v52 + 1) >> 60)
            {
              goto LABEL_120;
            }

            if ((v46 - v50) >> 3 > v53)
            {
              v53 = (v46 - v50) >> 3;
            }

            if (v46 - v50 >= 0x7FFFFFFFFFFFFFF0)
            {
              v54 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v53;
            }

            if (v54)
            {
              if (!(v54 >> 60))
              {
                operator new();
              }

              goto LABEL_121;
            }

            v55 = v52;
            v56 = (16 * v52);
            *v56 = v129;
            v56[1] = v126;
            v49 = 16 * v52 + 16;
            v57 = &v56[-2 * v55];
            memcpy(v57, v50, v51);
            *(v11 + 32) = v57;
            *(v11 + 40) = v49;
            *(v11 + 48) = 0;
            if (v50)
            {
              operator delete(v50);
            }

            a1 = v125;
            v48 = v126;
          }

          else
          {
            v48 = v126;
            *v47 = v129;
            *(v47 + 1) = v126;
            v49 = (v47 + 16);
          }

          *(v11 + 40) = v49;
          sub_4C35D4(a2, &v130);
          v58 = v130;
          v127 = v131;
          if (v130 == v131)
          {
LABEL_73:
            v80 = sub_F6F70C(a2);
            v81 = sub_F6A054(a2);
            v132 = 0u;
            v133 = 0u;
            v134 = v128;
            v135 = 0x3FF0000000000000;
            v136 = 1;
            sub_10B9C08((a1 + 8), &v132, v80, v81, a3);
            if ((v136 & 1) == 0 || (v83 = sub_F8634C(&v132, &v134, v82), v133 + v83 == -1) || DWORD1(v133) + HIDWORD(v83) == 0x7FFFFFFF || *(&v133 + 1) + v84 == 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_78:
              *(v11 + 40) = *(v11 + 32);
              return v11;
            }

            v85 = *(v11 + 40);
            v86 = *(v85 - 8) + *(&v133 + 1) + v84;
            *&v132 = (*(v85 - 16) + v133 + v83) | ((*(v85 - 12) + DWORD1(v133) + HIDWORD(v83)) << 32);
            *(&v132 + 1) = v86;
            sub_1010364(v11 + 32, &v132);
            v87 = *(v11 + 40);
            v88 = (*(v87 - 16) + v121);
            v89 = (*(v87 - 12) + HIDWORD(v121));
            v90 = *(v87 - 8) + v122;
            *&v132 = v88 | (v89 << 32);
            *(&v132 + 1) = v90;
            sub_1010364(v11 + 32, &v132);
            v91 = *(*(v11 + 40) - 16);
LABEL_119:
            *(v11 + 16) = v91;
            return v11;
          }

          v123 = v5;
          while (1)
          {
            while (1)
            {
              v59 = sub_5FC64(a2);
              v60 = v59[4];
              v61 = 1000000000;
              if (*(v58 + 32) == v60)
              {
                v61 = 1000000000;
                if (*(v58 + 36) == HIDWORD(v60))
                {
                  v62 = v59[9];
                  v61 = 1000000000;
                  if (*(v58 + 72) == v62)
                  {
                    v61 = 1000000000;
                    if (*(v58 + 76) == HIDWORD(v62))
                    {
                      v61 = 1000000000;
                      if (((v59[10] ^ *(v58 + 80)) & 0x1FFFFFFFFFFFFFFFLL) == 0)
                      {
                        v61 = sub_F6A040(a2);
                      }
                    }
                  }
                }
              }

              if (*v6 == 0x7FFFFFFF)
              {
                v63 = 0x7FFFFFFF;
              }

              else
              {
                if (v31 < 0)
                {
                  v64 = -5;
                }

                else
                {
                  v64 = 5;
                }

                v63 = v31 / 10 + *v6 + (((103 * (v64 + v31 % 10)) >> 15) & 1) + ((103 * (v64 + v31 % 10)) >> 10);
              }

              v132 = 0u;
              v133 = 0u;
              v134 = v128;
              v135 = 0x3FF0000000000000;
              v136 = 1;
              sub_10BC914((a1 + 8), &v132, v58, v61, a3, v63, v5);
              if ((v136 & 1) == 0)
              {
                goto LABEL_78;
              }

              v66 = sub_F8634C(&v132, &v134, v65);
              if (v133 + v66 == -1 || DWORD1(v133) + HIDWORD(v66) == 0x7FFFFFFF || *(&v133 + 1) + v67 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_78;
              }

              v68 = v133 + v66 + v129;
              LODWORD(v31) = DWORD1(v133) + HIDWORD(v66) + v31;
              v48 += *(&v133 + 1) + v67;
              v69 = *(v11 + 40);
              v70 = *(v11 + 48);
              LODWORD(v129) = v68;
              if (v69 >= v70)
              {
                break;
              }

              *v69 = v68;
              *(v69 + 4) = v31;
              *(v69 + 8) = v48;
              *(v11 + 40) = v69 + 16;
              v58 += 88;
              if (v58 == v127)
              {
                goto LABEL_73;
              }
            }

            v71 = v31;
            v31 = v48;
            v72 = *(v11 + 32);
            v73 = v69 - v72;
            v74 = (v69 - v72) >> 4;
            v75 = v74 + 1;
            if ((v74 + 1) >> 60)
            {
              goto LABEL_120;
            }

            v76 = v70 - v72;
            if (v76 >> 3 > v75)
            {
              v75 = v76 >> 3;
            }

            v77 = v76 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v75;
            if (v77)
            {
              break;
            }

            v78 = 16 * v74;
            *v78 = v68;
            *(v78 + 4) = v71;
            *(v78 + 8) = v31;
            v79 = 16 * v74 + 16;
            memcpy(0, v72, v73);
            *(v11 + 32) = 0;
            *(v11 + 40) = v79;
            *(v11 + 48) = 0;
            if (v72)
            {
              operator delete(v72);
            }

            v5 = v123;
            v48 = v31;
            LODWORD(v31) = v71;
            v6 = v124;
            a1 = v125;
            *(v11 + 40) = v79;
            v58 += 88;
            if (v58 == v127)
            {
              goto LABEL_73;
            }
          }

          if (!(v77 >> 60))
          {
            operator new();
          }

          goto LABEL_121;
        }

        if (!(v45 >> 60))
        {
          operator new();
        }

        goto LABEL_120;
      }

      if (*(v11 + 48) - *(v11 + 32) <= 0x20uLL)
      {
        operator new();
      }

      v32 = sub_F6A030(a2);
      v33 = sub_F6F6F4(a2);
      v132 = 0u;
      v133 = 0u;
      v134 = v128;
      v135 = 0x3FF0000000000000;
      v136 = 1;
      sub_10B9C08((a1 + 8), &v132, v33, v32, a3);
      if (v136)
      {
        v35 = sub_F8634C(&v132, &v134, v34);
        v37 = v133 + v35;
        v39 = v121;
        v38 = v122;
        if (v133 + v35 != -1)
        {
          v40 = DWORD1(v133) + HIDWORD(v35);
          if (DWORD1(v133) + HIDWORD(v35) != 0x7FFFFFFF)
          {
            v41 = *(&v133 + 1) + v36;
            if (*(&v133 + 1) + v36 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = *(v11 + 40);
              v42 = *(v11 + 48);
              if (v43 >= v42)
              {
                v92 = *(v11 + 32);
                v93 = v43 - v92;
                v94 = (v43 - v92) >> 4;
                v95 = v94 + 1;
                if ((v94 + 1) >> 60)
                {
                  goto LABEL_120;
                }

                v96 = v42 - v92;
                if (v96 >> 3 > v95)
                {
                  v95 = v96 >> 3;
                }

                if (v96 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v97 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v97 = v95;
                }

                if (v97)
                {
                  if (!(v97 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_121;
                }

                v98 = (16 * v94);
                *v98 = v129;
                v98[1] = v22;
                v44 = (16 * v94 + 16);
                memcpy(0, v92, v93);
                *(v11 + 32) = 0;
                *(v11 + 40) = v44;
                *(v11 + 48) = 0;
                if (v92)
                {
                  operator delete(v92);
                }

                v39 = v121;
                v38 = v122;
              }

              else
              {
                *v43 = v129;
                v43[1] = v22;
                v44 = v43 + 2;
              }

              *(v11 + 40) = v44;
              v99 = *(v44 - 1) + v41;
              v100 = (*(v44 - 4) + v37) | ((*(v44 - 3) + v40) << 32);
              v101 = *(v11 + 48);
              if (v44 >= v101)
              {
                v103 = *(v11 + 32);
                v104 = (v44 - v103) >> 4;
                v105 = v104 + 1;
                if ((v104 + 1) >> 60)
                {
                  goto LABEL_120;
                }

                v106 = v101 - v103;
                if (v106 >> 3 > v105)
                {
                  v105 = v106 >> 3;
                }

                if (v106 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v107 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v107 = v105;
                }

                if (v107)
                {
                  if (!(v107 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_121;
                }

                v108 = (16 * v104);
                *v108 = v100;
                v108[1] = v99;
                v102 = (16 * v104 + 16);
                v109 = &v108[-2 * ((v44 - v103) >> 4)];
                memcpy(v109, v103, v44 - v103);
                *(v11 + 32) = v109;
                *(v11 + 40) = v102;
                *(v11 + 48) = 0;
                if (v103)
                {
                  operator delete(v103);
                }

                v39 = v121;
                v38 = v122;
              }

              else
              {
                *v44 = v100;
                v44[1] = v99;
                v102 = v44 + 2;
              }

              *(v11 + 40) = v102;
              v110 = *(v102 - 1) + v38;
              v111 = (*(v102 - 4) + v39) | ((*(v102 - 3) + HIDWORD(v39)) << 32);
              v112 = *(v11 + 48);
              if (v102 < v112)
              {
                *v102 = v111;
                v102[1] = v110;
                v113 = (v102 + 2);
LABEL_118:
                *(v11 + 40) = v113;
                v91 = *(v113 - 16);
                goto LABEL_119;
              }

              v114 = *(v11 + 32);
              v115 = v102 - v114;
              v116 = (v102 - v114) >> 4;
              v117 = v116 + 1;
              if (!((v116 + 1) >> 60))
              {
                v118 = v112 - v114;
                if (v118 >> 3 > v117)
                {
                  v117 = v118 >> 3;
                }

                if (v118 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v119 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v119 = v117;
                }

                if (!v119)
                {
                  v120 = (16 * v116);
                  *v120 = v111;
                  v120[1] = v110;
                  v113 = 16 * v116 + 16;
                  memcpy(0, v114, v115);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v113;
                  *(v11 + 48) = 0;
                  if (v114)
                  {
                    operator delete(v114);
                  }

                  goto LABEL_118;
                }

                if (!(v119 >> 60))
                {
                  operator new();
                }

LABEL_121:
                sub_1808();
              }

LABEL_120:
              sub_1794();
            }
          }
        }
      }
    }
  }

  return v11;
}

uint64_t sub_1012CBC(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v10 = sub_F6BC80(a2, *a4, a5, *a3, 1);
  v11 = v10;
  if (*(v10 + 12) == -1)
  {
    *v10 = *a4;
    *(v10 + 4) = v5;
    *(v10 + 8) = 1;
    *(v10 + 12) = *v7;
    v139 = sub_F6F638(a2);
    v13 = sub_73F1C(a2);
    v141 = 0u;
    v142 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v138 = _Q0;
    v143 = _Q0;
    v144 = 0x3FF0000000000000;
    v145 = 1;
    sub_10B9770((a1 + 8), &v141, &v139, v13, v7, 0, 1);
    if (v145 == 1)
    {
      v20 = sub_F8634C(&v141, &v143, v19);
      v22 = *(&v142 + 1) + v21;
      v23 = (v142 + v20) | ((DWORD1(v142) + HIDWORD(v20)) << 32);
    }

    else
    {
      v22 = 0x7FFFFFFFFFFFFFFFLL;
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v136 = a4;
    *&v140 = v23;
    *(&v140 + 1) = v22;
    v139 = sub_F6F698(a2);
    v24 = sub_F69058(a2);
    v141 = 0u;
    v142 = 0u;
    v143 = v138;
    v144 = 0x3FF0000000000000;
    v145 = 1;
    sub_10B9770((a1 + 8), &v141, &v139, v24, v7, 0, 1);
    v137 = a1;
    if (v145 == 1)
    {
      v26 = sub_F8634C(&v141, &v143, v25);
      v28 = *(&v142 + 1) + v27;
      v29 = (v142 + v26) | ((DWORD1(v142) + HIDWORD(v26)) << 32);
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v23 != -1 && (v23 & 0xFFFFFFFF00000000) != 0x7FFFFFFF00000000 && v22 != 0x7FFFFFFFFFFFFFFFLL && v29 != -1 && HIDWORD(v29) != 0x7FFFFFFF && v28 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v134 = v28;
      if (sub_83EB8(a2))
      {
        if (*(v11 + 48) - *(v11 + 32) <= 0x20uLL)
        {
          operator new();
        }

        v30 = sub_F6A030(a2);
        v31 = sub_F6F70C(a2);
        v141 = 0u;
        v142 = 0u;
        v143 = v138;
        v144 = 0x3FF0000000000000;
        v145 = 1;
        sub_10B9C08((a1 + 8), &v141, v31, v30, v7);
        if (v145)
        {
          v33 = sub_F8634C(&v141, &v143, v32);
          v35 = v142 + v33;
          if (v142 + v33 != -1)
          {
            v36 = DWORD1(v142) + HIDWORD(v33);
            if (DWORD1(v142) + HIDWORD(v33) != 0x7FFFFFFF)
            {
              v37 = *(&v142 + 1) + v34;
              if (*(&v142 + 1) + v34 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v39 = *(v11 + 40);
                v38 = *(v11 + 48);
                if (v39 >= v38)
                {
                  v52 = *(v11 + 32);
                  v53 = v39 - v52;
                  v54 = (v39 - v52) >> 4;
                  v55 = v54 + 1;
                  if ((v54 + 1) >> 60)
                  {
                    goto LABEL_124;
                  }

                  v56 = v38 - v52;
                  if (v56 >> 3 > v55)
                  {
                    v55 = v56 >> 3;
                  }

                  if (v56 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v57 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v57 = v55;
                  }

                  if (v57)
                  {
                    if (!(v57 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_125;
                  }

                  *(16 * v54) = v140;
                  v40 = (16 * v54 + 16);
                  memcpy(0, v52, v53);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v40;
                  *(v11 + 48) = 0;
                  if (v52)
                  {
                    operator delete(v52);
                  }
                }

                else
                {
                  *v39 = v140;
                  v40 = (v39 + 1);
                }

                *(v11 + 40) = v40;
                v63 = *(v40 - 1) + v37;
                v64 = (*(v40 - 4) + v35) | ((*(v40 - 3) + v36) << 32);
                v65 = *(v11 + 48);
                if (v40 >= v65)
                {
                  v68 = *(v11 + 32);
                  v69 = v40 - v68;
                  v70 = (v40 - v68) >> 4;
                  v71 = v70 + 1;
                  if ((v70 + 1) >> 60)
                  {
                    goto LABEL_124;
                  }

                  v72 = v65 - v68;
                  if (v72 >> 3 > v71)
                  {
                    v71 = v72 >> 3;
                  }

                  if (v72 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v73 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v73 = v71;
                  }

                  v67 = v134;
                  if (v73)
                  {
                    if (!(v73 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_125;
                  }

                  v114 = v70;
                  v115 = (16 * v70);
                  *v115 = v64;
                  v115[1] = v63;
                  v66 = (16 * v70 + 16);
                  v116 = &v115[-2 * v114];
                  memcpy(v116, v68, v69);
                  *(v11 + 32) = v116;
                  *(v11 + 40) = v66;
                  *(v11 + 48) = 0;
                  if (v68)
                  {
                    operator delete(v68);
                  }
                }

                else
                {
                  *v40 = v64;
                  v40[1] = v63;
                  v66 = v40 + 2;
                  v67 = v134;
                }

                *(v11 + 40) = v66;
                v117 = *(v66 - 1) + v67;
                v118 = (*(v66 - 4) + v29) | ((*(v66 - 3) + HIDWORD(v29)) << 32);
                v119 = *(v11 + 48);
                if (v66 < v119)
                {
                  *v66 = v118;
                  v66[1] = v117;
                  v120 = (v66 + 2);
LABEL_123:
                  *(v11 + 40) = v120;
                  *(v11 + 16) = *(v120 - 16);
                  return v11;
                }

                v121 = *(v11 + 32);
                v122 = v66 - v121;
                v123 = (v66 - v121) >> 4;
                v124 = v123 + 1;
                if (!((v123 + 1) >> 60))
                {
                  v125 = v119 - v121;
                  if (v125 >> 3 > v124)
                  {
                    v124 = v125 >> 3;
                  }

                  if (v125 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v126 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v126 = v124;
                  }

                  if (v126)
                  {
                    if (!(v126 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_125;
                  }

                  v127 = (16 * v123);
                  *v127 = v118;
                  v127[1] = v117;
                  v120 = 16 * v123 + 16;
                  memcpy(0, v121, v122);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v120;
                  *(v11 + 48) = 0;
                  if (v121)
                  {
                    operator delete(v121);
                  }

                  goto LABEL_123;
                }

LABEL_124:
                sub_1794();
              }
            }
          }
        }
      }

      else
      {
        v41 = sub_F6F70C(a2);
        v42 = sub_F6A054(a2);
        v141 = 0u;
        v142 = 0u;
        v143 = v138;
        v144 = 0x3FF0000000000000;
        v145 = 1;
        sub_10B9C08((a1 + 8), &v141, v41, v42, v7);
        if (v145)
        {
          v44 = sub_F8634C(&v141, &v143, v43);
          v46 = v142 + v44;
          v47 = v134;
          if (v142 + v44 != -1 && DWORD1(v142) + HIDWORD(v44) != 0x7FFFFFFF && *(&v142 + 1) + v45 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v129 = *(&v142 + 1) + v45;
            v132 = DWORD1(v142) + HIDWORD(v44);
            v48 = sub_F69D08(a2) + 3;
            v49 = *(v11 + 48);
            v131 = v5;
            if (v48 > (v49 - *(v11 + 32)) >> 4)
            {
              if (!(v48 >> 60))
              {
                operator new();
              }

              goto LABEL_124;
            }

            v50 = *(v11 + 40);
            if (v50 >= v49)
            {
              v58 = *(v11 + 32);
              v59 = v50 - v58;
              v60 = (v50 - v58) >> 4;
              v61 = v60 + 1;
              if ((v60 + 1) >> 60)
              {
                goto LABEL_124;
              }

              if ((v49 - v58) >> 3 > v61)
              {
                v61 = (v49 - v58) >> 3;
              }

              if (v49 - v58 >= 0x7FFFFFFFFFFFFFF0)
              {
                v62 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v62 = v61;
              }

              if (v62)
              {
                if (!(v62 >> 60))
                {
                  operator new();
                }

LABEL_125:
                sub_1808();
              }

              v74 = v60;
              v75 = (16 * v60);
              *v75 = v29;
              v75[1] = v134;
              v51 = 16 * v60 + 16;
              v76 = &v75[-2 * v74];
              memcpy(v76, v58, v59);
              *(v11 + 32) = v76;
              *(v11 + 40) = v51;
              *(v11 + 48) = 0;
              if (v58)
              {
                operator delete(v58);
              }

              v47 = v134;
            }

            else
            {
              *v50 = v29;
              v50[1] = v134;
              v51 = (v50 + 2);
            }

            *(v11 + 40) = v51;
            v77 = v46 + v29;
            v78 = v132 + HIDWORD(v29);
            v79 = v129 + v47;
            sub_4C35D4(a2, &v141);
            v80 = *(&v141 + 1);
            v130 = v141;
            if (*(&v141 + 1) == v141)
            {
LABEL_100:
              sub_1010364(v11 + 32, &v140);
              v105 = v78;
              v106 = (v140 + v77);
              v107 = (DWORD1(v140) + v105);
              v108 = *(&v140 + 1) + v79;
              v109 = *(v11 + 32);
              v110 = *(v11 + 40);
              if (v109 != v110)
              {
                v111 = v110 - 2;
                if (v110 - 2 > v109)
                {
                  v112 = v109 + 2;
                  do
                  {
                    v113 = *(v112 - 1);
                    *(v112 - 1) = *v111;
                    *v111 = v113;
                    v111 -= 2;
                    _CF = v112 >= v111;
                    v112 += 2;
                  }

                  while (!_CF);
                  v109 = *(v11 + 32);
                  v110 = *(v11 + 40);
                }
              }

              sub_1010474(v109, v110, v109);
              *(v11 + 16) = v106 | (v107 << 32);
              *(v11 + 24) = v108;
            }

            else
            {
              v81 = v136;
              v128 = v7;
              while (1)
              {
                v84 = sub_5FC64(a2);
                v85 = v84[4];
                v86 = 1000000000;
                if (*(v80 - 14) == v85)
                {
                  v86 = 1000000000;
                  if (*(v80 - 13) == HIDWORD(v85))
                  {
                    v87 = v84[9];
                    v86 = 1000000000;
                    if (*(v80 - 4) == v87)
                    {
                      v86 = 1000000000;
                      if (*(v80 - 3) == HIDWORD(v87))
                      {
                        v86 = 1000000000;
                        if (((v84[10] ^ *(v80 - 1)) & 0x1FFFFFFFFFFFFFFFLL) == 0)
                        {
                          v86 = sub_F6A040(a2);
                        }
                      }
                    }
                  }
                }

                if (*v81 == 0x7FFFFFFF)
                {
                  v88 = 0x7FFFFFFF;
                }

                else
                {
                  v89 = v78 < 0 ? -5 : 5;
                  v88 = v78 / -10 + *v81 + (((-103 * (v89 + v78 % 10)) >> 15) & 1) + ((-103 * (v89 + v78 % 10)) >> 10);
                }

                v80 -= 11;
                v141 = 0u;
                v142 = 0u;
                v143 = v138;
                v144 = 0x3FF0000000000000;
                v145 = 1;
                sub_10BC914((a1 + 8), &v141, v80, v86, v7, v88, v131);
                if ((v145 & 1) == 0)
                {
                  break;
                }

                v133 = v79;
                v135 = v78;
                v91 = sub_F8634C(&v141, &v143, v90);
                v93 = (v142 + v91);
                if (v93 == -1)
                {
                  break;
                }

                v94 = (DWORD1(v142) + HIDWORD(v91));
                if (v94 == 0x7FFFFFFF)
                {
                  break;
                }

                v95 = *(&v142 + 1) + v92;
                if (*(&v142 + 1) + v92 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  break;
                }

                v96 = *(v11 + 40);
                v97 = *(v11 + 48);
                if (v96 < v97)
                {
                  v82 = v77;
                  *v96 = v93 | (v94 << 32);
                  *(v96 + 1) = v95;
                  v83 = (v96 + 16);
                }

                else
                {
                  v98 = *(v11 + 32);
                  v99 = v96 - v98;
                  v100 = (v96 - v98) >> 4;
                  v101 = v100 + 1;
                  if ((v100 + 1) >> 60)
                  {
                    goto LABEL_124;
                  }

                  v82 = v77;
                  v102 = v97 - v98;
                  if (v102 >> 3 > v101)
                  {
                    v101 = v102 >> 3;
                  }

                  if (v102 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v103 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v103 = v101;
                  }

                  if (v103)
                  {
                    if (!(v103 >> 60))
                    {
                      operator new();
                    }

                    goto LABEL_125;
                  }

                  v104 = (16 * v100);
                  *v104 = v93 | (v94 << 32);
                  v104[1] = v95;
                  v83 = 16 * v100 + 16;
                  memcpy(0, v98, v99);
                  *(v11 + 32) = 0;
                  *(v11 + 40) = v83;
                  *(v11 + 48) = 0;
                  if (v98)
                  {
                    operator delete(v98);
                  }

                  v81 = v136;
                  a1 = v137;
                }

                *(v11 + 40) = v83;
                v77 = v93 + v82;
                v78 = v94 + v135;
                v79 = v95 + v133;
                v7 = v128;
                if (v80 == v130)
                {
                  goto LABEL_100;
                }
              }

              *(v11 + 40) = *(v11 + 32);
            }
          }
        }
      }
    }
  }

  return v11;
}

double sub_1013920()
{
  if ((byte_2733D30 & 1) == 0)
  {
    byte_2733D30 = 1;
    dword_2733CF8 = 0x7FFFFFFF;
    byte_2733CFC = 0;
    result = NAN;
    unk_2733D00 = xmmword_2291330;
    qword_2733D10 = 0x7FFFFFFFFFFFFFFFLL;
    unk_2733D18 = 0;
    qword_2733D20 = 0;
    unk_2733D28 = 0;
  }

  return result;
}

double sub_1013964()
{
  if ((byte_2733D70 & 1) == 0)
  {
    byte_2733D70 = 1;
    dword_2733D38 = 0x7FFFFFFF;
    byte_2733D3C = 0;
    result = NAN;
    unk_2733D40 = xmmword_2291330;
    qword_2733D50 = 0x7FFFFFFFFFFFFFFFLL;
    unk_2733D58 = 0;
    qword_2733D60 = 0;
    unk_2733D68 = 0;
  }

  return result;
}

double sub_10139A8()
{
  if ((byte_2733DB0 & 1) == 0)
  {
    byte_2733DB0 = 1;
    dword_2733D78 = 0x7FFFFFFF;
    byte_2733D7C = 0;
    result = NAN;
    unk_2733D80 = xmmword_2291330;
    qword_2733D90 = 0x7FFFFFFFFFFFFFFFLL;
    unk_2733D98 = 0;
    qword_2733DA0 = 0;
    unk_2733DA8 = 0;
  }

  return result;
}

void sub_10139EC()
{
  byte_27C0CA7 = 3;
  LODWORD(qword_27C0C90) = 5136193;
  byte_27C0CBF = 3;
  LODWORD(qword_27C0CA8) = 5136194;
  byte_27C0CD7 = 3;
  LODWORD(qword_27C0CC0) = 5136195;
  byte_27C0CEF = 15;
  strcpy(&qword_27C0CD8, "vehicle_mass_kg");
  byte_27C0D07 = 21;
  strcpy(&xmmword_27C0CF0, "vehicle_cargo_mass_kg");
  byte_27C0D1F = 19;
  strcpy(&qword_27C0D08, "vehicle_aux_power_w");
  byte_27C0D37 = 15;
  strcpy(&qword_27C0D20, "dcdc_efficiency");
  strcpy(&qword_27C0D38, "drive_train_efficiency");
  HIBYTE(word_27C0D4E) = 22;
  operator new();
}

void sub_1013BC8(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0D4E) < 0)
  {
    sub_21E679C();
  }

  sub_21E67A8();
  _Unwind_Resume(a1);
}

uint64_t sub_1013BE8(uint64_t a1, int a2)
{
  if ((*(a1 + 176) & 1) != 0 || (*(a1 + 177) & 1) != 0 || (!*(a1 + 1144) ? (v3 = *(a1 + 1148) == 0) : (v3 = 0), !v3))
  {
    if (a2 == 2)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else if (a2 == 2 && *(a1 + 1152) != 0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

BOOL sub_1013C50(void *a1, uint64_t **a2, uint64_t a3)
{
  if (*a2 == a2[1])
  {
    return 1;
  }

  HIBYTE(v55[2]) = 21;
  strcpy(v55, "run_if_all_paths_have");
  v6 = sub_5FC3C(a1, v55);
  if ((SHIBYTE(v55[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v41 = v6;
  operator delete(*&v55[0]);
  if (!v41)
  {
    return 1;
  }

LABEL_4:
  v56 = 0;
  v57 = 0;
  v58 = 0;
  HIBYTE(v55[2]) = 21;
  strcpy(v55, "run_if_all_paths_have");
  v7 = sub_5FAE8(a1, v55, &v56);
  if (SHIBYTE(v55[2]) < 0)
  {
    v43 = v7;
    operator delete(*&v55[0]);
    v8 = *v43;
    v9 = v43[1];
    if (*v43 != v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (v8[2] != 1)
        {
          sub_5AF20();
        }

        v11 = *v8;
        if (*(*v8 + 23) < 0)
        {
          if (v11[1] == 5 && **v11 == 1819045748 && *(*v11 + 4) == 115)
          {
LABEL_73:
            v10 |= 0x10uLL;
            goto LABEL_8;
          }

          if (v11[1] == 7 && **v11 == 1920099686 && *(*v11 + 3) == 1936025970)
          {
            goto LABEL_94;
          }

          if (v11[1] == 5 && **v11 == 1685221222 && *(*v11 + 4) == 115)
          {
            goto LABEL_72;
          }

          if (v11[1] == 8 && **v11 == 0x7379617768676968)
          {
            goto LABEL_51;
          }

          v17 = v11[1];
          if (v17 == 21)
          {
            if (**v11 == 0x6E6F635F6C6C6F74 && *(*v11 + 8) == 0x5F6E6F6974736567 && *(*v11 + 13) == 0x73656E6F7A5F6E6FLL)
            {
              goto LABEL_133;
            }
          }

          else if (v17 == 30)
          {
            v18 = **v11 == 0x6D6E6F7269766E65 && *(*v11 + 8) == 0x6F635F6C61746E65;
            v19 = v18 && *(*v11 + 16) == 0x6E6F69747365676ELL;
            if (v19 && *(*v11 + 22) == 0x73656E6F7A5F6E6FLL)
            {
              v10 |= 0x400uLL;
              goto LABEL_8;
            }
          }

          if (v11[1] == 19)
          {
            v31 = **v11 == 0x756F7265676E6164 && *(*v11 + 8) == 0x6E65757165735F73;
            if (v31 && *(*v11 + 11) == 0x7365636E65757165)
            {
              goto LABEL_132;
            }
          }

          if (v11[1] == 14 && **v11 == 0x636E695F61657261 && *(*v11 + 6) == 0x73746E656469636ELL)
          {
            goto LABEL_134;
          }

          if (v11[1] != 16)
          {
            goto LABEL_121;
          }

          v13 = *v11;
        }

        else
        {
          v12 = *(*v8 + 23);
          if (v12 <= 0xD)
          {
            if (v12 == 5)
            {
              if (*v11 == 1819045748 && *(v11 + 4) == 115)
              {
                goto LABEL_73;
              }

              if (*v11 != 1685221222 || *(v11 + 4) != 115)
              {
LABEL_121:
                if (sub_A7DB8C(*v8, "dangerous_turns"))
                {
                  v10 |= 0x2000uLL;
                }

                else if (sub_7E7E4(1u))
                {
                  sub_19594F8(v55);
                  v37 = sub_4A5C(v55, "Unknown condition for running path finding algorithm: ", 54);
                  v38 = *(v11 + 23);
                  if (v38 >= 0)
                  {
                    v39 = v11;
                  }

                  else
                  {
                    v39 = *v11;
                  }

                  if (v38 >= 0)
                  {
                    v40 = *(v11 + 23);
                  }

                  else
                  {
                    v40 = v11[1];
                  }

                  sub_4A5C(v37, v39, v40);
                  sub_1959680(v55, __p);
                  sub_7E854(__p, 1u);
                  if (v54 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  sub_1959728(v55);
                }

                goto LABEL_8;
              }

LABEL_72:
              v10 |= 0x80uLL;
              goto LABEL_8;
            }

            if (v12 == 7)
            {
              if (*v11 != 1920099686 || *(v11 + 3) != 1936025970)
              {
                goto LABEL_121;
              }

LABEL_94:
              v10 |= 0x40uLL;
              goto LABEL_8;
            }

            if (v12 != 8 || *v11 != 0x7379617768676968)
            {
              goto LABEL_121;
            }

LABEL_51:
            v10 |= 0x20uLL;
            goto LABEL_8;
          }

          if (*(*v8 + 23) > 0x12u)
          {
            if (v12 != 19)
            {
              if (v12 != 21)
              {
                goto LABEL_121;
              }

              v21 = *v11 == 0x6E6F635F6C6C6F74 && v11[1] == 0x5F6E6F6974736567;
              if (!v21 || *(v11 + 13) != 0x73656E6F7A5F6E6FLL)
              {
                goto LABEL_121;
              }

LABEL_133:
              v10 |= 0x200uLL;
              goto LABEL_8;
            }

            if (*v11 != 0x756F7265676E6164 || v11[1] != 0x6E65757165735F73 || *(v11 + 11) != 0x7365636E65757165)
            {
              goto LABEL_121;
            }

LABEL_132:
            v10 |= 0x1000uLL;
            goto LABEL_8;
          }

          if (v12 == 14)
          {
            if (*v11 != 0x636E695F61657261 || *(v11 + 6) != 0x73746E656469636ELL)
            {
              goto LABEL_121;
            }

LABEL_134:
            if (*(a3 + 3) == 1)
            {
              v10 |= 4uLL;
            }

            else
            {
              v10 &= ~4uLL;
            }

            goto LABEL_8;
          }

          v13 = *v8;
          if (v12 != 16)
          {
            goto LABEL_121;
          }
        }

        v34 = *v13;
        v35 = v13[1];
        if (v34 != 0x74616964656D6D69 || v35 != 0x6E7275745F755F65)
        {
          goto LABEL_121;
        }

        v10 |= 0x20000uLL;
LABEL_8:
        v8 += 4;
        if (v8 == v9)
        {
          goto LABEL_142;
        }
      }
    }
  }

  v10 = 0;
LABEL_142:
  v45 = *a2;
  v44 = a2[1];
  if (v45 == v44)
  {
    result = 1;
    v47 = v56;
    if (!v56)
    {
      return result;
    }
  }

  else
  {
    do
    {
      v46 = sub_F63EFC(v45) & v10;
      result = v46 != 0;
      if (!v46)
      {
        break;
      }

      v45 += 6;
    }

    while (v45 != v44);
    v47 = v56;
    if (!v56)
    {
      return result;
    }
  }

  v48 = result;
  v49 = v57;
  v50 = v47;
  if (v57 != v47)
  {
    do
    {
      v51 = v49 - 16;
      v52 = *(v49 - 2);
      if (v52 != -1)
      {
        (off_2674EC0[v52])(v55, v49 - 16);
      }

      *(v49 - 2) = -1;
      v49 -= 16;
    }

    while (v51 != v47);
    v50 = v56;
  }

  v57 = v47;
  operator delete(v50);
  return v48;
}

void sub_101431C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68((v23 - 112));
  _Unwind_Resume(a1);
}

BOOL sub_10143A0(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a2 == a2[1])
  {
    return 1;
  }

  HIBYTE(v55[2]) = 21;
  strcpy(v55, "run_if_all_paths_have");
  v6 = sub_5FC3C(a1, v55);
  if ((SHIBYTE(v55[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_4;
    }

    return 1;
  }

  v41 = v6;
  operator delete(*&v55[0]);
  if (!v41)
  {
    return 1;
  }

LABEL_4:
  v56 = 0;
  v57 = 0;
  v58 = 0;
  HIBYTE(v55[2]) = 21;
  strcpy(v55, "run_if_all_paths_have");
  v7 = sub_5FAE8(a1, v55, &v56);
  if (SHIBYTE(v55[2]) < 0)
  {
    v43 = v7;
    operator delete(*&v55[0]);
    v8 = *v43;
    v9 = v43[1];
    if (*v43 != v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *v7;
    v9 = v7[1];
    if (*v7 != v9)
    {
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (v8[2] != 1)
        {
          sub_5AF20();
        }

        v11 = *v8;
        if (*(*v8 + 23) < 0)
        {
          if (v11[1] == 5 && **v11 == 1819045748 && *(*v11 + 4) == 115)
          {
LABEL_73:
            v10 |= 0x10uLL;
            goto LABEL_8;
          }

          if (v11[1] == 7 && **v11 == 1920099686 && *(*v11 + 3) == 1936025970)
          {
            goto LABEL_94;
          }

          if (v11[1] == 5 && **v11 == 1685221222 && *(*v11 + 4) == 115)
          {
            goto LABEL_72;
          }

          if (v11[1] == 8 && **v11 == 0x7379617768676968)
          {
            goto LABEL_51;
          }

          v17 = v11[1];
          if (v17 == 21)
          {
            if (**v11 == 0x6E6F635F6C6C6F74 && *(*v11 + 8) == 0x5F6E6F6974736567 && *(*v11 + 13) == 0x73656E6F7A5F6E6FLL)
            {
              goto LABEL_133;
            }
          }

          else if (v17 == 30)
          {
            v18 = **v11 == 0x6D6E6F7269766E65 && *(*v11 + 8) == 0x6F635F6C61746E65;
            v19 = v18 && *(*v11 + 16) == 0x6E6F69747365676ELL;
            if (v19 && *(*v11 + 22) == 0x73656E6F7A5F6E6FLL)
            {
              v10 |= 0x400uLL;
              goto LABEL_8;
            }
          }

          if (v11[1] == 19)
          {
            v31 = **v11 == 0x756F7265676E6164 && *(*v11 + 8) == 0x6E65757165735F73;
            if (v31 && *(*v11 + 11) == 0x7365636E65757165)
            {
              goto LABEL_132;
            }
          }

          if (v11[1] == 14 && **v11 == 0x636E695F61657261 && *(*v11 + 6) == 0x73746E656469636ELL)
          {
            goto LABEL_134;
          }

          if (v11[1] != 16)
          {
            goto LABEL_121;
          }

          v13 = *v11;
        }

        else
        {
          v12 = *(*v8 + 23);
          if (v12 <= 0xD)
          {
            if (v12 == 5)
            {
              if (*v11 == 1819045748 && *(v11 + 4) == 115)
              {
                goto LABEL_73;
              }

              if (*v11 != 1685221222 || *(v11 + 4) != 115)
              {
LABEL_121:
                if (sub_A7DB8C(*v8, "dangerous_turns"))
                {
                  v10 |= 0x2000uLL;
                }

                else if (sub_7E7E4(1u))
                {
                  sub_19594F8(v55);
                  v37 = sub_4A5C(v55, "Unknown condition for running path finding algorithm: ", 54);
                  v38 = *(v11 + 23);
                  if (v38 >= 0)
                  {
                    v39 = v11;
                  }

                  else
                  {
                    v39 = *v11;
                  }

                  if (v38 >= 0)
                  {
                    v40 = *(v11 + 23);
                  }

                  else
                  {
                    v40 = v11[1];
                  }

                  sub_4A5C(v37, v39, v40);
                  sub_1959680(v55, __p);
                  sub_7E854(__p, 1u);
                  if (v54 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  sub_1959728(v55);
                }

                goto LABEL_8;
              }

LABEL_72:
              v10 |= 0x80uLL;
              goto LABEL_8;
            }

            if (v12 == 7)
            {
              if (*v11 != 1920099686 || *(v11 + 3) != 1936025970)
              {
                goto LABEL_121;
              }

LABEL_94:
              v10 |= 0x40uLL;
              goto LABEL_8;
            }

            if (v12 != 8 || *v11 != 0x7379617768676968)
            {
              goto LABEL_121;
            }

LABEL_51:
            v10 |= 0x20uLL;
            goto LABEL_8;
          }

          if (*(*v8 + 23) > 0x12u)
          {
            if (v12 != 19)
            {
              if (v12 != 21)
              {
                goto LABEL_121;
              }

              v21 = *v11 == 0x6E6F635F6C6C6F74 && v11[1] == 0x5F6E6F6974736567;
              if (!v21 || *(v11 + 13) != 0x73656E6F7A5F6E6FLL)
              {
                goto LABEL_121;
              }

LABEL_133:
              v10 |= 0x200uLL;
              goto LABEL_8;
            }

            if (*v11 != 0x756F7265676E6164 || v11[1] != 0x6E65757165735F73 || *(v11 + 11) != 0x7365636E65757165)
            {
              goto LABEL_121;
            }

LABEL_132:
            v10 |= 0x1000uLL;
            goto LABEL_8;
          }

          if (v12 == 14)
          {
            if (*v11 != 0x636E695F61657261 || *(v11 + 6) != 0x73746E656469636ELL)
            {
              goto LABEL_121;
            }

LABEL_134:
            if (*(a3 + 3) == 1)
            {
              v10 |= 4uLL;
            }

            else
            {
              v10 &= ~4uLL;
            }

            goto LABEL_8;
          }

          v13 = *v8;
          if (v12 != 16)
          {
            goto LABEL_121;
          }
        }

        v34 = *v13;
        v35 = v13[1];
        if (v34 != 0x74616964656D6D69 || v35 != 0x6E7275745F755F65)
        {
          goto LABEL_121;
        }

        v10 |= 0x20000uLL;
LABEL_8:
        v8 += 4;
        if (v8 == v9)
        {
          goto LABEL_142;
        }
      }
    }
  }

  v10 = 0;
LABEL_142:
  v45 = *a2;
  v44 = a2[1];
  if (v45 == v44)
  {
    result = 1;
    v47 = v56;
    if (!v56)
    {
      return result;
    }
  }

  else
  {
    do
    {
      v46 = sub_F68F18(v45) & v10;
      result = v46 != 0;
      if (!v46)
      {
        break;
      }

      v45 += 552;
    }

    while (v45 != v44);
    v47 = v56;
    if (!v56)
    {
      return result;
    }
  }

  v48 = result;
  v49 = v57;
  v50 = v47;
  if (v57 != v47)
  {
    do
    {
      v51 = v49 - 16;
      v52 = *(v49 - 2);
      if (v52 != -1)
      {
        (off_2674EC0[v52])(v55, v49 - 16);
      }

      *(v49 - 2) = -1;
      v49 -= 16;
    }

    while (v51 != v47);
    v50 = v56;
  }

  v57 = v47;
  operator delete(v50);
  return v48;
}

void sub_1014A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_5BF68((v23 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1014AF0(int a1)
{
  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

void sub_1014B7C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 16);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  v9 = *(a2 + 224);
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  if (v10 != v11)
  {
    do
    {
      sub_1014E04(a1, v10, v9, a2, a3, a4, 1.0);
      v10 += 13;
    }

    while (v10 != v11);
    v13 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      v14 = *a4;
      v15 = *a4;
      while ((*(v15 + 40) & 1) != 0)
      {
        v15 += 96;
        if (v15 == v12)
        {
          v16 = v12 - v13 - 96;
          if (v16 < 0x60)
          {
            goto LABEL_36;
          }

          v17 = v16 / 0x60 + 1;
          v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
          v18 = (v13 + 152);
          v19 = v17 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v18 - 96) = 0;
            *v18 = 0;
            v18 += 192;
            v19 -= 2;
          }

          while (v19);
          if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_36:
            do
            {
              *(v14 + 56) = 0;
              v14 += 96;
            }

            while (v14 != v12);
          }

          break;
        }
      }
    }
  }

  if (*(a2 + 200) != *(a2 + 208))
  {
    sub_49DC18(&__p, (a2 + 200));
    v20 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
    if (v33 == __p)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    sub_1016A88(__p, v33, &v34, v21, 1);
    v22 = __p;
    v23 = v33;
    if (v33 != __p)
    {
      v24 = 0.5;
      v25 = 0.5 / (0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
      do
      {
        sub_1014E04(a1, v22, v9, a2, a3, a4, v24);
        v24 = v24 - v25;
        v22 += 13;
      }

      while (v22 != v23);
      v22 = __p;
    }

    if (v22)
    {
      v26 = v33;
      v27 = v22;
      if (v33 != v22)
      {
        do
        {
          v29 = *(v26 - 3);
          if (v29)
          {
            v30 = *(v26 - 2);
            v28 = *(v26 - 3);
            if (v30 != v29)
            {
              do
              {
                v31 = *(v30 - 9);
                v30 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v28 = *(v26 - 3);
            }

            *(v26 - 2) = v29;
            operator delete(v28);
          }

          v26 -= 104;
        }

        while (v26 != v22);
        v27 = __p;
      }

      v33 = v22;
      operator delete(v27);
    }
  }
}

void sub_1014DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_48C8F4(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_1014E04(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v40 = 0;
  v44 = 0;
  v46 = 1;
  v50 = 0;
  v53 = 0;
  v54 = 0;
  v45 = a7;
  v12 = *a2;
  v13 = a2[6];
  v41 = *a2;
  v42 = v13;
  v14 = *(a4 + 56);
  if (a3 != 1)
  {
    v14 = 0.0;
  }

  v43 = v14;
  v51 = *(a4 + 48);
  v52 = a3;
  HIBYTE(v53) = *(a4 + 64);
  v47 = a5;
  v48 = a5;
  v49 = v12;
  LOBYTE(v53) = *(a2 + 64);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v15 = *(a1 + 4304);
  v16 = a2[4];
  if (*(v15 + 7774) == 1)
  {
    v17 = sub_2AF704(v15 + 3896, v16, 1);
    if (!v17)
    {
      return;
    }

    v18 = &v17[-*v17];
    if (*v18 < 5u)
    {
      return;
    }

    v19 = *(v18 + 2);
    if (!v19 || *&v17[v19 + *&v17[v19]] <= HIDWORD(v16) || !sub_2B817C(v15, v16))
    {
      return;
    }

    v16 = a2[4];
  }

  sub_F90BC0(a1, v16, &v37);
  v20 = v37;
  v21 = v38;
  if (v37 != v38)
  {
    while (1)
    {
      v22 = *v20;
      v23 = sub_2B51D8(*(a1 + 4304), *(a2 + 8) | (*(a2 + 18) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = 0;
        v27 = a2[3];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = *(v23 + v25);
          if (v28)
          {
            v29 = v27 / v28 * 1000000000.0;
            if (v29 >= 0.0)
            {
              if (v29 < 4.50359963e15)
              {
                v30 = (v29 + v29) + 1;
LABEL_31:
                v29 = (v30 >> 1);
              }
            }

            else if (v29 > -4.50359963e15)
            {
              v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
              goto LABEL_31;
            }

            v32 = 1000000000.0;
            if (v29 <= 1000000000.0)
            {
              v32 = v29;
            }

            if (v29 >= 0.0)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0.0;
            }

            v26 = v33;
          }
        }
      }

      else
      {
        v26 = 0;
      }

      if ((v22 & 2) != 0)
      {
        v31 = v26;
      }

      else
      {
        v31 = 1000000000 - v26;
      }

      v7 = v7 & 0xFFFFFFFFFFFF0000 | *(a2 + 21);
      v15 = v15 & 0xFFFFFFFFFFFF0000 | *(a2 + 20);
      sub_1015290(a1, v22, &v40, v31, v7, v15, v34);
      if (a3 != 3 || (v36 & 1) == 0 || v35 != 1)
      {
        sub_1015104(a6, v22, v34);
      }

      if (++v20 == v21)
      {
        v20 = v37;
        break;
      }
    }
  }

  if (v20)
  {
    v38 = v20;
    operator delete(v20);
  }
}

void sub_10150E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015104(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 < v5)
  {
    *v4 = a2;
    v6 = *a3;
    *(v4 + 24) = a3[1];
    *(v4 + 8) = v6;
    v7 = a3[2];
    v8 = a3[3];
    v9 = a3[4];
    *(v4 + 88) = *(a3 + 10);
    *(v4 + 72) = v9;
    *(v4 + 56) = v8;
    *(v4 + 40) = v7;
    v10 = v4 + 96;
LABEL_3:
    *(a1 + 8) = v10;
    return;
  }

  v11 = *a1;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
  v13 = v12 + 1;
  if (v12 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v11) >> 5);
  if (2 * v14 > v13)
  {
    v13 = 2 * v14;
  }

  if (v14 >= 0x155555555555555)
  {
    v15 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    if (v15 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v16 = a3[3];
  v17 = 32 * ((v4 - *a1) >> 5);
  *(v17 + 40) = a3[2];
  *(v17 + 56) = v16;
  *(v17 + 72) = a3[4];
  v18 = a3[1];
  *(v17 + 8) = *a3;
  *v17 = a2;
  *(v17 + 88) = *(a3 + 10);
  *(v17 + 24) = v18;
  v10 = 96 * v12 + 96;
  v19 = 96 * v12 - (v4 - v11);
  memcpy((v17 - (v4 - v11)), v11, v4 - v11);
  *a1 = v19;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  *(a1 + 8) = v10;
}

int *sub_1015290@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, __int16 a5@<W4>, __int16 a6@<W5>, uint64_t a7@<X8>)
{
  v8 = a2;
  v11 = *(a3 + 48);
  *(a7 + 32) = *(a3 + 32);
  *(a7 + 48) = v11;
  *(a7 + 64) = *(a3 + 64);
  *(a7 + 80) = *(a3 + 80);
  v12 = *(a3 + 16);
  *a7 = *a3;
  *(a7 + 16) = v12;
  *a7 = a4;
  if ((a5 & 0x100) != 0)
  {
    v15 = a5;
    v16 = (a2 >> 1) & 1;
    *(a7 + 32) = v16 != a5;
    v13 = (a7 + 32);
    v14 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
    v17 = sub_2B51D8(*(a1 + 4304), v14);
    v18 = (v17 - *v17);
    if (*v18 >= 0x9Bu)
    {
      v19 = v18[77];
      if (v19)
      {
        if ((*(v17 + v19 + 1) & 0x80) != 0)
        {
          *v13 = v16 == v15;
        }
      }
    }
  }

  else
  {
    *(a7 + 32) = 0;
    v13 = (a7 + 32);
    v14 = HIDWORD(a2) & 0xFFFF0000FFFFFFFFLL | (WORD1(a2) << 32);
  }

  result = sub_2B51D8(*(a1 + 4304), v14);
  v21 = (result - *result);
  if (*v21 >= 0x2Fu)
  {
    v22 = v21[23];
    if (v22)
    {
      v23 = *(result + v22);
      v24 = v23 > 0x2D;
      v25 = (1 << v23) & 0x208040000000;
      if (!v24 && v25 != 0)
      {
        *v13 = 0;
      }
    }
  }

  if ((a6 & 0x100) != 0)
  {
    if (((v8 & 2) == 0) == a6)
    {
      v27 = 256;
    }

    else
    {
      v27 = 257;
    }

    *(a7 + 72) = v27;
  }

  return result;
}

void sub_10153E4(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v20 = vnegq_f64(v11);
    while (*(v5 + 32) && *(v5 + 36) != -1 && *v5 != 0x7FFFFFFFFFFFFFFFLL && *(v5 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0u;
      v26 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21[1] = 0x7FFFFFFFLL;
      v21[0] = -1;
      v21[2] = -1;
      v21[3] = -1;
      v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      DWORD2(v22) = -1935635296;
      *&v23 = 0;
      *(&v23 + 7) = 0;
      v24 = 0;
      v25 = 0;
      *&v26 = 0;
      DWORD2(v26) = 0;
      *&v27 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v27) = 100;
      v28 = 0;
      v29 = 0;
      v30 = v20;
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1014E04(a1, v5, a3, v21, a4, a5, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v5 += 104;
      if (v5 == v6)
      {
        v13 = *a5;
        v12 = a5[1];
        if (*a5 != v12)
        {
          v14 = *a5;
          v15 = *a5;
          while ((*(v15 + 40) & 1) != 0)
          {
            v15 += 96;
            if (v15 == v12)
            {
              v16 = v12 - v13 - 96;
              if (v16 < 0x60)
              {
                goto LABEL_23;
              }

              v17 = v16 / 0x60 + 1;
              v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
              v18 = (v13 + 152);
              v19 = v17 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v18 - 96) = 0;
                *v18 = 0;
                v18 += 192;
                v19 -= 2;
              }

              while (v19);
              if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_23:
                do
                {
                  *(v14 + 56) = 0;
                  v14 += 96;
                }

                while (v14 != v12);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

void sub_10155E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_44D36C(va);
  v9 = *v7;
  if (*v7)
  {
    *(v7 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1015680(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 16);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  v9 = *(a2 + 224);
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  if (v10 != v11)
  {
    do
    {
      sub_1015908(a1, v10, v9, a2, a3, a4, 1.0);
      v10 += 13;
    }

    while (v10 != v11);
    v13 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      v14 = *a4;
      v15 = *a4;
      while ((*(v15 + 40) & 1) != 0)
      {
        v15 += 96;
        if (v15 == v12)
        {
          v16 = v12 - v13 - 96;
          if (v16 < 0x60)
          {
            goto LABEL_36;
          }

          v17 = v16 / 0x60 + 1;
          v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
          v18 = (v13 + 152);
          v19 = v17 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v18 - 96) = 0;
            *v18 = 0;
            v18 += 192;
            v19 -= 2;
          }

          while (v19);
          if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_36:
            do
            {
              *(v14 + 56) = 0;
              v14 += 96;
            }

            while (v14 != v12);
          }

          break;
        }
      }
    }
  }

  if (*(a2 + 200) != *(a2 + 208))
  {
    sub_49DC18(&__p, (a2 + 200));
    v20 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
    if (v33 == __p)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    sub_1016A88(__p, v33, &v34, v21, 1);
    v22 = __p;
    v23 = v33;
    if (v33 != __p)
    {
      v24 = 0.5;
      v25 = 0.5 / (0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
      do
      {
        sub_1015908(a1, v22, v9, a2, a3, a4, v24);
        v24 = v24 - v25;
        v22 += 13;
      }

      while (v22 != v23);
      v22 = __p;
    }

    if (v22)
    {
      v26 = v33;
      v27 = v22;
      if (v33 != v22)
      {
        do
        {
          v29 = *(v26 - 3);
          if (v29)
          {
            v30 = *(v26 - 2);
            v28 = *(v26 - 3);
            if (v30 != v29)
            {
              do
              {
                v31 = *(v30 - 9);
                v30 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v28 = *(v26 - 3);
            }

            *(v26 - 2) = v29;
            operator delete(v28);
          }

          v26 -= 104;
        }

        while (v26 != v22);
        v27 = __p;
      }

      v33 = v22;
      operator delete(v27);
    }
  }
}

void sub_10158D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_48C8F4(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_1015908(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v40 = 0;
  v44 = 0;
  v46 = 1;
  v50 = 0;
  v53 = 0;
  v54 = 0;
  v45 = a7;
  v12 = *a2;
  v13 = a2[6];
  v41 = *a2;
  v42 = v13;
  v14 = *(a4 + 56);
  if (a3 != 1)
  {
    v14 = 0.0;
  }

  v43 = v14;
  v51 = *(a4 + 48);
  v52 = a3;
  HIBYTE(v53) = *(a4 + 64);
  v47 = a5;
  v48 = a5;
  v49 = v12;
  LOBYTE(v53) = *(a2 + 64);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v15 = *(a1 + 4304);
  v16 = a2[4];
  if (*(v15 + 7774) == 1)
  {
    v17 = sub_2AF704(v15 + 3896, v16, 1);
    if (!v17)
    {
      return;
    }

    v18 = &v17[-*v17];
    if (*v18 < 5u)
    {
      return;
    }

    v19 = *(v18 + 2);
    if (!v19 || *&v17[v19 + *&v17[v19]] <= HIDWORD(v16) || !sub_2B817C(v15, v16))
    {
      return;
    }

    v16 = a2[4];
  }

  sub_F91134(a1, v16, &v37);
  v20 = v37;
  v21 = v38;
  if (v37 != v38)
  {
    while (1)
    {
      v22 = *v20;
      v23 = sub_2B51D8(*(a1 + 4304), *(a2 + 8) | (*(a2 + 18) << 32));
      v24 = (v23 - *v23);
      if (*v24 >= 9u && (v25 = v24[4]) != 0)
      {
        v26 = 0;
        v27 = a2[3];
        if (v27 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v28 = *(v23 + v25);
          if (v28)
          {
            v29 = v27 / v28 * 1000000000.0;
            if (v29 >= 0.0)
            {
              if (v29 < 4.50359963e15)
              {
                v30 = (v29 + v29) + 1;
LABEL_31:
                v29 = (v30 >> 1);
              }
            }

            else if (v29 > -4.50359963e15)
            {
              v30 = (v29 + v29) - 1 + (((v29 + v29) - 1) >> 63);
              goto LABEL_31;
            }

            v32 = 1000000000.0;
            if (v29 <= 1000000000.0)
            {
              v32 = v29;
            }

            if (v29 >= 0.0)
            {
              v33 = v32;
            }

            else
            {
              v33 = 0.0;
            }

            v26 = v33;
          }
        }
      }

      else
      {
        v26 = 0;
      }

      if ((v22 & 2) != 0)
      {
        v31 = v26;
      }

      else
      {
        v31 = 1000000000 - v26;
      }

      v7 = v7 & 0xFFFFFFFFFFFF0000 | *(a2 + 21);
      v15 = v15 & 0xFFFFFFFFFFFF0000 | *(a2 + 20);
      sub_1015290(a1, v22, &v40, v31, v7, v15, v34);
      if (a3 != 3 || (v36 & 1) == 0 || v35 != 1)
      {
        sub_1015104(a6, v22, v34);
      }

      if (++v20 == v21)
      {
        v20 = v37;
        break;
      }
    }
  }

  if (v20)
  {
    v38 = v20;
    operator delete(v20);
  }
}

void sub_1015BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015C08(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v23[0] = 0;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v23[1] = -1;
  v24 = 0x7FFFFFFF;
  v25 = a4;
  v26 = a2;
  v27 = 16842752;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 2139095039;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v11 = 0u;
  v16 = 100;
  v10[0] = -1;
  v10[1] = 0x7FFFFFFFLL;
  v10[2] = -1;
  v10[3] = -1;
  v10[4] = 0x7FFFFFFFFFFFFFFFLL;
  DWORD2(v11) = -1935635296;
  v12 = 0uLL;
  *(&v12 + 7) = 0;
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0uLL;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0;
  v18 = 0;
  v19 = vnegq_f64(v5);
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_1015908(a1, v23, a3, v10, 0, a5, 1.0);
  if (__p)
  {
    operator delete(__p);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  v6 = v32;
  if (v32)
  {
    v7 = v33;
    v8 = v32;
    if (v33 != v32)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = v32;
    }

    v33 = v6;
    operator delete(v8);
  }
}

void sub_1015D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_44D36C(va);
  sub_C6A790(v4 - 136);
  v6 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1015D8C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v20 = vnegq_f64(v11);
    while (*(v5 + 32) && *(v5 + 36) != -1 && *v5 != 0x7FFFFFFFFFFFFFFFLL && *(v5 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0u;
      v26 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21[1] = 0x7FFFFFFFLL;
      v21[0] = -1;
      v21[2] = -1;
      v21[3] = -1;
      v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      DWORD2(v22) = -1935635296;
      *&v23 = 0;
      *(&v23 + 7) = 0;
      v24 = 0;
      v25 = 0;
      *&v26 = 0;
      DWORD2(v26) = 0;
      *&v27 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v27) = 100;
      v28 = 0;
      v29 = 0;
      v30 = v20;
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1015908(a1, v5, a3, v21, a4, a5, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v5 += 104;
      if (v5 == v6)
      {
        v13 = *a5;
        v12 = a5[1];
        if (*a5 != v12)
        {
          v14 = *a5;
          v15 = *a5;
          while ((*(v15 + 40) & 1) != 0)
          {
            v15 += 96;
            if (v15 == v12)
            {
              v16 = v12 - v13 - 96;
              if (v16 < 0x60)
              {
                goto LABEL_23;
              }

              v17 = v16 / 0x60 + 1;
              v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
              v18 = (v13 + 152);
              v19 = v17 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v18 - 96) = 0;
                *v18 = 0;
                v18 += 192;
                v19 -= 2;
              }

              while (v19);
              if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_23:
                do
                {
                  *(v14 + 56) = 0;
                  v14 += 96;
                }

                while (v14 != v12);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

void sub_1015F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_44D36C(va);
  v9 = *v7;
  if (*v7)
  {
    *(v7 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1015FAC(uint64_t a1@<X0>, uint64_t *a2@<X1>, int *a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *a3;
  if (*a2 != v8)
  {
    while (*(v7 + 16) != (v9 == 2))
    {
      v7 += 48;
      if (v7 == v8)
      {
        v7 = a2[1];
        break;
      }
    }
  }

  sub_1015C08(a1, *v7, v9, *(v7 + 8), a4);
  if (*a4 != a4[1])
  {
    v10 = -1;
    if (*(a2 + 13))
    {
      if (*(a2 + 14) != -1)
      {
        sub_2AB7E0(*(a1 + 4312), *(a2 + 52));
      }
    }

    a4[3] = v10;
  }
}

void sub_1016054(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1016070(void *a1, uint64_t a2)
{
  sub_F92178(a1, a2, 3);
  a1[17] = sub_3AF6B4(a2);
  a1[18] = sub_3AF6B4(a2);
  a1[19] = sub_3B1D8C(a2);
  return a1;
}

void sub_10160EC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 16);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  a4[3] = v8;
  v9 = *(a2 + 224);
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  if (v10 != v11)
  {
    do
    {
      sub_1016374(a1, v10, v9, a2, a3, a4, 1.0);
      v10 += 13;
    }

    while (v10 != v11);
    v13 = *a4;
    v12 = a4[1];
    if (*a4 != v12)
    {
      v14 = *a4;
      v15 = *a4;
      while ((*(v15 + 40) & 1) != 0)
      {
        v15 += 96;
        if (v15 == v12)
        {
          v16 = v12 - v13 - 96;
          if (v16 < 0x60)
          {
            goto LABEL_36;
          }

          v17 = v16 / 0x60 + 1;
          v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
          v18 = (v13 + 152);
          v19 = v17 & 0x7FFFFFFFFFFFFFELL;
          do
          {
            *(v18 - 96) = 0;
            *v18 = 0;
            v18 += 192;
            v19 -= 2;
          }

          while (v19);
          if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
          {
LABEL_36:
            do
            {
              *(v14 + 56) = 0;
              v14 += 96;
            }

            while (v14 != v12);
          }

          break;
        }
      }
    }
  }

  if (*(a2 + 200) != *(a2 + 208))
  {
    sub_49DC18(&__p, (a2 + 200));
    v20 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
    if (v33 == __p)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    sub_1016A88(__p, v33, &v34, v21, 1);
    v22 = __p;
    v23 = v33;
    if (v33 != __p)
    {
      v24 = 0.5;
      v25 = 0.5 / (0x4EC4EC4EC4EC4EC5 * ((v33 - __p) >> 3));
      do
      {
        sub_1016374(a1, v22, v9, a2, a3, a4, v24);
        v24 = v24 - v25;
        v22 += 13;
      }

      while (v22 != v23);
      v22 = __p;
    }

    if (v22)
    {
      v26 = v33;
      v27 = v22;
      if (v33 != v22)
      {
        do
        {
          v29 = *(v26 - 3);
          if (v29)
          {
            v30 = *(v26 - 2);
            v28 = *(v26 - 3);
            if (v30 != v29)
            {
              do
              {
                v31 = *(v30 - 9);
                v30 -= 4;
                if (v31 < 0)
                {
                  operator delete(*v30);
                }
              }

              while (v30 != v29);
              v28 = *(v26 - 3);
            }

            *(v26 - 2) = v29;
            operator delete(v28);
          }

          v26 -= 104;
        }

        while (v26 != v22);
        v27 = __p;
      }

      v33 = v22;
      operator delete(v27);
    }
  }
}

void sub_1016340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_48C8F4(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_1016374(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v12 = *a2;
  v43 = a2[6];
  if (a3 == 1)
  {
    v13 = *(a4 + 56);
  }

  else
  {
    v13 = 0.0;
  }

  v42 = *(a4 + 48);
  v14 = *(a4 + 64);
  v15 = *(a2 + 64);
  __p = 0;
  v60 = 0;
  v61 = 0;
  v16 = *(a1 + 144);
  v17 = a2[4];
  if (*(v16 + 7774) == 1)
  {
    v18 = sub_2AF704(v16 + 3896, v17, 1);
    if (!v18)
    {
      goto LABEL_47;
    }

    v19 = &v18[-*v18];
    if (*v19 < 5u)
    {
      goto LABEL_47;
    }

    v20 = *(v19 + 2);
    if (!v20 || *&v18[v20 + *&v18[v20]] <= HIDWORD(v17) || !sub_2B817C(v16, v17))
    {
      goto LABEL_47;
    }

    v17 = a2[4];
  }

  sub_F91DF8(a1, v17, &__p);
  v21 = __p;
  v22 = v60;
  if (__p != v60)
  {
    do
    {
      v23 = *v21;
      v24 = sub_2B51D8(*(a1 + 144), *(a2 + 8) | (*(a2 + 18) << 32));
      v25 = (v24 - *v24);
      if (*v25 >= 9u && (v26 = v25[4]) != 0)
      {
        v27 = 0;
        v28 = a2[3];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v29 = *(v24 + v26);
          if (v29)
          {
            v30 = v28 / v29 * 1000000000.0;
            if (v30 >= 0.0)
            {
              if (v30 < 4.50359963e15)
              {
                v31 = (v30 + v30) + 1;
LABEL_40:
                v30 = (v31 >> 1);
              }
            }

            else if (v30 > -4.50359963e15)
            {
              v31 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
              goto LABEL_40;
            }

            v39 = 1000000000.0;
            if (v30 <= 1000000000.0)
            {
              v39 = v30;
            }

            if (v30 >= 0.0)
            {
              v40 = v39;
            }

            else
            {
              v40 = 0.0;
            }

            v27 = v40;
          }
        }
      }

      else
      {
        v27 = 0;
      }

      v32 = 0;
      v33 = *(a2 + 21);
      v34 = 1000000000 - v27;
      if ((v23 & 0x1000000000000000) != 0)
      {
        v34 = v27;
      }

      v35 = *(a2 + 20);
      LODWORD(v44) = v34;
      *(&v44 + 1) = v12;
      v45 = v43;
      v46 = v13;
      v47 = 0;
      v48 = a7;
      v49 = 1;
      v50 = a5;
      v51 = a5;
      v52 = v12;
      v53 = 0;
      v54 = v42;
      v55 = a3;
      v56 = v15;
      v57 = v14;
      v58 = 0;
      if ((v33 & 0x100) != 0)
      {
        v36 = (HIDWORD(v23) >> 30) & 1;
        if ((v23 & 0x1000000000000000) == 0)
        {
          v36 = (v23 & 0x6000000000000000) == 0;
        }

        if ((v23 & 0x2000000000000000) != 0)
        {
          v36 = 2;
        }

        v32 = v36 != v33;
      }

      LOBYTE(v47) = v32;
      if ((v35 & 0x100) == 0 || ((v37 = (v23 & 0x1000000000000000) == 0, v37 == v35) ? (v38 = 256) : (v38 = 257), (v53 = v38, a3 != 3) || v37 == v35))
      {
        sub_1015104(a6, v23, &v44);
      }

      ++v21;
    }

    while (v21 != v22);
  }

LABEL_47:
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }
}

void sub_1016684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10166A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v9 = *(a2 + 48);
  v24[2] = *(a2 + 32);
  v24[3] = v9;
  v25 = *(a2 + 64);
  v10 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v10;
  v26 = *(a2 + 72);
  sub_49DD80(&v27, (a2 + 80));
  sub_1018EC8(&__p, v24, 1uLL);
  sub_1016868(a1, &__p, v6, a4, a5);
  v11 = __p;
  if (__p)
  {
    v12 = v23;
    v13 = __p;
    if (v23 != __p)
    {
      do
      {
        v15 = *(v12 - 3);
        if (v15)
        {
          v16 = *(v12 - 2);
          v14 = *(v12 - 3);
          if (v16 != v15)
          {
            do
            {
              v17 = *(v16 - 9);
              v16 -= 4;
              if (v17 < 0)
              {
                operator delete(*v16);
              }
            }

            while (v16 != v15);
            v14 = *(v12 - 3);
          }

          *(v12 - 2) = v15;
          operator delete(v14);
        }

        v12 -= 104;
      }

      while (v12 != v11);
      v13 = __p;
    }

    v23 = v11;
    operator delete(v13);
  }

  v18 = v27;
  if (v27)
  {
    v19 = v28;
    v20 = v27;
    if (v28 != v27)
    {
      do
      {
        v21 = *(v19 - 9);
        v19 -= 4;
        if (v21 < 0)
        {
          operator delete(*v19);
        }
      }

      while (v19 != v18);
      v20 = v27;
    }

    v28 = v18;
    operator delete(v20);
  }
}

void sub_1016834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_48C8F4(&a9);
  sub_C6A790(va);
  _Unwind_Resume(a1);
}

void sub_1016850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_C6A790(va);
  _Unwind_Resume(a1);
}

void sub_1016868(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  a5[3] = -1;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v20 = vnegq_f64(v11);
    while (*(v5 + 32) && *(v5 + 36) != -1 && *v5 != 0x7FFFFFFFFFFFFFFFLL && *(v5 + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0u;
      v26 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21[1] = 0x7FFFFFFFLL;
      v21[0] = -1;
      v21[2] = -1;
      v21[3] = -1;
      v21[4] = 0x7FFFFFFFFFFFFFFFLL;
      DWORD2(v22) = -1935635296;
      *&v23 = 0;
      *(&v23 + 7) = 0;
      v24 = 0;
      v25 = 0;
      *&v26 = 0;
      DWORD2(v26) = 0;
      *&v27 = 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v27) = 100;
      v28 = 0;
      v29 = 0;
      v30 = v20;
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1016374(a1, v5, a3, v21, a4, a5, 1.0);
      if (__p)
      {
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v5 += 104;
      if (v5 == v6)
      {
        v13 = *a5;
        v12 = a5[1];
        if (*a5 != v12)
        {
          v14 = *a5;
          v15 = *a5;
          while ((*(v15 + 40) & 1) != 0)
          {
            v15 += 96;
            if (v15 == v12)
            {
              v16 = v12 - v13 - 96;
              if (v16 < 0x60)
              {
                goto LABEL_23;
              }

              v17 = v16 / 0x60 + 1;
              v14 = v13 + 96 * (v17 & 0x7FFFFFFFFFFFFFELL);
              v18 = (v13 + 152);
              v19 = v17 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v18 - 96) = 0;
                *v18 = 0;
                v18 += 192;
                v19 -= 2;
              }

              while (v19);
              if (v17 != (v17 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_23:
                do
                {
                  *(v14 + 56) = 0;
                  v14 += 96;
                }

                while (v14 != v12);
              }

              return;
            }
          }
        }

        return;
      }
    }
  }
}

void sub_1016A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_44D36C(va);
  v9 = *v7;
  if (*v7)
  {
    *(v7 + 8) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1016A88(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = 0x4EC4EC4EC4EC4EC5;
LABEL_2:
  v9 = a2 - 13;
  v10 = result;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = (v13 >> 3) * v8;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        v34 = *result;
        if (*(a2 - 13) < *result)
        {
          v49 = result[1];
          v51 = *(result + 4);
          *&v53[29] = *(result + 49);
          *v53 = *(result + 20);
          *&v53[16] = *(result + 36);
          v35 = *(result + 18);
          v36 = result[12];
          v37 = *(result + 5);
          result[11] = 0;
          result[12] = 0;
          result[10] = 0;
          *result = *(a2 - 13);
          v38 = *(a2 - 12);
          *(result + 4) = *(a2 - 22);
          result[1] = v38;
          v39 = *(a2 - 55);
          v40 = *(a2 - 4);
          *(result + 3) = *(a2 - 5);
          *(result + 49) = v39;
          *(result + 5) = v40;
          *(result + 18) = *(a2 - 8);
          v41 = *(a2 - 1);
          *(result + 5) = *(a2 - 3);
          result[12] = v41;
          *(a2 - 22) = v51;
          *(a2 - 13) = v34;
          *(a2 - 12) = v49;
          *(a2 - 5) = *&v53[4];
          *(a2 - 4) = *&v53[20];
          *(a2 - 55) = *&v53[29];
          *(a2 - 8) = v35;
          *(a2 - 3) = v37;
          *(a2 - 1) = v36;
        }

        return;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      sub_10174CC(result, (result + 13), (result + 26), v9);
      return;
    }

    if (v14 == 5)
    {

      sub_1017798(result, result + 13, result + 26, result + 39, v9);
      return;
    }

LABEL_11:
    if (v13 <= 2495)
    {
      if (a5)
      {

        sub_1017B3C(result, a2);
      }

      else
      {

        sub_1017D9C(result, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (result != a2)
      {
        v42 = (v14 - 2) >> 1;
        v43 = v42 + 1;
        v44 = &result[13 * v42];
        do
        {
          sub_10189A4(result, a3, (v13 >> 3) * v8, v44);
          v44 -= 13;
          --v43;
        }

        while (v43);
        v45 = (v13 >> 3) * v8;
        do
        {
          sub_1018BA0(result, a2, a3, v45);
          a2 -= 13;
        }

        while (v45-- > 2);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = &result[13 * (v14 >> 1)];
    if (v13 < 0x3401)
    {
      sub_1017090(v16, result, v9);
      if (a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1017090(result, v16, v9);
      v17 = v9;
      v18 = v8;
      v19 = 13 * v15;
      v20 = &result[13 * v15 - 13];
      sub_1017090(result + 13, v20, a2 - 26);
      sub_1017090(result + 26, &result[v19 + 13], a2 - 39);
      v21 = &result[v19 + 13];
      v8 = v18;
      v9 = v17;
      sub_1017090(v20, v16, v21);
      v22 = *result;
      v48 = result[1];
      v50 = *(result + 4);
      *v52 = *(result + 20);
      *&v52[16] = *(result + 36);
      *&v52[29] = *(result + 49);
      v23 = *(result + 18);
      v24 = *v16;
      v25 = v16[1];
      *(result + 4) = *(v16 + 4);
      v26 = result[12];
      v27 = *(result + 5);
      result[10] = 0;
      result[11] = 0;
      result[12] = 0;
      *result = v24;
      result[1] = v25;
      v28 = *(v16 + 3);
      v29 = *(v16 + 5);
      *(result + 49) = *(v16 + 49);
      *(result + 5) = v29;
      *(result + 3) = v28;
      *(result + 18) = *(v16 + 18);
      v30 = v16[12];
      *(result + 5) = *(v16 + 5);
      result[12] = v30;
      *v16 = v22;
      *(v16 + 4) = v50;
      v16[1] = v48;
      *(v16 + 49) = *&v52[29];
      *(v16 + 5) = *&v52[20];
      *(v16 + 3) = *&v52[4];
      *(v16 + 18) = v23;
      *(v16 + 5) = v27;
      v16[12] = v26;
      if (a5)
      {
        goto LABEL_18;
      }
    }

    if (*(result - 13) >= *result)
    {
      v10 = sub_1017F88(result, a2);
      goto LABEL_23;
    }

LABEL_18:
    v31 = sub_10182B4(result, a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_21;
    }

    v33 = sub_10185FC(result, v31);
    v10 = v31 + 13;
    if (sub_10185FC((v31 + 13), a2))
    {
      a4 = -v12;
      a2 = v31;
      if (v33)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v33)
    {
LABEL_21:
      sub_1016A88(result, v31, a3, -v12, a5 & 1);
      v10 = v31 + 13;
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  sub_1017090(result, result + 13, v9);
}

uint64_t sub_1017090(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  v5 = *a3;
  if (*a2 >= *a1)
  {
    if (v5 >= v3)
    {
      return 0;
    }

    v13 = a2 + 1;
    v44 = a2[1];
    v49 = *(a2 + 4);
    *v54 = *(a2 + 20);
    *&v54[16] = *(a2 + 36);
    *&v54[29] = *(a2 + 49);
    v14 = *(a2 + 18);
    v15 = a2[12];
    v16 = *(a2 + 5);
    a2[11] = 0;
    a2[12] = 0;
    a2[10] = 0;
    *a2 = *a3;
    v17 = a3[1];
    *(a2 + 4) = *(a3 + 4);
    a2[1] = v17;
    v18 = *(a3 + 3);
    v19 = *(a3 + 49);
    *(a2 + 5) = *(a3 + 5);
    *(a2 + 49) = v19;
    *(a2 + 3) = v18;
    *(a2 + 18) = *(a3 + 18);
    v20 = a3[12];
    *(a2 + 5) = *(a3 + 5);
    a2[12] = v20;
    *a3 = v3;
    a3[1] = v44;
    *(a3 + 4) = v49;
    *(a3 + 3) = *&v54[4];
    *(a3 + 5) = *&v54[20];
    *(a3 + 49) = *&v54[29];
    *(a3 + 18) = v14;
    *(a3 + 5) = v16;
    a3[12] = v15;
    v21 = *a1;
    if (*a2 < *a1)
    {
      v45 = a1[1];
      v50 = *(a1 + 4);
      *v55 = *(a1 + 20);
      *&v55[16] = *(a1 + 36);
      *&v55[29] = *(a1 + 49);
      v22 = *(a1 + 18);
      v23 = a1[12];
      v24 = *(a1 + 5);
      a1[11] = 0;
      a1[12] = 0;
      a1[10] = 0;
      *a1 = *a2;
      v25 = *v13;
      *(a1 + 4) = *(a2 + 4);
      a1[1] = v25;
      v26 = *(a2 + 3);
      v27 = *(a2 + 49);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 49) = v27;
      *(a1 + 3) = v26;
      *(a1 + 18) = *(a2 + 18);
      v28 = a2[12];
      *(a1 + 5) = *(a2 + 5);
      a1[12] = v28;
      *a2 = v21;
      *v13 = v45;
      *(a2 + 4) = v50;
      *(a2 + 3) = *&v55[4];
      *(a2 + 5) = *&v55[20];
      *(a2 + 49) = *&v55[29];
      *(a2 + 18) = v22;
      *(a2 + 5) = v24;
      a2[12] = v23;
    }
  }

  else if (v5 >= v3)
  {
    v46 = a1[1];
    v51 = *(a1 + 4);
    *v56 = *(a1 + 20);
    *&v56[16] = *(a1 + 36);
    *&v56[29] = *(a1 + 49);
    v29 = *(a1 + 18);
    v30 = a1[10];
    v31 = a1[11];
    v32 = a1[12];
    a1[11] = 0;
    a1[12] = 0;
    a1[10] = 0;
    *a1 = *a2;
    v33 = a2 + 1;
    v34 = a2[1];
    *(a1 + 4) = *(a2 + 4);
    a1[1] = v34;
    v35 = *(a2 + 49);
    v36 = *(a2 + 5);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 5) = v36;
    *(a1 + 49) = v35;
    *(a1 + 18) = *(a2 + 18);
    v37 = a2[12];
    *(a1 + 5) = *(a2 + 5);
    a1[12] = v37;
    *a2 = v4;
    a2[1] = v46;
    *(a2 + 4) = v51;
    *(a2 + 3) = *&v56[4];
    *(a2 + 5) = *&v56[20];
    *(a2 + 49) = *&v56[29];
    *(a2 + 18) = v29;
    a2[10] = v30;
    a2[11] = v31;
    a2[12] = v32;
    if (*a3 < v4)
    {
      v47 = *v33;
      v52 = *(a2 + 4);
      *v57 = *(a2 + 20);
      *&v57[16] = *(a2 + 36);
      *&v57[29] = *(a2 + 49);
      a2[11] = 0;
      a2[12] = 0;
      a2[10] = 0;
      *a2 = *a3;
      v38 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *v33 = v38;
      v39 = *(a3 + 5);
      v40 = *(a3 + 49);
      *(a2 + 3) = *(a3 + 3);
      *(a2 + 49) = v40;
      *(a2 + 5) = v39;
      *(a2 + 18) = *(a3 + 18);
      v41 = a3[12];
      *(a2 + 5) = *(a3 + 5);
      a2[12] = v41;
      *a3 = v4;
      a3[1] = v47;
      *(a3 + 4) = v52;
      *(a3 + 5) = *&v57[20];
      *(a3 + 49) = *&v57[29];
      *(a3 + 3) = *&v57[4];
      *(a3 + 18) = v29;
      a3[10] = v30;
      a3[11] = v31;
      a3[12] = v32;
    }
  }

  else
  {
    v43 = a1[1];
    v48 = *(a1 + 4);
    *v53 = *(a1 + 20);
    *&v53[16] = *(a1 + 36);
    *&v53[29] = *(a1 + 49);
    v6 = *(a1 + 18);
    v7 = a1[12];
    v8 = *(a1 + 5);
    a1[11] = 0;
    a1[12] = 0;
    a1[10] = 0;
    *a1 = *a3;
    v9 = a3[1];
    *(a1 + 4) = *(a3 + 4);
    a1[1] = v9;
    v10 = *(a3 + 49);
    v11 = *(a3 + 5);
    *(a1 + 3) = *(a3 + 3);
    *(a1 + 5) = v11;
    *(a1 + 49) = v10;
    *(a1 + 18) = *(a3 + 18);
    v12 = a3[12];
    *(a1 + 5) = *(a3 + 5);
    a1[12] = v12;
    *a3 = v4;
    a3[1] = v43;
    *(a3 + 4) = v48;
    *(a3 + 3) = *&v53[4];
    *(a3 + 5) = *&v53[20];
    *(a3 + 49) = *&v53[29];
    *(a3 + 18) = v6;
    *(a3 + 5) = v8;
    a3[12] = v7;
  }

  return 1;
}

float sub_10174CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1017090(a1, a2, a3);
  v9 = *a3;
  if (*a4 < *a3)
  {
    v10 = (a3 + 8);
    v32 = *(a3 + 8);
    v35 = *(a3 + 16);
    *v38 = *(a3 + 20);
    *&v38[16] = *(a3 + 36);
    *&v38[29] = *(a3 + 49);
    result = *(a3 + 72);
    v11 = *(a3 + 96);
    v12 = *(a3 + 80);
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    *a3 = *a4;
    v13 = *(a4 + 8);
    *(a3 + 16) = *(a4 + 16);
    *(a3 + 8) = v13;
    v14 = *(a4 + 24);
    v15 = *(a4 + 49);
    *(a3 + 40) = *(a4 + 40);
    *(a3 + 49) = v15;
    *(a3 + 24) = v14;
    *(a3 + 72) = *(a4 + 72);
    v16 = *(a4 + 96);
    *(a3 + 80) = *(a4 + 80);
    *(a3 + 96) = v16;
    *a4 = v9;
    *(a4 + 8) = v32;
    *(a4 + 16) = v35;
    *(a4 + 24) = *&v38[4];
    *(a4 + 40) = *&v38[20];
    *(a4 + 49) = *&v38[29];
    *(a4 + 72) = result;
    *(a4 + 80) = v12;
    *(a4 + 96) = v11;
    v17 = *a2;
    if (*a3 < *a2)
    {
      v18 = (a2 + 8);
      v33 = *(a2 + 8);
      v36 = *(a2 + 16);
      *v39 = *(a2 + 20);
      *&v39[16] = *(a2 + 36);
      *&v39[29] = *(a2 + 49);
      result = *(a2 + 72);
      v19 = *(a2 + 96);
      v20 = *(a2 + 80);
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 80) = 0;
      *a2 = *a3;
      v21 = *v10;
      *(a2 + 16) = *(a3 + 16);
      *(a2 + 8) = v21;
      v22 = *(a3 + 24);
      v23 = *(a3 + 49);
      *(a2 + 40) = *(a3 + 40);
      *(a2 + 49) = v23;
      *(a2 + 24) = v22;
      *(a2 + 72) = *(a3 + 72);
      v24 = *(a3 + 96);
      *(a2 + 80) = *(a3 + 80);
      *(a2 + 96) = v24;
      *a3 = v17;
      *v10 = v33;
      *(a3 + 16) = v36;
      *(a3 + 24) = *&v39[4];
      *(a3 + 40) = *&v39[20];
      *(a3 + 49) = *&v39[29];
      *(a3 + 72) = result;
      *(a3 + 80) = v20;
      *(a3 + 96) = v19;
      v25 = *a1;
      if (*a2 < *a1)
      {
        v34 = *(a1 + 8);
        v37 = *(a1 + 16);
        *v40 = *(a1 + 20);
        *&v40[16] = *(a1 + 36);
        *&v40[29] = *(a1 + 49);
        result = *(a1 + 72);
        v26 = *(a1 + 96);
        v27 = *(a1 + 80);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        *a1 = *a2;
        v28 = *v18;
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 8) = v28;
        v29 = *(a2 + 24);
        v30 = *(a2 + 49);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 49) = v30;
        *(a1 + 24) = v29;
        *(a1 + 72) = *(a2 + 72);
        v31 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v31;
        *a2 = v25;
        *v18 = v34;
        *(a2 + 16) = v37;
        *(a2 + 24) = *&v40[4];
        *(a2 + 40) = *&v40[20];
        *(a2 + 49) = *&v40[29];
        *(a2 + 72) = result;
        *(a2 + 80) = v27;
        *(a2 + 96) = v26;
      }
    }
  }

  return result;
}

float sub_1017798(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_10174CC(a1, a2, a3, a4);
  v11 = *a4;
  if (*a5 < *a4)
  {
    v12 = a4 + 1;
    v42 = a4[1];
    v46 = *(a4 + 4);
    *v50 = *(a4 + 20);
    *&v50[16] = *(a4 + 36);
    *&v50[29] = *(a4 + 49);
    result = *(a4 + 18);
    v13 = a4[12];
    v14 = *(a4 + 5);
    a4[11] = 0;
    a4[12] = 0;
    a4[10] = 0;
    *a4 = *a5;
    v15 = a5[1];
    *(a4 + 4) = *(a5 + 4);
    a4[1] = v15;
    v16 = *(a5 + 3);
    v17 = *(a5 + 49);
    *(a4 + 5) = *(a5 + 5);
    *(a4 + 49) = v17;
    *(a4 + 3) = v16;
    *(a4 + 18) = *(a5 + 18);
    v18 = a5[12];
    *(a4 + 5) = *(a5 + 5);
    a4[12] = v18;
    *a5 = v11;
    a5[1] = v42;
    *(a5 + 4) = v46;
    *(a5 + 3) = *&v50[4];
    *(a5 + 5) = *&v50[20];
    *(a5 + 49) = *&v50[29];
    *(a5 + 18) = result;
    *(a5 + 5) = v14;
    a5[12] = v13;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = a3 + 1;
      v43 = a3[1];
      v47 = *(a3 + 4);
      *v51 = *(a3 + 20);
      *&v51[16] = *(a3 + 36);
      *&v51[29] = *(a3 + 49);
      result = *(a3 + 18);
      v21 = a3[12];
      v22 = *(a3 + 5);
      a3[11] = 0;
      a3[12] = 0;
      a3[10] = 0;
      *a3 = *a4;
      v23 = *v12;
      *(a3 + 4) = *(a4 + 4);
      a3[1] = v23;
      v24 = *(a4 + 3);
      v25 = *(a4 + 49);
      *(a3 + 5) = *(a4 + 5);
      *(a3 + 49) = v25;
      *(a3 + 3) = v24;
      *(a3 + 18) = *(a4 + 18);
      v26 = a4[12];
      *(a3 + 5) = *(a4 + 5);
      a3[12] = v26;
      *a4 = v19;
      *v12 = v43;
      *(a4 + 4) = v47;
      *(a4 + 3) = *&v51[4];
      *(a4 + 5) = *&v51[20];
      *(a4 + 49) = *&v51[29];
      *(a4 + 18) = result;
      *(a4 + 5) = v22;
      a4[12] = v21;
      v27 = *a2;
      if (*a3 < *a2)
      {
        v28 = a2 + 1;
        v44 = a2[1];
        v48 = *(a2 + 4);
        *v52 = *(a2 + 20);
        *&v52[16] = *(a2 + 36);
        *&v52[29] = *(a2 + 49);
        result = *(a2 + 18);
        v29 = a2[12];
        v30 = *(a2 + 5);
        a2[11] = 0;
        a2[12] = 0;
        a2[10] = 0;
        *a2 = *a3;
        v31 = *v20;
        *(a2 + 4) = *(a3 + 4);
        a2[1] = v31;
        v32 = *(a3 + 3);
        v33 = *(a3 + 49);
        *(a2 + 5) = *(a3 + 5);
        *(a2 + 49) = v33;
        *(a2 + 3) = v32;
        *(a2 + 18) = *(a3 + 18);
        v34 = a3[12];
        *(a2 + 5) = *(a3 + 5);
        a2[12] = v34;
        *a3 = v27;
        *v20 = v44;
        *(a3 + 4) = v48;
        *(a3 + 3) = *&v52[4];
        *(a3 + 5) = *&v52[20];
        *(a3 + 49) = *&v52[29];
        *(a3 + 18) = result;
        *(a3 + 5) = v30;
        a3[12] = v29;
        v35 = *a1;
        if (*a2 < *a1)
        {
          v45 = a1[1];
          v49 = *(a1 + 4);
          *v53 = *(a1 + 20);
          *&v53[16] = *(a1 + 36);
          *&v53[29] = *(a1 + 49);
          result = *(a1 + 18);
          v36 = a1[12];
          v37 = *(a1 + 5);
          a1[11] = 0;
          a1[12] = 0;
          a1[10] = 0;
          *a1 = *a2;
          v38 = *v28;
          *(a1 + 4) = *(a2 + 4);
          a1[1] = v38;
          v39 = *(a2 + 3);
          v40 = *(a2 + 49);
          *(a1 + 5) = *(a2 + 5);
          *(a1 + 49) = v40;
          *(a1 + 3) = v39;
          *(a1 + 18) = *(a2 + 18);
          v41 = a2[12];
          *(a1 + 5) = *(a2 + 5);
          a1[12] = v41;
          *a2 = v35;
          *v28 = v45;
          *(a2 + 4) = v49;
          *(a2 + 3) = *&v53[4];
          *(a2 + 5) = *&v53[20];
          *(a2 + 49) = *&v53[29];
          *(a2 + 18) = result;
          *(a2 + 5) = v37;
          a2[12] = v36;
        }
      }
    }
  }

  return result;
}

void sub_1017B3C(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 13;
    if (a1 + 13 != a2)
    {
      v4 = a1;
      v25 = a2;
      do
      {
        v6 = v3;
        v7 = v4[13];
        if (v7 < *v4)
        {
          v28 = *(v3 + 4);
          v27 = v3[1];
          *v29 = *(v3 + 20);
          *&v29[16] = *(v3 + 36);
          *&v29[29] = *(v3 + 49);
          v8 = *(v4 + 44);
          v9 = v4[23];
          v26 = *(v4 + 12);
          v4[24] = 0;
          v4[25] = 0;
          v4[23] = 0;
          v10 = *v4;
          v11 = v6;
          v12 = v6[10];
          while (1)
          {
            v13 = v4;
            *v11 = v10;
            v14 = v4 + 1;
            v11[1] = v4[1];
            *(v11 + 4) = *(v4 + 4);
            v15 = *(v4 + 5);
            *(v11 + 3) = *(v4 + 3);
            *(v11 + 5) = v15;
            *(v11 + 49) = *(v4 + 49);
            *(v11 + 18) = *(v4 + 18);
            if (v12)
            {
              v17 = (v11 + 11);
              v16 = v11[11];
              v18 = v12;
              if (v16 != v12)
              {
                do
                {
                  v19 = *(v16 - 9);
                  v16 -= 4;
                  if (v19 < 0)
                  {
                    operator delete(*v16);
                  }
                }

                while (v16 != v12);
                v18 = v11[10];
              }

              *v17 = v12;
              operator delete(v18);
              *v17 = 0;
              v11[12] = 0;
            }

            v20 = (v13 + 10);
            *(v11 + 5) = *(v13 + 5);
            v11[12] = v13[12];
            v13[10] = 0;
            v13[11] = 0;
            v13[12] = 0;
            if (v13 == a1)
            {
              break;
            }

            v12 = 0;
            v4 = v13 - 13;
            v10 = *(v13 - 13);
            v11 = v13;
            if (v7 >= v10)
            {
              v21 = v13;
              goto LABEL_22;
            }
          }

          v21 = a1;
LABEL_22:
          *v21 = v7;
          *v14 = v27;
          *(v14 + 2) = v28;
          *(v14 + 1) = *&v29[4];
          *(v14 + 2) = *&v29[20];
          *(v14 + 41) = *&v29[29];
          *(v21 + 18) = v8;
          v22 = v13[10];
          if (v22)
          {
            v23 = v21[11];
            v5 = v13[10];
            if (v23 != v22)
            {
              do
              {
                v24 = *(v23 - 9);
                v23 -= 4;
                if (v24 < 0)
                {
                  operator delete(*v23);
                }
              }

              while (v23 != v22);
              v5 = *v20;
            }

            v21[11] = v22;
            operator delete(v5);
            v13[11] = 0;
            v13[12] = 0;
          }

          *v20 = v9;
          *(v21 + 11) = v26;
          a2 = v25;
        }

        v3 = v6 + 13;
        v4 = v6;
      }

      while (v6 + 13 != a2);
    }
  }
}

uint64_t *sub_1017D9C(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result + 13;
    while (v3 != a2)
    {
      v4 = v3;
      v5 = result[13];
      if (v5 < *result)
      {
        v20 = *(v3 + 4);
        v19 = v3[1];
        *v21 = *(v3 + 20);
        *&v21[16] = *(v3 + 36);
        *&v21[29] = *(v3 + 49);
        v6 = *(result + 44);
        v18 = *(result + 23);
        v7 = result[25];
        result[24] = 0;
        result[25] = 0;
        result[23] = 0;
        v8 = *result;
        v9 = v4;
        v10 = v4[10];
        do
        {
          v12 = result;
          *v9 = v8;
          v13 = result + 1;
          v9[1] = result[1];
          *(v9 + 4) = *(result + 4);
          v14 = *(result + 5);
          *(v9 + 3) = *(result + 3);
          *(v9 + 5) = v14;
          *(v9 + 49) = *(result + 49);
          *(v9 + 18) = *(result + 18);
          if (v10)
          {
            v16 = (v9 + 11);
            v15 = v9[11];
            v11 = v10;
            if (v15 != v10)
            {
              do
              {
                v17 = *(v15 - 9);
                v15 -= 4;
                if (v17 < 0)
                {
                  operator delete(*v15);
                }
              }

              while (v15 != v10);
              v11 = v9[10];
            }

            *v16 = v10;
            operator delete(v11);
            *v16 = 0;
            v9[12] = 0;
          }

          v10 = 0;
          result = v12 - 13;
          v8 = *(v12 - 13);
          *(v9 + 5) = *(v12 + 5);
          v9[12] = v12[12];
          v12[10] = 0;
          v12[11] = 0;
          v12[12] = 0;
          v9 = v12;
        }

        while (v5 < v8);
        *v12 = v5;
        *v13 = v19;
        *(v13 + 2) = v20;
        *(v13 + 1) = *&v21[4];
        *(v13 + 2) = *&v21[20];
        *(v13 + 41) = *&v21[29];
        *(v12 + 18) = v6;
        *(v12 + 5) = v18;
        v12[12] = v7;
      }

      v3 = v4 + 13;
      result = v4;
    }
  }

  return result;
}

uint64_t *sub_1017F88(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v34 = a1[1];
  v35 = *(a1 + 4);
  *v38 = *(a1 + 20);
  *&v38[16] = *(a1 + 36);
  *&v38[29] = *(a1 + 49);
  v4 = *(a1 + 18);
  v5 = a1 + 10;
  v33 = *(a1 + 5);
  v6 = a1[12];
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  if (v3 >= *(a2 - 104))
  {
    v9 = a1 + 13;
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v9 += 13;
    }

    while (v3 >= *v7);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7[13];
      v7 += 13;
    }

    while (v3 >= v8);
  }

  if (v7 < a2)
  {
    do
    {
      v10 = *(a2 - 104);
      a2 -= 104;
    }

    while (v3 < v10);
  }

  if (v7 < a2)
  {
    v11 = *v7;
    do
    {
      v36 = v7[1];
      v37 = *(v7 + 4);
      *&v39[29] = *(v7 + 49);
      *v39 = *(v7 + 20);
      *&v39[16] = *(v7 + 36);
      v12 = *(v7 + 18);
      v13 = v7[12];
      v14 = *(v7 + 5);
      v7[11] = 0;
      v7[12] = 0;
      v7[10] = 0;
      *v7 = *a2;
      v15 = *(a2 + 8);
      *(v7 + 4) = *(a2 + 16);
      v7[1] = v15;
      v16 = *(a2 + 40);
      v17 = *(a2 + 49);
      *(v7 + 3) = *(a2 + 24);
      *(v7 + 49) = v17;
      *(v7 + 5) = v16;
      *(v7 + 18) = *(a2 + 72);
      v18 = *(a2 + 96);
      *(v7 + 5) = *(a2 + 80);
      v7[12] = v18;
      *a2 = v11;
      *(a2 + 16) = v37;
      *(a2 + 8) = v36;
      *(a2 + 49) = *&v39[29];
      *(a2 + 24) = *&v39[4];
      *(a2 + 40) = *&v39[20];
      *(a2 + 72) = v12;
      *(a2 + 80) = v14;
      *(a2 + 96) = v13;
      do
      {
        v19 = v7[13];
        v7 += 13;
        v11 = v19;
      }

      while (v3 >= v19);
      do
      {
        v20 = *(a2 - 104);
        a2 -= 104;
      }

      while (v3 < v20);
    }

    while (v7 < a2);
  }

  if (v7 - 13 == a1)
  {
    v28 = *(v7 - 3);
  }

  else
  {
    *a1 = *(v7 - 13);
    v21 = *(v7 - 12);
    *(a1 + 4) = *(v7 - 22);
    a1[1] = v21;
    v22 = *(v7 - 5);
    v23 = *(v7 - 4);
    *(a1 + 49) = *(v7 - 55);
    *(a1 + 5) = v23;
    *(a1 + 3) = v22;
    *(a1 + 18) = *(v7 - 8);
    v24 = a1[10];
    if (v24)
    {
      v25 = a1[11];
      v26 = a1[10];
      if (v25 != v24)
      {
        do
        {
          v27 = *(v25 - 9);
          v25 -= 4;
          if (v27 < 0)
          {
            operator delete(*v25);
          }
        }

        while (v25 != v24);
        v26 = *v5;
      }

      a1[11] = v24;
      operator delete(v26);
      *v5 = 0;
      v5[1] = 0;
      v5[2] = 0;
    }

    v28 = 0;
    *(a1 + 5) = *(v7 - 3);
    a1[12] = *(v7 - 1);
    *(v7 - 3) = 0;
    *(v7 - 2) = 0;
    *(v7 - 1) = 0;
  }

  *(v7 - 13) = v3;
  *(v7 - 22) = v35;
  *(v7 - 12) = v34;
  *(v7 - 55) = *&v38[29];
  *(v7 - 5) = *&v38[4];
  *(v7 - 4) = *&v38[20];
  *(v7 - 8) = v4;
  if (v28)
  {
    v29 = *(v7 - 2);
    v30 = v28;
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 9);
        v29 -= 4;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = *(v7 - 3);
    }

    *(v7 - 2) = v28;
    operator delete(v30);
  }

  *(v7 - 3) = v33;
  *(v7 - 1) = v6;
  return v7;
}

uint64_t *sub_10182B4(uint64_t *a1, unint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  v38 = a1[1];
  v39 = *(a1 + 4);
  *v42 = *(a1 + 20);
  *&v42[16] = *(a1 + 36);
  *&v42[29] = *(a1 + 49);
  v6 = *(a1 + 18);
  v7 = a1 + 10;
  v37 = *(a1 + 5);
  v8 = a1[12];
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  do
  {
    v9 = a1[v4 + 13];
    v4 += 13;
  }

  while (v9 < v5);
  v10 = &a1[v4];
  if (v4 == 13)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 104);
      a2 -= 104;
    }

    while (v12 >= v5);
  }

  else
  {
    do
    {
      v11 = *(a2 - 104);
      a2 -= 104;
    }

    while (v11 >= v5);
  }

  if (v10 < a2)
  {
    v13 = &a1[v4];
    v14 = a2;
    do
    {
      v40 = v13[1];
      v41 = *(v13 + 4);
      *&v43[29] = *(v13 + 49);
      *v43 = *(v13 + 20);
      *&v43[16] = *(v13 + 36);
      v15 = *(v13 + 18);
      v16 = v13[12];
      v17 = *(v13 + 5);
      v13[11] = 0;
      v13[12] = 0;
      v13[10] = 0;
      *v13 = *v14;
      v18 = *(v14 + 8);
      *(v13 + 4) = *(v14 + 16);
      v13[1] = v18;
      v19 = *(v14 + 40);
      v20 = *(v14 + 49);
      *(v13 + 3) = *(v14 + 24);
      *(v13 + 49) = v20;
      *(v13 + 5) = v19;
      *(v13 + 18) = *(v14 + 72);
      v21 = *(v14 + 96);
      *(v13 + 5) = *(v14 + 80);
      v13[12] = v21;
      *v14 = v9;
      *(v14 + 16) = v41;
      *(v14 + 8) = v40;
      *(v14 + 49) = *&v43[29];
      *(v14 + 24) = *&v43[4];
      *(v14 + 40) = *&v43[20];
      *(v14 + 72) = v15;
      *(v14 + 80) = v17;
      *(v14 + 96) = v16;
      do
      {
        v22 = v13[13];
        v13 += 13;
        v9 = v22;
      }

      while (v22 < v5);
      do
      {
        v23 = *(v14 - 104);
        v14 -= 104;
      }

      while (v23 >= v5);
    }

    while (v13 < v14);
    v24 = v13 - 13;
    if (v13 - 13 != a1)
    {
      goto LABEL_15;
    }

LABEL_22:
    v32 = *(v13 - 3);
    goto LABEL_26;
  }

  v13 = &a1[v4];
  v24 = v10 - 13;
  if (v10 - 13 == a1)
  {
    goto LABEL_22;
  }

LABEL_15:
  *a1 = *(v13 - 13);
  v25 = *(v13 - 12);
  *(a1 + 4) = *(v13 - 22);
  a1[1] = v25;
  v26 = *(v13 - 5);
  v27 = *(v13 - 4);
  *(a1 + 49) = *(v13 - 55);
  *(a1 + 5) = v27;
  *(a1 + 3) = v26;
  *(a1 + 18) = *(v13 - 8);
  v28 = a1[10];
  if (v28)
  {
    v29 = a1[11];
    v30 = a1[10];
    if (v29 != v28)
    {
      do
      {
        v31 = *(v29 - 9);
        v29 -= 4;
        if (v31 < 0)
        {
          operator delete(*v29);
        }
      }

      while (v29 != v28);
      v30 = *v7;
    }

    a1[11] = v28;
    operator delete(v30);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v32 = 0;
  *(a1 + 5) = *(v13 - 3);
  a1[12] = *(v13 - 1);
  *(v13 - 3) = 0;
  *(v13 - 2) = 0;
  *(v13 - 1) = 0;
LABEL_26:
  *(v13 - 13) = v5;
  *(v13 - 22) = v39;
  *(v13 - 12) = v38;
  *(v13 - 55) = *&v42[29];
  *(v13 - 5) = *&v42[4];
  *(v13 - 4) = *&v42[20];
  *(v13 - 8) = v6;
  if (v32)
  {
    v33 = *(v13 - 2);
    v34 = v32;
    if (v33 != v32)
    {
      do
      {
        v35 = *(v33 - 9);
        v33 -= 4;
        if (v35 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v32);
      v34 = *(v13 - 3);
    }

    *(v13 - 2) = v32;
    operator delete(v34);
  }

  *(v13 - 3) = v37;
  *(v13 - 1) = v8;
  return v24;
}

BOOL sub_10185FC(uint64_t a1, uint64_t *a2)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        if (*(a2 - 13) < *a1)
        {
          v34 = *(a1 + 8);
          v36 = *(a1 + 16);
          *v38 = *(a1 + 20);
          *&v38[16] = *(a1 + 36);
          *&v38[29] = *(a1 + 49);
          v6 = *(a1 + 72);
          v7 = *(a1 + 96);
          v8 = *(a1 + 80);
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 80) = 0;
          *a1 = *(a2 - 13);
          v9 = *(a2 - 12);
          *(a1 + 16) = *(a2 - 22);
          *(a1 + 8) = v9;
          v10 = *(a2 - 55);
          v11 = *(a2 - 5);
          *(a1 + 40) = *(a2 - 4);
          *(a1 + 49) = v10;
          *(a1 + 24) = v11;
          *(a1 + 72) = *(a2 - 8);
          v12 = *(a2 - 1);
          *(a1 + 80) = *(a2 - 3);
          *(a1 + 96) = v12;
          *(a2 - 13) = v5;
          *(a2 - 12) = v34;
          *(a2 - 22) = v36;
          *(a2 - 5) = *&v38[4];
          *(a2 - 4) = *&v38[20];
          *(a2 - 55) = *&v38[29];
          *(a2 - 8) = v6;
          *(a2 - 3) = v8;
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1017090(a1, (a1 + 104), a2 - 13);
      return 1;
    case 4:
      sub_10174CC(a1, a1 + 104, a1 + 208, (a2 - 13));
      return 1;
    case 5:
      sub_1017798(a1, (a1 + 104), (a1 + 208), (a1 + 312), a2 - 13);
      return 1;
  }

LABEL_11:
  v13 = (a1 + 208);
  sub_1017090(a1, (a1 + 104), (a1 + 208));
  v14 = (a1 + 312);
  if ((a1 + 312) == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v19 = *v14;
    if (*v14 < *v13)
    {
      v35 = v14[1];
      v37 = *(v14 + 4);
      *v39 = *(v14 + 20);
      *&v39[16] = *(v14 + 36);
      *&v39[29] = *(v14 + 49);
      v20 = *(v14 + 18);
      v21 = v14[10];
      v18 = *(v14 + 11);
      v14[11] = 0;
      v14[12] = 0;
      v14[10] = 0;
      v22 = v15;
      v23 = *v13;
      while (1)
      {
        v24 = a1 + v22;
        v25 = *(a1 + v22 + 216);
        *(v24 + 312) = v23;
        *(v24 + 320) = v25;
        *(v24 + 328) = *(a1 + v22 + 224);
        v26 = (a1 + v22 + 232);
        v27 = *(a1 + v22 + 248);
        *(v24 + 336) = *v26;
        *(v24 + 352) = v27;
        *(a1 + v22 + 361) = *(a1 + v22 + 257);
        *(v24 + 384) = *(a1 + v22 + 280);
        *(a1 + v22 + 392) = *(a1 + v22 + 288);
        *(v24 + 408) = *(a1 + v22 + 304);
        *(v24 + 288) = 0;
        *(v24 + 296) = 0;
        *(v24 + 304) = 0;
        if (v22 == -208)
        {
          break;
        }

        v23 = *(v24 + 104);
        v22 -= 104;
        if (v19 >= v23)
        {
          v28 = a1 + v22 + 312;
          goto LABEL_23;
        }
      }

      v28 = a1;
LABEL_23:
      *v28 = v19;
      *(v24 + 216) = v35;
      *(v24 + 224) = v37;
      *(v24 + 232) = *&v39[4];
      *(v24 + 248) = *&v39[20];
      *(v26 + 25) = *&v39[29];
      *(v28 + 72) = v20;
      v29 = *(v24 + 288);
      if (v29)
      {
        v33 = v18;
        v30 = *(v28 + 88);
        v17 = *(v24 + 288);
        if (v30 != v29)
        {
          do
          {
            v31 = *(v30 - 9);
            v30 -= 4;
            if (v31 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v29);
          v17 = *(v24 + 288);
        }

        *(v28 + 88) = v29;
        operator delete(v17);
        *(v24 + 296) = 0;
        *(v24 + 304) = 0;
        v18 = v33;
      }

      *(v24 + 288) = v21;
      *(v28 + 88) = v18;
      if (++v16 == 8)
      {
        return v14 + 13 == a2;
      }
    }

    v13 = v14;
    v15 += 104;
    v14 += 13;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_10189A4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = (a3 - 2) >> 1;
  if (v4 < 0x4EC4EC4EC4EC4EC5 * ((a4 - result) >> 3))
  {
    return result;
  }

  v5 = (0x9D89D89D89D89D8ALL * ((a4 - result) >> 3)) | 1;
  v6 = (result + 104 * v5);
  if ((0x9D89D89D89D89D8ALL * ((a4 - result) >> 3) + 2) >= a3)
  {
    v9 = *a4;
    if (*v6 < *a4)
    {
      return result;
    }
  }

  else
  {
    v7 = *v6;
    v8 = v6[13];
    if (*v6 <= v8)
    {
      v7 = v6[13];
    }

    if (*v6 < v8)
    {
      v6 += 13;
      v5 = 0x9D89D89D89D89D8ALL * ((a4 - result) >> 3) + 2;
    }

    v9 = *a4;
    if (v7 < *a4)
    {
      return result;
    }
  }

  v22 = a4[1];
  v23 = *(a4 + 4);
  *v24 = *(a4 + 20);
  *&v24[16] = *(a4 + 36);
  *&v24[29] = *(a4 + 49);
  v10 = *(a4 + 18);
  v11 = *(a4 + 5);
  v12 = a4[12];
  a4[11] = 0;
  a4[12] = 0;
  a4[10] = 0;
  v13 = *v6;
  while (1)
  {
    v15 = v6;
    *a4 = v13;
    v17 = v6 + 1;
    v16 = v6[1];
    *(a4 + 4) = *(v17 + 2);
    a4[1] = v16;
    v18 = *(v17 + 1);
    v19 = *(v17 + 2);
    *(a4 + 49) = *(v17 + 41);
    *(a4 + 5) = v19;
    *(a4 + 3) = v18;
    *(a4 + 18) = *(v17 + 16);
    v20 = v17[11];
    *(a4 + 5) = *(v17 + 9);
    a4[12] = v20;
    v17[9] = 0;
    v17[10] = 0;
    v17[11] = 0;
    if (v4 < v5)
    {
      break;
    }

    v21 = (2 * v5) | 1;
    v6 = (result + 104 * v21);
    v5 = 2 * v5 + 2;
    if (v5 < a3)
    {
      v13 = *v6;
      v14 = v6[13];
      if (*v6 <= v14)
      {
        v13 = v6[13];
      }

      if (*v6 >= v14)
      {
        v5 = v21;
      }

      else
      {
        v6 += 13;
      }

      a4 = v15;
      if (v13 < v9)
      {
        break;
      }
    }

    else
    {
      v13 = *v6;
      v5 = v21;
      a4 = v15;
      if (*v6 < v9)
      {
        break;
      }
    }
  }

  *v15 = v9;
  *v17 = v22;
  *(v17 + 2) = v23;
  *(v17 + 1) = *&v24[4];
  *(v17 + 2) = *&v24[20];
  *(v17 + 41) = *&v24[29];
  *(v15 + 18) = v10;
  *(v15 + 5) = v11;
  v15[12] = v12;
  return result;
}

uint64_t *sub_1018BA0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v43 = result[1];
    v44 = *(result + 4);
    *v47 = *(result + 20);
    *&v47[16] = *(result + 36);
    *&v47[29] = *(result + 49);
    v6 = *(result + 18);
    v7 = result[10];
    v8 = result[11];
    v9 = result[12];
    result[11] = 0;
    result[12] = 0;
    v10 = result;
    result[10] = 0;
    do
    {
      v23 = &v10[13 * v4];
      v16 = v23 + 13;
      v24 = (2 * v4) | 1;
      v4 = 2 * v4 + 2;
      if (v4 < a4)
      {
        v13 = v23[26];
        v11 = v23 + 26;
        v12 = v13;
        v14 = *(v11 - 13);
        v15 = v14 < v13;
        if (v14 > v13)
        {
          v12 = *(v11 - 13);
        }

        if (v15)
        {
          v16 = v11;
        }

        else
        {
          v4 = v24;
        }
      }

      else
      {
        v12 = *v16;
        v4 = v24;
      }

      *v10 = v12;
      v17 = v16 + 1;
      v18 = v16[1];
      *(v10 + 4) = *(v16 + 4);
      v10[1] = v18;
      v19 = *(v16 + 3);
      v20 = *(v16 + 5);
      *(v10 + 49) = *(v16 + 49);
      *(v10 + 5) = v20;
      *(v10 + 3) = v19;
      v21 = *(v16 + 5);
      *(v10 + 18) = *(v16 + 18);
      v22 = v16[12];
      *(v10 + 5) = v21;
      v10[12] = v22;
      v16[10] = 0;
      v16[11] = 0;
      v16[12] = 0;
      v10 = v16;
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v16 == (a2 - 104))
    {
      *v16 = v5;
      *v17 = v43;
      *(v16 + 4) = v44;
      *(v16 + 3) = *&v47[4];
      *(v16 + 5) = *&v47[20];
      *(v16 + 49) = *&v47[29];
      *(v16 + 18) = v6;
      v16[10] = v7;
      v16[11] = v8;
      v16[12] = v9;
    }

    else
    {
      *v16 = *(a2 - 104);
      v25 = *(a2 - 96);
      *(v16 + 4) = *(a2 - 88);
      *v17 = v25;
      v26 = *(a2 - 80);
      v27 = *(a2 - 64);
      *(v16 + 49) = *(a2 - 55);
      *(v16 + 5) = v27;
      *(v16 + 3) = v26;
      *(v16 + 18) = *(a2 - 32);
      v28 = *(a2 - 8);
      *(v16 + 5) = *(a2 - 24);
      v16[12] = v28;
      *(a2 - 104) = v5;
      *(a2 - 96) = v43;
      *(a2 - 88) = v44;
      *(a2 - 80) = *&v47[4];
      *(a2 - 64) = *&v47[20];
      *(a2 - 55) = *&v47[29];
      *(a2 - 32) = v6;
      *(a2 - 24) = v7;
      *(a2 - 16) = v8;
      *(a2 - 8) = v9;
      v29 = v16 - result + 104;
      if (v29 >= 105)
      {
        v30 = (0x4EC4EC4EC4EC4EC5 * (v29 >> 3) - 2) >> 1;
        v31 = &result[13 * v30];
        v32 = *v16;
        if (*v31 < *v16)
        {
          v45 = *v17;
          v46 = *(v16 + 4);
          *&v48[29] = *(v16 + 49);
          *v48 = *(v16 + 20);
          *&v48[16] = *(v16 + 36);
          v33 = *(v16 + 18);
          v34 = *(v16 + 5);
          v35 = v16[12];
          v16[10] = 0;
          v16[11] = 0;
          v16[12] = 0;
          v36 = *v31;
          do
          {
            v37 = v31;
            *v16 = v36;
            v38 = v31 + 1;
            v39 = v31[1];
            *(v16 + 4) = *(v38 + 2);
            v16[1] = v39;
            v40 = *(v38 + 1);
            v41 = *(v38 + 2);
            *(v16 + 49) = *(v38 + 41);
            *(v16 + 5) = v41;
            *(v16 + 3) = v40;
            *(v16 + 18) = *(v38 + 16);
            v42 = v38[11];
            *(v16 + 5) = *(v38 + 9);
            v16[12] = v42;
            v38[9] = 0;
            v38[10] = 0;
            v38[11] = 0;
            if (!v30)
            {
              break;
            }

            v30 = (v30 - 1) >> 1;
            v31 = &result[13 * v30];
            v36 = *v31;
            v16 = v37;
          }

          while (*v31 < v32);
          *v37 = v32;
          *v38 = v45;
          *(v38 + 2) = v46;
          *(v38 + 1) = *&v48[4];
          *(v38 + 2) = *&v48[20];
          *(v38 + 41) = *&v48[29];
          *(v37 + 18) = v33;
          *(v37 + 5) = v34;
          v37[12] = v35;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1018EC8(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 < 0x276276276276277)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_1018FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_49DEB0(va);
  _Unwind_Resume(a1);
}

void sub_1019004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_49BBE8(va1);
  *(v3 + 8) = v4;
  sub_49DEB0(va);
  _Unwind_Resume(a1);
}

void sub_1019024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = -1;
  *(v8 + 32) = -1;
  *(v8 + 40) = 0x7FFFFFFF;
  *(v8 + 48) = -1;
  *(v8 + 56) = -1;
  *(v8 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(v8 + 72) = 0;
  *(v8 + 104) = 0;
  *(v8 + 80) = -1935635296;
  *(v8 + 88) = 0;
  *(v8 + 95) = 0;
  *(v8 + 112) = 0;
  *(v8 + 120) = 0;
  *(v8 + 128) = 0;
  *(v8 + 152) = 0;
  *(v8 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(v8 + 144) = 100;
  *(v8 + 160) = 0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  *(v8 + 168) = vnegq_f64(v9);
  *(v8 + 184) = 0u;
  *(v8 + 200) = 0u;
  *(v8 + 216) = 0u;
  *(v8 + 232) = 0u;
  *(v8 + 248) = 0;
  sub_1015604(&v11, v10);
}

void sub_1019678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_404134(&a24);
  sub_D78EB0(v24);
  _Unwind_Resume(a1);
}

void sub_1019720(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1[56] - 1) < 2)
  {
    v8 = sub_3B1D8C(a3);
    v9 = sub_2AB698(v8, *(a1 + 2));
    if (v9 <= 0xFFFFFFFEFFFFFFFFLL && v9 != 0)
    {
      v11 = sub_2ACC94(v8, v9);
      v13 = *a1;
      v12 = a1[1];
      if ((*a1 != -1 || v12 != -1) && (v11 != -1 || HIDWORD(v11) != 0xFFFFFFFF))
      {
        v15 = HIDWORD(v11);
        v16 = v11;
        v17 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
        v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
        v19.i64[0] = v13;
        v19.i64[1] = v16;
        v20 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
        v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
        v22 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v19), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
        v33 = vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0];
        v23 = sin((v18 - v21) * 0.5);
        v24 = v23 * v23;
        v25 = cos(v18);
        v26 = v25 * cos(v21);
        v27 = sin(0.5 * v33);
        atan2(sqrt(v27 * v27 * v26 + v24), sqrt(1.0 - (v27 * v27 * v26 + v24)));
      }

      strcpy(__p, "QueryTerminalUtilities");
      v35 = 22;
      __dst = 0;
      v37[0] = 0;
      v37[1] = 0;
      v28 = sub_3AEC94(a3, __p, &__dst);
      sub_5ADDC(&v38, v28);
      v29 = __dst;
      if (__dst)
      {
        v30 = v37[0];
        v31 = __dst;
        if (v37[0] != __dst)
        {
          do
          {
            v32 = *(v30 - 1);
            v30 -= 3;
            if (v32 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v29);
          v31 = __dst;
        }

        v37[0] = v29;
        operator delete(v31);
      }

      if (v35 < 0)
      {
        operator delete(*__p);
      }

      operator new();
    }
  }

  sub_1015680(a2, a1, 0, a4);
}

void sub_101A1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::ios::~ios();
  sub_6BB60(v42 - 200);
  _Unwind_Resume(a1);
}

void sub_101A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_1A104((v24 - 224));
  if (a24 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x101A274);
}

void sub_101A2A4()
{
  __chkstk_darwin();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 32) = -1;
  *(v0 + 40) = 0x7FFFFFFF;
  *(v0 + 48) = -1;
  *(v0 + 56) = -1;
  *(v0 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 72) = 0;
  *(v0 + 104) = 0;
  *(v0 + 80) = -1935635296;
  *(v0 + 88) = 0;
  *(v0 + 95) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 152) = 0;
  *(v0 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(v0 + 144) = 100;
  *(v0 + 160) = 0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(v0 + 168) = vnegq_f64(v1);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  sub_1014B00(&v3, v2);
}

void sub_101A8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_404134(&a24);
  sub_D78EB0(v24);
  _Unwind_Resume(a1);
}

void sub_101A994(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = -1;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0x7FFFFFFF;
  *(a3 + 48) = -1;
  *(a3 + 56) = -1;
  *(a3 + 64) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 72) = 0;
  *(a3 + 104) = 0;
  v5 = (a3 + 104);
  *(a3 + 80) = -1935635296;
  *(a3 + 88) = 0;
  *(a3 + 95) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v6 = (a3 + 152);
  *(a3 + 136) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + 144) = 100;
  *(a3 + 160) = 0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *(a3 + 168) = vnegq_f64(v7);
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0;
  sub_1016070(v57, a2);
  v9 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    while (*(v9 + 224) != 1)
    {
      v9 += 240;
      if (v9 == v8)
      {
        goto LABEL_4;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_4:
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_2D390(exception, "No origin found in input snapped locations.", 0x2BuLL);
  }

  v12 = *v9;
  v13 = *(v9 + 4);
  sub_10160EC(v57, v9, 0, __p);
  v14 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v14;
    operator delete(v14);
  }

  *a3 = *__p;
  v15 = v56;
  *(a3 + 16) = v55;
  *(a3 + 24) = v15;
  *(a3 + 32) = *v9;
  v16 = *(v9 + 16);
  v17 = *(v9 + 32);
  v18 = *(v9 + 48);
  *(a3 + 95) = *(v9 + 63);
  *(a3 + 64) = v17;
  *(a3 + 80) = v18;
  *(a3 + 48) = v16;
  if (a3 + 32 != v9)
  {
    sub_146EC(v5, *(v9 + 72), *(v9 + 80), (*(v9 + 80) - *(v9 + 72)) >> 2);
  }

  v19 = *(v9 + 96);
  *(a3 + 144) = *(v9 + 112);
  *(a3 + 128) = v19;
  v20 = *(v9 + 136);
  *v6 = *(v9 + 120);
  v6[1] = v20;
  sub_3E428((a3 + 184), v9 + 152);
  v21 = *a1;
  v22 = a1[1];
  if (*a1 != v22)
  {
    v23 = (v12 & v13) != -1;
    v24 = exp(v13 * -6.28318531 / 4294967300.0 + 3.14159265);
    v52 = atan((v24 + -1.0 / v24) * 0.5) * 57.2957795 * 0.0174532925;
    v51 = cos(v52);
    while (1)
    {
      v25 = v21[56];
      if (v25 == 1 || v25 == 6)
      {
        goto LABEL_13;
      }

      if (v25 - 3 > 2)
      {
        break;
      }

      sub_10160EC(v57, v21, 0, __p);
      v27 = *(a3 + 216);
      if (v27 >= *(a3 + 224))
      {
        v28 = sub_C6A920((a3 + 208), __p);
        v29 = __p[0];
        *(a3 + 216) = v28;
        if (!v29)
        {
          goto LABEL_13;
        }

        goto LABEL_38;
      }

      *v27 = 0;
      v27[1] = 0;
      v27[2] = 0;
      *v27 = *__p;
      v27[2] = v55;
      __p[0] = 0;
      __p[1] = 0;
      v55 = 0;
      v27[3] = v56;
      *(a3 + 216) = v27 + 4;
LABEL_13:
      v21 += 60;
      if (v21 == v22)
      {
        goto LABEL_51;
      }
    }

    if (!v23 || ((v31 = *v21, v30 = v21[1], *v21 == -1) ? (v32 = v30 == -1) : (v32 = 0), v32))
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_31;
    }

    v33 = exp(v30 * -6.28318531 / 4294967300.0 + 3.14159265);
    v34 = atan((v33 - 1.0 / v33) * 0.5) * 57.2957795 * 0.0174532925;
    v35 = sin((v52 - v34) * 0.5);
    v36 = v35 * v35;
    v37 = v51 * cos(v34);
    v38 = sin(((v12 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925 - (v31 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925) * 0.5);
    v39 = atan2(sqrt(v38 * v38 * v37 + v36), sqrt(1.0 - (v38 * v38 * v37 + v36)));
    v40 = (v39 + v39) * 6372797.56 * 100.0;
    if (v40 >= 0.0)
    {
      v41 = v40;
      if (v40 >= 4.50359963e15)
      {
        goto LABEL_42;
      }

      v42 = (v40 + v40) + 1;
    }

    else
    {
      v41 = v40;
      if (v40 <= -4.50359963e15)
      {
        goto LABEL_42;
      }

      v42 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
    }

    v41 = (v42 >> 1);
LABEL_42:
    if (v41 >= 9.22337204e18)
    {
      v43 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_31;
    }

    if (v40 >= 0.0)
    {
      if (v40 < 4.50359963e15)
      {
        v47 = (v40 + v40) + 1;
        goto LABEL_49;
      }
    }

    else if (v40 > -4.50359963e15)
    {
      v47 = (v40 + v40) - 1 + (((v40 + v40) - 1) >> 63);
LABEL_49:
      v40 = (v47 >> 1);
    }

    v43 = v40;
LABEL_31:
    v53 = v43;
    sub_10160EC(v57, v21, 0, __p);
    v44 = *(a3 + 240);
    if (v44 >= *(a3 + 248))
    {
      v46 = sub_101BBD4((a3 + 232), __p, &v53);
    }

    else
    {
      v45 = v53;
      v44[1] = 0;
      v44[2] = 0;
      *v44 = 0;
      if (__p[1] != __p[0])
      {
        if (0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v44[3] = v56;
      v44[4] = v45;
      v46 = v44 + 5;
    }

    *(a3 + 240) = v46;
    v29 = __p[0];
    if (!__p[0])
    {
      goto LABEL_13;
    }

LABEL_38:
    __p[1] = v29;
    operator delete(v29);
    goto LABEL_13;
  }

LABEL_51:
  if (v64)
  {
    v65 = v64;
    operator delete(v64);
  }

  v48 = v63;
  if (v63)
  {
    do
    {
      v49 = *v48;
      operator delete(v48);
      v48 = v49;
    }

    while (v49);
  }

  v50 = v62;
  v62 = 0;
  if (v50)
  {
    operator delete(v50);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void sub_101AFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_3BFA2C(&a24);
  sub_D78EB0(v24);
  _Unwind_Resume(a1);
}

uint64_t *sub_101B084@<X0>(uint64_t *result@<X0>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result[1];
  if (v3 != *result)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a3;
  return result;
}

void sub_101B1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101B21C@<X0>(uint64_t *result@<X0>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result[1];
  if (v3 != *result)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a3;
  return result;
}

void sub_101B364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101B3B4@<X0>(uint64_t *result@<X0>, uint64_t **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = result[1];
  if (v3 != *result)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 5) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a3;
  return result;
}

void sub_101B4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(v12 + 8) = v14;
    operator delete(v14);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101B54C(unsigned int **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    v6 = -1;
    v37 = vdupq_n_s64(0x4076800000000000uLL);
    v35 = vdupq_n_s64(0xC066800000000000);
    v36 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    do
    {
      if (v3[56] == 1)
      {
        goto LABEL_5;
      }

      if (v6 == -1 || ((v9 = *v3, v8 = v3[1], *v3 == -1) ? (v10 = v8 == -1) : (v10 = 0), v10))
      {
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        v27 = a2[2];
        if (v5 >= v27)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      v38 = v6;
      v11 = exp(3.14159265 - HIDWORD(v6) * 6.28318531 / 4294967300.0);
      v12 = atan((v11 - 1.0 / v11) * 0.5) * 57.2957795 * 0.0174532925;
      v13.i64[0] = v38;
      v13.i64[1] = v9;
      v14 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
      v15 = atan((v14 - 1.0 / v14) * 0.5) * 57.2957795 * 0.0174532925;
      v16 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v13), v37), v36), v35), v34);
      v39 = vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0];
      v17 = sin((v12 - v15) * 0.5);
      v18 = v17 * v17;
      v19 = cos(v12);
      v20 = v19 * cos(v15);
      v21 = sin(0.5 * v39);
      v22 = atan2(sqrt(v21 * v21 * v20 + v18), sqrt(1.0 - (v21 * v21 * v20 + v18)));
      v23 = (v22 + v22) * 6372797.56 * 100.0;
      if (v23 >= 0.0)
      {
        v24 = v23;
        if (v23 >= 4.50359963e15)
        {
          goto LABEL_29;
        }

        v25 = (v23 + v23) + 1;
      }

      else
      {
        v24 = v23;
        if (v23 <= -4.50359963e15)
        {
          goto LABEL_29;
        }

        v25 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      }

      v24 = (v25 >> 1);
LABEL_29:
      if (v24 >= 9.22337204e18)
      {
        v26 = 0x7FFFFFFFFFFFFFFELL;
        v27 = a2[2];
        if (v5 >= v27)
        {
          goto LABEL_16;
        }

        goto LABEL_3;
      }

      if (v23 >= 0.0)
      {
        if (v23 >= 4.50359963e15)
        {
          goto LABEL_38;
        }

        v33 = (v23 + v23) + 1;
      }

      else
      {
        if (v23 <= -4.50359963e15)
        {
          goto LABEL_38;
        }

        v33 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
      }

      v23 = (v33 >> 1);
LABEL_38:
      v26 = v23;
      v27 = a2[2];
      if (v5 >= v27)
      {
LABEL_16:
        v28 = v5;
        v29 = v5 >> 3;
        v30 = v29 + 1;
        if ((v29 + 1) >> 61)
        {
          *a2 = 0;
          sub_1794();
        }

        if (v27 >> 2 > v30)
        {
          v30 = v27 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          if (!(v31 >> 61))
          {
            operator new();
          }

          *a2 = 0;
          sub_1808();
        }

        v32 = (8 * v29);
        *v32 = v26;
        v5 = (v32 + 1);
        memcpy(0, 0, v28);
        a2[1] = v5;
        a2[2] = 0;
        goto LABEL_4;
      }

LABEL_3:
      *v5 = v26;
      v5 += 8;
LABEL_4:
      a2[1] = v5;
LABEL_5:
      v7 = *v3;
      v3 += 60;
      v6 = v7;
    }

    while (v3 != v4);
  }

  *a2 = 0;
}

void sub_101B958(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101B980(void ***a1, void *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v4)
  {
    v4 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (a1[1] - *a1);
  v8 = *a3;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v9 = a2[1];
  if (v9 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[10 * v3] = a2[3];
  *(&stru_20.cmd + 5 * v3) = v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v7 + *a1 - v11);
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = (v7 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = *(v13 + 3);
      v14[2] = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v14[3] = v15;
      v14[4] = *(v13 + 4);
      v13 += 40;
      v14 += 5;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        *(v10 + 1) = v16;
        operator delete(v16);
      }

      v10 += 40;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = (v7 + 40);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return (v7 + 40);
}

void sub_101BBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

void *sub_101BBD4(void ***a1, void *a2, uint64_t *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1);
  v4 = v3 + 1;
  if (v3 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * (a1[2] - *a1) > v4)
  {
    v4 = 0x999999999999999ALL * (a1[2] - *a1);
  }

  if (0xCCCCCCCCCCCCCCCDLL * (a1[2] - *a1) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (a1[1] - *a1);
  v8 = *a3;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  v9 = a2[1];
  if (v9 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - *a2) >> 5) < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *&dword_18[10 * v3] = a2[3];
  *(&stru_20.cmd + 5 * v3) = v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = (v7 + *a1 - v11);
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = (v7 + *a1 - v11);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      v14[2] = 0;
      *v14 = *v13;
      v15 = *(v13 + 3);
      v14[2] = *(v13 + 2);
      *v13 = 0;
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      v14[3] = v15;
      v14[4] = *(v13 + 4);
      v13 += 40;
      v14 += 5;
    }

    while (v13 != v11);
    do
    {
      v16 = *v10;
      if (*v10)
      {
        *(v10 + 1) = v16;
        operator delete(v16);
      }

      v10 += 40;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = (v7 + 40);
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return (v7 + 40);
}

void sub_101BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101BE28(uint64_t a1, uint64_t a2, double a3)
{
  sub_31BF20(a1, v7);
  sub_31214(v7, a2, &v8, a3);
  v5 = *(v9 - 12);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return v5;
}

void sub_101BEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101BED8()
{
  byte_27C0DAF = 3;
  LODWORD(qword_27C0D98) = 5136193;
  byte_27C0DC7 = 3;
  LODWORD(qword_27C0DB0) = 5136194;
  byte_27C0DDF = 3;
  LODWORD(qword_27C0DC8) = 5136195;
  byte_27C0DF7 = 15;
  strcpy(&qword_27C0DE0, "vehicle_mass_kg");
  byte_27C0E0F = 21;
  strcpy(&xmmword_27C0DF8, "vehicle_cargo_mass_kg");
  byte_27C0E27 = 19;
  strcpy(&qword_27C0E10, "vehicle_aux_power_w");
  byte_27C0E3F = 15;
  strcpy(&qword_27C0E28, "dcdc_efficiency");
  strcpy(&qword_27C0E40, "drive_train_efficiency");
  HIBYTE(word_27C0E56) = 22;
  operator new();
}

void sub_101C0B4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C0E56) < 0)
  {
    sub_21E6878();
  }

  sub_21E6884();
  _Unwind_Resume(a1);
}

void sub_101C0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = v9;
  v12 = v11;
  v13 = v8;
  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  sub_FBF440(v8);
  v15 = v12[1];
  v200 = *v12;
  v198 = v12[2];
  v16 = *v12[3];
  v196 = v12;
  v199 = *(v12 + 32);
  v17 = *v13;
  v18 = v13[1];
  v207[0] = v16;
  v220 = 0u;
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v226[0] = &unk_2290750;
  v226[1] = 0;
  v227 = 0u;
  v228 = 0;
  v229 = &unk_2290750;
  v232 = 0;
  v231 = 0;
  v230 = 0u;
  v233 = &unk_2290750;
  v235 = 0;
  v234 = 0u;
  v236 = 0;
  v237 = &unk_2290750;
  v240 = 0;
  v239 = 0;
  v238 = 0u;
  v242 = 0u;
  v241 = &unk_2290750;
  v243 = 0;
  v244 = 0;
  v245 = &unk_2290750;
  v246 = 0u;
  v248 = 0;
  v247 = 0;
  v250 = 0u;
  v249 = &unk_2290750;
  v251 = 0;
  v252 = 0;
  v253 = &unk_2290750;
  v254 = 0u;
  v256 = 0;
  v255 = 0;
  v260 = 0;
  v258 = 0u;
  v257 = &unk_2290750;
  v259 = 0;
  v261 = &unk_2290750;
  v264 = 0;
  v262 = 0u;
  v263 = 0;
  v265 = &unk_2290750;
  v268 = 0;
  v266 = 0u;
  v267 = 0;
  v269 = &unk_2290750;
  v272 = 0;
  v270 = 0u;
  v271 = 0;
  v273 = &unk_2290750;
  v276 = 0;
  v274 = 0u;
  v275 = 0;
  v277 = &unk_2290750;
  v280 = 0;
  v278 = 0u;
  v279 = 0;
  v281 = &unk_2290750;
  v284 = 0;
  v282 = 0u;
  v283 = 0;
  v285 = &unk_2290750;
  v288 = 0;
  v286 = 0u;
  v287 = 0;
  sub_101E350(v289, (v18 + 224));
  sub_1011FA4(__p, v17);
  sub_4392B0(v209, v17, v199);
  *&v210 = sub_F64C68(v15);
  v19 = sub_F63FD8(v15);
  v20 = *(&v220 + 1);
  if (*(&v220 + 1) >= v221)
  {
    v22 = sub_101EC2C(&v220, &v210, v19);
  }

  else
  {
    v21 = v210;
    **(&v220 + 1) = 0;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = -1;
    sub_1015104(v20, v21, v19);
    v22 = (v20 + 4);
  }

  *(&v220 + 1) = v22;
  v23 = v222;
  if (v222 >= *(&v222 + 1))
  {
    v25 = *(&v221 + 1);
    v26 = v222 - *(&v221 + 1);
    v27 = (v222 - *(&v221 + 1)) >> 3;
    v28 = v27 + 1;
    if ((v27 + 1) >> 61)
    {
      sub_1794();
    }

    v29 = *(&v222 + 1) - *(&v221 + 1);
    if ((*(&v222 + 1) - *(&v221 + 1)) >> 2 > v28)
    {
      v28 = v29 >> 2;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      if (!(v30 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v27) = 0;
    v24 = 8 * v27 + 8;
    memcpy(0, v25, v26);
    *(&v221 + 1) = 0;
    v222 = v24;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v222 = 0;
    v24 = v23 + 8;
  }

  *&v222 = v24;
  v31 = sub_F64C68(v15);
  v32 = v31 | ((HIDWORD(v31) & 0xFFFFFFF | (v31 >> 31) & 0x60000000 | (((v31 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
  v33 = *(&v223 + 1);
  if (*(&v223 + 1) >= v224)
  {
    v35 = v223;
    v36 = *(&v223 + 1) - v223;
    v37 = (*(&v223 + 1) - v223) >> 3;
    v38 = v37 + 1;
    if ((v37 + 1) >> 61)
    {
      sub_1794();
    }

    v39 = v224 - v223;
    if ((v224 - v223) >> 2 > v38)
    {
      v38 = v39 >> 2;
    }

    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      v40 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v40 = v38;
    }

    if (v40)
    {
      if (!(v40 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v37) = v32;
    v34 = 8 * v37 + 8;
    memcpy(0, v35, v36);
    *&v223 = 0;
    *(&v223 + 1) = v34;
    *&v224 = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  else
  {
    **(&v223 + 1) = v32;
    v34 = v33 + 8;
  }

  v194 = v10;
  v195 = v13;
  *(&v223 + 1) = v34;
  nullsub_1();
  v42 = *v41;
  v197 = *(v41 + 8);
  if (*v41 != v197)
  {
    v43 = 0;
    v44 = 0;
    while (1)
    {
      v205 = sub_1011FD4(__p, v42, v198, v207, v199, 0);
      v203 = sub_F6FD88(v42);
      if (v203)
      {
        break;
      }

LABEL_126:
      v101 = v205[4];
      v102 = v205[5];
      *&v210 = sub_F6F698(v42);
      v103 = sub_F69058(v42);
      v104 = *(&v220 + 1);
      if (*(&v220 + 1) >= v221)
      {
        v106 = sub_101EC2C(&v220, &v210, v103);
      }

      else
      {
        v105 = v210;
        **(&v220 + 1) = 0;
        v104[1] = 0;
        v104[2] = 0;
        v104[3] = -1;
        sub_1015104(v104, v105, v103);
        v106 = (v104 + 4);
      }

      v107 = (v101 + v44);
      *(&v220 + 1) = v106;
      v108 = (v102 + v43);
      v109 = v222;
      if (v222 >= *(&v222 + 1))
      {
        v110 = v108;
        v112 = *(&v221 + 1);
        v113 = v222 - *(&v221 + 1);
        v114 = (v222 - *(&v221 + 1)) >> 3;
        v115 = v114 + 1;
        if ((v114 + 1) >> 61)
        {
          sub_1794();
        }

        v116 = *(&v222 + 1) - *(&v221 + 1);
        if ((*(&v222 + 1) - *(&v221 + 1)) >> 2 > v115)
        {
          v115 = v116 >> 2;
        }

        if (v116 >= 0x7FFFFFFFFFFFFFF8)
        {
          v117 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v117 = v115;
        }

        if (v117)
        {
          if (!(v117 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v114) = v107 | (v110 << 32);
        v111 = 8 * v114 + 8;
        memcpy(0, v112, v113);
        *(&v221 + 1) = 0;
        v222 = v111;
        if (v112)
        {
          operator delete(v112);
        }
      }

      else
      {
        LODWORD(v110) = v108;
        *v222 = v107 | (v108 << 32);
        v111 = v109 + 8;
      }

      *&v222 = v111;
      v118 = sub_F6F698(v42);
      v119 = v107;
      v120 = v118 | ((HIDWORD(v118) & 0xFFFFFFF | (v118 >> 31) & 0x60000000 | (((v118 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
      v121 = *(&v223 + 1);
      if (*(&v223 + 1) < v224)
      {
        **(&v223 + 1) = v120;
        v45 = v121 + 8;
      }

      else
      {
        v122 = v223;
        v123 = *(&v223 + 1) - v223;
        v124 = (*(&v223 + 1) - v223) >> 3;
        v125 = v124 + 1;
        if ((v124 + 1) >> 61)
        {
          sub_1794();
        }

        v126 = v224 - v223;
        if ((v224 - v223) >> 2 > v125)
        {
          v125 = v126 >> 2;
        }

        if (v126 >= 0x7FFFFFFFFFFFFFF8)
        {
          v127 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v127 = v125;
        }

        if (v127)
        {
          if (!(v127 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v124) = v120;
        v45 = 8 * v124 + 8;
        memcpy(0, v122, v123);
        *&v223 = 0;
        *(&v223 + 1) = v45;
        *&v224 = 0;
        if (v122)
        {
          operator delete(v122);
        }
      }

      v43 = v110;
      *(&v223 + 1) = v45;
      v42 += 69;
      v44 = v119;
      if (v42 == v197)
      {
        goto LABEL_154;
      }
    }

    v46 = 0;
    v201 = v43;
    v202 = v44;
    while (1)
    {
      *&v210 = sub_F6F134(v42, v46);
      sub_101EDCC(v289, &v210);
      v47 = sub_F6FE3C(v42, v46);
      sub_4393F4(v209, v47, &v210);
      v48 = v210;
      if (v210)
      {
        *(&v210 + 1) = v210;
        operator delete(v210);
      }

      if (v48 == *(&v48 + 1))
      {
        break;
      }

      v49 = *(&v220 + 1);
      v50 = v220;
      if (*(&v220 + 1) != v220)
      {
        v51 = *(&v220 + 1);
        do
        {
          v53 = *(v51 - 32);
          v51 -= 32;
          v52 = v53;
          if (v53)
          {
            *(v49 - 24) = v52;
            operator delete(v52);
          }

          v49 = v51;
        }

        while (v51 != v50);
      }

      *(&v220 + 1) = v50;
      *&v222 = *(&v221 + 1);
      *(&v223 + 1) = v223;
LABEL_37:
      if (++v46 == v203)
      {
        goto LABEL_126;
      }
    }

    if (v46 && (*(sub_F6F53C(v42, v46 - 1) + 87) & 4) == 0)
    {
      LODWORD(v210) = 0;
      v211 = 0uLL;
      *(&v210 + 1) = 0;
      v212 = 0;
      v213 = 0x3FF0000000000000;
      v214 = 1;
      v215 = 0;
      v216 = 0;
      v217 = 0;
      v218 = -29536;
      LOWORD(v219[1]) = 0;
      BYTE2(v219[1]) = 0;
      v219[0] = 3;
      v208 = sub_F6F134(v42, v46);
      v54 = *(&v220 + 1);
      if (*(&v220 + 1) < v221)
      {
        **(&v220 + 1) = 0;
        v54[1] = 0;
        v54[2] = 0;
        v54[3] = -1;
        operator new();
      }

      *(&v220 + 1) = sub_1020178(&v220, &v208, &v210);
      v55 = (*(*(v205 + 4) + 16 * v46) + v202) | ((*(*(v205 + 4) + 16 * v46 + 4) + v43) << 32);
      v56 = v222;
      if (v222 >= *(&v222 + 1))
      {
        v58 = *(&v221 + 1);
        v59 = v222 - *(&v221 + 1);
        v60 = (v222 - *(&v221 + 1)) >> 3;
        v61 = v60 + 1;
        if ((v60 + 1) >> 61)
        {
          sub_1794();
        }

        v62 = *(&v222 + 1) - *(&v221 + 1);
        if ((*(&v222 + 1) - *(&v221 + 1)) >> 2 > v61)
        {
          v61 = v62 >> 2;
        }

        if (v62 >= 0x7FFFFFFFFFFFFFF8)
        {
          v63 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v63 = v61;
        }

        if (v63)
        {
          if (!(v63 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v60) = v55;
        v57 = 8 * v60 + 8;
        memcpy(0, v58, v59);
        *(&v221 + 1) = 0;
        v222 = v57;
        if (v58)
        {
          operator delete(v58);
        }
      }

      else
      {
        *v222 = v55;
        v57 = v56 + 8;
      }

      *&v222 = v57;
      v64 = sub_F6F134(v42, v46 - 1);
      v65 = v64 | ((HIDWORD(v64) & 0xFFFFFFF | (v64 >> 31) & 0x60000000 | (((v64 & 0x6000000000000000) == 0x4000000000000000) << 31)) << 32);
      v66 = *(&v223 + 1);
      if (*(&v223 + 1) >= v224)
      {
        v68 = v223;
        v69 = *(&v223 + 1) - v223;
        v70 = (*(&v223 + 1) - v223) >> 3;
        v71 = v70 + 1;
        if ((v70 + 1) >> 61)
        {
          sub_1794();
        }

        v72 = v224 - v223;
        if ((v224 - v223) >> 2 > v71)
        {
          v71 = v72 >> 2;
        }

        if (v72 >= 0x7FFFFFFFFFFFFFF8)
        {
          v73 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v73 = v71;
        }

        if (v73)
        {
          if (!(v73 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        *(8 * v70) = v65;
        v67 = 8 * v70 + 8;
        memcpy(0, v68, v69);
        *&v223 = 0;
        *(&v223 + 1) = v67;
        *&v224 = 0;
        if (v68)
        {
          operator delete(v68);
        }
      }

      else
      {
        **(&v223 + 1) = v65;
        v67 = v66 + 8;
      }

      v44 = v202;
      *(&v223 + 1) = v67;
      v43 = v201;
    }

    v74 = *v200;
    v75 = v200[1];
    while (1)
    {
      if (v74 == v75)
      {
        goto LABEL_37;
      }

      if (*v74 == sub_F6F134(v42, v46) && sub_F6D1F0(v42, v46) <= *(v74 + 2) && *(v74 + 2) <= sub_F6FEB8(v42, v46))
      {
        break;
      }

LABEL_80:
      v74 += 12;
    }

    *(&v210 + 1) = 0;
    v211 = 0uLL;
    v212 = 0;
    v213 = 0x3FF0000000000000;
    v214 = 1;
    v217 = 0;
    v215 = 0;
    v216 = 0;
    v218 = -29536;
    memset(v219, 0, 7);
    LODWORD(v210) = *(v74 + 2);
    v219[0] = 3;
    v77 = (*(v205 + 4) + 16 * v46);
    v78 = v210 / 1000000000.0;
    v79 = v78 * (v77[4] - *v77);
    if (v79 >= 0.0)
    {
      if (v79 >= 4.50359963e15)
      {
        goto LABEL_91;
      }

      v80 = (v79 + v79) + 1;
    }

    else
    {
      if (v79 <= -4.50359963e15)
      {
        goto LABEL_91;
      }

      v80 = (v79 + v79) - 1 + (((v79 + v79) - 1) >> 63);
    }

    v79 = (v80 >> 1);
LABEL_91:
    v81 = v78 * (v77[5] - v77[1]);
    if (v81 >= 0.0)
    {
      if (v81 < 4.50359963e15)
      {
        v82 = (v81 + v81) + 1;
        goto LABEL_96;
      }
    }

    else if (v81 > -4.50359963e15)
    {
      v82 = (v81 + v81) - 1 + (((v81 + v81) - 1) >> 63);
LABEL_96:
      v81 = (v82 >> 1);
    }

    v83 = *(&v220 + 1);
    if (*(&v220 + 1) < v221)
    {
      **(&v220 + 1) = 0;
      v83[1] = 0;
      v83[2] = 0;
      v83[3] = -1;
      operator new();
    }

    *(&v220 + 1) = sub_1020318(&v220, v74, &v210);
    v84 = (v44 + v79 + *(*(v205 + 4) + 16 * v46)) | ((v43 + v81 + *(*(v205 + 4) + 16 * v46 + 4)) << 32);
    v85 = v222;
    if (v222 >= *(&v222 + 1))
    {
      v87 = *(&v221 + 1);
      v88 = v222 - *(&v221 + 1);
      v89 = (v222 - *(&v221 + 1)) >> 3;
      v90 = v89 + 1;
      if ((v89 + 1) >> 61)
      {
        sub_1794();
      }

      v91 = *(&v222 + 1) - *(&v221 + 1);
      if ((*(&v222 + 1) - *(&v221 + 1)) >> 2 > v90)
      {
        v90 = v91 >> 2;
      }

      if (v91 >= 0x7FFFFFFFFFFFFFF8)
      {
        v92 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v92 = v90;
      }

      if (v92)
      {
        if (!(v92 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v89) = v84;
      v86 = 8 * v89 + 8;
      memcpy(0, v87, v88);
      *(&v221 + 1) = 0;
      v222 = v86;
      if (v87)
      {
        operator delete(v87);
      }

      v43 = v201;
      v44 = v202;
    }

    else
    {
      *v222 = v84;
      v86 = v85 + 8;
    }

    *&v222 = v86;
    v93 = *v74 | ((*(v74 + 1) & 0xFFFFFFF | (((*(v74 + 1) >> 28) & 3) << 29) | (((*(v74 + 1) & 0x60000000) == 0x40000000) << 31)) << 32);
    v94 = *(&v223 + 1);
    if (*(&v223 + 1) < v224)
    {
      **(&v223 + 1) = v93;
      v76 = v94 + 8;
    }

    else
    {
      v95 = v223;
      v96 = *(&v223 + 1) - v223;
      v97 = (*(&v223 + 1) - v223) >> 3;
      v98 = v97 + 1;
      if ((v97 + 1) >> 61)
      {
        sub_1794();
      }

      v99 = v224 - v223;
      if ((v224 - v223) >> 2 > v98)
      {
        v98 = v99 >> 2;
      }

      if (v99 >= 0x7FFFFFFFFFFFFFF8)
      {
        v100 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v100 = v98;
      }

      if (v100)
      {
        if (!(v100 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      *(8 * v97) = v93;
      v76 = 8 * v97 + 8;
      memcpy(0, v95, v96);
      *&v223 = 0;
      *(&v223 + 1) = v76;
      *&v224 = 0;
      if (v95)
      {
        operator delete(v95);
      }

      v43 = v201;
      v44 = v202;
    }

    *(&v223 + 1) = v76;
    goto LABEL_80;
  }

LABEL_154:
  v204 = *(&v220 + 1);
  v128 = v220;
  if (v220 != *(&v220 + 1))
  {
    v129 = v225;
    do
    {
      while (1)
      {
        v130 = *v128;
        v131 = v128[1];
        if (*v128 != v131)
        {
          v206 = v128;
          v132 = ((v129 - *(&v224 + 1)) >> 5);
          do
          {
            v134 = *v130;
            v135 = *(v18 + 1536) - 1;
            v136 = 0x2127599BF4325C37 * (((v134 >> 58) & 4 | (v134 >> 60) & 2 | ((*v130 & 0x6000000000000000) == 0x4000000000000000) | (v134 << 32) | (8 * (HIDWORD(*v130) & 0xFFFFFFF))) ^ (((v134 << 32) | (8 * (HIDWORD(*v130) & 0xFFFFFFF))) >> 23));
            v137 = *(v18 + 1552);
            v138 = *(v18 + 1544);
            v139 = *(v18 + 1548);
            v140 = (v136 ^ (v136 >> 47)) & v135;
            v142 = *(v137 + 8 * v140);
            v141 = *(v137 + 8 * v140 + 4);
            if (v138 == v142 && v139 == v141)
            {
              goto LABEL_185;
            }

            v144 = (v134 >> 31) & 0x60000000 | HIDWORD(v134) & 0xFFFFFFF | (((*v130 & 0x6000000000000000) == 0x4000000000000000) << 31);
            if (*(v18 + 1520))
            {
              v145 = 1;
              while (*(v18 + 1512) == v142 && *(v18 + 1516) == v141 || v142 != v134 || v141 != v144)
              {
                v140 = (v140 + v145) & v135;
                v142 = *(v137 + 8 * v140);
                v141 = *(v137 + 8 * v140 + 4);
                ++v145;
                if (v138 == v142 && v139 == v141)
                {
                  goto LABEL_185;
                }
              }
            }

            else
            {
              v147 = 1;
              while (v142 != v134 || v141 != v144)
              {
                v140 = (v140 + v147) & v135;
                v142 = *(v137 + 8 * v140);
                v141 = *(v137 + 8 * v140 + 4);
                ++v147;
                if (v138 == v142 && v139 == v141)
                {
                  goto LABEL_185;
                }
              }
            }

            if (v140 == -1)
            {
LABEL_185:
              sub_101EDCC(v289, v130);
              v149 = 0;
              v150 = *v130;
              v151 = *(v130 + 1);
              v152 = 0x2127599BF4325C37 * ((((v150 << 32) + (16 * v151)) | (v151 >> 29) & 2 | (v151 >> 31) | (v151 >> 27) & 4 | (v151 >> 25) & 8) ^ (((v150 << 32) + (16 * v151)) >> 23));
              v153 = (v152 ^ ~(v152 >> 47)) + ((v152 ^ (v152 >> 47)) << 21);
              v154 = 21 * ((265 * (v153 ^ (v153 >> 24))) ^ ((265 * (v153 ^ (v153 >> 24))) >> 14));
              v155 = 2147483649u * (v154 ^ (v154 >> 28));
              v156 = &v226[6 * (((((v154 ^ (v154 >> 28)) >> 8) ^ ((-2147483647 * (v154 ^ (v154 >> 28))) >> 16)) ^ ((-2147483647 * (v154 ^ (v154 >> 28))) >> 24)) & 0xF)];
              v157 = v155 >> 7;
              v158 = v156[3];
              while (1)
              {
                v159 = v157 & v158;
                v160 = *(*v156 + v159);
                v161 = ((v160 ^ (0x101010101010101 * (v155 & 0x7F))) - 0x101010101010101) & ~(v160 ^ (0x101010101010101 * (v155 & 0x7F))) & 0x8080808080808080;
                if (v161)
                {
                  break;
                }

LABEL_193:
                if ((v160 & (~v160 << 6) & 0x8080808080808080) != 0)
                {
                  v163 = sub_10204B8(v156, v155);
                  v168 = (v156[1] + 32 * v163);
                  *v168 = *v130;
                  v168[1] = 0;
                  v168[2] = 0;
                  v168[3] = 0;
                  v162 = v156[1];
                  goto LABEL_196;
                }

                v149 += 8;
                v157 = v149 + v159;
              }

              v162 = v156[1];
              while (1)
              {
                v163 = (v159 + (__clz(__rbit64(v161)) >> 3)) & v158;
                v164 = (v162 + 32 * v163);
                v166 = *v164;
                v165 = v164[1];
                if (v166 == v150 && v165 == v151)
                {
                  break;
                }

                v161 &= v161 - 1;
                if (!v161)
                {
                  goto LABEL_193;
                }
              }

LABEL_196:
              v169 = (v162 + 32 * v163);
              v171 = v169[2];
              v170 = v169[3];
              if (v171 < v170)
              {
                *v171 = v132;
                v133 = v171 + 8;
              }

              else
              {
                v172 = v169[1];
                v173 = v171 - v172;
                v174 = (v171 - v172) >> 3;
                v175 = v174 + 1;
                if ((v174 + 1) >> 61)
                {
                  sub_1794();
                }

                v176 = v170 - v172;
                if (v176 >> 2 > v175)
                {
                  v175 = v176 >> 2;
                }

                if (v176 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v177 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v177 = v175;
                }

                if (v177)
                {
                  if (!(v177 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v178 = (v171 - v172) >> 3;
                v179 = (8 * v174);
                v180 = (8 * v174 - 8 * v178);
                *v179 = v132;
                v133 = v179 + 1;
                memcpy(v180, v172, v173);
                v169[1] = v180;
                v169[2] = v133;
                v169[3] = 0;
                if (v172)
                {
                  operator delete(v172);
                }
              }

              v169[2] = v133;
            }

            v130 += 12;
          }

          while (v130 != v131);
          v129 = v225;
          v128 = v206;
        }

        if (v129 < *(&v225 + 1))
        {
          break;
        }

        v129 = sub_1020B2C(&v224 + 1, v128);
        *&v225 = v129;
        v128 += 4;
        if (v128 == v204)
        {
          goto LABEL_214;
        }
      }

      *v129 = 0;
      v129[1] = 0;
      v129[2] = 0;
      v181 = v128[1];
      if (v181 != *v128)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v181 - *v128) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      v129[3] = v128[3];
      v129 += 4;
      *&v225 = v129;
      v128 += 4;
    }

    while (v128 != v204);
  }

LABEL_214:
  sub_1045744(&v210, v195->n128_i64[1], 0);
  sub_1048278(&v210, *v196, &v224 + 1, v196[2], *v196[3], *(v196 + 32), v194, 0x7FFFFFFF, 0xFFFFFFFF, 0, v195[1].n128_u32[3]);
  *__p = sub_10499B8(&v210);
  *&__p[8] = v182;
  sub_32114(v195 + 2, __p);
  v195[3].n128_u32[1] = sub_1031BE8(&v210);
  if (sub_1049994(&v210))
  {
    v183 = v195[1].n128_u64[0];
    v184 = *(v196 + 9);
    v291 = 17;
    strcpy(__p, "rerouting_factors");
    v185 = sub_5F680(v183, __p);
    if (v291 < 0)
    {
      v186 = v185;
      operator delete(*__p);
      v185 = v186;
    }

    v187 = (v185[1] - *v185) >> 4;
    if (v187 >= v184)
    {
      v187 = v184;
    }

    if (*(sub_35225C(v185, v187 - 1) + 8) == 5)
    {
      operator new();
    }

    sub_5AF20();
  }

  sub_C6579C(&v210);
  sub_C65AF0(&v224 + 1);
  if (v223)
  {
    *(&v223 + 1) = v223;
    operator delete(v223);
  }

  if (*(&v221 + 1))
  {
    *&v222 = *(&v221 + 1);
    operator delete(*(&v221 + 1));
  }

  v188 = v220;
  if (v220)
  {
    v189 = *(&v220 + 1);
    v190 = v220;
    if (*(&v220 + 1) != v220)
    {
      v191 = *(&v220 + 1);
      do
      {
        v193 = *(v191 - 32);
        v191 -= 32;
        v192 = v193;
        if (v193)
        {
          *(v189 - 24) = v192;
          operator delete(v192);
        }

        v189 = v191;
      }

      while (v191 != v188);
      v190 = v220;
    }

    *(&v220 + 1) = v188;
    operator delete(v190);
  }
}