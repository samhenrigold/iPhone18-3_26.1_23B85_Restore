void ETLDIAGCreateQMDL2Header(uint64_t a1)
{
  insertVectorFromData<unsigned int>((a1 + 56), ((*(a1 + 16) - *(a1 + 8)) & 0xFFFFFFF0) + 47 * (*(a1 + 40) - *(a1 + 32)) + 14);
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (v3 >= v2)
  {
    v5 = *(a1 + 56);
    v6 = v3 - v5;
    v7 = v3 - v5 + 1;
    if (v7 < 0)
    {
      goto LABEL_315;
    }

    v8 = v2 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = operator new(v9);
    }

    else
    {
      v10 = 0;
    }

    v10[v6] = 2;
    v4 = &v10[v6 + 1];
    memcpy(v10, v5, v6);
    *(a1 + 56) = v10;
    *(a1 + 64) = v4;
    *(a1 + 72) = &v10[v9];
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 2;
    v4 = v3 + 1;
  }

  *(a1 + 64) = v4;
  v11 = *(a1 + 72);
  if (v4 >= v11)
  {
    v13 = *(a1 + 56);
    v14 = v4 - v13;
    v15 = v4 - v13 + 1;
    if (v15 >= 0)
    {
      v16 = v11 - v13;
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = operator new(v17);
      }

      else
      {
        v18 = 0;
      }

      v18[v14] = 1;
      v12 = &v18[v14 + 1];
      memcpy(v18, v13, v14);
      *(a1 + 56) = v18;
      *(a1 + 64) = v12;
      *(a1 + 72) = &v18[v17];
      if (v13)
      {
        operator delete(v13);
      }

      goto LABEL_27;
    }

LABEL_315:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  *v4 = 1;
  v12 = (v4 + 1);
LABEL_27:
  *(a1 + 64) = v12;
  insertVectorFromData<unsigned int>((a1 + 56), (*(a1 + 16) - *(a1 + 8)) >> 4);
  v19 = *(a1 + 8);
  for (i = *(a1 + 16); v19 != i; v19 += 16)
  {
    insertVectorFromData<unsigned int>((a1 + 56), *v19);
    insertVectorFromData<unsigned short>((a1 + 56), *(v19 + 4));
    insertVectorFromData<unsigned short>((a1 + 56), *(v19 + 6));
    v21 = *(v19 + 8);
    v23 = *(a1 + 64);
    v22 = *(a1 + 72);
    if (v23 >= v22)
    {
      v25 = *(a1 + 56);
      v26 = v23 - v25;
      v27 = v23 - v25 + 1;
      if (v27 < 0)
      {
        goto LABEL_315;
      }

      v28 = v22 - v25;
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        v30 = operator new(v29);
      }

      else
      {
        v30 = 0;
      }

      v30[v26] = v21;
      v24 = &v30[v26 + 1];
      memcpy(v30, v25, v26);
      *(a1 + 56) = v30;
      *(a1 + 64) = v24;
      *(a1 + 72) = &v30[v29];
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v23 = v21;
      v24 = v23 + 1;
    }

    *(a1 + 64) = v24;
    v31 = *(v19 + 9);
    v32 = *(a1 + 72);
    if (v24 >= v32)
    {
      v34 = *(a1 + 56);
      v35 = v24 - v34;
      v36 = v24 - v34 + 1;
      if (v36 < 0)
      {
        goto LABEL_315;
      }

      v37 = v32 - v34;
      if (2 * v37 > v36)
      {
        v36 = 2 * v37;
      }

      if (v37 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      if (v38)
      {
        v39 = operator new(v38);
      }

      else
      {
        v39 = 0;
      }

      v39[v35] = v31;
      v33 = &v39[v35 + 1];
      memcpy(v39, v34, v35);
      *(a1 + 56) = v39;
      *(a1 + 64) = v33;
      *(a1 + 72) = &v39[v38];
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *v24 = v31;
      v33 = v24 + 1;
    }

    *(a1 + 64) = v33;
    v40 = *(v19 + 10);
    v41 = *(a1 + 72);
    if (v33 >= v41)
    {
      v43 = *(a1 + 56);
      v44 = v33 - v43;
      v45 = v33 - v43 + 1;
      if (v45 < 0)
      {
        goto LABEL_315;
      }

      v46 = v41 - v43;
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        v48 = operator new(v47);
      }

      else
      {
        v48 = 0;
      }

      v48[v44] = v40;
      v42 = &v48[v44 + 1];
      memcpy(v48, v43, v44);
      *(a1 + 56) = v48;
      *(a1 + 64) = v42;
      *(a1 + 72) = &v48[v47];
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v33 = v40;
      v42 = v33 + 1;
    }

    *(a1 + 64) = v42;
    v49 = *(v19 + 11);
    v50 = *(a1 + 72);
    if (v42 >= v50)
    {
      v52 = *(a1 + 56);
      v53 = v42 - v52;
      v54 = v42 - v52 + 1;
      if (v54 < 0)
      {
        goto LABEL_315;
      }

      v55 = v50 - v52;
      if (2 * v55 > v54)
      {
        v54 = 2 * v55;
      }

      if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v56 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v56 = v54;
      }

      if (v56)
      {
        v57 = operator new(v56);
      }

      else
      {
        v57 = 0;
      }

      v57[v53] = v49;
      v51 = &v57[v53 + 1];
      memcpy(v57, v52, v53);
      *(a1 + 56) = v57;
      *(a1 + 64) = v51;
      *(a1 + 72) = &v57[v56];
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v42 = v49;
      v51 = v42 + 1;
    }

    *(a1 + 64) = v51;
    v58 = *(v19 + 12);
    v59 = *(a1 + 72);
    if (v51 >= v59)
    {
      v61 = *(a1 + 56);
      v62 = v51 - v61;
      v63 = v51 - v61 + 1;
      if (v63 < 0)
      {
        goto LABEL_315;
      }

      v64 = v59 - v61;
      if (2 * v64 > v63)
      {
        v63 = 2 * v64;
      }

      if (v64 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v65 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        v66 = operator new(v65);
      }

      else
      {
        v66 = 0;
      }

      v66[v62] = v58;
      v60 = &v66[v62 + 1];
      memcpy(v66, v61, v62);
      *(a1 + 56) = v66;
      *(a1 + 64) = v60;
      *(a1 + 72) = &v66[v65];
      if (v61)
      {
        operator delete(v61);
      }
    }

    else
    {
      *v51 = v58;
      v60 = v51 + 1;
    }

    *(a1 + 64) = v60;
    v67 = *(v19 + 13);
    v68 = *(a1 + 72);
    if (v60 >= v68)
    {
      v70 = *(a1 + 56);
      v71 = v60 - v70;
      v72 = v60 - v70 + 1;
      if (v72 < 0)
      {
        goto LABEL_315;
      }

      v73 = v68 - v70;
      if (2 * v73 > v72)
      {
        v72 = 2 * v73;
      }

      if (v73 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v74 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v74 = v72;
      }

      if (v74)
      {
        v75 = operator new(v74);
      }

      else
      {
        v75 = 0;
      }

      v75[v71] = v67;
      v69 = &v75[v71 + 1];
      memcpy(v75, v70, v71);
      *(a1 + 56) = v75;
      *(a1 + 64) = v69;
      *(a1 + 72) = &v75[v74];
      if (v70)
      {
        operator delete(v70);
      }
    }

    else
    {
      *v60 = v67;
      v69 = v60 + 1;
    }

    *(a1 + 64) = v69;
    v76 = *(v19 + 14);
    v77 = *(a1 + 72);
    if (v69 >= v77)
    {
      v79 = *(a1 + 56);
      v80 = v69 - v79;
      v81 = v69 - v79 + 1;
      if (v81 < 0)
      {
        goto LABEL_315;
      }

      v82 = v77 - v79;
      if (2 * v82 > v81)
      {
        v81 = 2 * v82;
      }

      if (v82 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v83 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v83 = v81;
      }

      if (v83)
      {
        v84 = operator new(v83);
      }

      else
      {
        v84 = 0;
      }

      v84[v80] = v76;
      v78 = &v84[v80 + 1];
      memcpy(v84, v79, v80);
      *(a1 + 56) = v84;
      *(a1 + 64) = v78;
      *(a1 + 72) = &v84[v83];
      if (v79)
      {
        operator delete(v79);
      }
    }

    else
    {
      *v69 = v76;
      v78 = v69 + 1;
    }

    *(a1 + 64) = v78;
    v85 = *(v19 + 15);
    v86 = *(a1 + 72);
    if (v78 < v86)
    {
      *v78 = v85;
      v20 = (v78 + 1);
    }

    else
    {
      v87 = *(a1 + 56);
      v88 = v78 - v87;
      v89 = v78 - v87 + 1;
      if (v89 < 0)
      {
        goto LABEL_315;
      }

      v90 = v86 - v87;
      if (2 * v90 > v89)
      {
        v89 = 2 * v90;
      }

      if (v90 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v91 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v91 = v89;
      }

      if (v91)
      {
        v92 = operator new(v91);
      }

      else
      {
        v92 = 0;
      }

      v92[v88] = v85;
      v20 = &v92[v88 + 1];
      memcpy(v92, v87, v88);
      *(a1 + 56) = v92;
      *(a1 + 64) = v20;
      *(a1 + 72) = &v92[v91];
      if (v87)
      {
        operator delete(v87);
      }
    }

    *(a1 + 64) = v20;
  }

  insertVectorFromData<unsigned int>((a1 + 56), *(a1 + 40) - *(a1 + 32));
  v219 = 0xAAAAAAAAAAAAAAAALL;
  v220 = 0x5AAAAAAAAAAAAAALL;
  __p = 0xAAAA006D65646F6DLL;
  v93 = *(a1 + 32);
  v94 = *(a1 + 40);
  if (v93 == v94)
  {
    return;
  }

  v217 = 0;
  v95 = *(a1 + 64);
  v215 = *(a1 + 40);
  do
  {
    v96 = *v93;
    v97 = *(a1 + 72);
    if (v95 >= v97)
    {
      v99 = *(a1 + 56);
      v100 = v95 - v99;
      v101 = v95 - v99 + 1;
      if (v101 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v102 = v97 - v99;
      if (2 * v102 > v101)
      {
        v101 = 2 * v102;
      }

      if (v102 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v103 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v103 = v101;
      }

      if (v103)
      {
        v104 = operator new(v103);
      }

      else
      {
        v104 = 0;
      }

      v104[v100] = v96;
      v98 = &v104[v100 + 1];
      memcpy(v104, v99, v100);
      *(a1 + 56) = v104;
      *(a1 + 64) = v98;
      *(a1 + 72) = &v104[v103];
      if (v99)
      {
        operator delete(v99);
      }
    }

    else
    {
      *v95 = v96;
      v98 = v95 + 1;
    }

    *(a1 + 64) = v98;
    if (v220 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v220 >= 0)
    {
      v106 = HIBYTE(v220);
    }

    else
    {
      v106 = v219;
    }

    if (v106 >= 1)
    {
      v107 = *(a1 + 72);
      if (v107 - v98 < v106)
      {
        v108 = *(a1 + 56);
        v109 = v98 - v108;
        v110 = v98 - v108 + v106;
        if (v110 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v111 = v107 - v108;
        if (2 * v111 > v110)
        {
          v110 = 2 * v111;
        }

        if (v111 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v112 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v112 = v110;
        }

        if (v112)
        {
          v113 = operator new(v112);
          v114 = &v113[v109];
          v115 = &v113[v109 + v106];
          if (v106 < 8)
          {
            goto LABEL_190;
          }
        }

        else
        {
          v113 = 0;
          v114 = (v98 - v108);
          v115 = (v109 + v106);
          if (v106 < 8)
          {
            goto LABEL_190;
          }
        }

        if ((&v113[v98] - v108 - p_p) >= 0x20)
        {
          if (v106 >= 0x20)
          {
            v123 = v106 & 0x7FFFFFFFFFFFFFE0;
            v124 = (p_p + 16);
            v125 = &v113[v109 + 16];
            v126 = v106 & 0x7FFFFFFFFFFFFFE0;
            do
            {
              v127 = *v124;
              *(v125 - 1) = *(v124 - 1);
              *v125 = v127;
              v124 += 2;
              v125 += 32;
              v126 -= 32;
            }

            while (v126);
            if (v106 == v123)
            {
LABEL_191:
              *(a1 + 64) = v98;
              memcpy(v113, v108, v98 - v108);
              *(a1 + 56) = v113;
              *(a1 + 64) = v115;
              v98 = v115;
              *(a1 + 72) = &v113[v112];
              v94 = v215;
              if (v108)
              {
                operator delete(v108);
                v98 = *(a1 + 64);
              }

              goto LABEL_193;
            }

            if ((v106 & 0x18) == 0)
            {
              p_p += v123;
              v114 += v123;
              goto LABEL_190;
            }
          }

          else
          {
            v123 = 0;
          }

          v114 += v106 & 0x7FFFFFFFFFFFFFF8;
          v128 = &p_p[v123];
          v129 = &v113[&v98[v123] - v108];
          v130 = v123 - (v106 & 0x7FFFFFFFFFFFFFF8);
          do
          {
            v131 = *v128++;
            *v129 = v131;
            v129 += 8;
            v130 += 8;
          }

          while (v130);
          p_p += v106 & 0x7FFFFFFFFFFFFFF8;
          if (v106 == (v106 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_191;
          }
        }

        do
        {
LABEL_190:
          v132 = *p_p++;
          *v114++ = v132;
        }

        while (v114 != v115);
        goto LABEL_191;
      }

      if (v106 < 0x20 || (v98 - p_p) < 0x20)
      {
        v116 = p_p;
        v117 = v98;
      }

      else
      {
        v116 = &p_p[v106 & 0x7FFFFFFFFFFFFFE0];
        v117 = &v98[v106 & 0x7FFFFFFFFFFFFFE0];
        v118 = v98 + 16;
        v119 = (p_p + 16);
        v120 = v106 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v121 = *v119;
          *(v118 - 1) = *(v119 - 1);
          *v118 = v121;
          v118 += 2;
          v119 += 2;
          v120 -= 32;
        }

        while (v120);
        if (v106 == (v106 & 0x7FFFFFFFFFFFFFE0))
        {
          goto LABEL_176;
        }
      }

      do
      {
        v122 = *v116++;
        *v117++ = v122;
      }

      while (v116 != &p_p[v106]);
LABEL_176:
      *(a1 + 64) = v117;
      v98 = v117;
    }

LABEL_193:
    v133 = HIBYTE(v220);
    if (v220 < 0)
    {
      v133 = v219;
    }

    if (v133 != 30)
    {
      v134 = 30 - v133;
      v135 = *(a1 + 72);
      if (v135 - v98 >= v134)
      {
        bzero(v98, v134);
        *(a1 + 64) = &v98[v134];
      }

      else
      {
        v136 = *(a1 + 56);
        v137 = v98 - v136;
        v138 = v98 - v136 + v134;
        if (v138 < 0)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v139 = v135 - v136;
        if (2 * v139 > v138)
        {
          v138 = 2 * v139;
        }

        if (v139 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v140 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v140 = v138;
        }

        if (v140)
        {
          v141 = operator new(v140);
        }

        else
        {
          v141 = 0;
        }

        bzero(&v141[v137], v134);
        *(a1 + 64) = v98;
        memcpy(v141, v136, v98 - v136);
        *(a1 + 56) = v141;
        *(a1 + 64) = &v141[v137 + v134];
        *(a1 + 72) = &v141[v140];
        if (v136)
        {
          operator delete(v136);
        }
      }
    }

    v142 = *(a1 + 8) + 16 * v217;
    insertVectorFromData<unsigned int>((a1 + 56), *v142);
    insertVectorFromData<unsigned short>((a1 + 56), *(v142 + 4));
    insertVectorFromData<unsigned short>((a1 + 56), *(v142 + 6));
    v143 = *(v142 + 8);
    v145 = *(a1 + 64);
    v144 = *(a1 + 72);
    if (v145 >= v144)
    {
      v147 = *(a1 + 56);
      v148 = v145 - v147;
      v149 = v145 - v147 + 1;
      if (v149 < 0)
      {
        goto LABEL_316;
      }

      v150 = v144 - v147;
      if (2 * v150 > v149)
      {
        v149 = 2 * v150;
      }

      if (v150 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v151 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v151 = v149;
      }

      if (v151)
      {
        v152 = operator new(v151);
      }

      else
      {
        v152 = 0;
      }

      v152[v148] = v143;
      v146 = &v152[v148 + 1];
      memcpy(v152, v147, v148);
      *(a1 + 56) = v152;
      *(a1 + 64) = v146;
      *(a1 + 72) = &v152[v151];
      if (v147)
      {
        operator delete(v147);
      }
    }

    else
    {
      *v145 = v143;
      v146 = v145 + 1;
    }

    *(a1 + 64) = v146;
    v153 = *(v142 + 9);
    v154 = *(a1 + 72);
    if (v146 >= v154)
    {
      v156 = *(a1 + 56);
      v157 = v146 - v156;
      v158 = v146 - v156 + 1;
      if (v158 < 0)
      {
        goto LABEL_316;
      }

      v159 = v154 - v156;
      if (2 * v159 > v158)
      {
        v158 = 2 * v159;
      }

      if (v159 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v160 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v160 = v158;
      }

      if (v160)
      {
        v161 = operator new(v160);
      }

      else
      {
        v161 = 0;
      }

      v161[v157] = v153;
      v155 = &v161[v157 + 1];
      memcpy(v161, v156, v157);
      *(a1 + 56) = v161;
      *(a1 + 64) = v155;
      *(a1 + 72) = &v161[v160];
      if (v156)
      {
        operator delete(v156);
      }
    }

    else
    {
      *v146 = v153;
      v155 = v146 + 1;
    }

    *(a1 + 64) = v155;
    v162 = *(v142 + 10);
    v163 = *(a1 + 72);
    if (v155 >= v163)
    {
      v165 = *(a1 + 56);
      v166 = v155 - v165;
      v167 = v155 - v165 + 1;
      if (v167 < 0)
      {
        goto LABEL_316;
      }

      v168 = v163 - v165;
      if (2 * v168 > v167)
      {
        v167 = 2 * v168;
      }

      if (v168 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v169 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v169 = v167;
      }

      if (v169)
      {
        v170 = operator new(v169);
      }

      else
      {
        v170 = 0;
      }

      v170[v166] = v162;
      v164 = &v170[v166 + 1];
      memcpy(v170, v165, v166);
      *(a1 + 56) = v170;
      *(a1 + 64) = v164;
      *(a1 + 72) = &v170[v169];
      if (v165)
      {
        operator delete(v165);
      }
    }

    else
    {
      *v155 = v162;
      v164 = v155 + 1;
    }

    *(a1 + 64) = v164;
    v171 = *(v142 + 11);
    v172 = *(a1 + 72);
    if (v164 >= v172)
    {
      v174 = *(a1 + 56);
      v175 = v164 - v174;
      v176 = v164 - v174 + 1;
      if (v176 < 0)
      {
        goto LABEL_316;
      }

      v177 = v172 - v174;
      if (2 * v177 > v176)
      {
        v176 = 2 * v177;
      }

      if (v177 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v178 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v178 = v176;
      }

      if (v178)
      {
        v179 = operator new(v178);
      }

      else
      {
        v179 = 0;
      }

      v179[v175] = v171;
      v173 = &v179[v175 + 1];
      memcpy(v179, v174, v175);
      *(a1 + 56) = v179;
      *(a1 + 64) = v173;
      *(a1 + 72) = &v179[v178];
      if (v174)
      {
        operator delete(v174);
      }
    }

    else
    {
      *v164 = v171;
      v173 = v164 + 1;
    }

    *(a1 + 64) = v173;
    v180 = *(v142 + 12);
    v181 = *(a1 + 72);
    if (v173 >= v181)
    {
      v183 = *(a1 + 56);
      v184 = v173 - v183;
      v185 = v173 - v183 + 1;
      if (v185 < 0)
      {
        goto LABEL_316;
      }

      v186 = v181 - v183;
      if (2 * v186 > v185)
      {
        v185 = 2 * v186;
      }

      if (v186 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v187 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v187 = v185;
      }

      if (v187)
      {
        v188 = operator new(v187);
      }

      else
      {
        v188 = 0;
      }

      v188[v184] = v180;
      v182 = &v188[v184 + 1];
      memcpy(v188, v183, v184);
      *(a1 + 56) = v188;
      *(a1 + 64) = v182;
      *(a1 + 72) = &v188[v187];
      if (v183)
      {
        operator delete(v183);
      }
    }

    else
    {
      *v173 = v180;
      v182 = v173 + 1;
    }

    *(a1 + 64) = v182;
    v189 = *(v142 + 13);
    v190 = *(a1 + 72);
    if (v182 >= v190)
    {
      v192 = *(a1 + 56);
      v193 = v182 - v192;
      v194 = v182 - v192 + 1;
      if (v194 < 0)
      {
        goto LABEL_316;
      }

      v195 = v190 - v192;
      if (2 * v195 > v194)
      {
        v194 = 2 * v195;
      }

      if (v195 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v196 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v196 = v194;
      }

      if (v196)
      {
        v197 = operator new(v196);
      }

      else
      {
        v197 = 0;
      }

      v197[v193] = v189;
      v191 = &v197[v193 + 1];
      memcpy(v197, v192, v193);
      *(a1 + 56) = v197;
      *(a1 + 64) = v191;
      *(a1 + 72) = &v197[v196];
      if (v192)
      {
        operator delete(v192);
      }
    }

    else
    {
      *v182 = v189;
      v191 = v182 + 1;
    }

    *(a1 + 64) = v191;
    v198 = *(v142 + 14);
    v199 = *(a1 + 72);
    if (v191 >= v199)
    {
      v201 = *(a1 + 56);
      v202 = v191 - v201;
      v203 = v191 - v201 + 1;
      if (v203 < 0)
      {
        goto LABEL_316;
      }

      v204 = v199 - v201;
      if (2 * v204 > v203)
      {
        v203 = 2 * v204;
      }

      if (v204 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v205 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v205 = v203;
      }

      if (v205)
      {
        v206 = operator new(v205);
      }

      else
      {
        v206 = 0;
      }

      v206[v202] = v198;
      v200 = &v206[v202 + 1];
      memcpy(v206, v201, v202);
      *(a1 + 56) = v206;
      *(a1 + 64) = v200;
      *(a1 + 72) = &v206[v205];
      if (v201)
      {
        operator delete(v201);
      }
    }

    else
    {
      *v191 = v198;
      v200 = v191 + 1;
    }

    *(a1 + 64) = v200;
    v207 = *(v142 + 15);
    v208 = *(a1 + 72);
    if (v200 < v208)
    {
      *v200 = v207;
      v95 = v200 + 1;
    }

    else
    {
      v209 = *(a1 + 56);
      v210 = v200 - v209;
      v211 = v200 - v209 + 1;
      if (v211 < 0)
      {
LABEL_316:
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v212 = v208 - v209;
      if (2 * v212 > v211)
      {
        v211 = 2 * v212;
      }

      if (v212 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v213 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v213 = v211;
      }

      if (v213)
      {
        v214 = operator new(v213);
      }

      else
      {
        v214 = 0;
      }

      v214[v210] = v207;
      v95 = &v214[v210 + 1];
      memcpy(v214, v209, v210);
      *(a1 + 56) = v214;
      *(a1 + 64) = v95;
      *(a1 + 72) = &v214[v213];
      if (v209)
      {
        operator delete(v209);
      }
    }

    ++v217;
    *(a1 + 64) = v95;
    ++v93;
  }

  while (v93 != v94);
  if (SHIBYTE(v220) < 0)
  {
    operator delete(__p);
  }
}

void sub_29775368C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void insertVectorFromData<unsigned int>(void **a1, int a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      goto LABEL_54;
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    a1[1] = v6;
    a1[2] = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  v13 = a1[2];
  if (v6 >= v13)
  {
    v15 = *a1;
    v16 = v6 - *a1;
    v17 = v16 + 1;
    if ((v16 + 1) < 0)
    {
      goto LABEL_54;
    }

    v18 = v13 - v15;
    if (2 * v18 > v17)
    {
      v17 = 2 * v18;
    }

    if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      v20 = operator new(v19);
    }

    else
    {
      v20 = 0;
    }

    v20[v16] = BYTE1(a2);
    v14 = &v20[v16 + 1];
    memcpy(v20, v15, v16);
    *a1 = v20;
    a1[1] = v14;
    a1[2] = &v20[v19];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = BYTE1(a2);
    v14 = v6 + 1;
  }

  a1[1] = v14;
  v21 = a1[2];
  if (v14 >= v21)
  {
    v23 = *a1;
    v24 = v14 - *a1;
    v25 = v24 + 1;
    if ((v24 + 1) < 0)
    {
      goto LABEL_54;
    }

    v26 = v21 - v23;
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      v28 = operator new(v27);
    }

    else
    {
      v28 = 0;
    }

    v28[v24] = BYTE2(a2);
    v22 = &v28[v24 + 1];
    memcpy(v28, v23, v24);
    *a1 = v28;
    a1[1] = v22;
    a1[2] = &v28[v27];
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v14 = BYTE2(a2);
    v22 = v14 + 1;
  }

  a1[1] = v22;
  v29 = a1[2];
  if (v22 < v29)
  {
    *v22 = HIBYTE(a2);
    v30 = (v22 + 1);
    goto LABEL_53;
  }

  v31 = *a1;
  v32 = v22 - *a1;
  v33 = v32 + 1;
  if ((v32 + 1) < 0)
  {
LABEL_54:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v34 = v29 - v31;
  if (2 * v34 > v33)
  {
    v33 = 2 * v34;
  }

  if (v34 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = v33;
  }

  if (v35)
  {
    v36 = operator new(v35);
  }

  else
  {
    v36 = 0;
  }

  v36[v32] = HIBYTE(a2);
  v30 = &v36[v32 + 1];
  memcpy(v36, v31, v32);
  *a1 = v36;
  a1[1] = v30;
  a1[2] = &v36[v35];
  if (v31)
  {
    operator delete(v31);
  }

LABEL_53:
  a1[1] = v30;
}

void insertVectorFromData<unsigned short>(void **a1, __int16 a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 + 1;
    if ((v8 + 1) < 0)
    {
      goto LABEL_28;
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    v12[v8] = a2;
    v6 = &v12[v8 + 1];
    memcpy(v12, v7, v8);
    *a1 = v12;
    a1[1] = v6;
    a1[2] = &v12[v11];
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  v13 = a1[2];
  if (v6 < v13)
  {
    *v6 = HIBYTE(a2);
    v14 = (v6 + 1);
    goto LABEL_27;
  }

  v15 = *a1;
  v16 = v6 - *a1;
  v17 = v16 + 1;
  if ((v16 + 1) < 0)
  {
LABEL_28:
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v18 = v13 - v15;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = operator new(v19);
  }

  else
  {
    v20 = 0;
  }

  v20[v16] = HIBYTE(a2);
  v14 = &v20[v16 + 1];
  memcpy(v20, v15, v16);
  *a1 = v20;
  a1[1] = v14;
  a1[2] = &v20[v19];
  if (v15)
  {
    operator delete(v15);
  }

LABEL_27:
  a1[1] = v14;
}

void ETLDIAGLoggingGetGUIDString(unsigned int *a1@<X0>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  *(&a3->__r_.__value_.__s + 23) = 0;
  a3->__r_.__value_.__s.__data_[0] = 0;
  if (!a1)
  {
    return;
  }

  ctu::hex0(v63, *a1);
  v5 = SHIBYTE(v64);
  if ((SHIBYTE(v64) & 0x8000000000000000) == 0)
  {
    v6 = v63;
    if (SHIBYTE(v64) == 22)
    {
      v7 = 22;
      v8 = 23;
LABEL_8:
      v10 = 2 * v7;
      if (v8 > 2 * v7)
      {
        v10 = v8;
      }

      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      if (v10 >= 0x17)
      {
        v9 = v11;
      }

      else
      {
        v9 = 23;
      }

      v12 = v7 == 22;
      goto LABEL_17;
    }

LABEL_23:
    *(v5 + v6) = 45;
    v16 = v5 + 1;
    if (SHIBYTE(v64) < 0)
    {
      v63[1] = v16;
    }

    else
    {
      HIBYTE(v64) = v16 & 0x7F;
    }

    v15 = &v16[v6];
    goto LABEL_27;
  }

  v5 = v63[1];
  v8 = v64 & 0x7FFFFFFFFFFFFFFFLL;
  v7 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 != v63[1])
  {
    v6 = v63[0];
    goto LABEL_23;
  }

  v9 = 0x7FFFFFFFFFFFFFF7;
  if (v8 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v63[0];
  if (v7 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_8;
  }

  v12 = 0;
LABEL_17:
  v13 = operator new(v9);
  v14 = v13;
  if (v7)
  {
    memmove(v13, v6, v7);
  }

  v14[v7] = 45;
  if (!v12)
  {
    operator delete(v6);
  }

  v63[1] = v8;
  v64 = v9 | 0x8000000000000000;
  v63[0] = v14;
  v15 = &v14[v8];
LABEL_27:
  *v15 = 0;
  v66 = v64;
  *__p = *v63;
  v63[1] = 0;
  v64 = 0;
  v63[0] = 0;
  if (v66 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v66 >= 0)
  {
    v18 = HIBYTE(v66);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(a3, v17, v18);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((SHIBYTE(v64) & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v63[0]);
LABEL_35:
  ctu::hex0(v63, *(a1 + 2));
  v19 = SHIBYTE(v64);
  if ((SHIBYTE(v64) & 0x8000000000000000) == 0)
  {
    v20 = v63;
    if (SHIBYTE(v64) == 22)
    {
      v21 = 22;
      v22 = 23;
LABEL_43:
      v24 = 2 * v21;
      if (v22 > 2 * v21)
      {
        v24 = v22;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v23 = v25;
      }

      else
      {
        v23 = 23;
      }

      v26 = v21 == 22;
      goto LABEL_52;
    }

LABEL_58:
    *(v19 + v20) = 45;
    v30 = v19 + 1;
    if (SHIBYTE(v64) < 0)
    {
      v63[1] = v30;
    }

    else
    {
      HIBYTE(v64) = v30 & 0x7F;
    }

    v29 = &v30[v20];
    goto LABEL_62;
  }

  v19 = v63[1];
  v22 = v64 & 0x7FFFFFFFFFFFFFFFLL;
  v21 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v21 != v63[1])
  {
    v20 = v63[0];
    goto LABEL_58;
  }

  v23 = 0x7FFFFFFFFFFFFFF7;
  if (v22 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v63[0];
  if (v21 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_43;
  }

  v26 = 0;
LABEL_52:
  v27 = operator new(v23);
  v28 = v27;
  if (v21)
  {
    memmove(v27, v20, v21);
  }

  v28[v21] = 45;
  if (!v26)
  {
    operator delete(v20);
  }

  v63[1] = v22;
  v64 = v23 | 0x8000000000000000;
  v63[0] = v28;
  v29 = &v28[v22];
LABEL_62:
  *v29 = 0;
  v66 = v64;
  *__p = *v63;
  v63[1] = 0;
  v64 = 0;
  v63[0] = 0;
  if (v66 >= 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if (v66 >= 0)
  {
    v32 = HIBYTE(v66);
  }

  else
  {
    v32 = __p[1];
  }

  std::string::append(a3, v31, v32);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
      goto LABEL_70;
    }
  }

  else if ((SHIBYTE(v64) & 0x80000000) == 0)
  {
    goto LABEL_70;
  }

  operator delete(v63[0]);
LABEL_70:
  ctu::hex0(v63, *(a1 + 3));
  v33 = SHIBYTE(v64);
  if ((SHIBYTE(v64) & 0x8000000000000000) == 0)
  {
    v34 = v63;
    if (SHIBYTE(v64) == 22)
    {
      v35 = 22;
      v36 = 23;
LABEL_78:
      v38 = 2 * v35;
      if (v36 > 2 * v35)
      {
        v38 = v36;
      }

      if ((v38 | 7) == 0x17)
      {
        v39 = 25;
      }

      else
      {
        v39 = (v38 | 7) + 1;
      }

      if (v38 >= 0x17)
      {
        v37 = v39;
      }

      else
      {
        v37 = 23;
      }

      v40 = v35 == 22;
      goto LABEL_87;
    }

LABEL_93:
    *(v33 + v34) = 45;
    v44 = v33 + 1;
    if (SHIBYTE(v64) < 0)
    {
      v63[1] = v44;
    }

    else
    {
      HIBYTE(v64) = v44 & 0x7F;
    }

    v43 = &v44[v34];
    goto LABEL_97;
  }

  v33 = v63[1];
  v36 = v64 & 0x7FFFFFFFFFFFFFFFLL;
  v35 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v35 != v63[1])
  {
    v34 = v63[0];
    goto LABEL_93;
  }

  v37 = 0x7FFFFFFFFFFFFFF7;
  if (v36 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v63[0];
  if (v35 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_78;
  }

  v40 = 0;
LABEL_87:
  v41 = operator new(v37);
  v42 = v41;
  if (v35)
  {
    memmove(v41, v34, v35);
  }

  v42[v35] = 45;
  if (!v40)
  {
    operator delete(v34);
  }

  v63[1] = v36;
  v64 = v37 | 0x8000000000000000;
  v63[0] = v42;
  v43 = &v42[v36];
LABEL_97:
  *v43 = 0;
  v66 = v64;
  *__p = *v63;
  v63[1] = 0;
  v64 = 0;
  v63[0] = 0;
  if (v66 >= 0)
  {
    v45 = __p;
  }

  else
  {
    v45 = __p[0];
  }

  if (v66 >= 0)
  {
    v46 = HIBYTE(v66);
  }

  else
  {
    v46 = __p[1];
  }

  std::string::append(a3, v45, v46);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v64) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

LABEL_171:
    operator delete(v63[0]);
    goto LABEL_105;
  }

  if (SHIBYTE(v64) < 0)
  {
    goto LABEL_171;
  }

LABEL_105:
  ctu::hex0(__p, *(a1 + 8));
  if (v66 >= 0)
  {
    v47 = __p;
  }

  else
  {
    v47 = __p[0];
  }

  if (v66 >= 0)
  {
    v48 = HIBYTE(v66);
  }

  else
  {
    v48 = __p[1];
  }

  std::string::append(a3, v47, v48);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(__p, *(a1 + 9));
  if (v66 >= 0)
  {
    v49 = __p;
  }

  else
  {
    v49 = __p[0];
  }

  if (v66 >= 0)
  {
    v50 = HIBYTE(v66);
  }

  else
  {
    v50 = __p[1];
  }

  std::string::append(a3, v49, v50);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::append(a3, "-", 1uLL);
  ctu::hex0(__p, *(a1 + 10));
  if (v66 >= 0)
  {
    v51 = __p;
  }

  else
  {
    v51 = __p[0];
  }

  if (v66 >= 0)
  {
    v52 = HIBYTE(v66);
  }

  else
  {
    v52 = __p[1];
  }

  std::string::append(a3, v51, v52);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(__p, *(a1 + 11));
  if (v66 >= 0)
  {
    v53 = __p;
  }

  else
  {
    v53 = __p[0];
  }

  if (v66 >= 0)
  {
    v54 = HIBYTE(v66);
  }

  else
  {
    v54 = __p[1];
  }

  std::string::append(a3, v53, v54);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(__p, *(a1 + 12));
  if (v66 >= 0)
  {
    v55 = __p;
  }

  else
  {
    v55 = __p[0];
  }

  if (v66 >= 0)
  {
    v56 = HIBYTE(v66);
  }

  else
  {
    v56 = __p[1];
  }

  std::string::append(a3, v55, v56);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(__p, *(a1 + 13));
  if (v66 >= 0)
  {
    v57 = __p;
  }

  else
  {
    v57 = __p[0];
  }

  if (v66 >= 0)
  {
    v58 = HIBYTE(v66);
  }

  else
  {
    v58 = __p[1];
  }

  std::string::append(a3, v57, v58);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(__p, *(a1 + 14));
  if (v66 >= 0)
  {
    v59 = __p;
  }

  else
  {
    v59 = __p[0];
  }

  if (v66 >= 0)
  {
    v60 = HIBYTE(v66);
  }

  else
  {
    v60 = __p[1];
  }

  std::string::append(a3, v59, v60);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }

  ctu::hex0(__p, *(a1 + 15));
  if (v66 >= 0)
  {
    v61 = __p;
  }

  else
  {
    v61 = __p[0];
  }

  if (v66 >= 0)
  {
    v62 = HIBYTE(v66);
  }

  else
  {
    v62 = __p[1];
  }

  std::string::append(a3, v61, v62);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2977541C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ETLDIAGGetGUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0xAAAAAAAAAAAAAAAALL;
  v113 = 0xAAAAAAAAAAAAAAAALL;
  v124 = v3;
  v123 = v3;
  v122 = v3;
  v121 = v3;
  v120 = v3;
  v119 = v3;
  v116 = v3;
  v115 = v3;
  v112 = v3;
  *v111 = v3;
  v110 = v3;
  v109 = v3;
  v108 = v3;
  v107 = v3;
  v118 = 0;
  v4 = MEMORY[0x29EDC95A8] + 64;
  v114 = MEMORY[0x29EDC95A8] + 64;
  v5 = *(MEMORY[0x29EDC9538] + 16);
  v106 = *(MEMORY[0x29EDC9538] + 8);
  *(&v106 + *(v106 - 24)) = v5;
  v6 = (&v106 + *(v106 - 24));
  std::ios_base::init(v6, &v107);
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v106 = v7;
  v114 = v4;
  v93 = MEMORY[0x29EDC9568] + 16;
  *&v107 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2747B0](&v107 + 8);
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v92 = MEMORY[0x29EDC9570] + 16;
  *&v107 = MEMORY[0x29EDC9570] + 16;
  v111[0] = 0;
  v111[1] = 0;
  *&v112 = 0;
  *(&v112 + 1) = v111;
  LODWORD(v113) = 16;
  std::string::append(v111, 0x16uLL, 0);
  v8 = BYTE7(v112);
  if (SBYTE7(v112) < 0)
  {
    v8 = v111[1];
  }

  *(&v109 + 1) = v111;
  *&v110 = v111;
  *(&v110 + 1) = v111 + v8;
  v103 = &v103;
  v104 = &v103;
  v105 = 0;
  v9 = operator new(0x18uLL);
  v94 = &v109 + 1;
  v9[4] = 2070;
  v103 = v9;
  v104 = v9;
  v10 = 10;
  v11 = 9;
  *v9 = &v103;
  *(v9 + 1) = &v103;
  v105 = 1;
LABEL_4:
  v12 = v11;
  std::ios_base::clear((&v106 + *(v106 - 24)), 0);
  *a2 = 0;
  *(a2 + 16) = *(a2 + 8);
  *(a2 + 40) = *(a2 + 32);
  *(a2 + 64) = *(a2 + 56);
  *(a2 + 80) = 3;
  _ETLDebugPrint("ETLDIAGGetGUID", "Get GUID try #%d\n", 11 - v10);
  v95 = v12;
  v13 = v104;
  v14 = a2;
  if (v104 == &v103)
  {
    goto LABEL_129;
  }

  v15 = 0;
  do
  {
    while (1)
    {
      v97 = v13;
      v16 = *(v13 + 4);
      v99 = 0;
      v100 = v16;
      v101 = *(v14 + 80);
      v102 = 0;
      SubsysCmdString = ETLDiagGetSubsysCmdString();
      _ETLDebugPrint("ETLDIAGGetGUID", "Request GUID: Subsystem Command: %s\n", SubsysCmdString);
      _ETLDebugPrint("ETLDIAGGetGUID", "Request GUID: Version: %u\n", v101);
      if ((ETLDiagCreateGUIDDB() & 1) == 0)
      {
        break;
      }

      std::ios_base::clear((&v106 + *(v106 - 24)), 0);
      v21 = ETLDiagGetSubsysCmdString();
      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: Subsystem Command Code: %s (0x%x) \n", v21, *v99);
      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: Delayed Response Status: %u\n", *(v99 + 1));
      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: Delayed Response ID: %u\n", v99[4]);
      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: Response Count: %u\n", v99[5]);
      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: Version: %u\n", v99[6]);
      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: OP Code: %u\n", v99[7]);
      if (*(v99 + 1))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "ETLDiagCreateGUIDDB failed with status: ", 40);
        MEMORY[0x29C274790](&v106, *(v99 + 1));
        if ((v113 & 0x10) != 0)
        {
          v69 = *(&v112 + 1);
          v70 = &v109 + 1;
          if (*(&v112 + 1) < v110)
          {
            *(&v112 + 1) = v110;
            v69 = v110;
            v70 = &v109 + 1;
          }
        }

        else
        {
          if ((v113 & 8) == 0)
          {
            v62 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            p_p = &__p;
            goto LABEL_111;
          }

          v69 = v109;
          v70 = &v108;
        }

        v73 = *v70;
        v62 = v69 - *v70;
        if (v62 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v62 >= 0x17)
        {
          if ((v62 | 7) == 0x17)
          {
            v74 = 25;
          }

          else
          {
            v74 = (v62 | 7) + 1;
          }

          p_p = operator new(v74);
          __p.__r_.__value_.__l.__size_ = v62;
          __p.__r_.__value_.__r.__words[2] = v74 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = p_p;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v69 - *v70;
          p_p = &__p;
          if (!v62)
          {
LABEL_111:
            p_p->__r_.__value_.__s.__data_[v62] = 0;
            v75 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v75 = __p.__r_.__value_.__r.__words[0];
            }

            goto LABEL_126;
          }
        }

        memmove(p_p, v73, v62);
        goto LABEL_111;
      }

      if (v101 != v99[6])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "ETLDiagCreateGUIDDB request/response version mismatch: ", 55);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "request ", 8);
        v64 = MEMORY[0x29C2747A0](&v106, v101);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, ", ", 2);
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "response ", 9);
        MEMORY[0x29C2747A0](v66, v99[6]);
        if ((v113 & 0x10) != 0)
        {
          v71 = *(&v112 + 1);
          v72 = &v109 + 1;
          if (*(&v112 + 1) < v110)
          {
            *(&v112 + 1) = v110;
            v71 = v110;
            v72 = &v109 + 1;
          }
        }

        else
        {
          if ((v113 & 8) == 0)
          {
            v67 = 0;
            *(&__p.__r_.__value_.__s + 23) = 0;
            v68 = &__p;
            goto LABEL_124;
          }

          v71 = v109;
          v72 = &v108;
        }

        v76 = *v72;
        v67 = v71 - *v72;
        if (v67 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v67 >= 0x17)
        {
          if ((v67 | 7) == 0x17)
          {
            v77 = 25;
          }

          else
          {
            v77 = (v67 | 7) + 1;
          }

          v68 = operator new(v77);
          __p.__r_.__value_.__l.__size_ = v67;
          __p.__r_.__value_.__r.__words[2] = v77 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v68;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v71 - *v72;
          v68 = &__p;
          if (!v67)
          {
            goto LABEL_124;
          }
        }

        memmove(v68, v76, v67);
LABEL_124:
        v68->__r_.__value_.__s.__data_[v67] = 0;
        v75 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v75 = __p.__r_.__value_.__r.__words[0];
        }

LABEL_126:
        _ETLDebugPrint("ETLDIAGGetGUID", "%s\n", v75);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, " [subsystem: ", 13);
        v78 = ETLDiagGetSubsysCmdString();
        v79 = strlen(v78);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, v78, v79);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "]", 1);
LABEL_129:
        v10 = v95;
        if (!v95)
        {
          if ((v113 & 0x10) != 0)
          {
            v82 = *(&v112 + 1);
            if (*(&v112 + 1) < v110)
            {
              *(&v112 + 1) = v110;
              v82 = v110;
            }
          }

          else
          {
            if ((v113 & 8) == 0)
            {
              v80 = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              v81 = &__p;
              goto LABEL_146;
            }

            v82 = v109;
            v94 = &v108;
          }

          v83 = *v94;
          v80 = v82 - *v94;
          if (v80 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v80 >= 0x17)
          {
            if ((v80 | 7) == 0x17)
            {
              v84 = 25;
            }

            else
            {
              v84 = (v80 | 7) + 1;
            }

            v81 = operator new(v84);
            __p.__r_.__value_.__l.__size_ = v80;
            __p.__r_.__value_.__r.__words[2] = v84 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v81;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = v82 - *v94;
            v81 = &__p;
            if (!v80)
            {
LABEL_146:
              v81->__r_.__value_.__s.__data_[v80] = 0;
              if (*(a3 + 23) < 0)
              {
                operator delete(*a3);
              }

              v85 = 0;
              *a3 = __p;
              *a2 = 0;
              if (v105)
              {
                goto LABEL_152;
              }

              goto LABEL_154;
            }
          }

          memmove(v81, v83, v80);
          goto LABEL_146;
        }

        usleep(0x7A120u);
        v11 = v95 - 1;
        goto LABEL_4;
      }

      _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: Number of Files: %u\n", *(v99 + 17));
      v22 = v99;
      if (*(v99 + 17))
      {
        v23 = 0;
        v24 = 0;
        v25 = 20;
        do
        {
          v26 = *(v22 + 9);
          v28 = *(v14 + 16);
          v27 = *(v14 + 24);
          if (v28 >= v27)
          {
            v30 = *(v14 + 8);
            v31 = v28 - v30;
            v32 = (v28 - v30) >> 4;
            v33 = v32 + 1;
            if ((v32 + 1) >> 60)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v34 = v27 - v30;
            if (v34 >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              if (v35 >> 60)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v36 = operator new(16 * v35);
            }

            else
            {
              v36 = 0;
            }

            v37 = &v36[16 * v32];
            *v37 = *(v26 + v23);
            v29 = v37 + 16;
            memcpy(v36, v30, v31);
            *(a2 + 8) = v36;
            *(a2 + 16) = v29;
            *(a2 + 24) = &v36[16 * v35];
            v14 = a2;
            if (v30)
            {
              operator delete(v30);
              v22 = v99;
            }
          }

          else
          {
            *v28 = *(v26 + v23);
            v29 = v28 + 16;
          }

          *(v14 + 16) = v29;
          ETLDIAGLoggingGetGUIDString((*(v22 + 9) + v23), &__p);
          v38 = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v38 = __p.__r_.__value_.__r.__words[0];
          }

          _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: GUID [%u]: %s\n", v24, v38);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            v22 = v99;
            if (v99[6] == 3)
            {
LABEL_34:
              v39 = *(v22 + 9);
              v41 = *(v14 + 40);
              v40 = *(v14 + 48);
              if (v41 >= v40)
              {
                v43 = *(v14 + 32);
                v44 = v41 - v43;
                v45 = v41 - v43 + 1;
                if (v45 < 0)
                {
                  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
                }

                v46 = v40 - v43;
                if (2 * v46 > v45)
                {
                  v45 = 2 * v46;
                }

                if (v46 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v47 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v47 = v45;
                }

                if (v47)
                {
                  v48 = operator new(v47);
                }

                else
                {
                  v48 = 0;
                }

                v48[v44] = *(v39 + v25);
                v42 = &v48[v44 + 1];
                memcpy(v48, v43, v44);
                *(a2 + 32) = v48;
                *(a2 + 40) = v42;
                *(a2 + 48) = &v48[v47];
                v14 = a2;
                if (v43)
                {
                  operator delete(v43);
                }
              }

              else
              {
                *v41 = *(v39 + v25);
                v42 = (v41 + 1);
              }

              *(v14 + 40) = v42;
              _ETLDebugPrint("ETLDIAGGetGUID", "Response of GUID: DIAG ID [%u]: %u\n", v24, *(*(v99 + 9) + v25));
              v22 = v99;
              v14 = a2;
            }
          }

          else
          {
            v22 = v99;
            if (v99[6] == 3)
            {
              goto LABEL_34;
            }
          }

          ++v24;
          v25 += 21;
          v23 += 20;
        }

        while (v24 < *(v22 + 17));
      }

      ETLDiagReleaseGUIDDB();
      v13 = v97[1];
      v15 = 1;
      if (v13 == &v103)
      {
        goto LABEL_51;
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, " ", 1);
    v18 = ETLDiagGetSubsysCmdString();
    v19 = strlen(v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, v18, v19);
    v20 = ETLDiagGetSubsysCmdString();
    _ETLDebugPrint("ETLDIAGGetGUID", "Warning: %s does not provide GUID\n", v20);
    v13 = v97[1];
  }

  while (v13 != &v103);
  if ((v15 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_51:
  if (*(v14 + 8) == *(v14 + 16))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "All subsystems returned empty GUID", 34);
    if ((v113 & 0x10) != 0)
    {
      v55 = *(&v112 + 1);
      v56 = &v109 + 1;
      if (*(&v112 + 1) < v110)
      {
        *(&v112 + 1) = v110;
        v55 = v110;
        v56 = &v109 + 1;
      }
    }

    else
    {
      if ((v113 & 8) == 0)
      {
        v51 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v52 = &__p;
        goto LABEL_87;
      }

      v55 = v109;
      v56 = &v108;
    }

    v60 = *v56;
    v51 = v55 - *v56;
    if (v51 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v51 >= 0x17)
    {
      if ((v51 | 7) == 0x17)
      {
        v61 = 25;
      }

      else
      {
        v61 = (v51 | 7) + 1;
      }

      v52 = operator new(v61);
      __p.__r_.__value_.__l.__size_ = v51;
      __p.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v52;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v55 - *v56;
      v52 = &__p;
      if (!v51)
      {
LABEL_87:
        v52->__r_.__value_.__s.__data_[v51] = 0;
        v59 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v59 = __p.__r_.__value_.__r.__words[0];
        }

        goto LABEL_89;
      }
    }

    memmove(v52, v60, v51);
    goto LABEL_87;
  }

  if (*(v14 + 80) != 3)
  {
    goto LABEL_151;
  }

  if (*(v14 + 32) == *(v14 + 40))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v106, "All subsystems returned empty DIAG ID", 37);
    if ((v113 & 0x10) != 0)
    {
      v53 = *(&v112 + 1);
      v54 = &v109 + 1;
      if (*(&v112 + 1) < v110)
      {
        *(&v112 + 1) = v110;
        v53 = v110;
        v54 = &v109 + 1;
      }
    }

    else
    {
      if ((v113 & 8) == 0)
      {
        v49 = 0;
        *(&__p.__r_.__value_.__s + 23) = 0;
        v50 = &__p;
        goto LABEL_74;
      }

      v53 = v109;
      v54 = &v108;
    }

    v57 = *v54;
    v49 = v53 - *v54;
    if (v49 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v49 >= 0x17)
    {
      if ((v49 | 7) == 0x17)
      {
        v58 = 25;
      }

      else
      {
        v58 = (v49 | 7) + 1;
      }

      v50 = operator new(v58);
      __p.__r_.__value_.__l.__size_ = v49;
      __p.__r_.__value_.__r.__words[2] = v58 | 0x8000000000000000;
      __p.__r_.__value_.__r.__words[0] = v50;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v53 - *v54;
      v50 = &__p;
      if (!v49)
      {
LABEL_74:
        v50->__r_.__value_.__s.__data_[v49] = 0;
        v59 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v59 = __p.__r_.__value_.__r.__words[0];
        }

LABEL_89:
        _ETLDebugPrint("ETLDIAGGetGUID", "%s\n", v59);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_129;
      }
    }

    memmove(v50, v57, v49);
    goto LABEL_74;
  }

  ETLDIAGCreateQMDL2Header(v14);
LABEL_151:
  v85 = 1;
  *a2 = 1;
  if (v105)
  {
LABEL_152:
    v86 = v104;
    v87 = *(v103 + 1);
    v88 = *v104;
    *(v88 + 8) = v87;
    *v87 = v88;
    v105 = 0;
    if (v86 != &v103)
    {
      do
      {
        v89 = v86[1];
        operator delete(v86);
        v86 = v89;
      }

      while (v89 != &v103);
    }
  }

LABEL_154:
  v106 = *MEMORY[0x29EDC9538];
  *(&v106 + *(v106 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *&v107 = v92;
  if (SBYTE7(v112) < 0)
  {
    operator delete(v111[0]);
  }

  *&v107 = v93;
  std::locale::~locale(&v107 + 1);
  std::ostream::~ostream();
  MEMORY[0x29C274800](&v114);
  return v85;
}

void sub_297755128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  std::list<ETLDiagQueryGUIDSubSysCMDCode>::~list(&a29);
  std::ostringstream::~ostringstream(&a32);
  MEMORY[0x29C274800](a14);
  _Unwind_Resume(a1);
}

uint64_t ETLDIAGLoggingConfigure(void *a1, std::string::size_type *a2)
{
  v101 = *MEMORY[0x29EDCA608];
  v3 = *(*a1 + 56);
  if (!v3)
  {
    return 0;
  }

  if (!v3() || a1[1] == 0)
  {
    return 0;
  }

  _ETLDebugPrint("ETLDIAGLoggingConfigure", "Configuring Logging\n");
  if ((*(a1 + 4) | 2) == 2)
  {
    LODWORD(v69[0]) = 0;
    LODWORD(v65.__r_.__value_.__l.__data_) = 0;
    v6 = 1;
    for (i = 1; i != 11; ++i)
    {
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        a2[1] = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint("_ETLDIAGLoggingMSGSwitch", "Attempt %u\n", i);
      if ((*(a1 + 20) & 1) == 0)
      {
        ETLFlushResponseFull();
      }

      if (ETLMaverickSetFlags())
      {
        break;
      }

      std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
      v6 = i < 0xA;
    }

    if (!v6)
    {
      goto LABEL_96;
    }
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v71 = v8;
  v72 = v8;
  *v69 = v8;
  v70 = v8;
  EnabledEquipIDs = ETLDMCLogGetEnabledEquipIDs();
  if (!EnabledEquipIDs)
  {
    std::string::__assign_external(a2, "No log equip ID found in DMC file", 0x21uLL);
    goto LABEL_96;
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    v10 = EnabledEquipIDs;
    ETLFlushResponseFull();
    EnabledEquipIDs = v10;
  }

  v11 = 0;
  v12 = EnabledEquipIDs;
  do
  {
    v65.__r_.__value_.__r.__words[0] = 0;
    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v13 = ETLLOGEquipIDAsString();
    _ETLDebugPrint("_ETLDIAGLoggingLOGSet", "Configuring log mask for equip ID %s(%u)\n", v13, *(v69 + v11));
    if ((ETLDMCLogGetMask() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to get log mask from DMC", 0x1FuLL);
      goto LABEL_96;
    }

    if ((ETLLOGSetMaskWithRetry() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to set log masks", 0x17uLL);
      goto LABEL_96;
    }

    ++v11;
  }

  while (v12 != v11);
  NumRanges = ETLDMCEventGetNumRanges();
  v15 = NumRanges;
  if (!NumRanges)
  {
    std::string::__assign_external(a2, "No event ranges found in DMC file", 0x21uLL);
    goto LABEL_96;
  }

  _ETLDebugPrint("_ETLDIAGLoggingEVTSet", "Configuring %u Event Ranges\n", NumRanges);
  v16 = 1;
  while (1)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      a2[1] = 0;
      if (*(a1 + 20))
      {
        goto LABEL_32;
      }

LABEL_31:
      ETLFlushResponseFull();
      goto LABEL_32;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_32:
    _ETLDebugPrint("_ETLDIAGLoggingEVTSet", "Attempt %u\n", v16);
    if (ETLEVENTEnable())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to enable events", 0x17uLL);
LABEL_26:
    if (++v16 == 4)
    {
      goto LABEL_96;
    }
  }

  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99 = v17;
  v100 = v17;
  v97 = v17;
  v98 = v17;
  v95 = v17;
  v96 = v17;
  v93 = v17;
  v94 = v17;
  v91 = v17;
  v92 = v17;
  v89 = v17;
  v90 = v17;
  v87 = v17;
  v88 = v17;
  v85 = v17;
  v86 = v17;
  v83 = v17;
  v84 = v17;
  v81 = v17;
  v82 = v17;
  v79 = v17;
  v80 = v17;
  v77 = v17;
  v78 = v17;
  v75 = v17;
  v76 = v17;
  v73 = v17;
  v74 = v17;
  v71 = v17;
  v72 = v17;
  *v69 = v17;
  v70 = v17;
  v67 = 0;
  if ((ETLEVENTGetMask() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to get current event mask", 0x20uLL);
    goto LABEL_26;
  }

  if (v67 > 0x1000)
  {
    if (*(a2 + 23) < 0)
    {
      a2[1] = 22;
      v49 = *a2;
    }

    else
    {
      *(a2 + 23) = 22;
      v49 = a2;
    }

    v41 = 0;
    v50 = "Invalid event bit mask";
LABEL_126:
    *v49 = *v50;
    *(v49 + 14) = *(v50 + 14);
    *(v49 + 22) = 0;
    goto LABEL_97;
  }

  bzero(v69, (v67 + 7) >> 3);
  v18 = 0;
  while (2)
  {
    __val = -1431655766;
    if ((ETLDMCEventGetRange() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to get event range from DMC", 0x22uLL);
      goto LABEL_26;
    }

    if (v67 < HIWORD(__val))
    {
      std::to_string(&v63, HIWORD(__val));
      v21 = std::string::insert(&v63, 0, "Invalid event range: event range last (from DMC): ", 0x32uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
        v25 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v25 - __p.__r_.__value_.__l.__size_ < 0x18)
        {
          v26 = 0x7FFFFFFFFFFFFFF7;
          v61 = __p.__r_.__value_.__l.__size_ + 24;
          if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 24 - v25)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          __src = __p.__r_.__value_.__r.__words[0];
          if (v25 > 0x3FFFFFFFFFFFFFF2)
          {
            v59 = 0;
LABEL_63:
            v29 = v26;
            v30 = operator new(v26);
            v31 = v30;
            if (size)
            {
              memmove(v30, __src, size);
            }

            qmemcpy((v31 + size), ", maskBits (from BBFW): ", 24);
            if (!v59)
            {
              operator delete(__src);
            }

            __p.__r_.__value_.__r.__words[0] = v31;
            __p.__r_.__value_.__l.__size_ = v61;
            __p.__r_.__value_.__r.__words[2] = v29 | 0x8000000000000000;
            v32 = (v31 + v61);
LABEL_74:
            *v32 = 0;
            v65 = __p;
            memset(&__p, 0, sizeof(__p));
            std::to_string(&v62, v67);
            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v35 = &v62;
            }

            else
            {
              v35 = v62.__r_.__value_.__r.__words[0];
            }

            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v36 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v36 = v62.__r_.__value_.__l.__size_;
            }

            v37 = std::string::append(&v65, v35, v36);
            v38 = v37->__r_.__value_.__r.__words[0];
            v68[0] = v37->__r_.__value_.__l.__size_;
            *(v68 + 7) = *(&v37->__r_.__value_.__r.__words[1] + 7);
            v39 = HIBYTE(v37->__r_.__value_.__r.__words[2]);
            v37->__r_.__value_.__l.__size_ = 0;
            v37->__r_.__value_.__r.__words[2] = 0;
            v37->__r_.__value_.__r.__words[0] = 0;
            if (*(a2 + 23) < 0)
            {
              operator delete(*a2);
            }

            v40 = v68[0];
            *a2 = v38;
            a2[1] = v40;
            *(a2 + 15) = *(v68 + 7);
            *(a2 + 23) = v39;
            if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v62.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_84:
                if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_85;
                }

                goto LABEL_89;
              }
            }

            else if ((SHIBYTE(v65.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_84;
            }

            operator delete(v65.__r_.__value_.__l.__data_);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_85:
              if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_26;
              }

LABEL_90:
              operator delete(v63.__r_.__value_.__l.__data_);
              goto LABEL_26;
            }

LABEL_89:
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_90;
          }

          v24 = __p.__r_.__value_.__l.__size_ + 24;
LABEL_54:
          v27 = 2 * v25;
          v61 = v24;
          if (v24 > 2 * v25)
          {
            v27 = v24;
          }

          if ((v27 | 7) == 0x17)
          {
            v28 = 25;
          }

          else
          {
            v28 = (v27 | 7) + 1;
          }

          if (v27 >= 0x17)
          {
            v26 = v28;
          }

          else
          {
            v26 = 23;
          }

          v59 = v25 == 22;
          goto LABEL_63;
        }

        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0x17)
        {
          v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) + 24;
          __src = &__p;
          v25 = 22;
          goto LABEL_54;
        }

        p_p = &__p;
      }

      qmemcpy(p_p + size, ", maskBits (from BBFW): ", sizeof(std::string));
      v34 = size + 24;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        __p.__r_.__value_.__l.__size_ = size + 24;
      }

      else
      {
        *(&__p.__r_.__value_.__s + 23) = v34 & 0x7F;
      }

      v32 = p_p + v34;
      goto LABEL_74;
    }

    v19 = __val;
    if (__val <= HIWORD(__val))
    {
      v20 = HIWORD(__val) + 1;
      do
      {
        *(v69 + (v19 >> 3)) |= 1 << (v19 & 7);
        ++v19;
      }

      while (v20 != v19);
    }

    if (++v18 != v15)
    {
      continue;
    }

    break;
  }

  if ((ETLEVENTSetMask() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to set event masks", 0x19uLL);
    goto LABEL_26;
  }

  if (_MergedGlobals)
  {
LABEL_128:
    v51 = ETLDMCMessageGetNumRanges();
    v52 = v51;
    if (v51)
    {
      _ETLDebugPrint("_ETLDIAGLoggingMSGSet", "Configuring %u message ranges\n", v51);
      LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
      v65.__r_.__value_.__r.__words[0] = 0;
      if (ETLDMCMessageGetRangeAndMasks())
      {
        v53 = 0;
        while (1)
        {
          _ETLDebugPrint("_ETLDIAGLoggingMSGSet", "Check range %u to %u\n", LOWORD(__p.__r_.__value_.__l.__data_), *&__p.__r_.__value_.__s.__data_[2]);
          v54 = _MergedGlobals;
          if (_MergedGlobals)
          {
            v55 = &word_2A18CB3AE;
            while (*&__p.__r_.__value_.__s.__data_[2] > *v55 || LOWORD(__p.__r_.__value_.__l.__data_) < *(v55 - 1))
            {
              v55 += 2;
              if (!--v54)
              {
                ETLDMCDebugGetMessageRange();
                v56 = v69;
                if (SBYTE7(v70) < 0)
                {
                  v56 = v69[0];
                }

                _ETLDebugPrint("_ETLDIAGLoggingMSGSet", "Message range %s, is incorrect\n", v56);
                if (SBYTE7(v70) < 0)
                {
                  operator delete(v69[0]);
                }

                if (++v53 == v52)
                {
                  goto LABEL_96;
                }

                goto LABEL_146;
              }
            }
          }

          if ((*(a1 + 20) & 1) == 0)
          {
            ETLFlushResponseFull();
          }

          if ((ETLMESSAGESetSubsystemRuntimeMasksWithRetry() & 1) == 0)
          {
            break;
          }

          if (++v53 == v52)
          {
            goto LABEL_151;
          }

LABEL_146:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v65.__r_.__value_.__r.__words[0] = 0;
          if ((ETLDMCMessageGetRangeAndMasks() & 1) == 0)
          {
            goto LABEL_147;
          }
        }

        std::string::__assign_external(a2, "Failed to configure message range", 0x21uLL);
      }

      else
      {
LABEL_147:
        std::string::__assign_external(a2, "Failed to get event range from DMC file", 0x27uLL);
      }

      goto LABEL_96;
    }

    _ETLDebugPrint("_ETLDIAGLoggingMSGSet", "Warning: No message ranges found in DMC file\n");
LABEL_151:
    if (*(_ETLDMCGetView() + 48))
    {
      if ((ETLQtraceSend() & 1) == 0)
      {
        if (*(a2 + 23) < 0)
        {
          a2[1] = 22;
          v49 = *a2;
        }

        else
        {
          *(a2 + 23) = 22;
          v49 = a2;
        }

        v41 = 0;
        v50 = "Failed to send QTraces";
        goto LABEL_126;
      }
    }

    else
    {
      _ETLDebugPrint("_ETLDIAGLoggingQTracesSet", "Warning: QTraces are not found.\n");
    }

    v41 = 1;
  }

  else
  {
    ETLMESSAGEGetSubsystemIDRanges();
    if (_MergedGlobals < 0x81)
    {
      _ETLDebugPrint("_ETLDIAGLoggingMSGSet", "Received %u ranges\n", _MergedGlobals);
      if (_MergedGlobals)
      {
        v57 = 0;
        v58 = &word_2A18CB3AE;
        do
        {
          _ETLDebugPrint("_ETLDIAGLoggingMSGSet", "Range %u:\tIDs %u to %u\n", v57++, *(v58 - 1), *v58);
          v58 += 2;
        }

        while (v57 < _MergedGlobals);
      }

      goto LABEL_128;
    }

    std::string::__assign_external(a2, "Received more message ranges than expected", 0x2AuLL);
LABEL_96:
    v41 = 0;
  }

LABEL_97:
  if ((*(a1 + 23) & 1) == 0)
  {
    v42 = *(a1 + 21);
    if ((v41 & v42) == 1)
    {
      v43 = ETLMaverickADPLEnable();
      LOBYTE(v41) = (*(a1 + 22) ^ 1) & v43;
      if ((*(a1 + 22) ^ 1))
      {
        goto LABEL_104;
      }

LABEL_102:
      if (v43)
      {
        LOBYTE(v41) = ETLMaverickQDSSEnable();
      }
    }

    else
    {
      v43 = v41 & (v42 ^ 1);
      LOBYTE(v41) = (*(a1 + 22) ^ 1) & v43;
      if (((*(a1 + 22) ^ 1) & 1) == 0)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_104:
  v44 = *(a1 + 4);
  if (v44 <= 1 && (v41 & 1) != 0)
  {
    LODWORD(v69[0]) = 0;
    LODWORD(v65.__r_.__value_.__l.__data_) = 0;
    v45 = 1;
    for (j = 1; j != 11; ++j)
    {
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        a2[1] = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint("_ETLDIAGLoggingMSGSwitch", "Attempt %u\n", j);
      if ((*(a1 + 20) & 1) == 0)
      {
        ETLFlushResponseFull();
      }

      if (ETLMaverickSetFlags())
      {
        break;
      }

      std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
      v45 = j < 0xA;
    }

    v44 = *(a1 + 4);
    if (!v45)
    {
LABEL_115:
      if (*(a2 + 23) >= 0)
      {
        v47 = a2;
      }

      else
      {
        v47 = *a2;
      }

      _ETLDebugPrint("ETLDIAGLoggingConfigure", "Failed to configure logging (maskID = %u): %s\n", v44, v47);
      return 0;
    }
  }

  else if (((v44 > 1) & v41) != 1)
  {
    goto LABEL_115;
  }

  _ETLDebugPrint("ETLDIAGLoggingConfigure", "Logging configured successfully (maskID = %u)\n", v44);
  return 1;
}

void sub_297755E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL _ETLDIAGLoggingMSGSwitch(void *a1, uint64_t a2)
{
  v4 = 1;
  for (i = 1; i != 11; ++i)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      _ETLDebugPrint("_ETLDIAGLoggingMSGSwitch", "Attempt %u\n", i);
      if (*(a1 + 20))
      {
        goto LABEL_5;
      }

LABEL_4:
      ETLFlushResponseFull();
      goto LABEL_5;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    _ETLDebugPrint("_ETLDIAGLoggingMSGSwitch", "Attempt %u\n", i);
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (ETLMaverickSetFlags())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
    v4 = i < 0xA;
  }

  return v4;
}

uint64_t ETLDIAGLoggingUnconfigure(void *a1, uint64_t a2)
{
  v3 = *(*a1 + 56);
  if (!v3)
  {
    return 0;
  }

  if (!v3() || a1[1] == 0)
  {
    return 0;
  }

  _ETLDebugPrint("ETLDIAGLoggingUnconfigure", "Unconfiguring Logging\n");
  v6 = 1;
  for (i = 1; i != 11; ++i)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      _ETLDebugPrint("_ETLDIAGLoggingMSGSwitch", "Attempt %u\n", i);
      if (*(a1 + 20))
      {
        goto LABEL_10;
      }

LABEL_9:
      ETLFlushResponseFull();
      goto LABEL_10;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    _ETLDebugPrint("_ETLDIAGLoggingMSGSwitch", "Attempt %u\n", i);
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_10:
    if (ETLMaverickSetFlags())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to set message master switch", 0x23uLL);
    v6 = i < 0xA;
  }

  if (!v6)
  {
    goto LABEL_70;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  _ETLDebugPrint("_ETLDIAGLoggingMSGClear", "Attempt %u\n", 1);
  if ((*(a1 + 20) & 1) == 0)
  {
    ETLFlushResponseFull();
  }

  if ((ETLMESSAGESetAllSubsystemRunTimeMasks() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to clear message masks", 0x1DuLL);
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    _ETLDebugPrint("_ETLDIAGLoggingMSGClear", "Attempt %u\n", 2);
    if ((*(a1 + 20) & 1) == 0)
    {
      ETLFlushResponseFull();
    }

    if ((ETLMESSAGESetAllSubsystemRunTimeMasks() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to clear message masks", 0x1DuLL);
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        *(a2 + 8) = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint("_ETLDIAGLoggingMSGClear", "Attempt %u\n", 3);
      if ((*(a1 + 20) & 1) == 0)
      {
        ETLFlushResponseFull();
      }

      if ((ETLMESSAGESetAllSubsystemRunTimeMasks() & 1) == 0)
      {
        v11 = "Failed to clear message masks";
        v12 = a2;
        v13 = 29;
        goto LABEL_69;
      }
    }
  }

  if (!ETLDMCLogGetEnabledEquipIDs())
  {
    v8 = "No log equip ID found in DMC file";
    v9 = a2;
    v10 = 33;
LABEL_38:
    std::string::__assign_external(v9, v8, v10);
    ETLLOGDisable();
    goto LABEL_70;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  _ETLDebugPrint("_ETLDIAGLoggingLOGClear", "Attempt %u\n", 1);
  if ((*(a1 + 20) & 1) == 0)
  {
    ETLFlushResponseFull();
  }

  if ((ETLLOGClearAllEnabledMasksWithRetry() & 1) == 0)
  {
    std::string::__assign_external(a2, "Failed to clear log masks", 0x19uLL);
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    _ETLDebugPrint("_ETLDIAGLoggingLOGClear", "Attempt %u\n", 2);
    if ((*(a1 + 20) & 1) == 0)
    {
      ETLFlushResponseFull();
    }

    if ((ETLLOGClearAllEnabledMasksWithRetry() & 1) == 0)
    {
      std::string::__assign_external(a2, "Failed to clear log masks", 0x19uLL);
      if (*(a2 + 23) < 0)
      {
        **a2 = 0;
        *(a2 + 8) = 0;
      }

      else
      {
        *a2 = 0;
        *(a2 + 23) = 0;
      }

      _ETLDebugPrint("_ETLDIAGLoggingLOGClear", "Attempt %u\n", 3);
      if ((*(a1 + 20) & 1) == 0)
      {
        ETLFlushResponseFull();
      }

      if ((ETLLOGClearAllEnabledMasksWithRetry() & 1) == 0)
      {
        v8 = "Failed to clear log masks";
        v9 = a2;
        v10 = 25;
        goto LABEL_38;
      }
    }
  }

  ETLLOGDisable();
  v14 = 1;
  for (j = 1; j != 11; ++j)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
      _ETLDebugPrint("_ETLDIAGLoggingEVTClear", "Attempt %u\n", j);
      if (*(a1 + 20))
      {
        goto LABEL_60;
      }

LABEL_59:
      ETLFlushResponseFull();
      goto LABEL_60;
    }

    *a2 = 0;
    *(a2 + 23) = 0;
    _ETLDebugPrint("_ETLDIAGLoggingEVTClear", "Attempt %u\n", j);
    if ((*(a1 + 20) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_60:
    if (ETLEVENTEnable())
    {
      break;
    }

    std::string::__assign_external(a2, "Failed to clear event masks", 0x1BuLL);
    v14 = j < 0xA;
  }

  if (v14)
  {
    if (ETLQtraceClearSend())
    {
      v16 = _ETLDIAGLoggingMSGSwitch(a1, a2);
      goto LABEL_71;
    }

    v11 = "Failed to send to clear QTraces";
    v12 = a2;
    v13 = 31;
LABEL_69:
    std::string::__assign_external(v12, v11, v13);
  }

LABEL_70:
  v16 = 0;
LABEL_71:
  if ((*(a1 + 20) & 1) == 0)
  {
    ETLFlushResponseFull();
  }

  if (*(a1 + 23))
  {
    v17 = v16;
    goto LABEL_75;
  }

  if ((*(a1 + 21) & 1) != 0 || *(a1 + 22) == 1)
  {
    usleep(0x55730u);
    v19 = *(a1 + 21);
    if (v19 & v16)
    {
      LOBYTE(v16) = ETLMaverickADPLEnable();
    }

    else
    {
      LOBYTE(v16) = (v19 ^ 1) & v16;
    }
  }

  v17 = (*(a1 + 22) ^ 1) & v16;
  if (((*(a1 + 22) ^ 1) & 1) != 0 || (v16 & 1) == 0)
  {
LABEL_75:
    if ((v17 & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else if ((ETLMaverickQDSSEnable() & 1) == 0)
  {
LABEL_85:
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    _ETLDebugPrint("ETLDIAGLoggingUnconfigure", "Failed to un-configure logging: %s\n", v20);
    return 0;
  }

  _ETLDebugPrint("ETLDIAGLoggingUnconfigure", "Logging un-configured successfully!\n");
  return 1;
}

uint64_t **ETLDIAGLoggingCreateHash(uint64_t *a1)
{
  v83[72] = *MEMORY[0x29EDCA608];
  v1 = operator new(0x18uLL);
  v1[1] = 0;
  v1[2] = 0;
  v74 = (v1 + 1);
  v75 = v1;
  *v1 = v1 + 1;
  memset(&v83[1], 170, 0x238uLL);
  v83[59] = 0;
  v2 = MEMORY[0x29EDC9558] + 64;
  v83[53] = MEMORY[0x29EDC9558] + 64;
  v3 = *(MEMORY[0x29EDC9518] + 16);
  v83[0] = *(MEMORY[0x29EDC9518] + 8);
  *(v83 + *(v83[0] - 24)) = v3;
  v83[1] = 0;
  v4 = (v83 + *(v83[0] - 24));
  std::ios_base::init(v4, &v83[2]);
  v5 = MEMORY[0x29EDC9558] + 24;
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  v83[0] = v5;
  v83[53] = v2;
  MEMORY[0x29C274720](&v83[2]);
  v6 = v75;
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v83 + *(v83[0] - 24)), *(&v83[4] + *(v83[0] - 24)) | 4);
  }

  v7 = (v83 + *(v83[0] - 24));
  if (!v7->__rdstate_)
  {
    v8 = operator new(0x130uLL);
    *v8 = 0;
    v82 = xmmword_2977583E0;
    __str = v8;
    v9 = v7;
    while (1)
    {
      std::ios_base::getloc(v9);
      v12 = std::locale::use_facet(&v76, MEMORY[0x29EDC93D0]);
      v13 = (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v76);
      LOBYTE(v76.__locale_) = -86;
      MEMORY[0x29C274740](&v76, v83, 1);
      if (LOBYTE(v76.__locale_) != 1)
      {
        goto LABEL_7;
      }

      if (SHIBYTE(v82) < 0)
      {
        *__str = 0;
        *&v82 = 0;
      }

      else
      {
        LOBYTE(__str) = 0;
        HIBYTE(v82) = 0;
      }

      v15 = 0;
      v16 = v13;
      while (1)
      {
        v18 = *(&v83[5] + *(v83[0] - 24));
        v19 = v18[3];
        if (v19 == v18[4])
        {
          break;
        }

        v18[3] = v19 + 1;
        v20 = *v19;
LABEL_22:
        if (v16 == v20)
        {
          v10 = 0;
          goto LABEL_6;
        }

        v22 = HIBYTE(v82);
        if (SHIBYTE(v82) < 0)
        {
          v24 = (*(&v82 + 1) & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v82 == v24)
          {
            if ((*(&v82 + 1) & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            p_str = __str;
            if (v24 > 0x3FFFFFFFFFFFFFF2)
            {
              v28 = 0;
              v27 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_29:
              if (v24 + 1 > 2 * v24)
              {
                v25 = v24 + 1;
              }

              else
              {
                v25 = 2 * v24;
              }

              if ((v25 | 7) == 0x17)
              {
                v26 = 25;
              }

              else
              {
                v26 = (v25 | 7) + 1;
              }

              if (v25 >= 0x17)
              {
                v27 = v26;
              }

              else
              {
                v27 = 23;
              }

              v28 = v24 == 22;
            }

            v29 = operator new(v27);
            v30 = v29;
            if (v24)
            {
              memmove(v29, p_str, v24);
            }

            if (!v28)
            {
              operator delete(p_str);
            }

            __str = v30;
            *(&v82 + 1) = v27 | 0x8000000000000000;
            goto LABEL_45;
          }

          v30 = __str;
          v24 = v82;
LABEL_45:
          *&v82 = v24 + 1;
          v31 = &v30[v24];
          *v31 = v20;
          v31[1] = 0;
          --v15;
          if (SHIBYTE(v82) < 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (HIBYTE(v82) == 22)
          {
            p_str = &__str;
            v24 = 22;
            goto LABEL_29;
          }

          HIBYTE(v82) = (HIBYTE(v82) + 1) & 0x7F;
          v17 = &__str + v22;
          *v17 = v20;
          v17[1] = 0;
          --v15;
          if (SHIBYTE(v82) < 0)
          {
LABEL_18:
            if (v82 == 0x7FFFFFFFFFFFFFF7)
            {
              v10 = 4;
              goto LABEL_6;
            }
          }
        }
      }

      v21 = (*(*v18 + 80))(v18);
      v20 = v21;
      if (v21 != -1)
      {
        goto LABEL_22;
      }

      if (v15)
      {
        v10 = 2;
      }

      else
      {
        v10 = 6;
      }

LABEL_6:
      v6 = v75;
      std::ios_base::clear((v83 + *(v83[0] - 24)), *(&v83[4] + *(v83[0] - 24)) | v10);
LABEL_7:
      v11 = v83[0];
      if ((*(&v83[4] + *(v83[0] - 24)) & 5) == 0)
      {
        if (SHIBYTE(v82) < 0)
        {
          v14 = __str;
          if (*__str - 58 < 0xFFFFFFF6)
          {
            goto LABEL_8;
          }

          __lasts = 0xAAAAAAAAAAAAAAAALL;
        }

        else
        {
          if (__str - 58 < 0xFFFFFFF6)
          {
            goto LABEL_8;
          }

          __lasts = 0xAAAAAAAAAAAAAAAALL;
          v14 = &__str;
        }

        memset(__dst, 170, sizeof(__dst));
        v32 = strtok_r(v14, ":", &__lasts);
        v33 = strlen(v32);
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = v33;
        if (v33 >= 0x17)
        {
          if ((v33 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v33 | 7) + 1;
          }

          v35 = operator new(v38);
          __dst[1] = v34;
          __dst[2] = (v38 | 0x8000000000000000);
          __dst[0] = v35;
        }

        else
        {
          HIBYTE(__dst[2]) = v33;
          v35 = __dst;
          if (!v33)
          {
            LOBYTE(__dst[0]) = 0;
            v36 = SHIBYTE(__dst[2]);
            if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
            {
              goto LABEL_55;
            }

LABEL_62:
            if (!__dst[1])
            {
              goto LABEL_115;
            }

            v37 = __dst[0];
LABEL_64:
            locale = atoll(v37);
            memset(&v78, 170, sizeof(v78));
            v40 = strtok_r(0, "\n", &__lasts);
            v41 = strlen(v40);
            if (v41 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v42 = v41;
            if (v41 >= 0x17)
            {
              if ((v41 | 7) == 0x17)
              {
                v45 = 25;
              }

              else
              {
                v45 = (v41 | 7) + 1;
              }

              v43 = operator new(v45);
              v78.__r_.__value_.__l.__size_ = v42;
              v78.__r_.__value_.__r.__words[2] = v45 | 0x8000000000000000;
              v78.__r_.__value_.__r.__words[0] = v43;
            }

            else
            {
              *(&v78.__r_.__value_.__s + 23) = v41;
              v43 = &v78;
              if (!v41)
              {
                v78.__r_.__value_.__s.__data_[0] = 0;
                v44 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_68;
                }

LABEL_78:
                v46 = v78.__r_.__value_.__r.__words[0];
                if (v78.__r_.__value_.__l.__size_)
                {
                  v76.__locale_ = locale;
                  std::string::__init_copy_ctor_external(&__p, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
                  locale = v76.__locale_;
                  goto LABEL_80;
                }

LABEL_119:
                operator delete(v46);
                if (SHIBYTE(__dst[2]) < 0)
                {
LABEL_115:
                  operator delete(__dst[0]);
                }

LABEL_116:
                v11 = v83[0];
                goto LABEL_8;
              }
            }

            memmove(v43, v40, v42);
            v43->__r_.__value_.__s.__data_[v42] = 0;
            v44 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_78;
            }

LABEL_68:
            if (v44)
            {
              v76.__locale_ = locale;
              __p = v78;
LABEL_80:
              v47 = v74;
              while (1)
              {
                v48 = *v47;
                v49 = v47;
                if (!*v47)
                {
                  break;
                }

                while (1)
                {
                  v47 = v48;
                  v50 = *(v48 + 4);
                  if (locale < v50)
                  {
                    break;
                  }

                  if (v50 >= locale)
                  {
                    goto LABEL_112;
                  }

                  v48 = v47[1];
                  if (!v48)
                  {
                    v49 = v47 + 1;
                    goto LABEL_86;
                  }
                }
              }

LABEL_86:
              v51 = operator new(0x40uLL);
              *(v51 + 4) = locale;
              *(v51 + 40) = __p;
              memset(&__p, 0, sizeof(__p));
              *v51 = 0;
              *(v51 + 1) = 0;
              *(v51 + 2) = v47;
              *v49 = v51;
              v52 = **v75;
              if (v52)
              {
                *v75 = v52;
              }

              v53 = *v74;
              v54 = v51 == *v74;
              v51[24] = v54;
              if (!v54)
              {
                do
                {
                  v56 = *(v51 + 2);
                  if (v56[3])
                  {
                    break;
                  }

                  v57 = v56[2];
                  v58 = *v57;
                  if (*v57 == v56)
                  {
                    v61 = *(v57 + 1);
                    if (!v61 || (v62 = *(v61 + 24), v55 = (v61 + 24), v62 == 1))
                    {
                      if (*v56 != v51)
                      {
                        v63 = v56[1];
                        v64 = *v63;
                        v56[1] = *v63;
                        v65 = v56;
                        if (v64)
                        {
                          *(v64 + 16) = v56;
                          v57 = v56[2];
                          v65 = *v57;
                        }

                        v63[2] = v57;
                        *&v57[8 * (v65 != v56)] = v63;
                        *v63 = v56;
                        v56[2] = v63;
                        v57 = v63[2];
                        v58 = *v57;
                        v56 = v63;
                      }

                      *(v56 + 24) = 1;
                      v57[24] = 0;
                      v66 = *(v58 + 1);
                      *v57 = v66;
                      if (v66)
                      {
                        *(v66 + 16) = v57;
                      }

                      v67 = *(v57 + 2);
                      *(v58 + 2) = v67;
                      v67[*v67 != v57] = v58;
                      *(v58 + 1) = v57;
                      *(v57 + 2) = v58;
                      break;
                    }
                  }

                  else
                  {
                    if (!v58 || (v60 = v58[24], v59 = v58 + 24, v60 == 1))
                    {
                      v68 = *v56;
                      if (*v56 == v51)
                      {
                        v72 = v68[1];
                        *v56 = v72;
                        if (v72)
                        {
                          *(v72 + 16) = v56;
                          v57 = v56[2];
                        }

                        v68[2] = v57;
                        *&v57[8 * (*v57 != v56)] = v68;
                        v68[1] = v56;
                        v56[2] = v68;
                        v57 = v68[2];
                        *(v68 + 24) = 1;
                        v57[24] = 0;
                        v69 = *(v57 + 1);
                        v70 = *v69;
                        *(v57 + 1) = *v69;
                        if (v70)
                        {
LABEL_109:
                          *(v70 + 16) = v57;
                        }
                      }

                      else
                      {
                        *(v56 + 24) = 1;
                        v57[24] = 0;
                        v69 = *(v57 + 1);
                        v70 = *v69;
                        *(v57 + 1) = *v69;
                        if (v70)
                        {
                          goto LABEL_109;
                        }
                      }

                      v71 = *(v57 + 2);
                      v69[2] = v71;
                      v71[*v71 != v57] = v69;
                      *v69 = v57;
                      *(v57 + 2) = v69;
                      break;
                    }

                    v55 = v59;
                  }

                  *(v56 + 24) = 1;
                  v51 = v57;
                  v57[24] = v57 == v53;
                  *v55 = 1;
                }

                while (v57 != v53);
              }

              v75[2] = (v75[2] + 1);
LABEL_112:
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                v6 = v75;
                if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_114;
                }

LABEL_118:
                v46 = v78.__r_.__value_.__r.__words[0];
                goto LABEL_119;
              }

              operator delete(__p.__r_.__value_.__l.__data_);
              v6 = v75;
              if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_118;
              }
            }

LABEL_114:
            if (SHIBYTE(__dst[2]) < 0)
            {
              goto LABEL_115;
            }

            goto LABEL_116;
          }
        }

        memmove(v35, v32, v34);
        *(v34 + v35) = 0;
        v36 = SHIBYTE(__dst[2]);
        if (SHIBYTE(__dst[2]) < 0)
        {
          goto LABEL_62;
        }

LABEL_55:
        if (v36)
        {
          v37 = __dst;
          goto LABEL_64;
        }

        goto LABEL_116;
      }

LABEL_8:
      v9 = (v83 + *(v11 - 24));
      if ((v9->__rdstate_ & 2) != 0)
      {
        if (!std::filebuf::close())
        {
          std::ios_base::clear((v83 + *(v83[0] - 24)), *(&v83[4] + *(v83[0] - 24)) | 4);
        }

        if (SHIBYTE(v82) < 0)
        {
          operator delete(__str);
        }

        break;
      }
    }
  }

  v83[0] = *MEMORY[0x29EDC9518];
  *(v83 + *(v83[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C274730](&v83[2]);
  std::istream::~istream();
  MEMORY[0x29C274800](&v83[53]);
  return v6;
}

void sub_2977571FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::locale a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38)
{
  __cxa_end_catch();
  if (a37 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a38);
  MEMORY[0x29C274800](a11);
  _Unwind_Resume(a1);
}

uint64_t ETLDIAGLoggingGetStringForKey(unint64_t a1, const char **a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  *a2 = "notfound.c:--WRONG HASH FILE--";
  v5 = a3[1];
  v3 = a3 + 1;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    v7 = v4[4];
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v4;
    }

    v4 = v4[v9];
  }

  while (v4);
  if (v6 == v3 || v6[4] > a1)
  {
    return 0;
  }

  v11 = (v6 + 5);
  if (*(v6 + 63) < 0)
  {
    v11 = *v11;
  }

  *a2 = v11;
  return 1;
}

void ETLDIAGLoggingGetAvailableDMCNames(char **a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = operator new(0x48uLL);
  v3 = 0;
  v2[8] = 0x1100000010;
  *v2 = xmmword_2977583F0;
  *(v2 + 1) = unk_297758400;
  *(v2 + 2) = xmmword_297758410;
  *(v2 + 3) = unk_297758420;
  do
  {
    while (1)
    {
      v4 = ETLDMCKeyword();
      v5 = strlen(v4);
      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v6 = v5;
      if (v5 < 0x17)
      {
        break;
      }

      if ((v5 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v5 | 7) + 1;
      }

      p_dst = operator new(v10);
      *(&__dst + 1) = v6;
      v22 = v10 | 0x8000000000000000;
      *&__dst = p_dst;
LABEL_12:
      memmove(p_dst, v4, v6);
      *(p_dst + v6) = 0;
      v9 = a1[1];
      v8 = a1[2];
      if (v9 >= v8)
      {
        goto LABEL_13;
      }

LABEL_2:
      *v9 = __dst;
      *(v9 + 2) = v22;
      a1[1] = v9 + 24;
      v3 += 4;
      if (v3 == 72)
      {
        goto LABEL_26;
      }
    }

    HIBYTE(v22) = v5;
    p_dst = &__dst;
    if (v5)
    {
      goto LABEL_12;
    }

    LOBYTE(__dst) = 0;
    v9 = a1[1];
    v8 = a1[2];
    if (v9 < v8)
    {
      goto LABEL_2;
    }

LABEL_13:
    v11 = *a1;
    v12 = v9 - *a1;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3) + 1;
    if (v13 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v11) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v16 = operator new(24 * v15);
    }

    else
    {
      v16 = 0;
    }

    v17 = &v16[8 * (v12 >> 3)];
    v18 = &v16[24 * v15];
    *v17 = __dst;
    *(v17 + 2) = v22;
    v19 = v17 + 24;
    v20 = &v17[-v12];
    memcpy(&v17[-v12], v11, v12);
    *a1 = v20;
    a1[2] = v18;
    if (v11)
    {
      operator delete(v11);
    }

    a1[1] = v19;
    v3 += 4;
  }

  while (v3 != 72);
LABEL_26:

  operator delete(v2);
}

void sub_2977575D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    operator delete(v16);
    std::vector<std::string>::~vector[abi:ne200100](v15);
    _Unwind_Resume(a1);
  }

  operator delete(v16);
  std::vector<std::string>::~vector[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6DCE8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

uint64_t *std::list<ETLDiagQueryGUIDSubSysCMDCode>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9538];
  v3 = *MEMORY[0x29EDC9538];
  *a1 = *MEMORY[0x29EDC9538];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v6 = 22;
    v7 = this;
LABEL_6:
    v9 = 2 * v6;
    if (__n > 2 * v6)
    {
      v9 = __n;
    }

    v10 = v9 | 7;
    if (v10 == 23)
    {
      v11 = 25;
    }

    else
    {
      v11 = v10 + 1;
    }

    v12 = operator new(v11);
    memcpy(v12, __s, __n);
    if (v6 != 22)
    {
      operator delete(v7);
    }

    this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    this->__r_.__value_.__r.__words[0] = v12;
    goto LABEL_14;
  }

  v8 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v6 = v8 - 1;
  if (__n > v8 - 1)
  {
    if (0x7FFFFFFFFFFFFFF7 - v8 < __n - (v8 - 1))
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = this->__r_.__value_.__r.__words[0];
    goto LABEL_6;
  }

  v12 = this->__r_.__value_.__r.__words[0];
  memmove(this->__r_.__value_.__l.__data_, __s, __n);
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
    goto LABEL_15;
  }

LABEL_14:
  this->__r_.__value_.__l.__size_ = __n;
LABEL_15:
  *(v12 + __n) = 0;
  return this;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C274730](a1 + 2);

  return std::istream::~istream();
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
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
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C274760](v23, a1);
  if (LOBYTE(v23[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v9 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
      v10 = a2 + a3;
      if ((v8 & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = a2 + a3;
      if ((*(v6 + 2) & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v11 - a2 < 1 || (*(*v7 + 96))(v7, a2, v11 - a2) == v11 - a2)
    {
      if (v16 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __b[1].__locale_ = v16;
          __b[2].__locale_ = (v18 | 0x8000000000000000);
          __b[0].__locale_ = v17;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v16;
          v17 = __b;
        }

        memset(v17, v9, v16);
        *(v17 + v16) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v20 = (*(*v7 + 96))(v7, locale, v16);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v21 = v20;
          operator delete(__b[0].__locale_);
          if (v21 != v16)
          {
            goto LABEL_35;
          }
        }

        else if (v20 != v16)
        {
          goto LABEL_35;
        }
      }

      if (v10 - v11 < 1 || (*(*v7 + 96))(v7, v11, v10 - v11) == v10 - v11)
      {
        *(v6 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x29C274770](v23);
  return a1;
}

void sub_297757E8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C274770](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x297757E60);
}

uint64_t *ctu::hex0@<X0>(uint64_t *__return_ptr a1@<X8>, ctu *this@<X0>)
{
  return MEMORY[0x2A1C6F350](a1, this);
}

{
  return MEMORY[0x2A1C6F358](a1, this);
}

{
  return MEMORY[0x2A1C6F360](a1, this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE40]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}