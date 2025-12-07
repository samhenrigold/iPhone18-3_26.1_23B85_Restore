void sub_10027A914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10027A9E0(int a1, double **a2, int *a3, int a4, void *a5, int *a6, int a7, int a8, uint64_t a9, __int128 *a10, unint64_t *a11)
{
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v12 = *(a3 + 3);
  if ((v12 & 0x8000000000000000) == 0)
  {
    a2 = &a2[3][3 * v12];
  }

  v13 = *a2;
  v14 = *(a6 + 3);
  v15 = (*a5 + 48 * *(a6 + 2));
  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = &v15[3][3 * v14];
  }

  v16 = a2[1];
  v17 = *v15;
  v124 = v15[1];
  v18 = *a3;
  v123 = *a6;
  v19 = *(a3 + 13);
  v20 = *(a3 + 8);
  v21 = &v13[2 * v20];
  v22 = 2 * *(a3 + 9);
  v117 = &v13[v22 + 2];
  v111 = v16;
  v112 = *a2;
  v113 = *a3;
  v120 = v19;
  if (2 * v20 == v22)
  {
    v36 = &v13[2 * v20];
    v37 = v21 + 2;
    if (v37 != v117)
    {
      goto LABEL_33;
    }

    return 1;
  }

  v23 = 0;
  v24 = v21 + 2;
  v126 = &v13[2 * v20];
  v25 = *(a3 + 8);
  while (1)
  {
    v27 = v20;
    v28 = *(a10 + 3) + (v24[1] - *(a10 + 1)) * *(a10 + 4);
    if (v28 >= 0.0)
    {
      v29 = 0.5;
    }

    else
    {
      v29 = -0.5;
    }

    sub_100274990(v28 + v29);
    v30 = *(a10 + 2) + (*v24 - *a10) * *(a10 + 4);
    if (v30 >= 0.0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = -0.5;
    }

    v32 = v30 + v31;
    sub_100274990(v30 + v31);
    v33 = ceil(v32);
    v34 = floor(v32);
    if (v32 >= 0.0)
    {
      v33 = v34;
    }

    v35 = v33;
    if (v18 == 1)
    {
      break;
    }

    if (v18 != -1)
    {
      v16 = v111;
      v13 = v112;
      v20 = v27;
      v36 = v126;
      v37 = v126 + 2;
      if (v126 + 2 != v117)
      {
        goto LABEL_33;
      }

      return 1;
    }

    v20 = v27;
    if (*(a6 + 6) >= v35)
    {
      v36 = v24 - 2;
      v120 += v23;
      v20 += v23;
      goto LABEL_28;
    }

LABEL_12:
    v26 = v24 + 2;
    ++v25;
    ++v19;
    ++v23;
    v21 = v24;
    v24 = v26;
    if (v26 == v117)
    {
      v36 = v26 - 2;
      v120 = v19;
      v20 = v25;
LABEL_28:
      v16 = v111;
      v13 = v112;
      v37 = v36 + 2;
      if (v36 + 2 != v117)
      {
        goto LABEL_33;
      }

      return 1;
    }
  }

  v20 = v27;
  if (*(a6 + 4) > v35)
  {
    goto LABEL_12;
  }

  v120 = v19;
  v20 = v25;
  v16 = v111;
  v13 = v112;
  v36 = v21;
  v37 = v21 + 2;
  if (v37 == v117)
  {
    return 1;
  }

LABEL_33:
  v38 = &v13[2 * (v36 != v13)];
  if (v37 != v16)
  {
    v38 = v37;
  }

  v39 = v38 != v13;
  v40 = v38 + 2;
  v41 = &v13[2 * v39];
  if (v40 == v16)
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  do
  {
    v127 = v20;
    v43 = *(a10 + 3) + (v36[1] - *(a10 + 1)) * *(a10 + 4);
    if (v43 >= 0.0)
    {
      v44 = 0.5;
    }

    else
    {
      v44 = -0.5;
    }

    sub_100274990(v43 + v44);
    v45 = *(a10 + 2) + (*v36 - *a10) * *(a10 + 4);
    if (v45 >= 0.0)
    {
      v46 = 0.5;
    }

    else
    {
      v46 = -0.5;
    }

    v47 = v45 + v46;
    sub_100274990(v45 + v46);
    v48 = ceil(v47);
    v49 = floor(v47);
    if (v47 >= 0.0)
    {
      v48 = v49;
    }

    v50 = v48;
    if (v113 == -1)
    {
      v51 = v124;
      v52 = a3;
      v53 = v123;
      v54 = v127;
      if (*(a6 + 4) > v50)
      {
        return 1;
      }
    }

    else
    {
      v51 = v124;
      v52 = a3;
      v53 = v123;
      v54 = v127;
      if (v113 == 1 && *(a6 + 6) < v50)
      {
        return 1;
      }
    }

    v55 = a10[1];
    v184 = *a10;
    v181[0] = v52;
    v181[1] = v54;
    v118 = v42;
    v119 = v36;
    v181[2] = v36;
    v181[3] = v37;
    v181[4] = v42;
    v56 = v13;
    v181[5] = v13;
    v181[6] = v16;
    v182 = 1;
    v183 = 0;
    v185 = v55;
    v58 = *(a6 + 8);
    v57 = *(a6 + 9);
    v59 = &v17[2 * v58];
    v186 = *(a10 + 4);
    v60 = &v17[2 * v57 + 2];
    v61 = v59 + 2;
    v62 = *(a6 + 13);
    if (v59 + 2 == v60)
    {
LABEL_82:
      v65 = &v17[2 * v58];
      v81 = v59 + 2;
      if (v81 != v60)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v63 = 0;
      v64 = *(a10 + 4);
      v65 = &v17[2 * v58];
      v66 = *(a6 + 13);
      v67 = v58;
      do
      {
        v69 = *(a10 + 3) + (v61[1] - *(a10 + 1)) * v64;
        if (v69 >= 0.0)
        {
          v70 = 0.5;
        }

        else
        {
          v70 = -0.5;
        }

        v71 = v69 + v70;
        v72 = 2 * (v71 >= 9.22337204e18);
        if (v71 <= -9.22337204e18)
        {
          v72 = 1;
        }

        if (v72 == 2)
        {
          goto LABEL_138;
        }

        if (v72 == 1)
        {
          goto LABEL_137;
        }

        v73 = *(a10 + 2) + (*v61 - *a10) * v64;
        if (v73 >= 0.0)
        {
          v74 = 0.5;
        }

        else
        {
          v74 = -0.5;
        }

        v75 = v73 + v74;
        v76 = 2 * (v75 >= 9.22337204e18);
        if (v75 <= -9.22337204e18)
        {
          v76 = 1;
        }

        if (v76 == 2)
        {
LABEL_138:
          exception = __cxa_allocate_exception(8uLL);
          exception->__vftable = 0;
          v110 = sub_1000D8810(exception);
        }

        if (v76 == 1)
        {
LABEL_137:
          v107 = __cxa_allocate_exception(8uLL);
          v107->__vftable = 0;
          v108 = sub_1000D87D8(v107);
        }

        v77 = ceil(v75);
        v78 = floor(v75);
        if (v75 >= 0.0)
        {
          v79 = v78;
        }

        else
        {
          v79 = v77;
        }

        v80 = v79;
        if (v53 == 1)
        {
          if (*(v52 + 4) <= v80)
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v53 != -1)
          {
            goto LABEL_82;
          }

          if (*(v52 + 6) >= v80)
          {
            v65 = v61 - 2;
            v62 += v63;
            v58 += v63;
            v81 = v61;
            if (v61 == v60)
            {
              goto LABEL_135;
            }

LABEL_83:
            v114 = v37;
            if (v81 == v51)
            {
              v81 = &v17[2 * (v65 != v17)];
            }

            v82 = v81 != v17;
            v83 = v81 + 2;
            v84 = &v17[2 * v82];
            if (v83 == v51)
            {
              v85 = v84;
            }

            else
            {
              v85 = v83;
            }

            v86 = ++v120 - v62;
            while (2)
            {
              v87 = *(a10 + 4);
              v88 = *(a10 + 3) + (v65[1] - *(a10 + 1)) * v87;
              if (v88 >= 0.0)
              {
                v89 = 0.5;
              }

              else
              {
                v89 = -0.5;
              }

              v90 = v88 + v89;
              v91 = 2 * (v90 >= 9.22337204e18);
              if (v90 <= -9.22337204e18)
              {
                v91 = 1;
              }

              if (v91 == 2)
              {
                goto LABEL_138;
              }

              if (v91 == 1)
              {
                goto LABEL_137;
              }

              v92 = *(a10 + 2) + (*v65 - *a10) * v87;
              if (v92 >= 0.0)
              {
                v93 = 0.5;
              }

              else
              {
                v93 = -0.5;
              }

              v94 = v92 + v93;
              v95 = 2 * (v94 >= 9.22337204e18);
              if (v94 <= -9.22337204e18)
              {
                v95 = 1;
              }

              if (v95 == 2)
              {
                goto LABEL_138;
              }

              if (v95 == 1)
              {
                goto LABEL_137;
              }

              v96 = ceil(v94);
              v97 = floor(v94);
              if (v94 >= 0.0)
              {
                v98 = v97;
              }

              else
              {
                v98 = v96;
              }

              v99 = v98;
              if (v53 == -1)
              {
                if (*(v52 + 4) > v99)
                {
                  goto LABEL_38;
                }
              }

              else if (v53 == 1 && *(v52 + 6) < v99)
              {
                goto LABEL_38;
              }

              v100 = *(v52 + 2);
              if (a1 != a4)
              {
                v101 = *(v52 + 3);
                v103 = *(a6 + 2);
                v102 = *(a6 + 3);
                goto LABEL_120;
              }

              v101 = *(v52 + 3);
              v103 = *(a6 + 2);
              v102 = *(a6 + 3);
              if (v100 != v103)
              {
LABEL_120:
                v104 = a10[1];
                v178 = *a10;
                v175[0] = a6;
                v175[1] = v58;
                v175[2] = v65;
                v175[3] = v65 + 2;
                v175[4] = v85;
                v175[5] = v17;
                v175[6] = v51;
                v176 = 0;
                v177 = 0;
                v179 = v104;
                v180 = *(a10 + 4);
                v129 = 0;
                v130 = 0;
                v131 = -1;
                v132 = 0;
                v133 = 0;
                v139 = xmmword_1003D8180;
                v140 = 0;
                v141 = 0;
                v142 = -1;
                v143 = -1;
                v144 = -1;
                v145 = 257;
                v146 = 0;
                v147 = 0;
                v148 = -1;
                v149 = -1;
                v150 = -1;
                v151 = 0;
                v152 = 0;
                v153 = 0;
                v154 = 0;
                v160 = xmmword_1003D8180;
                v161 = 0;
                v162 = 0;
                v163 = -1;
                v164 = -1;
                v165 = -1;
                v166 = 257;
                v167 = 0;
                v168 = 0;
                v169 = -1;
                v170 = -1;
                v171 = -1;
                v172 = 0;
                v173 = 0;
                v174 = 0;
                v134 = a1;
                v135 = v100;
                v136 = v101;
                v137 = v54;
                v138 = -1;
                v155 = a4;
                v156 = v103;
                v157 = v102;
                v158 = v58;
                v159 = -1;
                sub_10027B30C(v181, v175, v128, a9, a10, a11);
                v52 = a3;
                v54 = v127;
                v53 = v123;
                v51 = v124;
                goto LABEL_121;
              }

              if (v101 != v102)
              {
                v103 = *(v52 + 2);
                goto LABEL_120;
              }

              if (a7)
              {
                if (v54 >= v58 || (a8 & 1) == 0)
                {
                  v102 = *(v52 + 3);
                  v103 = *(v52 + 2);
                  if (v54 >= v58)
                  {
LABEL_121:
                    v105 = v65 + 4;
                    v65 += 2;
                    ++v58;
                    if (v85 + 2 == v51)
                    {
                      v85 = &v17[2 * (v85 != v17)];
                    }

                    else
                    {
                      v85 += 2;
                    }

                    --v86;
                    if (v105 == v60)
                    {
LABEL_38:
                      v16 = v111;
                      v13 = v112;
                      v37 = v114;
                      goto LABEL_39;
                    }

                    continue;
                  }

                  goto LABEL_120;
                }

LABEL_128:
                if (!v86)
                {
                  goto LABEL_121;
                }

                if (!v54)
                {
                  v102 = *(v52 + 3);
                  v103 = *(v52 + 2);
                  if (*(v52 + 11) - 2 <= v58)
                  {
                    goto LABEL_121;
                  }

                  goto LABEL_120;
                }
              }

              else if (a8)
              {
                goto LABEL_128;
              }

              break;
            }

            v102 = *(v52 + 3);
            v103 = *(v52 + 2);
            goto LABEL_120;
          }
        }

        v68 = v61 + 2;
        ++v67;
        ++v66;
        ++v63;
        v65 = v61;
        v61 = v68;
      }

      while (v68 != v60);
      v65 = v68 - 2;
LABEL_134:
      v62 = v66;
      v58 = v67;
      v81 = v65 + 2;
      if (v65 + 2 != v60)
      {
        goto LABEL_83;
      }
    }

LABEL_135:
    ++v120;
    v13 = v56;
LABEL_39:
    v36 = v119 + 2;
    v37 += 2;
    v20 = v54 + 1;
    if (v118 + 2 == v16)
    {
      v42 = &v13[2 * (v118 != v13)];
    }

    else
    {
      v42 = v118 + 2;
    }
  }

  while (v37 != v117);
  return 1;
}

unint64_t *sub_10027B30C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v33 = a6;
  v36[0] = a1;
  v36[1] = a2;
  v11 = sub_10027CC2C(&v37, a1, a2, a5);
  v41[0] = a1;
  v41[1] = a5;
  v41[2] = v11;
  v41[3] = &v38;
  v42 = 0;
  v43[0] = a2;
  v43[1] = a5;
  v43[2] = &v39;
  v43[3] = &v40;
  v44 = 0;
  v45[1] = v41;
  v45[2] = v43;
  v46[1] = v43;
  v46[2] = v41;
  v12 = *(a1 + 24);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v35[0] = *(a1 + 16);
  v35[1] = v12;
  v34[0] = v13;
  v34[1] = v14;
  v32[2] = xmmword_1003D8180;
  v32[3] = 0uLL;
  v32[4] = 1uLL;
  *v32 = *v12 - *v35[0];
  *&v32[1] = *v14 - *v13;
  *(v32 + 1) = *(v12 + 8) - *(v35[0] + 1);
  *(&v32[1] + 1) = *(v14 + 8) - *(v13 + 8);
  sub_10027D14C(v32, v35, v34, v41, v43, &v47);
  v57 = a4;
  v58 = a5;
  if (LOBYTE(v53[0]) == 100)
  {
    return v33;
  }

  memcpy(v32, a3, 0x178uLL);
  if (LOBYTE(v53[0]) <= 0x68u)
  {
    if (LOBYTE(v53[0]) == 99)
    {
      if ((v53[0] & 0x100) != 0)
      {
        sub_10028073C(a1, a2, v32, &v33, v36, v45, nullsub_185);
        return v33;
      }

      if (v55)
      {
        sub_10027C70C(a1, a2, v32, &v47, v53, v45);
        v15 = v33;
        v25 = v33[2];
        v17 = v33[1];
        v26 = 2 * (v25 - v17) - 1;
        if (v25 == v17)
        {
          v26 = 0;
        }

        v19 = v33[5] + v33[4];
        if (v26 != v19)
        {
          goto LABEL_40;
        }

LABEL_38:
        sub_10028017C(v33);
LABEL_39:
        v17 = v15[1];
        v19 = v15[5] + v15[4];
LABEL_40:
        memcpy((*(v17 + ((v19 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v19 & 0xF)), v32, 0x178uLL);
        ++v15[5];
        return v33;
      }

      sub_10027C9B8(a1, a2, v32, &v47, v53, v45);
      LODWORD(v32[1]) = 5;
    }

    else
    {
      if (LOBYTE(v53[0]) != 101 || (v53[0] & 0x100) != 0)
      {
        return v33;
      }

      sub_10027C9B8(a1, a2, v32, &v47, v53, v45);
    }

    v15 = v33;
    v29 = v33[2];
    v17 = v33[1];
    v30 = 2 * (v29 - v17) - 1;
    if (v29 == v17)
    {
      v30 = 0;
    }

    v19 = v33[5] + v33[4];
    if (v30 != v19)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  switch(LOBYTE(v53[0]))
  {
    case 'i':
      v32[0] = v48;
      *(&v32[6] + 1) = v50;
      *(&v32[5] + 8) = v49;
      *&v32[17] = v52;
      v32[16] = v51;
      v15 = v33;
      v20 = v33[2];
      v17 = v33[1];
      v21 = 2 * (v20 - v17) - 1;
      LODWORD(v32[1]) = 2;
      if (v20 == v17)
      {
        v21 = 0;
      }

      v22 = v54 == 1;
      *(&v32[2] + 42 * (v54 != 1) + 2) = 1;
      *(&v32[2] + 42 * v22 + 2) = 2;
      v19 = v15[5] + v15[4];
      if (v21 != v19)
      {
        goto LABEL_40;
      }

      sub_10028017C(v15);
      goto LABEL_39;
    case 't':
      sub_10027C068(a1, a2, v32, &v47, v53, v45);
      v15 = v33;
      v23 = v33[2];
      v17 = v33[1];
      v24 = 2 * (v23 - v17) - 1;
      if (v23 == v17)
      {
        v24 = 0;
      }

      v19 = v33[5] + v33[4];
      if (v24 != v19)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    case 'm':
      if (v56 == 1)
      {
        sub_10027B82C(a1, a2, v32, &v47, v53, v45);
        v15 = v33;
        v16 = v33[2];
        v17 = v33[1];
        v18 = 2 * (v16 - v17) - 1;
        if (v16 == v17)
        {
          v18 = 0;
        }

        v19 = v33[5] + v33[4];
        if (v18 != v19)
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_10027BC48(a2, a1, v32, &v47, v53, v46);
        v15 = v33;
        v27 = v33[2];
        v17 = v33[1];
        v28 = 2 * (v27 - v17) - 1;
        if (v27 == v17)
        {
          v28 = 0;
        }

        v19 = v33[5] + v33[4];
        if (v28 != v19)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_38;
  }

  return v33;
}

void sub_10027B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 4;
  *a3 = *(a4 + 8);
  v8 = a5[9];
  if (v8 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v9 = a5[10];
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a3 + 88) = vdupq_n_s64(1uLL);
      *(a3 + 104) = 0x412E848000000000;
      v9 = a5[10];
      if (v9 != 1)
      {
        goto LABEL_4;
      }

LABEL_7:
      *(a3 + 256) = vdupq_n_s64(1uLL);
      *(a3 + 272) = 0x412E848000000000;
      goto LABEL_11;
    }

    v10 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v10;
    v9 = a5[10];
    if (v9 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (v9 == -1)
  {
    *(a3 + 256) = xmmword_1003D8180;
    *(a3 + 272) = 0;
  }

  else
  {
    v11 = *(a4 + 64);
    *(a3 + 272) = *(a4 + 80);
    *(a3 + 256) = v11;
  }

LABEL_11:
  v12 = a5[7];
  v13 = *(a6 + 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 16), 2);
  v41 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v41);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v41 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  if (!(v12 + v18))
  {
    v20 = a3 + 40;
    *(v20 + 168 * (v18 != -1)) = 1;
    *(v20 + 168 * (v18 == -1)) = 2;
    return;
  }

  v21 = *(a6 + 16);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(v21, 2);
  v41 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v41);
  if (v25 == 0.0)
  {
    goto LABEL_24;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v41 * 2.22044605e-16)
    {
LABEL_24:
      v26 = 0;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = *(*(a6 + 8) + 24);
  v41 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v41);
  if (v32 == 0.0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_43;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 <= v41 * 2.22044605e-16)
    {
      goto LABEL_34;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_43:
  if ((v18 & v12) == 0xFFFFFFFF && v26 == 1)
  {
    *(a3 + 40) = 2;
    *(a3 + 208) = 2;
    *(a3 + 20) = 1;
  }

  else if (v12 == 1 && v18 == 1 && v26 == -1)
  {
    *(a3 + 40) = 1;
    if (v33 == -1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    *(a3 + 208) = v35;
    *(a3 + 20) = 1;
  }

  else if (v12 == v18 && v12 == v26)
  {
    v36 = (v26 == 1) ^ (v33 == 0);
    if (v33 * v12 == -1)
    {
      v37 = sub_100280544(a6);
      if (sub_1002805E0(a6) * v37 == 1 && sub_1002806A0(a6) * v33 == -1)
      {
        v36 ^= 1u;
      }
    }

    v38 = a3 + 40;
    *(v38 + 168 * v36) = 1;
    *(v38 + 168 * (v36 ^ 1)) = 2;
    *(a3 + 20) = 1;
  }

  else if (v18)
  {
    *(a3 + 16) = 8;
  }

  else
  {
    if (v12 == v26)
    {
      v39 = 4;
      *(a3 + 40) = 4;
    }

    else
    {
      if (v26 == 1)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      *(a3 + 40) = v40;
      v39 = 3;
    }

    *(a3 + 208) = v39;
  }
}

void sub_10027BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 4;
  *a3 = *(a4 + 8);
  v8 = a5[9];
  if (v8 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v9 = a5[10];
    if (v9 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v8 != 1)
  {
    v10 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v10;
    v9 = a5[10];
    if (v9 != 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(a3 + 256) = vdupq_n_s64(1uLL);
    *(a3 + 272) = 0x412E848000000000;
    goto LABEL_11;
  }

  *(a3 + 88) = vdupq_n_s64(1uLL);
  *(a3 + 104) = 0x412E848000000000;
  v9 = a5[10];
  if (v9 == 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v9 == -1)
  {
    *(a3 + 256) = xmmword_1003D8180;
    *(a3 + 272) = 0;
  }

  else
  {
    v11 = *(a4 + 64);
    *(a3 + 272) = *(a4 + 80);
    *(a3 + 256) = v11;
  }

LABEL_11:
  v12 = a5[5];
  v13 = *(a6 + 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 16), 2);
  v40 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v40);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v40 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  if (!(v12 + v18))
  {
    v20 = a3 + 40;
    *(v20 + 168 * (v18 == -1)) = 1;
    *(v20 + 168 * (v18 != -1)) = 2;
    return;
  }

  v21 = *(a6 + 16);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(v21, 2);
  v40 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v40);
  if (v25 == 0.0)
  {
    goto LABEL_24;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v40 * 2.22044605e-16)
    {
LABEL_24:
      v26 = 0;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = *(*(a6 + 8) + 24);
  v40 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v40);
  if (v32 == 0.0)
  {
LABEL_34:
    v33 = 0;
    goto LABEL_43;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 <= v40 * 2.22044605e-16)
    {
      goto LABEL_34;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_43:
  if ((v18 & v12) == 0xFFFFFFFF && v26 == 1)
  {
    *(a3 + 40) = 2;
    *(a3 + 208) = 2;
    *(a3 + 20) = 1;
  }

  else if (v12 == 1 && v18 == 1 && v26 == -1)
  {
    if (v33 == -1)
    {
      v35 = 1;
    }

    else
    {
      v35 = 3;
    }

    *(a3 + 40) = v35;
    *(a3 + 208) = 1;
    *(a3 + 20) = 1;
  }

  else if (v12 == v18 && v12 == v26)
  {
    v36 = (v26 == 1) ^ (v33 != 0);
    if (v33 * v12 == -1)
    {
      v37 = sub_100280544(a6);
      if (sub_1002805E0(a6) * v37 == 1 && sub_1002806A0(a6) * v33 == -1)
      {
        v36 ^= 1u;
      }
    }

    v38 = a3 + 40;
    *(v38 + 168 * v36) = 1;
    *(v38 + 168 * (v36 ^ 1)) = 2;
    *(a3 + 20) = 1;
  }

  else if (v18)
  {
    *(a3 + 16) = 8;
  }

  else if (v12 == v26)
  {
    *(a3 + 40) = 4;
    *(a3 + 208) = 4;
  }

  else
  {
    if (v26 == 1)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }

    *(a3 + 208) = v39;
    *(a3 + 40) = 3;
  }
}

void sub_10027C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  *(a3 + 16) = 3;
  *a3 = *(a4 + 8);
  v9 = a5[9];
  if (v9 == -1)
  {
    *(a3 + 88) = xmmword_1003D8180;
    *(a3 + 104) = 0;
    v10 = a5[10];
    if (v10 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v9 == 1)
    {
      *(a3 + 88) = vdupq_n_s64(1uLL);
      *(a3 + 104) = 0x412E848000000000;
      v10 = a5[10];
      if (v10 != 1)
      {
        goto LABEL_4;
      }

LABEL_7:
      *(a3 + 256) = vdupq_n_s64(1uLL);
      *(a3 + 272) = 0x412E848000000000;
      goto LABEL_11;
    }

    v11 = *(a4 + 40);
    *(a3 + 104) = *(a4 + 56);
    *(a3 + 88) = v11;
    v10 = a5[10];
    if (v10 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (v10 == -1)
  {
    *(a3 + 256) = xmmword_1003D8180;
    *(a3 + 272) = 0;
  }

  else
  {
    v12 = *(a4 + 64);
    *(a3 + 272) = *(a4 + 80);
    *(a3 + 256) = v12;
  }

LABEL_11:
  v13 = *(a6 + 16);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  v16 = sub_10027D8FC(*(a6 + 8), 2);
  v79 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v79);
  if (v17 == 0.0)
  {
LABEL_12:
    v18 = 0;
    goto LABEL_21;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v79 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_21:
  v20 = a5[7];
  v21 = *(a6 + 8);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = sub_10027D8FC(*(a6 + 16), 2);
  v79 = 1.0;
  v25 = sub_10027E098(v22, v23, v24, &v79);
  if (v25 == 0.0)
  {
LABEL_22:
    v26 = 0;
    goto LABEL_31;
  }

  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = fabs(v25);
    if (v25 > 0.0)
    {
      v26 = 1;
    }

    else
    {
      v26 = -1;
    }

    if (v27 <= v79 * 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  else if (v25 > 0.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = -1;
  }

LABEL_31:
  if (v26 * v20 == -1)
  {
    v34 = *(a6 + 8);
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    v37 = sub_10027D8FC(v34, 2);
    v79 = 1.0;
    v38 = sub_10027E098(v35, v36, v37, &v79);
    if (v38 == 0.0)
    {
LABEL_35:
      v39 = 0;
      goto LABEL_121;
    }

    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v67 = fabs(v38);
      if (v38 > 0.0)
      {
        v39 = 1;
      }

      else
      {
        v39 = -1;
      }

      if (v67 <= v79 * 2.22044605e-16)
      {
        goto LABEL_35;
      }
    }

    else if (v38 > 0.0)
    {
      v39 = 1;
    }

    else
    {
      v39 = -1;
    }

LABEL_121:
    if (v39 == v20)
    {
      if (!v18)
      {
        *(a3 + 40) = 3;
        v73 = v26 == 1;
        goto LABEL_158;
      }

      if (v18 == v26)
      {
        if (v26 == 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

        *(a3 + 40) = v66;
        goto LABEL_153;
      }
    }

    if (v39 == v26)
    {
      v68 = *(a6 + 16);
      v69 = *(v68 + 24);
      v70 = sub_10027D8FC(v68, 2);
      v71 = sub_10027D8FC(*(a6 + 8), 2);
      v79 = 1.0;
      v72 = sub_10027E098(v69, v70, v71, &v79);
      if (v72 == 0.0)
      {
        goto LABEL_130;
      }

      if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v76 = fabs(v72);
        if (v72 > 0.0)
        {
          v74 = 1;
        }

        else
        {
          v74 = -1;
        }

        if (v76 <= v79 * 2.22044605e-16)
        {
          goto LABEL_130;
        }
      }

      else if (v72 > 0.0)
      {
        v74 = 1;
      }

      else
      {
        v74 = -1;
      }

      if (v74 == v26)
      {
        if (v26 == 1)
        {
          v77 = 1;
        }

        else
        {
          v77 = 2;
        }

        *(a3 + 40) = v77;
        if (v26 == 1)
        {
          v66 = 2;
        }

        else
        {
          v66 = 1;
        }

        goto LABEL_153;
      }
    }

    v73 = v26 == 1;
    if (v26 == 1)
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
    }

    *(a3 + 40) = v78;
LABEL_158:
    if (v73)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2;
    }

    goto LABEL_161;
  }

  v28 = *(a6 + 16);
  v29 = *(v28 + 24);
  v30 = sub_10027D8FC(v28, 2);
  v31 = sub_10027D8FC(*(a6 + 8), 2);
  v79 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v79);
  if (v32 == 0.0)
  {
LABEL_33:
    v33 = 0;
    goto LABEL_48;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v40 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v40 <= v79 * 2.22044605e-16)
    {
      goto LABEL_33;
    }
  }

  else if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_48:
  v41 = *(a6 + 8);
  v42 = *(v41 + 16);
  v43 = *(v41 + 24);
  v44 = sub_10027D8FC(v41, 2);
  v79 = 1.0;
  v45 = sub_10027E098(v42, v43, v44, &v79);
  if (v45 != 0.0)
  {
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (v45 > 0.0)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      goto LABEL_58;
    }

    v47 = fabs(v45);
    if (v45 > 0.0)
    {
      v46 = 1;
    }

    else
    {
      v46 = -1;
    }

    if (v47 > v79 * 2.22044605e-16)
    {
      goto LABEL_58;
    }
  }

  v46 = 0;
LABEL_58:
  v48 = *(a6 + 16);
  v49 = *(v48 + 16);
  v50 = *(v48 + 24);
  v51 = sub_10027D8FC(v48, 2);
  v79 = 1.0;
  v52 = sub_10027E098(v49, v50, v51, &v79);
  if (v52 == 0.0)
  {
    goto LABEL_59;
  }

  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v52 > 0.0)
    {
      v53 = 1;
    }

    else
    {
      v53 = -1;
    }

    goto LABEL_68;
  }

  v54 = fabs(v52);
  v53 = v52 > 0.0 ? 1 : -1;
  if (v54 <= v79 * 2.22044605e-16)
  {
LABEL_59:
    v53 = 0;
  }

LABEL_68:
  if (v26)
  {
    v55 = 1;
  }

  else
  {
    v55 = v53 * v20 == 1;
  }

  v56 = !v55;
  if (v46 == v20 || v46 == v26 || !(v26 | v20) && v46 != -1)
  {
    if ((v33 != 0) | v56 & 1)
    {
      if (!v18)
      {
        *(a3 + 40) = 3;
        if (v53 == 1)
        {
          v63 = 2;
        }

        else
        {
          v63 = 1;
        }

        if (v56)
        {
          v59 = 3;
        }

        else
        {
          v59 = v63;
        }

        goto LABEL_161;
      }

      if (v18 == v33 && v53 * v18 != -1)
      {
        if (v53 == 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        *(a3 + 40) = v57;
        if (v53 == 1)
        {
          v58 = 2;
        }

        else
        {
          v58 = 1;
        }

        if (v56)
        {
          v59 = 3;
        }

        else
        {
          v59 = v58;
        }

        goto LABEL_161;
      }

      if (!(v33 + v53))
      {
        v64 = v53 == 1;
        if (v53 == 1)
        {
          v65 = 2;
        }

        else
        {
          v65 = 1;
        }

        *(a3 + 40) = v65;
        if (v64)
        {
          v66 = 1;
        }

        else
        {
          v66 = 2;
        }

LABEL_153:
        *(a3 + 208) = v66;
        *(a3 + 20) = 1;
        return;
      }

      if (v18 != -v53)
      {
        return;
      }

      if (v53 == 1)
      {
        v75 = 2;
      }

      else
      {
        v75 = 1;
      }

      *(a3 + 40) = v75;
      *(a3 + 208) = v75;
      if (v56)
      {
        v59 = 3;
        goto LABEL_161;
      }

LABEL_103:
      *(a3 + 20) = 1;
      return;
    }

LABEL_130:
    v59 = 4;
    *(a3 + 40) = 4;
LABEL_161:
    *(a3 + 208) = v59;
    return;
  }

  if (v53 == 1)
  {
    v60 = 2;
  }

  else
  {
    v60 = 1;
  }

  *(a3 + 40) = v60;
  if (v26 == 1 || v20 == 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  if (v56)
  {
    v62 = 3;
  }

  *(a3 + 208) = v62;
  if ((v56 & 1) == 0)
  {
    goto LABEL_103;
  }
}

double sub_10027C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10027EEEC((a4 + 64), (a4 + 120));
  *(a3 + 16) = 5;
  *a3 = *(a4 + 16 * v12 + 8);
  v13 = a4 + 56 * v12;
  v14 = *(v13 + 56);
  *(a3 + 88) = *(v13 + 40);
  *(a3 + 104) = v14;
  v15 = *(v13 + 80);
  *(a3 + 256) = *(v13 + 64);
  *(a3 + 272) = v15;
  v16 = *(a5 + 36);
  v17 = *(a6 + 8);
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  v20 = sub_10027D8FC(v17, 2);
  v42 = 1.0;
  v21 = sub_10027E098(v18, v19, v20, &v42);
  if (v21 != 0.0)
  {
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (v21 > 0.0)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_11;
    }

    v23 = fabs(v21);
    if (v21 > 0.0)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (v23 > v42 * 2.22044605e-16)
    {
      goto LABEL_11;
    }
  }

  v22 = 0;
LABEL_11:
  v24 = *(a6 + 16);
  v25 = *(v24 + 16);
  v26 = *(v24 + 24);
  v27 = sub_10027D8FC(v24, 2);
  v42 = 1.0;
  v28 = sub_10027E098(v25, v26, v27, &v42);
  if (v28 == 0.0)
  {
    goto LABEL_12;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (v28 > 0.0)
    {
      v29 = 1;
    }

    else
    {
      v29 = -1;
    }

    goto LABEL_21;
  }

  v30 = fabs(v28);
  v29 = v28 > 0.0 ? 1 : -1;
  if (v30 <= v42 * 2.22044605e-16)
  {
LABEL_12:
    v29 = 0;
  }

LABEL_21:
  if (v16 == 1)
  {
    v31 = v22;
  }

  else
  {
    v31 = v29;
  }

  v32 = v31 * v16;
  if (v32 == 1)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  if (v32 == 1)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  if (v32)
  {
    v35 = v34;
  }

  else
  {
    v33 = 4;
    v35 = 4;
  }

  *(a3 + 40) = v33;
  *(a3 + 208) = v35;
  if (v22)
  {
    v36 = *a3;
    v37 = *(a3 + 8);
    *(a3 + 112) = (v37 - *(*(a1 + 24) + 8)) * (v37 - *(*(a1 + 24) + 8)) + (*a3 - **(a1 + 24)) * (*a3 - **(a1 + 24));
    if (v29)
    {
LABEL_35:
      v38 = *(a2 + 24);
      v39 = *v38;
      v40 = v38[1];
      goto LABEL_42;
    }
  }

  else
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      sub_10027CED0(a1, *(a1 + 24), a1 + 32);
      *(a1 + 64) = **(a1 + 32);
      *(a1 + 80) = 1;
    }

    v36 = *a3;
    v37 = *(a3 + 8);
    *(a3 + 112) = (v37 - *(a1 + 72)) * (v37 - *(a1 + 72)) + (*a3 - *(a1 + 64)) * (*a3 - *(a1 + 64));
    if (v29)
    {
      goto LABEL_35;
    }
  }

  if ((*(a2 + 80) & 1) == 0)
  {
    sub_10027CED0(a2, *(a2 + 24), a2 + 32);
    *(a2 + 64) = **(a2 + 32);
    *(a2 + 80) = 1;
    v36 = *a3;
    v37 = *(a3 + 8);
  }

  v39 = *(a2 + 64);
  v40 = *(a2 + 72);
LABEL_42:
  result = (v37 - v40) * (v37 - v40) + (v36 - v39) * (v36 - v39);
  *(a3 + 280) = result;
  return result;
}

void sub_10027C9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10027EEEC((a4 + 64), (a4 + 120));
  *(a3 + 16) = 6;
  *a3 = *(a4 + 16 * v9 + 8);
  v10 = a4 + 56 * v9;
  v11 = *(v10 + 56);
  *(a3 + 88) = *(v10 + 40);
  *(a3 + 104) = v11;
  v12 = *(v10 + 80);
  *(a3 + 256) = *(v10 + 64);
  *(a3 + 272) = v12;
  v13 = *(a6 + 16);
  v14 = *(v13 + 24);
  v15 = sub_10027D8FC(v13, 2);
  v16 = sub_10027D8FC(*(a6 + 8), 2);
  v38 = 1.0;
  v17 = sub_10027E098(v14, v15, v16, &v38);
  if (v17 == 0.0)
  {
LABEL_2:
    v18 = 0;
    goto LABEL_11;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    if (v17 > 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (v19 <= v38 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  else if (v17 > 0.0)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

LABEL_11:
  v20 = *(a6 + 8);
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  v23 = sub_10027D8FC(v20, 2);
  v38 = 1.0;
  v24 = sub_10027E098(v21, v22, v23, &v38);
  if (v24 == 0.0)
  {
LABEL_12:
    v25 = 0;
    goto LABEL_21;
  }

  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v26 = fabs(v24);
    if (v24 > 0.0)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    if (v26 <= v38 * 2.22044605e-16)
    {
      goto LABEL_12;
    }
  }

  else if (v24 > 0.0)
  {
    v25 = 1;
  }

  else
  {
    v25 = -1;
  }

LABEL_21:
  v28 = *(a6 + 8);
  v27 = *(a6 + 16);
  v29 = *(v28 + 16);
  v30 = *(v28 + 24);
  v31 = sub_10027D8FC(v27, 2);
  v38 = 1.0;
  v32 = sub_10027E098(v29, v30, v31, &v38);
  if (v32 == 0.0)
  {
LABEL_22:
    v33 = 0;
    goto LABEL_31;
  }

  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v34 = fabs(v32);
    if (v32 > 0.0)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    if (v34 > v38 * 2.22044605e-16)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v32 > 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

LABEL_31:
  if (v18 || v25 != v33)
  {
    if (v33 * v25 == -1)
    {
      v36 = v25 == -1;
    }

    else
    {
      v36 = v18 == -1;
    }

    if (v36)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    *(a3 + 40) = v37;
    if (v36)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }
  }

  else
  {
    v35 = 4;
    *(a3 + 40) = 4;
  }

  *(a3 + 208) = v35;
}

uint64_t sub_10027CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 64) = a4;
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  *(a1 + 120) = 0;
  v8 = *(a2 + 16);
  v9 = *(a4 + 24) + (v8[1] - *(a4 + 8)) * *(a4 + 32);
  if (v9 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  v11 = v9 + v10;
  sub_100274990(v9 + v10);
  v12 = ceil(v11);
  v13 = floor(v11);
  if (v11 >= 0.0)
  {
    v12 = v13;
  }

  *(a1 + 8) = v12;
  v14 = *(a4 + 16) + (*v8 - *a4) * *(a4 + 32);
  if (v14 >= 0.0)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = -0.5;
  }

  v16 = v14 + v15;
  sub_100274990(v14 + v15);
  v17 = ceil(v16);
  v18 = floor(v16);
  if (v16 >= 0.0)
  {
    v17 = v18;
  }

  *a1 = v17;
  v19 = *(a2 + 24);
  v20 = *(a4 + 24) + (v19[1] - *(a4 + 8)) * *(a4 + 32);
  if (v20 >= 0.0)
  {
    v21 = 0.5;
  }

  else
  {
    v21 = -0.5;
  }

  v22 = v20 + v21;
  sub_100274990(v20 + v21);
  v23 = ceil(v22);
  v24 = floor(v22);
  if (v22 >= 0.0)
  {
    v23 = v24;
  }

  *(a1 + 24) = v23;
  v25 = *(a4 + 16) + (*v19 - *a4) * *(a4 + 32);
  if (v25 >= 0.0)
  {
    v26 = 0.5;
  }

  else
  {
    v26 = -0.5;
  }

  v27 = v25 + v26;
  sub_100274990(v25 + v26);
  v28 = ceil(v27);
  v29 = floor(v27);
  if (v27 >= 0.0)
  {
    v28 = v29;
  }

  *(a1 + 16) = v28;
  v30 = *(a3 + 16);
  v31 = *(a4 + 24) + (v30[1] - *(a4 + 8)) * *(a4 + 32);
  if (v31 >= 0.0)
  {
    v32 = 0.5;
  }

  else
  {
    v32 = -0.5;
  }

  v33 = v31 + v32;
  sub_100274990(v31 + v32);
  v34 = ceil(v33);
  v35 = floor(v33);
  if (v33 >= 0.0)
  {
    v34 = v35;
  }

  *(a1 + 40) = v34;
  v36 = *(a4 + 16) + (*v30 - *a4) * *(a4 + 32);
  if (v36 >= 0.0)
  {
    v37 = 0.5;
  }

  else
  {
    v37 = -0.5;
  }

  v38 = v36 + v37;
  sub_100274990(v36 + v37);
  v39 = ceil(v38);
  v40 = floor(v38);
  if (v38 >= 0.0)
  {
    v39 = v40;
  }

  *(a1 + 32) = v39;
  v41 = *(a3 + 24);
  v42 = *(a4 + 24) + (v41[1] - *(a4 + 8)) * *(a4 + 32);
  if (v42 >= 0.0)
  {
    v43 = 0.5;
  }

  else
  {
    v43 = -0.5;
  }

  v44 = v42 + v43;
  sub_100274990(v42 + v43);
  v45 = ceil(v44);
  v46 = floor(v44);
  if (v44 >= 0.0)
  {
    v45 = v46;
  }

  *(a1 + 56) = v45;
  v47 = *(a4 + 16) + (*v41 - *a4) * *(a4 + 32);
  if (v47 >= 0.0)
  {
    v48 = 0.5;
  }

  else
  {
    v48 = -0.5;
  }

  v49 = v47 + v48;
  sub_100274990(v47 + v48);
  v50 = ceil(v49);
  v51 = floor(v49);
  if (v49 >= 0.0)
  {
    v50 = v51;
  }

  *(a1 + 48) = v50;
  return a1;
}

void sub_10027CED0(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = *(a1 + 112) + (a2[1] - *(a1 + 96)) * *(a1 + 120);
  if (v6 >= 0.0)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = -0.5;
  }

  v39 = v6 + v7;
  sub_100274990(v6 + v7);
  v8 = *(a1 + 104) + (*a2 - *(a1 + 88)) * *(a1 + 120);
  if (v8 >= 0.0)
  {
    v9 = 0.5;
  }

  else
  {
    v9 = -0.5;
  }

  v41 = v8 + v9;
  sub_100274990(v8 + v9);
  v10 = *a3;
  v11 = *(a1 + 112) + (*(*a3 + 8) - *(a1 + 96)) * *(a1 + 120);
  if (v11 >= 0.0)
  {
    v12 = 0.5;
  }

  else
  {
    v12 = -0.5;
  }

  v37 = v11 + v12;
  sub_100274990(v11 + v12);
  v13.f64[0] = v39;
  v13.f64[1] = v37;
  v40 = vbslq_s8(vcltzq_f64(v13), vrndpq_f64(v13), vrndmq_f64(v13));
  v14 = *(a1 + 104) + (*v10 - *(a1 + 88)) * *(a1 + 120);
  if (v14 >= 0.0)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = -0.5;
  }

  v38 = v14 + v15;
  sub_100274990(v14 + v15);
  v16.f64[0] = v41;
  v16.f64[1] = v38;
  v17 = vcvtq_s64_f64(vbslq_s8(vcltzq_f64(v16), vrndpq_f64(v16), vrndmq_f64(v16)));
  v18 = vcvtq_s64_f64(v40);
  *&v16.f64[0] = vmovn_s64(vmvnq_s8(vceqq_s64(vzip1q_s64(v18, v17), vzip2q_s64(v18, v17))));
  if (((HIDWORD(v16.f64[0]) | LODWORD(v16.f64[0])) & 1) == 0)
  {
    v19 = v18.i64[0];
    v20 = v17.i64[0];
    v21 = -1;
    do
    {
      if (++v21 >= *(*a1 + 88))
      {
        break;
      }

      v34 = *a3;
      v35 = (*a3 + 16);
      *a3 = v35;
      if (v35 == *(a3 + 16))
      {
        v36 = *(a3 + 8);
        *a3 = v36;
        v35 = v36;
        if (*(a3 + 24) == 1)
        {
          v35 = v36 + 2;
          *a3 = v36 + 2;
          if (v34 == v36)
          {
            *a3 = v36;
            v35 = v36;
          }
        }
      }

      v22 = *(a1 + 112) + (v35[1] - *(a1 + 96)) * *(a1 + 120);
      if (v22 >= 0.0)
      {
        v23 = 0.5;
      }

      else
      {
        v23 = -0.5;
      }

      v24 = v22 + v23;
      sub_100274990(v22 + v23);
      v25 = ceil(v24);
      v26 = floor(v24);
      if (v24 >= 0.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v28 = *(a1 + 104) + (*v35 - *(a1 + 88)) * *(a1 + 120);
      if (v28 >= 0.0)
      {
        v29 = 0.5;
      }

      else
      {
        v29 = -0.5;
      }

      v30 = v28 + v29;
      sub_100274990(v28 + v29);
      v31 = ceil(v30);
      v32 = floor(v30);
      if (v30 >= 0.0)
      {
        v31 = v32;
      }
    }

    while (v20 == v31 && v19 == v27);
  }
}

double sub_10027D14C@<D0>(uint64_t a1@<X0>, __int128 **a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v9 = *(a5 + 16);
  v8 = *(a5 + 24);
  v11 = v7->i64[0];
  v10 = v7->i64[1];
  v13 = v6->i64[0];
  v12 = v6->i64[1];
  v15 = v7->i64[0] == v6->i64[0] && v10 == v12;
  v17 = v9->i64[0];
  v16 = v9->i64[1];
  v19 = v8->i64[0];
  v18 = v8->i64[1];
  v21 = v9->i64[0] == v8->i64[0] && v16 == v18;
  if (!v15 || !v21)
  {
    if (v11 >= v13)
    {
      v23 = v6->i64[0];
    }

    else
    {
      v23 = v7->i64[0];
    }

    if (v11 <= v13)
    {
      v11 = v6->i64[0];
    }

    if (v17 >= v19)
    {
      v24 = v8->i64[0];
    }

    else
    {
      v24 = v9->i64[0];
    }

    if (v17 <= v19)
    {
      v17 = v8->i64[0];
    }

    if (v11 < v24 || v17 < v23)
    {
      goto LABEL_52;
    }

    if (v10 >= v12)
    {
      v26 = v6->i64[1];
    }

    else
    {
      v26 = v7->i64[1];
    }

    if (v10 <= v12)
    {
      v10 = v6->i64[1];
    }

    if (v16 >= v18)
    {
      v27 = v8->i64[1];
    }

    else
    {
      v27 = v9->i64[1];
    }

    if (v16 <= v18)
    {
      v16 = v8->i64[1];
    }

    if (v10 < v27 || v16 < v26)
    {
      goto LABEL_52;
    }

    v30 = a6;
    *v85 = 0x3FF0000000000000;
    v31 = sub_10027E098(v9, v8, v7, v85);
    if (v31 == 0.0)
    {
      goto LABEL_47;
    }

    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v38 = fabs(v31);
      if (v31 > 0.0)
      {
        v32 = 1;
      }

      else
      {
        v32 = -1;
      }

      if (v38 <= *v85 * 2.22044605e-16)
      {
LABEL_47:
        v32 = 0;
      }
    }

    else if (v31 > 0.0)
    {
      v32 = 1;
    }

    else
    {
      v32 = -1;
    }

    *v85 = 0x3FF0000000000000;
    v39 = sub_10027E098(v9, v8, v6, v85);
    a6 = v30;
    if (v39 == 0.0)
    {
LABEL_63:
      v40 = 0;
      goto LABEL_72;
    }

    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v41 = fabs(v39);
      if (v39 > 0.0)
      {
        v40 = 1;
      }

      else
      {
        v40 = -1;
      }

      if (v41 <= *v85 * 2.22044605e-16)
      {
        goto LABEL_63;
      }
    }

    else if (v39 > 0.0)
    {
      v40 = 1;
    }

    else
    {
      v40 = -1;
    }

LABEL_72:
    if (v40 * v32 == 1)
    {
      goto LABEL_52;
    }

    v82 = v32;
    *v85 = 0x3FF0000000000000;
    v42 = sub_10027E098(v7, v6, v9, v85);
    if (v42 == 0.0)
    {
      goto LABEL_74;
    }

    if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v44 = fabs(v42);
      if (v42 > 0.0)
      {
        v43 = 1;
      }

      else
      {
        v43 = -1;
      }

      if (v44 <= *v85 * 2.22044605e-16)
      {
LABEL_74:
        v43 = 0;
      }
    }

    else if (v42 > 0.0)
    {
      v43 = 1;
    }

    else
    {
      v43 = -1;
    }

    *v85 = 0x3FF0000000000000;
    v45 = sub_10027E098(v7, v6, v8, v85);
    a6 = v30;
    v46 = a1;
    if (v45 == 0.0)
    {
LABEL_84:
      v47 = 0;
      goto LABEL_93;
    }

    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v48 = fabs(v45);
      if (v45 > 0.0)
      {
        v47 = 1;
      }

      else
      {
        v47 = -1;
      }

      if (v48 <= *v85 * 2.22044605e-16)
      {
        goto LABEL_84;
      }
    }

    else if (v45 > 0.0)
    {
      v47 = 1;
    }

    else
    {
      v47 = -1;
    }

LABEL_93:
    if (v47 * v43 != 1)
    {
      v49 = v43;
      v50 = v82;
      v51 = *v7;
      v52 = *v9;
      v53 = vsubq_s64(*v6, *v7);
      v54 = vsubq_s64(*v8, *v9);
      if (v40 | v82 | v49 | v47)
      {
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v59 = v54.i64[1] * v53.i64[0] - v53.i64[1] * v54.i64[0];
        if (v59)
        {
          v60 = v53.i64[1] * v54.i64[0] - v54.i64[1] * v53.i64[0];
          if (v60)
          {
            v61 = (v51.i64[1] - v52.i64[1]) * v54.i64[0] + v54.i64[1] * (v52.i64[0] - v51.i64[0]);
            v62 = v53.i64[1] * (v51.i64[0] - v52.i64[0]) + (v52.i64[1] - v51.i64[1]) * v53.i64[0];
            *(v46 + 32) = v61;
            *(v46 + 40) = v59;
            if ((v59 & 0x8000000000000000) != 0)
            {
              v61 = -v61;
              v59 = v53.i64[1] * v54.i64[0] - v54.i64[1] * v53.i64[0];
              *(v46 + 32) = v61;
              *(v46 + 40) = v59;
            }

            *(v46 + 48) = v61 * 1000000.0 / v59;
            *(v46 + 56) = v62;
            *(v46 + 64) = v60;
            if ((v60 & 0x8000000000000000) != 0)
            {
              v62 = -v62;
              v60 = v54.i64[1] * v53.i64[0] - v53.i64[1] * v54.i64[0];
              *(v46 + 56) = v62;
              *(v46 + 64) = v60;
            }

            *(v46 + 72) = v62 * 1000000.0 / v60;
            goto LABEL_117;
          }
        }
      }

      else
      {
        v55 = v82;
        v56 = v40;
        v57 = v49;
        v58 = v47;
      }

      v63 = vabsq_s64(v53);
      v64 = vabsq_s64(v54);
      v65 = vbslq_s8(vcgtq_u64(v63, v64), v64, v63);
      if (v65.i64[0] <= v65.i64[1])
      {
        v66 = 256;
      }

      else
      {
        v66 = 257;
      }

      if (v65.i64[0])
      {
        v67 = 257;
      }

      else
      {
        v67 = 1;
      }

      if (v65.i64[0] == v65.i64[1])
      {
        v68 = v67;
      }

      else
      {
        v68 = v66;
      }

      v69 = 256 - vmovn_s64(vcgeq_u64(v63, vdupq_laneq_s64(v63, 1))).u16[0];
      if (v21)
      {
        v68 = v69;
      }

      v70 = 256 - vmovn_s64(vcgeq_u64(v64, vdupq_laneq_s64(v64, 1))).u16[0];
      if (v15)
      {
        v68 = v70;
      }

      v47 = v58;
      v49 = v57;
      v40 = v56;
      v50 = v55;
      if ((v68 & 0x100) != 0)
      {
        if (v68)
        {
          sub_10027DA40(a2, a3, v7->i64, v6->i64, v9->i64, v8->i64, v15, v21, v30);
        }

        else
        {
          sub_10027DD6C(a2, a3, v7, v6, v9, v8, v15, v21, v30);
        }

        return result;
      }

LABEL_117:
      *&v85[40] = xmmword_1003D8180;
      *&v85[56] = 0;
      *&v86 = 0;
      *(&v86 + 1) = 1;
      *&v87 = 0;
      BYTE8(v87) = 0;
      v88 = xmmword_1003D8180;
      v89 = 0uLL;
      v90 = 1uLL;
      LOBYTE(v91) = 0;
      *v85 = 1;
      v71 = v46;
      v72 = v49;
      sub_10027FBC8(v46, &v85[8], a2, a3);
      BYTE8(v87) = 1;
      *&v85[40] = *(v71 + 32);
      *&v85[56] = *(v71 + 48);
      v86 = *(v71 + 56);
      *&v87 = *(v71 + 72);
      if (!(v50 | v72))
      {
        v73 = -1;
        if (v47 == 1)
        {
          v74 = -1;
        }

        else
        {
          v74 = 1;
        }

        if (v47 == 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = -1;
        }

        v76 = 102;
        goto LABEL_141;
      }

      if (!(v40 | v47))
      {
        if (v72 == 1)
        {
          v74 = -1;
        }

        else
        {
          v74 = 1;
        }

        if (v72 == 1)
        {
          v75 = 1;
        }

        else
        {
          v75 = -1;
        }

        v73 = 1;
        v76 = 116;
        v77 = 1;
        goto LABEL_160;
      }

      if (v40 | v72)
      {
        if (v50 | v47)
        {
          if (!v72)
          {
            v73 = 0;
            v77 = -1;
            if (v47 == 1)
            {
              v74 = -1;
            }

            else
            {
              v74 = 1;
            }

            if (v47 == 1)
            {
              v75 = 1;
            }

            else
            {
              v75 = -1;
            }

            v76 = 115;
            goto LABEL_160;
          }

          if (!v50)
          {
            v77 = 0;
            if (v47 == 1)
            {
              v75 = 1;
            }

            else
            {
              v75 = -1;
            }

            v73 = -1;
            if (v47 == 1)
            {
              v74 = -1;
            }

            else
            {
              v74 = 1;
            }

            v76 = 115;
            goto LABEL_160;
          }

          if (v47)
          {
            if (v40)
            {
              v73 = -1;
              if (v47 == 1)
              {
                v74 = -1;
              }

              else
              {
                v74 = 1;
              }

              if (v47 == 1)
              {
                v75 = 1;
              }

              else
              {
                v75 = -1;
              }

              v76 = 105;
LABEL_141:
              v77 = -1;
LABEL_160:
              v78 = v89;
              *(v30 + 96) = v88;
              *(v30 + 112) = v78;
              *(v30 + 128) = v90;
              *(v30 + 144) = v91;
              v79 = *&v85[48];
              *(v30 + 32) = *&v85[32];
              *(v30 + 48) = v79;
              v80 = v87;
              *(v30 + 64) = v86;
              *(v30 + 80) = v80;
              result = *v85;
              v81 = *&v85[16];
              *v30 = *v85;
              *(v30 + 16) = v81;
              *(v30 + 152) = v76;
              *(v30 + 153) = 0;
              *(v30 + 156) = v73;
              *(v30 + 160) = v77;
              *(v30 + 164) = v74;
              *(v30 + 168) = v75;
              *(v30 + 172) = v50;
              *(v30 + 176) = v40;
              *(v30 + 180) = v72;
              *(v30 + 184) = v47;
              *(v30 + 188) = v73;
              *(v30 + 192) = v77;
              return result;
            }

            v77 = 0;
            if (v47 == 1)
            {
              v74 = 1;
            }

            else
            {
              v74 = -1;
            }

            v73 = 1;
          }

          else
          {
            v73 = 0;
            if (v40 == 1)
            {
              v74 = 1;
            }

            else
            {
              v74 = -1;
            }

            v77 = 1;
          }

          v76 = 109;
LABEL_159:
          v75 = v74;
          goto LABEL_160;
        }

        if (v72 == 1)
        {
          v74 = 1;
        }

        else
        {
          v74 = -1;
        }

        v77 = 1;
        v73 = -1;
      }

      else
      {
        if (v47 == 1)
        {
          v74 = 1;
        }

        else
        {
          v74 = -1;
        }

        v77 = -1;
        v73 = 1;
      }

      v76 = 97;
      goto LABEL_159;
    }

LABEL_52:
    memset(&v85[2], 0, 32);
    *(a6 + 40) = xmmword_1003D8180;
    *(a6 + 96) = xmmword_1003D8180;
    v34 = *&v85[16];
    *(a6 + 154) = *v85;
    *(a6 + 56) = 0;
    *(a6 + 64) = 0;
    *(a6 + 112) = 0;
    *(a6 + 120) = 0;
    *&v85[34] = 0;
    *a6 = 0;
    *(a6 + 72) = 1;
    *(a6 + 80) = 0;
    *(a6 + 88) = 0;
    *(a6 + 128) = 1;
    *(a6 + 136) = 0;
    *(a6 + 144) = 0;
    *(a6 + 152) = 100;
    *(a6 + 170) = v34;
    result = *&v85[26];
    *(a6 + 180) = *&v85[26];
    return result;
  }

  if (v11 != v17 || v10 != v16)
  {
    goto LABEL_52;
  }

  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = 0;
  v36 = *a2;
  memset(&v85[2], 0, 40);
  *a6 = 1;
  *(a6 + 8) = *v36;
  *(a6 + 40) = xmmword_1003D8180;
  *(a6 + 96) = xmmword_1003D8180;
  *(a6 + 180) = *&v85[26];
  result = *&v85[16];
  v37 = *v85;
  *(a6 + 170) = *&v85[16];
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 128) = 1;
  *(a6 + 136) = 0;
  *(a6 + 144) = 0;
  *(a6 + 152) = 48;
  *(a6 + 154) = v37;
  return result;
}

uint64_t sub_10027D8FC(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    if ((*(a1 + 48) & 1) == 0)
    {
      v3 = *a1;
      if ((*(*a1 + 80) & 1) == 0)
      {
        v4 = a1;
        sub_10027CED0(*a1, *(v3 + 24), v3 + 32);
        a1 = v4;
        *(v3 + 64) = **(v3 + 32);
        *(v3 + 80) = 1;
      }

      v5 = *(a1 + 8);
      v6 = *(v5 + 24) + (*(v3 + 72) - *(v5 + 8)) * *(v5 + 32);
      if (v6 >= 0.0)
      {
        v7 = 0.5;
      }

      else
      {
        v7 = -0.5;
      }

      v8 = v6 + v7;
      v9 = a1;
      sub_100274990(v6 + v7);
      v10 = ceil(v8);
      v11 = floor(v8);
      if (v8 >= 0.0)
      {
        v10 = v11;
      }

      *(v9 + 40) = v10;
      v12 = *(v5 + 16) + (*(v3 + 64) - *v5) * *(v5 + 32);
      if (v12 >= 0.0)
      {
        v13 = 0.5;
      }

      else
      {
        v13 = -0.5;
      }

      v14 = v12 + v13;
      sub_100274990(v12 + v13);
      a1 = v9;
      v15 = ceil(v14);
      v16 = floor(v14);
      if (v14 >= 0.0)
      {
        v15 = v16;
      }

      *(v9 + 32) = v15;
      *(v9 + 48) = 1;
    }

    return a1 + 32;
  }

  else if (a2 == 1)
  {
    return *(a1 + 24);
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_10027DA40(__int128 **result@<X0>, __int128 **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  if (a7)
  {
    v10 = *a3 - *a5;
    v11 = *a6 - *a5;
    if (v11 < 0)
    {
      v10 = *a5 - *a3;
      v11 = *a5 - *a6;
    }

    else if (!v11)
    {
      v12 = 0.0;
      if (v10 < 0)
      {
        goto LABEL_27;
      }

LABEL_16:
      if (v10 <= v11)
      {
        v20 = **result;
        if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
        {
          v25 = v20;
          sub_1003867E8();
          v20 = v25;
        }

        v21 = qword_10045BD68;
        memset(&v29[2], 0, 40);
        *a9 = 1;
        *(a9 + 8) = v20;
        *(a9 + 24) = v30;
        *(a9 + 40) = xmmword_10045BD58;
        *(a9 + 56) = v21;
        *(a9 + 64) = v10;
        *(a9 + 72) = v11;
        *(a9 + 80) = v12;
        *(a9 + 88) = 1;
        *(a9 + 89) = *v28;
        *(a9 + 92) = *&v28[3];
        *(a9 + 96) = xmmword_1003D8180;
        *(a9 + 112) = 0uLL;
        *(a9 + 128) = 1;
LABEL_26:
        *(a9 + 136) = 0;
        *(a9 + 144) = 0;
        *(a9 + 145) = *v27;
        *(a9 + 148) = *&v27[3];
        *(a9 + 152) = 48;
        v24 = *&v29[16];
        *(a9 + 154) = *v29;
LABEL_28:
        *(a9 + 170) = v24;
        *(a9 + 180) = *&v29[26];
        return;
      }

      goto LABEL_27;
    }

    v12 = v10 * 1000000.0 / v11;
    if (v10 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (a8)
  {
    v13 = *a5 - *a3;
    v14 = *a4 - *a3;
    if (v14 < 0)
    {
      v13 = *a3 - *a5;
      v14 = *a3 - *a4;
    }

    else if (!v14)
    {
      v15 = 0.0;
      if (v13 < 0)
      {
        goto LABEL_27;
      }

LABEL_22:
      if (v13 <= v14)
      {
        v22 = **a2;
        if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
        {
          v26 = v22;
          sub_1003867E8();
          v22 = v26;
        }

        v23 = qword_10045BD68;
        memset(&v29[2], 0, 40);
        *a9 = 1;
        *(a9 + 8) = v22;
        *(a9 + 24) = v30;
        *(a9 + 40) = v13;
        *(a9 + 48) = v14;
        *(a9 + 56) = v15;
        *(a9 + 64) = xmmword_10045BD58;
        *(a9 + 80) = v23;
        *(a9 + 88) = 1;
        *(a9 + 89) = *v28;
        *(a9 + 92) = *&v28[3];
        *(a9 + 96) = xmmword_1003D8180;
        *(a9 + 112) = 0uLL;
        *(a9 + 128) = 1;
        goto LABEL_26;
      }

LABEL_27:
      memset(&v29[2], 0, 32);
      *(a9 + 40) = xmmword_1003D8180;
      *(a9 + 96) = xmmword_1003D8180;
      v24 = *&v29[16];
      *(a9 + 154) = *v29;
      *(a9 + 56) = 0;
      *(a9 + 64) = 0;
      *(a9 + 112) = 0;
      *(a9 + 120) = 0;
      *&v29[34] = 0;
      *a9 = 0;
      *(a9 + 72) = 1;
      *(a9 + 80) = 0;
      *(a9 + 88) = 0;
      *(a9 + 128) = 1;
      *(a9 + 136) = 0;
      *(a9 + 144) = 0;
      *(a9 + 152) = 100;
      goto LABEL_28;
    }

    v15 = v13 * 1000000.0 / v14;
    if (v13 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v16 = *a3;
  v17 = *a4;
  v18 = *a5;
  v19 = *a6;

  sub_10027E1D8(result, a2, v16, v17, v18, v19, a9);
}

void sub_10027DD6C(__int128 **result@<X0>, __int128 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  if (a7)
  {
    v10 = *(a5 + 8);
    v11 = *(a6 + 8);
    v12 = *(a3 + 8) - v10;
    v13 = v11 - v10;
    if (v11 - v10 < 0)
    {
      v12 = v10 - *(a3 + 8);
      v13 = v10 - v11;
    }

    else if (!v13)
    {
      v14 = 0.0;
      if (v12 < 0)
      {
        goto LABEL_27;
      }

LABEL_16:
      if (v12 <= v13)
      {
        v24 = **result;
        if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
        {
          v29 = v24;
          sub_1003867E8();
          v24 = v29;
        }

        v25 = qword_10045BD68;
        memset(&v33[2], 0, 40);
        *a9 = 1;
        *(a9 + 8) = v24;
        *(a9 + 24) = v34;
        *(a9 + 40) = xmmword_10045BD58;
        *(a9 + 56) = v25;
        *(a9 + 64) = v12;
        *(a9 + 72) = v13;
        *(a9 + 80) = v14;
        *(a9 + 88) = 1;
        *(a9 + 89) = *v32;
        *(a9 + 92) = *&v32[3];
        *(a9 + 96) = xmmword_1003D8180;
        *(a9 + 112) = 0uLL;
        *(a9 + 128) = 1;
LABEL_26:
        *(a9 + 136) = 0;
        *(a9 + 144) = 0;
        *(a9 + 145) = *v31;
        *(a9 + 148) = *&v31[3];
        *(a9 + 152) = 48;
        v28 = *&v33[16];
        *(a9 + 154) = *v33;
LABEL_28:
        *(a9 + 170) = v28;
        *(a9 + 180) = *&v33[26];
        return;
      }

      goto LABEL_27;
    }

    v14 = v12 * 1000000.0 / v13;
    if (v12 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  if (a8)
  {
    v15 = *(a3 + 8);
    v16 = *(a4 + 8);
    v17 = *(a5 + 8) - v15;
    v18 = v16 - v15;
    if (v16 - v15 < 0)
    {
      v17 = v15 - *(a5 + 8);
      v18 = v15 - v16;
    }

    else if (!v18)
    {
      v19 = 0.0;
      if (v17 < 0)
      {
        goto LABEL_27;
      }

LABEL_22:
      if (v17 <= v18)
      {
        v26 = **a2;
        if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
        {
          v30 = v26;
          sub_1003867E8();
          v26 = v30;
        }

        v27 = qword_10045BD68;
        memset(&v33[2], 0, 40);
        *a9 = 1;
        *(a9 + 8) = v26;
        *(a9 + 24) = v34;
        *(a9 + 40) = v17;
        *(a9 + 48) = v18;
        *(a9 + 56) = v19;
        *(a9 + 64) = xmmword_10045BD58;
        *(a9 + 80) = v27;
        *(a9 + 88) = 1;
        *(a9 + 89) = *v32;
        *(a9 + 92) = *&v32[3];
        *(a9 + 96) = xmmword_1003D8180;
        *(a9 + 112) = 0uLL;
        *(a9 + 128) = 1;
        goto LABEL_26;
      }

LABEL_27:
      memset(&v33[2], 0, 32);
      *(a9 + 40) = xmmword_1003D8180;
      *(a9 + 96) = xmmword_1003D8180;
      v28 = *&v33[16];
      *(a9 + 154) = *v33;
      *(a9 + 56) = 0;
      *(a9 + 64) = 0;
      *(a9 + 112) = 0;
      *(a9 + 120) = 0;
      *&v33[34] = 0;
      *a9 = 0;
      *(a9 + 72) = 1;
      *(a9 + 80) = 0;
      *(a9 + 88) = 0;
      *(a9 + 128) = 1;
      *(a9 + 136) = 0;
      *(a9 + 144) = 0;
      *(a9 + 152) = 100;
      goto LABEL_28;
    }

    v19 = v17 * 1000000.0 / v18;
    if (v17 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v20 = *(a3 + 8);
  v21 = *(a4 + 8);
  v22 = *(a5 + 8);
  v23 = *(a6 + 8);

  sub_10027E1D8(result, a2, v20, v21, v22, v23, a9);
}

double sub_10027E098(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3, double *a4)
{
  v4 = vcvtq_f64_s64(*a1);
  v15 = vcvtq_f64_s64(*a2);
  v16 = v4;
  v14 = vcvtq_f64_s64(*a3);
  v5 = vsubq_f64(v4, v14);
  v23[0] = v5.f64[0];
  v6 = vsubq_f64(v15, v14);
  v7 = vextq_s8(v6, v6, 8uLL);
  v22[0] = *&v6.i64[1];
  v21[0] = v5.f64[1];
  v20[0] = *v6.i64;
  v8 = fabs(v5.f64[0]);
  v9 = fabs(*&v6.i64[1]);
  v10 = fabs(v5.f64[1]);
  v11 = fabs(*v6.i64);
  if (v8 >= v9)
  {
    v9 = v8;
  }

  if (v9 < v10)
  {
    v9 = v10;
  }

  if (v9 >= v11)
  {
    v11 = v9;
  }

  if (v11 < 1.0)
  {
    v11 = 1.0;
  }

  *a4 = v11;
  v12 = vmulq_f64(v7, v5);
  v18[0] = v12.f64[1];
  v19[0] = v12.f64[0];
  result = v12.f64[0] - v12.f64[1];
  v17 = fabs(v12.f64[0]) + fabs(v12.f64[1]);
  if (vabdd_f64(v12.f64[0], v12.f64[1]) < v17 * 3.33066907e-16 && (v12.f64[0] <= 0.0 || v12.f64[1] > 0.0) && (v12.f64[0] >= 0.0 || v12.f64[1] < 0.0))
  {
    return sub_10016C58C(v16.f64, v15.f64, v14.f64, v23, v22, v21, v20, v19, v18, &v17);
  }

  return result;
}

double sub_10027E1D8@<D0>(_OWORD **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a4 - a3;
  v8 = a4 - a3;
  v9 = a6 - a5;
  v10 = a6 - a5;
  v11 = a3 - a5;
  v38.i64[0] = a3 - a5;
  v38.i64[1] = a6 - a5;
  if (a6 - a5 < 0)
  {
    v11 = a5 - a3;
    v12 = a5 - a6;
    v38.i64[0] = a5 - a3;
    v38.i64[1] = a5 - a6;
LABEL_6:
    v39 = v11 * 1000000.0 / v12;
    v15 = a4 - a5;
    v35 = a4 - a5;
    v36 = a6 - a5;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v15 = a5 - a4;
      v10 = a5 - a6;
      v35 = a5 - a4;
      v36 = a5 - a6;
    }

    v37 = v15 * 1000000.0 / v10;
    v13 = a5 - a3;
    *&v33 = a5 - a3;
    *(&v33 + 1) = a4 - a3;
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v12 = a6 - a5;
  if (v10)
  {
    goto LABEL_6;
  }

  v39 = 0.0;
  v35 = a4 - a5;
  v36 = 0;
  v37 = 0.0;
  v13 = a5 - a3;
  *&v33 = a5 - a3;
  *(&v33 + 1) = a4 - a3;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_4:
    v13 = -v13;
    v14 = a3 - a4;
    *&v33 = v13;
    *(&v33 + 1) = a3 - a4;
    goto LABEL_10;
  }

LABEL_9:
  v14 = a4 - a3;
  if (!v8)
  {
    v16 = &v34;
    v34 = 0.0;
    v31 = (a6 - a3);
    v32 = 0.0;
    if (a3 == a5)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (a6 == a3)
    {
      v18 = 3;
      if (a4 != a5)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    if (a6 <= a5)
    {
      if (a3 <= a5)
      {
        if (a6 <= a3)
        {
          v18 = 2;
        }

        else
        {
          v18 = 4;
        }

        if (a4 != a5)
        {
          goto LABEL_34;
        }

LABEL_28:
        v20 = 3;
        v19 = 1;
        v21 = &v33 + 8;
        if (a6 == a3)
        {
          goto LABEL_62;
        }

        goto LABEL_68;
      }
    }

    else if (a3 >= a5)
    {
      if (a6 >= a3)
      {
        v18 = 2;
      }

      else
      {
        v18 = 4;
      }

      if (a4 != a5)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v18 = 0;
    if (a4 != a5)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_10:
  v16 = &v34;
  v34 = v13 * 1000000.0 / v14;
  v17 = a6 - a3;
  *&v31 = a6 - a3;
  *(&v31 + 1) = a4 - a3;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v17 = a3 - a6;
    v8 = a3 - a4;
    *&v31 = a3 - a6;
    *(&v31 + 1) = a3 - a4;
  }

  v32 = v17 * 1000000.0 / v8;
  if (a3 != a5)
  {
    goto LABEL_16;
  }

LABEL_13:
  v18 = 1;
  v19 = 1;
  v20 = 1;
  if (a4 == a3)
  {
    goto LABEL_61;
  }

LABEL_34:
  if (a4 == a6)
  {
    v19 = 3;
    if (a3 == a5)
    {
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  if (a6 > a5)
  {
    if (a4 >= a5)
    {
      if (a4 <= a6)
      {
        v19 = 2;
      }

      else
      {
        v19 = 4;
      }

      if (a3 == a5)
      {
        goto LABEL_46;
      }

LABEL_52:
      if (a4 <= a3)
      {
        if (a5 <= a3)
        {
          if (a4 <= a5)
          {
            v20 = 2;
          }

          else
          {
            v20 = 4;
          }

          v21 = &v33 + 8;
          if (a6 != a3)
          {
            goto LABEL_68;
          }

LABEL_62:
          v22 = 1;
          if (v18 == 3)
          {
            goto LABEL_86;
          }

          goto LABEL_80;
        }
      }

      else if (a5 >= a3)
      {
        if (a4 >= a5)
        {
          v20 = 2;
        }

        else
        {
          v20 = 4;
        }

        v21 = &v33 + 8;
        if (a6 != a3)
        {
          goto LABEL_68;
        }

        goto LABEL_62;
      }

      v20 = 0;
LABEL_61:
      v21 = &v33 + 8;
      if (a6 == a3)
      {
        goto LABEL_62;
      }

      goto LABEL_68;
    }

LABEL_45:
    v19 = 0;
    if (a3 == a5)
    {
      goto LABEL_46;
    }

    goto LABEL_52;
  }

  if (a4 > a5)
  {
    goto LABEL_45;
  }

  if (a4 >= a6)
  {
    v19 = 2;
  }

  else
  {
    v19 = 4;
  }

  if (a3 != a5)
  {
    goto LABEL_52;
  }

LABEL_46:
  v20 = 1;
  v21 = &v33 + 8;
  if (a6 == a3)
  {
    goto LABEL_62;
  }

LABEL_68:
  if (a6 == a4)
  {
    v22 = 3;
    if (v18 == 3)
    {
      goto LABEL_86;
    }
  }

  else
  {
    if (a4 <= a3)
    {
      if (a6 <= a3)
      {
        if (a6 >= a4)
        {
          v22 = 2;
        }

        else
        {
          v22 = 4;
        }

        if (v18 == 3)
        {
          goto LABEL_86;
        }

        goto LABEL_80;
      }
    }

    else if (a6 >= a3)
    {
      if (a6 <= a4)
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      if (v18 == 3)
      {
        goto LABEL_86;
      }

      goto LABEL_80;
    }

    v22 = 0;
    if (v18 == 3)
    {
LABEL_86:
      v38 = vdupq_n_s64(1uLL);
      v39 = 1000000.0;
      *&v31 = 0;
      v23 = &v31 + 8;
      v24 = &v32;
      goto LABEL_87;
    }
  }

LABEL_80:
  if (v18 != 1)
  {
    goto LABEL_88;
  }

  v38 = xmmword_1003D8180;
  v39 = 0.0;
  *&v33 = 0;
  v23 = &v33 + 8;
  v24 = &v34;
LABEL_87:
  *v23 = 1;
  *v24 = 0.0;
LABEL_88:
  if (v19 == 3)
  {
    v35 = 1;
    v36 = 1;
    v37 = 1000000.0;
    *&v31 = 1;
    v21 = &v31 + 8;
    v16 = &v32;
    goto LABEL_92;
  }

  if (v19 == 1)
  {
    v35 = 0;
    v36 = 1;
    v37 = 0.0;
    *&v33 = 1;
LABEL_92:
    *v21 = 1;
    *v16 = 1000000.0;
    goto LABEL_93;
  }

  if (!(v19 | v18) || v18 >= 4 && v19 >= 4)
  {
    memset(&v40[2], 0, 40);
    *(a7 + 40) = xmmword_1003D8180;
    *(a7 + 96) = xmmword_1003D8180;
    v30 = *&v40[16];
    *(a7 + 154) = *v40;
    *(a7 + 56) = 0;
    *(a7 + 64) = 0;
    *(a7 + 112) = 0;
    *(a7 + 120) = 0;
    *a7 = 0;
    *(a7 + 72) = 1;
    *(a7 + 80) = 0;
    *(a7 + 88) = 0;
    *(a7 + 128) = 1;
    *(a7 + 136) = 0;
    *(a7 + 144) = 0;
    *(a7 + 152) = 100;
    *(a7 + 170) = v30;
    result = *&v40[26];
    *(a7 + 180) = *&v40[26];
    return result;
  }

LABEL_93:
  v25 = v7 <= 0;
  if (v7)
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (!v25)
  {
    v26 = 1;
  }

  v27 = v9 <= 0;
  if (v9)
  {
    v28 = -1;
  }

  else
  {
    v28 = 0;
  }

  if (!v27)
  {
    v28 = 1;
  }

  sub_10027E73C(v26 != v28, v18, v19, v20, v22, a7, a1, a2, &v38, &v35, &v33, &v31);
  return result;
}

void sub_10027E73C(int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, uint64_t a6@<X8>, _OWORD **a7@<X0>, uint64_t a8@<X1>, uint64_t a9@<X7>, uint64_t a10, __int128 *a11, __int128 *a12)
{
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = -1;
  }

  v17 = (a2 - 4) < 0xFFFFFFFD;
  v18 = (a2 & 0xFFFFFFFD) != 1;
  v19 = (a2 & 0xFFFFFFFD) != 1 || (a2 - 4) < 0xFFFFFFFD;
  if ((a2 - 4) <= 0xFFFFFFFC)
  {
    v18 = 0;
  }

  if (a3 == 2)
  {
    v20 = 1;
  }

  else
  {
    v20 = v16;
  }

  if (a3 == 2)
  {
    v21 = v18;
  }

  else
  {
    v21 = (a2 - 4) < 0xFFFFFFFD;
  }

  v22 = a3 - 1;
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v23 = !v19;
  }

  else
  {
    v23 = v21;
  }

  if ((a3 & 0xFFFFFFFD) != 1 || v22 >= 3)
  {
    v25 = !v19;
  }

  else
  {
    v25 = v23 + 1;
  }

  sub_10027E950(a7, a8, a2, a3, a4, a5, a9, v43, a10, a11, a12);
  memset(&v45[2], 0, 32);
  v26 = a5 & 0xFFFFFFFD;
  v27 = (a4 - 4) < 0xFFFFFFFD;
  v28 = (a4 & 0xFFFFFFFD) != 1;
  v29 = (a4 & 0xFFFFFFFD) != 1 || (a4 - 4) < 0xFFFFFFFD;
  if ((a4 - 4) <= 0xFFFFFFFC)
  {
    v28 = 0;
  }

  v30 = !v29;
  if (a5 != 2)
  {
    v28 = (a4 - 4) < 0xFFFFFFFD;
  }

  v31 = a5 - 1;
  if (v26 == 1)
  {
    v32 = v30;
  }

  else
  {
    v32 = v28;
  }

  if (v26 == 1 && v31 < 3)
  {
    v30 = v32 + 1;
  }

  v34 = v23 == 0;
  if (v22 < 3)
  {
    v34 = v17;
  }

  v35 = v32 == 0;
  if (v31 >= 3)
  {
    v27 = v35;
  }

  if (v25 == 1 && v30 == 1 && v34 && v27)
  {
    if (a1)
    {
      if (v20)
      {
        v36 = 102;
      }

      else
      {
        v36 = 116;
      }
    }

    else
    {
      v36 = 97;
    }
  }

  else
  {
    v36 = 99;
    if (v25 == 2 && v30 == 2)
    {
      v36 = 101;
    }
  }

  v37 = v43[7];
  *(a6 + 96) = v43[6];
  *(a6 + 112) = v37;
  *(a6 + 128) = v43[8];
  v38 = v43[3];
  *(a6 + 32) = v43[2];
  *(a6 + 48) = v38;
  v39 = v43[5];
  *(a6 + 64) = v43[4];
  *(a6 + 80) = v39;
  v40 = v43[1];
  *a6 = v43[0];
  *(a6 + 16) = v40;
  v41 = *&v45[16];
  *(a6 + 154) = *v45;
  if (v26 == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = -1;
  }

  if (a5 == 2)
  {
    v42 = 1;
  }

  *(a6 + 144) = v44;
  *(a6 + 152) = v36;
  *(a6 + 153) = a1;
  *(a6 + 170) = v41;
  *(a6 + 186) = *&v45[32];
  *(a6 + 188) = v20;
  *(a6 + 192) = v42;
}

void sub_10027E950(_OWORD **result@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, __int128 *a10, __int128 *a11)
{
  v15 = 0;
  *a8 = 0;
  *(a8 + 40) = xmmword_1003D8180;
  v16 = (a8 + 40);
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  *(a8 + 72) = 1;
  *(a8 + 80) = 0;
  *(a8 + 88) = 0;
  *(a8 + 96) = xmmword_1003D8180;
  v65 = (a8 + 96);
  *(a8 + 112) = 0;
  *(a8 + 120) = 0;
  *(a8 + 128) = 1;
  *(a8 + 136) = 0;
  *(a8 + 144) = 0;
  v68 = xmmword_1003D8180;
  v69 = 0.0;
  *&v70 = 0;
  *(&v70 + 1) = 1;
  v71 = 0.0;
  if ((a3 - 1) <= 2)
  {
    v18 = a6;
    v19 = a2;
    *(a8 + 8) = **result;
    if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
    {
      sub_1003867E8();
    }

    *v16 = xmmword_10045BD58;
    *(v16 + 2) = qword_10045BD68;
    *(a8 + 88) = 1;
    *(a8 + 64) = *a7;
    *(a8 + 80) = *(a7 + 16);
    if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
    {
      sub_1003867E8();
    }

    v68 = xmmword_10045BD58;
    v69 = *&qword_10045BD68;
    v15 = 1;
    a2 = v19;
    a6 = v18;
  }

  if (a5 == 2)
  {
    *(a8 + 16 * v15 + 8) = **a2;
    if ((atomic_load_explicit(byte_10045BD70, memory_order_acquire) & 1) == 0)
    {
      v59 = a6;
      v60 = a2;
      sub_1003867E8();
      a2 = v60;
      a6 = v59;
    }

    v20 = v16 + 56 * v15;
    *(v20 + 48) = 1;
    v21 = *a10;
    *v20 = *a10;
    v22 = *(a10 + 2);
    *(v20 + 16) = v22;
    *(v20 + 24) = xmmword_10045BD58;
    *(v20 + 40) = qword_10045BD68;
    v23 = &v68 + 24 * v15;
    *v23 = v21;
    *(v23 + 2) = v22;
    ++v15;
  }

  if ((a4 - 1) <= 2 && v15 <= 1)
  {
    *(a8 + 16 * v15 + 8) = *result[1];
    if ((atomic_load_explicit(byte_10045BD90, memory_order_acquire) & 1) == 0)
    {
      v61 = a6;
      v62 = a2;
      sub_100386840();
      a2 = v62;
      a6 = v61;
    }

    v24 = v16 + 56 * v15;
    *(v24 + 48) = 1;
    *v24 = xmmword_10045BD78;
    *(v24 + 16) = qword_10045BD88;
    *(v24 + 24) = *a9;
    *(v24 + 40) = *(a9 + 16);
    if ((atomic_load_explicit(byte_10045BD90, memory_order_acquire) & 1) == 0)
    {
      v63 = a6;
      v64 = a2;
      sub_100386840();
      a2 = v64;
      a6 = v63;
    }

    v25 = &v68 + 24 * v15;
    *v25 = xmmword_10045BD78;
    *(v25 + 2) = qword_10045BD88;
    ++v15;
  }

  if (a6 == 2 && v15 <= 1)
  {
    *(a8 + 16 * v15 + 8) = **(a2 + 8);
    if ((atomic_load_explicit(byte_10045BD90, memory_order_acquire) & 1) == 0)
    {
      sub_100386840();
    }

    v26 = v16 + 56 * v15;
    *(v26 + 48) = 1;
    v27 = *a11;
    *v26 = *a11;
    v28 = *(a11 + 2);
    *(v26 + 16) = v28;
    *(v26 + 24) = xmmword_10045BD78;
    *(v26 + 40) = qword_10045BD88;
    v29 = &v68 + 24 * v15;
    *v29 = v27;
    *(v29 + 2) = v28;
    ++v15;
  }

  if (v15 != 2)
  {
    goto LABEL_48;
  }

  if (vabdd_f64(v71, v69) >= 50.0)
  {
    if (v71 >= v69)
    {
      goto LABEL_48;
    }

LABEL_47:
    v53 = *(v16 + 6);
    v55 = v16[1];
    v54 = v16[2];
    v56 = *v16;
    v57 = v65[1];
    *v16 = *v65;
    v16[1] = v57;
    v16[2] = v65[2];
    *(v16 + 48) = *(v65 + 48);
    *v65 = v56;
    v65[1] = v55;
    v65[2] = v54;
    *(v65 + 48) = v53;
    v58 = *(a8 + 8);
    *(a8 + 8) = *(a8 + 24);
    *(a8 + 24) = v58;
    goto LABEL_48;
  }

  v67 = v70;
  sub_10027F0E8(&v67);
  v66 = v68;
  sub_10027F0E8(&v66);
  v30 = *(&v67 + 1);
  v31 = v67 / *(&v67 + 1);
  v32 = v67 % *(&v67 + 1);
  v33 = *(&v66 + 1);
  v34 = v66 / *(&v66 + 1);
  v35 = v66 % *(&v66 + 1);
  if (v67 % *(&v67 + 1) < 0)
  {
    v36 = ((*(&v67 + 1) + v32) >> 63) + (((*(&v67 + 1) + v32) & ~((*(&v67 + 1) + v32) >> 63)) - (((*(&v67 + 1) + v32) >> 63) + *(&v67 + 1) + v32)) / *(&v67 + 1) + 1;
    if (v36 <= 3)
    {
      goto LABEL_56;
    }

    v32 += (v36 & 0xFFFFFFFFFFFFFFFCLL) * *(&v67 + 1);
    v37 = 0uLL;
    v38 = (v67 / *(&v67 + 1));
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v40 = v36 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v38 = vaddq_s64(v38, v39);
      v37 = vaddq_s64(v37, v39);
      v40 -= 4;
    }

    while (v40);
    v31 = vaddvq_s64(vpaddq_s64(v38, v37));
    if (v36 != (v36 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_56:
      do
      {
        v32 += *(&v67 + 1);
        --v31;
      }

      while (v32 < 0);
    }
  }

  if (v35 < 0)
  {
    v41 = ((*(&v66 + 1) + v35) >> 63) + (((*(&v66 + 1) + v35) & ~((*(&v66 + 1) + v35) >> 63)) - (((*(&v66 + 1) + v35) >> 63) + *(&v66 + 1) + v35)) / *(&v66 + 1) + 1;
    if (v41 <= 3)
    {
      goto LABEL_57;
    }

    v35 += (v41 & 0xFFFFFFFFFFFFFFFCLL) * *(&v66 + 1);
    v42 = 0uLL;
    v43 = (v66 / *(&v66 + 1));
    v44.i64[0] = -1;
    v44.i64[1] = -1;
    v45 = v41 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v43 = vaddq_s64(v43, v44);
      v42 = vaddq_s64(v42, v44);
      v45 -= 4;
    }

    while (v45);
    v34 = vaddvq_s64(vpaddq_s64(v43, v42));
    if (v41 != (v41 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_57:
      do
      {
        v35 += *(&v66 + 1);
        --v34;
      }

      while (v35 < 0);
    }
  }

  v46 = v31 < v34;
  if (v31 != v34)
  {
LABEL_44:
    if (!v46)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v47 = 0;
  do
  {
    v48 = v32;
    v49 = v35;
    v50 = v47;
    if (!v32 || !v35)
    {
      if (v32 != v35 && (v47 != 1) != (v32 != 0))
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v47 ^= 1u;
    v51 = v30 / v32;
    v32 = v30 % v32;
    v52 = v33 / v35;
    v35 = v33 % v35;
    v33 = v49;
    v30 = v48;
  }

  while (v51 == v52);
  if (v50 == 1)
  {
    v46 = v51 < v52;
    goto LABEL_44;
  }

  if (v51 > v52)
  {
    goto LABEL_47;
  }

LABEL_48:
  *a8 = v15;
}

BOOL sub_10027EEEC(double *a1, double *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (vabdd_f64(v4, v5) >= 50.0)
  {
    return v4 < v5;
  }

  v32 = v2;
  v33 = v3;
  v31 = *a1;
  sub_10027F0E8(&v31);
  v30 = *a2;
  sub_10027F0E8(&v30);
  v7 = *(&v31 + 1);
  v8 = v31 / *(&v31 + 1);
  v9 = v31 % *(&v31 + 1);
  v10 = *(&v30 + 1);
  v11 = v30 / *(&v30 + 1);
  v12 = v30 % *(&v30 + 1);
  if (v31 % *(&v31 + 1) < 0)
  {
    v13 = ((*(&v31 + 1) + v9) >> 63) + (((*(&v31 + 1) + v9) & ~((*(&v31 + 1) + v9) >> 63)) - (((*(&v31 + 1) + v9) >> 63) + *(&v31 + 1) + v9)) / *(&v31 + 1) + 1;
    if (v13 <= 3)
    {
      goto LABEL_29;
    }

    v9 += (v13 & 0xFFFFFFFFFFFFFFFCLL) * *(&v31 + 1);
    v14 = 0uLL;
    v15 = (v31 / *(&v31 + 1));
    v16.i64[0] = -1;
    v16.i64[1] = -1;
    v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v15 = vaddq_s64(v15, v16);
      v14 = vaddq_s64(v14, v16);
      v17 -= 4;
    }

    while (v17);
    v8 = vaddvq_s64(vpaddq_s64(v15, v14));
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_29:
      do
      {
        v9 += *(&v31 + 1);
        --v8;
      }

      while (v9 < 0);
    }
  }

  if (v12 < 0)
  {
    v18 = ((*(&v30 + 1) + v12) >> 63) + (((*(&v30 + 1) + v12) & ~((*(&v30 + 1) + v12) >> 63)) - (((*(&v30 + 1) + v12) >> 63) + *(&v30 + 1) + v12)) / *(&v30 + 1) + 1;
    if (v18 <= 3)
    {
      goto LABEL_30;
    }

    v12 += (v18 & 0xFFFFFFFFFFFFFFFCLL) * *(&v30 + 1);
    v19 = 0uLL;
    v20 = (v30 / *(&v30 + 1));
    v21.i64[0] = -1;
    v21.i64[1] = -1;
    v22 = v18 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v20 = vaddq_s64(v20, v21);
      v19 = vaddq_s64(v19, v21);
      v22 -= 4;
    }

    while (v22);
    v11 = vaddvq_s64(vpaddq_s64(v20, v19));
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        v12 += *(&v30 + 1);
        --v11;
      }

      while (v12 < 0);
    }
  }

  if (v8 != v11)
  {
    return v8 < v11;
  }

  v23 = 0;
  while (1)
  {
    v24 = v9;
    v25 = v12;
    v26 = v23;
    if (!v9 || !v12)
    {
      break;
    }

    v23 ^= 1u;
    v27 = v7 / v9;
    v9 = v7 % v9;
    v28 = v10 / v12;
    v12 = v10 % v12;
    v10 = v25;
    v7 = v24;
    if (v27 != v28)
    {
      result = v27 > v28;
      if (v26 == 1)
      {
        return v27 < v28;
      }

      return result;
    }
  }

  if (v9 == v12)
  {
    return 0;
  }

  else
  {
    return (v23 != 1) ^ (v9 != 0);
  }
}

uint64_t sub_10027F0E8(uint64_t result)
{
  v1 = (result + 8);
  if (!*(result + 8))
  {
    std::logic_error::logic_error(&v7, "bad rational: zero denominator");
    v7.__vftable = &off_100445560;
    v5.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/rational.hpp";
    v5.i64[1] = "void boost::rational<long long>::normalize() [T = long long]";
    v6 = 892;
    sub_10027F270(&v7, &v5);
  }

  v2 = result;
  if (*result)
  {
    result = sub_10027F2DC(result, (result + 8));
    v3 = *v2 / result;
    v4 = v2[1] / result;
    *v2 = v3;
    v2[1] = v4;
    if (v4 == 0x8000000000000000)
    {
      std::logic_error::logic_error(&v7, "bad rational: non-zero singular denominator");
      v7.__vftable = &off_100445560;
      v5.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/rational.hpp";
      v5.i64[1] = "void boost::rational<long long>::normalize() [T = long long]";
      v6 = 906;
      sub_10027F270(&v7, &v5);
    }

    if (v4 < 0)
    {
      *v2 = -v3;
      *v1 = -v4;
    }
  }

  else
  {
    *v1 = 1;
  }

  return result;
}

void sub_10027F270(const std::logic_error *a1, int8x16_t *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10027F3FC(exception, a1, a2);
}

unint64_t sub_10027F2DC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 == 0x8000000000000000)
  {
    v12 = 0x8000000000000000 % *a2;
    return sub_10027F2DC(&v12, a2);
  }

  else
  {
    v4 = *a2;
    if (*a2 == 0x8000000000000000)
    {
      v12 = 0x8000000000000000 % v2;
      return sub_10027F2DC(a1, &v12);
    }

    else
    {
      if (v2 < 0)
      {
        v2 = -v2;
      }

      if (v4 >= 0)
      {
        v5 = *a2;
      }

      else
      {
        v5 = -v4;
      }

      if (v2 >= v5)
      {
        result = v5;
      }

      else
      {
        result = v2;
      }

      if (v2 <= v5)
      {
        v2 = v5;
      }

      if (v2)
      {
        if (result)
        {
          v6 = __clz(__rbit64(v2));
          v7 = v2 >> v6;
          v8 = __clz(__rbit64(result));
          v9 = result >> v8;
          if (v6 < v8)
          {
            LOBYTE(v8) = v6;
          }

          if (v9 < 2)
          {
LABEL_28:
            if (v9 == 1)
            {
              v7 = 1;
            }
          }

          else
          {
            while (1)
            {
              v10 = v7 % v9;
              v7 = v9 - v7 % v9;
              if (!v10)
              {
                break;
              }

              v11 = v10 >> __clz(__rbit64(v10));
              v7 >>= __clz(__rbit64(v7));
              if (v11 >= v7)
              {
                v9 = v7;
              }

              else
              {
                v9 = v11;
              }

              if (v11 > v7)
              {
                v7 = v11;
              }

              if (v9 <= 1)
              {
                goto LABEL_28;
              }
            }
          }

          return v7 << v8;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10027F3FC(uint64_t a1, const std::logic_error *a2, int8x16_t *a3)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &off_1004454E8;
  *(a1 + 8) = off_100445518;
  *(a1 + 24) = off_100445540;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

uint64_t sub_10027F4B4(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::domain_error::~domain_error((a1 + 8));
  return a1;
}

void sub_10027F6E4(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10027FA8C(exception, a1);
}

void sub_10027F740(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::domain_error::~domain_error((a1 + 8));

  operator delete();
}

void sub_10027F7E4(std::domain_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::domain_error::~domain_error(a1);
}

void sub_10027F878(std::domain_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::domain_error::~domain_error(a1);

  operator delete();
}

void sub_10027F928(std::domain_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(a1 - 1);
}

void sub_10027F9B0(std::domain_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(a1 - 1);

  operator delete();
}

void sub_10027FA54(std::domain_error *a1)
{
  std::domain_error::~domain_error(a1);

  operator delete();
}

uint64_t sub_10027FA8C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_100445560;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_1004454E8;
  *(a1 + 8) = off_100445518;
  *(a1 + 24) = off_100445540;
  return a1;
}

double sub_10027FBC8(uint64_t a1, double *a2, double **a3, double **a4)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = v5 * v5 + v6 * v6;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = v8 * v8 + v9 * v9;
  if (v7 >= v10)
  {
    v11 = v5 * v5 + v6 * v6;
  }

  else
  {
    v11 = v8 * v8 + v9 * v9;
  }

  if (v11 <= 0.0)
  {
    goto LABEL_10;
  }

  v12 = vabdd_f64(0.5, *(a1 + 72) / 1000000.0);
  v13 = v12 + v12;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = vabdd_f64(0.5, *(a1 + 48) / 1000000.0);
  v15 = v14 + v14;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  if (1.0 - v7 / v11 + v15 * 5.0 <= 1.0 - v10 / v11 + v13 * 5.0)
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = *a4;
    *a2 = v9 * v20 / v21 + **a4;
    result = v8 * v20 / v21 + v22[1];
    a2[1] = result;
    if (*(a1 + 40))
    {
      return result;
    }
  }

  else
  {
LABEL_10:
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = *a3;
    *a2 = v6 * v17 / v16 + **a3;
    result = v5 * v17 / v16 + v18[1];
    a2[1] = result;
    if (v16)
    {
      return result;
    }
  }

  if (!*(a1 + 64))
  {
    v24 = a3;
    if (sub_10027FDA4(a2, a3))
    {
      v25 = a4;
    }

    else
    {
      v26 = sub_10027FF90(a2, v24);
      v25 = a4;
      if (!v26)
      {
LABEL_19:
        if (sub_10027FDA4(a2, v25))
        {
          v28 = a4;
LABEL_23:
          v29 = *v28;
          *a2 = **v28;
          result = v29[1];
          a2[1] = result;
          return result;
        }

        if (sub_10027FF90(a2, a4))
        {
          v28 = a4 + 1;
          goto LABEL_23;
        }

        return result;
      }

      ++v24;
    }

    v27 = *v24;
    *a2 = **v24;
    a2[1] = v27[1];
    goto LABEL_19;
  }

  return result;
}

BOOL sub_10027FDA4(double *a1, double **a2)
{
  v2 = *a1;
  v3 = a2[1];
  v4 = **a2;
  if (v4 >= *v3)
  {
    if (v4 > *v3 && v4 < v2)
    {
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 1;
      }

      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 1;
      }

      v15 = fabs(v2);
      v16 = fabs(v4);
      v17 = vabdd_f64(v2, v4);
      if (v15 >= v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = v16;
      }

      if (v18 < 1.0)
      {
        v18 = 1.0;
      }

      if (v17 > v18 * 2.22044605e-16)
      {
        return 1;
      }
    }
  }

  else if (v2 < v4)
  {
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v11 = fabs(v4);
    v12 = fabs(v2);
    v13 = vabdd_f64(v4, v2);
    if (v11 >= v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v13 > v14 * 2.22044605e-16)
    {
      return 1;
    }
  }

  v7 = a1[1];
  v8 = (*a2)[1];
  v9 = v3[1];
  if (v8 >= v9)
  {
    if (v8 <= v9 || v8 >= v7)
    {
      return 0;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v19 = fabs(v7);
    v20 = fabs(v8);
    v21 = vabdd_f64(v7, v8);
  }

  else
  {
    if (v7 >= v8)
    {
      return 0;
    }

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v19 = fabs(v8);
    v20 = fabs(v7);
    v21 = vabdd_f64(v8, v7);
  }

  if (v19 >= v20)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if (v22 < 1.0)
  {
    v22 = 1.0;
  }

  return v21 > v22 * 2.22044605e-16;
}

BOOL sub_10027FF90(double *a1, double **a2)
{
  v2 = *a1;
  v3 = a2[1];
  v4 = *v3;
  v5 = **a2;
  if (*v3 >= v5)
  {
    if (*v3 > v5 && v4 < v2)
    {
      if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 1;
      }

      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 1;
      }

      v16 = fabs(v2);
      v17 = fabs(v4);
      v18 = vabdd_f64(v2, v4);
      if (v16 >= v17)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      if (v19 < 1.0)
      {
        v19 = 1.0;
      }

      if (v18 > v19 * 2.22044605e-16)
      {
        return 1;
      }
    }
  }

  else if (v2 < v4)
  {
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v12 = fabs(v4);
    v13 = fabs(v2);
    v14 = vabdd_f64(v4, v2);
    if (v12 >= v13)
    {
      v15 = v12;
    }

    else
    {
      v15 = v13;
    }

    if (v15 < 1.0)
    {
      v15 = 1.0;
    }

    if (v14 > v15 * 2.22044605e-16)
    {
      return 1;
    }
  }

  v8 = a1[1];
  v9 = v3[1];
  v10 = (*a2)[1];
  if (v9 >= v10)
  {
    if (v9 <= v10 || v9 >= v8)
    {
      return 0;
    }

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v20 = fabs(v8);
    v21 = fabs(v9);
    v22 = vabdd_f64(v8, v9);
  }

  else
  {
    if (v8 >= v9)
    {
      return 0;
    }

    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 1;
    }

    v20 = fabs(v9);
    v21 = fabs(v8);
    v22 = vabdd_f64(v9, v8);
  }

  if (v20 >= v21)
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  if (v23 < 1.0)
  {
    v23 = 1.0;
  }

  return v22 > v23 * 2.22044605e-16;
}

void sub_10028017C(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_1001C7D6C(a1, &v10);
}

void sub_1002804EC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100280544(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v2 + 24);
  v9 = 1.0;
  v6 = sub_10027E098(v3, v4, v5, &v9);
  if (v6 == 0.0)
  {
    return 0;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = fabs(v6);
    if (v6 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v8 <= v9 * 2.22044605e-16)
    {
      return 0;
    }
  }

  else if (v6 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1002805E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  v4 = sub_10027D8FC(v2, 2);
  v5 = *(*(a1 + 16) + 24);
  v9 = 1.0;
  v6 = sub_10027E098(v3, v4, v5, &v9);
  if (v6 == 0.0)
  {
    return 0;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = fabs(v6);
    if (v6 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v8 <= v9 * 2.22044605e-16)
    {
      return 0;
    }
  }

  else if (v6 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1002806A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v2 + 24);
  v9 = 1.0;
  v6 = sub_10027E098(v3, v4, v5, &v9);
  if (v6 == 0.0)
  {
    return 0;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = fabs(v6);
    if (v6 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v8 <= v9 * 2.22044605e-16)
    {
      return 0;
    }
  }

  else if (v6 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_10028073C(int a1, int a2, void *__src, unint64_t **a4, uint64_t a5, uint64_t a6, void (*a7)(_BYTE *))
{
  memcpy(v40, __src, sizeof(v40));
  v11 = *(a5 + 496);
  if (*(a5 + 492) != 1)
  {
    goto LABEL_14;
  }

  v12 = *(a6 + 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  v15 = sub_10027D8FC(v12, 2);
  v41 = 1.0;
  v16 = sub_10027E098(v13, v14, v15, &v41);
  if (v16 == 0.0)
  {
    goto LABEL_14;
  }

  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (fabs(v16) <= v41 * 2.22044605e-16)
    {
      goto LABEL_14;
    }

    v17 = a5 + 304;
    if (v16 > 0.0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = 1;
    goto LABEL_9;
  }

  v17 = a5 + 304;
  if (v16 <= 0.0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v18 = 2;
LABEL_9:
  *&v40[208] = 3;
  *&v40[40] = v18;
  *&v40[16] = 5;
  *v40 = *(v17 + 24);
  v19 = *(v17 + 112);
  *&v40[88] = *(v17 + 96);
  *&v40[104] = v19;
  v20 = *(v17 + 120);
  *&v40[272] = *(v17 + 136);
  *&v40[256] = v20;
  a7(v40);
  v21 = *a4;
  v22 = (*a4)[2];
  v23 = (*a4)[1];
  v24 = 2 * (v22 - v23) - 1;
  if (v22 == v23)
  {
    v24 = 0;
  }

  v25 = v21[5] + v21[4];
  if (v24 == v25)
  {
    sub_10028017C(*a4);
    v23 = v21[1];
    v25 = v21[5] + v21[4];
  }

  memcpy((*(v23 + ((v25 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v25 & 0xF)), v40, 0x178uLL);
  ++v21[5];
LABEL_14:
  if (v11 != 1)
  {
    return;
  }

  v26 = *(a6 + 16);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v29 = sub_10027D8FC(v26, 2);
  v41 = 1.0;
  v30 = sub_10027E098(v27, v28, v29, &v41);
  if (v30 == 0.0)
  {
    return;
  }

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (fabs(v30) <= v41 * 2.22044605e-16)
    {
      return;
    }

    v31 = a5 + 304;
    if (v30 > 0.0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v32 = 1;
    goto LABEL_22;
  }

  v31 = a5 + 304;
  if (v30 <= 0.0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v32 = 2;
LABEL_22:
  *&v40[208] = v32;
  *&v40[40] = 3;
  *&v40[16] = 5;
  *v40 = *(v31 + 8);
  v33 = *(v31 + 56);
  *&v40[88] = *(v31 + 40);
  *&v40[104] = v33;
  v34 = *(v31 + 80);
  *&v40[256] = *(v31 + 64);
  *&v40[272] = v34;
  a7(v40);
  v35 = *a4;
  v36 = (*a4)[2];
  v37 = (*a4)[1];
  v38 = 2 * (v36 - v37) - 1;
  if (v36 == v37)
  {
    v38 = 0;
  }

  v39 = v35[5] + v35[4];
  if (v38 == v39)
  {
    sub_10028017C(*a4);
    v37 = v35[1];
    v39 = v35[5] + v35[4];
  }

  memcpy((*(v37 + ((v39 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 376 * (v39 & 0xF)), v40, 0x178uLL);
  ++v35[5];
}

uint64_t sub_100280A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  __p = 0;
  v31 = 0;
  v32 = 0;
  v14 = *a1;
  v15 = *(a1 + 8);
  if (v15 - *a1 >= 0x11)
  {
    *&v24 = 0;
    *(&v24 + 1) = -1;
    v25 = -1;
    sub_100278258(&__p, v14, v15, a3, a2, &v24, 0xAuLL);
  }

  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  if (v17 != v16)
  {
    v18 = 0;
    do
    {
      v19 = *v17;
      v20 = v17[1];
      if ((v20 - *v17) >= 0x11)
      {
        v24 = xmmword_1003C6FC0;
        v25 = v18;
        sub_100278258(&__p, v19, v20, a3, a2, &v24, 0xAuLL);
        v16 = *(a1 + 32);
      }

      v17 += 3;
      ++v18;
    }

    while (v17 != v16);
  }

  *&v24 = a1;
  *(&v24 + 1) = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v22 = a2;
  v23 = a2;
  sub_100280BAC(&__p, &v24, &v23, &v22, 0x10uLL);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_100280B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100280BAC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * (&v7[-*a1] >> 3) <= a5)
  {
    if (v8 != v7)
    {
      v20 = (v8 + 216);
      do
      {
        v21 = (v8 + 120);
        if ((v8 + 120) != v7)
        {
          for (i = v20; i - 96 != v7; i += 120)
          {
            if (*(v8 + 48) >= *(i - 8) && *(v8 + 32) <= *(i - 6))
            {
              v23 = *(v8 + 56) >= *(i - 7) && *(v8 + 40) <= *(i - 5);
              if (v23 && (*(v8 + 96) & 1) == 0 && (*i & 1) == 0)
              {
                result = sub_10028396C(*(a2 + 10), *a2, v8, *(a2 + 10), *a2, i - 24, 0, *(a2 + 44), a2[1], a2[2], a2[3]);
                if (!result)
                {
                  return result;
                }

                v7 = a1[1];
              }
            }
          }
        }

        v20 += 120;
        v8 += 120;
      }

      while (v21 != v7);
    }

    return 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v24 = vnegq_f64(v9);
    v25 = vnegq_f64(0);
    if (v8 != v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x8000000000000000;
      v12 = 0x8000000000000000;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = *(v8 + 32);
      if (v14 != NAN && (v24.f64[0] = *(v8 + 32), v13 = *&v14, v14 == -0.0))
      {
        v15 = *(v8 + 40);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v25.f64[0] = v14;
        v12 = *&v14;
        v15 = *(v8 + 40);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }
      }

      *&v24.f64[1] = v15;
      v10 = v15;
      if (v15 == 0x8000000000000000)
      {
        v16 = *(v8 + 48);
        if (v16 < v13)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }

LABEL_15:
      *&v25.f64[1] = v15;
      v11 = v15;
      v16 = *(v8 + 48);
      if (v16 < v13)
      {
LABEL_16:
        *&v24.f64[0] = v16;
        if (v16 > v12)
        {
LABEL_17:
          *&v25.f64[0] = v16;
          v17 = *(v8 + 56);
          if (v17 < v10)
          {
LABEL_18:
            *&v24.f64[1] = v17;
            if (v17 > v11)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }

LABEL_10:
          if (v17 > v11)
          {
LABEL_19:
            *&v25.f64[1] = v17;
          }

LABEL_20:
          operator new();
        }

LABEL_9:
        v17 = *(v8 + 56);
        if (v17 < v10)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

LABEL_8:
      if (v16 > v12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    result = sub_100280F74(&v24, &v26, 0, a5, a2, a3, a4, v29);
    if (v26)
    {
      v27 = v26;
      v19 = result;
      operator delete(v26);
      return v19;
    }
  }

  return result;
}

void sub_100280F4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    *(v2 - 112) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100280F74(__n128 *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a1[1].n128_i64[0];
  v15 = v14 / 2 + a1->n128_u64[0] / 2;
  v16 = a1->n128_u64[0] % 2;
  v17 = a1[1];
  v92 = *a1;
  v93[1] = v17.n128_i64[1];
  v90.n128_u64[1] = v92.n128_u64[1];
  v91 = v17;
  v18 = v15 + ((((v14 % 2) + v16 + ((((v14 % 2) + v16) & 0x80) >> 7)) << 24) >> 25);
  v93[0] = v18;
  v89 = 0;
  v90.n128_u64[0] = v18;
  v87 = 0;
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v20 = *a2;
  v19 = *(a2 + 8);
  if (*a2 == v19)
  {
    goto LABEL_43;
  }

  do
  {
    v25 = *v20;
    v26 = *(*v20 + 32);
    if (v93[0] >= v26 && v92.n128_i64[0] <= v25[6])
    {
      v27 = v93[1] >= v25[5] && v92.n128_u64[1] <= v25[7];
      if (v91.n128_i64[0] < v26)
      {
LABEL_16:
        if (!v27)
        {
          goto LABEL_3;
        }

        v29 = &v87;
LABEL_34:
        sub_100279BF0(v29, v20);
        v19 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v27 = 0;
      if (v91.n128_i64[0] < v26)
      {
        goto LABEL_16;
      }
    }

    if (v18 > v25[6])
    {
      goto LABEL_16;
    }

    v30 = v25[5];
    v31 = v25[7];
    v32 = v91.n128_i64[1] >= v30 && v90.n128_u64[1] <= v31;
    v33 = v32;
    v34 = v32 || v27;
    if ((v27 & v33) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v87;
    }

    if (v27)
    {
      v29 = p_p;
    }

    else
    {
      v29 = &v84;
    }

    if (v34)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v20;
  }

  while (v20 != v19);
  v37 = __p;
  v36 = v82;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v82)
  {
    v79 = 0u;
    v80 = 0u;
    v38 = vnegq_f64(0);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = vnegq_f64(v39);
    v41 = __p;
    v42 = v40;
    v43 = v38;
    do
    {
      v44 = *v41++;
      v45 = v44[2];
      v46 = v44[3];
      v47 = vcgtq_s64(v40, v45);
      v48 = vbslq_s8(v47, v45, v42);
      v49 = vbslq_s8(v47, v45, v40);
      v50 = vcgtq_s64(v49, v46);
      v42 = vbslq_s8(v50, v46, v48);
      v40 = vbslq_s8(v50, v46, v49);
      v51 = vcgtq_s64(v45, v38);
      v52 = vbslq_s8(v51, v45, v43);
      v53 = vbslq_s8(v51, v45, v38);
      v54 = vcgtq_s64(v46, v53);
      v43 = vbslq_s8(v54, v46, v52);
      v38 = vbslq_s8(v54, v46, v53);
    }

    while (v41 != v82);
    v79 = v42;
    v80 = v43;
    if (a3 <= 0x63 && (v82 - __p) >> 3 >= a4)
    {
      if (sub_100281728(&v79, &__p, a3 + 1, a4, a5, v10, v9, v8))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v66 = v37 + 8;
      if (v37 + 8 != v36)
      {
        for (i = v37 + 8; i != v36; i += 8)
        {
          v68 = *v37;
          v69 = *i;
          if (*(*v37 + 48) >= *(*i + 32) && *(v68 + 32) <= *(v69 + 48))
          {
            v70 = *(v68 + 56) >= *(v69 + 40) && *(v68 + 40) <= *(v69 + 56);
            if (v70 && (*(v68 + 96) & 1) == 0 && (*(v69 + 96) & 1) == 0)
            {
              if (!sub_10028396C(*(a5 + 10), *a5, v68, *(a5 + 10), *a5, v69, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v36 = v82;
            }
          }
        }
      }

      v37 += 8;
    }

    while (v66 != v36);
LABEL_41:
    if (!sub_1002815B4(&v79, &__p, &v87, a3, a4, a5) || (sub_1002815B4(&v79, &__p, &v84, a3, a4, a5) & 1) == 0)
    {
LABEL_81:
      v64 = 0;
      v65 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v56 = v87;
  v55 = v88;
  if (v13 > 0x63 || (v88 - v87) >> 3 < v12)
  {
LABEL_61:
    while (v56 != v55)
    {
      v57 = v56;
      v56 += 8;
      if (v56 != v55)
      {
        v58 = v56;
        while (1)
        {
          v59 = *v57;
          v60 = *v58;
          if (*(*v57 + 48) >= *(*v58 + 32) && *(v59 + 32) <= *(v60 + 48))
          {
            v61 = *(v59 + 56) >= *(v60 + 40) && *(v59 + 40) <= *(v60 + 56);
            if (v61 && (*(v59 + 96) & 1) == 0 && (*(v60 + 96) & 1) == 0)
            {
              if (!sub_10028396C(*(a5 + 10), *a5, v59, *(a5 + 10), *a5, v60, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v55 = v88;
            }
          }

          v58 += 8;
          if (v58 == v55)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_100281728(&v92, &v87, v13 + 1, v12, a5, v10, v9, v8))
  {
    goto LABEL_81;
  }

  v63 = v84;
  v62 = v85;
  if (v13 <= 0x63 && (v85 - v84) >> 3 >= v12)
  {
    v64 = sub_100281728(&v90, &v84, v13 + 1, v12, a5, v10, v9, v8);
    v65 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v82 = v65;
    operator delete(v65);
    goto LABEL_83;
  }

  if (v84 != v85)
  {
    do
    {
      v72 = v63;
      v63 += 8;
      if (v63 != v62)
      {
        for (j = v63; j != v62; j += 8)
        {
          v74 = *v72;
          v75 = *j;
          if (*(*v72 + 48) >= *(*j + 32) && *(v74 + 32) <= *(v75 + 48))
          {
            v76 = *(v74 + 56) >= *(v75 + 40) && *(v74 + 40) <= *(v75 + 56);
            if (v76 && (*(v74 + 96) & 1) == 0 && (*(v75 + 96) & 1) == 0)
            {
              if (!sub_10028396C(*(a5 + 10), *a5, v74, *(a5 + 10), *a5, v75, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v62 = v85;
            }
          }
        }
      }
    }

    while (v63 != v62);
  }

  v64 = 1;
  v65 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  return v64;
}

void sub_10028154C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_1002815B4(__int128 *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = *a2;
  v9 = a2[1];
  if (a5 <= v9 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_100282C24(a1, a2, a3, a4 + 1, a5, a6);
  }

  if (v10 != v9)
  {
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v13 = *a3;
        if (*a3 != v11)
        {
          do
          {
            v14 = *v10;
            v15 = *v13;
            if (*(*v10 + 48) >= *(*v13 + 32) && *(v14 + 32) <= *(v15 + 48))
            {
              v16 = *(v14 + 56) >= *(v15 + 40) && *(v14 + 40) <= *(v15 + 56);
              if (v16 && (*(v14 + 96) & 1) == 0 && (*(v15 + 96) & 1) == 0)
              {
                result = sub_10028396C(*(a6 + 10), *a6, v14, *(a6 + 10), *a6, v15, 0, *(a6 + 44), a6[1], a6[2], a6[3]);
                if (!result)
                {
                  return result;
                }

                v11 = a3[1];
              }
            }

            ++v13;
          }

          while (v13 != v11);
          v9 = a2[1];
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  return 1;
}

uint64_t sub_100281728(__n128 *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v15 = a1[1].n128_u64[0];
  v14 = a1[1].n128_i64[1];
  v16 = a1->n128_i64[1];
  v17 = v14 / 2 + v16 / 2;
  v18 = a1[1];
  v93 = *a1;
  v91.n128_u64[0] = v93.n128_u64[0];
  v92 = v18;
  LODWORD(v14) = v14 % 2 + v16 % 2;
  v19 = v17 + ((v14 + ((v14 & 0x80) >> 7)) << 24 >> 25);
  v94 = v15;
  v95 = v19;
  v91.n128_u64[1] = v19;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  __p = 0;
  v83 = 0;
  v84 = 0;
  v21 = *a2;
  v20 = *(a2 + 8);
  if (*a2 == v20)
  {
    goto LABEL_43;
  }

  do
  {
    v26 = *v21;
    v27 = *(*v21 + 32);
    if (v94 >= v27 && v93.n128_i64[0] <= v26[6])
    {
      v28 = v95 >= v26[5] && v93.n128_u64[1] <= v26[7];
      if (v92.n128_i64[0] < v27)
      {
LABEL_16:
        if (!v28)
        {
          goto LABEL_3;
        }

        v30 = &v88;
LABEL_34:
        sub_100279BF0(v30, v21);
        v20 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v28 = 0;
      if (v92.n128_i64[0] < v27)
      {
        goto LABEL_16;
      }
    }

    if (v91.n128_i64[0] > v26[6])
    {
      goto LABEL_16;
    }

    v31 = v26[5];
    v32 = v26[7];
    v33 = v92.n128_i64[1] >= v31 && v19 <= v32;
    v34 = v33;
    v35 = v33 || v28;
    if ((v28 & v34) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v88;
    }

    if (v28)
    {
      v30 = p_p;
    }

    else
    {
      v30 = &v85;
    }

    if (v35)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v21;
  }

  while (v21 != v20);
  v38 = __p;
  v37 = v83;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v83)
  {
    v80 = 0u;
    v81 = 0u;
    v39 = vnegq_f64(0);
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v41 = vnegq_f64(v40);
    v42 = __p;
    v43 = v41;
    v44 = v39;
    do
    {
      v45 = *v42++;
      v46 = v45[2];
      v47 = v45[3];
      v48 = vcgtq_s64(v41, v46);
      v49 = vbslq_s8(v48, v46, v43);
      v50 = vbslq_s8(v48, v46, v41);
      v51 = vcgtq_s64(v50, v47);
      v43 = vbslq_s8(v51, v47, v49);
      v41 = vbslq_s8(v51, v47, v50);
      v52 = vcgtq_s64(v46, v39);
      v53 = vbslq_s8(v52, v46, v44);
      v54 = vbslq_s8(v52, v46, v39);
      v55 = vcgtq_s64(v47, v54);
      v44 = vbslq_s8(v55, v47, v53);
      v39 = vbslq_s8(v55, v47, v54);
    }

    while (v42 != v83);
    v80 = v43;
    v81 = v44;
    if (a3 <= 0x63 && (v83 - __p) >> 3 >= a4)
    {
      if (sub_100280F74(&v80, &__p, a3 + 1, a4, a5, v10, v9, v8))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v67 = v38 + 8;
      if (v38 + 8 != v37)
      {
        for (i = v38 + 8; i != v37; i += 8)
        {
          v69 = *v38;
          v70 = *i;
          if (*(*v38 + 48) >= *(*i + 32) && *(v69 + 32) <= *(v70 + 48))
          {
            v71 = *(v69 + 56) >= *(v70 + 40) && *(v69 + 40) <= *(v70 + 56);
            if (v71 && (*(v69 + 96) & 1) == 0 && (*(v70 + 96) & 1) == 0)
            {
              if (!sub_10028396C(*(a5 + 10), *a5, v69, *(a5 + 10), *a5, v70, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v37 = v83;
            }
          }
        }
      }

      v38 += 8;
    }

    while (v67 != v37);
LABEL_41:
    if (!sub_100281D6C(&v80, &__p, &v88, a3, a4, a5) || (sub_100281D6C(&v80, &__p, &v85, a3, a4, a5) & 1) == 0)
    {
LABEL_81:
      v65 = 0;
      v66 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v57 = v88;
  v56 = v89;
  if (v13 > 0x63 || (v89 - v88) >> 3 < v12)
  {
LABEL_61:
    while (v57 != v56)
    {
      v58 = v57;
      v57 += 8;
      if (v57 != v56)
      {
        v59 = v57;
        while (1)
        {
          v60 = *v58;
          v61 = *v59;
          if (*(*v58 + 48) >= *(*v59 + 32) && *(v60 + 32) <= *(v61 + 48))
          {
            v62 = *(v60 + 56) >= *(v61 + 40) && *(v60 + 40) <= *(v61 + 56);
            if (v62 && (*(v60 + 96) & 1) == 0 && (*(v61 + 96) & 1) == 0)
            {
              if (!sub_10028396C(*(a5 + 10), *a5, v60, *(a5 + 10), *a5, v61, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v56 = v89;
            }
          }

          v59 += 8;
          if (v59 == v56)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_100280F74(&v93, &v88, v13 + 1, v12, a5, v10, v9, v8))
  {
    goto LABEL_81;
  }

  v64 = v85;
  v63 = v86;
  if (v13 <= 0x63 && (v86 - v85) >> 3 >= v12)
  {
    v65 = sub_100280F74(&v91, &v85, v13 + 1, v12, a5, v10, v9, v8);
    v66 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v83 = v66;
    operator delete(v66);
    goto LABEL_83;
  }

  if (v85 != v86)
  {
    do
    {
      v73 = v64;
      v64 += 8;
      if (v64 != v63)
      {
        for (j = v64; j != v63; j += 8)
        {
          v75 = *v73;
          v76 = *j;
          if (*(*v73 + 48) >= *(*j + 32) && *(v75 + 32) <= *(v76 + 48))
          {
            v77 = *(v75 + 56) >= *(v76 + 40) && *(v75 + 40) <= *(v76 + 56);
            if (v77 && (*(v75 + 96) & 1) == 0 && (*(v76 + 96) & 1) == 0)
            {
              if (!sub_10028396C(*(a5 + 10), *a5, v75, *(a5 + 10), *a5, v76, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v63 = v86;
            }
          }
        }
      }
    }

    while (v64 != v63);
  }

  v65 = 1;
  v66 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  return v65;
}

void sub_100281D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a23;
    if (!a23)
    {
LABEL_3:
      v29 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = a23;
    if (!a23)
    {
      goto LABEL_3;
    }
  }

  operator delete(v28);
  v29 = a26;
  if (!a26)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100281D6C(void *a1, uint64_t **a2, uint64_t **a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = *a2;
  v9 = a2[1];
  if (a5 <= v9 - *a2 && a4 <= 0x63 && a3[1] - *a3 >= a5)
  {
    return sub_100281EE0(a1, a2, a3, a4 + 1, a5, a6);
  }

  if (v10 != v9)
  {
    v11 = a3[1];
    if (*a3 != v11)
    {
      do
      {
        v13 = *a3;
        if (*a3 != v11)
        {
          do
          {
            v14 = *v10;
            v15 = *v13;
            if (*(*v10 + 48) >= *(*v13 + 32) && *(v14 + 32) <= *(v15 + 48))
            {
              v16 = *(v14 + 56) >= *(v15 + 40) && *(v14 + 40) <= *(v15 + 56);
              if (v16 && (*(v14 + 96) & 1) == 0 && (*(v15 + 96) & 1) == 0)
              {
                result = sub_10028396C(*(a6 + 10), *a6, v14, *(a6 + 10), *a6, v15, 0, *(a6 + 44), a6[1], a6[2], a6[3]);
                if (!result)
                {
                  return result;
                }

                v11 = a3[1];
              }
            }

            ++v13;
          }

          while (v13 != v11);
          v9 = a2[1];
        }

        ++v10;
      }

      while (v10 != v9);
    }
  }

  return 1;
}

uint64_t sub_100281EE0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = a1[2];
  v11 = *(a1 + 1);
  v12 = *a1 / 2;
  v176 = *a1;
  v178 = *(&v11 + 1);
  *(&v174 + 1) = *(&v176 + 1);
  v175 = v11;
  v13 = v10 % 2 + v176 - 2 * v12;
  v14 = v10 / 2 + v12 + ((v13 + ((v13 & 0x80) >> 7)) << 24 >> 25);
  v177 = v14;
  v173 = 0;
  *&v174 = v14;
  v171 = 0;
  v172 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  __p = 0;
  v157 = 0;
  v158 = 0;
  v16 = *a2;
  v15 = *(a2 + 8);
  if (*a2 != v15)
  {
    do
    {
      v18 = *v16;
      v19 = *(*v16 + 32);
      if (v177 >= v19 && v176 <= v18[6])
      {
        v20 = v178 >= v18[5] && *(&v176 + 1) <= v18[7];
        if (v175 < v19)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v20 = 0;
        if (v175 < v19)
        {
          goto LABEL_16;
        }
      }

      if (v14 <= v18[6])
      {
        v23 = v18[5];
        v24 = v18[7];
        v25 = *(&v175 + 1) >= v23 && *(&v174 + 1) <= v24;
        v26 = v25;
        v27 = v25 || v20;
        if ((v20 & v26) != 0)
        {
          v28 = &v165;
        }

        else
        {
          v28 = &v171;
        }

        if (v20)
        {
          v22 = v28;
        }

        else
        {
          v22 = &v168;
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v20)
      {
        v22 = &v171;
LABEL_34:
        sub_100279BF0(v22, v16);
        v15 = *(a2 + 8);
      }

LABEL_3:
      ++v16;
    }

    while (v16 != v15);
  }

  v30 = *a3;
  v29 = *(a3 + 8);
  if (*a3 != v29)
  {
    do
    {
      v31 = *v30;
      v32 = *(*v30 + 32);
      if (v177 >= v32 && v176 <= v31[6])
      {
        v33 = v178 >= v31[5] && *(&v176 + 1) <= v31[7];
        if (v175 < v32)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v33 = 0;
        if (v175 < v32)
        {
          goto LABEL_51;
        }
      }

      if (v14 <= v31[6])
      {
        v36 = v31[5];
        v37 = v31[7];
        v38 = *(&v175 + 1) >= v36 && *(&v174 + 1) <= v37;
        v39 = v38;
        v40 = v38 || v33;
        if ((v33 & v39) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v162;
        }

        if (v33)
        {
          v35 = p_p;
        }

        else
        {
          v35 = &v159;
        }

        if ((v40 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v33)
      {
        goto LABEL_38;
      }

      v35 = &v162;
LABEL_37:
      sub_100279BF0(v35, v30);
      v29 = *(a3 + 8);
LABEL_38:
      ++v30;
    }

    while (v30 != v29);
  }

  v43 = v165;
  v42 = v166;
  if (v165 == v166)
  {
    goto LABEL_133;
  }

  v45 = __p;
  v44 = v157;
  if (a5 > (v166 - v165) >> 3 || a4 > 0x63 || (v157 - __p) >> 3 < a5)
  {
    if (__p != v157)
    {
      do
      {
        v46 = __p;
        if (__p != v44)
        {
          do
          {
            v47 = *v43;
            v48 = *v46;
            if (*(*v43 + 48) >= *(*v46 + 32) && *(v47 + 32) <= *(v48 + 48))
            {
              v49 = *(v47 + 56) >= *(v48 + 40) && *(v47 + 40) <= *(v48 + 56);
              if (v49 && (*(v47 + 96) & 1) == 0 && (*(v48 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v47, *(a6 + 10), *a6, v48, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v44 = v157;
              }
            }

            v46 += 8;
          }

          while (v46 != v44);
          v42 = v166;
        }

        v43 += 8;
      }

      while (v43 != v42);
    }
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
    v50 = vnegq_f64(0);
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v52 = vnegq_f64(v51);
    v53 = v52;
    v54 = v50;
    do
    {
      v55 = *v43;
      v43 += 8;
      v56 = v55[2];
      v57 = v55[3];
      v58 = vcgtq_s64(v52, v56);
      v59 = vbslq_s8(v58, v56, v53);
      v60 = vbslq_s8(v58, v56, v52);
      v61 = vcgtq_s64(v60, v57);
      v53 = vbslq_s8(v61, v57, v59);
      v52 = vbslq_s8(v61, v57, v60);
      v62 = vcgtq_s64(v56, v50);
      v63 = vbslq_s8(v62, v56, v54);
      v64 = vbslq_s8(v62, v56, v50);
      v65 = vcgtq_s64(v57, v64);
      v54 = vbslq_s8(v65, v57, v63);
      v50 = vbslq_s8(v65, v57, v64);
    }

    while (v43 != v166);
    v154 = v53;
    v155 = v54;
    if (__p != v157)
    {
      v66 = v53;
      v67 = v54;
      do
      {
        v68 = *v45++;
        v69 = v68[2];
        v70 = v68[3];
        v71 = vcgtq_s64(v53, v69);
        v72 = vbslq_s8(v71, v69, v66);
        v73 = vbslq_s8(v71, v69, v53);
        v74 = vcgtq_s64(v73, v70);
        v66 = vbslq_s8(v74, v70, v72);
        v53 = vbslq_s8(v74, v70, v73);
        v75 = vcgtq_s64(v69, v54);
        v76 = vbslq_s8(v75, v69, v67);
        v77 = vbslq_s8(v75, v69, v54);
        v78 = vcgtq_s64(v70, v77);
        v67 = vbslq_s8(v78, v70, v76);
        v54 = vbslq_s8(v78, v70, v77);
      }

      while (v45 != v157);
      v154 = v66;
      v155 = v67;
    }

    if ((sub_100282C24(v154.i8, &v165, &__p, a4 + 1, a5, a6) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v79 = v163;
  if (a5 <= (v163 - v162) >> 3)
  {
    v81 = v165;
    v80 = v166;
    if (a5 <= (v160 - v159) >> 3 && a4 <= 0x63 && (v166 - v165) >> 3 >= a5)
    {
      v86.f64[0] = NAN;
      v86.f64[1] = NAN;
      v87 = vnegq_f64(v86);
      v88 = vnegq_f64(0);
      v154 = v87;
      v155 = v88;
      if (v165 != v166)
      {
        v89 = v87;
        v90 = v88;
        do
        {
          v91 = *v81;
          v81 += 8;
          v92 = v91[2];
          v93 = v91[3];
          v94 = vcgtq_s64(v87, v92);
          v95 = vbslq_s8(v94, v92, v89);
          v96 = vbslq_s8(v94, v92, v87);
          v97 = vcgtq_s64(v96, v93);
          v89 = vbslq_s8(v97, v93, v95);
          v87 = vbslq_s8(v97, v93, v96);
          v98 = vcgtq_s64(v92, v88);
          v99 = vbslq_s8(v98, v92, v90);
          v100 = vbslq_s8(v98, v92, v88);
          v101 = vcgtq_s64(v93, v100);
          v90 = vbslq_s8(v101, v93, v99);
          v88 = vbslq_s8(v101, v93, v100);
        }

        while (v81 != v166);
        v154 = v89;
        v155 = v90;
      }

      if (!sub_100282C24(v154.i8, &v165, &v162, a4 + 1, a5, a6) || (sub_100282C24(v154.i8, &v165, &v159, a4 + 1, a5, a6) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v81 = v165;
    v80 = v166;
  }

  if (v81 == v80 || v162 == v163)
  {
    if (v81 == v80)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v82 = v162;
    if (v162 != v79)
    {
      do
      {
        v83 = *v81;
        v84 = *v82;
        if (*(*v81 + 48) >= *(*v82 + 32) && *(v83 + 32) <= *(v84 + 48))
        {
          v85 = *(v83 + 56) >= *(v84 + 40) && *(v83 + 40) <= *(v84 + 56);
          if (v85 && (*(v83 + 96) & 1) == 0 && (*(v84 + 96) & 1) == 0)
          {
            if (!sub_10028396C(*(a6 + 10), *a6, v83, *(a6 + 10), *a6, v84, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
            {
              goto LABEL_245;
            }

            v79 = v163;
          }
        }

        v82 += 8;
      }

      while (v82 != v79);
      v80 = v166;
    }

    v81 += 8;
  }

  while (v81 != v80);
  v81 = v165;
  if (v165 != v80)
  {
LABEL_132:
    v102 = v160;
    if (v159 != v160)
    {
      do
      {
        v127 = v159;
        if (v159 != v102)
        {
          do
          {
            v128 = *v81;
            v129 = *v127;
            if (*(*v81 + 48) >= *(*v127 + 32) && *(v128 + 32) <= *(v129 + 48))
            {
              v130 = *(v128 + 56) >= *(v129 + 40) && *(v128 + 40) <= *(v129 + 56);
              if (v130 && (*(v128 + 96) & 1) == 0 && (*(v129 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v128, *(a6 + 10), *a6, v129, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v102 = v160;
              }
            }

            v127 += 8;
          }

          while (v127 != v102);
          v80 = v166;
        }

        v81 += 8;
      }

      while (v81 != v80);
    }
  }

LABEL_133:
  v104 = __p;
  v103 = v157;
  if (__p != v157)
  {
    v106 = v171;
    v105 = v172;
    if (a5 > (v172 - v171) >> 3 || a5 > (v169 - v168) >> 3 || a4 > 0x63 || (v157 - __p) >> 3 < a5)
    {
      while (v106 != v105)
      {
        v123 = __p;
        if (__p != v103)
        {
          do
          {
            v124 = *v106;
            v125 = *v123;
            if (*(*v106 + 48) >= *(*v123 + 32) && *(v124 + 32) <= *(v125 + 48))
            {
              v126 = *(v124 + 56) >= *(v125 + 40) && *(v124 + 40) <= *(v125 + 56);
              if (v126 && (*(v124 + 96) & 1) == 0 && (*(v125 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v124, *(a6 + 10), *a6, v125, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v103 = v157;
              }
            }

            v123 += 8;
          }

          while (v123 != v103);
          v105 = v172;
        }

        v106 += 8;
      }

      v132 = v168;
      v131 = v169;
      if (v168 != v169 && __p != v103)
      {
        do
        {
          v140 = __p;
          if (__p != v103)
          {
            do
            {
              v141 = *v132;
              v142 = *v140;
              if (*(*v132 + 48) >= *(*v140 + 32) && *(v141 + 32) <= *(v142 + 48))
              {
                v143 = *(v141 + 56) >= *(v142 + 40) && *(v141 + 40) <= *(v142 + 56);
                if (v143 && (*(v141 + 96) & 1) == 0 && (*(v142 + 96) & 1) == 0)
                {
                  if (!sub_10028396C(*(a6 + 10), *a6, v141, *(a6 + 10), *a6, v142, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                  {
                    goto LABEL_245;
                  }

                  v103 = v157;
                }
              }

              v140 += 8;
            }

            while (v140 != v103);
            v131 = v169;
          }

          v132 += 8;
        }

        while (v132 != v131);
      }
    }

    else
    {
      v154 = 0u;
      v155 = 0u;
      v107 = vnegq_f64(0);
      v108.f64[0] = NAN;
      v108.f64[1] = NAN;
      v109 = vnegq_f64(v108);
      v110 = v109;
      v111 = v107;
      do
      {
        v112 = *v104++;
        v113 = v112[2];
        v114 = v112[3];
        v115 = vcgtq_s64(v109, v113);
        v116 = vbslq_s8(v115, v113, v110);
        v117 = vbslq_s8(v115, v113, v109);
        v118 = vcgtq_s64(v117, v114);
        v110 = vbslq_s8(v118, v114, v116);
        v109 = vbslq_s8(v118, v114, v117);
        v119 = vcgtq_s64(v113, v107);
        v120 = vbslq_s8(v119, v113, v111);
        v121 = vbslq_s8(v119, v113, v107);
        v122 = vcgtq_s64(v114, v121);
        v111 = vbslq_s8(v122, v114, v120);
        v107 = vbslq_s8(v122, v114, v121);
      }

      while (v104 != v157);
      v154 = v110;
      v155 = v111;
      if (!sub_100282C24(v154.i8, &v171, &__p, a4 + 1, a5, a6) || (sub_100282C24(v154.i8, &v168, &__p, a4 + 1, a5, a6) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v134 = v171;
  v133 = v172;
  if (a5 > (v172 - v171) >> 3 || a4 > 0x63 || (v163 - v162) >> 3 < a5)
  {
    if (v171 != v172)
    {
      v135 = v163;
      if (v162 != v163)
      {
        do
        {
          v136 = v162;
          if (v162 != v135)
          {
            do
            {
              v137 = *v134;
              v138 = *v136;
              if (*(*v134 + 48) >= *(*v136 + 32) && *(v137 + 32) <= *(v138 + 48))
              {
                v139 = *(v137 + 56) >= *(v138 + 40) && *(v137 + 40) <= *(v138 + 56);
                if (v139 && (*(v137 + 96) & 1) == 0 && (*(v138 + 96) & 1) == 0)
                {
                  if (!sub_10028396C(*(a6 + 10), *a6, v137, *(a6 + 10), *a6, v138, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                  {
                    goto LABEL_245;
                  }

                  v135 = v163;
                }
              }

              v136 += 8;
            }

            while (v136 != v135);
            v133 = v172;
          }

          v134 += 8;
        }

        while (v134 != v133);
      }
    }
  }

  else if ((sub_100282C24(&v176, &v171, &v162, a4 + 1, a5, a6) & 1) == 0)
  {
    goto LABEL_245;
  }

  v145 = v168;
  v144 = v169;
  if (a5 <= (v169 - v168) >> 3 && a4 <= 0x63 && (v160 - v159) >> 3 >= a5)
  {
    if (sub_100282C24(&v174, &v168, &v159, a4 + 1, a5, a6))
    {
      goto LABEL_243;
    }

LABEL_245:
    v151 = 0;
    v152 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v168 != v169)
  {
    v146 = v160;
    if (v159 != v160)
    {
      do
      {
        v147 = v159;
        if (v159 != v146)
        {
          do
          {
            v148 = *v145;
            v149 = *v147;
            if (*(*v145 + 48) >= *(*v147 + 32) && *(v148 + 32) <= *(v149 + 48))
            {
              v150 = *(v148 + 56) >= *(v149 + 40) && *(v148 + 40) <= *(v149 + 56);
              if (v150 && (*(v148 + 96) & 1) == 0 && (*(v149 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v148, *(a6 + 10), *a6, v149, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v146 = v160;
              }
            }

            v147 += 8;
          }

          while (v147 != v146);
          v144 = v169;
        }

        v145 += 8;
      }

      while (v145 != v144);
    }
  }

LABEL_243:
  v151 = 1;
  v152 = __p;
  if (__p)
  {
LABEL_246:
    v157 = v152;
    operator delete(v152);
  }

LABEL_247:
  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  return v151;
}

void sub_100282B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_100282C24(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  v10 = *(a1 + 3);
  v11 = *a1;
  v175 = a1[1];
  v176 = v11;
  v12 = *(a1 + 1);
  v13 = v10 / 2 + v12 / 2;
  v174[0] = v11;
  LODWORD(v10) = v10 % 2 + v12 % 2;
  v14 = v13 + ((v10 + ((v10 & 0x80) >> 7)) << 24 >> 25);
  v177 = v175;
  v178 = v14;
  v174[1] = v14;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  __p = 0;
  v157 = 0;
  v158 = 0;
  v16 = *a2;
  v15 = *(a2 + 8);
  if (*a2 != v15)
  {
    do
    {
      v18 = *v16;
      v19 = *(*v16 + 32);
      if (v177 >= v19 && v176 <= v18[6])
      {
        v20 = v178 >= v18[5] && *(&v176 + 1) <= v18[7];
        if (v175 < v19)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v20 = 0;
        if (v175 < v19)
        {
          goto LABEL_16;
        }
      }

      if (v174[0] <= v18[6])
      {
        v23 = v18[5];
        v24 = v18[7];
        v25 = *(&v175 + 1) >= v23 && v14 <= v24;
        v26 = v25;
        v27 = v25 || v20;
        if ((v20 & v26) != 0)
        {
          v28 = &v165;
        }

        else
        {
          v28 = &v171;
        }

        if (v20)
        {
          v22 = v28;
        }

        else
        {
          v22 = &v168;
        }

        if ((v27 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_34;
      }

LABEL_16:
      if (v20)
      {
        v22 = &v171;
LABEL_34:
        sub_100279BF0(v22, v16);
        v15 = *(a2 + 8);
      }

LABEL_3:
      ++v16;
    }

    while (v16 != v15);
  }

  v30 = *a3;
  v29 = *(a3 + 8);
  if (*a3 != v29)
  {
    do
    {
      v31 = *v30;
      v32 = *(*v30 + 32);
      if (v177 >= v32 && v176 <= v31[6])
      {
        v33 = v178 >= v31[5] && *(&v176 + 1) <= v31[7];
        if (v175 < v32)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v33 = 0;
        if (v175 < v32)
        {
          goto LABEL_51;
        }
      }

      if (v174[0] <= v31[6])
      {
        v36 = v31[5];
        v37 = v31[7];
        v38 = *(&v175 + 1) >= v36 && v14 <= v37;
        v39 = v38;
        v40 = v38 || v33;
        if ((v33 & v39) != 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = &v162;
        }

        if (v33)
        {
          v35 = p_p;
        }

        else
        {
          v35 = &v159;
        }

        if ((v40 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

LABEL_51:
      if (!v33)
      {
        goto LABEL_38;
      }

      v35 = &v162;
LABEL_37:
      sub_100279BF0(v35, v30);
      v29 = *(a3 + 8);
LABEL_38:
      ++v30;
    }

    while (v30 != v29);
  }

  v43 = v165;
  v42 = v166;
  if (v165 == v166)
  {
    goto LABEL_133;
  }

  v45 = __p;
  v44 = v157;
  if (a5 > (v166 - v165) >> 3 || a4 > 0x63 || (v157 - __p) >> 3 < a5)
  {
    if (__p != v157)
    {
      do
      {
        v46 = __p;
        if (__p != v44)
        {
          do
          {
            v47 = *v43;
            v48 = *v46;
            if (*(*v43 + 48) >= *(*v46 + 32) && *(v47 + 32) <= *(v48 + 48))
            {
              v49 = *(v47 + 56) >= *(v48 + 40) && *(v47 + 40) <= *(v48 + 56);
              if (v49 && (*(v47 + 96) & 1) == 0 && (*(v48 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v47, *(a6 + 10), *a6, v48, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v44 = v157;
              }
            }

            v46 += 8;
          }

          while (v46 != v44);
          v42 = v166;
        }

        v43 += 8;
      }

      while (v43 != v42);
    }
  }

  else
  {
    v154 = 0u;
    v155 = 0u;
    v50 = vnegq_f64(0);
    v51.f64[0] = NAN;
    v51.f64[1] = NAN;
    v52 = vnegq_f64(v51);
    v53 = v52;
    v54 = v50;
    do
    {
      v55 = *v43;
      v43 += 8;
      v56 = v55[2];
      v57 = v55[3];
      v58 = vcgtq_s64(v52, v56);
      v59 = vbslq_s8(v58, v56, v53);
      v60 = vbslq_s8(v58, v56, v52);
      v61 = vcgtq_s64(v60, v57);
      v53 = vbslq_s8(v61, v57, v59);
      v52 = vbslq_s8(v61, v57, v60);
      v62 = vcgtq_s64(v56, v50);
      v63 = vbslq_s8(v62, v56, v54);
      v64 = vbslq_s8(v62, v56, v50);
      v65 = vcgtq_s64(v57, v64);
      v54 = vbslq_s8(v65, v57, v63);
      v50 = vbslq_s8(v65, v57, v64);
    }

    while (v43 != v166);
    v154 = v53;
    v155 = v54;
    if (__p != v157)
    {
      v66 = v53;
      v67 = v54;
      do
      {
        v68 = *v45++;
        v69 = v68[2];
        v70 = v68[3];
        v71 = vcgtq_s64(v53, v69);
        v72 = vbslq_s8(v71, v69, v66);
        v73 = vbslq_s8(v71, v69, v53);
        v74 = vcgtq_s64(v73, v70);
        v66 = vbslq_s8(v74, v70, v72);
        v53 = vbslq_s8(v74, v70, v73);
        v75 = vcgtq_s64(v69, v54);
        v76 = vbslq_s8(v75, v69, v67);
        v77 = vbslq_s8(v75, v69, v54);
        v78 = vcgtq_s64(v70, v77);
        v67 = vbslq_s8(v78, v70, v76);
        v54 = vbslq_s8(v78, v70, v77);
      }

      while (v45 != v157);
      v154 = v66;
      v155 = v67;
    }

    if ((sub_100281EE0(&v154, &v165, &__p, a4 + 1, a5, a6) & 1) == 0)
    {
      goto LABEL_245;
    }
  }

  v79 = v163;
  if (a5 <= (v163 - v162) >> 3)
  {
    v81 = v165;
    v80 = v166;
    if (a5 <= (v160 - v159) >> 3 && a4 <= 0x63 && (v166 - v165) >> 3 >= a5)
    {
      v86.f64[0] = NAN;
      v86.f64[1] = NAN;
      v87 = vnegq_f64(v86);
      v88 = vnegq_f64(0);
      v154 = v87;
      v155 = v88;
      if (v165 != v166)
      {
        v89 = v87;
        v90 = v88;
        do
        {
          v91 = *v81;
          v81 += 8;
          v92 = v91[2];
          v93 = v91[3];
          v94 = vcgtq_s64(v87, v92);
          v95 = vbslq_s8(v94, v92, v89);
          v96 = vbslq_s8(v94, v92, v87);
          v97 = vcgtq_s64(v96, v93);
          v89 = vbslq_s8(v97, v93, v95);
          v87 = vbslq_s8(v97, v93, v96);
          v98 = vcgtq_s64(v92, v88);
          v99 = vbslq_s8(v98, v92, v90);
          v100 = vbslq_s8(v98, v92, v88);
          v101 = vcgtq_s64(v93, v100);
          v90 = vbslq_s8(v101, v93, v99);
          v88 = vbslq_s8(v101, v93, v100);
        }

        while (v81 != v166);
        v154 = v89;
        v155 = v90;
      }

      if (!sub_100281EE0(&v154, &v165, &v162, a4 + 1, a5, a6) || (sub_100281EE0(&v154, &v165, &v159, a4 + 1, a5, a6) & 1) == 0)
      {
        goto LABEL_245;
      }

      goto LABEL_133;
    }
  }

  else
  {
    v81 = v165;
    v80 = v166;
  }

  if (v81 == v80 || v162 == v163)
  {
    if (v81 == v80)
    {
      goto LABEL_133;
    }

    goto LABEL_132;
  }

  do
  {
    v82 = v162;
    if (v162 != v79)
    {
      do
      {
        v83 = *v81;
        v84 = *v82;
        if (*(*v81 + 48) >= *(*v82 + 32) && *(v83 + 32) <= *(v84 + 48))
        {
          v85 = *(v83 + 56) >= *(v84 + 40) && *(v83 + 40) <= *(v84 + 56);
          if (v85 && (*(v83 + 96) & 1) == 0 && (*(v84 + 96) & 1) == 0)
          {
            if (!sub_10028396C(*(a6 + 10), *a6, v83, *(a6 + 10), *a6, v84, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
            {
              goto LABEL_245;
            }

            v79 = v163;
          }
        }

        v82 += 8;
      }

      while (v82 != v79);
      v80 = v166;
    }

    v81 += 8;
  }

  while (v81 != v80);
  v81 = v165;
  if (v165 != v80)
  {
LABEL_132:
    v102 = v160;
    if (v159 != v160)
    {
      do
      {
        v127 = v159;
        if (v159 != v102)
        {
          do
          {
            v128 = *v81;
            v129 = *v127;
            if (*(*v81 + 48) >= *(*v127 + 32) && *(v128 + 32) <= *(v129 + 48))
            {
              v130 = *(v128 + 56) >= *(v129 + 40) && *(v128 + 40) <= *(v129 + 56);
              if (v130 && (*(v128 + 96) & 1) == 0 && (*(v129 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v128, *(a6 + 10), *a6, v129, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v102 = v160;
              }
            }

            v127 += 8;
          }

          while (v127 != v102);
          v80 = v166;
        }

        v81 += 8;
      }

      while (v81 != v80);
    }
  }

LABEL_133:
  v104 = __p;
  v103 = v157;
  if (__p != v157)
  {
    v106 = v171;
    v105 = v172;
    if (a5 > (v172 - v171) >> 3 || a5 > (v169 - v168) >> 3 || a4 > 0x63 || (v157 - __p) >> 3 < a5)
    {
      while (v106 != v105)
      {
        v123 = __p;
        if (__p != v103)
        {
          do
          {
            v124 = *v106;
            v125 = *v123;
            if (*(*v106 + 48) >= *(*v123 + 32) && *(v124 + 32) <= *(v125 + 48))
            {
              v126 = *(v124 + 56) >= *(v125 + 40) && *(v124 + 40) <= *(v125 + 56);
              if (v126 && (*(v124 + 96) & 1) == 0 && (*(v125 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v124, *(a6 + 10), *a6, v125, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v103 = v157;
              }
            }

            v123 += 8;
          }

          while (v123 != v103);
          v105 = v172;
        }

        v106 += 8;
      }

      v132 = v168;
      v131 = v169;
      if (v168 != v169 && __p != v103)
      {
        do
        {
          v140 = __p;
          if (__p != v103)
          {
            do
            {
              v141 = *v132;
              v142 = *v140;
              if (*(*v132 + 48) >= *(*v140 + 32) && *(v141 + 32) <= *(v142 + 48))
              {
                v143 = *(v141 + 56) >= *(v142 + 40) && *(v141 + 40) <= *(v142 + 56);
                if (v143 && (*(v141 + 96) & 1) == 0 && (*(v142 + 96) & 1) == 0)
                {
                  if (!sub_10028396C(*(a6 + 10), *a6, v141, *(a6 + 10), *a6, v142, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                  {
                    goto LABEL_245;
                  }

                  v103 = v157;
                }
              }

              v140 += 8;
            }

            while (v140 != v103);
            v131 = v169;
          }

          v132 += 8;
        }

        while (v132 != v131);
      }
    }

    else
    {
      v154 = 0u;
      v155 = 0u;
      v107 = vnegq_f64(0);
      v108.f64[0] = NAN;
      v108.f64[1] = NAN;
      v109 = vnegq_f64(v108);
      v110 = v109;
      v111 = v107;
      do
      {
        v112 = *v104++;
        v113 = v112[2];
        v114 = v112[3];
        v115 = vcgtq_s64(v109, v113);
        v116 = vbslq_s8(v115, v113, v110);
        v117 = vbslq_s8(v115, v113, v109);
        v118 = vcgtq_s64(v117, v114);
        v110 = vbslq_s8(v118, v114, v116);
        v109 = vbslq_s8(v118, v114, v117);
        v119 = vcgtq_s64(v113, v107);
        v120 = vbslq_s8(v119, v113, v111);
        v121 = vbslq_s8(v119, v113, v107);
        v122 = vcgtq_s64(v114, v121);
        v111 = vbslq_s8(v122, v114, v120);
        v107 = vbslq_s8(v122, v114, v121);
      }

      while (v104 != v157);
      v154 = v110;
      v155 = v111;
      if (!sub_100281EE0(&v154, &v171, &__p, a4 + 1, a5, a6) || (sub_100281EE0(&v154, &v168, &__p, a4 + 1, a5, a6) & 1) == 0)
      {
        goto LABEL_245;
      }
    }
  }

  v134 = v171;
  v133 = v172;
  if (a5 > (v172 - v171) >> 3 || a4 > 0x63 || (v163 - v162) >> 3 < a5)
  {
    if (v171 != v172)
    {
      v135 = v163;
      if (v162 != v163)
      {
        do
        {
          v136 = v162;
          if (v162 != v135)
          {
            do
            {
              v137 = *v134;
              v138 = *v136;
              if (*(*v134 + 48) >= *(*v136 + 32) && *(v137 + 32) <= *(v138 + 48))
              {
                v139 = *(v137 + 56) >= *(v138 + 40) && *(v137 + 40) <= *(v138 + 56);
                if (v139 && (*(v137 + 96) & 1) == 0 && (*(v138 + 96) & 1) == 0)
                {
                  if (!sub_10028396C(*(a6 + 10), *a6, v137, *(a6 + 10), *a6, v138, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                  {
                    goto LABEL_245;
                  }

                  v135 = v163;
                }
              }

              v136 += 8;
            }

            while (v136 != v135);
            v133 = v172;
          }

          v134 += 8;
        }

        while (v134 != v133);
      }
    }
  }

  else if ((sub_100281EE0(&v176, &v171, &v162, a4 + 1, a5, a6) & 1) == 0)
  {
    goto LABEL_245;
  }

  v145 = v168;
  v144 = v169;
  if (a5 <= (v169 - v168) >> 3 && a4 <= 0x63 && (v160 - v159) >> 3 >= a5)
  {
    if (sub_100281EE0(v174, &v168, &v159, a4 + 1, a5, a6))
    {
      goto LABEL_243;
    }

LABEL_245:
    v151 = 0;
    v152 = __p;
    if (!__p)
    {
      goto LABEL_247;
    }

    goto LABEL_246;
  }

  if (v168 != v169)
  {
    v146 = v160;
    if (v159 != v160)
    {
      do
      {
        v147 = v159;
        if (v159 != v146)
        {
          do
          {
            v148 = *v145;
            v149 = *v147;
            if (*(*v145 + 48) >= *(*v147 + 32) && *(v148 + 32) <= *(v149 + 48))
            {
              v150 = *(v148 + 56) >= *(v149 + 40) && *(v148 + 40) <= *(v149 + 56);
              if (v150 && (*(v148 + 96) & 1) == 0 && (*(v149 + 96) & 1) == 0)
              {
                if (!sub_10028396C(*(a6 + 10), *a6, v148, *(a6 + 10), *a6, v149, 0, *(a6 + 44), a6[1], a6[2], a6[3]))
                {
                  goto LABEL_245;
                }

                v146 = v160;
              }
            }

            v147 += 8;
          }

          while (v147 != v146);
          v144 = v169;
        }

        v145 += 8;
      }

      while (v145 != v144);
    }
  }

LABEL_243:
  v151 = 1;
  v152 = __p;
  if (__p)
  {
LABEL_246:
    v157 = v152;
    operator delete(v152);
  }

LABEL_247:
  if (v159)
  {
    v160 = v159;
    operator delete(v159);
  }

  if (v162)
  {
    v163 = v162;
    operator delete(v162);
  }

  if (v165)
  {
    v166 = v165;
    operator delete(v165);
  }

  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v171)
  {
    v172 = v171;
    operator delete(v171);
  }

  return v151;
}

void sub_1002838A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
    v34 = a22;
    if (!a22)
    {
LABEL_3:
      v35 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v34 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v34);
  v35 = a25;
  if (!a25)
  {
LABEL_4:
    v36 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v35);
  v36 = a28;
  if (!a28)
  {
LABEL_5:
    v37 = a31;
    if (!a31)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a31;
  if (!a31)
  {
LABEL_6:
    v38 = *(v32 - 184);
    if (!v38)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = *(v32 - 184);
  if (!v38)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  *(v32 - 176) = v38;
  operator delete(v38);
  _Unwind_Resume(exception_object);
}

uint64_t sub_10028396C(int a1, double **a2, int *a3, int a4, double **a5, int *a6, int a7, int a8, uint64_t a9, __int128 *a10, unint64_t *a11)
{
  if (*(a3 + 96) == 1 && (*(a3 + 10) + 1) < *(a3 + 11) || *(a6 + 96) == 1 && (*(a6 + 10) + 1) < *(a6 + 11))
  {
    return 1;
  }

  v12 = *(a3 + 3);
  if ((v12 & 0x8000000000000000) == 0)
  {
    a2 = &a2[3][3 * v12];
  }

  v13 = *a2;
  v14 = *(a6 + 3);
  if ((v14 & 0x8000000000000000) == 0)
  {
    a5 = &a5[3][3 * v14];
  }

  v15 = a2[1];
  v16 = *a5;
  v122 = a5[1];
  v17 = *a3;
  v121 = *a6;
  v18 = *(a3 + 13);
  v19 = *(a3 + 8);
  v20 = &v13[2 * v19];
  v21 = 2 * *(a3 + 9);
  v113 = &v13[v21 + 2];
  v109 = v15;
  v110 = *a3;
  v116 = v18;
  if (2 * v19 != v21)
  {
    v22 = 0;
    v23 = v20 + 2;
    v124 = &v13[2 * v19];
    v24 = v124;
    v25 = *(a3 + 8);
    while (1)
    {
      v117 = v24;
      v26 = v19;
      v27 = *(a10 + 3) + (v23[1] - *(a10 + 1)) * *(a10 + 4);
      if (v27 >= 0.0)
      {
        v28 = 0.5;
      }

      else
      {
        v28 = -0.5;
      }

      sub_100274990(v27 + v28);
      v29 = *(a10 + 2) + (*v23 - *a10) * *(a10 + 4);
      if (v29 >= 0.0)
      {
        v30 = 0.5;
      }

      else
      {
        v30 = -0.5;
      }

      v31 = v29 + v30;
      sub_100274990(v29 + v30);
      v32 = ceil(v31);
      v33 = floor(v31);
      if (v31 >= 0.0)
      {
        v32 = v33;
      }

      v34 = v32;
      if (v17 == 1)
      {
        v19 = v26;
        if (*(a6 + 4) <= v34)
        {
          v116 = v18;
          v19 = v25;
          v15 = v109;
          v20 = v117;
          v35 = v117 + 2;
          if (v117 + 2 != v113)
          {
            goto LABEL_29;
          }

          return 1;
        }
      }

      else
      {
        if (v17 != -1)
        {
          v15 = v109;
          v19 = v26;
          v20 = v124;
          break;
        }

        v19 = v26;
        if (*(a6 + 6) >= v34)
        {
          v20 = v23 - 2;
          v116 += v22;
          v19 += v22;
          v15 = v109;
          v35 = v20 + 2;
          if (v20 + 2 != v113)
          {
            goto LABEL_29;
          }

          return 1;
        }
      }

      ++v25;
      ++v18;
      ++v22;
      v24 = v23;
      v23 += 2;
      if (v23 == v113)
      {
        return 1;
      }
    }
  }

  v35 = v20 + 2;
  if (v20 + 2 != v113)
  {
LABEL_29:
    v36 = &v13[2 * (v20 != v13)];
    if (v35 != v15)
    {
      v36 = v35;
    }

    v37 = v36 != v13;
    v38 = v36 + 2;
    v39 = &v13[2 * v37];
    if (v38 == v15)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38;
    }

    v108 = v13;
    do
    {
      v125 = v19;
      v41 = *(a10 + 3) + (v20[1] - *(a10 + 1)) * *(a10 + 4);
      if (v41 >= 0.0)
      {
        v42 = 0.5;
      }

      else
      {
        v42 = -0.5;
      }

      sub_100274990(v41 + v42);
      v43 = *(a10 + 2) + (*v20 - *a10) * *(a10 + 4);
      if (v43 >= 0.0)
      {
        v44 = 0.5;
      }

      else
      {
        v44 = -0.5;
      }

      v45 = v43 + v44;
      sub_100274990(v43 + v44);
      v46 = ceil(v45);
      v47 = floor(v45);
      if (v45 >= 0.0)
      {
        v46 = v47;
      }

      v48 = v46;
      if (v110 == -1)
      {
        v49 = v122;
        v50 = a3;
        v51 = v121;
        v52 = v125;
        if (*(a6 + 4) > v48)
        {
          return 1;
        }
      }

      else
      {
        v49 = v122;
        v50 = a3;
        v51 = v121;
        v52 = v125;
        if (v110 == 1 && *(a6 + 6) < v48)
        {
          return 1;
        }
      }

      v53 = a10[1];
      v182 = *a10;
      v179[0] = v50;
      v179[1] = v52;
      v118 = v20;
      v179[2] = v20;
      v114 = v40;
      v115 = v35;
      v179[3] = v35;
      v179[4] = v40;
      v179[5] = v13;
      v179[6] = v15;
      v180 = 1;
      v181 = 0;
      v183 = v53;
      v55 = *(a6 + 8);
      v54 = *(a6 + 9);
      v56 = &v16[2 * v55];
      v184 = *(a10 + 4);
      v57 = &v16[2 * v54 + 2];
      v58 = v56 + 2;
      v59 = *(a6 + 13);
      if (v56 + 2 == v57)
      {
LABEL_79:
        v62 = &v16[2 * v55];
        v78 = v56 + 2;
        if (v78 != v57)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v60 = 0;
        v61 = *(a10 + 4);
        v62 = &v16[2 * v55];
        v63 = *(a6 + 13);
        v64 = v55;
        do
        {
          v66 = *(a10 + 3) + (v58[1] - *(a10 + 1)) * v61;
          if (v66 >= 0.0)
          {
            v67 = 0.5;
          }

          else
          {
            v67 = -0.5;
          }

          v68 = v66 + v67;
          v69 = 2 * (v68 >= 9.22337204e18);
          if (v68 <= -9.22337204e18)
          {
            v69 = 1;
          }

          if (v69 == 2)
          {
            goto LABEL_136;
          }

          if (v69 == 1)
          {
            goto LABEL_135;
          }

          v70 = *(a10 + 2) + (*v58 - *a10) * v61;
          if (v70 >= 0.0)
          {
            v71 = 0.5;
          }

          else
          {
            v71 = -0.5;
          }

          v72 = v70 + v71;
          v73 = 2 * (v72 >= 9.22337204e18);
          if (v72 <= -9.22337204e18)
          {
            v73 = 1;
          }

          if (v73 == 2)
          {
LABEL_136:
            exception = __cxa_allocate_exception(8uLL);
            exception->__vftable = 0;
            v107 = sub_1000D8810(exception);
          }

          if (v73 == 1)
          {
LABEL_135:
            v104 = __cxa_allocate_exception(8uLL);
            v104->__vftable = 0;
            v105 = sub_1000D87D8(v104);
          }

          v74 = ceil(v72);
          v75 = floor(v72);
          if (v72 >= 0.0)
          {
            v76 = v75;
          }

          else
          {
            v76 = v74;
          }

          v77 = v76;
          if (v51 == 1)
          {
            if (*(v50 + 4) <= v77)
            {
              goto LABEL_131;
            }
          }

          else
          {
            if (v51 != -1)
            {
              goto LABEL_79;
            }

            if (*(v50 + 6) >= v77)
            {
              v62 = v58 - 2;
              v59 += v60;
              v55 += v60;
              v78 = v58;
              if (v58 == v57)
              {
                goto LABEL_132;
              }

LABEL_80:
              if (v78 == v49)
              {
                v78 = &v16[2 * (v62 != v16)];
              }

              v79 = v78 != v16;
              v80 = v78 + 2;
              v81 = &v16[2 * v79];
              if (v80 == v49)
              {
                v82 = v81;
              }

              else
              {
                v82 = v80;
              }

              v83 = ++v116 - v59;
              while (2)
              {
                v84 = *(a10 + 4);
                v85 = *(a10 + 3) + (v62[1] - *(a10 + 1)) * v84;
                if (v85 >= 0.0)
                {
                  v86 = 0.5;
                }

                else
                {
                  v86 = -0.5;
                }

                v87 = v85 + v86;
                v88 = 2 * (v87 >= 9.22337204e18);
                if (v87 <= -9.22337204e18)
                {
                  v88 = 1;
                }

                if (v88 == 2)
                {
                  goto LABEL_136;
                }

                if (v88 == 1)
                {
                  goto LABEL_135;
                }

                v89 = *(a10 + 2) + (*v62 - *a10) * v84;
                if (v89 >= 0.0)
                {
                  v90 = 0.5;
                }

                else
                {
                  v90 = -0.5;
                }

                v91 = v89 + v90;
                v92 = 2 * (v91 >= 9.22337204e18);
                if (v91 <= -9.22337204e18)
                {
                  v92 = 1;
                }

                if (v92 == 2)
                {
                  goto LABEL_136;
                }

                if (v92 == 1)
                {
                  goto LABEL_135;
                }

                v93 = ceil(v91);
                v94 = floor(v91);
                if (v91 >= 0.0)
                {
                  v95 = v94;
                }

                else
                {
                  v95 = v93;
                }

                v96 = v95;
                if (v51 == -1)
                {
                  if (*(v50 + 4) > v96)
                  {
                    goto LABEL_35;
                  }
                }

                else if (v51 == 1 && *(v50 + 6) < v96)
                {
                  goto LABEL_35;
                }

                v97 = *(v50 + 2);
                if (a1 != a4)
                {
                  v98 = *(v50 + 3);
                  v100 = *(a6 + 2);
                  v99 = *(a6 + 3);
                  goto LABEL_117;
                }

                v98 = *(v50 + 3);
                v100 = *(a6 + 2);
                v99 = *(a6 + 3);
                if (v97 != v100)
                {
LABEL_117:
                  v101 = a10[1];
                  v176 = *a10;
                  v173[0] = a6;
                  v173[1] = v55;
                  v173[2] = v62;
                  v173[3] = v62 + 2;
                  v173[4] = v82;
                  v173[5] = v16;
                  v173[6] = v49;
                  v174 = 0;
                  v175 = 0;
                  v177 = v101;
                  v178 = *(a10 + 4);
                  v127 = 0;
                  v128 = 0;
                  v129 = -1;
                  v130 = 0;
                  v131 = 0;
                  v137 = xmmword_1003D8180;
                  v138 = 0;
                  v139 = 0;
                  v140 = -1;
                  v141 = -1;
                  v142 = -1;
                  v143 = 257;
                  v144 = 0;
                  v145 = 0;
                  v146 = -1;
                  v147 = -1;
                  v148 = -1;
                  v149 = 0;
                  v150 = 0;
                  v151 = 0;
                  v152 = 0;
                  v158 = xmmword_1003D8180;
                  v159 = 0;
                  v160 = 0;
                  v161 = -1;
                  v162 = -1;
                  v163 = -1;
                  v164 = 257;
                  v165 = 0;
                  v166 = 0;
                  v167 = -1;
                  v168 = -1;
                  v169 = -1;
                  v170 = 0;
                  v171 = 0;
                  v172 = 0;
                  v132 = a1;
                  v133 = v97;
                  v134 = v98;
                  v135 = v52;
                  v136 = -1;
                  v153 = a4;
                  v154 = v100;
                  v155 = v99;
                  v156 = v55;
                  v157 = -1;
                  sub_10027B30C(v179, v173, v126, a9, a10, a11);
                  v50 = a3;
                  v52 = v125;
                  v51 = v121;
                  v49 = v122;
                  goto LABEL_118;
                }

                if (v98 != v99)
                {
                  v100 = *(v50 + 2);
                  goto LABEL_117;
                }

                if (a7)
                {
                  if (v52 >= v55 || (a8 & 1) == 0)
                  {
                    v99 = *(v50 + 3);
                    v100 = *(v50 + 2);
                    if (v52 >= v55)
                    {
LABEL_118:
                      v102 = v62 + 4;
                      v62 += 2;
                      ++v55;
                      if (v82 + 2 == v49)
                      {
                        v82 = &v16[2 * (v82 != v16)];
                      }

                      else
                      {
                        v82 += 2;
                      }

                      --v83;
                      if (v102 == v57)
                      {
LABEL_35:
                        v13 = v108;
                        v15 = v109;
                        goto LABEL_36;
                      }

                      continue;
                    }

                    goto LABEL_117;
                  }

LABEL_125:
                  if (!v83)
                  {
                    goto LABEL_118;
                  }

                  if (!v52)
                  {
                    v99 = *(v50 + 3);
                    v100 = *(v50 + 2);
                    if (*(v50 + 11) - 2 <= v55)
                    {
                      goto LABEL_118;
                    }

                    goto LABEL_117;
                  }
                }

                else if (a8)
                {
                  goto LABEL_125;
                }

                break;
              }

              v99 = *(v50 + 3);
              v100 = *(v50 + 2);
              goto LABEL_117;
            }
          }

          v65 = v58 + 2;
          ++v64;
          ++v63;
          ++v60;
          v62 = v58;
          v58 = v65;
        }

        while (v65 != v57);
        v62 = v65 - 2;
LABEL_131:
        v59 = v63;
        v55 = v64;
        v78 = v62 + 2;
        if (v62 + 2 != v57)
        {
          goto LABEL_80;
        }
      }

LABEL_132:
      ++v116;
LABEL_36:
      v20 = v118 + 2;
      v35 = v115 + 2;
      v19 = v52 + 1;
      if (v114 + 2 == v15)
      {
        v40 = &v13[2 * (v114 != v13)];
      }

      else
      {
        v40 = v114 + 2;
      }
    }

    while (v35 != v113);
  }

  return 1;
}

uint64_t sub_100284288(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7)
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  v12 = *a1;
  if (*a1 != a1[1])
  {
    v13 = 0;
    do
    {
      v14 = *v12;
      v15 = *(v12 + 8);
      if (v15 - *v12 >= 0x11)
      {
        *&v26 = 0;
        *(&v26 + 1) = v13;
        v27 = -1;
        sub_100278258(&__p, v14, v15, a3, a2, &v26, 0xAuLL);
      }

      v17 = *(v12 + 24);
      v16 = *(v12 + 32);
      if (v17 != v16)
      {
        v18 = 0;
        do
        {
          v19 = *v17;
          v20 = v17[1];
          if ((v20 - *v17) >= 0x11)
          {
            *&v26 = 0;
            *(&v26 + 1) = v13;
            v27 = v18;
            sub_100278258(&__p, v19, v20, a3, a2, &v26, 0xAuLL);
            v16 = *(v12 + 32);
          }

          v17 += 3;
          ++v18;
        }

        while (v17 != v16);
      }

      v12 += 48;
      ++v13;
    }

    while (v12 != a1[1]);
  }

  *&v26 = a1;
  *(&v26 + 1) = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v24 = a2;
  v25 = a2;
  sub_100284414(&__p, &v26, &v25, &v24, 0x10uLL);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_1002843EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    v19 = a1;
    operator delete(__p);
    a1 = v19;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100284414(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = *a1;
  v7 = a1[1];
  if (0xEEEEEEEEEEEEEEEFLL * (&v7[-*a1] >> 3) <= a5)
  {
    if (v8 != v7)
    {
      v20 = (v8 + 216);
      do
      {
        v21 = (v8 + 120);
        if ((v8 + 120) != v7)
        {
          for (i = v20; i - 96 != v7; i += 120)
          {
            if (*(v8 + 48) >= *(i - 8) && *(v8 + 32) <= *(i - 6))
            {
              v23 = *(v8 + 56) >= *(i - 7) && *(v8 + 40) <= *(i - 5);
              if (v23 && (*(v8 + 96) & 1) == 0 && (*i & 1) == 0)
              {
                result = sub_1002871D4(*(a2 + 10), *a2, v8, *(a2 + 10), *a2, i - 24, 0, *(a2 + 44), a2[1], a2[2], a2[3]);
                if (!result)
                {
                  return result;
                }

                v7 = a1[1];
              }
            }
          }
        }

        v20 += 120;
        v8 += 120;
      }

      while (v21 != v7);
    }

    return 1;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v24 = vnegq_f64(v9);
    v25 = vnegq_f64(0);
    if (v8 != v7)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      v11 = 0x8000000000000000;
      v12 = 0x8000000000000000;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      v14 = *(v8 + 32);
      if (v14 != NAN && (v24.f64[0] = *(v8 + 32), v13 = *&v14, v14 == -0.0))
      {
        v15 = *(v8 + 40);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v25.f64[0] = v14;
        v12 = *&v14;
        v15 = *(v8 + 40);
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }
      }

      *&v24.f64[1] = v15;
      v10 = v15;
      if (v15 == 0x8000000000000000)
      {
        v16 = *(v8 + 48);
        if (v16 < v13)
        {
          goto LABEL_16;
        }

        goto LABEL_8;
      }

LABEL_15:
      *&v25.f64[1] = v15;
      v11 = v15;
      v16 = *(v8 + 48);
      if (v16 < v13)
      {
LABEL_16:
        *&v24.f64[0] = v16;
        if (v16 > v12)
        {
LABEL_17:
          *&v25.f64[0] = v16;
          v17 = *(v8 + 56);
          if (v17 < v10)
          {
LABEL_18:
            *&v24.f64[1] = v17;
            if (v17 > v11)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }

LABEL_10:
          if (v17 > v11)
          {
LABEL_19:
            *&v25.f64[1] = v17;
          }

LABEL_20:
          operator new();
        }

LABEL_9:
        v17 = *(v8 + 56);
        if (v17 < v10)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

LABEL_8:
      if (v16 > v12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    result = sub_1002847DC(&v24, &v26, 0, a5, a2, a3, a4, v29);
    if (v26)
    {
      v27 = v26;
      v19 = result;
      operator delete(v26);
      return v19;
    }
  }

  return result;
}

void sub_1002847B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    *(v2 - 112) = v1;
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002847DC(__n128 *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a1[1].n128_i64[0];
  v15 = v14 / 2 + a1->n128_u64[0] / 2;
  v16 = a1->n128_u64[0] % 2;
  v17 = a1[1];
  v92 = *a1;
  v93[1] = v17.n128_i64[1];
  v90.n128_u64[1] = v92.n128_u64[1];
  v91 = v17;
  v18 = v15 + ((((v14 % 2) + v16 + ((((v14 % 2) + v16) & 0x80) >> 7)) << 24) >> 25);
  v93[0] = v18;
  v89 = 0;
  v90.n128_u64[0] = v18;
  v87 = 0;
  v88 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  __p = 0;
  v82 = 0;
  v83 = 0;
  v20 = *a2;
  v19 = *(a2 + 8);
  if (*a2 == v19)
  {
    goto LABEL_43;
  }

  do
  {
    v25 = *v20;
    v26 = *(*v20 + 32);
    if (v93[0] >= v26 && v92.n128_i64[0] <= v25[6])
    {
      v27 = v93[1] >= v25[5] && v92.n128_u64[1] <= v25[7];
      if (v91.n128_i64[0] < v26)
      {
LABEL_16:
        if (!v27)
        {
          goto LABEL_3;
        }

        v29 = &v87;
LABEL_34:
        sub_100279BF0(v29, v20);
        v19 = *(a2 + 8);
        goto LABEL_3;
      }
    }

    else
    {
      v27 = 0;
      if (v91.n128_i64[0] < v26)
      {
        goto LABEL_16;
      }
    }

    if (v18 > v25[6])
    {
      goto LABEL_16;
    }

    v30 = v25[5];
    v31 = v25[7];
    v32 = v91.n128_i64[1] >= v30 && v90.n128_u64[1] <= v31;
    v33 = v32;
    v34 = v32 || v27;
    if ((v27 & v33) != 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = &v87;
    }

    if (v27)
    {
      v29 = p_p;
    }

    else
    {
      v29 = &v84;
    }

    if (v34)
    {
      goto LABEL_34;
    }

LABEL_3:
    ++v20;
  }

  while (v20 != v19);
  v37 = __p;
  v36 = v82;
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a3;
  v12 = a4;
  if (__p != v82)
  {
    v79 = 0u;
    v80 = 0u;
    v38 = vnegq_f64(0);
    v39.f64[0] = NAN;
    v39.f64[1] = NAN;
    v40 = vnegq_f64(v39);
    v41 = __p;
    v42 = v40;
    v43 = v38;
    do
    {
      v44 = *v41++;
      v45 = v44[2];
      v46 = v44[3];
      v47 = vcgtq_s64(v40, v45);
      v48 = vbslq_s8(v47, v45, v42);
      v49 = vbslq_s8(v47, v45, v40);
      v50 = vcgtq_s64(v49, v46);
      v42 = vbslq_s8(v50, v46, v48);
      v40 = vbslq_s8(v50, v46, v49);
      v51 = vcgtq_s64(v45, v38);
      v52 = vbslq_s8(v51, v45, v43);
      v53 = vbslq_s8(v51, v45, v38);
      v54 = vcgtq_s64(v46, v53);
      v43 = vbslq_s8(v54, v46, v52);
      v38 = vbslq_s8(v54, v46, v53);
    }

    while (v41 != v82);
    v79 = v42;
    v80 = v43;
    if (a3 <= 0x63 && (v82 - __p) >> 3 >= a4)
    {
      if (sub_100284F90(&v79, &__p, a3 + 1, a4, a5, v10, v9, v8))
      {
        goto LABEL_41;
      }

      goto LABEL_81;
    }

    do
    {
      v66 = v37 + 8;
      if (v37 + 8 != v36)
      {
        for (i = v37 + 8; i != v36; i += 8)
        {
          v68 = *v37;
          v69 = *i;
          if (*(*v37 + 48) >= *(*i + 32) && *(v68 + 32) <= *(v69 + 48))
          {
            v70 = *(v68 + 56) >= *(v69 + 40) && *(v68 + 40) <= *(v69 + 56);
            if (v70 && (*(v68 + 96) & 1) == 0 && (*(v69 + 96) & 1) == 0)
            {
              if (!sub_1002871D4(*(a5 + 10), *a5, v68, *(a5 + 10), *a5, v69, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v36 = v82;
            }
          }
        }
      }

      v37 += 8;
    }

    while (v66 != v36);
LABEL_41:
    if (!sub_100284E1C(&v79, &__p, &v87, a3, a4, a5) || (sub_100284E1C(&v79, &__p, &v84, a3, a4, a5) & 1) == 0)
    {
LABEL_81:
      v64 = 0;
      v65 = __p;
      if (!__p)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

LABEL_43:
  v56 = v87;
  v55 = v88;
  if (v13 > 0x63 || (v88 - v87) >> 3 < v12)
  {
LABEL_61:
    while (v56 != v55)
    {
      v57 = v56;
      v56 += 8;
      if (v56 != v55)
      {
        v58 = v56;
        while (1)
        {
          v59 = *v57;
          v60 = *v58;
          if (*(*v57 + 48) >= *(*v58 + 32) && *(v59 + 32) <= *(v60 + 48))
          {
            v61 = *(v59 + 56) >= *(v60 + 40) && *(v59 + 40) <= *(v60 + 56);
            if (v61 && (*(v59 + 96) & 1) == 0 && (*(v60 + 96) & 1) == 0)
            {
              if (!sub_1002871D4(*(a5 + 10), *a5, v59, *(a5 + 10), *a5, v60, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v55 = v88;
            }
          }

          v58 += 8;
          if (v58 == v55)
          {
            goto LABEL_61;
          }
        }
      }
    }
  }

  else if (!sub_100284F90(&v92, &v87, v13 + 1, v12, a5, v10, v9, v8))
  {
    goto LABEL_81;
  }

  v63 = v84;
  v62 = v85;
  if (v13 <= 0x63 && (v85 - v84) >> 3 >= v12)
  {
    v64 = sub_100284F90(&v90, &v84, v13 + 1, v12, a5, v10, v9, v8);
    v65 = __p;
    if (!__p)
    {
      goto LABEL_83;
    }

LABEL_82:
    v82 = v65;
    operator delete(v65);
    goto LABEL_83;
  }

  if (v84 != v85)
  {
    do
    {
      v72 = v63;
      v63 += 8;
      if (v63 != v62)
      {
        for (j = v63; j != v62; j += 8)
        {
          v74 = *v72;
          v75 = *j;
          if (*(*v72 + 48) >= *(*j + 32) && *(v74 + 32) <= *(v75 + 48))
          {
            v76 = *(v74 + 56) >= *(v75 + 40) && *(v74 + 40) <= *(v75 + 56);
            if (v76 && (*(v74 + 96) & 1) == 0 && (*(v75 + 96) & 1) == 0)
            {
              if (!sub_1002871D4(*(a5 + 10), *a5, v74, *(a5 + 10), *a5, v75, 0, *(a5 + 44), a5[1], a5[2], a5[3]))
              {
                goto LABEL_81;
              }

              v62 = v85;
            }
          }
        }
      }
    }

    while (v63 != v62);
  }

  v64 = 1;
  v65 = __p;
  if (__p)
  {
    goto LABEL_82;
  }

LABEL_83:
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  return v64;
}