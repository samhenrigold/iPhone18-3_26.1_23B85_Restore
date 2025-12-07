void sub_27138B268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  sub_27112D66C(v23 + 16);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_27138B298(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 896))
  {
    if (*(a1 + 1104))
    {

      sub_27138975C(a3, a1, a2, 1);
    }

    else
    {
      *a3 = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 120) = 1;
    }

    return;
  }

  LOBYTE(v7) = 0;
  v15 = 0;
  sub_271389570(11, &v7, &v16);
  *a3 = v16;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v26 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_18;
  }

  *(a3 + 40) = 0;
  v4 = v19;
  if (v19 != 1)
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v6 = v22;
    *(v5 + 16) = v21;
    *v5 = v20;
    v20 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v23;
    *(a3 + 96) = v24;
    v21 = 0;
    v23 = 0uLL;
    v24 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v4)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_18;
  }

  *(a3 + 16) = __p;
  *(a3 + 32) = v18;
  v18 = 0;
  __p = 0uLL;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v5 = a3 + 48;
  *(a3 + 104) = 0;
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_9:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (v15 == 1)
  {
    if (v14 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      if (v11 < 0)
      {
        operator delete(v10);
      }
    }

    if (v9 == 1 && v8 < 0)
    {
      operator delete(v7);
    }
  }
}

void sub_27138B4B0(_BYTE *__p, void *a2)
{
  v9 = __p;
  v50 = *MEMORY[0x277D85DE8];
  v21 = 9;
  LOBYTE(v22) = 0;
  v32 = 0;
  v10 = a2 + 1;
  v11 = a2[1];
  v18 = *a2;
  v19 = v11;
  if (a2[2])
  {
    *(v11 + 16) = &v19;
    *a2 = v10;
    *v10 = 0;
    a2[2] = 0;
    if (__p[440] != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = &v19;
    if (__p[440] != 1)
    {
      goto LABEL_16;
    }
  }

  sub_27152ACFC((__p + 152), &v18, &v34);
  if ((v46 & 1) == 0)
  {
    sub_27138A894(&v21, &v34);
    if ((v46 & 1) == 0 && v45 == 1)
    {
      if (v44 == 1)
      {
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__pa);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v38);
        }
      }

      if (v37 == 1 && SHIBYTE(v36) < 0)
      {
        operator delete(v35[0]);
      }
    }
  }

LABEL_16:
  if (v9[144] == 1)
  {
    v33[0] = v9;
    v33[1] = &v18;
    v33[2] = &v21;
    v47[0] = &unk_2881168A8;
    v47[1] = v33;
    sub_27184A384(v47, &v34);
    if ((v46 & 1) == 0)
    {
      sub_27138A894(&v21, &v34);
      if ((v46 & 1) == 0 && v45 == 1)
      {
        if (v44 == 1)
        {
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__pa);
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(v38);
          }
        }

        if (v37 == 1 && SHIBYTE(v36) < 0)
        {
          operator delete(v35[0]);
        }
      }
    }
  }

  if (v9[112] != 1)
  {
    goto LABEL_59;
  }

  v12 = *(v9 + 13);
  if (!v12)
  {
LABEL_32:
    v49 = v12;
    v13 = v32;
    if (v32 == 1)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (v12 != v9 + 80)
  {
    v12 = (*(*v12 + 16))(v12);
    goto LABEL_32;
  }

  v49 = v48;
  (*(*v12 + 24))(v12, v48);
  v12 = v49;
  v13 = v32;
  if (v32 == 1)
  {
LABEL_33:
    if (!v12)
    {
      sub_27112AFFC();
    }

    (*(*v12 + 48))(v12, &v22);
    v34 = v22;
    LOBYTE(v35[0]) = 0;
    v45 = 0;
    v4 = v31;
    if (v31 != 1)
    {
      v9 = 0;
      goto LABEL_50;
    }

    sub_27112F6CC(v35, &v23);
    v45 = 1;
    v14 = v37;
    if (v37 == 1)
    {
      v9 = v35[0];
      v6 = HIBYTE(v36);
      v35[0] = 0;
      v35[1] = 0;
      v36 = 0;
      v5 = v44;
      if (v44 != 1)
      {
LABEL_37:
        v2 = 0;
LABEL_47:
        if (v37 && SHIBYTE(v36) < 0)
        {
          operator delete(v35[0]);
          v14 = 1;
        }

LABEL_50:
        v15 = v8 < 0;
        v16 = v7 < 0;
        v17 = v14 & (v6 < 0);
        v12 = v49;
        if (v49 == v48)
        {
LABEL_51:
          (*(*v12 + 32))(v12);
          if ((v4 & v13) != 1)
          {
            goto LABEL_59;
          }

          goto LABEL_52;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v9 = 0;
      v5 = v44;
      if (v44 != 1)
      {
        goto LABEL_37;
      }
    }

    v2 = v38;
    v7 = HIBYTE(v40);
    v38 = 0;
    v39 = 0;
    v3 = __pa;
    v8 = HIBYTE(v43);
    v40 = 0;
    __pa = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_47;
  }

LABEL_40:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v12 == v48)
  {
    goto LABEL_51;
  }

LABEL_41:
  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  if ((v4 & v13) == 1)
  {
LABEL_52:
    if (v5)
    {
      if (v15)
      {
        operator delete(v3);
      }

      if (v16)
      {
        operator delete(v2);
      }
    }

    if (v17)
    {
      operator delete(v9);
    }
  }

LABEL_59:
  sub_271167834(&v18, v19);
  if (v32 == 1 && v31 == 1)
  {
    if (v30 == 1)
    {
      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }
  }
}

void sub_27138B990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, char *);
  v9 = va_arg(va1, void);
  sub_27112D66C(v3 + 16);
  sub_2711D6748(v4 - 120);
  sub_271167834(va, v8);
  sub_27138AE34(va1);
  _Unwind_Resume(a1);
}

void sub_27138B9F4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
LABEL_405:
    if (*(v3 + 72) != 1 || v201 == v202 || (*&v204 = v3, *(&v204 + 1) = &v201, v169.__r_.__value_.__r.__words[0] = &unk_288116880, v169.__r_.__value_.__l.__size_ = &v204, sub_27184A384(&v169, &__p), (v189 & 1) != 0))
    {
      *(a3 + 120) = 1;
      goto LABEL_409;
    }

    sub_271847E00(&__p, &v169);
    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_271127178(&v170, v169.__r_.__value_.__l.__data_, v169.__r_.__value_.__l.__size_);
    }

    else
    {
      v170 = v169;
    }

    v171 = 1;
    LOBYTE(v172) = 0;
    v176 = 0;
    v177 = 1;
    sub_271389570(8, &v170, &v204);
    *a3 = v204;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v214 == 1)
    {
      *(a3 + 40) = 0;
      v160 = v207;
      if (v207 == 1)
      {
        *(a3 + 16) = v205;
        *(a3 + 32) = v206;
        v206 = 0;
        v205 = 0uLL;
        *(a3 + 40) = 1;
        *(a3 + 48) = 0;
        v161 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v213 & 1) == 0)
        {
          goto LABEL_444;
        }
      }

      else
      {
        *(a3 + 48) = 0;
        v161 = a3 + 48;
        *(a3 + 104) = 0;
        if ((v213 & 1) == 0)
        {
LABEL_444:
          *(a3 + 112) = 1;
          *(a3 + 120) = 0;
          if (!v160)
          {
            goto LABEL_451;
          }

LABEL_449:
          if (SHIBYTE(v206) < 0)
          {
            operator delete(v205);
          }

          goto LABEL_451;
        }
      }

      v162 = v210;
      *(v161 + 16) = v209;
      *v161 = v208;
      v208 = 0uLL;
      *(a3 + 72) = v162;
      *(a3 + 80) = v211;
      *(a3 + 96) = v212;
      v209 = 0;
      v211 = 0uLL;
      v212 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (v160)
      {
        goto LABEL_449;
      }
    }

    else
    {
      *(a3 + 120) = 0;
    }

LABEL_451:
    if (v177 == 1)
    {
      if (v176 == 1)
      {
        if (v175 < 0)
        {
          operator delete(v174);
        }

        if (v173 < 0)
        {
          operator delete(v172);
        }
      }

      if (v171 == 1 && SHIBYTE(v170.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v170.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v169.__r_.__value_.__l.__data_);
    }

    if ((v189 & 1) == 0 && v188 == 1)
    {
      if (v187 == 1)
      {
        if (SHIBYTE(v186) < 0)
        {
          operator delete(v185);
        }

        if (SHIBYTE(v183) < 0)
        {
          operator delete(v182);
        }
      }

      if (v181 == 1 && SHIBYTE(v180) < 0)
      {
        operator delete(v179);
      }
    }

    goto LABEL_409;
  }

  v165 = (a1 + 728);
  v166 = a2[1];
  while (1)
  {
    sub_2714FCC00(v6);
    v8 = BYTE7(v179);
    if (SBYTE7(v179) < 0)
    {
      v8 = *(&__p + 1);
    }

    if (v8 == 8)
    {
      p_p = __p;
      if ((SBYTE7(v179) & 0x80u) == 0)
      {
        p_p = &__p;
      }

      v10 = *"cv3d.net" == *p_p;
      if ((SBYTE7(v179) & 0x80000000) == 0)
      {
LABEL_12:
        if (!v10)
        {
          goto LABEL_31;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
      if ((SBYTE7(v179) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p);
    if (!v10)
    {
LABEL_31:
      v19 = v202;
      if (v202 < v203)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

LABEL_13:
    sub_2714FCC00(v6);
    *&__p = 0x74656E2E64337663;
    v11 = BYTE7(v205);
    if (SBYTE7(v205) < 0)
    {
      v11 = *(&v204 + 1);
    }

    if (v11 == 8)
    {
      v12 = v204;
      if ((SBYTE7(v205) & 0x80u) == 0)
      {
        v12 = &v204;
      }

      if (*v12 == __p)
      {
        v13 = DWORD2(v205) == 2;
        if ((SBYTE7(v205) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_44:
        operator delete(v204);
        if (v13)
        {
          goto LABEL_21;
        }

LABEL_45:
        sub_2714FCC00(v6);
        *&__p = 0x74656E2E64337663;
        v23 = BYTE7(v205);
        if (SBYTE7(v205) < 0)
        {
          v23 = *(&v204 + 1);
        }

        if (v23 != 8)
        {
          goto LABEL_51;
        }

        v24 = v204;
        if ((SBYTE7(v205) & 0x80u) == 0)
        {
          v24 = &v204;
        }

        if (*v24 == __p)
        {
          v25 = DWORD2(v205) == 5;
          if ((SBYTE7(v205) & 0x80000000) == 0)
          {
LABEL_52:
            if (v25)
            {
              goto LABEL_53;
            }

            goto LABEL_71;
          }
        }

        else
        {
LABEL_51:
          v25 = 0;
          if ((SBYTE7(v205) & 0x80000000) == 0)
          {
            goto LABEL_52;
          }
        }

        operator delete(v204);
        if (!v25)
        {
LABEL_71:
          sub_2714FCC00(v6);
          *&__p = 0x74656E2E64337663;
          v30 = BYTE7(v205);
          if (SBYTE7(v205) < 0)
          {
            v30 = *(&v204 + 1);
          }

          if (v30 != 8)
          {
            goto LABEL_77;
          }

          v31 = v204;
          if ((SBYTE7(v205) & 0x80u) == 0)
          {
            v31 = &v204;
          }

          if (*v31 == __p)
          {
            v32 = DWORD2(v205) == 3;
            if ((SBYTE7(v205) & 0x80000000) == 0)
            {
LABEL_78:
              if (v32)
              {
                goto LABEL_79;
              }

LABEL_104:
              sub_2714FCC00(v6);
              *&__p = 0x74656E2E64337663;
              v45 = BYTE7(v205);
              if (SBYTE7(v205) < 0)
              {
                v45 = *(&v204 + 1);
              }

              if (v45 != 8)
              {
                goto LABEL_110;
              }

              v46 = v204;
              if ((SBYTE7(v205) & 0x80u) == 0)
              {
                v46 = &v204;
              }

              if (*v46 == __p)
              {
                v47 = DWORD2(v205) == 4;
                if ((SBYTE7(v205) & 0x80000000) == 0)
                {
LABEL_111:
                  if (v47)
                  {
                    goto LABEL_112;
                  }

LABEL_164:
                  v19 = v202;
                  if (v202 < v203)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_3;
                }
              }

              else
              {
LABEL_110:
                v47 = 0;
                if ((SBYTE7(v205) & 0x80000000) == 0)
                {
                  goto LABEL_111;
                }
              }

              operator delete(v204);
              if (!v47)
              {
                goto LABEL_164;
              }

LABEL_112:
              v48 = *(v6 + 16);
              if (v48)
              {
                atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v48->__on_zero_shared)(v48);
                  std::__shared_weak_count::__release_weak(v48);
                }
              }

              v50 = *(v6 + 8);
              v49 = *(v6 + 16);
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v190 = v50;
              v191 = v49;
              if (*(v50 + 64) == 1)
              {
                v51 = *(v3 + 1168);
                if (v51)
                {
                  v52 = *(v51 + 71);
                  if (v52 >= 0)
                  {
                    v53 = *(v51 + 71);
                  }

                  else
                  {
                    v53 = *(v51 + 56);
                  }

                  v54 = *(v50 + 63);
                  v55 = v54;
                  if ((v54 & 0x80u) != 0)
                  {
                    v54 = *(v50 + 48);
                  }

                  if (v53 != v54 || ((v58 = *(v51 + 48), v56 = (v51 + 48), v57 = v58, v52 >= 0) ? (v59 = v56) : (v59 = v57), v55 >= 0 ? (v60 = (v50 + 40)) : (v60 = *(v50 + 40)), memcmp(v59, v60, v53)))
                  {
                    sub_2711CC04C(&v204, "Received a different target destination context during 'update enabled loggers' command. Retargeting of visualized textual log messages is not yet implemented. Command ignored.");
                    LOBYTE(v212) = 1;
                    sub_2711CBE94(&__p, 0x16u, &v204);
                    if (*(v3 + 112) == 1)
                    {
                      v61 = *(v3 + 104);
                      if (!v61)
                      {
                        sub_27112AFFC();
                      }

                      (*(*v61 + 48))(v61, &__p);
                    }

                    if (v188 == 1)
                    {
                      if (v187 == 1)
                      {
                        if (SHIBYTE(v186) < 0)
                        {
                          operator delete(v185);
                        }

                        if (SHIBYTE(v183) < 0)
                        {
                          operator delete(v182);
                        }
                      }

                      if (v181 == 1 && SHIBYTE(v180) < 0)
                      {
                        operator delete(v179);
                      }
                    }

                    if (v212 == 1)
                    {
                      if (BYTE8(v211) == 1)
                      {
                        if (SBYTE7(v211) < 0)
                        {
                          operator delete(v209);
                        }

                        if (SBYTE7(v208) < 0)
                        {
                          operator delete(v206);
                        }
                      }

                      if (BYTE8(v205) == 1 && SBYTE7(v205) < 0)
                      {
                        operator delete(v204);
                      }
                    }
                  }

                  goto LABEL_198;
                }

                v62 = *(v3 + 1120);
                v63 = v62[4];
                if (v63)
                {
                  std::mutex::lock(v62[4]);
                  __p = 0uLL;
                  v64 = v62[1];
                  if (!v64 || (*(&__p + 1) = std::__shared_weak_count::lock(v64)) == 0)
                  {
                    std::mutex::unlock(v63);
                    goto LABEL_181;
                  }

                  *&__p = *v62;
                  v65 = __p;
                  std::mutex::unlock(v63);
                  if (!v65)
                  {
LABEL_181:
                    v70 = *(v3 + 32);
                    if (v70)
                    {
                      atomic_fetch_add_explicit(&v70->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v71 = std::__shared_weak_count::lock(v70);
                      v72 = v71;
                      if (v71)
                      {
                        atomic_fetch_add_explicit(&v71->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                        std::__shared_weak_count::__release_weak(v70);
                        if (!atomic_fetch_add(v72 + 1, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (*(*v72 + 16))(v72);
                          v69 = v72;
LABEL_185:
                          std::__shared_weak_count::__release_weak(v69);
                        }
                      }

                      else
                      {
                        std::__shared_weak_count::__release_weak(v70);
                      }
                    }

                    goto LABEL_188;
                  }
                }

                else
                {
                  __p = 0uLL;
                  v66 = v62[1];
                  if (!v66)
                  {
                    goto LABEL_181;
                  }

                  *(&__p + 1) = std::__shared_weak_count::lock(v66);
                  if (!*(&__p + 1))
                  {
                    goto LABEL_181;
                  }

                  v65 = *v62;
                  *&__p = v65;
                  if (!v65)
                  {
                    goto LABEL_181;
                  }
                }

                (*(*v65 + 112))(&v204, v65);
                v67 = *(&v204 + 1);
                v204 = 0uLL;
                if (v67)
                {
                  atomic_fetch_add_explicit(&v67->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v67->__on_zero_shared)(v67);
                    std::__shared_weak_count::__release_weak(v67);
                  }
                }

                v68 = *(&v204 + 1);
                if (*(&v204 + 1) && !atomic_fetch_add((*(&v204 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v68->__on_zero_shared)(v68);
                  v69 = v68;
                  goto LABEL_185;
                }

LABEL_188:
                v73 = *(&__p + 1);
                if (*(&__p + 1) && !atomic_fetch_add((*(&__p + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v73->__on_zero_shared)(v73);
                  std::__shared_weak_count::__release_weak(v73);
                }

                v74 = *(v3 + 1120);
                v75 = *(v74 + 32);
                if (v75)
                {
                  std::mutex::lock(*(v74 + 32));
                  v76 = *(v74 + 48);
                  v215 = *(v74 + 40);
                  v216 = v76;
                  if (v76)
                  {
                    atomic_fetch_add_explicit((v76 + 8), 1uLL, memory_order_relaxed);
                  }

                  std::mutex::unlock(v75);
                }

                else
                {
                  v77 = *(v74 + 48);
                  v215 = *(v74 + 40);
                  v216 = v77;
                  if (v77)
                  {
                    atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
                  }
                }

                operator new();
              }

LABEL_198:
              v78 = v3;
              v79 = *(v3 + 1168);
              v80 = *(v78 + 1176);
              v217 = v79;
              v218 = v80;
              if (v80)
              {
                atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v81 = *(v50 + 16);
              v167 = *(v50 + 24);
              v164 = v80;
              if (v81 != v167)
              {
                v163 = a3;
                while (1)
                {
                  if ((*(a1 + 1160) & 1) == 0)
                  {
                    sub_2713782EC(&__p);
                    v82 = __p;
                    if (*(a1 + 1160) == 1)
                    {
                      v83 = *(&__p + 1);
                      __p = 0uLL;
                      *(a1 + 1144) = v82;
                      v84 = *(a1 + 1152);
                      *(a1 + 1152) = v83;
                      if (v84 && !atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v84->__on_zero_shared)(v84);
                        std::__shared_weak_count::__release_weak(v84);
                      }
                    }

                    else
                    {
                      *(a1 + 1144) = __p;
                      __p = 0uLL;
                      *(a1 + 1160) = 1;
                    }

                    sub_27137803C(&__p);
                  }

                  v85 = sub_27137B15C();
                  v86 = *(v85 + 31);
                  if (v86 >= 0)
                  {
                    v87 = *(v85 + 31);
                  }

                  else
                  {
                    v87 = *(v85 + 16);
                  }

                  v88 = *(v81 + 23);
                  v89 = v88;
                  if ((v88 & 0x80u) != 0)
                  {
                    v88 = *(v81 + 8);
                  }

                  if (v87 != v88)
                  {
                    goto LABEL_223;
                  }

                  v92 = *(v85 + 8);
                  v90 = (v85 + 8);
                  v91 = v92;
                  if (v86 < 0)
                  {
                    v90 = v91;
                  }

                  v93 = v89 >= 0 ? v81 : *v81;
                  if (!memcmp(v90, v93, v87))
                  {
                    v103 = 1;
                  }

                  else
                  {
LABEL_223:
                    v94 = sub_27137B258();
                    v95 = *(v94 + 31);
                    if (v95 >= 0)
                    {
                      v96 = *(v94 + 31);
                    }

                    else
                    {
                      v96 = *(v94 + 16);
                    }

                    v97 = *(v81 + 23);
                    v98 = v97;
                    if ((v97 & 0x80u) != 0)
                    {
                      v97 = *(v81 + 8);
                    }

                    if (v96 == v97)
                    {
                      v101 = *(v94 + 8);
                      v99 = (v94 + 8);
                      v100 = v101;
                      if (v95 < 0)
                      {
                        v99 = v100;
                      }

                      if (v98 >= 0)
                      {
                        v102 = v81;
                      }

                      else
                      {
                        v102 = *v81;
                      }

                      v103 = memcmp(v99, v102, v96) == 0;
                    }

                    else
                    {
                      v103 = 0;
                    }
                  }

                  v104 = sub_27137B15C();
                  v105 = (v104 + 8);
                  v106 = *(v104 + 31);
                  v107 = *(v104 + 16);
                  if ((v106 & 0x80u) == 0)
                  {
                    v108 = *(v104 + 31);
                  }

                  else
                  {
                    v108 = *(v104 + 16);
                  }

                  v109 = *(v81 + 23);
                  v110 = *v81;
                  if (v109 >= 0)
                  {
                    v111 = *(v81 + 23);
                  }

                  else
                  {
                    v111 = *(v81 + 8);
                  }

                  if (v108 == v111)
                  {
                    if ((v106 & 0x80u) == 0)
                    {
                      v112 = (v104 + 8);
                    }

                    else
                    {
                      v112 = *v105;
                    }

                    if (v109 >= 0)
                    {
                      v113 = v81;
                    }

                    else
                    {
                      v113 = *v81;
                    }

                    if (!memcmp(v112, v113, v108))
                    {
                      goto LABEL_314;
                    }

                    if ((v106 & 0x80) == 0)
                    {
LABEL_252:
                      v114 = v106;
                      if (v111 >= v106)
                      {
                        v115 = v106;
                      }

                      else
                      {
                        v115 = v111;
                      }

                      if (v111 < v115)
                      {
                        v115 = v111;
                      }

                      if (v115 != v106)
                      {
                        goto LABEL_270;
                      }

                      goto LABEL_269;
                    }
                  }

                  else
                  {
                    if (v109 >= 0)
                    {
                      v113 = v81;
                    }

                    else
                    {
                      v113 = *v81;
                    }

                    if ((v106 & 0x80) == 0)
                    {
                      goto LABEL_252;
                    }
                  }

                  v105 = *v105;
                  v114 = v107;
                  if (v111 >= v107)
                  {
                    v116 = v107;
                  }

                  else
                  {
                    v116 = v111;
                  }

                  if (v111 < v116)
                  {
                    v116 = v111;
                  }

                  if (v116 != v107)
                  {
                    goto LABEL_270;
                  }

LABEL_269:
                  if (memcmp(v113, v105, v114))
                  {
                    goto LABEL_270;
                  }

                  if ((v106 & 0x80) != 0)
                  {
                    if (v111 <= v107)
                    {
                      goto LABEL_270;
                    }
                  }

                  else
                  {
                    v107 = v106;
                    if (v111 <= v106)
                    {
                      goto LABEL_270;
                    }
                  }

                  if (v109 >= 0)
                  {
                    v130 = v81;
                  }

                  else
                  {
                    v130 = v110;
                  }

                  if (*(v130 + v107) != 46)
                  {
LABEL_270:
                    v117 = sub_27137B258();
                    v118 = (v117 + 8);
                    v119 = *(v117 + 31);
                    v120 = *(v117 + 16);
                    if ((v119 & 0x80u) == 0)
                    {
                      v121 = *(v117 + 31);
                    }

                    else
                    {
                      v121 = *(v117 + 16);
                    }

                    v122 = *(v81 + 23);
                    v123 = *v81;
                    if (v122 >= 0)
                    {
                      v124 = *(v81 + 23);
                    }

                    else
                    {
                      v124 = *(v81 + 8);
                    }

                    if (v121 == v124)
                    {
                      if ((v119 & 0x80u) == 0)
                      {
                        v125 = (v117 + 8);
                      }

                      else
                      {
                        v125 = *v118;
                      }

                      if (v122 >= 0)
                      {
                        v126 = v81;
                      }

                      else
                      {
                        v126 = *v81;
                      }

                      if (!memcmp(v125, v126, v121))
                      {
                        goto LABEL_327;
                      }

                      if ((v119 & 0x80) == 0)
                      {
LABEL_285:
                        v127 = v119;
                        if (v124 >= v119)
                        {
                          v128 = v119;
                        }

                        else
                        {
                          v128 = v124;
                        }

                        if (v124 < v128)
                        {
                          v128 = v124;
                        }

                        if (v128 != v119)
                        {
                          goto LABEL_203;
                        }

LABEL_302:
                        if (memcmp(v126, v118, v127))
                        {
                          goto LABEL_203;
                        }

                        if ((v119 & 0x80) != 0)
                        {
                          if (v124 <= v120)
                          {
                            goto LABEL_203;
                          }
                        }

                        else
                        {
                          v120 = v119;
                          if (v124 <= v119)
                          {
                            goto LABEL_203;
                          }
                        }

                        if (v122 >= 0)
                        {
                          v138 = v81;
                        }

                        else
                        {
                          v138 = v123;
                        }

                        if (*(v138 + v120) != 46)
                        {
                          goto LABEL_203;
                        }

LABEL_327:
                        v131 = 1;
                        v132 = *(v81 + 24);
                        if (v103)
                        {
LABEL_315:
                          if (v132 <= 1)
                          {
                            v133 = *(a1 + 1144);
                            if (v131)
                            {
                              sub_2713799AC(v133);
                            }

                            else
                            {
                              sub_271379D60(v133);
                            }

                            goto LABEL_203;
                          }

                          v134 = v132 - 2;
                          if (v134 >= 6)
                          {
                            goto LABEL_472;
                          }

                          v135 = v134 + 0x100000001;
                          v136 = *(a1 + 1144);
                          v137 = *v136;
                          if (!v131)
                          {
                            goto LABEL_320;
                          }

LABEL_344:
                          if (*(v137 + 28) != 2)
                          {
                            sub_2713796C4(v136, 6);
                            v136 = *(a1 + 1144);
                          }

                          if (sub_271379F64(v136, v81, v135))
                          {
                            goto LABEL_203;
                          }

                          sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/Client.cpp", 703, "ret == elog::APILogging::Available()", 0x24uLL, "", 0, sub_271852CA8);
                          if (byte_28087C430 == 1)
                          {
                            if (byte_28087C438 != 1 || (v140 = qword_28087C408, v141 = qword_28087C410, qword_28087C408 == qword_28087C410))
                            {
LABEL_354:
                              qword_28087C420(*algn_28087C428, "ret == elog::APILogging::Available()", 36, "", 0);
                              goto LABEL_203;
                            }
                          }

                          else
                          {
                            v140 = qword_28087C408;
                            v141 = qword_28087C410;
                            if (qword_28087C408 == qword_28087C410)
                            {
                              goto LABEL_473;
                            }
                          }

                          do
                          {
                            (*v140)(*(v140 + 8), "ret == elog::APILogging::Available()", 36, "", 0);
                            v140 += 16;
                          }

                          while (v140 != v141);
                          if ((byte_28087C430 & 1) == 0)
                          {
                            goto LABEL_473;
                          }

                          goto LABEL_354;
                        }

                        goto LABEL_328;
                      }
                    }

                    else
                    {
                      if (v122 >= 0)
                      {
                        v126 = v81;
                      }

                      else
                      {
                        v126 = *v81;
                      }

                      if ((v119 & 0x80) == 0)
                      {
                        goto LABEL_285;
                      }
                    }

                    v118 = *v118;
                    v127 = v120;
                    if (v124 >= v120)
                    {
                      v129 = v120;
                    }

                    else
                    {
                      v129 = v124;
                    }

                    if (v124 < v129)
                    {
                      v129 = v124;
                    }

                    if (v129 != v120)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_302;
                  }

LABEL_314:
                  v131 = 0;
                  v132 = *(v81 + 24);
                  if (v103)
                  {
                    goto LABEL_315;
                  }

LABEL_328:
                  if (v132 > 3)
                  {
                    if (v132 > 5)
                    {
                      if (v132 == 6)
                      {
                        v135 = 0x100000005;
                        v136 = *(a1 + 1144);
                        v137 = *v136;
                        if (!v131)
                        {
                          goto LABEL_320;
                        }
                      }

                      else
                      {
                        v135 = 0x100000006;
                        if (v132 != 7)
                        {
LABEL_472:
                          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Visualization/src/Client.cpp", 665, "", 0, "invalid argument", 0x10uLL, sub_271852CA8);
LABEL_473:
                          abort();
                        }

                        v136 = *(a1 + 1144);
                        v137 = *v136;
                        if (!v131)
                        {
LABEL_320:
                          if (*(v137 + 29) != 2)
                          {
                            sub_271379AC4(v136);
                          }

                          goto LABEL_203;
                        }
                      }
                    }

                    else if (v132 == 4)
                    {
                      v135 = 0x100000003;
                      v136 = *(a1 + 1144);
                      v137 = *v136;
                      if (!v131)
                      {
                        goto LABEL_320;
                      }
                    }

                    else
                    {
                      v135 = 0x100000004;
                      v136 = *(a1 + 1144);
                      v137 = *v136;
                      if (!v131)
                      {
                        goto LABEL_320;
                      }
                    }

                    goto LABEL_344;
                  }

                  if (v132 > 1)
                  {
                    if (v132 == 2)
                    {
                      v135 = 0x100000001;
                      v136 = *(a1 + 1144);
                      v137 = *v136;
                      if (!v131)
                      {
                        goto LABEL_320;
                      }
                    }

                    else
                    {
                      v135 = 0x100000002;
                      v136 = *(a1 + 1144);
                      v137 = *v136;
                      if (!v131)
                      {
                        goto LABEL_320;
                      }
                    }

                    goto LABEL_344;
                  }

                  if (v132)
                  {
                    if (v132 != 1)
                    {
                      goto LABEL_472;
                    }

                    if (!v131)
                    {
                      goto LABEL_203;
                    }

                    v139 = 0;
LABEL_356:
                    sub_271379F64(*(a1 + 1144), v81, v139);
                    goto LABEL_203;
                  }

                  v139 = 0x100000006;
                  if (v131)
                  {
                    goto LABEL_356;
                  }

LABEL_203:
                  v81 += 32;
                  if (v81 == v167)
                  {
                    v79 = v217;
                    a3 = v163;
                    v5 = v166;
                    break;
                  }
                }
              }

              if (*(a1 + 1160) != 1 || !v79)
              {
LABEL_399:
                if (v164 && !atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v164->__on_zero_shared)(v164);
                  std::__shared_weak_count::__release_weak(v164);
                }

                v152 = v191;
                v3 = a1;
                if (v191 && !atomic_fetch_add(&v191->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v152->__on_zero_shared)(v152);
                  std::__shared_weak_count::__release_weak(v152);
                }

                goto LABEL_5;
              }

              v142 = *(a1 + 1144);
              if (*(*v142 + 28) == 2)
              {
                sub_27137A278(v142, &__p);
                v143 = __p;
                if (__p == *(&__p + 1))
                {
                  if (__p)
                  {
                    *(&__p + 1) = __p;
                    operator delete(__p);
                  }
                }

                else
                {
                  v144 = *(&__p + 1);
                  v145 = __p;
                  v146 = __p;
                  while (*v146 != v79)
                  {
                    v146 += 2;
                    v145 += 16;
                    if (v146 == *(&__p + 1))
                    {
                      v145 = *(&__p + 1);
                      break;
                    }
                  }

                  if (__p)
                  {
                    do
                    {
                      v148 = *(v144 - 8);
                      if (v148 && !atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v148->__on_zero_shared)(v148);
                        std::__shared_weak_count::__release_weak(v148);
                      }

                      v144 -= 16;
                    }

                    while (v144 != v143);
                    *(&__p + 1) = v143;
                    operator delete(__p);
                    v147 = v145 == *(&v143 + 1);
                    v5 = v166;
                    if (!v147)
                    {
                      goto LABEL_393;
                    }

                    v79 = v217;
                  }

                  else
                  {
                    v147 = v145 == *(&__p + 1);
                    v5 = v166;
                    if (!v147)
                    {
                      goto LABEL_393;
                    }
                  }
                }

                v149 = v218;
                v169.__r_.__value_.__r.__words[0] = v79;
                v169.__r_.__value_.__l.__size_ = v218;
                if (v218)
                {
                  atomic_fetch_add_explicit((v218 + 8), 1uLL, memory_order_relaxed);
                  v150 = *(a1 + 1144);
                  *(&__p + 1) = v149;
                  atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                else
                {
                  v150 = *(a1 + 1144);
                  *(&__p + 1) = 0;
                }

                *&__p = v79;
                sub_27137A184(v150, &__p);
                if (v149 && !atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v149->__on_zero_shared)(v149);
                  std::__shared_weak_count::__release_weak(v149);
                }

                if (v169.__r_.__value_.__l.__size_ && !atomic_fetch_add((v169.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (*(*v169.__r_.__value_.__l.__size_ + 16))(v169.__r_.__value_.__l.__size_);
                  std::__shared_weak_count::__release_weak(v169.__r_.__value_.__l.__size_);
                }
              }

LABEL_393:
              if (*(**(a1 + 1144) + 116) == 2)
              {
                v151 = v218;
                if (v218)
                {
                  atomic_fetch_add_explicit((v218 + 8), 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v151->__on_zero_shared)(v151);
                    std::__shared_weak_count::__release_weak(v151);
                  }

                  if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v151->__on_zero_shared)(v151);
                    std::__shared_weak_count::__release_weak(v151);
                  }
                }
              }

              goto LABEL_399;
            }
          }

          else
          {
LABEL_77:
            v32 = 0;
            if ((SBYTE7(v205) & 0x80000000) == 0)
            {
              goto LABEL_78;
            }
          }

          operator delete(v204);
          if (!v32)
          {
            goto LABEL_104;
          }

LABEL_79:
          v33 = *(v6 + 16);
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v33->__on_zero_shared)(v33);
              std::__shared_weak_count::__release_weak(v33);
            }
          }

          v34 = *(v6 + 8);
          v35 = *(v6 + 16);
          if (v35)
          {
            atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
          }

          v169.__r_.__value_.__r.__words[0] = v34;
          v169.__r_.__value_.__l.__size_ = v35;
          if (*(v3 + 1112))
          {
            v36 = (*(*v3 + 24))(v3);
            sub_2714C43EC(v36);
          }

          v39 = *(v3 + 1120);
          v40 = *(v39 + 32);
          if (v40)
          {
            std::mutex::lock(*(v39 + 32));
            v41 = *(v39 + 40);
            v42 = *(v39 + 48);
            *&__p = v41;
            *(&__p + 1) = v42;
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            std::mutex::unlock(v40);
          }

          else
          {
            v41 = *(v39 + 40);
            v42 = *(v39 + 48);
            *&__p = v41;
            *(&__p + 1) = v42;
            if (v42)
            {
              atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          v5 = v166;
          sub_271501F48(v41, (v34 + 16));
          if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v42->__on_zero_shared)(v42);
            std::__shared_weak_count::__release_weak(v42);
          }

          size = v169.__r_.__value_.__l.__size_;
          if (!v169.__r_.__value_.__l.__size_)
          {
            goto LABEL_5;
          }

LABEL_159:
          if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          goto LABEL_5;
        }

LABEL_53:
        v26 = *(v6 + 8);
        v27 = *(v6 + 16);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v26)
        {
          v28 = __dynamic_cast(v26, &unk_28811D1B0, &unk_28811DBA0, 0) != 0;
          if (!v27)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v28 = 0;
          if (!v27)
          {
            goto LABEL_88;
          }
        }

        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
          if (v28)
          {
            goto LABEL_89;
          }

          goto LABEL_97;
        }

LABEL_88:
        if (v28)
        {
LABEL_89:
          v37 = *(v6 + 8);
          size = *(v6 + 16);
          if (size)
          {
            atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *&__p = v37;
          *(&__p + 1) = size;
LABEL_98:
          std::mutex::lock((v3 + 784));
          if ((*(v3 + 776) & 1) == 0)
          {
            v165[1] = 0u;
            v165[2] = 0u;
            *v165 = 0u;
            *(v3 + 776) = 1;
          }

          v43 = v37[1];
          v44 = v37[2];
          *(v165 + 25) = *(v37 + 41);
          *v165 = v43;
          v165[1] = v44;
          std::condition_variable::notify_all((v3 + 848));
          std::mutex::unlock((v3 + 784));
          if (!size)
          {
            goto LABEL_5;
          }

          goto LABEL_159;
        }

LABEL_97:
        size = 0;
        v37 = 0;
        __p = 0uLL;
        goto LABEL_98;
      }
    }

    v13 = 0;
    if (SBYTE7(v205) < 0)
    {
      goto LABEL_44;
    }

LABEL_20:
    if (!v13)
    {
      goto LABEL_45;
    }

LABEL_21:
    v14 = *(v6 + 16);
    if (!v14 || (atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v15 = *(v6 + 8);
      v16 = *(v6 + 16);
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_24:
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_25;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = *(v6 + 8);
    v16 = *(v6 + 16);
    if (v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    *&v204 = v15;
    *(&v204 + 1) = v16;
    if (*(v15 + 64) == 1)
    {
      if (*(v15 + 56))
      {
        v17 = 0;
        v18 = 1;
        if (!v16)
        {
          goto LABEL_65;
        }

LABEL_63:
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        goto LABEL_65;
      }

      if (*(v3 + 1104) == 1)
      {
        v29 = *(v15 + 32);
        __p = *(v15 + 16);
        v179 = v29;
        v180 = *(v15 + 48);
        std::mutex::lock((v3 + 968));
        sub_2714F8A98(v3 + 1032, &__p);
        std::condition_variable::notify_all((v3 + 1056));
        std::mutex::unlock((v3 + 968));
      }

      v18 = 0;
      v17 = 1;
      if (v16)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (*(v3 + 440) == 1)
      {
        v21 = *(v3 + 424);
        v22 = *(v3 + 432);
        *&__p = v21;
        *(&__p + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::mutex::lock((v21 + 8));
        ++*v21;
        std::condition_variable::notify_all((v21 + 72));
        std::mutex::unlock((v21 + 8));
        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }

      v17 = 0;
      v18 = 0;
      if (v16)
      {
        goto LABEL_63;
      }
    }

LABEL_65:
    if (v18)
    {
      break;
    }

    v5 = v166;
    if (v17)
    {
      goto LABEL_5;
    }

    v19 = v202;
    if (v202 < v203)
    {
LABEL_32:
      *v19 = off_28810C940;
      v19[1] = *(v6 + 8);
      v20 = *(v6 + 16);
      v19[2] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = v19 + 3;
      goto LABEL_4;
    }

LABEL_3:
    v7 = sub_2713927B8(&v201, v6);
LABEL_4:
    v202 = v7;
LABEL_5:
    v6 += 24;
    if (v6 == v5)
    {
      goto LABEL_405;
    }
  }

  sub_2711CC04C(v192, "Client received invalid sync command from server.");
  v200 = 1;
  sub_271389570(8, v192, &__p);
  *a3 = __p;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v188 == 1)
  {
    *(a3 + 40) = 0;
    v157 = v181;
    if (v181 == 1)
    {
      *(a3 + 16) = v179;
      *(a3 + 32) = v180;
      v180 = 0;
      v179 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v158 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v187 & 1) == 0)
      {
        goto LABEL_424;
      }

LABEL_428:
      v159 = v184;
      *(v158 + 16) = v183;
      *v158 = v182;
      v182 = 0uLL;
      *(a3 + 72) = v159;
      *(a3 + 80) = v185;
      *(a3 + 96) = v186;
      v183 = 0;
      v185 = 0uLL;
      v186 = 0;
      *(a3 + 104) = 1;
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (v157)
      {
        goto LABEL_429;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v158 = a3 + 48;
      *(a3 + 104) = 0;
      if (v187)
      {
        goto LABEL_428;
      }

LABEL_424:
      *(a3 + 112) = 1;
      *(a3 + 120) = 0;
      if (v157)
      {
LABEL_429:
        if (SHIBYTE(v180) < 0)
        {
          operator delete(v179);
        }
      }
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

  if (v200 == 1)
  {
    if (v199 == 1)
    {
      if (v198 < 0)
      {
        operator delete(v197);
      }

      if (v196 < 0)
      {
        operator delete(v195);
      }
    }

    if (v194 == 1 && v193 < 0)
    {
      operator delete(v192[0]);
    }
  }

LABEL_409:
  v153 = v201;
  if (v201)
  {
    v154 = v202;
    v155 = v201;
    if (v202 != v201)
    {
      do
      {
        v156 = *(v154 - 1);
        if (v156)
        {
          if (!atomic_fetch_add(&v156->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v156->__on_zero_shared)(v156);
            std::__shared_weak_count::__release_weak(v156);
          }
        }

        v154 -= 3;
      }

      while (v154 != v153);
      v155 = v201;
    }

    v202 = v153;
    operator delete(v155);
  }
}

void sub_27138D8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a39 == 1 && a38 < 0)
  {
    operator delete(__p);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  sub_27112F828(v67 - 248);
  std::__shared_weak_count::~__shared_weak_count(v66);
  operator delete(v69);
  sub_27112F828(v67 - 128);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
    sub_27112F828(&a53);
    sub_271392A1C(&a65);
    _Unwind_Resume(a1);
  }

  sub_27112F828(&a53);
  sub_271392A1C(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_27138DC40(uint64_t a1)
{
  (*(*a1 + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1 + 8;
}

uint64_t sub_27138DCF0(uint64_t a1)
{
  (*(*(a1 - 8) + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1;
}

void sub_27138DDA0(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(&v12, a2);
  if (!v12)
  {
    goto LABEL_23;
  }

  v3 = *(a1 + 1120);
  v4 = v3[4];
  if (v4)
  {
    std::mutex::lock(v3[4]);
    v5 = v3[1];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *v3;
        std::mutex::unlock(v4);
        if (!v7)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      std::mutex::unlock(v4);
    }

    else
    {
      v6 = 0;
      std::mutex::unlock(v4);
    }

    goto LABEL_10;
  }

  v8 = v3[1];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v6 = v9;
      if (*v3)
      {
LABEL_21:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        goto LABEL_23;
      }

LABEL_10:
      v10 = *(a1 + 1112);
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v10)
        {
          goto LABEL_23;
        }
      }

      else if (v10)
      {
        goto LABEL_23;
      }

LABEL_20:
      sub_2714C40D4(a1 + 1128);
    }
  }

  if ((*(a1 + 1112) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_23:
  v11 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_27138E600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char *a28)
{
  sub_271167834(&a27, a28);
  sub_27112F828(&a12);
  std::mutex::unlock(v28);
  sub_27112F828(&a10);
  sub_27112F828(v29 - 112);
  _Unwind_Resume(a1);
}

void sub_27138E694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  sub_27112F828(v3 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_27138E6CC(uint64_t **a1, uint64_t *a2)
{
  v2 = *(a2 + 40);
  if (*(a1 + 40) == 1)
  {
    if (!*(a2 + 40))
    {
      return v2 & 1;
    }

    v3 = *(a1 + 23);
    if (v3 >= 0)
    {
      v4 = *(a1 + 23);
    }

    else
    {
      v4 = a1[1];
    }

    v5 = *(a2 + 23);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = a2[1];
    }

    if (v4 != v5)
    {
      return 0;
    }

    v7 = a1;
    if (v3 < 0)
    {
      a1 = *a1;
    }

    v8 = a2;
    if (v6 < 0)
    {
      a2 = *a2;
    }

    v9 = memcmp(a1, a2, v4);
    v2 = 0;
    if (v9)
    {
      return v2 & 1;
    }

    if (*(v7 + 12) != *(v8 + 12))
    {
      return v2 & 1;
    }

    a1 = v7;
    a2 = v8;
    if (*(v7 + 8) != *(v8 + 8))
    {
      return v2 & 1;
    }
  }

  else if (a2[5])
  {
    return 0;
  }

  v11 = *(a1 + 48) == *(a2 + 48) && *(a1 + 50) == *(a2 + 50);
  if (!v11 || *(a1 + 64) != *(a2 + 64) || *(a1 + 64) && a1[7] != a2[7])
  {
    return 0;
  }

  v12 = *(a1 + 128);
  v13 = *(a2 + 128);
  if (v12 != v13 || !*(a1 + 128) || (v12 = *(a1 + 120), v13 = *(a2 + 120), v12 != v13) || !*(a1 + 120))
  {
    if (v12 == v13)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (a1[14] != a2[14])
  {
    return 0;
  }

LABEL_34:
  if (a1[13])
  {
    return 0;
  }

  return (*(a2 + 104) ^ 1) & 1;
}

void sub_27138E844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810A6E0;
  a1[1] = &unk_28810A740;
  v19[0] = 0;
  v21 = 0;
  if (*(a3 + 32) == 1)
  {
    v8 = *(a3 + 24);
    if (v8)
    {
      if (v8 == a3)
      {
        v20 = v19;
        v9 = a2;
        v10 = a4;
        (*(*v8 + 24))(v8, v19);
        a4 = v10;
        a2 = v9;
      }

      else
      {
        v20 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = 1;
  }

  v16[0] = 0;
  v18 = 0;
  if (*(a4 + 32) == 1)
  {
    v11 = *(a4 + 24);
    if (v11)
    {
      if (v11 == a4)
      {
        v17 = v16;
        v12 = a2;
        (*(*v11 + 24))(v11, v16);
        a2 = v12;
      }

      else
      {
        v17 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v13 = *(*(a2 + 56) + 8);
    v14 = 1;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  sub_27138730C(v15, a2, v19, v16, v13, v14, a5, a6, 0);
}

void sub_27138EB40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138EB80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810A6E0;
  a1[1] = &unk_28810A740;
  v15[0] = 0;
  v17 = 0;
  if (*(a3 + 32) == 1)
  {
    v4 = *(a3 + 24);
    if (v4)
    {
      if (v4 == a3)
      {
        v16 = v15;
        v5 = a2;
        v6 = a4;
        (*(*v4 + 24))(v4, v15);
        a4 = v6;
        a2 = v5;
      }

      else
      {
        v16 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = 1;
  }

  v12[0] = 0;
  v14 = 0;
  if (*(a4 + 32) == 1)
  {
    v7 = *(a4 + 24);
    if (v7)
    {
      if (v7 == a4)
      {
        v13 = v12;
        v8 = a2;
        (*(*v7 + 24))(v7, v12);
        a2 = v8;
      }

      else
      {
        v13 = *(a4 + 24);
        *(a4 + 24) = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v9 = *(*(a2 + 56) + 8);
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_27138730C(v11, a2, v15, v12, v9, v10, 0, 0, 1);
}

void sub_27138EE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_27138EEB0(void *result)
{
  *result = &unk_28810A6E0;
  v1 = result[3];
  result[1] = &unk_28810A740;
  result[2] = 0;
  result[3] = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    v3 = result[3];
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_27138EFB8(void *a1)
{
  *(a1 - 1) = &unk_28810A6E0;
  v1 = a1[2];
  *a1 = &unk_28810A740;
  a1[1] = 0;
  a1[2] = 0;
  if (v1)
  {
    if (atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1[2];
      if (!v2)
      {
        return;
      }
    }

    else
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      v2 = a1[2];
      if (!v2)
      {
        return;
      }
    }

    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);

      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

void sub_27138F0CC(void *a1)
{
  *a1 = &unk_28810A6E0;
  v1 = a1[3];
  a1[1] = &unk_28810A740;
  a1[2] = 0;
  a1[3] = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      a1 = v2;
    }

    v3 = a1[3];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

void sub_27138F1E8(void *a1)
{
  *(a1 - 1) = &unk_28810A6E0;
  v1 = a1[2];
  *a1 = &unk_28810A740;
  a1[1] = 0;
  a1[2] = 0;
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = a1;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      a1 = v2;
    }

    v3 = a1[2];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27138F3B4(uint64_t a1)
{
  (*(**(a1 + 16) + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1 + 8;
}

uint64_t sub_27138F468(uint64_t a1)
{
  (*(**(a1 + 8) + 32))(v3);
  if ((v12 & 1) == 0 && v11 == 1)
  {
    if (v10 == 1)
    {
      if (v9 < 0)
      {
        operator delete(__p);
      }

      if (v7 < 0)
      {
        operator delete(v6);
      }
    }

    if (v5 == 1 && v4 < 0)
    {
      operator delete(v3[2]);
    }
  }

  return a1;
}

void *sub_27138F534(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = sub_271120E64(a1, "Client<", 7);
  v17 = a2;
  v23 = 0;
  sub_271136C48(&v21, v22, &v17);
  if (v23 == -1)
  {
    sub_2711308D4();
  }

  v21 = &v20;
  (off_2881312E0[v23])(__p, &v21, v22);
  if (v23 != -1)
  {
    (off_288131298[v23])(&v21, v22);
  }

  if ((v19 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v5 = v19;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_271120E64(v3, v4, v5);
  v7 = sub_271120E64(v6, ">{", 2);
  v8 = *(a2 + 16);
  v9 = (*(*v8 + 24))(v8);
  sub_2718179D4(v9, v22);
  v10 = sub_271120E64(v7, v22, 36);
  v11 = sub_271120E64(v10, ", tcp/ip ", 9);
  if (v8[144])
  {
    v12 = "enabled";
  }

  else
  {
    v12 = "disabled";
  }

  if (v8[144])
  {
    v13 = 7;
  }

  else
  {
    v13 = 8;
  }

  v14 = sub_271120E64(v11, v12, v13);
  result = sub_271120E64(v14, "}", 1);
  if (v19 < 0)
  {
    v16 = result;
    operator delete(__p[0]);
    return v16;
  }

  return result;
}

void sub_27138F6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::mutex **sub_27138F744(std::mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    std::mutex::~mutex(v2);
    MEMORY[0x2743BF050]();
    return v3;
  }

  return v1;
}

void sub_27138F798(void *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    std::mutex::~mutex(v3);
    MEMORY[0x2743BF050]();
  }

  v4 = a1[3];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27138F8B4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v2 = v1[1];
  v3 = *(v2 + 8);
  v5 = *(v2 + 7);
  v6 = v2[16];
  v4 = **v1;
  v13[0] = &unk_288108AC8;
  v13[1] = v4;
  v13[3] = v13;
  v14 = 1;
  v11 = 0;
  v12 = 0;
  v9 = v4;
  v10 = 1;
  v8 = v3;
  v7 = &unk_28810C118;
  operator new();
}

void sub_27138FB48(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  sub_2711D66B0(v2 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_27138FBEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288108AC8;
  a2[1] = v2;
  return result;
}

void sub_27138FC18(uint64_t a1, uint64_t *a2)
{
  sub_27138B9F4(*(a1 + 8), a2, &v3);
  if ((v13 & 1) == 0 && v12 == 1)
  {
    if (v11 == 1)
    {
      if (v10 < 0)
      {
        operator delete(__p);
      }

      if (v8 < 0)
      {
        operator delete(v7);
      }
    }

    if (v6 == 1 && v5 < 0)
    {
      v2 = v4;

      operator delete(v2);
    }
  }
}

uint64_t sub_27138FCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N4cv3d3kit3viz6Client4Impl15CommandReceiverE")
  {
    return a1 + 8;
  }

  if (((v2 & "N4cv3d3kit3viz6Client4Impl15CommandReceiverE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N4cv3d3kit3viz6Client4Impl15CommandReceiverE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit3viz6Client4Impl15CommandReceiverE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27138FD2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_27112F6CC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

__n128 sub_27138FD98(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (*(a1 + 48) != *(a2 + 48))
  {
    if (!*(a1 + 48))
    {
      v8 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v8;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      *(a1 + 48) = 1;
      v5 = *(a1 + 200);
      if (v5 == *(a2 + 200))
      {
        goto LABEL_12;
      }

LABEL_15:
      if (v5)
      {
        v9 = a1;
        sub_27139007C(a1 + 56);
        a1 = v9;
      }

      else
      {
        v10 = *(a2 + 56);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 56) = v10;
        *(a2 + 64) = 0;
        *(a2 + 72) = 0;
        *(a2 + 56) = 0;
        v11 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 80) = v11;
        *(a2 + 88) = 0;
        *(a2 + 96) = 0;
        *(a2 + 80) = 0;
        v12 = *(a2 + 104);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 104) = v12;
        *(a2 + 112) = 0;
        *(a2 + 120) = 0;
        *(a2 + 104) = 0;
        v13 = *(a2 + 128);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 128) = v13;
        *(a2 + 128) = 0;
        *(a2 + 136) = 0;
        *(a2 + 144) = 0;
        v14 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v14;
        *(a2 + 152) = 0;
        *(a2 + 160) = 0;
        *(a2 + 168) = 0;
        v15 = *(a2 + 176);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 176) = v15;
        *(a2 + 176) = 0;
        *(a2 + 184) = 0;
        *(a2 + 192) = 0;
        *(a1 + 200) = 1;
      }

      goto LABEL_18;
    }

    if (*(a1 + 47) < 0)
    {
      v6 = a1;
      operator delete(*(a1 + 24));
      a1 = v6;
    }

    *(a1 + 48) = 0;
LABEL_11:
    v5 = *(a1 + 200);
    if (v5 == *(a2 + 200))
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (!*(a1 + 48))
  {
    goto LABEL_11;
  }

  if (*(a1 + 47) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 24));
    a1 = v3;
  }

  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  v5 = *(a1 + 200);
  if (v5 != *(a2 + 200))
  {
    goto LABEL_15;
  }

LABEL_12:
  if (v5)
  {
    v7 = a1;
    sub_27138FF64(a1 + 56, (a2 + 56));
    a1 = v7;
  }

LABEL_18:
  result = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = result;
  return result;
}

uint64_t sub_27138FF64(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  return a1;
}

void sub_27139007C(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a1 + 95) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 96));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(a1 + 72));
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(a1 + 47) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    operator delete(*(a1 + 48));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 23) & 0x80000000) == 0)
      {
LABEL_8:
        *(a1 + 144) = 0;
        return;
      }

LABEL_15:
      operator delete(*a1);
      goto LABEL_8;
    }

LABEL_14:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }
}

uint64_t sub_27139013C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 24) = 0;
  *(a1 + 16) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 200) = 0;
  if (*(a2 + 200) == 1)
  {
    sub_2711B0ED4(a1 + 56, (a2 + 56));
    *(a1 + 200) = 1;
  }

  v6 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v6;
  return a1;
}

void sub_271390200(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_271390244(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result;
  v4 = a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a3 + 96) != 1)
  {
    *result = a2;
    *(result + 8) = &off_288132228;
    *(result + 16) = 0;
    *(result + 112) = 0;
    return result;
  }

  sub_27112F6CC(v6, a3);
  v15 = 1;
  *v3 = v4;
  *(v3 + 8) = &off_288132228;
  *(v3 + 16) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = 0;
  if (v8 == 1)
  {
    *(v3 + 16) = *v6;
    *(v3 + 32) = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    *(v3 + 40) = 1;
  }

  *(v3 + 48) = 0;
  *(v3 + 104) = 0;
  if (v14)
  {
    v5 = v11;
    *(v3 + 64) = v10;
    *(v3 + 48) = *v9;
    v9[0] = 0;
    v9[1] = 0;
    *(v3 + 72) = v5;
    *(v3 + 80) = *__p;
    *(v3 + 96) = v13;
    __p[1] = 0;
    v13 = 0;
    v10 = 0;
    __p[0] = 0;
    *(v3 + 104) = 1;
    *(v3 + 112) = 1;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        if (v8 != 1)
        {
          return v3;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
    if (v8 != 1)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 112) = 1;
    if (v8 != 1)
    {
      return v3;
    }
  }

LABEL_14:
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    return v3;
  }

  operator delete(v6[0]);
  return v3;
}

void sub_2713903D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_271390404(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v7 = 0;
  *__p = 0;
  v9 = 0;
  v2 = *(v1 + 8);
  v3 = v2[1];
  v4[0] = *v2;
  v4[1] = v3;
  v5 = 1;
  v6 = 1;
  LOBYTE(v10) = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v19 = 0;
  sub_2713907D0(v4, &v10);
}

void sub_27139076C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_271390780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  sub_271396310(va);
  sub_2714FBE4C(&a16);
  sub_271134CBC(v25 - 256);
  sub_271181F68(&a19);
  _Unwind_Resume(a1);
}

void sub_2713907B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_271134CBC(v18 - 256);
  sub_271181F68(va);
  _Unwind_Resume(a1);
}

void sub_2713907D0(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  LOBYTE(v9[0]) = 0;
  v11 = 0;
  if (*(a2 + 24) == 1)
  {
    *v9 = *a2;
    v10 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v11 = 1;
  }

  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  LOBYTE(v14) = 0;
  v16 = 0;
  if (*(a2 + 80) == 1)
  {
    v14 = *(a2 + 56);
    v15 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v16 = 1;
    LOBYTE(v17) = 0;
    v21 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v22[0]) = 0;
      v24 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
    v21 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v18 = *(a2 + 112);
  v17 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v19 = _X2;
  v20 = 0;
  v21 = 1;
  LOBYTE(v22[0]) = 0;
  v24 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v9, v25);
    sub_271390E38();
  }

LABEL_6:
  *v22 = *(a2 + 160);
  v23 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v24 = 1;
  goto LABEL_7;
}

void sub_271390B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271134CBC(v5 + 16);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271390B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271390E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void *sub_271390FCC(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));
  return a1;
}

void sub_271391010(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));

  JUMPOUT(0x2743BF050);
}

void sub_271391084(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808787F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808787F0))
    {
      sub_271392200();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_2808787D8, "{", __p, ",", v2 + 72, "}");
}

void sub_271391184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713911A0(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 2;
}

void *sub_27139121C(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));
  return a1;
}

void sub_271391260(void *a1)
{
  *a1 = &unk_2881313F8;
  sub_271134CBC((a1 + 12));

  JUMPOUT(0x2743BF050);
}

void sub_2713912C4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808787D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2808787D0))
    {
      sub_271391F88();
    }
  }

  sub_271391A3C(qword_2808787B8, "{", a1 + 8, ",", a1 + 80, "}");
}

void sub_271391378(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

uint64_t sub_2713913B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, &unk_288132918, &unk_288131460, 0);
  if (!v4)
  {
    return 0;
  }

  if (a1 == lpsrc)
  {
    return 1;
  }

  v5 = *(a1 + 56);
  v6 = v5 == *(v4 + 56);
  if (v5 == *(v4 + 56) && v5 != 0)
  {
    v8 = *(a1 + 48);
    v9 = v4[12];
    v6 = v9 == v8;
    if (v8 != -1 && v9 == v8)
    {
      v12 = &v11;
      return (off_288131288[v8])(&v12, a1 + 8, v4 + 2);
    }
  }

  return v6;
}

void sub_2713914CC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2808787B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808787B0))
  {
    sub_2718519B4(qword_280878798, "cv3d::kit::viz::Sync]", 0x14uLL);
    __cxa_guard_release(&qword_2808787B0);
  }

  sub_271391644(qword_280878798, "{", a1 + 8, "}");
}

BOOL sub_271391580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a2 != *a3)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a3 + 16);
  if (v3 != v4 || v3 == 0)
  {
    if (v3 != v4)
    {
      return 0;
    }
  }

  else if (*(a2 + 8) != *(a3 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 32);
  v7 = *(a2 + 32);
  result = v7 == v6;
  if (v7 == v6 && v7 != 0)
  {
    return *(a2 + 24) == *(a3 + 24);
  }

  return result;
}

BOOL sub_2713915F0(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*a2 != *a3 || *(a2 + 1) != *(a3 + 1))
  {
    return 0;
  }

  v3 = a3[24];
  v4 = a2[24];
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return *(a2 + 2) == *(a3 + 2);
  }

  return result;
}

void sub_271391644(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_271136F58(v12, &v7);
  sub_2713917F0(&v6, &v7, a3);
}

void sub_271391788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713917DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713919F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271391A3C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_271391C6C(&v8, &v9, a3);
}

void sub_271391BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271391F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_2808787B0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_27139205C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139208C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 20;
  strcpy(__p, "cv3d::kit::viz::Sync");
  sub_27184BC8C(&v11, __p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  sub_2711309E8(v8, &v11, 1uLL);
  sub_271851AD8(a1, v8, a2);
  v4 = v8[0];
  if (v8[0])
  {
    v5 = v8[1];
    v6 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8[0];
    }

    v8[1] = v4;
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }
}

void sub_2713921C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27137F4D0(va);
  if (*(v3 - 25) < 0)
  {
    operator delete(*(v3 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_271392200()
{
  v2[12] = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::viz::Sync");
  sub_27184BC8C(v2, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_271392488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_2713925E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_288107838;
  a2[1] = v2;
  return result;
}

uint64_t sub_27139260C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 440) != 1)
  {
    goto LABEL_8;
  }

  v2 = *(v1 + 400);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = *(v1 + 392);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v3;
    (v3->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    v5 = 1;
    return v5 & (*(v1 + 144) ^ 1u);
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  v5 = 0;
  return v5 & (*(v1 + 144) ^ 1u);
}

uint64_t sub_2713926B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4cv3d3kit3viz6Client4Impl8SyncImplENSt3__18optionalINS4_6chrono8durationIxNS4_5ratioILl1ELl1000000000EEEEEEEENK3$_0clEvEUlvE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_27139272C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_2713927B8(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((a1[1] - *a1) >> 3));
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  *v6 = off_28810C940;
  v6[1] = v8;
  v6[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a1;
  v10 = a1[1];
  v11 = (v6 - (v10 - *a1));
  v12 = v6 + 3;
  if (v10 != *a1)
  {
    v13 = 24 * v2 - 8 * ((v10 - *a1) >> 3);
    v14 = *a1;
    v15 = v11;
    do
    {
      *v15 = off_28810C940;
      *(v15 + 8) = *(v14 + 1);
      v14[1] = 0;
      v14[2] = 0;
      v14 += 3;
      v15 += 24;
      v13 += 24;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[2];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 3;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v12;
}

uint64_t sub_2713929C8(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 64);
  if (!v2)
  {
    sub_27112AFFC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

char **sub_271392A1C(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 24;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271392AD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  v4 = *(a2 + 8);
  if (*(v3 + 40) == 1)
  {
    sub_271120E64(*v4, "{", 1);
    operator new();
  }

  sub_271120E64(*v4, "nullopt", 7);
  if ((*a2 & 1) == 0)
  {
    sub_271120E64(**(a2 + 8), ",", 1);
  }

  *a2 = 0;
  sub_271120E64(**(a2 + 8), "{", 1);
  operator new();
}

void sub_27139336C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139342C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881064D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713934C8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271393544(void *__src)
{
  v3 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  operator new();
}

void sub_271393754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_free_exception(v11);
  sub_271816C9C(&a9);
  sub_271816C9C(va);
  _Unwind_Resume(a1);
}

void sub_271393778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271393794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_271816C9C(&a9);
  sub_271816C9C(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2713937B0(unint64_t result, char *__b, char *a3)
{
  if (__b == a3)
  {
    return result;
  }

  v4 = result;
  v5 = a3 - __b;
  v6 = (a3 - __b) >> 2;
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    memset(__b, 139, v5);
  }

  v9 = *v4;
  v8 = v4[1];
  v10 = v8 - *v4;
  v11 = v10 >> 2;
  v12 = 11;
  v13 = 7;
  v14 = 5;
  v15 = 3;
  if (v6 <= 6)
  {
    v15 = v7 >> 1;
  }

  if (v6 <= 0x26)
  {
    v14 = v15;
  }

  if (v6 <= 0x43)
  {
    v13 = v14;
  }

  if (v6 <= 0x26E)
  {
    v12 = v13;
  }

  v16 = v10 >> 2;
  v17 = (v6 - v12) >> 1;
  v18 = v17 + v12;
  v19 = v11 + 1;
  if (v11 + 1 > v6)
  {
    v20 = v11 + 1;
  }

  else
  {
    v20 = v6;
  }

  v21 = *&__b[4 * v17];
  v22 = 1664525 * (*__b ^ *&__b[v5 - 4] ^ v21 ^ ((*__b ^ *&__b[v5 - 4] ^ v21) >> 27));
  result = v22 + v21;
  *&__b[4 * v17] = result;
  v23 = v22 + v16;
  *&__b[4 * v18] += v23;
  *__b = v23;
  v24 = v17 % v6;
  v25 = v18 % v6;
  if (v8 == v9)
  {
    v26 = 0;
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v26 = 0;
    v27 = 2;
    if (v19 > 2)
    {
      v27 = v11 + 1;
    }

    v28 = v27 - 1;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v29 = *&__b[4 * v24];
      v30 = 1664525 * (*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29 ^ ((*&__b[4 * v26] ^ *&__b[4 * v7] ^ v29) >> 27));
      *&__b[4 * v24] = v30 + v29;
      v31 = *v9++;
      v32 = v31 + v26 + v30;
      result = (v32 + *&__b[4 * v25]);
      *&__b[4 * v25] = result;
      *&__b[4 * v26] = v32;
      --v28;
    }

    while (v28);
    if (v6 <= v19)
    {
      goto LABEL_49;
    }
  }

  v33 = ~v11 + v20;
  do
  {
    if (v26 + 1 == v6)
    {
      v26 = 0;
    }

    else
    {
      ++v26;
    }

    if (v7 + 1 == v6)
    {
      v7 = 0;
    }

    else
    {
      ++v7;
    }

    if (v24 + 1 == v6)
    {
      v24 = 0;
    }

    else
    {
      ++v24;
    }

    if (v25 + 1 == v6)
    {
      v25 = 0;
    }

    else
    {
      ++v25;
    }

    v34 = *&__b[4 * v24];
    v35 = *&__b[4 * v26] ^ *&__b[4 * v7] ^ v34;
    v36 = 1664525 * (v35 ^ (v35 >> 27));
    *&__b[4 * v24] = v36 + v34;
    v37 = v36 + v26;
    *&__b[4 * v25] += v37;
    *&__b[4 * v26] = v37;
    --v33;
  }

  while (v33);
LABEL_49:
  if (v20 < v20 + v6)
  {
    v38 = v6;
    do
    {
      if (v26 + 1 == v6)
      {
        v26 = 0;
      }

      else
      {
        ++v26;
      }

      if (v7 + 1 == v6)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      if (v24 + 1 == v6)
      {
        v24 = 0;
      }

      else
      {
        ++v24;
      }

      if (v25 + 1 == v6)
      {
        v25 = 0;
      }

      else
      {
        ++v25;
      }

      v39 = *&__b[4 * v24];
      v40 = v39 + *&__b[4 * v26] + *&__b[4 * v7];
      v41 = 1566083941 * (v40 ^ (v40 >> 27));
      *&__b[4 * v24] = v41 ^ v39;
      v42 = v41 - v26;
      *&__b[4 * v25] ^= v42;
      *&__b[4 * v26] = v42;
      --v38;
    }

    while (v38);
  }

  return result;
}

void sub_271393A8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106D58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271393AE0(uint64_t a1)
{
  v1 = *(a1 + 2544);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

unsigned int *sub_271393B60(unsigned int *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 2496);
  v4 = (v3 + 1) % 0x270uLL;
  v5 = *(*a2 + 4 * v4);
  v6 = v5 & 0x7FFFFFFE | *(*a2 + 4 * v3) & 0x80000000;
  if (v5)
  {
    v7 = -1727483681;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ *(*a2 + 4 * ((v3 + 397) % 0x270uLL)) ^ (v6 >> 1);
  *(v2 + 4 * v3) = v8;
  v9 = ((v8 ^ (v8 >> 11)) << 7) & 0x9D2C5680 ^ v8 ^ (v8 >> 11);
  *result = (v9 << 15) & 0xEFC60000 ^ v9 ^ (((v9 << 15) & 0xEFC60000 ^ v9) >> 18);
  if (v4 == 623)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4 + 1;
  }

  v11 = *(v2 + 4 * v10);
  v12 = v11 & 0x7FFFFFFE | *(v2 + 4 * v4) & 0x80000000;
  if (v4 >= 0xE3)
  {
    v13 = -227;
  }

  else
  {
    v13 = 397;
  }

  v14 = *(v2 + 4 * (v13 + v4));
  if (v11)
  {
    v15 = -1727483681;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 ^ v14 ^ (v12 >> 1);
  *(v2 + 4 * v4) = v16;
  v17 = ((v16 ^ (v16 >> 11)) << 7) & 0x9D2C5680 ^ v16 ^ (v16 >> 11);
  result[1] = (v17 << 15) & 0xEFC60000 ^ v17 ^ (((v17 << 15) & 0xEFC60000 ^ v17) >> 18);
  v18 = (v10 + 1) % 0x270;
  v19 = *(v2 + 4 * v18);
  if (v19)
  {
    v20 = -1727483681;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 ^ *(v2 + 4 * ((v10 + 397) % 0x270)) ^ ((v19 & 0x7FFFFFFE | *(v2 + 4 * v10) & 0x80000000) >> 1);
  *(v2 + 4 * v10) = v21;
  v22 = ((v21 ^ (v21 >> 11)) << 7) & 0x9D2C5680 ^ v21 ^ (v21 >> 11);
  result[2] = (v22 << 15) & 0xEFC60000 ^ v22 ^ (((v22 << 15) & 0xEFC60000 ^ v22) >> 18);
  if (v18 == 623)
  {
    v23 = 0;
  }

  else
  {
    v23 = v18 + 1;
  }

  v24 = *(v2 + 4 * v23);
  if (v18 >= 0xE3)
  {
    v25 = -227;
  }

  else
  {
    v25 = 397;
  }

  v26 = *(v2 + 4 * (v25 + v18));
  if (v24)
  {
    v27 = -1727483681;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 ^ v26 ^ ((v24 & 0x7FFFFFFE | *(v2 + 4 * v18) & 0x80000000) >> 1);
  *(v2 + 4 * v18) = v28;
  v29 = ((v28 ^ (v28 >> 11)) << 7) & 0x9D2C5680 ^ v28 ^ (v28 >> 11);
  result[3] = (v29 << 15) & 0xEFC60000 ^ v29 ^ (((v29 << 15) & 0xEFC60000 ^ v29) >> 18);
  *(v2 + 2496) = v23;
  return result;
}

void sub_271393D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v3 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 32);
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 712);
  if (!v6)
  {
    sub_27112AFFC();
  }

  (*(*v6 + 48))(v9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v18)
    {
      return;
    }
  }

  else if (v18)
  {
    return;
  }

  sub_27138A894(v1[2], v9);
  if ((v18 & 1) == 0 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9[2]);
    }
  }
}

void sub_271393F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_271393F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271396310(va);
  _Unwind_Resume(a1);
}

void sub_271393F94(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  v3 = 0;
  *v4 = 0;
  v5 = 0;
  v2 = *(v1 + 8);
  LOBYTE(v6) = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  LOBYTE(v10) = 0;
  v11 = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  LOBYTE(__p) = 0;
  v15 = 0;
  sub_271394340(v2, &v6);
}

void sub_2713942DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_27112E024(va);
  _Unwind_Resume(a1);
}

void sub_2713942F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_271396310(&a20);
  sub_2714FBE4C(&a10);
  sub_271134CBC(va);
  sub_271181F68(&a13);
  _Unwind_Resume(a1);
}

void sub_271394324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_271134CBC(va);
  sub_271181F68(&a13);
  _Unwind_Resume(a1);
}

void sub_271394340(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  LOBYTE(v11[0]) = 0;
  v13 = 0;
  if (*(a2 + 24) == 1)
  {
    *v11 = *a2;
    v12 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = 1;
  }

  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  LOBYTE(v16) = 0;
  v18 = 0;
  if (*(a2 + 80) == 1)
  {
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v24[0]) = 0;
      v26 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
    v23 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v20 = *(a2 + 112);
  v19 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v21 = _X2;
  v22 = 0;
  v23 = 1;
  LOBYTE(v24[0]) = 0;
  v26 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_2711EAFA4(v11, v27);
    sub_271394710(&v10, a1);
  }

LABEL_6:
  *v24 = *(a2 + 160);
  v25 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v26 = 1;
  goto LABEL_7;
}

void sub_2713946E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271134CBC(v5 + 16);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2713946FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_271394710(void x0_0, void *a1)
{
  v3 = a1 + 1;
  v4 = a1[1];
  v5 = *a1;
  v6 = v4;
  if (a1[2])
  {
    *(v4 + 16) = &v6;
    *a1 = v3;
    *v3 = 0;
    a1[2] = 0;
  }

  else
  {
    v5 = &v6;
  }

  operator new();
}

void sub_2713948A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  (*(*v11 + 8))(v11, a2, a3, a4, a5, a6, a7, a8);
  sub_271167834(&a10, a11);
  _Unwind_Resume(a1);
}

void sub_2713948E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  *(v11 + 8) = v12;
  sub_271167834(v13, *(v11 + 24));
  MEMORY[0x2743BF050](v11, 0x10B3C40C16B1FE9);
  sub_271167834(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_271394940(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_2713949B0(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743BF050);
}

void sub_271394A50(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878790, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878790))
    {
      sub_271395BEC();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_280878778, "{", __p, ",", v2 + 40, "}");
}

void sub_271394B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271394B6C(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.net");
  *(a1 + 24) = 3;
}

uint64_t sub_271394BE4(uint64_t a1)
{
  *a1 = &unk_288131398;
  sub_271167834(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_271394C30(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_271394CA0(uint64_t a1)
{
  *a1 = &unk_288131350;
  sub_271134CBC(a1 + 64);
  *(a1 + 8) = &unk_288131398;
  sub_271167834(a1 + 16, *(a1 + 24));

  JUMPOUT(0x2743BF050);
}

void sub_271394D30(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878770, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878770))
    {
      sub_271395958();
    }
  }

  sub_27139540C(qword_280878758, "{", a1 + 8, ",", a1 + 48, "}");
}

void sub_271394DE4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_271394E10(uint64_t a1)
{
  *a1 = &unk_288131398;
  sub_271167834(a1 + 8, *(a1 + 16));

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271394E7C(char *a1, char *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_2881313B8, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v5 = (result + 8);
      v6 = a1 + 8;
      return sub_2711B7DB8(&v6, &v5);
    }
  }

  return result;
}

void sub_271394F2C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878750))
  {
    sub_2718519B4(qword_280878738, "cv3d::kit::viz::UpdateEnabledContexts]", 0x25uLL);
    __cxa_guard_release(&qword_280878750);
  }

  sub_271394FE0(qword_280878738, "{", (a1 + 8), "}");
}

void sub_271394FE0(__int128 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_271136F58(v12, &v7);
  sub_27139518C(&v6, &v7, a3);
}

void sub_271395124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27139513C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713953C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27139540C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_27139563C(&v8, &v9, a3);
}

void sub_2713955AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713955C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713955D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713955EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271395628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713958D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280878750);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_271395A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271395BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271395BEC()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271395E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_271395FA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881062A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_27139602C(void *a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    v4 = "Enabled";
    v5 = 7;
  }

  else if (v3 == 1)
  {
    v4 = "DisabledIgnoreSync";
    v5 = 18;
  }

  else if (*a2)
  {
    v8 = sub_271120E64(a1, "invalid client sync type (", 26);
    a1 = MEMORY[0x2743BE7E0](v8, *a2);
    v4 = ")";
    v5 = 1;
  }

  else
  {
    v4 = "Disabled";
    v5 = 8;
  }

  return sub_271120E64(a1, v4, v5);
}

void *sub_2713960F0(void *a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = "Proceeding";
      v5 = 10;
    }

    else
    {
      if (v3 != 3)
      {
LABEL_12:
        v8 = sub_271120E64(a1, "invalid sync status (", 21);
        a1 = MEMORY[0x2743BE7E0](v8, *a2);
        v4 = ")";
        v5 = 1;

        return sub_271120E64(a1, v4, v5);
      }

      v4 = "ProceedingConditionally";
      v5 = 23;
    }
  }

  else
  {
    if (*a2)
    {
      if (v3 == 1)
      {
        v4 = "Waiting";
        v5 = 7;

        return sub_271120E64(a1, v4, v5);
      }

      goto LABEL_12;
    }

    v4 = "NotSyncing";
    v5 = 10;
  }

  return sub_271120E64(a1, v4, v5);
}

uint64_t sub_2713961E0(uint64_t **a1, uint64_t **a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = *(v2 + 23);
  if (v4 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 8);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v10 = v4 >= 0 ? **a1 : *v2;
  v11 = v7 >= 0 ? **a2 : *v3;
  if (memcmp(v10, v11, v5))
  {
    return 0;
  }

  v13 = *(v2 + 48);
  v14 = *(v3 + 48);
  if (v13 == v14 && v13 != 0)
  {
    v16 = *(v2 + 47);
    if (v16 >= 0)
    {
      v17 = *(v2 + 47);
    }

    else
    {
      v17 = *(v2 + 32);
    }

    v18 = *(v3 + 47);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v3 + 32);
    }

    if (v17 == v18)
    {
      v20 = v16 >= 0 ? (v2 + 24) : *(v2 + 24);
      v21 = v19 >= 0 ? (v3 + 24) : *(v3 + 24);
      if (!memcmp(v20, v21, v17))
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

  if (v13 != v14)
  {
    return 0;
  }

LABEL_35:

  return sub_2714FC08C(a1 + 2, a2 + 2);
}

uint64_t sub_271396310(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_2713963D8(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 16);
  v4 = v1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_271396748);
  }

  return v1 + 24;
}

void *sub_271396440(void *result)
{
  *result = &unk_288131488;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_2713964D4(void *a1)
{
  *a1 = &unk_288131488;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_27139657C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v11 = 0;
  sub_271396A44(&v13, v10, v3);
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v12;
  (off_2881314F0[v11])(__p, &v13, v10);
  if (v11 != -1)
  {
    (off_2881314C0[v11])(&v13, v10);
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  result = sub_271120E64(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_271396668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271396684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_271396698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713966AC(uint64_t result)
{
  v1 = *(result + 40);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_271396748(std::string ****a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = ***a1;
  v2 = v1->__r_.__value_.__r.__words[0];
  if (*(v1->__r_.__value_.__r.__words[0] + 48) == 1)
  {
    if (*(v2 + 47) < 0)
    {
      sub_271127178(__p, v2[3], v2[4]);
      v2 = v1->__r_.__value_.__r.__words[0];
    }

    else
    {
      *__p = *(v2 + 3);
      v8 = v2[5];
    }
  }

  else
  {
    HIBYTE(v8) = 0;
    LOBYTE(__p[0]) = 0;
  }

  v3 = HIBYTE(v8);
  v4 = __p;
  if (v8 < 0)
  {
    v4 = __p[0];
    v3 = __p[1];
  }

  v10[0] = v4;
  v10[1] = v3;
  v10[2] = ":";
  v10[3] = 1;
  v5 = *(v2 + 23);
  v6 = v2[1];
  if ((v5 & 0x80u) != 0)
  {
    v2 = *v2;
    v5 = v6;
  }

  v10[4] = v2;
  v10[5] = v5;
  sub_271131230(v10, &v11, 0, 0, &v9);
  if (SHIBYTE(v1[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v1[1].__r_.__value_.__l.__data_);
  }

  v1[1] = v9;
  *(&v9.__r_.__value_.__s + 23) = 0;
  v9.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_271396890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713968CC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288131530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271396920(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 24);
  if (v3 == v1)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 32);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 40;
  }

  while (v3 != v1);
  v4 = *(a1 + 24);
LABEL_13:
  *(a1 + 32) = v1;

  operator delete(v4);
}

uint64_t sub_271396A44(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  if (a3[1] - *a3 > 39)
  {
    v8 = a2;
    v9 = "{";
    v10 = a2;
    v11 = "{";
    v12 = "{";
    v5 = a2[6];
    if (v5 != -1)
    {
      v13 = &v8;
      (*(&off_2881314A8 + v5))(&v13, a2);
      sub_271396BB0(a2, *a3);
    }

LABEL_6:
    sub_2711308D4();
  }

  v8 = a2;
  v9 = "{}";
  v10 = a2;
  v11 = "{}";
  v12 = "{}";
  v4 = a2[6];
  if (v4 == -1)
  {
    goto LABEL_6;
  }

  v13 = &v8;
  return (*(&off_288131570 + v4))(&v13, a2);
}

void sub_27139728C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  if (a35 < 0)
  {
    operator delete(__p);
    sub_2713966AC(&a23);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_3:
      v37 = a16;
      a16 = 0;
      if (!v37)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_27184D728(&a16, v37);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_2713966AC(&a23);
    if ((a22 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a17);
  v37 = a16;
  a16 = 0;
  if (!v37)
  {
    goto LABEL_9;
  }

  goto LABEL_7;
}

uint64_t sub_2713973EC(uint64_t a1, uint64_t **a2, char **a3)
{
  v5 = **a2;
  if (*(v5 + 23) < 0)
  {
    v7 = a3;
    sub_271127178(a1, *v5, *(v5 + 1));
    a3 = v7;
  }

  else
  {
    v6 = *v5;
    *(a1 + 16) = *(v5 + 2);
    *a1 = v6;
  }

  sub_27139A710(a1 + 24, (a2 + 2), a3);
  v8 = **a2;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(v8 + 48) == 1)
  {
    if (*(v8 + 47) < 0)
    {
      sub_271127178((a1 + 112), *(v8 + 24), *(v8 + 32));
    }

    else
    {
      v9 = *(v8 + 24);
      *(a1 + 128) = *(v8 + 40);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  return a1;
}

void sub_2713974B4(_Unwind_Exception *a1)
{
  if (*(v1 + 136) == 1 && *(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  sub_271398534(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_2713974FC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v28[0] = *(a1 + 8);
  *(v28 + 7) = *(a1 + 15);
  v5 = *(a1 + 23);
  v6 = *(a1 + 23);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = *(a1 + 136);
  if (v7 == 1)
  {
    v8 = *(a1 + 112);
    v27[0] = *(a1 + 120);
    *(v27 + 7) = *(a1 + 127);
    v2 = *(a1 + 135);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = 0;
  }

  else
  {
    v8 = 0;
  }

  v20 = v4;
  *v21 = v28[0];
  *&v21[7] = *(v28 + 7);
  v22 = v6;
  v28[0] = 0;
  *(v28 + 7) = 0;
  LOBYTE(__p) = 0;
  v26 = 0;
  if (v7)
  {
    __p = v8;
    *v24 = v27[0];
    *&v24[7] = *(v27 + 7);
    v25 = v2;
    v27[0] = 0;
    *(v27 + 7) = 0;
    v26 = 1;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = *v21;
  }

  else
  {
    v4 = &v20;
  }

  if (!v5)
  {
    goto LABEL_70;
  }

  v9 = v4;
  if (v5 < 8)
  {
LABEL_73:
    v18 = v4 + v5;
    do
    {
      if (*v9 == 58)
      {
        *v9 = 95;
      }

      ++v9;
    }

    while (v9 != v18);
    goto LABEL_70;
  }

  if (v5 < 0x10)
  {
    v10 = 0;
    goto LABEL_13;
  }

  v10 = v5 & 0xFFFFFFFFFFFFFFF0;
  v14 = v4 + 7;
  v15.i64[0] = 0x3A3A3A3A3A3A3A3ALL;
  v15.i64[1] = 0x3A3A3A3A3A3A3A3ALL;
  v16 = v5 & 0xFFFFFFFFFFFFFFF0;
  while (1)
  {
    v17 = vceqq_s8(*(v14 - 7), v15);
    if (v17.i8[0])
    {
      *(v14 - 7) = 95;
      if ((v17.i8[1] & 1) == 0)
      {
LABEL_38:
        if ((v17.i8[2] & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_55;
      }
    }

    else if ((v17.i8[1] & 1) == 0)
    {
      goto LABEL_38;
    }

    *(v14 - 6) = 95;
    if ((v17.i8[2] & 1) == 0)
    {
LABEL_39:
      if ((v17.i8[3] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v14 - 5) = 95;
    if ((v17.i8[3] & 1) == 0)
    {
LABEL_40:
      if ((v17.i8[4] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v14 - 4) = 95;
    if ((v17.i8[4] & 1) == 0)
    {
LABEL_41:
      if ((v17.i8[5] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v14 - 3) = 95;
    if ((v17.i8[5] & 1) == 0)
    {
LABEL_42:
      if ((v17.i8[6] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *(v14 - 2) = 95;
    if ((v17.i8[6] & 1) == 0)
    {
LABEL_43:
      if ((v17.i8[7] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    *(v14 - 1) = 95;
    if ((v17.i8[7] & 1) == 0)
    {
LABEL_44:
      if ((v17.i8[8] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    *v14 = 95;
    if ((v17.i8[8] & 1) == 0)
    {
LABEL_45:
      if ((v17.i8[9] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v14[1] = 95;
    if ((v17.i8[9] & 1) == 0)
    {
LABEL_46:
      if ((v17.i8[10] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    v14[2] = 95;
    if ((v17.i8[10] & 1) == 0)
    {
LABEL_47:
      if ((v17.i8[11] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v14[3] = 95;
    if ((v17.i8[11] & 1) == 0)
    {
LABEL_48:
      if ((v17.i8[12] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    v14[4] = 95;
    if ((v17.i8[12] & 1) == 0)
    {
LABEL_49:
      if ((v17.i8[13] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    v14[5] = 95;
    if ((v17.i8[13] & 1) == 0)
    {
LABEL_50:
      if ((v17.i8[14] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    v14[6] = 95;
    if ((v17.i8[14] & 1) == 0)
    {
LABEL_51:
      if (v17.i8[15])
      {
        goto LABEL_68;
      }

      goto LABEL_35;
    }

LABEL_67:
    v14[7] = 95;
    if (v17.i8[15])
    {
LABEL_68:
      v14[8] = 95;
    }

LABEL_35:
    v14 += 16;
    v16 -= 16;
    if (!v16)
    {
      if (v5 == v10)
      {
        goto LABEL_70;
      }

      if ((v5 & 8) == 0)
      {
        v9 = v4 + v10;
        goto LABEL_73;
      }

LABEL_13:
      v9 = v4 + (v5 & 0xFFFFFFFFFFFFFFF8);
      v11 = v10 - (v5 & 0xFFFFFFFFFFFFFFF8);
      v12 = v4 + v10 + 3;
      while (2)
      {
        v13 = vceq_s8(*(v12 - 3), 0x3A3A3A3A3A3A3A3ALL);
        if (v13.i8[0])
        {
          *(v12 - 3) = 95;
          if (v13.i8[1])
          {
            goto LABEL_25;
          }

LABEL_17:
          if ((v13.i8[2] & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_26:
          *(v12 - 1) = 95;
          if (v13.i8[3])
          {
            goto LABEL_27;
          }

LABEL_19:
          if ((v13.i8[4] & 1) == 0)
          {
            goto LABEL_20;
          }

LABEL_28:
          v12[1] = 95;
          if (v13.i8[5])
          {
            goto LABEL_29;
          }

LABEL_21:
          if ((v13.i8[6] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_30:
          v12[3] = 95;
          if (v13.i8[7])
          {
LABEL_31:
            v12[4] = 95;
          }
        }

        else
        {
          if ((v13.i8[1] & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_25:
          *(v12 - 2) = 95;
          if (v13.i8[2])
          {
            goto LABEL_26;
          }

LABEL_18:
          if ((v13.i8[3] & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_27:
          *v12 = 95;
          if (v13.i8[4])
          {
            goto LABEL_28;
          }

LABEL_20:
          if ((v13.i8[5] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_29:
          v12[2] = 95;
          if (v13.i8[6])
          {
            goto LABEL_30;
          }

LABEL_22:
          if (v13.i8[7])
          {
            goto LABEL_31;
          }
        }

        v12 += 8;
        v11 += 8;
        if (!v11)
        {
          if (v5 != (v5 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_73;
          }

LABEL_70:
          sub_27139AAF0(a1 + 24, v19);
          sub_271390BA0(a2, &v20, v19);
        }

        continue;
      }
    }
  }
}

void sub_271397954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_2714FBE4C(va);
  sub_271181F68(va1);
  if (v4)
  {
    if (v5 < 0)
    {
      operator delete(v3);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_271397988(void *a1, uint64_t a2, char **a3)
{
  v51 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  v5 = *a3;
  v6 = a3[1];
  v39[0] = a1 + 1;
  LOBYTE(v39[1]) = 0;
  if (v6 != v5)
  {
    if (((v6 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  v7 = *(a2 + 8);
  v9 = *v7;
  v8 = v7[1];
  memset(__p, 0, sizeof(__p));
  v10 = v8 - v9;
  if (v10)
  {
    if (0xCCCCCCCCCCCCCCCDLL * (v10 >> 3) <= 0x1C71C71C71C71C7)
    {
      *&v41 = __p;
      operator new();
    }

    sub_271135560();
  }

  v11 = a1;
  v12 = *v7;
  v13 = v7[1];
  if (*v7 != v13)
  {
    do
    {
      sub_2713973EC(v39, v12, a3);
      v14 = __p[1];
      if (__p[1] >= __p[2])
      {
        v20 = 0x8E38E38E38E38E39 * ((__p[1] - __p[0]) >> 4) + 1;
        if (v20 > 0x1C71C71C71C71C7)
        {
          sub_271135560();
        }

        if (0x1C71C71C71C71C72 * ((__p[2] - __p[0]) >> 4) > v20)
        {
          v20 = 0x1C71C71C71C71C72 * ((__p[2] - __p[0]) >> 4);
        }

        if (0x8E38E38E38E38E39 * ((__p[2] - __p[0]) >> 4) >= 0xE38E38E38E38E3)
        {
          v21 = 0x1C71C71C71C71C7;
        }

        else
        {
          v21 = v20;
        }

        v37 = __p;
        if (v21)
        {
          if (v21 <= 0x1C71C71C71C71C7)
          {
            operator new();
          }

          sub_2711270EC();
        }

        v22 = 16 * ((__p[1] - __p[0]) >> 4);
        v35[0] = 0;
        v35[1] = v22;
        v36 = v22;
        *v22 = *v39;
        *(v22 + 16) = v40;
        v39[0] = 0;
        v39[1] = 0;
        v40 = 0;
        *(v22 + 32) = v41;
        *(v22 + 48) = v42;
        v42 = 0;
        v41 = 0uLL;
        v23 = v45;
        *(v22 + 56) = v43;
        *(v22 + 64) = 0;
        *(v22 + 80) = -1;
        if (v23 != -1)
        {
          v38 = v22 + 64;
          (off_288131598[v23])(&v38, v44);
          *(v22 + 80) = v23;
        }

        v24 = v46;
        *(v22 + 112) = 0;
        *(v22 + 88) = v24;
        *(v22 + 104) = v47;
        v47 = 0;
        v46 = 0uLL;
        *(v22 + 136) = 0;
        if (v50 == 1)
        {
          *(v22 + 112) = v48;
          *(v22 + 128) = v49;
          v49 = 0;
          v48 = 0uLL;
          *(v22 + 136) = 1;
        }

        *&v36 = v22 + 144;
        v25 = (v22 + __p[0] - __p[1]);
        sub_2713987DC(__p, __p[0], __p[1], v25);
        v26 = __p[0];
        __p[0] = v25;
        v27 = v36;
        *&__p[1] = v36;
        if (v26)
        {
          v33 = v36;
          operator delete(v26);
          v27 = v33;
        }

        __p[1] = v27;
        if (v50 == 1)
        {
LABEL_33:
          if (SHIBYTE(v49) < 0)
          {
            operator delete(v48);
          }
        }
      }

      else
      {
        v15 = *v39;
        *(__p[1] + 2) = v40;
        *v14 = v15;
        v39[1] = 0;
        v40 = 0;
        v39[0] = 0;
        v16 = v42;
        v14[2] = v41;
        *(v14 + 6) = v16;
        v42 = 0;
        v41 = 0uLL;
        v17 = v43;
        *(v14 + 64) = 0;
        *(v14 + 14) = v17;
        *(v14 + 20) = -1;
        v18 = v45;
        if (v45 != -1)
        {
          v35[0] = v14 + 4;
          (off_288131598[v45])(v35, v44);
          *(v14 + 20) = v18;
        }

        *(v14 + 112) = 0;
        *(v14 + 11) = 0;
        *(v14 + 12) = 0;
        *(v14 + 13) = 0;
        *(v14 + 88) = v46;
        *(v14 + 13) = v47;
        v46 = 0uLL;
        v47 = 0;
        *(v14 + 136) = 0;
        if (v50 == 1)
        {
          v19 = v48;
          *(v14 + 16) = v49;
          v14[7] = v19;
          v49 = 0;
          v48 = 0uLL;
          *(v14 + 136) = 1;
        }

        __p[1] = v14 + 9;
        if (v50 == 1)
        {
          goto LABEL_33;
        }
      }

      v28 = v46;
      if (v46)
      {
        v29 = *(&v46 + 1);
        v30 = v46;
        if (*(&v46 + 1) != v46)
        {
          do
          {
            v31 = *(v29 - 8);
            if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v31->__on_zero_shared)(v31);
              std::__shared_weak_count::__release_weak(v31);
            }

            v29 -= 16;
          }

          while (v29 != v28);
          v30 = v46;
        }

        *(&v46 + 1) = v28;
        operator delete(v30);
      }

      v11 = a1;
      if (v45 != -1)
      {
        (off_288131588[v45])(v35, v44);
      }

      v45 = -1;
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
        if (SHIBYTE(v40) < 0)
        {
LABEL_50:
          operator delete(v39[0]);
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_50;
      }

      v12 += 5;
    }

    while (v12 != v13);
  }

  *(v11 + 2) = *__p;
  v11[6] = __p[2];
  return v11;
}

void sub_271397F6C(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, char *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_271398788(va1);
  sub_271398728(va);
  sub_271347F18(a7);
  _Unwind_Resume(a1);
}

void sub_271397F90(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271398728(va);
  sub_271347F18(a7);
  _Unwind_Resume(a1);
}

void sub_27139801C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40) - *(a1 + 32);
  if (v3)
  {
    if (0x8E38E38E38E38E39 * (v3 >> 4) < 0x666666666666667)
    {
      operator new();
    }

    sub_271135560();
  }

  v4 = *(a1 + 32);
  if (v4 != *(a1 + 40))
  {
    sub_2713974FC(v4, &v5);
  }

  *a2 = &unk_288131488;
  operator new();
}

void sub_2713983EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_271398400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, char *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_271396310(va1);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

void sub_27139841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_271398430(va);
  _Unwind_Resume(a1);
}

char **sub_271398430(char **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  do
  {
    v5 = *(v3 - 1);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v6 = *(v3 - 4);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *(v3 - 4);
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

LABEL_4:
    v3 -= 40;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

uint64_t sub_271398534(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6 != -1)
  {
    (off_288131588[v6])(&v8, a1 + 40);
  }

  *(a1 + 56) = -1;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_271398630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2713986AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

char **sub_271398728(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1[1]; i != v2; sub_271398998(i))
    {
      i -= 144;
    }

    a1[1] = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_271398788(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 144;
    sub_271398998(v3 - 144);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2713987DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2 + 64;
    do
    {
      v8 = *(v7 - 64);
      *(v4 + 16) = *(v7 - 48);
      *v4 = v8;
      *(v7 - 56) = 0;
      *(v7 - 48) = 0;
      *(v7 - 64) = 0;
      v9 = *(v7 - 32);
      *(v4 + 48) = *(v7 - 16);
      *(v4 + 32) = v9;
      *(v7 - 24) = 0;
      *(v7 - 16) = 0;
      *(v7 - 32) = 0;
      v10 = *(v7 - 8);
      *(v4 + 64) = 0;
      *(v4 + 56) = v10;
      *(v4 + 80) = -1;
      v11 = *(v7 + 16);
      if (v11 != -1)
      {
        v15 = v4 + 64;
        (off_288131598[v11])(&v15, v7);
        *(v4 + 80) = v11;
      }

      v12 = v7 - 64;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 88) = *(v7 + 24);
      *(v4 + 104) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v4 + 112) = 0;
      *(v4 + 136) = 0;
      if (*(v7 + 72) == 1)
      {
        v13 = *(v7 + 48);
        *(v4 + 128) = *(v7 + 64);
        *(v4 + 112) = v13;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v7 + 48) = 0;
        *(v4 + 136) = 1;
      }

      v4 = v14 + 144;
      v14 += 144;
      v7 += 144;
    }

    while (v12 + 144 != a3);
    do
    {
      sub_271398998(v6);
      v6 += 144;
    }

    while (v6 != a3);
  }
}

void sub_27139895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271398C10(va);
  _Unwind_Resume(a1);
}

__n128 sub_271398970(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  *a2 = 0uLL;
  return result;
}

__n128 sub_271398984(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  *a2 = 0uLL;
  return result;
}

void sub_271398998(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 80);
  if (v6 != -1)
  {
    (off_288131588[v6])(&v7, a1 + 64);
  }

  *(a1 + 80) = -1;
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(*a1);
    return;
  }

  operator delete(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    goto LABEL_19;
  }
}

uint64_t sub_271398ADC(uint64_t a1)
{
  if (*(a1 + 136) == 1 && *(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 88);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 88);
    }

    *(a1 + 96) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 80);
  if (v6 != -1)
  {
    (off_288131588[v6])(&v8, a1 + 64);
  }

  *(a1 + 80) = -1;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_19:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_19;
  }

  return a1;
}

uint64_t sub_271398C10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 144;
      sub_271398998(v3);
    }
  }

  return a1;
}

uint64_t sub_271398C6C(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_271135560();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v7 = *a2;
  *a2 = 0uLL;
  v8 = *(a2 + 24);
  *(a2 + 24) = 0uLL;
  v9 = *a1;
  v10 = a1[1];
  v11 = 40 * v2 - (v10 - *a1);
  *v6 = v7;
  *(v6 + 16) = off_28810C940;
  *(v6 + 24) = v8;
  v12 = 40 * v2 + 40;
  if (v10 != v9)
  {
    v13 = 40 * v2 - 8 * ((v10 - v9) >> 3) + 16;
    v14 = v9;
    v15 = v11;
    do
    {
      *v15 = *v14;
      *v14 = 0;
      v14[1] = 0;
      *(v15 + 16) = off_28810C940;
      *(v15 + 24) = *(v14 + 3);
      v14[3] = 0;
      v14[4] = 0;
      v14 += 5;
      v15 += 40;
      v13 += 40;
    }

    while (v14 != v10);
    while (1)
    {
      v16 = v9[4];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v17 = v9[1];
        if (v17)
        {
LABEL_18:
          if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }
        }
      }

      else
      {
        v17 = v9[1];
        if (v17)
        {
          goto LABEL_18;
        }
      }

      v9 += 5;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = v12;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v12;
}

void sub_271399158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_guard_abort(&qword_28087B7E8);
  sub_27112F828(&a10);
  *v23 = v24;
  sub_271399744(v23);
  _Unwind_Resume(a1);
}

void *sub_271399200(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_2713992C0(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EB80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_271399394(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B7F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087B7F0))
    {
      sub_271399804();
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(&xmmword_28087B7F8, "{", __p, ",", v2 + 24, "}");
}

void sub_271399488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713994A4(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 6;
}

void sub_271399520(std::string *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = "DictionaryData must only contain Number, Boolean, String, Array or Dictionary values, but contains ";
  v4[1] = 99;
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) == 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if ((v2 & 0x80u) != 0)
  {
    v2 = a2[1];
  }

  v4[2] = v3;
  v4[3] = v2;
  sub_271131230(v4, &v5, 0, 0, a1);
}

void *sub_2713995B0(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271399670(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  a1[1] = &unk_28812EB80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void *sub_271399744(void *a1)
{
  *a1 = &unk_28812EB38;
  sub_271134CBC((a1 + 6));
  result = a1;
  a1[1] = &unk_28812EB80;
  v3 = a1[3];
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_271399804()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[23] = 16;
  strcpy(v0, "viz::PackageData");
  operator new();
}

void sub_271399A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

BOOL sub_271399AF0(void *a1, void *a2)
{
  if (!sub_27139E65C(&v30, a1, a2))
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];
  v6 = *(v4 + 24);
  v7 = *(v5 + 24);
  if (v6 != v7 || v6 == 0)
  {
    if (v6 != v7)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(v4 + 23);
    if (v10 >= 0)
    {
      v11 = *(v4 + 23);
    }

    else
    {
      v11 = *(v4 + 8);
    }

    v12 = *(v5 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v5 + 8);
    }

    if (v11 != v12)
    {
      return 0;
    }

    v14 = v10 >= 0 ? a1[4] : *v4;
    v15 = v13 >= 0 ? a2[4] : *v5;
    if (memcmp(v14, v15, v11))
    {
      return 0;
    }
  }

  v16 = a1[5];
  v17 = a2[5];
  v18 = *(v17 + 24);
  v19 = *(v16 + 24);
  result = v19 == v18;
  if (v19 != v18 || v19 == 0)
  {
    return result;
  }

  v22 = *v16;
  v21 = v16[1];
  v23 = *v17;
  if (v21 - *v16 != v17[1] - *v17)
  {
    return 0;
  }

  if (v22 != v21)
  {
    while (1)
    {
      v24 = *(v22 + 23);
      if (v24 >= 0)
      {
        v25 = *(v22 + 23);
      }

      else
      {
        v25 = *(v22 + 8);
      }

      v26 = *(v23 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v23 + 8);
      }

      if (v25 != v26)
      {
        break;
      }

      v28 = v24 >= 0 ? v22 : *v22;
      v29 = v27 >= 0 ? v23 : *v23;
      if (memcmp(v28, v29, v25))
      {
        break;
      }

      v22 += 24;
      v23 += 24;
      result = 1;
      if (v22 == v21)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_271399C9C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_271127178((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_271127178((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_27139E814(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_271399E38(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_271399EB0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = result[16];
  *a2 = *(result + 1);
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = (a2 + 16);
  *(a2 + 40) = 0;
  if (result[48] == 1)
  {
    if (result[47] < 0)
    {
      result = sub_271127178(v5, *(result + 3), *(result + 4));
    }

    else
    {
      *v5 = *(result + 24);
      *(a2 + 32) = *(result + 5);
    }

    *(a2 + 40) = 1;
  }

  if (v2[72] == 1)
  {
    v6 = v2[64];
    *(a2 + 48) = *(v2 + 7);
    *(a2 + 56) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 48) = 0;
  }

  *(a2 + 72) = 0;
  *(a2 + 64) = v7;
  *(a2 + 96) = 0;
  if (v2[104] == 1)
  {
    if (v2[103] < 0)
    {
      result = sub_271127178((a2 + 72), *(v2 + 10), *(v2 + 11));
    }

    else
    {
      *(a2 + 72) = *(v2 + 5);
      *(a2 + 88) = *(v2 + 12);
    }

    *(a2 + 96) = 1;
  }

  if (v2[136])
  {
    if (v2[135] < 0)
    {
      result = sub_271127178(v12, *(v2 + 14), *(v2 + 15));
    }

    else
    {
      v12[0] = *(v2 + 7);
      *&v12[1] = *(v2 + 16);
    }

    v10 = *(&v12[0] + 1);
    v11 = *(v12 + 15);
    *(a2 + 112) = *&v12[0];
    *(a2 + 120) = v10;
    *(a2 + 127) = v11;
    *(a2 + 135) = BYTE7(v12[1]);
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    if (v2[168] != 1)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 19) - *(v2 + 18)) >> 3);
    memset(v12, 0, 24);
    sub_27139E20C(v12, v8);
    result = sub_27139E2F4(*(v2 + 18), *(v2 + 19), v12, sub_2714FB29C);
    v9 = *&v12[1];
    *(a2 + 176) = v12[0];
    *(a2 + 192) = v9;
    *(a2 + 200) = 1;
    return result;
  }

  *(a2 + 112) = 0;
  *(a2 + 160) = 0;
  if (v2[168] == 1)
  {
    goto LABEL_18;
  }

LABEL_21:
  *(a2 + 176) = 0;
  *(a2 + 200) = 0;
  return result;
}

void sub_27139A0A4(_Unwind_Exception *exception_object)
{
  if (v1[96] == 1 && v1[95] < 0)
  {
    operator delete(*v3);
  }

  if (v1[40] == 1 && v1[39] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27139A124(uint64_t a1, char **a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_27139A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_27139A22C(v10);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27139A22C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    (off_288131650[v2])(&v4, a1);
  }

  *(a1 + 16) = -1;
  return a1;
}

void sub_27139A288(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v2 == v3)
  {
LABEL_33:
    sub_2714C3340((a1 + 8), v21);
    sub_27139601C(v21);
  }

  v4 = (a1 + 8);
  while (1)
  {
    v6 = *v2;
    v5 = v2[1];
    v24 = *v2;
    v25 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = (*(*v6 + 16))(v6);
    v9 = *(a1 + 31);
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v2 += 2;
    if (v2 == v3)
    {
      goto LABEL_33;
    }
  }

  v10 = (a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (memcmp(v7, v10, v9))
  {
    goto LABEL_11;
  }

  (*(*v6 + 24))(&v22, v6, *(a1 + 32));
  v11 = v22;
  if (!v22)
  {
    if (*(a1 + 31) < 0)
    {
      sub_271127178(&v18, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v18 = *v4;
      v19 = *(a1 + 24);
    }

    v20 = *(a1 + 32);
    sub_2714C35E8(&v18, v21);
    sub_27139601C(v21);
  }

  v12 = *(a1 + 56);
  if (v12 != -1)
  {
    if (!v12)
    {
      v13 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(a1 + 48);
      *(a1 + 40) = v11;
      *(a1 + 48) = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_26;
    }

    (off_288131650[v12])(v21, a1 + 40);
    v11 = v22;
  }

  *(a1 + 56) = -1;
  v15 = v23;
  *(a1 + 40) = v11;
  *(a1 + 48) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
LABEL_26:
  v16 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27139A584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_27112F828(v17 - 112);
  sub_27112F828(v17 - 96);
  _Unwind_Resume(a1);
}

void sub_27139A5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27139A608(uint64_t a1, char **a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_27139A6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_2711B5360(&a9);
  sub_27139A22C(v10);
  if (*(v9 + 31) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27139A710(uint64_t a1, uint64_t a2, char **a3)
{
  sub_2714FCC00(a2);
  if (SHIBYTE(v14) < 0)
  {
    sub_271127178((a1 + 8), __p[0], __p[1]);
    v6 = SHIBYTE(v14);
    *(a1 + 32) = v15;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 8) = *__p;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
  }

  sub_2714FCD68(a2);
  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_2714FCC00(a2);
    sub_27139EAE4(&v16, __p);
    std::logic_error::logic_error(exception, &v16);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v7 = *a3;
  v8 = a3[1];
  __p[0] = (a1 + 64);
  LOBYTE(__p[1]) = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_27139A8C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      sub_27112F828(&a10);
      if (*(v24 + 31) < 0)
      {
        operator delete(*(v24 + 8));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

uint64_t sub_27139A974(uint64_t a1, __int128 *a2, uint64_t a3, char **a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_271127178((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v8;
  }

  v9 = *(a2 + 6);
  *(a1 + 40) = 0;
  *(a1 + 32) = v9;
  *(a1 + 56) = -1;
  v10 = *(a3 + 16);
  if (v10 != -1)
  {
    v14 = a1 + 40;
    (off_288131660[v10])(&v14, a3);
    *(a1 + 56) = v10;
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v11 = *a4;
  v12 = a4[1];
  v14 = a1 + 64;
  v15 = 0;
  if (v12 != v11)
  {
    if (((v12 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_271135560();
  }

  return a1;
}

void sub_27139AAB4(_Unwind_Exception *a1)
{
  sub_27139EA48(v2);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27139AAF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 56) > 1u)
  {
LABEL_11:
    sub_2711308D4();
  }

  v3 = *(result + 40);
  v2 = *(result + 48);
  if (!v2 || (atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_10:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = off_28810C940;
    return result;
  }

  v5 = result;
  v6 = a2;
  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  result = v5;
  a2 = v6;
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(result + 56))
  {
    goto LABEL_11;
  }

  v4 = *(**(result + 40) + 48);

  return v4();
}

void sub_27139ABFC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  if (v2 == v3)
  {
LABEL_33:
    sub_2714C3340((a1 + 8), v21);
    sub_27139601C(v21);
  }

  v4 = (a1 + 8);
  while (1)
  {
    v6 = *v2;
    v5 = v2[1];
    v24 = *v2;
    v25 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = (*(*v6 + 16))(v6);
    v9 = *(a1 + 31);
    if ((v9 & 0x8000000000000000) == 0)
    {
      break;
    }

    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v2 += 2;
    if (v2 == v3)
    {
      goto LABEL_33;
    }
  }

  v10 = (a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (memcmp(v7, v10, v9))
  {
    goto LABEL_11;
  }

  (*(*v6 + 24))(&v22, v6, *(a1 + 32));
  v11 = v22;
  if (!v22)
  {
    if (*(a1 + 31) < 0)
    {
      sub_271127178(&v18, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v18 = *v4;
      v19 = *(a1 + 24);
    }

    v20 = *(a1 + 32);
    sub_2714C35E8(&v18, v21);
    sub_27139601C(v21);
  }

  v12 = *(a1 + 56);
  if (v12 != -1)
  {
    if (!v12)
    {
      v13 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = *(a1 + 48);
      *(a1 + 40) = v11;
      *(a1 + 48) = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_26;
    }

    (off_288131650[v12])(v21, a1 + 40);
    v11 = v22;
  }

  *(a1 + 56) = -1;
  v15 = v23;
  *(a1 + 40) = v11;
  *(a1 + 48) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
LABEL_26:
  v16 = v23;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_27139AEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_27112F828(v17 - 112);
  sub_27112F828(v17 - 96);
  _Unwind_Resume(a1);
}

void sub_27139AF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27139B104(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(qword_28087B838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_28087B838))
  {
    operator new();
  }

  v2 = qword_28087B850;
  if (!qword_28087B850)
  {
    goto LABEL_9;
  }

  v3 = &qword_28087B850;
  do
  {
    if (*(v2 + 32) >= a1)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a1));
  }

  while (v2);
  if (v3 == &qword_28087B850 || *(v3 + 8) > a1)
  {
LABEL_9:
    v3 = &qword_28087B850;
  }

  return v3 + 5;
}

void sub_27139B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_27139B4E8(v21);
  sub_27139B4E8(v22 - 104);
  sub_271233D2C(&a11);
  sub_27112F828(&a20);
  sub_27112F828(&a9);
  sub_271233D2C(&a17);
  sub_27112F828(va);
  sub_27112F828(&a15);
  __cxa_guard_abort(qword_28087B838);
  _Unwind_Resume(a1);
}

void *sub_27139B414(void *result, void *a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 60))
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

uint64_t sub_27139B4E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_27139B59C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[0] = a1;
  v55[1] = a2;
  LOBYTE(v42) = 0;
  v54 = 0;
  v41[0] = &unk_2881316B0;
  v41[1] = &v42;
  v41[2] = v55;
  sub_27184A384(v41, &v30);
  if (v40 == 1)
  {
    v18 = v53;
    if (v53 == 1)
    {
      v4 = v42;
      v42 = 0uLL;
      v7 = v4;
      *v8 = v43;
    }

    else
    {
      v7 = v42;
      LOBYTE(v8[0]) = 0;
      v17 = 0;
      if (v52 == 1)
      {
        v10 = 0;
        if (v45 == 1)
        {
          *v8 = v43;
          v9 = v44;
          v44 = 0;
          v43 = 0uLL;
          v10 = 1;
        }

        LOBYTE(v11[0]) = 0;
        v16 = 0;
        if (v51 == 1)
        {
          v12 = v47;
          *v11 = v46;
          v46 = 0uLL;
          v13 = v48;
          *v14 = v49;
          v15 = v50;
          v47 = 0;
          v49 = 0uLL;
          v50 = 0;
          v16 = 1;
        }

        v17 = 1;
      }
    }

    goto LABEL_30;
  }

  v19 = v30;
  LOBYTE(__p) = 0;
  v29 = 0;
  if (v39 == 1)
  {
    sub_27112F6CC(&__p, &v31);
    v29 = 1;
    v7 = v19;
    LOBYTE(v8[0]) = 0;
    v10 = 0;
    if (v22 == 1)
    {
      *v8 = __p;
      v9 = v21;
      v21 = 0;
      __p = 0uLL;
      v10 = 1;
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v17 = 1;
        v18 = 0;
        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = v24;
    *v11 = v23;
    v23 = 0uLL;
    v13 = v25;
    *v14 = v26;
    v15 = v27;
    v24 = 0;
    v26 = 0uLL;
    v27 = 0;
    v16 = 1;
    v17 = 1;
    v18 = 0;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = v30;
    LOBYTE(v8[0]) = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  if ((v40 & 1) == 0 && v39 == 1)
  {
    if (v38 == 1)
    {
      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }
  }

LABEL_30:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      v5 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v52 == 1)
    {
      if (v51 == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }
    }
  }

  sub_27139F114(a3, &v7);
  if (v18 == 1)
  {
    v6 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else if (v17 == 1)
  {
    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_27139BA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  sub_27112D66C(v39 + 16);
  sub_27112E024(va);
  if (*(v40 - 64) == 1)
  {
    sub_27113827C(v40 - 192);
  }

  _Unwind_Resume(a1);
}

void sub_27139BA44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62[0] = a2;
  v62[1] = a1;
  v50[0] = 0;
  v61 = 0;
  v49[0] = &unk_288131750;
  v49[1] = v50;
  v49[2] = v62;
  sub_27184A384(v49, v36);
  if (v48 == 1)
  {
    v24 = v60;
    if (v60 == 1)
    {
      *v14 = off_28810C940;
      *&v14[8] = *&v50[8];
      *&v50[8] = 0;
      *&v50[16] = 0;
    }

    else
    {
      *v14 = *v50;
      v14[16] = 0;
      v23 = 0;
      if (v59 == 1)
      {
        v16 = 0;
        if (v52 == 1)
        {
          *&v14[16] = *&v50[16];
          v15 = v51;
          *&v50[24] = 0;
          v51 = 0;
          *&v50[16] = 0;
          v16 = 1;
        }

        LOBYTE(v17[0]) = 0;
        v22 = 0;
        if (v58 == 1)
        {
          v18 = v54;
          *v17 = v53;
          v53 = 0uLL;
          v19 = v55;
          *v20 = v56;
          v21 = v57;
          v54 = 0;
          v56 = 0uLL;
          v57 = 0;
          v22 = 1;
        }

        v23 = 1;
      }
    }

    goto LABEL_30;
  }

  v25 = *v36;
  LOBYTE(__p) = 0;
  v35 = 0;
  if (v47 == 1)
  {
    sub_27112F6CC(&__p, &v37);
    v35 = 1;
    *v14 = v25;
    v14[16] = 0;
    v16 = 0;
    if (v28 == 1)
    {
      *&v14[16] = __p;
      v15 = v27;
      v27 = 0;
      __p = 0uLL;
      v16 = 1;
      LOBYTE(v17[0]) = 0;
      v22 = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      LOBYTE(v17[0]) = 0;
      v22 = 0;
      if ((v34 & 1) == 0)
      {
LABEL_7:
        v23 = 1;
        v24 = 0;
        if (!v28)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    v18 = v30;
    *v17 = v29;
    v29 = 0uLL;
    v19 = v31;
    *v20 = v32;
    v21 = v33;
    v30 = 0;
    v32 = 0uLL;
    v33 = 0;
    v22 = 1;
    v23 = 1;
    v24 = 0;
    if (v28)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v14 = *v36;
    v14[16] = 0;
    v23 = 0;
    v24 = 0;
  }

LABEL_20:
  if ((v48 & 1) == 0 && v47 == 1)
  {
    if (v46 == 1)
    {
      if (v45 < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40);
      }
    }

    if (v39 == 1 && SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }
  }

LABEL_30:
  if (v61 == 1)
  {
    if (v60 == 1)
    {
      v4 = *&v50[16];
      if (*&v50[16] && !atomic_fetch_add((*&v50[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    else if (v59 == 1)
    {
      if (v58 == 1)
      {
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56);
        }

        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53);
        }
      }

      if (v52 == 1 && SHIBYTE(v51) < 0)
      {
        operator delete(*&v50[16]);
      }
    }
  }

  v5 = v24;
  if (v24 == 1)
  {
    *a3 = off_28810C940;
    *(a3 + 8) = *&v14[8];
    *&v14[8] = 0;
    *&v14[16] = 0;
    *(a3 + 120) = v5;
    goto LABEL_93;
  }

  if (*&v14[8] != &off_288132220)
  {
    sub_271847E00(v14, &v25);
    if (SBYTE7(__p) < 0)
    {
      sub_271127178(v36, v25, *(&v25 + 1));
    }

    else
    {
      *v36 = v25;
      *&v37 = __p;
    }

    BYTE8(v37) = 1;
    LOBYTE(v38) = 0;
    v43 = 0;
    v44 = 1;
    sub_27139F524(3, v36, v50);
    *a3 = *v50;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    if (v59 != 1)
    {
      *(a3 + 120) = 0;
      goto LABEL_67;
    }

    *(a3 + 40) = 0;
    v8 = v52;
    if (v52 == 1)
    {
      *(a3 + 16) = *&v50[16];
      *(a3 + 32) = v51;
      *&v50[24] = 0;
      v51 = 0;
      *&v50[16] = 0;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v58 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v9 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v58 & 1) == 0)
      {
LABEL_60:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v8)
        {
          goto LABEL_67;
        }

        goto LABEL_65;
      }
    }

    v10 = v55;
    *(v9 + 16) = v54;
    *v9 = v53;
    v53 = 0uLL;
    *(a3 + 72) = v10;
    *(a3 + 80) = v56;
    *(a3 + 96) = v57;
    v54 = 0;
    v56 = 0uLL;
    v57 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v8)
    {
      goto LABEL_67;
    }

LABEL_65:
    if (SHIBYTE(v51) < 0)
    {
      operator delete(*&v50[16]);
    }

LABEL_67:
    if (v44 == 1)
    {
      if (v43 == 1)
      {
        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(v38);
        }
      }

      if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
      {
        operator delete(v36[0]);
      }
    }

    if (SBYTE7(__p) < 0)
    {
      v11 = v25;
LABEL_92:
      operator delete(v11);
      goto LABEL_93;
    }

    goto LABEL_93;
  }

  LOBYTE(v36[0]) = 0;
  v44 = 0;
  if (v23 == 1)
  {
    sub_27112F6CC(v36, &v14[16]);
    v44 = 1;
  }

  sub_27139F524(v14[0], v36, v50);
  *a3 = *v50;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v59 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_83;
  }

  *(a3 + 40) = 0;
  v6 = v52;
  if (v52 == 1)
  {
    *(a3 + 16) = *&v50[16];
    *(a3 + 32) = v51;
    *&v50[24] = 0;
    v51 = 0;
    *&v50[16] = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = 0;
    v7 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v58 & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_80:
    v12 = v55;
    *(v7 + 16) = v54;
    *v7 = v53;
    v53 = 0uLL;
    *(a3 + 72) = v12;
    *(a3 + 80) = v56;
    *(a3 + 96) = v57;
    v54 = 0;
    v56 = 0uLL;
    v57 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v6)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  *(a3 + 48) = 0;
  v7 = a3 + 48;
  *(a3 + 104) = 0;
  if (v58)
  {
    goto LABEL_80;
  }

LABEL_54:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v6)
  {
    goto LABEL_83;
  }

LABEL_81:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(*&v50[16]);
  }

LABEL_83:
  if (v44 == 1)
  {
    if (v43 == 1)
    {
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v38);
      }
    }

    if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
    {
      v11 = v36[0];
      goto LABEL_92;
    }
  }

LABEL_93:
  if (v24 == 1)
  {
    v13 = *&v14[16];
    if (*&v14[16])
    {
      if (!atomic_fetch_add((*&v14[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }

  else if (v23 == 1)
  {
    if (v22 == 1)
    {
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }

    if (v16 == 1 && SHIBYTE(v15) < 0)
    {
      operator delete(*&v14[16]);
    }
  }
}

void sub_27139C250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  sub_27112D66C(va);
  sub_271235250(&a9);
  _Unwind_Resume(a1);
}

void sub_27139C26C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_271235250(&a9);
    _Unwind_Resume(a1);
  }

  sub_271235250(&a9);
  _Unwind_Resume(a1);
}

void sub_27139C308(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55[0] = a1;
  v55[1] = a2;
  LOBYTE(v42) = 0;
  v54 = 0;
  v41[0] = &unk_2881317A0;
  v41[1] = &v42;
  v41[2] = v55;
  sub_27184A384(v41, &v30);
  if (v40 == 1)
  {
    v18 = v53;
    if (v53 == 1)
    {
      v4 = v42;
      v42 = 0uLL;
      v7 = v4;
      *v8 = v43;
    }

    else
    {
      v7 = v42;
      LOBYTE(v8[0]) = 0;
      v17 = 0;
      if (v52 == 1)
      {
        v10 = 0;
        if (v45 == 1)
        {
          *v8 = v43;
          v9 = v44;
          v44 = 0;
          v43 = 0uLL;
          v10 = 1;
        }

        LOBYTE(v11[0]) = 0;
        v16 = 0;
        if (v51 == 1)
        {
          v12 = v47;
          *v11 = v46;
          v46 = 0uLL;
          v13 = v48;
          *v14 = v49;
          v15 = v50;
          v47 = 0;
          v49 = 0uLL;
          v50 = 0;
          v16 = 1;
        }

        v17 = 1;
      }
    }

    goto LABEL_30;
  }

  v19 = v30;
  LOBYTE(__p) = 0;
  v29 = 0;
  if (v39 == 1)
  {
    sub_27112F6CC(&__p, &v31);
    v29 = 1;
    v7 = v19;
    LOBYTE(v8[0]) = 0;
    v10 = 0;
    if (v22 == 1)
    {
      *v8 = __p;
      v9 = v21;
      v21 = 0;
      __p = 0uLL;
      v10 = 1;
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
LABEL_7:
        v17 = 1;
        v18 = 0;
        if (!v22)
        {
          goto LABEL_20;
        }

LABEL_18:
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v11[0]) = 0;
      v16 = 0;
      if ((v28 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = v24;
    *v11 = v23;
    v23 = 0uLL;
    v13 = v25;
    *v14 = v26;
    v15 = v27;
    v24 = 0;
    v26 = 0uLL;
    v27 = 0;
    v16 = 1;
    v17 = 1;
    v18 = 0;
    if (v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = v30;
    LOBYTE(v8[0]) = 0;
    v17 = 0;
    v18 = 0;
  }

LABEL_20:
  if ((v40 & 1) == 0 && v39 == 1)
  {
    if (v38 == 1)
    {
      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && v32 < 0)
    {
      operator delete(v31);
    }
  }

LABEL_30:
  if (v54 == 1)
  {
    if (v53 == 1)
    {
      v5 = *(&v42 + 1);
      if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else if (v52 == 1)
    {
      if (v51 == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }
    }
  }

  sub_27139F114(a3, &v7);
  if (v18 == 1)
  {
    v6 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      if (!atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else if (v17 == 1)
  {
    if (v16 == 1)
    {
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (v10 == 1 && SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }
}