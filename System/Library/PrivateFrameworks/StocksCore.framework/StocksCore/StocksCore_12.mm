uint64_t sub_1DAB73D70(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 144;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 144;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[144 * v11] <= a4)
    {
      memmove(a4, __dst, 144 * v11);
    }

    v12 = &v4[144 * v11];
    if (v10 >= 144 && v6 > v7)
    {
      v31 = &qword_1EE120158;
LABEL_31:
      v32 = v6 - 144;
      v5 -= 144;
      v33 = v12;
      do
      {
        v12 = v33;
        v67 = *(v33 - 144);
        v34 = *(v33 - 128);
        v35 = *(v33 - 112);
        v36 = *(v33 - 80);
        v70 = *(v33 - 96);
        v71 = v36;
        v68 = v34;
        v69 = v35;
        v37 = *(v33 - 64);
        v38 = *(v33 - 48);
        v39 = *(v33 - 16);
        v74 = *(v33 - 32);
        v75 = v39;
        v72 = v37;
        v73 = v38;
        v41 = *v32;
        v40 = *(v6 - 8);
        v42 = *(v6 - 6);
        v78 = *(v6 - 7);
        v79 = v42;
        v44 = *(v6 - 8);
        v43 = *(v6 - 7);
        v45 = *v32;
        v76 = v41;
        v77 = v44;
        v46 = *(v6 - 2);
        v84 = *(v6 - 1);
        v47 = *(v6 - 4);
        v48 = *(v6 - 2);
        v82 = *(v6 - 3);
        v83 = v48;
        v49 = *(v6 - 6);
        v50 = *(v6 - 4);
        v80 = *(v6 - 5);
        v81 = v50;
        v91 = v73;
        v92 = v74;
        v93 = v75;
        v87 = v69;
        v88 = v70;
        v89 = v71;
        v90 = v72;
        v85 = v67;
        v86 = v68;
        v100 = v82;
        v101 = v46;
        v102 = *(v6 - 1);
        v96 = v43;
        v97 = v49;
        v98 = v80;
        v99 = v47;
        v94 = v45;
        v95 = v40;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          sub_1DAA9B6E0(&v103);
          sub_1DAAD4CCC(&v76, &v58);
          sub_1DAAD4CCC(&v67, &v58);
          sub_1DAB76F80(&v85, v31, &type metadata for Headline);
        }

        else
        {
          v51 = v31;
          v112 = sub_1DAA9B6E0(&v103);
          v64 = v82;
          v65 = v83;
          v66 = v84;
          v60 = v78;
          v61 = v79;
          v62 = v80;
          v63 = v81;
          v58 = v76;
          v59 = v77;
          v52 = sub_1DAA9B6F0(&v58);
          v53 = sub_1DAA9B6E0(&v58);
          if (v52 == 1)
          {
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51, &type metadata for Headline);
          }

          else
          {
            v54 = v53;
            sub_1DAAD4CCC(&v76, v57);
            sub_1DAAD4CCC(&v67, v57);
            v31 = v51;
            sub_1DAB76F80(&v85, v51, &type metadata for Headline);
            if (*(v54 + 72) < *(v112 + 72))
            {
              if (v5 + 144 < v6 || v5 >= v6 || v5 + 144 != v6)
              {
                memmove(v5, v6 - 144, 0x90uLL);
              }

              if (v12 <= v4 || (v6 -= 144, v32 <= v7))
              {
                v6 = v32;
                goto LABEL_52;
              }

              goto LABEL_31;
            }
          }
        }

        v33 = v12 - 144;
        if ((v5 + 144) < v12 || v5 >= v12 || v5 + 144 != v12)
        {
          memmove(v5, (v12 - 144), 0x90uLL);
        }

        v5 -= 144;
      }

      while (v33 > v4);
      v12 -= 144;
    }
  }

  else
  {
    if (a4 != __src || &__src[144 * v9] <= a4)
    {
      memmove(a4, __src, 144 * v9);
    }

    v12 = &v4[144 * v9];
    if (v8 >= 144 && v6 < v5)
    {
      v13 = &qword_1EE120158;
      while (1)
      {
        v67 = *v6;
        v14 = *(v6 + 1);
        v15 = *(v6 + 2);
        v16 = *(v6 + 4);
        v70 = *(v6 + 3);
        v71 = v16;
        v68 = v14;
        v69 = v15;
        v17 = *(v6 + 5);
        v18 = *(v6 + 6);
        v19 = *(v6 + 8);
        v74 = *(v6 + 7);
        v75 = v19;
        v72 = v17;
        v73 = v18;
        v76 = *v4;
        v20 = *(v4 + 1);
        v21 = *(v4 + 2);
        v22 = *(v4 + 4);
        v79 = *(v4 + 3);
        v80 = v22;
        v77 = v20;
        v78 = v21;
        v23 = *(v4 + 5);
        v24 = *(v4 + 6);
        v25 = *(v4 + 8);
        v83 = *(v4 + 7);
        v84 = v25;
        v81 = v23;
        v82 = v24;
        v87 = v69;
        v88 = v70;
        v85 = v67;
        v86 = v68;
        v92 = v74;
        v93 = v75;
        v90 = v72;
        v91 = v73;
        v89 = v71;
        v100 = v24;
        v101 = v83;
        v102 = v25;
        v96 = v78;
        v97 = v79;
        v98 = v80;
        v99 = v23;
        v94 = v76;
        v95 = v77;
        v109 = v73;
        v110 = v74;
        v111 = v75;
        v105 = v69;
        v106 = v70;
        v107 = v71;
        v108 = v72;
        v103 = v67;
        v104 = v68;
        if (sub_1DAA9B6F0(&v103) == 1)
        {
          break;
        }

        v27 = v13;
        v112 = sub_1DAA9B6E0(&v103);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        v28 = sub_1DAA9B6F0(&v58);
        v29 = sub_1DAA9B6E0(&v58);
        if (v28 == 1)
        {
          sub_1DAAD4CCC(&v76, v57);
          sub_1DAAD4CCC(&v67, v57);
          v13 = v27;
          v26 = v27;
          goto LABEL_12;
        }

        v30 = v29;
        sub_1DAAD4CCC(&v76, v57);
        sub_1DAAD4CCC(&v67, v57);
        v13 = v27;
        sub_1DAB76F80(&v85, v27, &type metadata for Headline);
        if (*(v30 + 72) < *(v112 + 72))
        {
          if (v7 != v6)
          {
            memmove(v7, v6, 0x90uLL);
          }

          v6 += 144;
          goto LABEL_18;
        }

LABEL_13:
        if (v7 < v4 || v7 >= v4 + 144 || v7 != v4)
        {
          memmove(v7, v4, 0x90uLL);
        }

        v4 += 144;
LABEL_18:
        v7 += 144;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_50;
        }
      }

      sub_1DAA9B6E0(&v103);
      sub_1DAAD4CCC(&v76, &v58);
      sub_1DAAD4CCC(&v67, &v58);
      v26 = v13;
LABEL_12:
      sub_1DAB76F80(&v85, v26, &type metadata for Headline);
      goto LABEL_13;
    }

LABEL_50:
    v6 = v7;
  }

LABEL_52:
  v55 = (v12 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v55])
  {
    memmove(v6, v4, 144 * v55);
  }

  return 1;
}

uint64_t sub_1DAB743CC(char *a1, char *a2, char *a3, char *a4)
{
  v103 = sub_1DACB7CC4();
  v8 = MEMORY[0x1EEE9AC00](v103);
  v97 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v96 = &v92 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v100 = &v92 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v95 = (&v92 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v94 = &v92 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v92 - v23;
  v24 = a2 - a1;
  v25 = (a2 - a1) / 144;
  v141 = a3;
  v26 = (a3 - a2) / 144;
  if (v25 >= v26)
  {
    v102 = a1;
    v99 = v21;
    if (a4 != a2 || &a2[144 * v26] <= a4)
    {
      v59 = v22;
      memmove(a4, a2, 144 * v26);
      v22 = v59;
    }

    v30 = &a4[144 * v26];
    if (a3 - a2 >= 144 && a2 > v102)
    {
      v60 = (v22 + 32);
      v98 = (v22 + 8);
      v61 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      v93 = a4;
      v95 = (v22 + 32);
LABEL_31:
      v62 = a2 - 144;
      v141 -= 144;
      v63 = v30;
      while (1)
      {
        v64 = v63;
        v114 = *(v63 - 144);
        v65 = *(v63 - 128);
        v66 = *(v63 - 112);
        v67 = *(v63 - 80);
        v117 = *(v63 - 96);
        v118 = v67;
        v115 = v65;
        v116 = v66;
        v68 = *(v63 - 64);
        v69 = *(v63 - 48);
        v70 = *(v63 - 16);
        v121 = *(v63 - 32);
        v122 = v70;
        v119 = v68;
        v120 = v69;
        v71 = *(v62 + 3);
        v125 = *(v62 + 2);
        v126 = v71;
        v72 = *(v62 + 1);
        v123 = *v62;
        v124 = v72;
        v73 = *(v62 + 8);
        v130 = *(v62 + 7);
        v131 = v73;
        v74 = *(v62 + 6);
        v128 = *(v62 + 5);
        v129 = v74;
        v127 = *(v62 + 4);
        v138 = v120;
        v139 = v121;
        v140 = v70;
        v134 = v116;
        v135 = v117;
        v136 = v118;
        v137 = v119;
        v132 = v114;
        v133 = v115;
        sub_1DAA9B6F0(&v132);
        v75 = *sub_1DAA9B6E0(&v132);
        sub_1DAAD4CCC(&v123, &v105);
        sub_1DAAD4CCC(&v114, &v105);
        v76 = [v75 v61[140]];
        if (v76)
        {
          v104 = v64;
          v77 = v100;
          v78 = v76;
          sub_1DACB7C74();

          v79 = v99;
          v80 = v77;
          v81 = v103;
          v101 = *v60;
          (v101)(v99, v80, v103);
          v111 = v129;
          v112 = v130;
          v113 = v131;
          v107 = v125;
          v108 = v126;
          v109 = v127;
          v110 = v128;
          v105 = v123;
          v106 = v124;
          sub_1DAA9B6F0(&v105);
          v82 = [*sub_1DAA9B6E0(&v105) v61[140]];
          if (v82)
          {
            v83 = a2;
            v84 = v141;
            v85 = v97;
            v86 = v82;
            sub_1DACB7C74();

            v87 = v96;
            (v101)(v96, v85, v81);
            LODWORD(v101) = sub_1DACB7C24();
            v88 = *v98;
            (*v98)(v87, v81);
            v88(v79, v81);
            sub_1DAAD4D28(&v123);
            sub_1DAAD4D28(&v114);
            if (v101)
            {
              v30 = v104;
              v61 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
              if (v84 + 144 < v83 || v141 >= v83)
              {
                memmove(v141, v62, 0x90uLL);
                v89 = v102;
                a4 = v93;
                v60 = v95;
                if (v30 <= v93)
                {
LABEL_52:
                  a2 = v62;
                  break;
                }
              }

              else
              {
                v89 = v102;
                v60 = v95;
                if (v84 + 144 != v83)
                {
                  memmove(v141, v62, 0x90uLL);
                }

                a4 = v93;
                if (v30 <= v93)
                {
                  goto LABEL_52;
                }
              }

              a2 = v62;
              if (v62 > v89)
              {
                goto LABEL_31;
              }

              goto LABEL_52;
            }

            a2 = v83;
            a4 = v93;
            v64 = v104;
            v60 = v95;
            v61 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
          }

          else
          {
            (*v98)(v79, v81);
            sub_1DAAD4D28(&v123);
            sub_1DAAD4D28(&v114);
            v64 = v104;
          }
        }

        else
        {
          sub_1DAAD4D28(&v123);
          sub_1DAAD4D28(&v114);
        }

        v63 = (v64 - 144);
        if (v141 + 144 < v64 || v141 >= v64 || v141 + 144 != v64)
        {
          memmove(v141, v64 - 144, 0x90uLL);
        }

        v141 -= 144;
        if (v63 <= a4)
        {
          v30 = v64 - 144;
          break;
        }
      }
    }
  }

  else
  {
    v27 = a1;
    if (a4 != a1 || &a1[144 * v25] <= a4)
    {
      v28 = a1;
      v29 = v22;
      memmove(a4, v28, 144 * v25);
      v22 = v29;
    }

    v30 = &a4[144 * v25];
    v31 = v102;
    if (v24 >= 144 && a2 < v141)
    {
      v32 = (v22 + 32);
      v98 = (v22 + 8);
      v33 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      v100 = (v22 + 32);
      v104 = v30;
      while (1)
      {
        v114 = *a2;
        v34 = *(a2 + 1);
        v35 = *(a2 + 2);
        v36 = *(a2 + 4);
        v117 = *(a2 + 3);
        v118 = v36;
        v115 = v34;
        v116 = v35;
        v37 = *(a2 + 5);
        v38 = *(a2 + 6);
        v39 = *(a2 + 8);
        v121 = *(a2 + 7);
        v122 = v39;
        v119 = v37;
        v120 = v38;
        v123 = *a4;
        v40 = *(a4 + 1);
        v41 = *(a4 + 2);
        v42 = *(a4 + 4);
        v126 = *(a4 + 3);
        v127 = v42;
        v124 = v40;
        v125 = v41;
        v43 = *(a4 + 5);
        v44 = *(a4 + 6);
        v45 = *(a4 + 8);
        v130 = *(a4 + 7);
        v131 = v45;
        v128 = v43;
        v129 = v44;
        v134 = v116;
        v135 = v117;
        v132 = v114;
        v133 = v115;
        v139 = v121;
        v140 = v122;
        v137 = v119;
        v138 = v120;
        v136 = v118;
        sub_1DAA9B6F0(&v132);
        v46 = *sub_1DAA9B6E0(&v132);
        sub_1DAAD4CCC(&v123, &v105);
        sub_1DAAD4CCC(&v114, &v105);
        v47 = [v46 v33[140]];
        if (!v47)
        {
          sub_1DAAD4D28(&v123);
          sub_1DAAD4D28(&v114);
          goto LABEL_17;
        }

        v101 = a2;
        v102 = v27;
        v48 = v99;
        v49 = v47;
        sub_1DACB7C74();

        v50 = *v32;
        v51 = v48;
        v33 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
        v52 = v103;
        (*v32)(v31, v51, v103);
        v111 = v129;
        v112 = v130;
        v113 = v131;
        v107 = v125;
        v108 = v126;
        v109 = v127;
        v110 = v128;
        v105 = v123;
        v106 = v124;
        sub_1DAA9B6F0(&v105);
        v53 = [*sub_1DAA9B6E0(&v105) publishDate];
        if (!v53)
        {
          break;
        }

        v54 = v95;
        v55 = v53;
        sub_1DACB7C74();

        v56 = v94;
        v50(v94, v54, v52);
        LOBYTE(v55) = sub_1DACB7C24();
        v57 = *v98;
        (*v98)(v56, v52);
        v57(v31, v52);
        sub_1DAAD4D28(&v123);
        sub_1DAAD4D28(&v114);
        if ((v55 & 1) == 0)
        {
          a2 = v101;
          v27 = v102;
          v30 = v104;
          v33 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
LABEL_17:
          if (v27 < a4 || v27 >= a4 + 144 || v27 != a4)
          {
            memmove(v27, a4, 0x90uLL);
          }

          a4 += 144;
          v32 = v100;
          goto LABEL_22;
        }

        v58 = v101;
        v27 = v102;
        v30 = v104;
        if (v102 != v101)
        {
          memmove(v102, v101, 0x90uLL);
        }

        a2 = v58 + 144;
        v32 = v100;
        v33 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
LABEL_22:
        v27 += 144;
        if (a4 >= v30 || a2 >= v141)
        {
          goto LABEL_24;
        }
      }

      (*v98)(v31, v52);
      sub_1DAAD4D28(&v123);
      sub_1DAAD4D28(&v114);
      a2 = v101;
      v27 = v102;
      goto LABEL_17;
    }

LABEL_24:
    a2 = v27;
  }

  v90 = (v30 - a4) / 144;
  if (a2 != a4 || a2 >= &a4[144 * v90])
  {
    memmove(a2, a4, 144 * v90);
  }

  return 1;
}

void (*sub_1DAB74CEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12777A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAB77328;
  }

  __break(1u);
  return result;
}

void (*sub_1DAB74D6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12777A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1DAB74DEC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB74DF4(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t), uint64_t a3)
{
  v50 = a3;
  v4 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v6 = a1 + 64;
    result = sub_1DACB9BC4();
    if (result < 0 || (v7 = result, result >= 1 << *(a1 + 32)))
    {
LABEL_19:
      __break(1u);
      return v49;
    }

    else
    {
      v33 = v4;
      v34 = *(a1 + 36);
      v8 = 1;
      while (1)
      {
        v9 = v7 >> 6;
        if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          break;
        }

        v10 = *(a1 + 56);
        v11 = *(a1 + 48) + 136 * v7;
        v46[0] = *v11;
        v12 = *(v11 + 64);
        v14 = *(v11 + 16);
        v13 = *(v11 + 32);
        v46[3] = *(v11 + 48);
        v46[4] = v12;
        v46[1] = v14;
        v46[2] = v13;
        v16 = *(v11 + 96);
        v15 = *(v11 + 112);
        v17 = *(v11 + 80);
        v47 = *(v11 + 128);
        v46[6] = v16;
        v46[7] = v15;
        v46[5] = v17;
        v18 = *(v10 + 8 * v7);
        v19 = *(v11 + 112);
        v43 = *(v11 + 96);
        v44 = v19;
        v20 = *(v11 + 128);
        v21 = *(v11 + 48);
        v39 = *(v11 + 32);
        v40 = v21;
        v22 = *(v11 + 80);
        v41 = *(v11 + 64);
        v42 = v22;
        v23 = *(v11 + 16);
        v37 = *v11;
        v38 = v23;
        *&v45 = v20;
        *(&v45 + 1) = v18;
        sub_1DAA806E4(v46, v36);
        sub_1DACB71E4();
        a2(&v37, v18);
        v48[6] = v43;
        v48[7] = v44;
        v48[8] = v45;
        v48[2] = v39;
        v48[3] = v40;
        v48[4] = v41;
        v48[5] = v42;
        v48[0] = v37;
        v48[1] = v38;
        sub_1DAB7663C(v48, sub_1DAB76EC8);
        sub_1DACB9D34();
        sub_1DACB9D74();
        sub_1DACB9D84();
        result = sub_1DACB9D44();
        v24 = 1 << *(a1 + 32);
        if (v7 >= v24)
        {
          goto LABEL_23;
        }

        v6 = a1 + 64;
        v25 = *(a1 + 64 + 8 * v9);
        if ((v25 & (1 << v7)) == 0)
        {
          goto LABEL_24;
        }

        if (v34 != *(a1 + 36))
        {
          goto LABEL_25;
        }

        v26 = v25 & (-2 << (v7 & 0x3F));
        if (v26)
        {
          v7 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v27 = v33;
        }

        else
        {
          v28 = v9 << 6;
          v29 = v9 + 1;
          v27 = v33;
          v30 = (a1 + 72 + 8 * v9);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              v7 = __clz(__rbit64(v31)) + v28;
              goto LABEL_16;
            }
          }

          v7 = 1 << *(a1 + 32);
        }

LABEL_16:
        if (v8 == v27)
        {
          return v49;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          ++v8;
          if (v7 < 1 << *(a1 + 32))
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  return result;
}

BOOL sub_1DAB750B8(uint64_t a1, uint64_t a2)
{
  sub_1DAB76FDC(a1, v22);
  sub_1DAB76FDC(a2, v24);
  if (v23 <= 2u)
  {
    if (!v23)
    {
      sub_1DAB76FDC(v22, v12);
      v4 = v12[0];
      if (!v26)
      {
        v3 = *v24;
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    if (v23 == 1)
    {
      sub_1DAB76FDC(v22, v12);
      if (v26 == 1)
      {
        v3 = *v24;
        v4 = v12[0];
LABEL_12:
        v6 = sub_1DAA51414(v4, v3);
LABEL_24:
        v5 = v6;

        goto LABEL_25;
      }

      goto LABEL_26;
    }

    sub_1DAB76FDC(v22, v20);
    if (v26 != 2)
    {
      sub_1DAB76AE0(&v20[8], qword_1EE122680, &type metadata for HeadlineCondition);
      goto LABEL_29;
    }

    v18[0] = *&v20[8];
    v18[1] = *&v20[24];
    v18[2] = *&v20[40];
    v19 = v21;
    v16[0] = *&v24[8];
    v16[1] = *&v24[24];
    v16[2] = *&v24[40];
    v17 = v25;
    if (*v20 == *v24)
    {
      sub_1DAB7704C(v18, v12);
      sub_1DAB7704C(v16, v14);
      if (v13 == 255)
      {
        sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
        sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
        if (v15 == 255)
        {
          sub_1DAB76AE0(v12, qword_1EE122680, &type metadata for HeadlineCondition);
          goto LABEL_35;
        }
      }

      else
      {
        sub_1DAB7704C(v12, v11);
        if (v15 != 255)
        {
          v9[0] = v14[0];
          v9[1] = v14[1];
          v9[2] = v14[2];
          v10 = v15;
          v7 = sub_1DAC797E4(v11, v9);
          sub_1DAAD4D7C(v9);
          sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
          sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
          sub_1DAAD4D7C(v11);
          sub_1DAB76AE0(v12, qword_1EE122680, &type metadata for HeadlineCondition);
          if (!v7)
          {
            goto LABEL_38;
          }

LABEL_35:
          sub_1DAB77014(v22);
          return 1;
        }

        sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
        sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
        sub_1DAAD4D7C(v11);
      }

      sub_1DAB7663C(v12, sub_1DAB77210);
    }

    else
    {
      sub_1DAB76AE0(v16, qword_1EE122680, &type metadata for HeadlineCondition);
      sub_1DAB76AE0(v18, qword_1EE122680, &type metadata for HeadlineCondition);
    }

LABEL_38:
    sub_1DAB77014(v22);
    return 0;
  }

  if (v23 == 3)
  {
    sub_1DAB76FDC(v22, v12);
    if (v26 != 3)
    {
LABEL_29:
      sub_1DAB76F80(v22, qword_1EE1215A0, &type metadata for NewsFeedFilterOptions.Option);
      return 0;
    }

    if (v12[0] != *v24)
    {
      goto LABEL_38;
    }

    v5 = *&v12[1] == *&v24[8];
  }

  else
  {
    if (v23 != 4)
    {
      sub_1DAB76FDC(v22, v12);
      if (v26 == 5)
      {
        v6 = sub_1DAC37150(v12[0], *v24);
        goto LABEL_24;
      }

LABEL_26:

      goto LABEL_29;
    }

    sub_1DAB76FDC(v22, v12);
    if (v26 != 4)
    {
      sub_1DAAD4D7C(v12);
      goto LABEL_29;
    }

    *v20 = *v24;
    *&v20[16] = *&v24[16];
    *&v20[32] = *&v24[32];
    v20[48] = v24[48];
    v5 = sub_1DAC797E4(v12, v20);
    sub_1DAAD4D7C(v20);
    sub_1DAAD4D7C(v12);
  }

LABEL_25:
  sub_1DAB77014(v22);
  return v5;
}

uint64_t type metadata accessor for NewsFeedRequest(uint64_t a1)
{
  result = qword_1EE123200;
  if (!qword_1EE123200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DAB75538(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t _s10StocksCore15NewsFeedServiceC10fetchFeeds3for13TeaFoundation7PromiseCySayAA05StockcD0VGGSayAA0cD7RequestVG_tF_0(uint64_t a1)
{
  v79 = *v1;
  v3 = type metadata accessor for NewsFeedRequest(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v74 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    *&v87 = MEMORY[0x1E69E7CC0];
    sub_1DAB769C4(0);
    swift_allocObject();
    return sub_1DACB8AE4();
  }

  v75 = v1;
  *&v87 = MEMORY[0x1E69E7CC0];
  sub_1DACB9D64();
  v80 = objc_opt_self();
  v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v4 + 72);
  v77 = v9;
  v78 = v10;
  v12 = v10;
  do
  {
    v13 = v11;
    sub_1DAB76A40(v12, v7, type metadata accessor for NewsFeedRequest);
    v14 = [objc_allocWithZone(MEMORY[0x1E69B52D0]) init];
    v15 = sub_1DACB92F4();
    [v14 setFeedID_];

    [v14 setMaxCount_];
    v16 = sub_1DACB7C04();
    v17 = sub_1DACB7C04();
    v18 = [v80 feedRangeFromDate:v16 toDate:v17];

    [v14 setFeedRange_];
    sub_1DAB7663C(v7, type metadata accessor for NewsFeedRequest);
    sub_1DACB9D34();
    sub_1DACB9D74();
    sub_1DACB9D84();
    sub_1DACB9D44();
    v11 = v13;
    v12 += v13;
    --v9;
  }

  while (v9);
  v76 = v87;
  v80 = *(v3 + 32);
  v19 = v78;
  v20 = v77 - 1;
  v21 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v22 = v19;
    v23 = v81;
    sub_1DAB76A40(v19, v81, type metadata accessor for NewsFeedRequest);
    v24 = *v23;
    v25 = v23[1];
    sub_1DAB5916C(v23 + v80, v86);
    sub_1DAB59344(v86, &v87);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = v21;
    v27 = sub_1DAA4BF3C(v24, v25);
    v29 = v21[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v33 = v28;
    if (v21[3] < v32)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v36 = v27;
    sub_1DAB65DAC();
    v27 = v36;
    if (v33)
    {
LABEL_11:
      v21 = *&v84[0];
      v35 = *(*&v84[0] + 56) + 136 * v27;
      sub_1DAB5916C(v35, &v87);
      sub_1DAB5916C(v86, v35);
      sub_1DAB7669C(&v87);
      goto LABEL_15;
    }

LABEL_13:
    v21 = *&v84[0];
    *(*&v84[0] + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v37 = (v21[6] + 16 * v27);
    *v37 = v24;
    v37[1] = v25;
    sub_1DAB5916C(v86, v21[7] + 136 * v27);
    v38 = v21[2];
    v31 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v31)
    {
      goto LABEL_51;
    }

    v21[2] = v39;
    sub_1DACB71E4();
LABEL_15:
    sub_1DAB7663C(v81, type metadata accessor for NewsFeedRequest);
    if (!v20)
    {
      v20 = v76;
      if ((v76 & 0x8000000000000000) == 0 && (v76 & 0x4000000000000000) == 0)
      {
        v40 = *(v76 + 16);
        if (v40)
        {
          goto LABEL_20;
        }

LABEL_53:
        v42 = MEMORY[0x1E69E7CC8];
        goto LABEL_54;
      }

LABEL_52:
      v40 = sub_1DACB9E14();
      if (!v40)
      {
        goto LABEL_53;
      }

LABEL_20:
      v41 = 0;
      v81 = v20 & 0xC000000000000001;
      v42 = MEMORY[0x1E69E7CC8];
LABEL_21:
      v80 = v42;
      v43 = v41;
      while (1)
      {
        if (v81)
        {
          v44 = MEMORY[0x1E12777A0](v43, v20);
        }

        else
        {
          if (v43 >= *(v20 + 16))
          {
            goto LABEL_50;
          }

          v44 = *(v20 + 8 * v43 + 32);
        }

        v45 = v44;
        v41 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_49;
        }

        v46 = [v44 feedID];
        v47 = sub_1DACB9324();
        v49 = v48;

        if (v21[2])
        {
          v50 = sub_1DAA4BF3C(v47, v49);
          v52 = v51;

          if (v52)
          {
            sub_1DAB5916C(v21[7] + 136 * v50, v83);
            sub_1DAB5916C(v83, v84);
            v93 = v84[6];
            v94 = v84[7];
            v95 = v85;
            v89 = v84[2];
            v90 = v84[3];
            v91 = v84[4];
            v92 = v84[5];
            v87 = v84[0];
            v88 = v84[1];
            sub_1DAA806E4(v84, &v82);
            v42 = v80;
            v53 = swift_isUniquelyReferenced_nonNull_native();
            v82 = v42;
            v54 = sub_1DAB095DC(&v87);
            v56 = v42[2];
            v57 = (v55 & 1) == 0;
            v31 = __OFADD__(v56, v57);
            v58 = v56 + v57;
            if (v31)
            {
              __break(1u);
              goto LABEL_56;
            }

            v59 = v55;
            if (v42[3] < v58)
            {
              sub_1DAB60C70(v58, v53);
              v42 = v82;
              v54 = sub_1DAB095DC(&v87);
              if ((v59 & 1) != (v60 & 1))
              {
                goto LABEL_58;
              }

LABEL_37:
              if (v59)
              {
                goto LABEL_38;
              }

LABEL_40:
              v42[(v54 >> 6) + 8] |= 1 << v54;
              v63 = v42[6] + 136 * v54;
              *(v63 + 80) = v92;
              *(v63 + 96) = v93;
              *(v63 + 112) = v94;
              *(v63 + 128) = v95;
              *(v63 + 16) = v88;
              *(v63 + 32) = v89;
              *(v63 + 48) = v90;
              *(v63 + 64) = v91;
              *v63 = v87;
              *(v42[7] + 8 * v54) = MEMORY[0x1E69E7CC0];
              v64 = v42[2];
              v31 = __OFADD__(v64, 1);
              v65 = v64 + 1;
              if (!v31)
              {
                v42[2] = v65;
                goto LABEL_42;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            if (v53)
            {
              goto LABEL_37;
            }

            v62 = v54;
            sub_1DAB65BF4();
            v54 = v62;
            v42 = v82;
            if ((v59 & 1) == 0)
            {
              goto LABEL_40;
            }

LABEL_38:
            v61 = v54;
            sub_1DAB7669C(v83);
            v54 = v61;
LABEL_42:
            v66 = (v42[7] + 8 * v54);
            v67 = v45;
            MEMORY[0x1E12770F0]();
            if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DACB9694();
            }

            sub_1DACB96F4();

            if (v41 == v40)
            {
LABEL_54:

              MEMORY[0x1EEE9AC00](v69);
              *(&v74 - 2) = v75;
              *(&v74 - 1) = v42;
              sub_1DAB766FC(0);
              sub_1DACB8BB4();

              v70 = sub_1DACB89D4();
              sub_1DAB76828(0);
              sub_1DACB8A74();

              v71 = sub_1DACB89D4();
              sub_1DAB768D4(0);
              sub_1DACB8A74();

              *(swift_allocObject() + 16) = v21;
              v72 = sub_1DACB89D4();
              sub_1DAB770D4(0, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
              v73 = sub_1DACB8A84();

              return v73;
            }

            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v43;
        if (v41 == v40)
        {
          v42 = v80;
          goto LABEL_54;
        }
      }
    }

    --v20;
    v19 = v22 + v13;
  }

  sub_1DAB610B0(v32, isUniquelyReferenced_nonNull_native);
  v27 = sub_1DAA4BF3C(v24, v25);
  if ((v33 & 1) == (v34 & 1))
  {
LABEL_10:
    if (v33)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_57:
  sub_1DACBA1F4();
  __break(1u);
LABEL_58:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DAB75F80()
{
  result = qword_1ECBE7F20;
  if (!qword_1ECBE7F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F20);
  }

  return result;
}

unint64_t sub_1DAB75FD8()
{
  result = qword_1EE11EDC8;
  if (!qword_1EE11EDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11EDC8);
  }

  return result;
}

uint64_t sub_1DAB76088(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAB76170(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB760CC()
{
  result = qword_1ECBE7F40;
  if (!qword_1ECBE7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F40);
  }

  return result;
}

void sub_1DAB76170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB760CC();
    v7 = a3(a1, &type metadata for StockNewsFeed, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB76224(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAB770D4(255, a2, &type metadata for Headline, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore17HeadlineConditionO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 8)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t get_enum_tag_for_layout_string_10StocksCore17HeadlineConditionOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 9)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DAB762DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 58))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 57);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAB76318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAB76368(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 57) = a2;
  return result;
}

uint64_t sub_1DAB763EC(uint64_t a1)
{
  result = sub_1DACB7CC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1DAB764AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAB764F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1DAB765AC(uint64_t a1)
{
  if (!qword_1EE11D7B8)
  {
    sub_1DAB770D4(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11D7B8);
    }
  }
}

uint64_t sub_1DAB7663C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAB766FC(uint64_t a1)
{
  if (!qword_1EE11F9F8)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1DAB767C0(255, &qword_1EE11FA10, &qword_1EE11F938, 0x1E69B6E30, MEMORY[0x1E69E62F8]);
    sub_1DAB767C0(255, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F9F8);
    }
  }
}

void sub_1DAB767C0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DAA420F4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAB76828(uint64_t a1)
{
  if (!qword_1EE11F950)
  {
    sub_1DAA420F4(255, &qword_1EE11F968, 0x1E69B53A0);
    sub_1DAB767C0(255, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F950);
    }
  }
}

void sub_1DAB768D4(uint64_t a1)
{
  if (!qword_1EE11F960)
  {
    sub_1DAA420F4(255, &qword_1EE11F968, 0x1E69B53A0);
    sub_1DAB767C0(255, &unk_1EE11F9E0, &qword_1EE11F908, 0x1E69B52E0, MEMORY[0x1E69E62F8]);
    sub_1DAA4436C(255, qword_1EE121398, &protocol descriptor for NewsHeadlineScorerType);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE11F960);
    }
  }
}

void sub_1DAB769C4(uint64_t a1)
{
  if (!qword_1EE11FE58)
  {
    sub_1DAB770D4(255, &qword_1EE11FB70, &type metadata for StockNewsFeed, MEMORY[0x1E69E62F8]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FE58);
    }
  }
}

uint64_t sub_1DAB76A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAB76AC8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAB76AE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAB770D4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1DAB76B50(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1DAB76BC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a2 = v4;
  a2[1] = v3;
  sub_1DAA4D678(a1, (a2 + 2));
  v5 = v4;
  return sub_1DACB71E4();
}

uint64_t sub_1DAB76C10@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *a2 = *a1;
  a2[1] = v3;
  v5 = v4;
  return sub_1DACB71E4();
}

unint64_t sub_1DAB76C58()
{
  result = qword_1ECBE7F70;
  if (!qword_1ECBE7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F70);
  }

  return result;
}

void sub_1DAB76D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAB76D80(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB76E44()
{
  result = qword_1ECBE7F78;
  if (!qword_1ECBE7F78)
  {
    sub_1DAB767C0(255, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F78);
  }

  return result;
}

void sub_1DAB76EC8(uint64_t a1)
{
  if (!qword_1EE1201D0)
  {
    sub_1DAB767C0(255, &qword_1EE11F9F0, &qword_1EE11F920, 0x1E69B52D0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE1201D0);
    }
  }
}

double sub_1DAB76F60(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x1FFFFFFFELL;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

uint64_t sub_1DAB76F80(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1DAB771BC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAB7704C(uint64_t a1, uint64_t a2)
{
  sub_1DAB770D4(0, qword_1EE122680, &type metadata for HeadlineCondition, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAB770D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DAB77124(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v10[8] = a1[8];
  v5 = a1[3];
  v10[2] = a1[2];
  v10[3] = v5;
  v6 = a1[5];
  v10[4] = a1[4];
  v10[5] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  result = sub_1DAC78658(v10);
  if ((result & 1) == 0)
  {
    return 1;
  }

  v9 = *v2 + 1;
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    *v2 = v9;
    return v9 <= v3;
  }

  return result;
}

void sub_1DAB771BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1DAB77210(uint64_t a1)
{
  if (!qword_1ECBE7F88)
  {
    sub_1DAB770D4(255, qword_1EE122680, &type metadata for HeadlineCondition, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7F88);
    }
  }
}

unint64_t sub_1DAB772AC()
{
  result = qword_1ECBE7F90;
  if (!qword_1ECBE7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7F90);
  }

  return result;
}

uint64_t sub_1DAB7733C(uint64_t a1)
{
  if (*(a1 + 128) <= 1u)
  {
    return sub_1DAB77354(a1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DAB77354(uint64_t a1)
{
  v57 = a1;
  sub_1DAA49610(0);
  v3 = v2;
  v51 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB77A94(0);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB77B14(0, &qword_1EE11FC30, sub_1DAA49610);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - v12;
  v13 = MEMORY[0x1E6969530];
  sub_1DAB77B14(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_1DACB7CC4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v46 - v22;
  v24 = v1 + *(type metadata accessor for Chart(0) + 20);
  v53 = v3;
  v25 = *(v3 + 36);
  v26 = *(v18 + 16);
  v49 = v24;
  v56 = v23;
  v26(v23, v24 + v25, v17);
  v27 = type metadata accessor for Quote(0);
  v28 = v57;
  sub_1DAA89B2C(v57 + *(v27 + 92), v16, &qword_1EE125280, v13);
  v29 = *(v18 + 48);
  if (v29(v16, 1, v17) == 1)
  {
    v26(v21, v28 + *(v27 + 88), v17);
    v30 = v17;
    if (v29(v16, 1, v17) != 1)
    {
      sub_1DAA89D34(v16, &qword_1EE125280, MEMORY[0x1E6969530]);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v30 = v17;
  }

  sub_1DAA5D520(&qword_1EE123A48, MEMORY[0x1E6969548]);
  v31 = v56;
  v32 = sub_1DACB9224();
  v33 = *(v18 + 8);
  v33(v21, v30);
  v33(v31, v30);
  if ((v32 & 1) == 0)
  {
    goto LABEL_9;
  }

  v34 = v52;
  sub_1DAB77B68(v49, v52);
  v35 = v51;
  v36 = v53;
  (*(v51 + 56))(v34, 0, 1, v53);
  v37 = v55;
  sub_1DABC4258(v55);
  v38 = *(v50 + 48);
  v39 = v54;
  sub_1DAA89B2C(v34, v54, &qword_1EE11FC30, sub_1DAA49610);
  sub_1DAA89B2C(v37, v39 + v38, &qword_1EE11FC30, sub_1DAA49610);
  v40 = *(v35 + 48);
  if (v40(v39, 1, v36) == 1)
  {
    sub_1DAA89D34(v37, &qword_1EE11FC30, sub_1DAA49610);
    sub_1DAA89D34(v34, &qword_1EE11FC30, sub_1DAA49610);
    if (v40(v39 + v38, 1, v36) == 1)
    {
      sub_1DAA89D34(v39, &qword_1EE11FC30, sub_1DAA49610);
LABEL_9:
      v41 = 1;
      return v41 & 1;
    }

LABEL_12:
    sub_1DAB77BCC(v39, sub_1DAB77A94);
    v41 = 0;
    return v41 & 1;
  }

  v42 = v48;
  sub_1DAA89B2C(v39, v48, &qword_1EE11FC30, sub_1DAA49610);
  if (v40(v39 + v38, 1, v36) == 1)
  {
    sub_1DAA89D34(v55, &qword_1EE11FC30, sub_1DAA49610);
    sub_1DAA89D34(v34, &qword_1EE11FC30, sub_1DAA49610);
    sub_1DAB77BCC(v42, sub_1DAA49610);
    goto LABEL_12;
  }

  v43 = v39 + v38;
  v44 = v47;
  sub_1DAB77C2C(v43, v47);
  sub_1DAA5D520(&qword_1EE123A40, MEMORY[0x1E6969550]);
  if (sub_1DACB9264())
  {
    v41 = sub_1DACB9264();
  }

  else
  {
    v41 = 0;
  }

  sub_1DAB77BCC(v44, sub_1DAA49610);
  sub_1DAA89D34(v55, &qword_1EE11FC30, sub_1DAA49610);
  sub_1DAA89D34(v34, &qword_1EE11FC30, sub_1DAA49610);
  sub_1DAB77BCC(v42, sub_1DAA49610);
  sub_1DAA89D34(v39, &qword_1EE11FC30, sub_1DAA49610);
  return v41 & 1;
}

void sub_1DAB77A94(uint64_t a1)
{
  if (!qword_1EE11FC28)
  {
    sub_1DAB77B14(255, &qword_1EE11FC30, sub_1DAA49610);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC28);
    }
  }
}

void sub_1DAB77B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAB77B68(uint64_t a1, uint64_t a2)
{
  sub_1DAA49610(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB77BCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB77C2C(uint64_t a1, uint64_t a2)
{
  sub_1DAA49610(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB77CB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v77 = a4;
  v78 = a3;
  v86 = a1;
  v9 = sub_1DACB8204();
  v80 = v9;
  v92 = *(v9 - 8);
  v10 = v92;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v12;
  v13 = sub_1DACB7CC4();
  v91 = *(v13 - 8);
  v14 = v91;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v16;
  v17 = a2[1];
  v87 = *a2;
  v85 = v17;
  v18 = a2[3];
  v88 = a2[2];
  v84 = v18;
  v89 = sub_1DACB82E4();
  sub_1DAA4D678(v5 + 16, &v101);
  v83 = *(v14 + 16);
  v83(v16, a3, v13);
  v70[1] = v14 + 16;
  v81 = *(v10 + 16);
  v90 = v10 + 16;
  v81(v12, a4, v9);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v101, v102);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v99 = type metadata accessor for YahooBaseOperationFactory();
  v100 = &off_1F56825C8;
  v24 = v99;
  v73 = v99;
  v98 = v23;
  v76 = type metadata accessor for YahooQuoteDetailOperation(0);
  v25 = objc_allocWithZone(v76);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v96 = v24;
  v97 = &off_1F56825C8;
  v95[0] = v30;
  *&v25[qword_1EE127038] = v86;
  sub_1DAA4D678(v95, &v25[qword_1EE127040]);
  v31 = &v25[qword_1EE127048];
  v32 = v85;
  *v31 = v87;
  *(v31 + 1) = v32;
  v33 = v84;
  *(v31 + 2) = v88;
  *(v31 + 3) = v33;
  v34 = v72;
  v83(&v25[qword_1ECBE9AC8], v72, v13);
  v35 = v82;
  v36 = v80;
  v37 = v81;
  v81(&v25[qword_1EE127050], v82, v80);
  v94.receiver = v25;
  v94.super_class = v76;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v38 = objc_msgSendSuper2(&v94, sel_init);
  v39 = *(v92 + 8);
  v92 += 8;
  v75 = v39;
  v39(v35, v36);
  v40 = *(v91 + 8);
  v91 += 8;
  v74 = v40;
  v71 = v13;
  v40(v34, v13);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  __swift_destroy_boxed_opaque_existential_1(&v101);
  v76 = sub_1DACB82B4();

  sub_1DAA4D678(v79 + 16, &v101);
  v41 = v83;
  v83(v34, v78, v13);
  v37(v35, v77, v36);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(&v101, v102);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v47 = v73;
  v99 = v73;
  v100 = &off_1F56825C8;
  v98 = v46;
  v48 = type metadata accessor for YahooMultiQuoteOperation(0);
  v49 = objc_allocWithZone(v48);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (v70 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v52;
  v96 = v47;
  v97 = &off_1F56825C8;
  v95[0] = v54;
  v55 = v86;
  *&v49[qword_1EE126B00] = v86;
  sub_1DAA4D678(v95, &v49[qword_1EE126B08]);
  v56 = &v49[qword_1EE126B10];
  v57 = v85;
  *v56 = v87;
  *(v56 + 1) = v57;
  v58 = v84;
  *(v56 + 2) = v88;
  *(v56 + 3) = v58;
  v59 = v34;
  v60 = v71;
  v41(&v49[qword_1ECBE9340], v34, v71);
  v61 = v82;
  v62 = v80;
  v81(&v49[qword_1EE126B18], v82, v80);
  v93.receiver = v49;
  v93.super_class = v48;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v63 = objc_msgSendSuper2(&v93, sel_init);
  v75(v61, v62);
  v74(v59, v60);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  __swift_destroy_boxed_opaque_existential_1(&v101);
  sub_1DACB82B4();

  v64 = sub_1DACB89D4();
  sub_1DACB89C4();

  v65 = swift_allocObject();
  *(v65 + 16) = v55;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1DAB78E2C;
  *(v66 + 24) = v65;
  sub_1DACB71E4();
  v67 = sub_1DACB89D4();
  sub_1DAA7F334();
  v68 = sub_1DACB8A64();

  return v68;
}

uint64_t sub_1DAB7860C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC8];
  v10 = MEMORY[0x1E69E7CC8];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v9[0] = *(v7 - 1);
      v9[1] = v8;
      sub_1DACB71E4();
      sub_1DAB786C0(&v10, v9, a1, a2);

      v7 += 2;
      --v5;
    }

    while (v5);
    return v10;
  }

  return result;
}

unint64_t sub_1DAB786C0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v69 = a1;
  sub_1DAB78E7C(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v63[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v63[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v63[-v13];
  v14 = type metadata accessor for YahooQuoteDetailItem(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v63[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x1EEE9AC00](v16);
  v21 = &v63[-v20];
  if (!*(a3 + 16))
  {
    return result;
  }

  v23 = *a2;
  v22 = a2[1];
  result = sub_1DAA4BF3C(v23, v22);
  if ((v24 & 1) == 0)
  {
    return result;
  }

  sub_1DAB78F98(*(a3 + 56) + *(v15 + 72) * result, v18, type metadata accessor for YahooQuoteDetailItem);
  sub_1DAB78ED4(v18, v21);
  v25 = *(a4 + 16);
  v70 = v23;
  if (v25 && (v26 = sub_1DAA4BF3C(v23, v22), (v27 & 1) != 0))
  {
    v28 = v26;
    v29 = *(a4 + 56);
    v30 = type metadata accessor for YahooMultiQuoteItem(0);
    v31 = *(v30 - 8);
    v32 = v29 + *(v31 + 72) * v28;
    v33 = v71;
    sub_1DAB78F98(v32, v71, type metadata accessor for YahooMultiQuoteItem);
    (*(v31 + 56))(v33, 0, 1, v30);
    v34 = v21[1];
    if (!v34)
    {
LABEL_6:
      sub_1DACB71E4();
      v66 = v70;
      v65 = v22;
      goto LABEL_9;
    }
  }

  else
  {
    v35 = type metadata accessor for YahooMultiQuoteItem(0);
    (*(*(v35 - 8) + 56))(v71, 1, 1, v35);
    v34 = v21[1];
    if (!v34)
    {
      goto LABEL_6;
    }
  }

  v66 = *v21;
  v65 = v34;
LABEL_9:
  v36 = v21[3];
  v67 = v21[2];
  if (!*(v21 + *(v14 + 84) + 8))
  {
    sub_1DAB78F98(v71, v12, sub_1DAB78E7C);
    v37 = type metadata accessor for YahooMultiQuoteItem(0);
    if ((*(*(v37 - 8) + 48))(v12, 1, v37) == 1)
    {
      sub_1DACB71E4();
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DAB78F38(v12, sub_1DAB78E7C);
    }

    else
    {
      v38 = *&v12[*(v37 + 64) + 8];
      sub_1DACB71E4();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DAB78F38(v12, type metadata accessor for YahooMultiQuoteItem);
      if (v38)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_15;
  }

  sub_1DACB71E4();
  sub_1DACB71E4();
  swift_bridgeObjectRetain_n();
LABEL_15:
  sub_1DACB71E4();
  sub_1DAC4A894(&v87);

  v64 = v87;
  v39 = (v21 + *(v14 + 80));
  if (v39[1])
  {
    v40 = *v39;
    v41 = v39[1];
  }

  else
  {
    v42 = v68;
    sub_1DAB78F98(v71, v68, sub_1DAB78E7C);
    v43 = type metadata accessor for YahooMultiQuoteItem(0);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
    v45 = sub_1DAB78E7C;
    if (v44 == 1)
    {
      v40 = 0;
      v41 = 0;
    }

    else
    {
      v46 = &v42[*(v43 + 60)];
      v40 = *v46;
      v41 = v46[1];
      sub_1DACB71E4();
      v45 = type metadata accessor for YahooMultiQuoteItem;
    }

    sub_1DAB78F38(v42, v45);
  }

  v72 = v67;
  v73 = v36;
  sub_1DACB71E4();
  v68 = v36;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](v70, v22);
  v48 = v72;
  v47 = v73;
  v49 = qword_1EE122610;
  sub_1DACB71E4();
  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v51 = sub_1DAA4BF3C(v70, v22), (v52 & 1) != 0))
  {
    v53 = v51;

    v54 = (*(v50 + 56) + 16 * v53);
    v40 = *v54;
    v41 = v54[1];
    sub_1DACB71E4();
  }

  else if (!v41)
  {
    sub_1DACB71E4();
    v40 = v70;
    v41 = v22;
  }

  v55 = qword_1EE13E390;
  v56 = v70;
  v57 = v70;
  v58 = v22;
  if (*(qword_1EE13E390 + 16))
  {
    v59 = sub_1DAA4BF3C(v70, v22);
    v57 = v56;
    v58 = v22;
    if (v60)
    {

      v57 = *(*(v55 + 56) + 16 * v59);
      v58 = sub_1DACB71E4();
    }
  }

  v72 = v48;
  v73 = v47;
  v74 = v56;
  v75 = v22;
  v76 = v66;
  v77 = v65;
  v78 = v67;
  v79 = v68;
  v80 = v64;
  v81 = v40;
  v82 = v41;
  v83 = v57;
  v84 = v58;
  v85 = 0u;
  v86 = 0u;
  v61 = v69;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v61;
  sub_1DAA88E98(&v72, v56, v22, isUniquelyReferenced_nonNull_native);

  *v61 = v87;
  sub_1DAB78F38(v71, sub_1DAB78E7C);
  return sub_1DAB78F38(v21, type metadata accessor for YahooQuoteDetailItem);
}

uint64_t sub_1DAB78E34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAB78E7C(uint64_t a1)
{
  if (!qword_1EE1266E8)
  {
    type metadata accessor for YahooMultiQuoteItem(255);
    v1 = sub_1DACB9AF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1266E8);
    }
  }
}

uint64_t sub_1DAB78ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for YahooQuoteDetailItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB78F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB78F98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAB79000(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DAA4D460(a2, v4 + 24);
  return v4;
}

uint64_t sub_1DAB7905C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1DACB93B4();
  if (*(v3 + 16))
  {
    v6 = sub_1DAA4BF3C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v3 + 56) + 16 * v6);
      sub_1DACB71E4();
      return v9;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DAB790D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  sub_1DACB71E4();
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  while (v7)
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(a1 + 56) + 104 * (v11 | (v9 << 6));
      v13 = *(v12 + 72);
      if (v13)
      {
        break;
      }

      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v34 = a2;
    v35 = *(v12 + 64);
    v36 = sub_1DACB93B4();
    v37 = v15;
    sub_1DACB71E4();
    swift_bridgeObjectRetain_n();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1DAA4BF3C(v36, v37);
    v19 = v10[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    if (v10[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v17;
        sub_1DAB65314();
        v17 = v31;
      }

      v22 = v37;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v33 = v17;
      sub_1DAAA2514(v21, isUniquelyReferenced_nonNull_native);
      v22 = v37;
      v23 = sub_1DAA4BF3C(v36, v37);
      if ((v33 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }

      v18 = v23;
      if (v33)
      {
LABEL_19:

        v30 = (v10[7] + 16 * v18);
        *v30 = v35;
        v30[1] = v13;

        a2 = v34;
        goto LABEL_20;
      }
    }

    v10[(v18 >> 6) + 8] |= 1 << v18;
    v25 = (v10[6] + 16 * v18);
    *v25 = v36;
    v25[1] = v22;
    v26 = (v10[7] + 16 * v18);
    *v26 = v35;
    v26[1] = v13;
    v27 = v10[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_25;
    }

    v10[2] = v29;

    a2 = v34;
LABEL_20:
  }

LABEL_6:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      *a2 = v10;
      return result;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAB793CC(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DAA4D460(a2, v2 + 24);
  return v2;
}

uint64_t sub_1DAB793F8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  return v0;
}

uint64_t sub_1DAB79420()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB79460(uint64_t a1)
{
  sub_1DAAA167C();
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  v2 = sub_1DACB8A54();

  return v2;
}

uint64_t sub_1DAB794FC(void *a1)
{
  v1 = sub_1DACB71E4();
  sub_1DAB790D8(v1, &v3);
  sub_1DAB79594();
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAB79594()
{
  if (!qword_1EE11FE98)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE98);
    }
  }
}

uint64_t SymbolEntity.id.getter()
{
  v1 = *v0;
  sub_1DACB71E4();
  return v1;
}

uint64_t (*SymbolEntity.symbol.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t (*SymbolEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAAD9D74;
}

uint64_t (*SymbolEntity.exchange.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6EC4();
  return sub_1DAADD2B0;
}

uint64_t SymbolEntity.shortName.getter()
{
  v1 = *(v0 + 40);
  sub_1DACB71E4();
  return v1;
}

uint64_t SymbolEntity.compactName.getter()
{
  v1 = *(v0 + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB79974@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EF80 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EE11EF90;
  v2 = qword_1EE11EF98;
  *a1 = qword_1EE11EF88;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t static SymbolEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EE11EF80 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EE11EF90;
  v2 = qword_1EE11EF98;
  *a1 = qword_1EE11EF88;
  a1[1] = v1;
  a1[2] = v2;
  sub_1DACB71F4();
  sub_1DACB71F4();

  return sub_1DACB71F4();
}

uint64_t sub_1DAB79A8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE7FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static SymbolEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7354();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE7FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB79BDC(uint64_t a1)
{
  v2 = sub_1DAA9A61C(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DAB79C58(uint64_t a1)
{
  v2 = sub_1DAA9A61C(&qword_1EE123528, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1DAB79CE0()
{
  v14 = MEMORY[0x1E6968E10];
  sub_1DAA8E4FC(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13 = &v12 - v1;
  v2 = sub_1DACB78E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7354();
  __swift_allocate_value_buffer(v10, qword_1ECBE7FA0);
  __swift_project_value_buffer(v10, qword_1ECBE7FA0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v2);
  sub_1DACB7914();
  (*(v9 + 56))(v13, 1, 1, v8);
  sub_1DAA8E4FC(0, &qword_1ECBE6D78, v14, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1DACCAE40;
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  sub_1DACB78D4();
  return sub_1DACB7334();
}

uint64_t static SymbolEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for SymbolEntity(0);
  v1 = sub_1DACB7AB4();
  v2 = sub_1DAA9A61C(&qword_1ECBE7FB8, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v3 = sub_1DAA9A61C(&qword_1ECBE7FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);

  return MEMORY[0x1EEDBF5F8](sub_1DAB7A268, 0, v0, v1, v2, v3);
}

uint64_t sub_1DAB7A268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SymbolEntity(0) + 40);
  v5 = sub_1DACB7AB4();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1DAB7A2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = sub_1DAA9A61C(&qword_1ECBE7FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);

  return MEMORY[0x1EEDBF5F8](sub_1DAB7A268, 0, a1, v4, a2, v5);
}

double sub_1DAB7A390@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DACB6ED4();
  sub_1DACB6ED4();
  sub_1DACB6ED4();
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[8];
  v21 = a1[7];
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20]();
  v7 = qword_1EE122610;
  sub_1DACB71E4();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v9 = sub_1DAA4BF3C(v23, v24);
    if (v10)
    {
      v11 = v9;

      v12 = (*(v8 + 56) + 16 * v11);
      v5 = *v12;
      v4 = v12[1];
      sub_1DACB71E4();
    }
  }

  v13 = qword_1EE13E390;
  if (!*(qword_1EE13E390 + 16))
  {

LABEL_11:
    v18 = v21;
    goto LABEL_12;
  }

  v22 = v5;
  v20 = v4;
  v14 = sub_1DAA4BF3C(v23, v24);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v4 = v20;
    v5 = v22;
    goto LABEL_11;
  }

  v17 = (*(v13 + 56) + 16 * v14);
  v18 = *v17;
  v6 = v17[1];
  sub_1DACB71E4();
  v4 = v20;
  v5 = v22;
LABEL_12:
  sub_1DAAD5434(a1);
  *a2 = v23;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v23;
  *(a2 + 56) = v24;
  *(a2 + 64) = 0;
  *(a2 + 72) = v5;
  *(a2 + 80) = v4;
  *(a2 + 88) = v18;
  *(a2 + 96) = v6;
  result = 0.0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  return result;
}

unint64_t sub_1DAB7A5A0()
{
  result = qword_1EE11F090;
  if (!qword_1EE11F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F090);
  }

  return result;
}

void sub_1DAB7A63C(uint64_t a1)
{
  if (!qword_1ECBE7FD0)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAA9A61C(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    v1 = sub_1DACB7364();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7FD0);
    }
  }
}

void sub_1DAB7A6EC(uint64_t a1)
{
  if (!qword_1ECBE7FE0)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DACB7AB4();
    sub_1DAA9A61C(&qword_1ECBE7FB8, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    sub_1DAA9A61C(&qword_1ECBE7FC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6965B58]);
    v1 = sub_1DACB8C44();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE7FE0);
    }
  }
}

uint64_t sub_1DAB7A7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DAA94754;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1DAB7A954(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v27 = a2[6];
  v28 = v3;
  v29 = *(a2 + 16);
  v4 = a2[3];
  v23 = a2[2];
  v24 = v4;
  v5 = a2[5];
  v25 = a2[4];
  v26 = v5;
  v6 = a2[1];
  v21 = *a2;
  v22 = v6;
  sub_1DAB7B4F0(0, &qword_1EE11FE18, sub_1DAB7B28C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB8B44();
  v7 = v2[6];
  v8 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v7);
  (*(v8 + 8))(v7, v8);
  v9 = sub_1DACB89D4();
  sub_1DACB89C4();

  v10 = swift_allocObject();
  v11 = v28;
  *(v10 + 112) = v27;
  *(v10 + 128) = v11;
  *(v10 + 144) = v29;
  v12 = v24;
  *(v10 + 48) = v23;
  *(v10 + 64) = v12;
  v13 = v26;
  *(v10 + 80) = v25;
  *(v10 + 96) = v13;
  v14 = v22;
  *(v10 + 16) = v21;
  *(v10 + 32) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DAB7B324;
  *(v15 + 24) = v10;
  sub_1DAB7B374(&v21, v20);
  v16 = sub_1DACB89D4();
  sub_1DAB7B3D0(0);
  sub_1DACB8A64();

  v17 = sub_1DACB89D4();
  sub_1DAAD4E00(0);
  v18 = sub_1DACB8A54();

  return v18;
}

uint64_t sub_1DAB7AB90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(a3 + 112);
  v14[6] = *(a3 + 96);
  v14[7] = v7;
  v15 = *(a3 + 128);
  v8 = *(a3 + 48);
  v14[2] = *(a3 + 32);
  v14[3] = v8;
  v9 = *(a3 + 80);
  v14[4] = *(a3 + 64);
  v14[5] = v9;
  v10 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v10;
  v11 = *(v6 + 16);
  v12 = sub_1DACB71E4();
  v11(v12, v14, v5, v6);
  return a1;
}

uint64_t sub_1DAB7AC38(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DACB9E14())
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_18:
      *v33 = v5;
      v33[8] = 0;
      sub_1DAB7B4F0(0, &qword_1EE11FE40, sub_1DAAD4E00, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      return sub_1DACB8AE4();
    }

    v43 = MEMORY[0x1E69E7CC0];
    sub_1DAAA50F8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = 0;
    v5 = v43;
    v7 = i - 1;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12777A0](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(a1 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v9 = [swift_unknownObjectRetain() identifier];
      v10 = sub_1DACB9324();
      v12 = v11;
      if (!*(a2 + 16))
      {
        goto LABEL_24;
      }

      v13 = v10;

      v14 = sub_1DAA4BF3C(v13, v12);
      LOBYTE(v13) = v15;

      if ((v13 & 1) == 0)
      {
        break;
      }

      v16 = *(a2 + 56) + 136 * v14;
      v34 = *v16;
      v17 = *(v16 + 64);
      v19 = *(v16 + 16);
      v18 = *(v16 + 32);
      v37 = *(v16 + 48);
      v38 = v17;
      v35 = v19;
      v36 = v18;
      v21 = *(v16 + 96);
      v20 = *(v16 + 112);
      v22 = *(v16 + 80);
      v42 = *(v16 + 128);
      v40 = v21;
      v41 = v20;
      v39 = v22;
      sub_1DAAA5860(&v34, v33);
      swift_unknownObjectRelease();
      v43 = v5;
      v24 = *(v5 + 16);
      v23 = *(v5 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DAAA50F8((v23 > 1), v24 + 1, 1);
        v5 = v43;
      }

      *&v33[88] = v39;
      *&v33[104] = v40;
      *&v33[120] = v41;
      *&v33[24] = v35;
      *&v33[40] = v36;
      *&v33[56] = v37;
      *&v33[72] = v38;
      *&v33[136] = v42;
      *&v33[8] = v34;
      *v33 = v8;
      sub_1DAAA58BC(v33);
      *(v5 + 16) = v24 + 1;
      v25 = (v5 + 144 * v24);
      v25[2] = *v33;
      v26 = *&v33[16];
      v27 = *&v33[32];
      v28 = *&v33[64];
      v25[5] = *&v33[48];
      v25[6] = v28;
      v25[3] = v26;
      v25[4] = v27;
      v29 = *&v33[80];
      v30 = *&v33[96];
      v31 = *&v33[128];
      v25[9] = *&v33[112];
      v25[10] = v31;
      v25[7] = v29;
      v25[8] = v30;
      if (v7 == v6)
      {
        goto LABEL_18;
      }

      if (__OFADD__(++v6, 1))
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
LABEL_24:

  __break(1u);
  return result;
}

uint64_t sub_1DAB7AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 16);
  sub_1DACB71F4();
  sub_1DAB16534(a6);
  v14 = objc_allocWithZone(MEMORY[0x1E69B5198]);
  v15 = sub_1DACB9634();

  v16 = sub_1DACB9634();
  v17 = [v14 initWithContext:v13 articleIDs:v15 ignoreCacheForArticleIDs:v16];

  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = sub_1DAA73914;
  v18[5] = v12;
  v22[4] = sub_1DAB7B554;
  v22[5] = v18;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1DAA74E58;
  v22[3] = &block_descriptor_11;
  v19 = _Block_copy(v22);
  v20 = v17;
  sub_1DACB71F4();

  [v20 setFetchCompletionBlock_];
  _Block_release(v19);

  sub_1DACB82E4();
  sub_1DACB8294();
  sub_1DACB82C4();
}

void sub_1DAB7B12C(void *a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  v7 = [a1 error];
  if (v7)
  {
    v9 = v7;
    a2();
  }

  else if ([a1 fetchedObject] && (sub_1DAB7B28C(0), (swift_dynamicCast() & 1) != 0))
  {
    a4();
  }

  else
  {
    sub_1DAB7B560();
    v8 = swift_allocError();
    a2();
  }
}

unint64_t sub_1DAB7B2C0()
{
  result = qword_1EE11F880;
  if (!qword_1EE11F880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F880);
  }

  return result;
}

uint64_t sub_1DAB7B32C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void sub_1DAB7B3D0(uint64_t a1)
{
  if (!qword_1EE11F9B0)
  {
    sub_1DAB7B28C(255);
    sub_1DAB7B440();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11F9B0);
    }
  }
}

void sub_1DAB7B440()
{
  if (!qword_1EE11FCC8)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCC8);
    }
  }
}

void sub_1DAB7B4A0()
{
  if (!qword_1EE11FAA0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FAA0);
    }
  }
}

void sub_1DAB7B4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1DAB7B560()
{
  result = qword_1ECBE7FE8;
  if (!qword_1ECBE7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7FE8);
  }

  return result;
}

unint64_t sub_1DAB7B5C8()
{
  result = qword_1ECBE7FF0;
  if (!qword_1ECBE7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7FF0);
  }

  return result;
}

uint64_t sub_1DAB7B61C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA5859C(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1DACB9BC4();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 136 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);
    result = sub_1DACB71E4();
    if (v12 >= v13 >> 1)
    {
      result = sub_1DAA5859C((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1DAAA2C74(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1DAAA2C74(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DAB7B848()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE8000);
  __swift_project_value_buffer(v6, qword_1ECBE8000);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB7BA28()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE8018);
  __swift_project_value_buffer(v6, qword_1ECBE8018);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB7BC04@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAF41C0(0, &qword_1EE123AB8, qword_1EE125F28, &protocol descriptor for SearchServiceType);
  sub_1DACB6D94();
  sub_1DACB6D84();
  *a1 = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AA8, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType);
  sub_1DACB6D84();
  a1[1] = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  a1[2] = result;
  return result;
}

uint64_t sub_1DAB7BD24(uint64_t a1)
{
  v2[45] = a1;
  v3 = sub_1DACB8204();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = sub_1DACB7CC4();
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();
  v5 = sub_1DACB8344();
  v2[52] = v5;
  v2[53] = *(v5 - 8);
  v2[54] = swift_task_alloc();
  v6 = sub_1DACB81B4();
  v2[55] = v6;
  v2[56] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *(v1 + 8);
  v2[57] = v7;
  v2[58] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DAB7BEFC, 0, 0);
}

uint64_t sub_1DAB7BEFC()
{
  v28 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[59] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[45];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[44] = v4;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v7 = sub_1DACB9214();
    v9 = sub_1DAA7ABE4(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching stocks for symbol query with identifiers=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v10 = v0[55];
  v11 = v0[56];
  v20 = v0[54];
  v12 = v0[51];
  v25 = v0[52];
  v26 = v0[57];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[53];
  v13 = v0[47];
  v14 = v0[48];
  v15 = v0[46];
  v21 = v0[45];
  sub_1DACB6D24();
  v17 = v0[39];
  v16 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v17);
  (*(v11 + 104))(v26, *MEMORY[0x1E69D63C8], v10);
  sub_1DACB8334();
  sub_1DACB7CB4();
  (*(v13 + 104))(v14, *MEMORY[0x1E69D6490], v15);
  v0[60] = (*(v16 + 8))(v21, v26, v20, v12, v14, v17, v16);
  (*(v13 + 8))(v14, v15);
  (*(v22 + 8))(v12, v23);
  (*(v24 + 8))(v20, v25);
  (*(v11 + 8))(v26, v10);
  v18 = swift_task_alloc();
  v0[61] = v18;
  *v18 = v0;
  v18[1] = sub_1DAB7C270;

  return MEMORY[0x1EEE44EE0](v0 + 41);
}

uint64_t sub_1DAB7C270()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_1DAB7C7AC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v3 = sub_1DAB7C394;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1DAB7C394()
{
  v48 = v0;
  v1 = *(v0 + 328);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v46[0] = v44;
    *v5 = 136315394;
    *(v0 + 336) = v4;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v6 = sub_1DACB9214();
    v8 = sub_1DAA7ABE4(v6, v7, v46);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1DACB71E4();
    v10 = sub_1DAB1C3A0(v9);

    *(v0 + 344) = v10;
    v11 = sub_1DACB9214();
    v13 = v12;

    v14 = sub_1DAA7ABE4(v11, v13, v46);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched stocks for symbol query with identifiers=[%s], stocks=[%s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v44, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 360);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 40;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = (v18 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= v16)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_24;
        }

        if (*(v1 + 16))
        {
          break;
        }

LABEL_7:
        ++v21;
        v20 += 2;
        if (v17 == v16)
        {
          goto LABEL_20;
        }
      }

      v22 = *(v20 - 1);
      v23 = *v20;
      sub_1DACB71E4();
      v24 = sub_1DAA4BF3C(v22, v23);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(v1 + 56) + 136 * v24;
      *(v0 + 16) = *v26;
      v27 = *(v26 + 16);
      v28 = *(v26 + 32);
      v29 = *(v26 + 64);
      *(v0 + 64) = *(v26 + 48);
      *(v0 + 80) = v29;
      *(v0 + 32) = v27;
      *(v0 + 48) = v28;
      v30 = *(v26 + 80);
      v31 = *(v26 + 96);
      v32 = *(v26 + 112);
      *(v0 + 144) = *(v26 + 128);
      *(v0 + 112) = v31;
      *(v0 + 128) = v32;
      *(v0 + 96) = v30;
      v33 = *(v26 + 112);
      v46[6] = *(v26 + 96);
      v46[7] = v33;
      v47 = *(v26 + 128);
      v34 = *(v26 + 48);
      v46[2] = *(v26 + 32);
      v46[3] = v34;
      v35 = *(v26 + 80);
      v46[4] = *(v26 + 64);
      v46[5] = v35;
      v36 = *(v26 + 16);
      v46[0] = *v26;
      v46[1] = v36;
      sub_1DAA806E4(v0 + 16, v0 + 152);
      sub_1DAB9BFD8(v46, v45);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1DAADC048(0, *(v19 + 2) + 1, 1, v19);
      }

      v38 = *(v19 + 2);
      v37 = *(v19 + 3);
      if (v38 >= v37 >> 1)
      {
        v19 = sub_1DAADC048((v37 > 1), v38 + 1, 1, v19);
      }

      *(v19 + 2) = v38 + 1;
      v39 = &v19[64 * v38];
      v40 = v45[0];
      v41 = v45[1];
      v42 = v45[3];
      *(v39 + 4) = v45[2];
      *(v39 + 5) = v42;
      *(v39 + 2) = v40;
      *(v39 + 3) = v41;
      if (v17 == v16)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_7;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v43 = *(v0 + 8);

  v43(v19);
}

uint64_t sub_1DAB7C7AC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB7C850(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = *v1;
  *(v2 + 96) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB7C880, 0, 0);
}

uint64_t sub_1DAB7C880()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watched stocks for suggested symbol entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[14] = (*(v6 + 120))(v5, v6);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1DAB7CA1C;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAB7CA1C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DAB7CDDC;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB7CB40;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB7CB40()
{
  v30 = v0;
  v1 = v0[7];
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v29 = v5;
    *v4 = 136315138;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v23 = v5;
      v24 = v4;
      v25 = v3;
      v26 = v2;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = v28;
      v9 = *(v28 + 16);
      v10 = 16 * v9;
      v27 = v1;
      v11 = (v1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = v9 + 1;
        v15 = *(v28 + 24);
        sub_1DACB71E4();
        if (v9 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
        }

        *(v28 + 16) = v14;
        v16 = v28 + v10;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v10 += 16;
        v11 += 17;
        ++v9;
        --v7;
      }

      while (v7);
      v2 = v26;
      v1 = v27;
      v3 = v25;
      v6 = v23;
      v4 = v24;
    }

    v0[8] = v8;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v29);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched watched stocks for suggested symbol entities, stocks=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DAB7CE48(v1, MEMORY[0x1E69E7CC0], v0[9]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1DAB7CDDC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB7CE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  sub_1DAB8495C(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v63 - v6;
  v7 = sub_1DACB7904();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB84A48(0, &qword_1ECBE6A50, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A208]);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v63 - v12;
  sub_1DAB84A48(0, &qword_1ECBE7108, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E6959EE0]);
  v75 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v64 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - v17;
  v19 = *(a1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v74 = a2;
    v98 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D58(0, v19, 0);
    v20 = v98;
    v21 = a1 + 32;
    do
    {
      v22 = *(v21 + 80);
      v23 = *(v21 + 112);
      v95 = *(v21 + 96);
      v96 = v23;
      v24 = *(v21 + 16);
      v25 = *(v21 + 48);
      v91 = *(v21 + 32);
      v92 = v25;
      v26 = *(v21 + 48);
      v27 = *(v21 + 80);
      v93 = *(v21 + 64);
      v94 = v27;
      v28 = *(v21 + 16);
      v89 = *v21;
      v90 = v28;
      v29 = *(v21 + 112);
      v86 = v95;
      v87 = v29;
      v82 = v91;
      v83 = v26;
      v84 = v93;
      v85 = v22;
      v97 = *(v21 + 128);
      v88 = *(v21 + 128);
      v80 = v89;
      v81 = v24;
      sub_1DAA806E4(&v89, &v76);
      sub_1DAA806E4(&v89, &v76);
      sub_1DAB9BFD8(&v80, &v76);
      v80 = v76;
      v81 = v77;
      v82 = v78;
      v83 = v79;
      sub_1DAADD25C();
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v89);
      v98 = v20;
      v31 = *(v20 + 16);
      v30 = *(v20 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1DAB25D58((v30 > 1), v31 + 1, 1);
        v20 = v98;
      }

      *(v20 + 16) = v31 + 1;
      (*(v14 + 32))(v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v31, v18, v75);
      v21 += 136;
      --v19;
    }

    while (v19);
    a2 = v74;
  }

  v32 = *(a2 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v34 = v64;
  if (v32)
  {
    v98 = MEMORY[0x1E69E7CC0];
    sub_1DAB25D58(0, v32, 0);
    v33 = v98;
    v35 = a2 + 32;
    v74 = v14 + 32;
    do
    {
      v36 = *(v35 + 80);
      v37 = *(v35 + 112);
      v95 = *(v35 + 96);
      v96 = v37;
      v38 = *(v35 + 16);
      v39 = *(v35 + 48);
      v91 = *(v35 + 32);
      v92 = v39;
      v40 = *(v35 + 48);
      v41 = *(v35 + 80);
      v93 = *(v35 + 64);
      v94 = v41;
      v42 = *(v35 + 16);
      v89 = *v35;
      v90 = v42;
      v43 = *(v35 + 112);
      v86 = v95;
      v87 = v43;
      v82 = v91;
      v83 = v40;
      v84 = v93;
      v85 = v36;
      v97 = *(v35 + 128);
      v88 = *(v35 + 128);
      v80 = v89;
      v81 = v38;
      sub_1DAA806E4(&v89, &v76);
      sub_1DAA806E4(&v89, &v76);
      sub_1DAB9BFD8(&v80, &v76);
      v80 = v76;
      v81 = v77;
      v82 = v78;
      v83 = v79;
      sub_1DAADD25C();
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v89);
      v98 = v33;
      v45 = *(v33 + 16);
      v44 = *(v33 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1DAB25D58((v44 > 1), v45 + 1, 1);
        v33 = v98;
      }

      *(v33 + 16) = v45 + 1;
      (*(v14 + 32))(v33 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v45, v34, v75);
      v35 += 136;
      --v32;
    }

    while (v32);
  }

  v47 = v68;
  v46 = v69;
  v49 = v66;
  v48 = v67;
  if (*(v20 + 16))
  {
    if (qword_1ECBE5AD0 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v46, qword_1ECBE8000);
    v51 = v73;
    (*(v47 + 16))(v73, v50, v46);
    v52 = sub_1DAADD25C();
    MEMORY[0x1E1274B90](v51, v20, &type metadata for SymbolWidgetEntity, v52);
    v53 = sub_1DAADC16C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v55 = v53[2];
    v54 = v53[3];
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1DAADC16C((v54 > 1), v55 + 1, 1, v53);
    }

    v56 = v65;
    v53[2] = v55 + 1;
    (*(v49 + 32))(v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55, v72, v48);
    if (*(v33 + 16))
    {
      goto LABEL_18;
    }

LABEL_26:

    goto LABEL_27;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v56 = v65;
  if (!*(v33 + 16))
  {
    goto LABEL_26;
  }

LABEL_18:
  if (qword_1ECBE5AD8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v46, qword_1ECBE8018);
  v58 = v73;
  (*(v47 + 16))(v73, v57, v46);
  v59 = sub_1DAADD25C();
  MEMORY[0x1E1274B90](v58, v33, &type metadata for SymbolWidgetEntity, v59);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_1DAADC16C(0, v53[2] + 1, 1, v53);
  }

  v61 = v53[2];
  v60 = v53[3];
  if (v61 >= v60 >> 1)
  {
    v53 = sub_1DAADC16C((v60 > 1), v61 + 1, 1, v53);
  }

  v53[2] = v61 + 1;
  (*(v49 + 32))(v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v61, v56, v48);
LABEL_27:
  (*(v47 + 56))(v70, 1, 1, v46);
  sub_1DAADD25C();
  return sub_1DACB7144();
}

uint64_t sub_1DAB7D6A8(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 472) = a1;
  *(v2 + 480) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAB7D6CC, 0, 0);
}

uint64_t sub_1DAB7D6CC()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Default symbol entity requested", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v5 = v0[56];
  v6 = v0[57];
  __swift_project_boxed_opaque_existential_1(v0 + 53, v5);
  v0[62] = (*(v6 + 120))(v5, v6);
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_1DAB7D868;

  return MEMORY[0x1EEE44EE0](v0 + 58);
}

uint64_t sub_1DAB7D868()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1DAB7DE30;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v3 = sub_1DAB7D98C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB7D98C()
{
  v73 = v0;
  v1 = *(v0 + 464);
  if (*(v1 + 16))
  {
    *(v0 + 16) = *(v1 + 32);
    v2 = *(v1 + 96);
    v4 = *(v1 + 48);
    v3 = *(v1 + 64);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v2;
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    v6 = *(v1 + 128);
    v5 = *(v1 + 144);
    v7 = *(v1 + 112);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 112) = v6;
    *(v0 + 128) = v5;
    *(v0 + 96) = v7;
    sub_1DAA806E4(v0 + 16, v0 + 152);

    v49 = *(v0 + 136);
    v57 = *(v0 + 120);
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v56 = *(v0 + 80);
    v53 = *(v0 + 104);
    v54 = *(v0 + 64);
    v55 = *(v0 + 72);
    v10 = *(v0 + 56);
    v51 = *(v0 + 112);
    v52 = *(v0 + 48);
    v11 = *(v0 + 32);
    v50 = *(v0 + 40);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    sub_1DAA806E4(v0 + 16, v0 + 288);
    v14 = sub_1DACB8C74();
    v15 = sub_1DACB98E4();
    sub_1DAA9B1C8(v0 + 16);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v47 = v9;
      v48 = v8;
      v17 = v11;
      v18 = swift_slowAlloc();
      *&v59 = v18;
      *v16 = 136315138;
      sub_1DACB71E4();
      v19 = v10;
      v20 = v13;
      v21 = sub_1DAA7ABE4(v13, v12, &v59);

      *(v16 + 4) = v21;
      v13 = v20;
      v10 = v19;
      _os_log_impl(&dword_1DAA3F000, v14, v15, "Returning first watched stock for default symbol entity, stock=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v22 = v18;
      v11 = v17;
      v9 = v47;
      v8 = v48;
      MEMORY[0x1E1278C00](v22, -1, -1);
      MEMORY[0x1E1278C00](v16, -1, -1);
    }

    v23 = v57;
    v24 = v56;
    v26 = v54;
    v25 = v55;
    v27 = v52;
    v28 = v53;
    v30 = v50;
    v29 = v51;
    v31 = v49;
  }

  else
  {

    v37 = sub_1DACB8C74();
    v38 = sub_1DACB9904();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DAA3F000, v37, v38, "No watched symbols to return as default symbol entity, falling back to AAPL", v39, 2u);
      MEMORY[0x1E1278C00](v39, -1, -1);
    }

    v11 = 1280328001;

    *&v59 = 0x51414453414ELL;
    *(&v59 + 1) = 0xE600000000000000;
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
    v13 = 0x51414453414ELL;
    v12 = 0xE600000000000000;
    if (qword_1EE122610 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE13E388;
    if (*(qword_1EE13E388 + 16))
    {
      v9 = 0xE400000000000000;
      v41 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      v8 = 1280328001;
      if (v42)
      {
        v43 = (*(v40 + 56) + 16 * v41);
        v8 = *v43;
        v9 = v43[1];
        sub_1DACB71E4();
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v8 = 1280328001;
    }

    v10 = 0xEA00000000002E63;
    v44 = qword_1EE13E390;
    v23 = 0uLL;
    if (*(qword_1EE13E390 + 16))
    {
      v45 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      if (v46)
      {
        v28 = *(*(v44 + 56) + 16 * v45);
        v29 = sub_1DACB71E4();
        v24 = 3;
        v25 = 0xE600000000000000;
        v26 = 0x51414453414ELL;
        v27 = 0x6E4920656C707041;
        v31 = 0uLL;
        v30 = 0xE400000000000000;
        v23 = 0uLL;
      }

      else
      {
        v24 = 3;
        v25 = 0xE600000000000000;
        v26 = 0x51414453414ELL;
        v27 = 0x6E4920656C707041;
        v28 = 1280328001;
        v31 = 0uLL;
        v29 = 0xE400000000000000;
        v23 = 0uLL;
        v30 = 0xE400000000000000;
      }
    }

    else
    {
      v24 = 3;
      v25 = 0xE600000000000000;
      v26 = 0x51414453414ELL;
      v27 = 0x6E4920656C707041;
      v30 = 0xE400000000000000;
      v28 = 1280328001;
      v31 = 0uLL;
      v29 = 0xE400000000000000;
    }
  }

  v32 = *(v0 + 472);
  *&v59 = v13;
  *(&v59 + 1) = v12;
  v60 = v11;
  v61 = v30;
  v62 = v27;
  v63 = v10;
  v64 = v26;
  v65 = v25;
  v66 = v24;
  v67 = v8;
  v68 = v9;
  v69 = v28;
  v70 = v29;
  v71 = v23;
  v72 = v31;
  sub_1DAB9BFD8(&v59, v58);
  v33 = v58[1];
  *v32 = v58[0];
  v32[1] = v33;
  v34 = v58[3];
  v32[2] = v58[2];
  v32[3] = v34;
  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1DAB7DE30()
{
  v37 = v0;
  v1 = v0[64];

  __swift_destroy_boxed_opaque_existential_1(v0 + 53);

  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9904();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "No watched symbols to return as default symbol entity, falling back to AAPL", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  *&v23 = 0x51414453414ELL;
  *(&v23 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v6 = 0xE400000000000000;
    v7 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v8 = 1280328001;
    if (v9)
    {
      v10 = (*(v5 + 56) + 16 * v7);
      v8 = *v10;
      v6 = v10[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v8 = 1280328001;
  }

  v11 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v12 = 0xE400000000000000;
    v13 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v14 = 1280328001;
    if (v15)
    {
      v16 = (*(v11 + 56) + 16 * v13);
      v14 = *v16;
      v12 = v16[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v14 = 1280328001;
    v12 = 0xE400000000000000;
  }

  v17 = v0[59];
  *&v23 = 0x51414453414ELL;
  *(&v23 + 1) = 0xE600000000000000;
  v24 = 1280328001;
  v25 = 0xE400000000000000;
  v26 = 0x6E4920656C707041;
  v27 = 0xEA00000000002E63;
  v28 = 0x51414453414ELL;
  v29 = 0xE600000000000000;
  v30 = 3;
  v31 = v8;
  v32 = v6;
  v33 = v14;
  v34 = v12;
  v35 = 0u;
  v36 = 0u;
  sub_1DAB9BFD8(&v23, v22);
  v18 = v22[1];
  *v17 = v22[0];
  v17[1] = v18;
  v19 = v22[3];
  v17[2] = v22[2];
  v17[3] = v19;
  v20 = v0[1];

  return v20();
}

uint64_t sub_1DAB7E0D8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return sub_1DAB7BD24(a1);
}

uint64_t sub_1DAB7E16C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA9A3AC;

  return sub_1DAB7C850(a1);
}

uint64_t sub_1DAB7E204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return sub_1DAB7E2B4(a1, a2, a3);
}

uint64_t sub_1DAB7E2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  *(v4 + 120) = *v3;
  *(v4 + 136) = *(v3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB7E2E8, 0, 0);
}

uint64_t sub_1DAB7E2E8()
{
  v15 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[18] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DAA7ABE4(v5, v4, &v14);
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching stocks for symbol entities matching string='%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v8 = v0[14];
  v9 = v0[13];
  sub_1DACB6D24();
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[19] = sub_1DAAEA918(v9, v8, v10, v11);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1DAB7E4F4;

  return MEMORY[0x1EEE44EE0](v0 + 10);
}

uint64_t sub_1DAB7E4F4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DAAFCED0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB7E618;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB7E618()
{
  v33 = v0;
  v1 = *(v0 + 80);
  *(v0 + 176) = v1;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DAA7ABE4(v5, v4, &v31);
    *(v6 + 12) = 2080;
    v8 = *(v1 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v26 = v7;
      v27 = v6;
      v28 = v3;
      v29 = v2;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v32;
      v10 = *(v32 + 16);
      v11 = 16 * v10;
      v30 = v1;
      v12 = (v1 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v32 = v9;
        v15 = v10 + 1;
        v16 = *(v9 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
          v9 = v32;
        }

        *(v9 + 16) = v15;
        v17 = v9 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 17;
        ++v10;
        --v8;
      }

      while (v8);
      v2 = v29;
      v1 = v30;
      v3 = v28;
      v7 = v26;
      v6 = v27;
    }

    *(v0 + 88) = v9;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v31);

    *(v6 + 14) = v21;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched stocks for symbol entities matching string='%s', stocks=[%s]", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v22 = *(v0 + 136);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v22;
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_1DAB7E91C;
  v24 = *(v0 + 96);

  return sub_1DAB7EB7C(v24, v1);
}

uint64_t sub_1DAB7E91C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAB7EA30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DAB843F4();
  *v5 = v2;
  v5[1] = sub_1DAA9A3AC;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1DAB7EAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB7D6A8(a1);
}

uint64_t sub_1DAB7EB7C(uint64_t a1, uint64_t a2)
{
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;
  *(v3 + 496) = *v2;
  *(v3 + 512) = *(v2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB7EBAC, 0, 0);
}

uint64_t sub_1DAB7EBAC(uint64_t a1)
{
  sub_1DACB6D24();
  v2 = v1[56];
  v3 = v1[57];
  __swift_project_boxed_opaque_existential_1(v1 + 53, v2);
  v1[65] = (*(v3 + 120))(v2, v3);
  v4 = swift_task_alloc();
  v1[66] = v4;
  *v4 = v1;
  v4[1] = sub_1DAB7EC90;

  return MEMORY[0x1EEE44EE0](v1 + 58);
}

uint64_t sub_1DAB7EC90()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {

    v3 = sub_1DAB7F360;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v3 = sub_1DAB7EDC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB7EDC8()
{
  v73 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 488);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + 152);
    v5 = v2 + 32;
    v6 = v3 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v5;
      v8 = *(v5 + 16);
      v9 = *(v5 + 32);
      v10 = *(v5 + 64);
      *(v0 + 64) = *(v5 + 48);
      *(v0 + 80) = v10;
      *(v0 + 32) = v8;
      *(v0 + 48) = v9;
      v11 = *(v5 + 80);
      v12 = *(v5 + 96);
      v13 = *(v5 + 112);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v13;
      *(v0 + 96) = v11;
      *v4 = *v5;
      v14 = *(v5 + 16);
      v15 = *(v5 + 32);
      v16 = *(v5 + 64);
      *(v0 + 200) = *(v5 + 48);
      *(v0 + 216) = v16;
      *(v0 + 168) = v14;
      *(v0 + 184) = v15;
      v17 = *(v5 + 80);
      v18 = *(v5 + 96);
      v19 = *(v5 + 112);
      *(v0 + 280) = *(v5 + 128);
      *(v0 + 248) = v18;
      *(v0 + 264) = v19;
      *(v0 + 232) = v17;
      v20 = swift_task_alloc();
      *(v20 + 16) = v4;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v21 = sub_1DAC784F4(sub_1DAB84A28, v20, v1);

      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DAA5A0A8(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = sub_1DAA5A0A8((v22 > 1), v23 + 1, 1, v7);
          v7 = v25;
        }

        else
        {
          v25 = v7;
        }
      }

      else
      {
        v26 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DAA5A0A8(0, *(v70 + 16) + 1, 1, v70);
        }

        v23 = *(v26 + 2);
        v27 = *(v26 + 3);
        v28 = v26;
        v24 = v23 + 1;
        if (v23 >= v27 >> 1)
        {
          v25 = sub_1DAA5A0A8((v27 > 1), v23 + 1, 1, v28);
          v70 = v25;
        }

        else
        {
          v70 = v28;
          v25 = v28;
        }
      }

      *(v25 + 2) = v24;
      v29 = &v25[136 * v23];
      *(v29 + 2) = *(v0 + 16);
      v30 = *(v0 + 32);
      v31 = *(v0 + 48);
      v32 = *(v0 + 80);
      *(v29 + 5) = *(v0 + 64);
      *(v29 + 6) = v32;
      *(v29 + 3) = v30;
      *(v29 + 4) = v31;
      v33 = *(v0 + 96);
      v34 = *(v0 + 112);
      v35 = *(v0 + 128);
      *(v29 + 20) = *(v0 + 144);
      *(v29 + 8) = v34;
      *(v29 + 9) = v35;
      *(v29 + 7) = v33;
      if (!v6)
      {
        break;
      }

      --v6;
      v5 += 136;
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v36 = sub_1DACB8C94();
  __swift_project_value_buffer(v36, qword_1EE11D390);
  sub_1DACB71E4();
  v37 = v70;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v38 = sub_1DACB8C74();
  v39 = sub_1DACB9914();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    v72[0] = v41;
    *v40 = 136315650;
    v43 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v65 = v41;
      v66 = v39;
      v67 = v40;
      v68 = v38;
      v69 = v7;
      v44 = *(v0 + 488);
      v71 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v3, 0);
      v43 = v71;
      v45 = *(v71 + 16);
      v46 = 16 * v45;
      v47 = (v44 + 40);
      do
      {
        v48 = *(v47 - 1);
        v49 = *v47;
        v50 = v45 + 1;
        v51 = *(v71 + 24);
        sub_1DACB71E4();
        if (v45 >= v51 >> 1)
        {
          sub_1DAA5859C((v51 > 1), v50, 1);
        }

        *(v71 + 16) = v50;
        v52 = v71 + v46;
        *(v52 + 32) = v48;
        *(v52 + 40) = v49;
        v46 += 16;
        v47 += 17;
        ++v45;
        --v3;
      }

      while (v3);
      v38 = v68;
      v7 = v69;
      v40 = v67;
      v39 = v66;
      v42 = v65;
    }

    *(v0 + 472) = v43;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v53 = sub_1DACB9214();
    v55 = v54;

    v56 = sub_1DAA7ABE4(v53, v55, v72);

    *(v40 + 4) = v56;
    *(v40 + 12) = 2080;
    v57 = sub_1DAB81DD8(v7);
    v59 = sub_1DAA7ABE4(v57, v58, v72);

    *(v40 + 14) = v59;
    *(v40 + 22) = 2080;
    v37 = v70;
    v60 = sub_1DAB81DD8(v70);
    v62 = sub_1DAA7ABE4(v60, v61, v72);

    *(v40 + 24) = v62;

    _os_log_impl(&dword_1DAA3F000, v38, v39, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v42, -1, -1);
    MEMORY[0x1E1278C00](v40, -1, -1);
  }

  else
  {
  }

  sub_1DAB7CE48(v7, v37, *(v0 + 480));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1DAB7F360()
{
  v70 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 424));
  v1 = *(v0 + 488);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v0 + 152);
    v4 = v1 + 32;
    v5 = v2 - 1;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v4;
      v8 = *(v4 + 16);
      v9 = *(v4 + 32);
      v10 = *(v4 + 64);
      *(v0 + 64) = *(v4 + 48);
      *(v0 + 80) = v10;
      *(v0 + 32) = v8;
      *(v0 + 48) = v9;
      v11 = *(v4 + 80);
      v12 = *(v4 + 96);
      v13 = *(v4 + 112);
      *(v0 + 144) = *(v4 + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v13;
      *(v0 + 96) = v11;
      *v3 = *v4;
      v14 = *(v4 + 16);
      v15 = *(v4 + 32);
      v16 = *(v4 + 64);
      *(v0 + 200) = *(v4 + 48);
      *(v0 + 216) = v16;
      *(v0 + 168) = v14;
      *(v0 + 184) = v15;
      v17 = *(v4 + 80);
      v18 = *(v4 + 96);
      v19 = *(v4 + 112);
      *(v0 + 280) = *(v4 + 128);
      *(v0 + 248) = v18;
      *(v0 + 264) = v19;
      *(v0 + 232) = v17;
      v20 = swift_task_alloc();
      *(v20 + 16) = v3;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v21 = sub_1DAC784F4(sub_1DAB84A28, v20, MEMORY[0x1E69E7CC0]);

      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DAA5A0A8(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = sub_1DAA5A0A8((v22 > 1), v23 + 1, 1, v7);
          v7 = v25;
        }

        else
        {
          v25 = v7;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1DAA5A0A8(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v26 = *(v6 + 3);
        v24 = v23 + 1;
        if (v23 >= v26 >> 1)
        {
          v25 = sub_1DAA5A0A8((v26 > 1), v23 + 1, 1, v6);
          v6 = v25;
        }

        else
        {
          v25 = v6;
        }
      }

      *(v25 + 2) = v24;
      v27 = &v25[136 * v23];
      *(v27 + 2) = *(v0 + 16);
      v28 = *(v0 + 32);
      v29 = *(v0 + 48);
      v30 = *(v0 + 80);
      *(v27 + 5) = *(v0 + 64);
      *(v27 + 6) = v30;
      *(v27 + 3) = v28;
      *(v27 + 4) = v29;
      v31 = *(v0 + 96);
      v32 = *(v0 + 112);
      v33 = *(v0 + 128);
      *(v27 + 20) = *(v0 + 144);
      *(v27 + 8) = v32;
      *(v27 + 9) = v33;
      *(v27 + 7) = v31;
      if (!v5)
      {
        break;
      }

      --v5;
      v4 += 136;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    v6 = v7;
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v34 = sub_1DACB8C94();
  __swift_project_value_buffer(v34, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v35 = sub_1DACB8C74();
  v36 = sub_1DACB9914();

  if (os_log_type_enabled(v35, v36))
  {
    v67 = v6;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    v69[0] = v38;
    *v37 = 136315650;
    v40 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v62 = v38;
      v63 = v36;
      v64 = v37;
      v65 = v35;
      v66 = v7;
      v41 = *(v0 + 488);
      v68 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v2, 0);
      v40 = v68;
      v42 = *(v68 + 16);
      v43 = 16 * v42;
      v44 = (v41 + 40);
      do
      {
        v45 = *(v44 - 1);
        v46 = *v44;
        v47 = v42 + 1;
        v48 = *(v68 + 24);
        sub_1DACB71E4();
        if (v42 >= v48 >> 1)
        {
          sub_1DAA5859C((v48 > 1), v47, 1);
        }

        *(v68 + 16) = v47;
        v49 = v68 + v43;
        *(v49 + 32) = v45;
        *(v49 + 40) = v46;
        v43 += 16;
        v44 += 17;
        ++v42;
        --v2;
      }

      while (v2);
      v35 = v65;
      v7 = v66;
      v37 = v64;
      v36 = v63;
      v39 = v62;
    }

    *(v0 + 472) = v40;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v50 = sub_1DACB9214();
    v52 = v51;

    v53 = sub_1DAA7ABE4(v50, v52, v69);

    *(v37 + 4) = v53;
    *(v37 + 12) = 2080;
    v54 = sub_1DAB81DD8(v7);
    v56 = sub_1DAA7ABE4(v54, v55, v69);

    *(v37 + 14) = v56;
    *(v37 + 22) = 2080;
    v6 = v67;
    v57 = sub_1DAB81DD8(v67);
    v59 = sub_1DAA7ABE4(v57, v58, v69);

    *(v37 + 24) = v59;

    _os_log_impl(&dword_1DAA3F000, v35, v36, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v39, -1, -1);
    MEMORY[0x1E1278C00](v37, -1, -1);
  }

  else
  {
  }

  sub_1DAB7CE48(v7, v6, *(v0 + 480));

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1DAB7F8FC()
{
  sub_1DAB82354(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE8030);
  __swift_project_value_buffer(v1, qword_1ECBE8030);
  sub_1DAB823B8();
  return sub_1DACB7194();
}

uint64_t sub_1DAB7F97C()
{
  sub_1DAB84638(0);
  swift_getKeyPath();
  sub_1DACB7114();
  sub_1DAB823B8();
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  sub_1DACB7114();
  v1 = sub_1DACB71F4();

  sub_1DAA61540(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACCB1F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  sub_1DACB71F4();
  v3 = sub_1DACB7394();

  return v3;
}

uint64_t sub_1DAB7FBCC(uint64_t a1, uint64_t a2)
{
  sub_1DAB8470C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = v4;
  v6 = MEMORY[0x1EEE9AC00](v2);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  sub_1DAB847D4(0);
  swift_allocObject();
  sub_1DACB70C4();
  sub_1DAB823B8();
  sub_1DACB73E4();

  sub_1DAB84894(0);
  swift_allocObject();
  sub_1DACB7064();
  sub_1DACB73E4();

  sub_1DAB8495C(0, &qword_1ECBE80B8, sub_1DAB8470C, MEMORY[0x1E69E6F90]);
  v11 = *(v4 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DACC1D40;
  v14 = v13 + v12;
  v15 = *(v5 + 16);
  v15(v14, v10, v3);
  v15(v14 + v11, v8, v3);
  sub_1DAB84A48(0, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
  sub_1DAA8D9E8();
  v16 = sub_1DACB73D4();

  v17 = *(v5 + 8);
  v17(v8, v3);
  v17(v10, v3);
  return v16;
}

uint64_t sub_1DAB7FEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a4;
  a5[3] = v9;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAB7FFB4@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *a4 = v7;
  a4[1] = v6;
  a4[2] = a3;
  a4[3] = v8;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAB8000C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE0 != -1)
  {
    swift_once();
  }

  sub_1DAB82354(0);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8030);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB800B4()
{
  sub_1DAB84A48(0, &qword_1ECBE8068, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A540]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE8048);
  __swift_project_value_buffer(v1, qword_1ECBE8048);
  sub_1DAB823B8();
  return sub_1DACB72F4();
}

uint64_t sub_1DAB8016C()
{
  sub_1DAB84A48(0, &qword_1ECBE8088, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A630]);
  v1 = v0;
  v30 = *(v0 - 8);
  v2 = v30;
  v28 = v30;
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v31 = &v27 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v27 - v11;
  swift_getKeyPath();
  sub_1DAB823B8();
  sub_1DAB07424();
  sub_1DACB73F4();
  sub_1DACB7444();
  v12 = *(v2 + 8);
  v29 = v10;
  v12(v10, v1);
  swift_getKeyPath();
  v13 = v31;
  sub_1DACB73F4();
  sub_1DACB7444();
  v27 = v12;
  v12(v13, v1);
  swift_getKeyPath();
  sub_1DACB73F4();
  sub_1DACB7444();
  v12(v5, v1);
  sub_1DAB845A8(0);
  v14 = *(v30 + 72);
  v15 = v28;
  v16 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v17 = 2 * v14;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC2610;
  v19 = v18 + v16;
  v20 = *(v15 + 16);
  v20(v19, v32, v1);
  v21 = v19 + v14;
  v22 = v29;
  v20(v21, v29, v1);
  v23 = v31;
  v20(v19 + v17, v31, v1);
  v24 = sub_1DACB7434();

  v25 = v27;
  v27(v23, v1);
  v25(v22, v1);
  v25(v32, v1);
  return v24;
}

uint64_t sub_1DAB804DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE8 != -1)
  {
    swift_once();
  }

  sub_1DAB84A48(0, &qword_1ECBE8068, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8048);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB805BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 289) = a6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 288) = a3;
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
  *(v7 + 160) = *v6;
  *(v7 + 176) = *(v6 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAB805F8, 0, 0);
}

uint64_t sub_1DAB805F8()
{
  v32 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_1EE11D390);
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 289);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 134218754;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2080;
    v10 = sub_1DACB72E4();
    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v12 = 6581857;
    }

    else
    {
      v12 = 29295;
    }

    if (v11)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_1DAA7ABE4(v12, v13, &v31);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2048;
    v15 = *(v5 + 16);

    *(v8 + 24) = v15;

    *(v8 + 32) = 2048;
    if (v4)
    {
      v16 = 0;
    }

    else
    {
      v16 = v6;
    }

    *(v8 + 34) = v16;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Querying stocks for symbol entities matching property queryCount=%ld, comparatorMode=%s, sortCount=%ld, limit=%ld", v8, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = *(v0 + 136);
  v18 = v17[2];
  *(v0 + 192) = v18;
  if (v18)
  {
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    v19 = v17[4];
    *(v0 + 216) = v19;
    v20 = v17[5];
    *(v0 + 224) = v20;
    *(v0 + 232) = v17[6];
    *(v0 + 240) = v17[7];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v21 = sub_1DACB8C74();
    v22 = sub_1DACB98F4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      sub_1DACB71E4();
      v25 = sub_1DAA7ABE4(v19, v20, &v31);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DAA3F000, v21, v22, "Querying stocks for symbol entities matching property query=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E1278C00](v24, -1, -1);
      MEMORY[0x1E1278C00](v23, -1, -1);
    }

    sub_1DACB6D24();
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
    *(v0 + 248) = sub_1DAAEA918(v19, v20, v26, v27);
    v28 = swift_task_alloc();
    *(v0 + 256) = v28;
    *v28 = v0;
    v28[1] = sub_1DAB80A38;

    return MEMORY[0x1EEE44EE0](v0 + 80);
  }

  else
  {
    sub_1DAADD25C();
    sub_1DACB7154();
    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1DAB80A38()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    v3 = sub_1DAB81AFC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAB80B70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAB80B70()
{
  v113 = v0;
  v1 = sub_1DAB072D8(*(v0 + 80));

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 264);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v111 = v8;
    *v7 = 136315394;
    sub_1DACB71E4();
    v9 = sub_1DAA7ABE4(v6, v5, &v111);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    *(v0 + 120) = sub_1DAB7B61C(v1);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v10 = sub_1DACB9214();
    v12 = v11;

    v13 = sub_1DAA7ABE4(v10, v12, &v111);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Successfully found stocks for symbol entities matching property query=%s, results=[%s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  else
  {

    v4 = *(v0 + 264);
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  sub_1DACB71F4();
  v16 = sub_1DAB82B40(v15, v14, v1);
  sub_1DACB71E4();

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v17 = sub_1DACB8C74();
  v18 = sub_1DACB98F4();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v111 = v22;
    *v21 = 136315394;
    sub_1DACB71E4();
    v23 = sub_1DAA7ABE4(v20, v19, &v111);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2080;
    *(v0 + 112) = sub_1DAB7B61C(v16);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v24 = sub_1DACB9214();
    v26 = v25;

    v27 = sub_1DAA7ABE4(v24, v26, &v111);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1DAA3F000, v17, v18, "Filtered stocks for symbol entities matching property query=%s, filtered=[%s]", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v22, -1, -1);
    MEMORY[0x1E1278C00](v21, -1, -1);
  }

  v28 = *(v0 + 200);

  if (!v28)
  {
    v30 = sub_1DACB8C74();
    v31 = sub_1DACB98F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DAA3F000, v30, v31, "No existing result for symbol property queries, so storing first results", v32, 2u);
      MEMORY[0x1E1278C00](v32, -1, -1);
    }

    goto LABEL_21;
  }

  v29 = *(v0 + 200);
  if (*(v0 + 288))
  {
    v16 = sub_1DAB01D3C(v16, v29);
    sub_1DACB71E4();
  }

  else
  {
    v33 = sub_1DAB0387C(v16, v29);

    sub_1DACB71F4();
    v16 = v33;
  }

  sub_1DACB71E4();
  v34 = sub_1DACB8C74();
  v35 = sub_1DACB98F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v111 = v37;
    *v36 = 136315394;
    v38 = sub_1DAB7B61C(v16);

    *(v0 + 104) = v38;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v39 = sub_1DACB9214();
    v41 = v40;

    v42 = sub_1DAA7ABE4(v39, v41, &v111);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    v43 = sub_1DACB72E4();
    v44 = (v43 & 1) == 0;
    if (v43)
    {
      v45 = 6581857;
    }

    else
    {
      v45 = 29295;
    }

    if (v44)
    {
      v46 = 0xE200000000000000;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_1DAA7ABE4(v45, v46, &v111);

    *(v36 + 14) = v47;
    _os_log_impl(&dword_1DAA3F000, v34, v35, "Combined stock query results into accumulated results=[%s], comparatorMode=%s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v37, -1, -1);
    MEMORY[0x1E1278C00](v36, -1, -1);

LABEL_21:

    goto LABEL_23;
  }

LABEL_23:
  v48 = *(v0 + 208) + 1;
  if (v48 == *(v0 + 192))
  {
    sub_1DACB71E4();
    v49 = sub_1DACB8C74();
    v50 = sub_1DACB9914();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v111 = v52;
      *v51 = 136315138;
      *(v0 + 96) = sub_1DAB7B61C(v16);
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v53 = sub_1DACB9214();
      v55 = v54;

      v56 = sub_1DAA7ABE4(v53, v55, &v111);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_1DAA3F000, v49, v50, "Successfully applied all queries, found stocks=[%s]", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1E1278C00](v52, -1, -1);
      MEMORY[0x1E1278C00](v51, -1, -1);
    }

    v57 = *(v16 + 16);
    if (v57)
    {
      v108 = v4;
      v58 = sub_1DAB02C90(v57, 0);
      v59 = sub_1DAB05AA0(&v111, v58 + 32, v57, v16);
      v60 = v111;
      sub_1DACB71E4();
      sub_1DAA54B38(v60);
      if (v59 != v57)
      {
        __break(1u);
        goto LABEL_59;
      }

      v4 = v108;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    v73 = *(v0 + 144);
    v111 = v58;
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAB8429C(&v111, v73);
    if (v4)
    {
    }

    v60 = v111;
    sub_1DACB71F4();
    v74 = sub_1DACB8C74();
    v75 = sub_1DACB9914();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v78 = v77;
      v112 = v77;
      *v76 = 136315138;
      v79 = *(v60 + 2);
      v80 = MEMORY[0x1E69E7CC0];
      if (v79)
      {
        v105 = v77;
        v106 = v75;
        v107 = v76;
        v109 = v74;
        v111 = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v79, 0);
        v80 = v111;
        v81 = *(v111 + 2);
        v82 = 16 * v81;
        v110 = v60;
        v83 = (v60 + 40);
        do
        {
          v84 = *(v83 - 1);
          v85 = *v83;
          v111 = v80;
          v86 = v81 + 1;
          v87 = *(v80 + 3);
          sub_1DACB71E4();
          if (v81 >= v87 >> 1)
          {
            sub_1DAA5859C((v87 > 1), v86, 1);
            v80 = v111;
          }

          *(v80 + 2) = v86;
          v88 = &v80[v82];
          *(v88 + 4) = v84;
          *(v88 + 5) = v85;
          v82 += 16;
          v83 += 17;
          ++v81;
          --v79;
        }

        while (v79);
        v74 = v109;
        v60 = v110;
        v76 = v107;
        v75 = v106;
        v78 = v105;
      }

      *(v0 + 88) = v80;
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v89 = sub_1DACB9214();
      v91 = v90;

      v92 = sub_1DAA7ABE4(v89, v91, &v112);

      *(v76 + 4) = v92;
      _os_log_impl(&dword_1DAA3F000, v74, v75, "Applied sorts to sortedStocks=[%s]", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1E1278C00](v78, -1, -1);
      MEMORY[0x1E1278C00](v76, -1, -1);
    }

    v61 = *(v0 + 289);
    if (v61)
    {

LABEL_55:
      *(v0 + 272) = v60;
      v99 = *(v0 + 176);
      *(v0 + 56) = *(v0 + 160);
      *(v0 + 72) = v99;
      v100 = swift_task_alloc();
      *(v0 + 280) = v100;
      *v100 = v0;
      v100[1] = sub_1DAB819E8;
      v101 = *(v0 + 128);

      return sub_1DAB7EB7C(v101, v60);
    }

    v93 = *(v0 + 152);
    if ((v93 & 0x8000000000000000) == 0)
    {
      v94 = *(v60 + 2);

      if (v94 >= v93)
      {
        v61 = *(v0 + 152);
        if (*(v60 + 2) == v61)
        {
LABEL_52:
          v95 = sub_1DACB8C74();
          v96 = sub_1DACB9914();
          if (os_log_type_enabled(v95, v96))
          {
            v97 = *(v0 + 152);
            v98 = swift_slowAlloc();
            *v98 = 134217984;
            *(v98 + 4) = v97;
            _os_log_impl(&dword_1DAA3F000, v95, v96, "Limited results down to limit=%ld", v98, 0xCu);
            MEMORY[0x1E1278C00](v98, -1, -1);
          }

          goto LABEL_55;
        }

LABEL_61:
        sub_1DAB03214(v60, (v60 + 32), 0, (2 * v61) | 1);
        v103 = v102;

        v60 = v103;
        goto LABEL_52;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v0 + 200) = v16;
  *(v0 + 208) = v48;
  v62 = (*(v0 + 136) + 32 * v48);
  v63 = v62[4];
  *(v0 + 216) = v63;
  v64 = v62[5];
  *(v0 + 224) = v64;
  *(v0 + 232) = v62[6];
  *(v0 + 240) = v62[7];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v65 = sub_1DACB8C74();
  v66 = sub_1DACB98F4();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v111 = v68;
    *v67 = 136315138;
    sub_1DACB71E4();
    v69 = sub_1DAA7ABE4(v63, v64, &v111);

    *(v67 + 4) = v69;
    _os_log_impl(&dword_1DAA3F000, v65, v66, "Querying stocks for symbol entities matching property query=%s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1E1278C00](v68, -1, -1);
    MEMORY[0x1E1278C00](v67, -1, -1);
  }

  sub_1DACB6D24();
  v71 = *(v0 + 40);
  v70 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v71);
  *(v0 + 248) = sub_1DAAEA918(v63, v64, v71, v70);
  v72 = swift_task_alloc();
  *(v0 + 256) = v72;
  *v72 = v0;
  v72[1] = sub_1DAB80A38;

  return MEMORY[0x1EEE44EE0](v0 + 80);
}

uint64_t sub_1DAB819E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAB81AFC()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB81B74@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE0 != -1)
  {
    swift_once();
  }

  sub_1DAB82354(0);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8030);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB81C1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5AE8 != -1)
  {
    swift_once();
  }

  sub_1DAB84A48(0, &qword_1ECBE8068, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A540]);
  v3 = v2;
  v4 = __swift_project_value_buffer(v2, qword_1ECBE8048);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_1DAB81D00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAA9A3AC;

  return sub_1DAB805BC(a1, a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_1DAB81DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      sub_1DACB71E4();
      if (v7 >= v6 >> 1)
      {
        sub_1DAA5859C((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 17;
      --v1;
    }

    while (v1);
  }

  sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1DAA587CC();
  v9 = sub_1DACB9214();

  return v9;
}

uint64_t sub_1DAB81F0C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_1DAB84A48(0, &qword_1ECBE8080, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A128]);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = a1[7];
  v64 = a1[6];
  v65 = v11;
  v66 = *(a1 + 16);
  v12 = a1[3];
  v60 = a1[2];
  v61 = v12;
  v13 = a1[5];
  v62 = a1[4];
  v63 = v13;
  v14 = a1[1];
  v58 = *a1;
  v59 = v14;
  v15 = a2[7];
  v73 = a2[6];
  v74 = v15;
  v75 = *(a2 + 16);
  v16 = a2[3];
  v69 = a2[2];
  v70 = v16;
  v17 = a2[5];
  v71 = a2[4];
  v72 = v17;
  v18 = a2[1];
  v67 = *a2;
  v68 = v18;
  v19 = *(a3 + 16);
  if (v19)
  {
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v32 = v21;
    v33 = (v20 - 8);
    v22 = a3 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v34 = v20;
    v31 = *(v20 + 56);
    v21(v10, v22, v7);
    while (1)
    {
      v53 = v64;
      v54 = v65;
      v55 = v66;
      v49 = v60;
      v50 = v61;
      v51 = v62;
      v52 = v63;
      v47 = v58;
      v48 = v59;
      sub_1DAA806E4(&v58, v46);
      sub_1DAB9BFD8(&v47, v56);
      sub_1DACB6F74();
      v42 = v56[0];
      v43 = v56[1];
      v44 = v56[2];
      v45 = v56[3];
      swift_getAtPartialKeyPath();

      v57[0] = v42;
      v57[1] = v43;
      v57[2] = v44;
      v57[3] = v45;
      sub_1DAB84554(v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_17:
        MEMORY[0x1E1275DD0]("Encountered a SymbolWidgetEntity value in SymbolQuery which is not a String. We need to add explicit support for this in the property queries.", 142, 2, MEMORY[0x1E69E7CC0]);
        (*v33)(v10, v7);
        return 1;
      }

      v76 = v22;
      v35 = v19;
      v25 = v40;
      v24 = v41;
      v53 = v73;
      v54 = v74;
      v55 = v75;
      v49 = v69;
      v50 = v70;
      v51 = v71;
      v52 = v72;
      v47 = v67;
      v48 = v68;
      sub_1DAA806E4(&v67, v46);
      sub_1DAB9BFD8(&v47, v38);
      sub_1DACB6F74();
      v47 = v38[0];
      v48 = v38[1];
      v49 = v38[2];
      v50 = v38[3];
      swift_getAtPartialKeyPath();

      v39[0] = v47;
      v39[1] = v48;
      v39[2] = v49;
      v39[3] = v50;
      sub_1DAB84554(v39);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_17;
      }

      v26 = v36;
      v27 = v37;
      if (sub_1DACB6F84())
      {
        if (v25 == v26 && v24 == v27)
        {
          goto LABEL_3;
        }
      }

      else if (v26 == v25 && v27 == v24)
      {
LABEL_3:

        (*v33)(v10, v7);
        v23 = v76;
        goto LABEL_4;
      }

      v28 = sub_1DACBA174();

      (*v33)(v10, v7);
      v23 = v76;
      if (v28)
      {
        return 1;
      }

LABEL_4:
      v22 = v23 + v31;
      v19 = v35 - 1;
      if (v35 == 1)
      {
        return 1;
      }

      v32(v10, v22, v7);
    }
  }

  return 1;
}

void sub_1DAB82354(uint64_t a1)
{
  if (!qword_1ECBE8060)
  {
    sub_1DAB823B8();
    v1 = sub_1DACB71A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8060);
    }
  }
}

unint64_t sub_1DAB823B8()
{
  result = qword_1EE11E718;
  if (!qword_1EE11E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E718);
  }

  return result;
}

uint64_t sub_1DAB8240C(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v9 = a3;
  v10 = __src;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 136;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 136;
  if (v12 < v14)
  {
    v15 = __dst;
    if (a4 != __dst || &__dst[136 * v12] <= a4)
    {
      memmove(a4, __dst, 136 * v12);
    }

    v16 = (v8 + 136 * v12);
    if (v11 < 136)
    {
LABEL_6:
      v10 = v15;
      goto LABEL_50;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v98 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v101 = *(v10 + 3);
      v102 = v21;
      v99 = v19;
      v100 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v106 = *(v10 + 16);
      v104 = v23;
      v105 = v24;
      v103 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v107 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v110 = *(v8 + 48);
      v111 = v27;
      v108 = v25;
      v109 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v115 = *(v8 + 128);
      v113 = v29;
      v114 = v30;
      v112 = v28;
      memmove(&v80, v8, 0x88uLL);
      sub_1DAA806E4(&v98, &v71);
      sub_1DAA806E4(&v107, &v71);
      v31 = sub_1DAB81F0C(&__dsta, &v80, a5);
      if (v5)
      {
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v67 = v85;
        v62 = v80;
        v63 = v81;
        sub_1DAA9B1C8(&v62);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v73 = v91;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v71 = __dsta;
        v72 = v90;
        sub_1DAA9B1C8(&v71);
        v56 = &v16[-v8] / 136;
        if (v15 < v8 || v15 >= v8 + 136 * v56 || v15 != v8)
        {
          v57 = 136 * v56;
          v58 = v15;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v32 = v31;
      v68 = v86;
      v69 = v87;
      v70 = v88;
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v62 = v80;
      v63 = v81;
      sub_1DAA9B1C8(&v62);
      v77 = v95;
      v78 = v96;
      v79 = v97;
      v73 = v91;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v71 = __dsta;
      v72 = v90;
      sub_1DAA9B1C8(&v71);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v15 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v15 = (v15 + 136);
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v15 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v15, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v14] <= a4)
  {
    memmove(a4, __src, 136 * v14);
  }

  v16 = (v8 + 136 * v14);
  if (v13 < 136 || v10 <= __dst)
  {
LABEL_50:
    v59 = &v16[-v8] / 136;
    if (v10 < v8 || v10 >= v8 + 136 * v59 || v10 != v8)
    {
      v57 = 136 * v59;
      v58 = v10;
LABEL_54:
      memmove(v58, v8, v57);
    }

    goto LABEL_55;
  }

  v33 = -v8;
  v116 = a5;
LABEL_22:
  v34 = v10 - 136;
  v35 = &v16[v33];
  v9 = (v9 - 136);
  v36 = v16;
  while (1)
  {
    v16 = v36;
    v36 -= 136;
    v98 = *(v16 - 136);
    v37 = *(v16 - 120);
    v38 = *(v16 - 104);
    v39 = *(v16 - 72);
    v101 = *(v16 - 88);
    v102 = v39;
    v99 = v37;
    v100 = v38;
    v40 = *(v16 - 56);
    v41 = *(v16 - 40);
    v42 = *(v16 - 24);
    v106 = *(v16 - 1);
    v104 = v41;
    v105 = v42;
    v103 = v40;
    memmove(&__dsta, v36, 0x88uLL);
    v43 = *(v10 - 56);
    v44 = *(v10 - 24);
    v113 = *(v10 - 40);
    v114 = v44;
    v45 = *(v10 - 120);
    v46 = *(v10 - 88);
    v109 = *(v10 - 104);
    v110 = v46;
    v47 = *(v10 - 88);
    v48 = *(v10 - 56);
    v111 = *(v10 - 72);
    v112 = v48;
    v49 = *(v10 - 120);
    v107 = *v34;
    v108 = v49;
    v50 = *(v10 - 24);
    v86 = v113;
    v87 = v50;
    v82 = v109;
    v83 = v47;
    v84 = v111;
    v85 = v43;
    v115 = *(v10 - 1);
    v88 = *(v10 - 1);
    v80 = v107;
    v81 = v45;
    sub_1DAA806E4(&v98, &v71);
    sub_1DAA806E4(&v107, &v71);
    v51 = sub_1DAB81F0C(&__dsta, &v80, a5);
    if (v6)
    {
      break;
    }

    v52 = v51;
    v68 = v86;
    v69 = v87;
    v70 = v88;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v62 = v80;
    v63 = v81;
    sub_1DAA9B1C8(&v62);
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v73 = v91;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v71 = __dsta;
    v72 = v90;
    sub_1DAA9B1C8(&v71);
    v53 = v9 + 136;
    if (v52)
    {
      if (v53 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v6 = 0;
        v54 = __dst;
      }

      else
      {
        v54 = __dst;
        if (v53 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }

        v6 = 0;
      }

      a5 = v116;
      if (v16 <= v8 || (v10 -= 136, v33 = -v8, v34 <= v54))
      {
        v10 = v34;
        goto LABEL_50;
      }

      goto LABEL_22;
    }

    if (v53 < v16 || v9 >= v16)
    {
      memmove(v9, v36, 0x88uLL);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (v53 != v16)
      {
        memmove(v9, v36, 0x88uLL);
      }
    }

    a5 = v116;
    v35 -= 136;
    v9 = (v9 - 136);
    if (v36 <= v8)
    {
      v16 = v36;
      goto LABEL_50;
    }
  }

  v68 = v86;
  v69 = v87;
  v70 = v88;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v62 = v80;
  v63 = v81;
  sub_1DAA9B1C8(&v62);
  v77 = v95;
  v78 = v96;
  v79 = v97;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v71 = __dsta;
  v72 = v90;
  sub_1DAA9B1C8(&v71);
  v55 = v35 / 136;
  if (v10 < v8 || v10 >= v8 + 136 * v55)
  {
    memmove(v10, v8, 136 * v55);

    return 1;
  }

  if (v10 != v8)
  {
    memmove(v10, v8, 136 * v55);
  }

LABEL_55:

  return 1;
}

unint64_t *sub_1DAB82AB0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1DAB82EAC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_1DAB82B40(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v39 = a1;
  v61 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v7;
    v40 = v4;
    v37 = &v35;
    MEMORY[0x1EEE9AC00](a1);
    v36 = &v35 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v8);
    v38 = 0;
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    if (v13)
    {
      break;
    }

LABEL_6:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        return sub_1DAB05504(v36, v35, v38, v5);
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    sub_1DACB71F4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v33 = swift_slowAlloc();
      v34 = sub_1DAB82AB0(v33, v7, v5, v39);

      result = MEMORY[0x1E1278C00](v33, -1, -1);
      if (!v4)
      {
        return v34;
      }

      return result;
    }
  }

  while (1)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v7 = v5;
    v4 = v15 | (v9 << 6);
    v18 = *(v5 + 48) + 136 * v4;
    v59[0] = *v18;
    v19 = *(v18 + 64);
    v21 = *(v18 + 16);
    v20 = *(v18 + 32);
    v59[3] = *(v18 + 48);
    v59[4] = v19;
    v59[1] = v21;
    v59[2] = v20;
    v23 = *(v18 + 96);
    v22 = *(v18 + 112);
    v24 = *(v18 + 80);
    v60 = *(v18 + 128);
    v59[6] = v23;
    v59[7] = v22;
    v59[5] = v24;
    v25 = *(v18 + 112);
    v56 = *(v18 + 96);
    v57 = v25;
    v58 = *(v18 + 128);
    v26 = *(v18 + 48);
    v52 = *(v18 + 32);
    v53 = v26;
    v27 = *(v18 + 80);
    v54 = *(v18 + 64);
    v55 = v27;
    v28 = *(v18 + 16);
    v50 = *v18;
    v51 = v28;
    sub_1DAA806E4(v59, &v41);
    v29 = v40;
    v30 = v39(&v50);
    v40 = v29;
    if (v29)
    {
      v47 = v56;
      v48 = v57;
      v49 = v58;
      v43 = v52;
      v44 = v53;
      v45 = v54;
      v46 = v55;
      v41 = v50;
      v42 = v51;
      sub_1DAA9B1C8(&v41);

      return swift_willThrow();
    }

    v5 = v30;
    v47 = v56;
    v48 = v57;
    v49 = v58;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v41 = v50;
    v42 = v51;
    sub_1DAA9B1C8(&v41);
    if (v5)
    {
      *&v36[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
      if (__OFADD__(v38++, 1))
      {
        break;
      }
    }

    v5 = v7;
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return sub_1DAB05504(v36, v35, v38, v5);
}

unint64_t *sub_1DAB82EAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v53 = a4;
  v31 = result;
  v32 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 48) + 136 * v15;
    v51[0] = *v16;
    v17 = *(v16 + 64);
    v19 = *(v16 + 16);
    v18 = *(v16 + 32);
    v51[3] = *(v16 + 48);
    v51[4] = v17;
    v51[1] = v19;
    v51[2] = v18;
    v21 = *(v16 + 96);
    v20 = *(v16 + 112);
    v22 = *(v16 + 80);
    v52 = *(v16 + 128);
    v51[6] = v21;
    v51[7] = v20;
    v51[5] = v22;
    v23 = *(v16 + 112);
    v48 = *(v16 + 96);
    v49 = v23;
    v50 = *(v16 + 128);
    v24 = *(v16 + 48);
    v44 = *(v16 + 32);
    v45 = v24;
    v25 = *(v16 + 80);
    v46 = *(v16 + 64);
    v47 = v25;
    v26 = *(v16 + 16);
    v42 = *v16;
    v43 = v26;
    sub_1DAA806E4(v51, &v33);
    v27 = v53(&v42);
    if (v4)
    {
      v39 = v48;
      v40 = v49;
      v41 = v50;
      v35 = v44;
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v33 = v42;
      v34 = v43;
      return sub_1DAA9B1C8(&v33);
    }

    v28 = v27;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    v33 = v42;
    v34 = v43;
    result = sub_1DAA9B1C8(&v33);
    if (v28)
    {
      *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DACB71F4();
        return sub_1DAB05504(v31, a2, v32, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB830D4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v169 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v164 = a4;
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if ((v9 + 1) >= v8)
    {
      v62 = (v9 + 1);
    }

    else
    {
      v13 = *a3;
      v14 = *a3 + 136 * v12;
      v241 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v245 = *(v14 + 64);
      v244 = v17;
      v243 = v16;
      v242 = v15;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v249 = *(v14 + 128);
      v248 = v20;
      v247 = v19;
      v246 = v18;
      v21 = *(v14 + 112);
      v238 = *(v14 + 96);
      v239 = v21;
      v240 = *(v14 + 128);
      v22 = *(v14 + 48);
      v234 = *(v14 + 32);
      v235 = v22;
      v23 = *(v14 + 64);
      v237 = *(v14 + 80);
      v236 = v23;
      v24 = *v14;
      v233 = *(v14 + 16);
      v232 = v24;
      v25 = v13 + 136 * v11;
      v250 = *v25;
      v26 = *(v25 + 16);
      v27 = *(v25 + 32);
      v28 = *(v25 + 64);
      v253 = *(v25 + 48);
      v254 = v28;
      v251 = v26;
      v252 = v27;
      v29 = *(v25 + 80);
      v30 = *(v25 + 96);
      v31 = *(v25 + 112);
      v258 = *(v25 + 128);
      v256 = v30;
      v257 = v31;
      v255 = v29;
      v32 = *(v25 + 112);
      v229 = *(v25 + 96);
      v230 = v32;
      v231 = *(v25 + 128);
      v33 = *(v25 + 48);
      v225 = *(v25 + 32);
      v226 = v33;
      v34 = *(v25 + 64);
      v228 = *(v25 + 80);
      v227 = v34;
      v35 = *v25;
      v224 = *(v25 + 16);
      v223 = v35;
      sub_1DAA806E4(&v241, &v214);
      sub_1DAA806E4(&v250, &v214);
      v36 = sub_1DAB81F0C(&v232, &v223, a5);
      if (v6)
      {
LABEL_105:
        v211 = v229;
        v212 = v230;
        v213 = v231;
        v207 = v225;
        v208 = v226;
        v209 = v227;
        v210 = v228;
        v205 = v223;
        v206 = v224;
        sub_1DAA9B1C8(&v205);
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v216 = v234;
        v217 = v235;
        v219 = v237;
        v218 = v236;
        v215 = v233;
        v214 = v232;
        sub_1DAA9B1C8(&v214);
LABEL_106:
        swift_bridgeObjectRelease_n();
      }

      v37 = v36;
      v211 = v229;
      v212 = v230;
      v213 = v231;
      v207 = v225;
      v208 = v226;
      v209 = v227;
      v210 = v228;
      v205 = v223;
      v206 = v224;
      sub_1DAA9B1C8(&v205);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v219 = v237;
      v218 = v236;
      v215 = v233;
      v214 = v232;
      sub_1DAA9B1C8(&v214);
      v38 = v11 + 2;
      if ((v11 + 2) >= v8)
      {
        v62 = (v11 + 2);
        if (v37)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v169 = v11;
        v39 = v13 + 136 * v11 + 272;
        while (1)
        {
          v40 = v38;
          v194[0] = *v39;
          v41 = *(v39 + 16);
          v42 = *(v39 + 32);
          v43 = *(v39 + 64);
          v194[3] = *(v39 + 48);
          v194[4] = v43;
          v194[1] = v41;
          v194[2] = v42;
          v44 = *(v39 + 80);
          v45 = *(v39 + 96);
          v46 = *(v39 + 112);
          v195 = *(v39 + 128);
          v194[6] = v45;
          v194[7] = v46;
          v194[5] = v44;
          v47 = *(v39 + 112);
          v191 = *(v39 + 96);
          v192 = v47;
          v193 = *(v39 + 128);
          v48 = *(v39 + 48);
          v187 = *(v39 + 32);
          v188 = v48;
          v49 = *(v39 + 80);
          v189 = *(v39 + 64);
          v190 = v49;
          v50 = *(v39 + 16);
          v185 = *v39;
          v186 = v50;
          v196 = *(v39 - 136);
          v51 = *(v39 - 120);
          v52 = *(v39 - 104);
          v53 = *(v39 - 72);
          v199 = *(v39 - 88);
          v200 = v53;
          v197 = v51;
          v198 = v52;
          v54 = *(v39 - 56);
          v55 = *(v39 - 40);
          v56 = *(v39 - 24);
          v204 = *(v39 - 8);
          v202 = v55;
          v203 = v56;
          v201 = v54;
          v57 = *(v39 - 56);
          v58 = *(v39 - 24);
          v182 = *(v39 - 40);
          v183 = v58;
          v184 = *(v39 - 8);
          v59 = *(v39 - 120);
          v60 = *(v39 - 88);
          v178 = *(v39 - 104);
          v179 = v60;
          v180 = *(v39 - 72);
          v181 = v57;
          v176 = *(v39 - 136);
          v177 = v59;
          sub_1DAA806E4(v194, v174);
          sub_1DAA806E4(&v196, v174);
          v61 = sub_1DAB81F0C(&v185, &v176, a5);
          v172[6] = v182;
          v172[7] = v183;
          v173 = v184;
          v172[2] = v178;
          v172[3] = v179;
          v172[4] = v180;
          v172[5] = v181;
          v172[0] = v176;
          v172[1] = v177;
          sub_1DAA9B1C8(v172);
          v174[6] = v191;
          v174[7] = v192;
          v175 = v193;
          v174[2] = v187;
          v174[3] = v188;
          v174[4] = v189;
          v174[5] = v190;
          v174[0] = v185;
          v174[1] = v186;
          sub_1DAA9B1C8(v174);
          if ((v37 ^ v61))
          {
            break;
          }

          v38 = (v40 + 1);
          v39 += 136;
          if (v8 == v40 + 1)
          {
            v12 = v40;
            v62 = v8;
            goto LABEL_15;
          }
        }

        v62 = v40;
        v12 = v40 - 1;
LABEL_15:
        v11 = v169;
        if (v37)
        {
LABEL_16:
          if (v62 < v11)
          {
            goto LABEL_128;
          }

          if (v11 <= v12)
          {
            v63 = v11;
            v64 = 136 * v62 - 136;
            v65 = 136 * v63;
            v166 = v62;
            v66 = v63;
            do
            {
              if (v63 != --v62)
              {
                v67 = *a3;
                if (!*a3)
                {
                  goto LABEL_132;
                }

                v68 = v67 + v64;
                v201 = *(v67 + v65 + 80);
                v202 = *(v67 + v65 + 96);
                v203 = *(v67 + v65 + 112);
                v204 = *(v67 + v65 + 128);
                v197 = *(v67 + v65 + 16);
                v198 = *(v67 + v65 + 32);
                v199 = *(v67 + v65 + 48);
                v200 = *(v67 + v65 + 64);
                v196 = *(v67 + v65);
                memmove((v67 + v65), (v67 + v64), 0x88uLL);
                *(v68 + 80) = v201;
                *(v68 + 96) = v202;
                *(v68 + 112) = v203;
                *(v68 + 128) = v204;
                *(v68 + 16) = v197;
                *(v68 + 32) = v198;
                *(v68 + 48) = v199;
                *(v68 + 64) = v200;
                *v68 = v196;
              }

              ++v63;
              v64 -= 136;
              v65 += 136;
            }

            while (v63 < v62);
            v62 = v166;
            v11 = v66;
          }
        }
      }
    }

    v69 = a3[1];
    if (v62 >= v69)
    {
      goto LABEL_137;
    }

    if (__OFSUB__(v62, v11))
    {
      goto LABEL_124;
    }

    if (v62 - v11 >= a4)
    {
      goto LABEL_137;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_130:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_131;
    }

    if (&v11[a4] >= v69)
    {
      v70 = a3[1];
    }

    else
    {
      v70 = &v11[a4];
    }

    if (v70 < v11)
    {
      goto LABEL_127;
    }

    if (v62 == v70)
    {
LABEL_137:
      if (v62 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v121 = *a3;
      v122 = *a3 + 136 * v62;
      v123 = &v11[-v62 + 1];
      do
      {
        v168 = v62;
        v169 = v123;
        v124 = v123;
        v125 = v122;
        while (1)
        {
          v241 = *v122;
          v126 = *(v122 + 16);
          v127 = *(v122 + 32);
          v128 = *(v122 + 48);
          v245 = *(v122 + 64);
          v244 = v128;
          v243 = v127;
          v242 = v126;
          v129 = *(v122 + 80);
          v130 = *(v122 + 96);
          v131 = *(v122 + 112);
          v249 = *(v122 + 128);
          v248 = v131;
          v247 = v130;
          v246 = v129;
          v132 = *(v122 + 112);
          v238 = *(v122 + 96);
          v239 = v132;
          v240 = *(v122 + 128);
          v133 = *(v122 + 48);
          v234 = *(v122 + 32);
          v235 = v133;
          v134 = *(v122 + 64);
          v237 = *(v122 + 80);
          v236 = v134;
          v135 = *v122;
          v233 = *(v122 + 16);
          v232 = v135;
          v250 = *(v122 - 136);
          v136 = *(v122 - 120);
          v137 = *(v122 - 104);
          v138 = *(v122 - 72);
          v253 = *(v122 - 88);
          v254 = v138;
          v251 = v136;
          v252 = v137;
          v139 = *(v122 - 56);
          v140 = *(v122 - 40);
          v141 = *(v122 - 24);
          v258 = *(v122 - 8);
          v256 = v140;
          v257 = v141;
          v255 = v139;
          v142 = *(v122 - 56);
          v143 = *(v122 - 24);
          v229 = *(v122 - 40);
          v230 = v143;
          v231 = *(v122 - 8);
          v144 = *(v122 - 120);
          v145 = *(v122 - 88);
          v225 = *(v122 - 104);
          v226 = v145;
          v146 = *(v122 - 72);
          v228 = v142;
          v227 = v146;
          v147 = *(v122 - 136);
          v224 = v144;
          v223 = v147;
          sub_1DAA806E4(&v241, &v214);
          sub_1DAA806E4(&v250, &v214);
          v148 = sub_1DAB81F0C(&v232, &v223, a5);
          if (v6)
          {
            goto LABEL_105;
          }

          v149 = v148;
          v211 = v229;
          v212 = v230;
          v213 = v231;
          v207 = v225;
          v208 = v226;
          v209 = v227;
          v210 = v228;
          v205 = v223;
          v206 = v224;
          sub_1DAA9B1C8(&v205);
          v220 = v238;
          v221 = v239;
          v222 = v240;
          v216 = v234;
          v217 = v235;
          v219 = v237;
          v218 = v236;
          v215 = v233;
          v214 = v232;
          sub_1DAA9B1C8(&v214);
          if ((v149 & 1) == 0)
          {
            break;
          }

          if (!v121)
          {
            goto LABEL_130;
          }

          v150 = v122 - 136;
          v201 = *(v122 + 80);
          v202 = *(v122 + 96);
          v203 = *(v122 + 112);
          v204 = *(v122 + 128);
          v197 = *(v122 + 16);
          v198 = *(v122 + 32);
          v199 = *(v122 + 48);
          v200 = *(v122 + 64);
          v196 = *v122;
          v151 = *(v122 - 56);
          *(v122 + 64) = *(v122 - 72);
          *(v122 + 80) = v151;
          v152 = *(v122 - 24);
          *(v122 + 96) = *(v122 - 40);
          *(v122 + 112) = v152;
          *(v122 + 128) = *(v122 - 8);
          v153 = *(v122 - 88);
          *(v122 + 32) = *(v122 - 104);
          *(v122 + 48) = v153;
          v154 = *(v122 - 120);
          *v122 = *(v122 - 136);
          *(v122 + 16) = v154;
          *(v150 + 64) = v200;
          *(v150 + 80) = v201;
          *(v150 + 96) = v202;
          *(v150 + 112) = v203;
          *(v150 + 128) = v204;
          *(v150 + 16) = v197;
          *(v150 + 32) = v198;
          *(v150 + 48) = v199;
          *v150 = v196;
          if (!v124)
          {
            break;
          }

          ++v124;
          v122 -= 136;
        }

        v62 = v168 + 1;
        v122 = v125 + 136;
        v123 = (v169 - 1);
      }

      while (v168 + 1 != v70);
      v62 = v70;
      if (v70 < v11)
      {
        goto LABEL_123;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAADB818(0, *(v10 + 2) + 1, 1, v10);
    }

    v72 = *(v10 + 2);
    v71 = *(v10 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v10 = sub_1DAADB818((v71 > 1), v72 + 1, 1, v10);
    }

    *(v10 + 2) = v73;
    v74 = &v10[16 * v72];
    *(v74 + 4) = v11;
    *(v74 + 5) = v62;
    v167 = v62;
    v169 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v72)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v167;
    a4 = v164;
    if (v167 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v75 = v73 - 1;
    if (v73 >= 4)
    {
      v80 = &v10[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_110;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_111;
      }

      v87 = &v10[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_113;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_116;
      }

      if (v91 >= v83)
      {
        v109 = &v10[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_122;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v73 == 3)
    {
      v76 = *(v10 + 4);
      v77 = *(v10 + 5);
      v86 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      v79 = v86;
LABEL_53:
      if (v79)
      {
        goto LABEL_112;
      }

      v92 = &v10[16 * v73];
      v94 = *v92;
      v93 = *(v92 + 1);
      v95 = __OFSUB__(v93, v94);
      v96 = v93 - v94;
      v97 = v95;
      if (v95)
      {
        goto LABEL_115;
      }

      v98 = &v10[16 * v75 + 32];
      v100 = *v98;
      v99 = *(v98 + 1);
      v86 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v86)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v96, v101))
      {
        goto LABEL_119;
      }

      if (v96 + v101 >= v78)
      {
        if (v78 < v101)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v102 = &v10[16 * v73];
    v104 = *v102;
    v103 = *(v102 + 1);
    v86 = __OFSUB__(v103, v104);
    v96 = v103 - v104;
    v97 = v86;
LABEL_67:
    if (v97)
    {
      goto LABEL_114;
    }

    v105 = &v10[16 * v75];
    v107 = *(v105 + 4);
    v106 = *(v105 + 5);
    v86 = __OFSUB__(v106, v107);
    v108 = v106 - v107;
    if (v86)
    {
      goto LABEL_117;
    }

    if (v108 < v96)
    {
      goto LABEL_3;
    }

LABEL_74:
    v113 = v75 - 1;
    if (v75 - 1 >= v73)
    {
      break;
    }

    v114 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v115 = *&v10[16 * v113 + 32];
    v116 = *&v10[16 * v75 + 40];
    v117 = (v114 + 136 * v115);
    v118 = (v114 + 136 * *&v10[16 * v75 + 32]);
    v119 = (v114 + 136 * v116);
    sub_1DACB71E4();
    sub_1DAB8240C(v117, v118, v119, v169, a5);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v116 < v115)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAC0694C(v10);
    }

    if (v113 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v120 = &v10[16 * v113];
    *(v120 + 4) = v115;
    *(v120 + 5) = v116;
    v259 = v10;
    sub_1DAC068C0(v75);
    v10 = v259;
    v73 = *(v259 + 2);
    if (v73 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v10 = sub_1DAC0694C(v10);
LABEL_96:
  v259 = v10;
  v155 = *(v10 + 2);
  if (v155 < 2)
  {
LABEL_104:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v156 = *a3;
      if (!*a3)
      {
        break;
      }

      v157 = *&v10[16 * v155];
      v158 = *&v10[16 * v155 + 24];
      v159 = (v156 + 136 * v157);
      v160 = (v156 + 136 * *&v10[16 * v155 + 16]);
      v161 = (v156 + 136 * v158);
      sub_1DACB71E4();
      sub_1DAB8240C(v159, v160, v161, v169, a5);
      if (v6)
      {
        goto LABEL_104;
      }

      if (v158 < v157)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1DAC0694C(v10);
      }

      if (v155 - 2 >= *(v10 + 2))
      {
        goto LABEL_121;
      }

      v162 = &v10[16 * v155];
      *v162 = v157;
      *(v162 + 1) = v158;
      v259 = v10;
      sub_1DAC068C0(v155 - 1);
      v10 = v259;
      v155 = *(v259 + 2);
      if (v155 <= 1)
      {
        goto LABEL_104;
      }
    }

LABEL_131:

    __break(1u);
LABEL_132:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_133:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_134:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB83E60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v89 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 136 * a3;
    v10 = result - a3 + 1;
LABEL_4:
    v11 = v10;
    for (i = v9; ; i -= 136)
    {
      v85[0] = *i;
      v13 = *(i + 16);
      v14 = *(i + 32);
      v15 = *(i + 64);
      v85[3] = *(i + 48);
      v85[4] = v15;
      v85[1] = v13;
      v85[2] = v14;
      v16 = *(i + 80);
      v17 = *(i + 96);
      v18 = *(i + 112);
      v86 = *(i + 128);
      v85[6] = v17;
      v85[7] = v18;
      v85[5] = v16;
      v19 = *(i + 112);
      v82 = *(i + 96);
      v83 = v19;
      v84 = *(i + 128);
      v20 = *(i + 48);
      v78 = *(i + 32);
      v79 = v20;
      v21 = *(i + 80);
      v80 = *(i + 64);
      v81 = v21;
      v22 = *(i + 16);
      v76 = *i;
      v77 = v22;
      v87[0] = *(i - 136);
      v23 = *(i - 120);
      v24 = *(i - 104);
      v25 = *(i - 72);
      v87[3] = *(i - 88);
      v87[4] = v25;
      v87[1] = v23;
      v87[2] = v24;
      v26 = *(i - 56);
      v27 = *(i - 40);
      v28 = *(i - 24);
      v88 = *(i - 8);
      v87[6] = v27;
      v87[7] = v28;
      v87[5] = v26;
      v29 = *(i - 56);
      v30 = *(i - 24);
      v73 = *(i - 40);
      v74 = v30;
      v75 = *(i - 8);
      v31 = *(i - 120);
      v32 = *(i - 88);
      v69 = *(i - 104);
      v70 = v32;
      v71 = *(i - 72);
      v72 = v29;
      v67 = *(i - 136);
      v68 = v31;
      sub_1DAA806E4(v85, &v58);
      sub_1DAA806E4(v87, &v58);
      v33 = sub_1DAB81F0C(&v76, &v67, a5);
      if (v5)
      {
        v55 = v73;
        v56 = v74;
        v57 = v75;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v54 = v72;
        v49 = v67;
        v50 = v68;
        sub_1DAA9B1C8(&v49);
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v60 = v78;
        v61 = v79;
        v62 = v80;
        v63 = v81;
        v58 = v76;
        v59 = v77;
        return sub_1DAA9B1C8(&v58);
      }

      v34 = v33;
      v55 = v73;
      v56 = v74;
      v57 = v75;
      v51 = v69;
      v52 = v70;
      v53 = v71;
      v54 = v72;
      v49 = v67;
      v50 = v68;
      sub_1DAA9B1C8(&v49);
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v60 = v78;
      v61 = v79;
      v62 = v80;
      v63 = v81;
      v58 = v76;
      v59 = v77;
      result = sub_1DAA9B1C8(&v58);
      if ((v34 & 1) == 0)
      {
LABEL_3:
        ++v7;
        v9 += 136;
        --v10;
        if (v7 == v89)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (!v8)
      {
        break;
      }

      v35 = i - 136;
      v46 = *(i + 96);
      v47 = *(i + 112);
      v48 = *(i + 128);
      v42 = *(i + 32);
      v43 = *(i + 48);
      v44 = *(i + 64);
      v45 = *(i + 80);
      v40 = *i;
      v41 = *(i + 16);
      v36 = *(i - 56);
      *(i + 64) = *(i - 72);
      *(i + 80) = v36;
      v37 = *(i - 24);
      *(i + 96) = *(i - 40);
      *(i + 112) = v37;
      *(i + 128) = *(i - 8);
      v38 = *(i - 88);
      *(i + 32) = *(i - 104);
      *(i + 48) = v38;
      v39 = *(i - 120);
      *i = *(i - 136);
      *(i + 16) = v39;
      *(v35 + 64) = v44;
      *(v35 + 80) = v45;
      *(v35 + 96) = v46;
      *(v35 + 112) = v47;
      *(v35 + 128) = v48;
      *(v35 + 32) = v42;
      *(v35 + 48) = v43;
      *v35 = v40;
      *(v35 + 16) = v41;
      if (!v11)
      {
        goto LABEL_3;
      }

      ++v11;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB84154(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DACBA104();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1DACB96C4();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DACB71E4();
      sub_1DAB830D4(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DACB71E4();
    sub_1DAB83E60(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DAB8429C(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DAC0699C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  sub_1DACB71E4();
  sub_1DAB84154(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1DAB84344()
{
  result = qword_1EE11E9C0;
  if (!qword_1EE11E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9C0);
  }

  return result;
}

unint64_t sub_1DAB8439C()
{
  result = qword_1EE11E9B8;
  if (!qword_1EE11E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9B8);
  }

  return result;
}

unint64_t sub_1DAB843F4()
{
  result = qword_1EE11E9D0;
  if (!qword_1EE11E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9D0);
  }

  return result;
}

unint64_t sub_1DAB8444C()
{
  result = qword_1EE11E9C8;
  if (!qword_1EE11E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E9C8);
  }

  return result;
}

unint64_t sub_1DAB844A4()
{
  result = qword_1ECBE8070;
  if (!qword_1ECBE8070)
  {
    sub_1DAB84A48(255, &qword_1ECBE8078, sub_1DAADD25C, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A368]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8070);
  }

  return result;
}

void sub_1DAB845A8(uint64_t a1)
{
  if (!qword_1ECBE8090)
  {
    sub_1DAB84A48(255, &qword_1ECBE8088, sub_1DAB823B8, &type metadata for SymbolWidgetEntity, MEMORY[0x1E695A630]);
    v1 = sub_1DACBA124();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8090);
    }
  }
}

void sub_1DAB84638(uint64_t a1)
{
  if (!qword_1ECBE8098)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAB823B8();
    sub_1DAA8D9E8();
    v1 = sub_1DACB7104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE8098);
    }
  }
}

void sub_1DAB8470C(uint64_t a1)
{
  if (!qword_1ECBE80A0)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAA8D9E8();
    v1 = sub_1DACB72B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE80A0);
    }
  }
}

void sub_1DAB847D4(uint64_t a1)
{
  if (!qword_1ECBE80A8)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAA8D9E8();
    v1 = sub_1DACB70D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE80A8);
    }
  }
}

void sub_1DAB84894(uint64_t a1)
{
  if (!qword_1ECBE80B0)
  {
    sub_1DAB84A48(255, &qword_1EE123A98, sub_1DAA8D9E8, MEMORY[0x1E69E6158], MEMORY[0x1E695A088]);
    sub_1DAA8D9E8();
    v1 = sub_1DACB7074();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE80B0);
    }
  }
}

void sub_1DAB8495C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAB849C0(uint64_t a1)
{
  if (*(a1 + 32) == *(v1 + 16) && *(a1 + 40) == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174();
  }
}

uint64_t sub_1DAB849F4(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 16) && *(a1 + 24) == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174();
  }
}

void sub_1DAB84A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1DAB84B04()
{
  sub_1DAB84B70(v0 + OBJC_IVAR____TtC10StocksCore18UserRegionProvider_currentRegion);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB84B70(uint64_t a1)
{
  sub_1DAA565FC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAB84BCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DACB7D04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v10 = sub_1DACB7CE4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  sub_1DACB71E4();
  os_unfair_lock_lock((v3 + 72));
  v13 = *(v3 + 80);
  sub_1DACB71E4();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DACB71E4();
  sub_1DACB71E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 80) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1DAA929C8(0, *(v13 + 2) + 1, 1, v13);
    *(v3 + 80) = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_1DAA929C8((v16 > 1), v17 + 1, 1, v13);
    *(v3 + 80) = v13;
  }

  *(v13 + 2) = v17 + 1;
  v18 = &v13[48 * v17];
  *(v18 + 4) = a1;
  *(v18 + 5) = a2;
  *(v18 + 6) = v14;
  *(v18 + 7) = v10;
  *(v18 + 8) = v12;
  *(v18 + 36) = 160;
  os_unfair_lock_unlock((v3 + 72));
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = v14;
  v20[3] = v10;
  v20[4] = v12;
  v21 = 160;
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB84DDC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  os_unfair_lock_lock((v1 + 72));
  v9 = *(v1 + 80);
  v14 = v3;
  v15 = v2;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  v13[2] = &v14;
  v10 = sub_1DAB8563C(sub_1DAB85794, v13, v9);
  if ((v11 & 1) == 0)
  {
    sub_1DAC96120(v10, &v14);
  }

  os_unfair_lock_unlock((v1 + 72));
  v14 = v3;
  v15 = v2;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB84F20()
{

  sub_1DAB85804(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB84FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v4 = *(*v1 + 16);
  v3 = *(*v1 + 24);
  v6 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  LOWORD(v2) = *(v2 + 56);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v2;
  sub_1DACB71E4();
  sub_1DACB71E4();

  return sub_1DACB71E4();
}

uint64_t sub_1DAB8501C()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 72));
  v2 = *(v1 + 80);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 72));
  return v2;
}

uint64_t sub_1DAB8505C()
{
  sub_1DAB855C0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB850D8()
{
  sub_1DAB857B4(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85180(uint64_t a1)
{
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB8522C()
{
  sub_1DAB855C0(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB852E0(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1DAB855C0(0, a3, a4, a5, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85350(uint64_t a1, uint64_t a2)
{
  sub_1DAB857B4(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB853FC(uint64_t a1, uint64_t a2)
{
  sub_1DAB857B4(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85474(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 112);
  v11[6] = v18;
  v11[7] = v8;
  v11[2] = v14;
  v11[3] = v5;
  v11[4] = v16;
  v11[5] = v1;
  v20 = *(a1 + 128);
  v12 = *(a1 + 128);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_1DAB857B4(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DAA806E4(v13, v10);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB85540(uint64_t a1)
{
  sub_1DAB855C0(0, &qword_1EE11FE28, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAB855C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAB857B4(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DAB8563C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 48 * result);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *(v6 - 1);
    v10 = *v6;
    v9 = v6[1];
    v11 = v6[2];
    v12 = *(v6 + 12);
    v14[0] = *(v6 - 2);
    v14[1] = v8;
    v14[2] = v10;
    v14[3] = v9;
    v14[4] = v11;
    v15 = v12;
    sub_1DACB71E4();
    sub_1DACB71E4();
    sub_1DACB71E4();
    v13 = a1(v14);

    if (v3)
    {
      break;
    }

    v6 -= 6;
    result = v7 - 1;
  }

  while ((v13 & 1) == 0);
  return result;
}

BOOL sub_1DAB85718(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = *(a1 + 20);
  v5 = *a2;
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 20);
  v15 = *a1;
  v16 = *(a1 + 1);
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v10 = v5;
  v11 = *(a2 + 1);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  return sub_1DABE7120(&v15, &v10);
}

void sub_1DAB857B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1DAB85804(uint64_t a1)
{
  sub_1DAB857B4(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAB85888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAA9A3AC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DAB85A94(uint64_t a1)
{
  v2 = sub_1DACB9BC4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1DAB87D50(v2, *(a1 + 36), 0, a1);
  return sub_1DACB71E4();
}

uint64_t sub_1DAB85B3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1DACB9BC4();
  v11 = 1;
  if (v10 != 1 << *(a1 + 32))
  {
    sub_1DAB877C4(v10, *(a1 + 36), a1, a2, a3, a5);
    v11 = 0;
  }

  v12 = a4(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a5, v11, 1, v12);
}

uint64_t sub_1DAB85C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v32 = a1;
  v31 = sub_1DACB8344();
  v27 = *(v31 - 8);
  v28 = v27;
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8204();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB878E0(0, &qword_1EE11D450, MEMORY[0x1E69D6B00]);
  v29 = v12;
  (*(v9 + 16))(v11, v25, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = (v10 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v26;
  (*(v9 + 32))(v15 + v13, v11, v8);
  (*(v6 + 32))(v15 + v14, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24);
  v16 = MEMORY[0x1E69D6528];
  sub_1DAB8753C(0, &qword_1EE11CEC0, MEMORY[0x1E69D6528], MEMORY[0x1E69E6F90]);
  v17 = v28;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D20;
  swift_retain_n();
  sub_1DACB8324();
  v33 = v18;
  sub_1DAB875A0();
  sub_1DAB8753C(0, &unk_1EE125520, v16, MEMORY[0x1E69E62F8]);
  sub_1DAB875F8();
  v19 = v30;
  v20 = v31;
  sub_1DACB9BB4();
  sub_1DACB8A04();

  (*(v17 + 8))(v19, v20);
  v21 = sub_1DACB89D4();
  type metadata accessor for CurrencyResponse(0);
  v22 = sub_1DACB8A64();

  return v22;
}

uint64_t sub_1DAB860A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1DACB7CC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB8786C(0);
  v18 = v13;
  (*(v10 + 16))(v12, a3, v9);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  (*(v10 + 32))(v16 + v14, v12, v9);
  (*(v7 + 32))(v16 + v15, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1DACB71F4();
  return sub_1DACB8A44();
}

uint64_t sub_1DAB862D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for CurrencyResponse(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAB863F4, 0, 0);
}

uint64_t sub_1DAB863F4()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v9 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1DAB86528;
  v5 = v0[12];
  v6 = v0[7];
  v7 = v0[8];

  return v9(v5, v6, v7, v2, v3);
}

uint64_t sub_1DAB86528()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1DAB86860;
  }

  else
  {
    v2 = sub_1DAB8663C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAB8663C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[5];
  v6 = v0[6];
  sub_1DAB87DA0(v1, v3, type metadata accessor for CurrencyResponse);
  (*(v2 + 56))(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory;
  swift_beginAccess();
  sub_1DAB87CBC(v3, v6 + v7);
  swift_endAccess();
  sub_1DAB8753C(0, &qword_1EE11CED8, sub_1DAB87AA8, MEMORY[0x1E69E6F90]);
  sub_1DAB87AA8(0);
  v9 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  sub_1DAB87DA0(v1, v10 + v9, type metadata accessor for CurrencyResponse);
  v11 = sub_1DAB68D7C(v10);
  swift_setDeallocating();
  sub_1DAB87B10(v10 + v9, sub_1DAB87AA8);
  swift_deallocClassInstance();
  sub_1DAB87B10(v1, type metadata accessor for CurrencyResponse);
  *v5 = v11;

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DAB86860()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB868D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DACB81A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DAB8786C(0);
  (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  (*(v6 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1DACB71F4();
  return sub_1DACB8A94();
}

uint64_t sub_1DAB86A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for CurrencyResponse(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory;
  swift_beginAccess();
  sub_1DAB87A14(a1 + v15, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAB87680(v10);
    v16 = v25;
LABEL_6:
    __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
    (*(a1 + 104))();
    v22 = sub_1DAC92238(v16, v7);
    result = (*(v5 + 8))(v7, v4);
    goto LABEL_7;
  }

  v17 = sub_1DAB87760(v10, v14);
  (*(a1 + 104))(v17);
  v16 = v25;
  v18 = sub_1DAC91AA0(v14, v7);
  (*(v5 + 8))(v7, v4);
  if ((v18 & 1) == 0)
  {
    sub_1DAB87B10(v14, type metadata accessor for CurrencyResponse);
    goto LABEL_6;
  }

  sub_1DAB8753C(0, &qword_1EE11CED8, sub_1DAB87AA8, MEMORY[0x1E69E6F90]);
  sub_1DAB87AA8(0);
  v20 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DACC1D20;
  sub_1DAB87DA0(v14, v21 + v20, type metadata accessor for CurrencyResponse);
  v22 = sub_1DAB68D7C(v21);
  swift_setDeallocating();
  sub_1DAB87B10(v21 + v20, sub_1DAB87AA8);
  swift_deallocClassInstance();
  result = sub_1DAB87B10(v14, type metadata accessor for CurrencyResponse);
LABEL_7:
  *v26 = v22;
  return result;
}

uint64_t sub_1DAB86E24(uint64_t a1, uint64_t a2)
{
  sub_1DAB8786C(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  sub_1DACB71F4();
  sub_1DACB71E4();
  return sub_1DACB8A94();
}

uint64_t sub_1DAB86EA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1DAB85B3C(*a1, type metadata accessor for CurrencyResponse, type metadata accessor for CurrencyResponse, type metadata accessor for CurrencyResponse, &v9 - v5);
  v7 = type metadata accessor for CurrencyResponse(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) != 1)
  {
    return sub_1DAB87760(v6, a2);
  }

  sub_1DAB87680(v6);
  sub_1DAB8770C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1DAB8701C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  sub_1DAB87680(v0 + OBJC_IVAR____TtC10StocksCore15CurrencyManager_inMemory);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CurrencyManager(uint64_t a1)
{
  result = qword_1EE11ED78;
  if (!qword_1EE11ED78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAB870F4(uint64_t a1)
{
  sub_1DAB8753C(319, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DAB871DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1DAB87208, 0, 0);
}

uint64_t sub_1DAB87208()
{
  v0[7] = sub_1DAB85C18(v0[3], v0[4], v0[5]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1DAB872B4;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1DAB872B4()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAB873F0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DAB873F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB87454(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAB860A8(a1, v7, v1 + v4, v8);
}

void sub_1DAB8753C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1DAB875A0()
{
  result = qword_1EE1255B0;
  if (!qword_1EE1255B0)
  {
    sub_1DACB8344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1255B0);
  }

  return result;
}

unint64_t sub_1DAB875F8()
{
  result = qword_1EE125518;
  if (!qword_1EE125518)
  {
    sub_1DAB8753C(255, &unk_1EE125520, MEMORY[0x1E69D6528], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125518);
  }

  return result;
}

uint64_t sub_1DAB87680(uint64_t a1)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAB8770C()
{
  result = qword_1EE11ED90;
  if (!qword_1EE11ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11ED90);
  }

  return result;
}

uint64_t sub_1DAB87760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB877C4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v6 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v9 = *(a3 + 56);
    v10 = a4(0);
    return sub_1DAB87DA0(v9 + *(*(v10 - 8) + 72) * v6, a6, a5);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1DAB8786C(uint64_t a1)
{
  if (!qword_1EE11D408)
  {
    sub_1DAB878E0(255, &qword_1EE11D1C8, MEMORY[0x1E69E5E28]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11D408);
    }
  }
}

void sub_1DAB878E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CurrencyResponse(255);
    v7 = sub_1DAB69930();
    v8 = a3(a1, &type metadata for CurrencyManagerCacheKey, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAB87954@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  result = sub_1DAC91FDC(v4);
  *a1 = result;
  return result;
}

uint64_t sub_1DAB87A14(uint64_t a1, uint64_t a2)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAB87AA8(uint64_t a1)
{
  if (!qword_1EE11E110)
  {
    type metadata accessor for CurrencyResponse(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11E110);
    }
  }
}

uint64_t sub_1DAB87B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAB87B70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1DACB7CC4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1DACB8204() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DAA94754;

  return sub_1DAB862D4(a1, v10, v1 + v6, v1 + v9);
}

uint64_t sub_1DAB87CBC(uint64_t a1, uint64_t a2)
{
  sub_1DAB8753C(0, qword_1EE11EB90, type metadata accessor for CurrencyResponse, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAB87D50(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DAB87DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAB87E1C()
{
  result = qword_1ECBE80C8;
  if (!qword_1ECBE80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE80C8);
  }

  return result;
}

uint64_t sub_1DAB87E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAB87EB4, 0, 0);
}

uint64_t sub_1DAB87EB4()
{
  v0[11] = (*(v0[9] + 8))(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1DAB87F78;

  return MEMORY[0x1EEE44EE0](v0 + 2);
}

uint64_t sub_1DAB87F78()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1DAB88094;
  }

  else
  {

    v2 = sub_1DAAEAC4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAB88094()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAB88120()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = *v0;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v1, v2);
  MEMORY[0x1E1276F20](59, 0xE100000000000000);
  MEMORY[0x1E1276F20](v3, v4);
  return v6;
}

uint64_t sub_1DAB881AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_1DAA83070(0, &qword_1EE11F5B8, sub_1DAA830D8, &type metadata for StockMetadataManager.CacheEntry.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA830D8();
  sub_1DACBA2F4();
  if (!v2)
  {
    v9 = v24;
    sub_1DAB8BBF0();
    sub_1DACB9F84();
    (*(v6 + 8))(v8, v5);
    v10 = v22;
    *(v9 + 96) = v21;
    *(v9 + 112) = v10;
    *(v9 + 128) = v23;
    v11 = v18;
    *(v9 + 32) = v17;
    *(v9 + 48) = v11;
    v12 = v20;
    *(v9 + 64) = v19;
    *(v9 + 80) = v12;
    v13 = v16;
    *v9 = *&v15[8];
    *(v9 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAB8839C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B636F7473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAB88420(uint64_t a1)
{
  v2 = sub_1DAA830D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB8845C(uint64_t a1)
{
  v2 = sub_1DAA830D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAB884B0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v14 = *(v0 + 32);
  v15 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = v6;
  v7 = *(v0 + 16);
  v13[0] = *v0;
  v13[1] = v7;
  v8 = *(v0 + 112);
  v11[6] = v18;
  v11[7] = v8;
  v11[2] = v14;
  v11[3] = v5;
  v11[4] = v16;
  v11[5] = v1;
  v20 = *(v0 + 128);
  v12 = *(v0 + 128);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_1DAA83848(v13, v10);
  sub_1DAA837F0(0, &qword_1EE1201A8, MEMORY[0x1E69E6720]);
  return sub_1DACB9394();
}