uint64_t sub_22C51B6F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v46 = *a4;
  v4 = (*a4 + 32 * a3 - 32);
  v5 = result - a3;
LABEL_3:
  v43 = v4;
  v44 = a3;
  v6 = (v46 + 32 * a3);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v42 = v5;
  while (2)
  {
    v50 = v5;
    v47 = v4[3];
    v11 = v8 == *v4 && v7 == v4[1];
    v12 = v11;
    v48 = v12;
    v13 = v9 >> 62;
    v49 = v4[2];
    v14 = v49 >> 62;
    if (v11 || (sub_22C90B4FC() & 1) != 0)
    {
      switch(v13)
      {
        case 1uLL:
          if (v14 != 1)
          {
            goto LABEL_28;
          }

          v15 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v16 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v17 = v49 & 0x3FFFFFFFFFFFFFFFLL;
          goto LABEL_22;
        case 2uLL:
          if (v14 != 2)
          {
            goto LABEL_28;
          }

          goto LABEL_18;
        case 3uLL:
          if (v49 >> 62 != 3)
          {
            goto LABEL_28;
          }

LABEL_18:
          v45 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v18 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();
          swift_retain_n();

          LOBYTE(v45) = sub_22C46E724(v45, v18);

          if ((v45 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        default:
          if (v14)
          {
            goto LABEL_28;
          }

          v15 = *(v9 + 16);
          v16 = *(v9 + 24);
          v17 = v49;
LABEL_22:
          v19 = v15 == *(v17 + 16) && v16 == *(v17 + 24);
          if (v19 || (sub_22C90B4FC() & 1) != 0)
          {
LABEL_27:
            result = sub_22C472E00(v47, v10);
            goto LABEL_39;
          }

LABEL_28:
          if (!v48)
          {
            break;
          }

          goto LABEL_30;
      }
    }

    if ((sub_22C90B4FC() & 1) == 0)
    {
      result = sub_22C90B4FC();
LABEL_39:
      v23 = v50;
      if ((result & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_76;
    }

LABEL_30:
    switch(v13)
    {
      case 1:
        if (v14 != 1)
        {
          goto LABEL_54;
        }

        v30 = v9 & 0x3FFFFFFFFFFFFFFFLL;
        if (*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_86;
        }

        v32 = sub_22C90B4FC();
        swift_retain_n();

        swift_retain_n();

        if (v32)
        {
          goto LABEL_87;
        }

        v51 = v49;
        v52 = v9;
        sub_22C47285C(&v52, &v51, &v53);
        v22 = v53;
LABEL_67:
        if (v22 >> 62 != 1)
        {
          goto LABEL_80;
        }

        v37 = v22 & 0x3FFFFFFFFFFFFFFFLL;
        if (*(v30 + 16) != *(v37 + 16) || *(v30 + 24) != *(v37 + 24))
        {
          v34 = sub_22C90B4FC();

          goto LABEL_65;
        }

        goto LABEL_75;
      case 2:
        if (v14 != 2)
        {
          goto LABEL_54;
        }

        v24 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v26 = sub_22C46E724(v24, v25);

        if (v26)
        {
          goto LABEL_85;
        }

        v51 = v49;
        v52 = v9;
        sub_22C47285C(&v52, &v51, &v53);
        v22 = v53;
LABEL_61:
        if (v22 >> 62 != 2)
        {
          goto LABEL_80;
        }

        goto LABEL_64;
      case 3:
        if (v49 >> 62 != 3)
        {
          goto LABEL_54;
        }

        v27 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((v49 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v29 = sub_22C46E724(v27, v28);

        if (v29)
        {
LABEL_85:

          goto LABEL_82;
        }

        v51 = v49;
        v52 = v9;
        sub_22C47285C(&v52, &v51, &v53);
        v22 = v53;
LABEL_63:
        if (v22 >> 62 != 3)
        {
          goto LABEL_80;
        }

LABEL_64:
        v35 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v36 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v34 = sub_22C46E724(v35, v36);

        goto LABEL_65;
      default:
        if (v14)
        {
LABEL_54:
          v30 = v9 & 0x3FFFFFFFFFFFFFFFLL;

          swift_retain_n();

          swift_retain_n();
          v51 = v49;
          v52 = v9;
          sub_22C47285C(&v52, &v51, &v53);
          v22 = v53;
          switch(v13)
          {
            case 1:
              goto LABEL_67;
            case 2:
              goto LABEL_61;
            case 3:
              goto LABEL_63;
            default:
              goto LABEL_55;
          }
        }

        if (*(v9 + 16) == *(v49 + 16) && *(v9 + 24) == *(v49 + 24))
        {
LABEL_86:

          goto LABEL_82;
        }

        v21 = sub_22C90B4FC();

        swift_retain_n();

        swift_retain_n();
        if ((v21 & 1) == 0)
        {
          v51 = v49;
          v52 = v9;
          sub_22C47285C(&v52, &v51, &v53);
          v22 = v53;
LABEL_55:
          if (v22 >> 62)
          {
LABEL_80:

            goto LABEL_81;
          }

          if (*(v9 + 16) == *(v22 + 16) && *(v9 + 24) == *(v22 + 24))
          {

LABEL_75:

            v23 = v50;
          }

          else
          {
            v34 = sub_22C90B4FC();

LABEL_65:

            v23 = v50;
            if ((v34 & 1) == 0)
            {
              goto LABEL_83;
            }
          }

LABEL_76:
          if (!v46)
          {
            __break(1u);
            return result;
          }

          v8 = v4[4];
          v7 = v4[5];
          v9 = v4[6];
          v10 = v4[7];
          v39 = *(v4 + 1);
          *(v4 + 2) = *v4;
          *(v4 + 3) = v39;
          *v4 = v8;
          v4[1] = v7;
          v4[2] = v9;
          v4[3] = v10;
          v4 -= 4;
          v40 = __CFADD__(v23, 1);
          v5 = v23 + 1;
          if (v40)
          {
            goto LABEL_83;
          }

          continue;
        }

LABEL_87:

LABEL_81:

LABEL_82:

LABEL_83:
        a3 = v44 + 1;
        v4 = v43 + 4;
        v5 = v42 - 1;
        if (v44 + 1 != a2)
        {
          goto LABEL_3;
        }

        return result;
    }
  }
}

void sub_22C51BEA0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_22C90B4FC();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_22C90B4FC()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_22C90B4FC() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C590218(0, v8[2] + 1, 1, v8);
        v8 = v89;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_22C590218(v44 > 1, v45 + 1, 1, v8);
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_22C51D8AC((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_22C51D774(&v97, *result, a3);
LABEL_103:
}

void sub_22C51C3F0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_247:
    v184 = *a1;
    if (!*a1)
    {
      goto LABEL_288;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_249:
      v149 = v8 + 16;
      v150 = *(v8 + 2);
      while (v150 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_285;
        }

        v151 = v8;
        v152 = &v8[16 * v150];
        v153 = *v152;
        v154 = &v149[2 * v150];
        v155 = *(v154 + 1);
        sub_22C51DA74((*a3 + 32 * *v152), (*a3 + 32 * *v154), (*a3 + 32 * v155), v184);
        if (v5)
        {
          break;
        }

        if (v155 < v153)
        {
          goto LABEL_273;
        }

        if (v150 - 2 >= *v149)
        {
          goto LABEL_274;
        }

        *v152 = v153;
        *(v152 + 1) = v155;
        v156 = *v149 - v150;
        if (*v149 < v150)
        {
          goto LABEL_275;
        }

        v150 = *v149 - 1;
        sub_22C56BFF0(v154 + 16, v156, v154);
        *v149 = v150;
        v8 = v151;
      }

LABEL_257:

      return;
    }

LABEL_282:
    v8 = sub_22C56BFD8();
    goto LABEL_249;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v160 = v7;
    if (v7 + 1 < v6)
    {
      v158 = v8;
      v11 = *a3 + 32 * v10;
      v12 = *v11;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      v15 = *a3 + 32 * v7;
      v164 = 32 * v7;
      v16 = *v15;
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      v188 = v12;
      v189 = v14;
      v190 = v13;
      v185 = v16;
      v186 = v17;
      v187 = v18;
      static RootedBNFGrammar.< infix(_:_:)(&v188, &v185);
      v171 = v19;
      v20 = (v15 + 48);
      v21 = v9 + 2;
      v170 = v6;
      while (1)
      {
        v22 = v21;
        if (v10 + 1 >= v6)
        {
          break;
        }

        v177 = v20[5];
        v174 = v20[1];
        v184 = *(v20 - 1);
        v23 = v20[2] == *(v20 - 2) && v20[3] == *(v20 - 1);
        v24 = v23;
        v180 = v21;
        v182 = v20[4];
        v25 = v182 >> 62;
        v26 = *v20;
        v27 = *v20 >> 62;
        if (v23 || (sub_22C90B4FC() & 1) != 0)
        {
          switch(v25)
          {
            case 1uLL:
              if (v27 != 1)
              {
                goto LABEL_30;
              }

              v28 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v29 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v30 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v31 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              goto LABEL_24;
            case 2uLL:
              if (v27 != 2)
              {
                goto LABEL_30;
              }

              goto LABEL_20;
            case 3uLL:
              if (v27 <= 2)
              {
                goto LABEL_30;
              }

LABEL_20:
              v166 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v169 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();
              swift_retain_n();

              LOBYTE(v166) = sub_22C46E724(v166, v169);

              if (v166)
              {
LABEL_29:
                v33 = sub_22C472E00(v174, v177);
                goto LABEL_41;
              }

LABEL_30:
              if (!v24)
              {
                break;
              }

              goto LABEL_32;
            default:
              if (!v27)
              {
                v28 = *(v182 + 16);
                v29 = *(v182 + 24);
                v30 = *(v26 + 16);
                v31 = *(v26 + 24);
LABEL_24:
                v32 = v28 == v30 && v29 == v31;
                if (v32 || (sub_22C90B4FC() & 1) != 0)
                {
                  goto LABEL_29;
                }
              }

              goto LABEL_30;
          }
        }

        if (sub_22C90B4FC())
        {
LABEL_32:
          v34 = v25;
          v35 = v25;
          v22 = v180;
          switch(v35)
          {
            case 1:
              v39 = v182 & 0x3FFFFFFFFFFFFFFFLL;
              if (v27 != 1)
              {
                goto LABEL_56;
              }

              if (*((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
              {
                goto LABEL_78;
              }

              v48 = sub_22C90B4FC();
              swift_retain_n();

              swift_retain_n();

              if (v48)
              {
                goto LABEL_47;
              }

              *&v185 = v182;
              v191 = v26;
              sub_22C47285C(&v185, &v191, &v188);
              v43 = v188;
LABEL_66:
              if (v43 >> 62 != 1)
              {
                goto LABEL_75;
              }

              v50 = v43 & 0x3FFFFFFFFFFFFFFFLL;
              v51 = *(v39 + 16) == *(v50 + 16) && *(v39 + 24) == *(v50 + 24);
              v6 = v170;
              if (!v51)
              {
                v38 = sub_22C90B4FC();

                goto LABEL_77;
              }

              goto LABEL_85;
            case 2:
              v39 = v182 & 0x3FFFFFFFFFFFFFFFLL;
              if (v27 != 2)
              {
                goto LABEL_56;
              }

              v40 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v41 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();
              swift_retain_n();

              v42 = sub_22C46E724(v40, v41);

              if (v42)
              {
                goto LABEL_47;
              }

              *&v185 = v182;
              v191 = v26;
              sub_22C47285C(&v185, &v191, &v188);
              v43 = v188;
LABEL_64:
              if (v43 >> 62 != 2)
              {
                goto LABEL_75;
              }

              goto LABEL_74;
            case 3:
              v39 = v182 & 0x3FFFFFFFFFFFFFFFLL;
              if (v27 <= 2)
              {
                goto LABEL_56;
              }

              v44 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v45 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();
              swift_retain_n();

              v46 = sub_22C46E724(v44, v45);

              if (v46)
              {
LABEL_47:

                goto LABEL_79;
              }

              *&v185 = v182;
              v191 = v26;
              sub_22C47285C(&v185, &v191, &v188);
              v43 = v188;
LABEL_73:
              if (v43 >> 62 == 3)
              {
LABEL_74:
                v52 = *((v182 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v53 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

                v38 = sub_22C46E724(v52, v53);

                v6 = v170;
                goto LABEL_77;
              }

LABEL_75:
              v6 = v170;
              goto LABEL_76;
            default:
              if (v27)
              {
                v39 = v182 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_56:
                swift_retain_n();

                swift_retain_n();

                *&v185 = v182;
                v191 = v26;
                sub_22C47285C(&v185, &v191, &v188);
                v43 = v188;
                switch(v34)
                {
                  case 1:
                    goto LABEL_66;
                  case 2:
                    goto LABEL_64;
                  case 3:
                    goto LABEL_73;
                  default:
                    v6 = v170;
                    goto LABEL_58;
                }
              }

              if (*(v182 + 16) == *(v26 + 16) && *(v182 + 24) == *(v26 + 24))
              {
LABEL_78:

LABEL_79:
                v38 = 0;
                v6 = v170;
              }

              else
              {
                v37 = sub_22C90B4FC();

                swift_retain_n();

                swift_retain_n();
                v6 = v170;
                if (v37)
                {

                  v38 = 0;
                }

                else
                {
                  *&v185 = v182;
                  v191 = v26;
                  sub_22C47285C(&v185, &v191, &v188);
                  v43 = v188;
LABEL_58:
                  if (v43 >> 62)
                  {
LABEL_76:

                    v38 = 0;
                  }

                  else if (*(v182 + 16) == *(v43 + 16) && *(v182 + 24) == *(v43 + 24))
                  {

LABEL_85:
                    v38 = 1;
                  }

                  else
                  {
                    v38 = sub_22C90B4FC();
                  }

LABEL_77:
                }
              }

              break;
          }
        }

        else
        {
          v33 = sub_22C90B4FC();
LABEL_41:
          v38 = v33;
          v6 = v170;
          v22 = v180;
        }

        v20 += 4;
        ++v10;
        v21 = v22 + 1;
        if ((v171 & 1) != (v38 & 1))
        {
          goto LABEL_88;
        }
      }

      v10 = v6;
LABEL_88:
      if (v171)
      {
        if (v10 < v160)
        {
          goto LABEL_279;
        }

        if (v160 >= v10)
        {
          v8 = v158;
          v9 = v160;
        }

        else
        {
          if (v6 >= v22)
          {
            v54 = v22;
          }

          else
          {
            v54 = v6;
          }

          v55 = 32 * v54 - 16;
          v56 = v164 + 24;
          v57 = v10;
          v58 = v160;
          v8 = v158;
          v9 = v160;
          do
          {
            if (v58 != --v57)
            {
              v59 = *a3;
              if (!*a3)
              {
                goto LABEL_286;
              }

              v60 = (v59 + v56);
              v61 = (v59 + v55);
              v62 = *(v60 - 3);
              v63 = *(v60 - 1);
              v64 = *v60;
              v65 = *v61;
              *(v60 - 3) = *(v61 - 1);
              *(v60 - 1) = v65;
              *(v61 - 1) = v62;
              *v61 = v63;
              *(v61 + 1) = v64;
            }

            ++v58;
            v55 -= 32;
            v56 += 32;
          }

          while (v58 < v57);
        }
      }

      else
      {
        v8 = v158;
        v9 = v160;
      }
    }

    v66 = a3[1];
    if (v10 < v66)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_278;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_195:
    if (v10 < v9)
    {
      goto LABEL_277;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v8 + 2) + 1, 1, v8);
      v8 = v147;
    }

    v105 = *(v8 + 2);
    v104 = *(v8 + 3);
    v106 = v105 + 1;
    if (v105 >= v104 >> 1)
    {
      sub_22C590218(v104 > 1, v105 + 1, 1, v8);
      v8 = v148;
    }

    *(v8 + 2) = v106;
    v107 = v8 + 32;
    v108 = &v8[16 * v105 + 32];
    *v108 = v9;
    *(v108 + 1) = v10;
    v184 = *a1;
    if (!*a1)
    {
      goto LABEL_287;
    }

    v176 = v10;
    if (v105)
    {
      while (1)
      {
        v109 = v106 - 1;
        v110 = &v107[16 * v106 - 16];
        v111 = &v8[16 * v106];
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v112 = *(v8 + 4);
          v113 = *(v8 + 5);
          v122 = __OFSUB__(v113, v112);
          v114 = v113 - v112;
          v115 = v122;
LABEL_215:
          if (v115)
          {
            goto LABEL_264;
          }

          v127 = *v111;
          v126 = *(v111 + 1);
          v128 = __OFSUB__(v126, v127);
          v129 = v126 - v127;
          v130 = v128;
          if (v128)
          {
            goto LABEL_267;
          }

          v131 = *(v110 + 1);
          v132 = v131 - *v110;
          if (__OFSUB__(v131, *v110))
          {
            goto LABEL_270;
          }

          if (__OFADD__(v129, v132))
          {
            goto LABEL_272;
          }

          if (v129 + v132 >= v114)
          {
            if (v114 < v132)
            {
              v109 = v106 - 2;
            }

            goto LABEL_237;
          }

          goto LABEL_230;
        }

        if (v106 < 2)
        {
          goto LABEL_266;
        }

        v134 = *v111;
        v133 = *(v111 + 1);
        v122 = __OFSUB__(v133, v134);
        v129 = v133 - v134;
        v130 = v122;
LABEL_230:
        if (v130)
        {
          goto LABEL_269;
        }

        v136 = *v110;
        v135 = *(v110 + 1);
        v122 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v122)
        {
          goto LABEL_271;
        }

        if (v137 < v129)
        {
          goto LABEL_244;
        }

LABEL_237:
        if (v109 - 1 >= v106)
        {
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
          goto LABEL_281;
        }

        if (!*a3)
        {
          goto LABEL_284;
        }

        v141 = &v107[16 * v109 - 16];
        v142 = *v141;
        v143 = &v107[16 * v109];
        v144 = *(v143 + 1);
        sub_22C51DA74((*a3 + 32 * *v141), (*a3 + 32 * *v143), (*a3 + 32 * v144), v184);
        if (v5)
        {
          goto LABEL_257;
        }

        if (v144 < v142)
        {
          goto LABEL_259;
        }

        v5 = v8;
        v145 = *(v8 + 2);
        if (v109 > v145)
        {
          goto LABEL_260;
        }

        *v141 = v142;
        *(v141 + 1) = v144;
        if (v109 >= v145)
        {
          goto LABEL_261;
        }

        v106 = v145 - 1;
        sub_22C56BFF0(v143 + 16, v145 - 1 - v109, &v107[16 * v109]);
        *(v5 + 2) = v145 - 1;
        v146 = v145 > 2;
        v8 = v5;
        v5 = 0;
        if (!v146)
        {
          goto LABEL_244;
        }
      }

      v116 = &v107[16 * v106];
      v117 = *(v116 - 8);
      v118 = *(v116 - 7);
      v122 = __OFSUB__(v118, v117);
      v119 = v118 - v117;
      if (v122)
      {
        goto LABEL_262;
      }

      v121 = *(v116 - 6);
      v120 = *(v116 - 5);
      v122 = __OFSUB__(v120, v121);
      v114 = v120 - v121;
      v115 = v122;
      if (v122)
      {
        goto LABEL_263;
      }

      v123 = *(v111 + 1);
      v124 = v123 - *v111;
      if (__OFSUB__(v123, *v111))
      {
        goto LABEL_265;
      }

      v122 = __OFADD__(v114, v124);
      v125 = v114 + v124;
      if (v122)
      {
        goto LABEL_268;
      }

      if (v125 >= v119)
      {
        v139 = *v110;
        v138 = *(v110 + 1);
        v122 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v122)
        {
          goto LABEL_276;
        }

        if (v114 < v140)
        {
          v109 = v106 - 2;
        }

        goto LABEL_237;
      }

      goto LABEL_215;
    }

LABEL_244:
    v6 = a3[1];
    v7 = v176;
    if (v176 >= v6)
    {
      goto LABEL_247;
    }
  }

  v67 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_280;
  }

  if (v67 >= v66)
  {
    v67 = a3[1];
  }

  if (v67 < v9)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  if (v10 == v67)
  {
    goto LABEL_195;
  }

  v159 = v8;
  v162 = v5;
  v163 = v67;
  v178 = *a3;
  v68 = (*a3 + 32 * v10 - 32);
  v69 = (v9 - v10);
  while (2)
  {
    v175 = v10;
    v70 = (v178 + 32 * v10);
    v71 = *v70;
    v72 = v70[1];
    v74 = v70[2];
    v73 = v70[3];
    v165 = v69;
    v167 = v68;
    v75 = v69;
LABEL_112:
    v184 = v75;
    v179 = v68[3];
    v76 = v71 == *v68 && v72 == v68[1];
    v77 = v76;
    v181 = v77;
    v78 = v74 >> 62;
    v183 = v68[2];
    v79 = v183 >> 62;
    if (v76 || (sub_22C90B4FC() & 1) != 0)
    {
      switch(v78)
      {
        case 1uLL:
          if (v79 != 1)
          {
            goto LABEL_137;
          }

          v80 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v81 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v82 = v183 & 0x3FFFFFFFFFFFFFFFLL;
          goto LABEL_130;
        case 2uLL:
          if (v79 != 2)
          {
            goto LABEL_137;
          }

          goto LABEL_126;
        case 3uLL:
          if (v183 >> 62 != 3)
          {
            goto LABEL_137;
          }

LABEL_126:
          v168 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v172 = *((v183 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();
          swift_retain_n();

          LOBYTE(v168) = sub_22C46E724(v168, v172);

          if ((v168 & 1) == 0)
          {
            goto LABEL_137;
          }

          goto LABEL_135;
        default:
          if (v79)
          {
            goto LABEL_137;
          }

          v80 = *(v74 + 16);
          v81 = *(v74 + 24);
          v82 = v183;
LABEL_130:
          v83 = v80 == *(v82 + 16) && v81 == *(v82 + 24);
          if (v83 || (sub_22C90B4FC() & 1) != 0)
          {
LABEL_135:
            if ((sub_22C472E00(v179, v73) & 1) == 0)
            {
              goto LABEL_193;
            }

            goto LABEL_184;
          }

LABEL_137:
          if (!v181)
          {
            break;
          }

          goto LABEL_139;
      }
    }

    if ((sub_22C90B4FC() & 1) == 0)
    {
      if ((sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_184;
    }

LABEL_139:
    switch(v78)
    {
      case 1:
        v84 = v183;
        if (v79 != 1)
        {
          goto LABEL_162;
        }

        v94 = v74 & 0x3FFFFFFFFFFFFFFFLL;
        if (*((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v183 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v183 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          goto LABEL_189;
        }

        v96 = sub_22C90B4FC();
        swift_retain_n();

        swift_retain_n();

        if (v96)
        {
          goto LABEL_190;
        }

        *&v185 = v74;
        v191 = v183;
        sub_22C47285C(&v185, &v191, &v188);
        v87 = v188;
LABEL_175:
        if (v87 >> 62 != 1)
        {
          goto LABEL_187;
        }

        v101 = v87 & 0x3FFFFFFFFFFFFFFFLL;
        if (*(v94 + 16) != *(v101 + 16) || *(v94 + 24) != *(v101 + 24))
        {
          v98 = sub_22C90B4FC();

          goto LABEL_173;
        }

        goto LABEL_183;
      case 2:
        v84 = v183;
        if (v79 != 2)
        {
          goto LABEL_162;
        }

        v88 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v89 = *((v183 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v90 = sub_22C46E724(v88, v89);

        if (v90)
        {
          goto LABEL_190;
        }

        *&v185 = v74;
        v191 = v183;
        sub_22C47285C(&v185, &v191, &v188);
        v87 = v188;
LABEL_169:
        if (v87 >> 62 != 2)
        {
          goto LABEL_187;
        }

        goto LABEL_172;
      case 3:
        v84 = v183;
        if (v183 >> 62 != 3)
        {
          goto LABEL_162;
        }

        v91 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v92 = *((v183 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();
        swift_retain_n();

        v93 = sub_22C46E724(v91, v92);

        if (v93)
        {
          goto LABEL_190;
        }

        *&v185 = v74;
        v191 = v183;
        sub_22C47285C(&v185, &v191, &v188);
        v87 = v188;
LABEL_171:
        if (v87 >> 62 != 3)
        {
          goto LABEL_187;
        }

LABEL_172:
        v99 = *((v74 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v100 = *((v87 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v98 = sub_22C46E724(v99, v100);

        goto LABEL_173;
      default:
        v84 = v183;
        if (v79)
        {
LABEL_162:
          v94 = v74 & 0x3FFFFFFFFFFFFFFFLL;

          swift_retain_n();

          swift_retain_n();
          *&v185 = v74;
          v191 = v84;
          sub_22C47285C(&v185, &v191, &v188);
          v87 = v188;
          switch(v78)
          {
            case 1:
              goto LABEL_175;
            case 2:
              goto LABEL_169;
            case 3:
              goto LABEL_171;
            default:
              goto LABEL_163;
          }
        }

        if (*(v74 + 16) == *(v183 + 16) && *(v74 + 24) == *(v183 + 24))
        {
LABEL_189:

LABEL_192:

LABEL_193:
          v10 = v175 + 1;
          v68 = v167 + 4;
          v69 = v165 - 1;
          if (v175 + 1 == v163)
          {
            v10 = v163;
            v5 = v162;
            v8 = v159;
            v9 = v160;
            goto LABEL_195;
          }

          continue;
        }

        v86 = sub_22C90B4FC();

        swift_retain_n();

        swift_retain_n();
        if (v86)
        {
LABEL_190:

          goto LABEL_191;
        }

        *&v185 = v74;
        v191 = v183;
        sub_22C47285C(&v185, &v191, &v188);
        v87 = v188;
LABEL_163:
        if (v87 >> 62)
        {
LABEL_187:

LABEL_191:

          goto LABEL_192;
        }

        if (*(v74 + 16) == *(v87 + 16) && *(v74 + 24) == *(v87 + 24))
        {

LABEL_183:
        }

        else
        {
          v98 = sub_22C90B4FC();

LABEL_173:

          if ((v98 & 1) == 0)
          {
            goto LABEL_193;
          }
        }

LABEL_184:
        if (v178)
        {
          v71 = v68[4];
          v72 = v68[5];
          v74 = v68[6];
          v73 = v68[7];
          v103 = *(v68 + 1);
          *(v68 + 2) = *v68;
          *(v68 + 3) = v103;
          *v68 = v71;
          v68[1] = v72;
          v68[2] = v74;
          v68[3] = v73;
          v68 -= 4;
          v75 = v184 + 1;
          if (v184 == -1)
          {
            goto LABEL_193;
          }

          goto LABEL_112;
        }

        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_22C51D774(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_22C56BFD8();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_22C51D8AC((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_22C51D8AC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22C3D8768(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_22C90B4FC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_22C3D8768(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_22C90B4FC() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_22C51DA74(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_22C3D6F00(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    v62 = v10;
    v49 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_61;
      }

      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *(v6 + 3);
      v57 = v6;
      v16 = *v4;
      v17 = *(v4 + 1);
      v60 = v4;
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      v20 = v12 == v16 && v13 == v17;
      v21 = v20;
      v55 = v21;
      if (!v20 && (sub_22C90B4FC() & 1) == 0)
      {
        goto LABEL_18;
      }

      v66 = v14;
      v65 = v18;
      v53 = v18;
      swift_retain_n();
      swift_retain_n();

      v22 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65);

      if (v22)
      {
        v23 = sub_22C472E00(v19, v15);
        goto LABEL_22;
      }

      v18 = v53;
      if (!v55)
      {
LABEL_18:
        if ((sub_22C90B4FC() & 1) == 0)
        {
          v23 = sub_22C90B4FC();
LABEL_22:
          v10 = v62;
          if (v23)
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }
      }

      v66 = v14;
      v65 = v18;

      swift_retain_n();

      swift_retain_n();
      v10 = v62;
      if (static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65))
      {
      }

      else
      {
        v66 = v14;
        v64 = v18;
        v65 = v14;
        sub_22C47285C(&v65, &v64, &v63);
        v26 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v63);

        if (v26)
        {
LABEL_23:
          v24 = v57;
          v6 = v57 + 32;
          v25 = v7 == v57;
          v4 = v60;
          goto LABEL_26;
        }
      }

LABEL_25:
      v24 = v60;
      v4 = v60 + 32;
      v25 = v7 == v60;
      v6 = v57;
LABEL_26:
      v5 = v49;
      if (!v25)
      {
        v27 = *(v24 + 1);
        *v7 = *v24;
        *(v7 + 1) = v27;
      }

      v7 += 32;
    }
  }

  sub_22C3D6F00(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
  v59 = v7;
  v61 = v4;
LABEL_30:
  v58 = v6 - 32;
  v28 = v5;
  v48 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v56 = v28;
    v30 = v10 - 32;
    v31 = *(v10 - 2);
    v32 = *(v6 - 2);
    v51 = *(v6 - 1);
    v52 = *(v10 - 1);
    v33 = *(v10 - 4) == *(v6 - 4) && *(v10 - 3) == *(v6 - 3);
    v34 = v33;
    v50 = v34;
    v54 = *(v6 - 2);
    if (!v33)
    {
      v35 = *(v6 - 2);
      v36 = sub_22C90B4FC();
      v32 = v35;
      if ((v36 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v66 = v31;
    v65 = v32;
    swift_retain_n();
    swift_retain_n();

    v37 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65);

    if (v37)
    {
      v38 = sub_22C472E00(v51, v52);
      v39 = v56;
      v5 = v56 - 32;
      v4 = v61;
      v6 = v48;
      if (v38)
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v4 = v61;
    v6 = v48;
    v32 = v54;
    if (!v50)
    {
LABEL_48:
      v40 = v32;
      if ((sub_22C90B4FC() & 1) == 0)
      {
        v42 = sub_22C90B4FC();
        v39 = v56;
        v5 = v56 - 32;
        if (v42)
        {
          goto LABEL_58;
        }

        goto LABEL_56;
      }

      v32 = v40;
    }

    v66 = v31;
    v65 = v32;

    swift_retain_n();

    swift_retain_n();
    if (static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v65))
    {

      v41 = 0;
    }

    else
    {
      v66 = v31;
      v64 = v54;
      v65 = v31;
      sub_22C47285C(&v65, &v64, &v63);
      v41 = static BNFGrammarRuleExpression.== infix(_:_:)(&v66, &v63);

      v6 = v48;
    }

    v39 = v56;
    v5 = v56 - 32;
    if (v41)
    {
LABEL_58:
      v20 = v39 == v6;
      v6 = v58;
      v7 = v59;
      if (!v20)
      {
        v44 = *(v58 + 1);
        *v5 = *v58;
        *(v5 + 1) = v44;
      }

      goto LABEL_30;
    }

LABEL_56:
    v20 = v10 == v39;
    v28 = v5;
    v10 -= 32;
    v7 = v59;
    if (!v20)
    {
      v43 = *(v30 + 1);
      *v5 = *v30;
      *(v5 + 1) = v43;
      v28 = v5;
      v10 = v30;
    }
  }

LABEL_61:
  v45 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v45])
  {
    memmove(v6, v4, 32 * v45);
  }

  return 1;
}

uint64_t sub_22C51E114(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C51E174(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_22C51E1CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_22C456CE4(result, a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_22C51E1E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C51E270(uint64_t a1)
{

  return swift_once();
}

double sub_22C51E29C()
{
  v1 = *(v0 - 208);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 40) = 1;
  return result;
}

double sub_22C51E2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 160) = 0;
  result = 0.0;
  *(v2 - 192) = 0u;
  *(v2 - 176) = 0u;
  *(v2 - 152) = -1;
  return result;
}

void sub_22C51E320(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void *sub_22C51E33C()
{
  v3 = v0[3];
  *(v1 - 360) = v0[4];

  return sub_22C374168(v0, v3);
}

uint64_t sub_22C51E360(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(v2 + 16) = a1;
  return v2 | 0x6000000000000000;
}

__n128 sub_22C51E3A8()
{
  v1 = *(v0 - 224);
  *(v0 - 144) = *(v0 - 240);
  *(v0 - 128) = v1;
  result = *(v0 - 215);
  *(v0 - 119) = result;
  return result;
}

uint64_t sub_22C51E41C(uint64_t result)
{
  *(result + 16) = 2;
  *(result + 24) = v1;
  return result;
}

void sub_22C51E43C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t type metadata accessor for StatementResultParser_v2_0(uint64_t a1)
{
  result = qword_27D9BD9D0;
  if (!qword_27D9BD9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C51E4D0(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C51E55C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C51E55C()
{
  result = qword_281432FB0;
  if (!qword_281432FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281432FB0);
  }

  return result;
}

uint64_t sub_22C51E5B8(char a1, unint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = 1;
  }

  else if (a2 >> 61 == 2)
  {
    v11 = swift_projectBox();
    sub_22C525730(v11, v9);
    sub_22C486784();
    sub_22C485FE8();
    v10 = v12;
    sub_22C525788(v6, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C525788(v9, type metadata accessor for PromptTreeIdentifier);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_22C51E720()
{
  sub_22C369980();
  v1[27] = v2;
  v1[28] = v0;
  v1[25] = v3;
  v1[26] = v4;
  v5 = sub_22C906ECC();
  v1[29] = v5;
  sub_22C3699B8(v5);
  v1[30] = v6;
  v1[31] = sub_22C3699D4();
  v7 = sub_22C90201C();
  v1[32] = v7;
  sub_22C3699B8(v7);
  v1[33] = v8;
  v1[34] = sub_22C3699D4();
  v9 = sub_22C9028FC();
  v1[35] = v9;
  sub_22C3699B8(v9);
  v1[36] = v10;
  v1[37] = sub_22C3699D4();
  v11 = sub_22C90281C();
  v1[38] = v11;
  sub_22C3699B8(v11);
  v1[39] = v12;
  v1[40] = sub_22C3699D4();
  v13 = sub_22C902A4C();
  v1[41] = v13;
  sub_22C3699B8(v13);
  v1[42] = v14;
  v1[43] = sub_22C3699D4();
  v15 = sub_22C902D0C();
  v1[44] = v15;
  sub_22C3699B8(v15);
  v1[45] = v16;
  v1[46] = sub_22C3699D4();
  v17 = type metadata accessor for DirectionalTypedValue(0);
  v1[47] = v17;
  sub_22C369914(v17);
  v1[48] = sub_22C3699D4();
  v18 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v18);
  v1[49] = sub_22C3699D4();
  v19 = sub_22C90963C();
  v1[50] = v19;
  sub_22C3699B8(v19);
  v1[51] = v20;
  v1[52] = sub_22C3699D4();
  v21 = sub_22C90952C();
  v1[53] = v21;
  sub_22C3699B8(v21);
  v1[54] = v22;
  v1[55] = sub_22C3699D4();
  v23 = sub_22C9093BC();
  v1[56] = v23;
  sub_22C3699B8(v23);
  v1[57] = v24;
  v1[58] = sub_22C3699D4();
  v25 = type metadata accessor for PromptTreeIdentifier(0);
  v1[59] = v25;
  sub_22C369914(v25);
  v1[60] = sub_22C3699D4();
  v26 = sub_22C9020CC();
  v1[61] = v26;
  sub_22C3699B8(v26);
  v1[62] = v27;
  v1[63] = sub_22C3699D4();
  v28 = sub_22C9063DC();
  v1[64] = v28;
  sub_22C3699B8(v28);
  v1[65] = v29;
  v1[66] = sub_22C36D0D4();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v30 = sub_22C9026BC();
  v1[69] = v30;
  sub_22C3699B8(v30);
  v1[70] = v31;
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v32 = sub_22C907DEC();
  v1[73] = v32;
  sub_22C3699B8(v32);
  v1[74] = v33;
  v1[75] = sub_22C36D0D4();
  v1[76] = swift_task_alloc();
  v34 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v1[77] = v34;
  sub_22C369914(v34);
  v1[78] = sub_22C3699D4();
  v35 = sub_22C90654C();
  v1[79] = v35;
  sub_22C3699B8(v35);
  v1[80] = v36;
  v1[81] = sub_22C3699D4();
  v37 = sub_22C901FAC();
  v1[82] = v37;
  sub_22C3699B8(v37);
  v1[83] = v38;
  v1[84] = sub_22C36D0D4();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v39 = sub_22C3A5908(&qword_27D9BD9E0, &qword_22C922F40);
  sub_22C369914(v39);
  v1[88] = sub_22C36D0D4();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v40 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_22C51ED20(uint64_t a1)
{
  v310 = v1;
  v2 = *(v1 + 720);
  v3 = *(v1 + 712);
  v4 = *(v1 + 696);
  v5 = *(v1 + 664);
  v6 = *(v1 + 656);
  v7 = *(v1 + 632);
  sub_22C906DFC();
  sub_22C5219C4(v2);
  v8 = *(v5 + 8);
  *(v1 + 728) = v8;
  *(v1 + 736) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = sub_22C36BAFC();
  sub_22C379DF8(v9, v10, v11, v12);
  v13 = sub_22C370B74(v3, 1, v7);
  v14 = *(v1 + 712);
  if (v13 == 1)
  {
    sub_22C36DD28(*(v1 + 712), &qword_27D9BD9E0, &qword_22C922F40);
LABEL_5:
    sub_22C906DFC();
    v25 = 0;
    goto LABEL_6;
  }

  v15 = *(v1 + 640);
  v16 = *(v1 + 632);
  v17 = sub_22C36D7E0();
  v18(v17);
  v19 = sub_22C36BAFC();
  v21 = v20(v19);
  v22 = *MEMORY[0x277D1DAD8];
  v23 = *(v15 + 8);
  v24 = sub_22C36BAFC();
  v23(v24);
  (v23)(v14, v16);
  if (v21 != v22)
  {
    goto LABEL_5;
  }

  sub_22C906DEC();
  v25 = 1;
LABEL_6:
  v26 = *(v1 + 704);
  v27 = *(v1 + 632);
  sub_22C379DF8(*(v1 + 720), v26, &qword_27D9BD9E0, &qword_22C922F40);
  v28 = sub_22C370B74(v26, 1, v27);
  v29 = *(v1 + 704);
  if (v28 == 1)
  {
    sub_22C36DD28(*(v1 + 704), &qword_27D9BD9E0, &qword_22C922F40);
LABEL_21:
    sub_22C903F7C();
    v76 = sub_22C36D39C();
    v77(v76);
    v78 = sub_22C9063CC();
    v79 = sub_22C90AADC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v1 + 696);
      v301 = v8;
      v81 = *(v1 + 656);
      v304 = *(v1 + 528);
      v293 = *(v1 + 520);
      v298 = *(v1 + 512);
      v82 = *(v1 + 240);
      v283 = *(v1 + 248);
      v289 = *(v1 + 232);
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v308[0] = v84;
      *v83 = 136315138;
      sub_22C906DFC();
      sub_22C5117E8();
      v85 = sub_22C90B47C();
      v87 = v86;
      v88 = v81;
      v8 = v301;
      v301(v80, v88);
      (*(v82 + 8))(v283, v289);
      v89 = sub_22C36F9F4(v85, v87, v308);

      *(v83 + 4) = v89;
      sub_22C36BE40(&dword_22C366000, v90, v91, "Omitting StatementResult with statementId %s");
      sub_22C36FF94(v84);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v293 + 8))(v304, v298);
    }

    else
    {
      v92 = *(v1 + 528);
      v93 = *(v1 + 520);
      v94 = *(v1 + 512);
      v96 = *(v1 + 240);
      v95 = *(v1 + 248);
      v97 = *(v1 + 232);

      (*(v96 + 8))(v95, v97);
      (*(v93 + 8))(v92, v94);
    }

    v98 = *(v1 + 720);
    v8(*(v1 + 688), *(v1 + 656));
    sub_22C36DD28(v98, &qword_27D9BD9E0, &qword_22C922F40);
LABEL_25:
    sub_22C369EAC();

    sub_22C36D5E0();
    sub_22C386FF4();

    __asm { BRAA            X2, X16 }
  }

  v30 = *(v1 + 640);
  v31 = *(v1 + 632);
  v32 = sub_22C521FE4();
  (*(v30 + 8))(v29, v31);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

  v288 = v25;
  v300 = v8;
  v33 = *(v1 + 624);
  v34 = *(v1 + 352);
  v35 = *(v1 + 360);
  v296 = *(v1 + 216);
  v36 = swift_allocBox();
  sub_22C37017C();
  v302 = v37;
  v37();
  *v33 = v36;
  v38 = *(v35 + 104);
  (v38)(v33, *MEMORY[0x277D1D798], v34);
  sub_22C36D264();
  swift_storeEnumTagMultiPayload();
  v39 = *v296;
  v40 = swift_task_alloc();
  *(v40 + 16) = v33;
  LOBYTE(v39) = sub_22C497280(0, v39, sub_22C5256F4, v40);

  if ((v39 & 1) == 0)
  {
    sub_22C903F7C();
    v101 = sub_22C36D7E0();
    (v302)(v101);
    v102 = sub_22C9063CC();
    v103 = sub_22C90AADC();
    v104 = os_log_type_enabled(v102, v103);
    v105 = *(v1 + 536);
    v106 = *(v1 + 520);
    v107 = *(v1 + 512);
    if (v104)
    {
      v305 = *(v1 + 512);
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v308[0] = v109;
      *v108 = 136315138;
      sub_22C5117E8();
      v110 = sub_22C90B47C();
      v299 = v105;
      v112 = v111;
      v113 = sub_22C379FC8();
      v114 = v300;
      (v300)(v113);
      v115 = sub_22C36F9F4(v110, v112, v308);

      *(v108 + 4) = v115;
      sub_22C36BE40(&dword_22C366000, v116, v117, "Could not find bound reference for statementId %s");
      sub_22C36FF94(v109);
      sub_22C3699EC();
      sub_22C3699EC();

      (*(v106 + 8))(v299, v305);
    }

    else
    {

      v118 = sub_22C379FC8();
      v114 = v300;
      (v300)(v118);
      (*(v106 + 8))(v105, v107);
    }

    v119 = *(v1 + 720);
    v120 = *(v1 + 624);
    v114(*(v1 + 688), *(v1 + 656));
    sub_22C36DD28(v119, &qword_27D9BD9E0, &qword_22C922F40);
    sub_22C36AB28();
    v122 = v120;
    goto LABEL_74;
  }

  v280 = v38;
  v41 = *(v1 + 624);
  v42 = *(v1 + 592);
  v43 = *(v1 + 560);
  v297 = swift_allocBox();
  *(v1 + 744) = v297;
  sub_22C525730(v41, v44);
  sub_22C906EBC();
  sub_22C907DAC();
  v45 = *(v42 + 8);
  v46 = sub_22C36FC08();
  v45(v46);
  v47 = sub_22C36CA88();
  v282 = v48;
  v49 = (v48)(v47);
  v50 = *MEMORY[0x277D1CBF0];
  v276 = *(v43 + 8);
  *(v1 + 752) = v276;
  v51 = sub_22C36CA88();
  v52(v51);
  v53 = v50;
  if (v49 == v50)
  {
    sub_22C4F290C(*(v1 + 208), *(v1 + 224));
    if ((v54 & 1) == 0)
    {
      sub_22C903F7C();
      v130 = sub_22C36D7E0();
      (v302)(v130);
      v131 = sub_22C9063CC();
      v132 = sub_22C90AADC();
      v133 = os_log_type_enabled(v131, v132);
      v134 = *(v1 + 680);
      v135 = *(v1 + 520);
      v136 = *(v1 + 512);
      if (v133)
      {
        v306 = *(v1 + 544);
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v308[0] = v138;
        *v137 = 136315138;
        sub_22C5117E8();
        v139 = sub_22C90B47C();
        v294 = v136;
        v136 = v140;
        v141 = sub_22C379FC8();
        (v300)(v141);
        v142 = v139;
        v143 = v300;
        v134 = sub_22C36F9F4(v142, v136, v308);

        *(v137 + 4) = v134;
        _os_log_impl(&dword_22C366000, v131, v132, "Skipping rendering statement result pertaining to statement ID %s", v137, 0xCu);
        sub_22C36FF94(v138);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v135 + 8))(v306, v294);
      }

      else
      {

        v169 = sub_22C379FC8();
        v143 = v300;
        (v300)(v169);
        v170 = sub_22C36D39C();
        v172(v170, v171);
      }

      sub_22C3728C8();

      v173 = sub_22C36BAFC();
      v143(v173);
      sub_22C36DD28(v134, &qword_27D9BD9E0, &qword_22C922F40);
      sub_22C36AB28();
      v122 = v136;
      goto LABEL_74;
    }
  }

  v303 = v297 | 0x2000000000000000;
  v55 = *(v1 + 600);
  v56 = *(v1 + 584);
  v57 = *(v1 + 568);
  v58 = *(v1 + 552);
  sub_22C906EBC();
  sub_22C907DAC();
  (v45)(v55, v56);
  v59 = v282(v57, v58);
  if (v59 == v53)
  {
    sub_22C388FC0();
    v60 = sub_22C37EBDC();
    v61(v60);
    v62 = sub_22C36BA00();
    v63(v62);
    sub_22C36A83C();
    v64 = swift_allocObject();
    *(v64 + 16) = 0x2873736563637573;
    *(v64 + 24) = 0xE800000000000000;
    sub_22C374C14();
    sub_22C591324();
    v66 = v65;
    v68 = *(v65 + 16);
    v67 = *(v65 + 24);
    v69 = v67 >> 1;
    v70 = v68 + 1;
    if (v67 >> 1 <= v68)
    {
      sub_22C525A80();
      v66 = v264;
      sub_22C375E88();
    }

    *(v66 + 16) = v70;
    *(v66 + 8 * v68 + 32) = v64;
    v71 = v68 + 2;
    if (v69 < (v68 + 2))
    {
      sub_22C369AB0(v67);
      sub_22C591324();
      v66 = v265;
    }

    *(v66 + 16) = v71;
    *(v66 + 8 * v70 + 32) = v303;
    sub_22C36A83C();
    v72 = swift_allocObject();
    *(v72 + 16) = 41;
    *(v72 + 24) = 0xE100000000000000;
    v73 = *(v66 + 24);

    if ((v68 + 3) > (v73 >> 1))
    {
      sub_22C525A80();
      v66 = v266;
    }

    *(v66 + 16) = v68 + 3;
    *(v66 + 8 * v71 + 32) = v72;
    sub_22C3DB9B0(v66);
    sub_22C3869F0();

    sub_22C369AEC();
    v74 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v75 = swift_allocObject();
    *(v75 + 16) = v71;
    *(v74 + 16) = v75;
    if (v288)
    {
      v278 = v74 | 0x6000000000000000;
      swift_retain_n();
    }

    else
    {
      v144 = *(v1 + 480);
      sub_22C37F224();
      sub_22C36C640(v145, v146, v147, v148);
      type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
      swift_storeEnumTagMultiPayload();
      v149 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      sub_22C48A0B0((v144 + *(v149 + 20)));
      swift_storeEnumTagMultiPayload();
      v150 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v151 = swift_allocBox();
      v153 = v152;
      sub_22C525A54();
      sub_22C525730(v144, v154);
      v155 = swift_allocBox();
      sub_22C486784();
      v191 = sub_22C525ABC(v155 | 0x2000000000000000, v74 | 0x6000000000000000);
      v192 = *(v150 + 48);
      sub_22C373454();
      sub_22C525788(v193, v194);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v195 = swift_allocObject();
      *(v195 + 16) = v191;
      *(v153 + v192) = v195;
      v278 = v151 | 0x4000000000000000;
    }

    v196 = *(v1 + 464);
    v197 = *(v1 + 440);
    v198 = *(v1 + 416);
    v285 = *(v1 + 432);
    v291 = *(v1 + 424);
    v199 = *(v1 + 400);
    v200 = *(v1 + 408);
    v201 = *(v1 + 392);
    v202 = *(v1 + 224);
    sub_22C90207C();
    v203 = (v202 + *(type metadata accessor for StatementResultParser_v2_0(0) + 20));
    v204 = v203[32];
    v205 = v203[33];
    v307 = v203;
    sub_22C374168(v203 + 29, v204);
    sub_22C90935C();
    (*(v200 + 104))(v198, *MEMORY[0x277D72E08], v199);
    v206 = sub_22C906D3C();
    sub_22C36C640(v201, 1, 1, v206);
    type metadata accessor for RenderingState(0);
    swift_allocObject();
    v207 = sub_22C480800(v201);
    (*(v205 + 24))(v308, v197, v198, v207, v204, v205);

    (*(v200 + 8))(v198, v199);
    (*(v285 + 8))(v197, v291);
    if (v309)
    {
      v292 = 0xF000000000000007;
    }

    else
    {
      sub_22C525B28();
      v292 = v196;
      sub_22C380500();
    }

    v208 = *(v1 + 384);
    v210 = *(v1 + 360);
    v209 = *(v1 + 368);
    v274 = *(v1 + 352);
    v270 = *(v1 + 216);
    v211 = v307[23];
    ObjectType = swift_getObjectType();
    v212 = sub_22C36D7E0();
    v269 = v213;
    (v213)(v212);
    sub_22C36D39C();
    swift_storeEnumTagMultiPayload();
    v214 = *(v270 + 32);
    v268 = *MEMORY[0x277D1D7F8];
    v280(v209);
    v271 = v214;
    (*(v211 + 8))(v308, v208, 0, v214, v209, ObjectType, v211);
    v267 = *(v210 + 8);
    v267(v209, v274);
    sub_22C38BA28();
    sub_22C525788(v208, v215);
    if (v309)
    {
      v287 = 0xF000000000000007;
    }

    else
    {
      v216 = v308[3];
      v217 = v308[4];
      v219 = v308[1];
      v218 = v308[2];
      v220 = v308[0];

      v287 = v220;
      sub_22C456CE4(v220, v219, v218, v216, v217, 0);
    }

    v221 = *(v1 + 384);
    v222 = *(v1 + 368);
    v223 = *(v1 + 352);
    v224 = v307[21];
    v225 = swift_getObjectType();
    sub_22C37017C();
    v269();
    sub_22C36CA88();
    swift_storeEnumTagMultiPayload();
    (v280)(v222, v268, v223);
    (*(v224 + 8))(v308, v221, 0, v271, v222, v225, v224);
    v267(v222, v223);
    sub_22C38BA28();
    sub_22C525788(v221, v226);
    if ((v309 & 1) == 0)
    {
      sub_22C525B28();
      sub_22C380500();
    }

    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_22C90F800;
    sub_22C3A5908(&qword_27D9BC368, &unk_22C912AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    *(inited + 32) = v278;
    *(inited + 40) = 0xF000000000000007;
    sub_22C454710(0xF000000000000007);
    v229 = 0;
    v230 = MEMORY[0x277D84F90];
    while (v229 != 2)
    {
      v231 = *(inited + 8 * v229++ + 32);
      if ((~v231 & 0xF000000000000007) != 0)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591324();
          v230 = v234;
        }

        v233 = *(v230 + 16);
        v232 = *(v230 + 24);
        if (v233 >= v232 >> 1)
        {
          sub_22C369AB0(v232);
          sub_22C591324();
          v230 = v235;
        }

        *(v230 + 16) = v233 + 1;
        *(v230 + 8 * v233 + 32) = v231;
      }
    }

    v273 = *(v1 + 688);
    v275 = *(v1 + 720);
    v272 = *(v1 + 656);
    v279 = *(v1 + 624);
    v237 = *(v1 + 496);
    v236 = *(v1 + 504);
    v238 = *(v1 + 488);
    swift_setDeallocating();
    sub_22C590054();
    v239 = sub_22C47D738(8202, 0xE200000000000000, v230);

    *(v227 + 32) = 5;
    *(v227 + 40) = v239 | 2;

    sub_22C4546F8(0xF000000000000007);
    sub_22C4546F8(v287);
    sub_22C4546F8(0xF000000000000007);
    sub_22C4546F8(v292);

    v240 = sub_22C37B2B4();
    v241(v240);
    (*(v237 + 8))(v236, v238);
    v300(v273, v272);
    sub_22C36DD28(v275, &qword_27D9BD9E0, &qword_22C922F40);
    sub_22C36AB28();
    v122 = v279;
    goto LABEL_74;
  }

  if (v59 == *MEMORY[0x277D1CB98] || v59 == *MEMORY[0x277D1CBA8])
  {
    goto LABEL_37;
  }

  if (v59 == *MEMORY[0x277D1CBB0])
  {
    v156 = *(v1 + 696);
    v284 = *(v1 + 688);
    v290 = *(v1 + 720);
    v281 = *(v1 + 656);
    v295 = *(v1 + 624);
    sub_22C388FC0();
    v158 = *(v1 + 312);
    v157 = *(v1 + 320);
    v159 = *(v1 + 304);
    v277 = *(v1 + 216);
    (*(v160 + 96))(v55);
    (*(v158 + 32))(v157, v55, v159);
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v161 = swift_initStackObject();
    *(v161 + 16) = xmmword_22C90F870;
    *(v161 + 32) = v303;
    sub_22C36A83C();
    v162 = swift_allocObject();
    *(v1 + 168) = 1886413102;
    *(v1 + 176) = 0xE400000000000000;

    *(v162 + 16) = sub_22C90A49C();
    *(v162 + 24) = v163;
    *(v161 + 40) = v162;
    sub_22C3DB9B0(v161);
    sub_22C3869F0();
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v164 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v165 = swift_allocObject();
    *(v165 + 16) = v162;
    *(v164 + 16) = v165;
    v166 = MEMORY[0x2318AFCE0]();
    v167 = swift_task_alloc();
    v167[1] = vextq_s8(v277, v277, 8uLL);
    sub_22C3B2EA4(sub_22C525710, v167, v166);

    sub_22C36A83C();
    v168 = swift_allocObject();
    *(v168 + 16) = 0xD000000000000011;
    *(v168 + 24) = 0x800000022C931D20;
    sub_22C906E1C();
    sub_22C52330C();

    v300(v156, v281);
    (*(v158 + 8))(v157, v159);
    v300(v284, v281);
    sub_22C36DD28(v290, &qword_27D9BD9E0, &qword_22C922F40);
    sub_22C36AB28();
    v122 = v295;
LABEL_74:
    sub_22C525788(v122, v121);
    goto LABEL_25;
  }

  if (v59 == *MEMORY[0x277D1CBB8] || v59 == *MEMORY[0x277D1CBD0])
  {
    goto LABEL_37;
  }

  if (v59 == *MEMORY[0x277D1CBD8])
  {
    sub_22C388FC0();
    v175 = sub_22C37EBDC();
    v176(v175);
    sub_22C37017C();
    v177();
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v178 = swift_initStackObject();
    *(v178 + 16) = xmmword_22C90FB40;
    *(v178 + 32) = v303;
    sub_22C36A83C();
    v179 = swift_allocObject();
    *(v1 + 184) = 46;
    *(v1 + 192) = 0xE100000000000000;

    *(v179 + 16) = sub_22C90A49C();
    *(v179 + 24) = v180;
    *(v178 + 40) = v179;
    sub_22C36A83C();
    v181 = swift_allocObject();
    sub_22C902A0C();
    v182 = sub_22C90A2CC();
    v184 = v183;

    *(v181 + 16) = v182;
    *(v181 + 24) = v184;
    *(v178 + 48) = v181;
    v185 = sub_22C3DB9B0(v178);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v186 = swift_allocObject();
    *(v1 + 760) = v186;
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v187 = swift_allocObject();
    *(v187 + 16) = v185;
    *(v186 + 16) = v187;
    *(v1 + 768) = sub_22C902A3C();
    sub_22C906E1C();
    type metadata accessor for StatementResultParser_v2_0(0);
    v188 = swift_task_alloc();
    *(v1 + 776) = v188;
    *v188 = v1;
    v188[1] = sub_22C520ABC;
    goto LABEL_54;
  }

  v242 = v59 == *MEMORY[0x277D1CBC0] || v59 == *MEMORY[0x277D1CBE0];
  if (v242 || v59 == *MEMORY[0x277D1CBA0])
  {
LABEL_37:
    v124 = *(v1 + 224);
    v276(*(v1 + 568), *(v1 + 552));
    v125 = type metadata accessor for StatementResultParser_v2_0(0);
    sub_22C374168((v124 + *(v125 + 24)), *(v124 + *(v125 + 24) + 24));
    sub_22C37596C();
    v126 = swift_task_alloc();
    *(v1 + 816) = v126;
    *v126 = v1;
    v127 = sub_22C52110C;
    goto LABEL_38;
  }

  if (v59 != *MEMORY[0x277D1CBC8])
  {
    if (v59 == *MEMORY[0x277D1CBE8])
    {
      sub_22C388FC0();
      v250 = sub_22C37EBDC();
      v251(v250);
      v252 = sub_22C36D7E0();
      v253(v252);
      sub_22C5239CC();
      v255 = *(v1 + 720);
      v256 = *(v1 + 624);
      if ((~v254 & 0xF000000000000007) != 0)
      {
        v262 = v254;
        sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
        v263 = swift_allocObject();
        *(v263 + 16) = xmmword_22C90F800;
        *(v263 + 32) = 5;
        *(v263 + 40) = v262 | 2;
      }

      v257 = sub_22C36CA88();
      v258(v257);
      v259 = sub_22C36D39C();
      (v300)(v259);
      sub_22C36DD28(v255, &qword_27D9BD9E0, &qword_22C922F40);
      sub_22C36AB28();
      v122 = v256;
      goto LABEL_74;
    }

    v260 = *(v1 + 224);
    v261 = type metadata accessor for StatementResultParser_v2_0(0);
    sub_22C374168((v260 + *(v261 + 24)), *(v260 + *(v261 + 24) + 24));
    sub_22C37596C();
    v126 = swift_task_alloc();
    *(v1 + 840) = v126;
    *v126 = v1;
    v127 = sub_22C5213A8;
LABEL_38:
    v126[1] = v127;
    sub_22C386FF4();

    __asm { BRAA            X6, X16 }
  }

  sub_22C388FC0();
  v245 = *(v1 + 288);
  v244 = *(v1 + 296);
  v246 = *(v1 + 280);
  v247 = sub_22C37EBDC();
  v248(v247);
  (*(v245 + 32))(v244, v55, v246);
  *(v1 + 792) = sub_22C9028EC();
  sub_22C906E1C();
  type metadata accessor for StatementResultParser_v2_0(0);
  v249 = swift_task_alloc();
  *(v1 + 800) = v249;
  *v249 = v1;
  v249[1] = sub_22C520DF4;
LABEL_54:
  sub_22C386FF4();

  return sub_22C52269C();
}

uint64_t sub_22C520ABC()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 728);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 784) = v7;

  v9 = sub_22C36BAFC();
  v4(v9);
  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C520DF4()
{
  sub_22C36D5EC();
  sub_22C369A3C();
  sub_22C369A30();
  *v2 = v1;
  v4 = *(v3 + 728);
  v5 = *v0;
  sub_22C369970();
  *v6 = v5;
  *(v8 + 808) = v7;

  v9 = sub_22C36BAFC();
  v4(v9);
  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22C52110C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 824) = v0;

  if (!v0)
  {
    *(v5 + 832) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C5213A8()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 848) = v0;

  if (!v0)
  {
    *(v5 + 856) = v3;
  }

  sub_22C374448();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C5219C4@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v39 - v3;
  v4 = sub_22C9088CC();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C908A0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  v16 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = sub_22C9087DC();
  v39 = v1;
  v46 = v1;
  sub_22C6B089C(sub_22C5259D8, v45, v22);

  sub_22C379DF8(v15, v13, &qword_27D9BA808, &qword_22C90C6E0);
  v23 = 1;
  if (sub_22C370B74(v13, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v13, v6);
    sub_22C9089EC();
    (*(v7 + 8))(v9, v6);
    v23 = 0;
  }

  sub_22C36DD28(v15, &qword_27D9BA808, &qword_22C90C6E0);
  v24 = sub_22C9089DC();
  sub_22C36C640(v21, v23, 1, v24);
  sub_22C379DF8(v21, v19, &qword_27D9BBAB0, &qword_22C910D10);
  if (sub_22C370B74(v19, 1, v24) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BBAB0, &qword_22C910D10);
    v25 = v19;
    v26 = &qword_27D9BBAB0;
    v27 = &qword_22C910D10;
  }

  else
  {
    v28 = *(v24 - 8);
    if ((*(v28 + 88))(v19, v24) != *MEMORY[0x277D1E6F8])
    {
      sub_22C36DD28(v21, &qword_27D9BBAB0, &qword_22C910D10);
      (*(v28 + 8))(v19, v24);
      goto LABEL_10;
    }

    (*(v28 + 96))(v19, v24);
    v30 = v40;
    v29 = v41;
    v31 = v42;
    (*(v41 + 32))(v40, v19, v42);
    v32 = sub_22C90887C();
    MEMORY[0x28223BE20](v32);
    *(&v39 - 2) = v39;
    v33 = v43;
    sub_22C6B0590(sub_22C5259F8, (&v39 - 4), v32);

    v34 = sub_22C9070DC();
    if (sub_22C370B74(v33, 1, v34) != 1)
    {
      v36 = v44;
      sub_22C90702C();
      (*(v29 + 8))(v30, v31);
      sub_22C36DD28(v21, &qword_27D9BBAB0, &qword_22C910D10);
      (*(*(v34 - 8) + 8))(v33, v34);
      v35 = 0;
      goto LABEL_11;
    }

    (*(v29 + 8))(v30, v31);
    sub_22C36DD28(v21, &qword_27D9BBAB0, &qword_22C910D10);
    v26 = &qword_27D9BAA18;
    v27 = &qword_22C911C40;
    v25 = v33;
  }

  sub_22C36DD28(v25, v26, v27);
LABEL_10:
  v35 = 1;
  v36 = v44;
LABEL_11:
  v37 = sub_22C90654C();
  return sub_22C36C640(v36, v35, 1, v37);
}

uint64_t sub_22C521FE4()
{
  v1 = v0;
  v2 = sub_22C90654C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D1DAA8] || v6 == *MEMORY[0x277D1D9F8] || v6 == *MEMORY[0x277D1DAC0] || v6 == *MEMORY[0x277D1DAA0] || v6 == *MEMORY[0x277D1DA98] || v6 == *MEMORY[0x277D1DA50] || v6 == *MEMORY[0x277D1DA78])
  {
    goto LABEL_21;
  }

  if (v6 == *MEMORY[0x277D1DA30] || v6 == *MEMORY[0x277D1DA08] || v6 == *MEMORY[0x277D1DA10])
  {
    goto LABEL_30;
  }

  if (v6 == *MEMORY[0x277D1DA70] || v6 == *MEMORY[0x277D1DA88] || v6 == *MEMORY[0x277D1DAD8] || v6 == *MEMORY[0x277D1DAD0] || v6 == *MEMORY[0x277D1DA48])
  {
    goto LABEL_21;
  }

  if (v6 == *MEMORY[0x277D1DAE8] || v6 == *MEMORY[0x277D1D9F0])
  {
    goto LABEL_30;
  }

  if (v6 == *MEMORY[0x277D1DA90])
  {
LABEL_21:
    v13 = 1;
LABEL_31:
    (*(v3 + 8))(v5, v2);
    return v13;
  }

  if (v6 == *MEMORY[0x277D1DAC8] || v6 == *MEMORY[0x277D1DAB0])
  {
    goto LABEL_30;
  }

  if (v6 == *MEMORY[0x277D1DA80] || v6 == *MEMORY[0x277D1DAE0] || v6 == *MEMORY[0x277D1DAB8])
  {
    goto LABEL_21;
  }

  if (v6 == *MEMORY[0x277D1DA18])
  {
LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

  if (v6 == *MEMORY[0x277D1DA00] || v6 == *MEMORY[0x277D1DA58] || v6 == *MEMORY[0x277D1DA28])
  {
    goto LABEL_21;
  }

  if (v6 == *MEMORY[0x277D1DA40])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D1DA20])
  {
    return 0;
  }

  v27 = v6 == *MEMORY[0x277D1DA38] || v6 == *MEMORY[0x277D1DAF0];
  if (v27 || v6 == *MEMORY[0x277D1DA68])
  {
    return 1;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

void sub_22C52233C()
{
  sub_22C36BA7C();
  v2 = v1;
  v40 = v4;
  v41 = v3;
  v42 = v5;
  sub_22C369A48();
  v6 = sub_22C9093BC();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C902D0C();
  sub_22C37F224();
  sub_22C36C640(v19, v20, v21, v18);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v22 = sub_22C901FAC();
  v23 = swift_allocBox();
  (*(*(v22 - 8) + 16))(v24, v2, v22);
  v25 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v17 + v25) = v23;
  (*(*(v18 - 8) + 104))(v17 + v25, *MEMORY[0x277D1D798], v18);
  sub_22C36FC08();
  swift_storeEnumTagMultiPayload();
  (*(v8 + 16))(v12, v0, v6);
  LODWORD(v22) = (*(v8 + 88))(v12, v6);
  LODWORD(v23) = *MEMORY[0x277D729E0];
  (*(v8 + 8))(v12, v6);
  if (v22 == v23)
  {
    sub_22C524B20();
    v27 = v26;
    v28 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v30 = v29;
    sub_22C525A54();
    sub_22C525730(v17, v31);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    sub_22C525AD8();
    v32 = v13 | 0x2000000000000000;
    if (v27)
    {
      v33 = sub_22C524EE8(v32, v42);
    }

    else
    {
      v33 = sub_22C525158(v32, v40, v41, 0, 0xE000000000000000);
    }
  }

  else
  {
    v28 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v30 = v34;
    sub_22C525A54();
    sub_22C525730(v17, v35);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    sub_22C525AD8();
    v33 = sub_22C525ABC(v13 | 0x2000000000000000, v42);
  }

  v36 = v33;
  v37 = *(v28 + 48);
  sub_22C373454();
  sub_22C525788(v17, v38);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  *(v30 + v37) = v39;
  sub_22C36CC48();
}

uint64_t sub_22C52269C()
{
  sub_22C369980();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v0[11] = v5;
  v6 = sub_22C9063DC();
  v0[16] = v6;
  sub_22C3699B8(v6);
  v0[17] = v7;
  v0[18] = sub_22C3699D4();
  v8 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v8);
  v0[19] = sub_22C3699D4();
  v9 = sub_22C90963C();
  v0[20] = v9;
  sub_22C3699B8(v9);
  v0[21] = v10;
  v0[22] = sub_22C3699D4();
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v11);
  v0[23] = sub_22C3699D4();
  v12 = sub_22C90952C();
  v0[24] = v12;
  sub_22C3699B8(v12);
  v0[25] = v13;
  v0[26] = sub_22C36D0D4();
  v0[27] = swift_task_alloc();
  v14 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_22C522844()
{
  v41 = v1;
  sub_22C58B008(*(v1 + 96), *(v1 + 184));
  sub_22C9093BC();
  v2 = sub_22C3869F0();
  if (sub_22C370B74(v2, 1, v0) == 1)
  {
    sub_22C36DD28(*(v1 + 184), &qword_27D9BB908, &qword_22C910960);
LABEL_11:
    sub_22C36A83C();
    v31 = swift_allocObject();
    *(v1 + 248) = v31;
    *(v1 + 64) = 7958081;
    *(v1 + 72) = 0xE300000000000000;
    v38 = *(v1 + 112);
    *(v31 + 16) = sub_22C90A49C();
    *(v31 + 24) = v32;
    v33 = swift_task_alloc();
    *(v1 + 256) = v33;
    *(v33 + 16) = v38;
    sub_22C38823C(&unk_22C926808);

    v34 = swift_task_alloc();
    *(v1 + 264) = v34;
    *v34 = v1;
    v34[1] = sub_22C522F7C;
    v35 = *(v1 + 96);
    v36 = &unk_22C91A180;
LABEL_12:

    return (v38)(v36, v33, v35);
  }

  v3 = *(v1 + 216);
  v4 = *(v1 + 184);
  v5 = *(v1 + 96);
  sub_22C90935C();
  (*(*(v0 - 8) + 8))(v4, v0);
  v6 = sub_22C36D264();
  v7(v6);
  *(v1 + 80) = v5;
  *(swift_task_alloc() + 16) = v3;
  sub_22C3A5908(&qword_27D9BADC0, &qword_22C90D668);
  sub_22C5258D8();
  LOBYTE(v4) = sub_22C90A4FC();

  v8 = *(v1 + 216);
  if ((v4 & 1) == 0)
  {
    (*(*(v1 + 200) + 8))(*(v1 + 216), *(v1 + 192));
    goto LABEL_11;
  }

  v10 = *(v1 + 168);
  v9 = *(v1 + 176);
  v11 = *(v1 + 152);
  v12 = *(v1 + 160);
  v13 = *(v1 + 112);
  v14 = v13[32];
  v15 = v13[33];
  sub_22C374168(v13 + 29, v14);
  (*(v10 + 104))(v9, *MEMORY[0x277D72E08], v12);
  v16 = sub_22C906D3C();
  sub_22C36C640(v11, 1, 1, v16);
  type metadata accessor for RenderingState(0);
  swift_allocObject();
  v17 = sub_22C480800(v11);
  (*(v15 + 24))(&v39, v8, v9, v17, v14, v15);

  v18 = sub_22C36BAFC();
  v19(v18);
  *(v1 + 224) = v39;
  if ((v40 & 1) == 0)
  {

    v38 = *(v1 + 112);
    sub_22C37F23C();
    v33 = swift_task_alloc();
    *(v1 + 232) = v33;
    *(v33 + 16) = v38;
    sub_22C38823C(&unk_22C926808);

    v37 = swift_task_alloc();
    *(v1 + 240) = v37;
    *v37 = v1;
    v37[1] = sub_22C522D70;
    v35 = *(v1 + 96);
    v36 = &unk_22C91A198;
    goto LABEL_12;
  }

  sub_22C903F7C();
  v20 = sub_22C9063CC();
  v21 = sub_22C90AADC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22C366000, v20, v21, "Unable to render the TypeIdentifier for a collection of parameter disambiguation choices. Skipping.", v22, 2u);
    sub_22C3699EC();
  }

  v24 = *(v1 + 136);
  v23 = *(v1 + 144);
  v25 = *(v1 + 128);

  (*(v24 + 8))(v23, v25);
  v26 = sub_22C36BAFC();
  v27(v26);

  sub_22C36D5E0();
  v29 = MEMORY[0x277D84F90];

  return v28(v29);
}

void sub_22C522D70()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  if (v0)
  {
  }

  else
  {

    sub_22C374448();

    MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C522E98()
{
  sub_22C36D5EC();
  (*(v0[25] + 8))(v0[27], v0[24]);
  sub_22C37017C();
  sub_22C52330C();
  v2 = v1;

  sub_22C36D5E0();

  return v3(v2);
}

void sub_22C522F7C()
{
  sub_22C36FB38();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  if (v0)
  {
  }

  else
  {

    sub_22C374448();

    MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C5230A4()
{
  sub_22C36D5EC();
  sub_22C52330C();
  v1 = v0;

  sub_22C36D5E0();

  return v2(v1);
}

uint64_t sub_22C523174@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_22C90977C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StatementResultParser_v2_0(0);
  sub_22C374168((a1 + *(v10 + 20)), *(a1 + *(v10 + 20) + 24));
  v11 = *(a2 + 32);
  sub_22C47FCDC();
  v12 = sub_22C9096FC();
  v20 = v9;
  sub_22C4FB170(v12, v13, sub_22C436434, v19, v11);

  (*(v7 + 8))(v9, v6);
  v14 = swift_allocObject();
  v15 = sub_22C90A2AC();
  v17 = v16;

  *(v14 + 16) = v15;
  *(v14 + 24) = v17;
  *a3 = v14;
  return result;
}

void sub_22C52330C()
{
  sub_22C36BA7C();
  v1 = v0;
  v87 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v77 - v12;
  sub_22C902D0C();
  sub_22C37F224();
  v84 = v14;
  sub_22C36C640(v15, v16, v17, v14);
  v79 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v82 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C48A0B0(&v13[*(v82 + 20)]);
  v86 = v7;
  swift_storeEnumTagMultiPayload();
  v18 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v19 = swift_allocBox();
  v21 = v20;
  sub_22C525A54();
  sub_22C525730(v13, v22);
  v81 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v23 = swift_allocBox();
  sub_22C486784();
  v24 = sub_22C5243A4(v23 | 0x2000000000000000, v6);
  v80 = 0;
  v85 = v18;
  v25 = *(v18 + 48);
  sub_22C373454();
  sub_22C525788(v13, v26);

  v27 = sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  *(v21 + v25) = v28;
  v83 = sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  sub_22C36A83C();
  v30 = swift_allocObject();
  v88 = 2683;
  v89 = 0xE200000000000000;
  *(v30 + 16) = sub_22C90A49C();
  *(v30 + 24) = v31;
  *(inited + 32) = v30;
  v32 = *(v4 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v77 = v27;
    v78 = v11;
    v34 = v19;
    v88 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v32, 0);
    v30 = 0;
    v33 = v88;
    v35 = v4 + 32;
    do
    {
      v36 = *(v35 + 8 * v30);

      v37 = sub_22C524618(v30, v36, v1);

      v88 = v33;
      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        v40 = sub_22C369AB0(v38);
        sub_22C3B63D4(v40, v39 + 1, 1);
        v33 = v88;
      }

      ++v30;
      *(v33 + 16) = v39 + 1;
      *(v33 + 8 * v39 + 32) = v37;
    }

    while (v32 != v30);
    v19 = v34;
    v11 = v78;
  }

  sub_22C3DB9B0(v33);
  sub_22C3869F0();

  sub_22C36D2A8();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22C9192A0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v42 = swift_allocObject();
  *(v42 + 16) = v30;
  *(v41 + 32) = v42;
  sub_22C369AEC();
  v43 = swift_allocObject();
  sub_22C369AEC();
  v44 = swift_allocObject();
  *(v44 + 16) = v41 | 0x8000000000000000;
  *(v43 + 16) = v44;
  v45 = v43 | 0x6000000000000000;
  sub_22C36D2A8();
  v46 = swift_allocObject();
  *(v46 + 16) = 1;
  *(v46 + 24) = 1;
  sub_22C369AEC();
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v46 + 32) = v47;
  *(inited + 40) = v46 | 0xA000000000000000;
  sub_22C36A83C();
  v48 = swift_allocObject();
  v88 = 32010;
  v89 = 0xE200000000000000;
  *(v48 + 16) = sub_22C90A49C();
  *(v48 + 24) = v49;
  *(inited + 48) = v48;
  v50 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v51 = swift_allocObject();
  sub_22C369AEC();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  *(v51 + 16) = v52;
  sub_22C37F224();
  v53 = v84;
  sub_22C36C640(v54, v55, v56, v84);
  swift_storeEnumTagMultiPayload();
  v57 = sub_22C901FAC();
  v58 = swift_allocBox();
  (*(*(v57 - 8) + 16))(v59, v1, v57);
  v60 = *(v82 + 20);
  *&v11[v60] = v58;
  (*(*(v53 - 8) + 104))(&v11[v60], *MEMORY[0x277D1D798], v53);
  swift_storeEnumTagMultiPayload();
  v61 = v85;
  v62 = swift_allocBox();
  v64 = v63;
  sub_22C525A54();
  sub_22C525730(v11, v65);
  v66 = swift_allocBox();
  sub_22C486784();
  v67 = v80;
  v68 = sub_22C525158(v66 | 0x2000000000000000, v87, v51 | 0x6000000000000000, 32, 0xE100000000000000);
  if (v67)
  {

    sub_22C373454();
    sub_22C525788(v64, v76);
    swift_deallocBox();
    __break(1u);
  }

  else
  {
    v69 = v68;
    v70 = *(v61 + 48);
    sub_22C373454();
    sub_22C525788(v11, v71);

    sub_22C369AEC();
    v72 = swift_allocObject();
    *(v72 + 16) = v69;
    *(v64 + v70) = v72;
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_22C90F800;
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_22C90F870;
    *(v74 + 32) = v19 | 0x4000000000000000;
    *(v74 + 40) = v62 | 0x4000000000000000;

    v75 = sub_22C47D738(10, 0xE100000000000000, v74);
    swift_setDeallocating();
    sub_22C58FFB0();
    *(v73 + 32) = 5;
    *(v73 + 40) = v75 | 2;

    sub_22C36CC48();
  }
}

void sub_22C5239CC()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C369A48();
  type metadata accessor for PromptTreeIdentifier(v4);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C901FBC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C90200C();
  v16 = (*(v11 + 88))(v15, v9);
  if (v16 == *MEMORY[0x277D1C3F0])
  {
    v17 = sub_22C37B2B4();
    v18(v17);
  }

  else
  {
    if (v16 == *MEMORY[0x277D1C3F8])
    {
      v43 = sub_22C37B2B4();
      v44(v43);
      goto LABEL_12;
    }

    if (v16 != *MEMORY[0x277D1C388] && v16 != *MEMORY[0x277D1C408] && v16 != *MEMORY[0x277D1C3D8] && v16 != *MEMORY[0x277D1C3A8] && v16 != *MEMORY[0x277D1C3E0] && v16 != *MEMORY[0x277D1C390] && v16 != *MEMORY[0x277D1C398] && v16 != *MEMORY[0x277D1C3E8] && v16 != *MEMORY[0x277D1C410] && v16 != *MEMORY[0x277D1C3B8] && v16 != *MEMORY[0x277D1C3D0] && v16 != *MEMORY[0x277D1C418])
    {
      if (v16 == *MEMORY[0x277D1C3C0])
      {
        goto LABEL_12;
      }

      v56 = v16 == *MEMORY[0x277D1C3A0] || v16 == *MEMORY[0x277D1C3B0];
      v57 = v56 || v16 == *MEMORY[0x277D1C3C8];
      v58 = v57 || v16 == *MEMORY[0x277D1C420];
      if (!v58 && v16 != *MEMORY[0x277D1C400])
      {
        sub_22C90B4EC();
        __break(1u);
        goto LABEL_62;
      }
    }
  }

  sub_22C36A83C();
  v9 = swift_allocObject();
  *(v9 + 16) = 0x286572756C696166;
  *(v9 + 24) = 0xE800000000000000;
  sub_22C374C14();
  sub_22C591324();
  v20 = v19;
  v11 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = v21 >> 1;
  v15 = v11 + 1;
  if (v21 >> 1 <= v11)
  {
LABEL_62:
    sub_22C369AB0(v21);
    sub_22C591324();
    v20 = v60;
    sub_22C375E88();
  }

  *(v20 + 16) = v15;
  *(v20 + 8 * v11 + 32) = v9;
  v23 = v11 + 2;
  if (v22 < (v11 + 2))
  {
    sub_22C525A80();
    v20 = v61;
  }

  *(v20 + 16) = v23;
  *(v20 + 8 * v15 + 32) = v3;
  sub_22C36A83C();
  v24 = swift_allocObject();
  *(v24 + 16) = 41;
  *(v24 + 24) = 0xE100000000000000;
  v25 = *(v20 + 24);
  v26 = v11 + 3;

  if (v26 > (v25 >> 1))
  {
    sub_22C591324();
    v20 = v62;
  }

  *(v20 + 16) = v26;
  *(v20 + 8 * v23 + 32) = v24;
  v27 = sub_22C3DB9B0(v20);

  sub_22C369AEC();
  v28 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = v29;
  if (v1)
  {
    sub_22C902D0C();
    sub_22C37F224();
    sub_22C36C640(v30, v31, v32, v33);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    v34 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
    sub_22C48A0B0((v8 + *(v34 + 20)));
    sub_22C36BAFC();
    swift_storeEnumTagMultiPayload();
    v35 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v37 = v36;
    sub_22C525A54();
    sub_22C525730(v8, v38);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    sub_22C525AD8();
    v39 = sub_22C525ABC(v25 | 0x2000000000000000, v28 | 0x6000000000000000);

    v40 = *(v35 + 48);

    sub_22C373454();
    sub_22C525788(v8, v41);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    *(v37 + v40) = v42;
  }

LABEL_12:
  sub_22C36CC48();
}

uint64_t sub_22C523ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_22C902D0C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for DirectionalTypedValue(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C523FC8, 0, 0);
}

uint64_t sub_22C523FC8()
{
  sub_22C3861B8();
  swift_getObjectType();
  sub_22C9093BC();
  sub_22C36985C();
  (*(v3 + 16))(v0, v2);
  sub_22C36BA00();
  swift_storeEnumTagMultiPayload();
  v4 = sub_22C525AF4();
  v5(v4);
  v6 = sub_22C37A084();
  v7(v6);
  v8 = sub_22C36D264();
  v9(v8);
  sub_22C38BA28();
  v11 = sub_22C525788(v0, v10);
  if (v32)
  {
    sub_22C36A83C();
    swift_allocObject();
    v19 = sub_22C387194();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0xE000000000000000;
    v20 = sub_22C90A49C();
    *(v1 + 16) = v20;
    *(v1 + 24) = v21;
  }

  else
  {
    sub_22C386764(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31);
    sub_22C37F23C();
  }

  sub_22C525B08(v20, v21, v22, v23, v24, v25, v26, v27);

  sub_22C369A24();

  return v28();
}

uint64_t sub_22C52413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_22C902D0C();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for DirectionalTypedValue(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C524230, 0, 0);
}

uint64_t sub_22C524230()
{
  sub_22C3861B8();
  swift_getObjectType();
  sub_22C9093BC();
  sub_22C36985C();
  (*(v3 + 16))(v0, v2);
  sub_22C36BA00();
  swift_storeEnumTagMultiPayload();
  v4 = sub_22C525AF4();
  v5(v4);
  v6 = sub_22C37A084();
  v7(v6);
  v8 = sub_22C36D264();
  v9(v8);
  sub_22C38BA28();
  v11 = sub_22C525788(v0, v10);
  if (v32)
  {
    sub_22C36A83C();
    swift_allocObject();
    v19 = sub_22C387194();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0xE000000000000000;
    v20 = sub_22C90A49C();
    *(v1 + 16) = v20;
    *(v1 + 24) = v21;
  }

  else
  {
    sub_22C386764(v11, v12, v13, v14, v15, v16, v17, v18, v30, v31);
    sub_22C37F23C();
  }

  sub_22C525B08(v20, v21, v22, v23, v24, v25, v26, v27);

  sub_22C369A24();

  return v28();
}

uint64_t sub_22C5243A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x800000022C931C50;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C524618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = sub_22C901FAC();
  v14 = swift_allocBox();
  (*(*(v13 - 8) + 16))(v15, a3, v13);
  *v11 = v14;
  v16 = *MEMORY[0x277D1D798];
  v17 = sub_22C902D0C();
  v18 = *(*(v17 - 8) + 104);
  v18(v11, v16, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
  *(v11 + v12) = v19;
  v18((v11 + v12), *MEMORY[0x277D1D7E8], v17);
  v20 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *&v7[v20] = v9;
  v18(&v7[v20], *MEMORY[0x277D1D7D0], v17);
  swift_storeEnumTagMultiPayload();
  v21 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v22 = swift_allocBox();
  v24 = v23;
  sub_22C525730(v7, v23);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v25 = swift_allocBox();
  sub_22C486784();
  v26 = sub_22C52492C(v25 | 0x2000000000000000, v30, 8250, 0xE200000000000000);
  v27 = *(v21 + 48);
  sub_22C525788(v7, type metadata accessor for PromptTreeIdentifier);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v24 + v27) = v28;
  return v22 | 0x4000000000000000;
}

uint64_t sub_22C52492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36A83C();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C374C14();
  sub_22C591324();
  v10 = v9;
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    sub_22C36FC14(v11 > 1, v12 + 1);
    v10 = v23;
    sub_22C375E88();
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v12 + 32) = v8;
  v15 = v12 + 2;
  if (v13 < (v12 + 2))
  {
    sub_22C36FC14(v11 > 1, v12 + 2);
    v10 = v24;
  }

  *(v10 + 16) = v15;
  *(v10 + 8 * v14 + 32) = a1;
  sub_22C36A83C();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = *(v10 + 24);
  v18 = v12 + 3;

  if ((v12 + 3) > (v17 >> 1))
  {
    sub_22C36FC14(v17 > 1, v12 + 3);
    v10 = v25;
  }

  *(v10 + 16) = v18;
  *(v10 + 8 * v15 + 32) = v16;
  v19 = *(v10 + 24);
  if ((v12 + 4) > (v19 >> 1))
  {
    sub_22C36FC14(v19 > 1, v12 + 4);
    v10 = v26;
  }

  *(v10 + 16) = v12 + 4;
  *(v10 + 8 * v18 + 32) = a2;
  sub_22C36A83C();
  v20 = swift_allocObject();
  sub_22C36ED28(v20);

  if ((v12 + 5) > (v17 >> 1))
  {
    sub_22C36FC14(v17 > 1, v12 + 5);
  }

  sub_22C372170();
  sub_22C387194();

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v21 = swift_allocObject();
  return sub_22C51E360(v21);
}

void sub_22C524B20()
{
  sub_22C36BA7C();
  v51 = sub_22C90952C();
  sub_22C369824();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v5 = v4 - v3;
  v6 = sub_22C90906C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C9093BC();
  sub_22C369824();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v41 - v20);
  v22 = sub_22C36BA00();
  v49 = v24;
  v50 = v23;
  (v24)(v22);
  v25 = sub_22C36FC08();
  if (v26(v25) == *MEMORY[0x277D729E0])
  {
    v27 = *(v15 + 96);
    v48 = v13;
    v27(v21, v13);
    v45 = *v21;
    v28 = swift_projectBox();
    (*(v8 + 16))(v12, v28, v6);
    v29 = sub_22C90905C();
    v30 = *(v29 + 16);
    if (v30)
    {
      v42 = v12;
      v43 = v8;
      v44 = v6;
      v52 = MEMORY[0x277D84F90];
      v31 = v29;
      sub_22C3B6AF0(0, v30, 0);
      v32 = v52;
      v33 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v41 = v31;
      v34 = v31 + v33;
      v35 = *(v15 + 72);
      v46 = v1 + 32;
      v47 = v35;
      do
      {
        v36 = v48;
        v49(v19, v34, v48);
        sub_22C90935C();
        (*(v15 + 8))(v19, v36);
        v52 = v32;
        v38 = *(v32 + 16);
        v37 = *(v32 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_22C3B6AF0(v37 > 1, v38 + 1, 1);
          v32 = v52;
        }

        *(v32 + 16) = v38 + 1;
        (*(v1 + 32))(v32 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v38, v5, v51);
        v34 += v47;
        --v30;
      }

      while (v30);

      v8 = v43;
      v6 = v44;
      v12 = v42;
    }

    else
    {
    }

    sub_22C3AD9E8();
    (*(v8 + 8))(v12, v6);
  }

  else
  {
    v39 = sub_22C36FC08();
    v40(v39);
  }

  sub_22C36CC48();
}

uint64_t sub_22C524EE8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000013;
  *(v11 + 24) = 0x800000022C931E70;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C525158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22C36A83C();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  sub_22C374C14();
  sub_22C591324();
  v12 = v11;
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    sub_22C36FC14(v13 > 1, v14 + 1);
    v12 = v30;
    sub_22C375E88();
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v14 + 32) = v10;
  v17 = v14 + 2;
  if (v15 < (v14 + 2))
  {
    sub_22C36FC14(v13 > 1, v14 + 2);
    v12 = v31;
  }

  *(v12 + 16) = v17;
  *(v12 + 8 * v16 + 32) = a1;
  sub_22C36A83C();
  v18 = swift_allocObject();
  strcpy((v18 + 16), ": dict[int, ");
  *(v18 + 29) = 0;
  *(v18 + 30) = -5120;
  v19 = *(v12 + 24);
  v20 = v14 + 3;

  if ((v14 + 3) > (v19 >> 1))
  {
    sub_22C36FC14(v19 > 1, v14 + 3);
    v12 = v32;
  }

  *(v12 + 16) = v20;
  *(v12 + 8 * v17 + 32) = v18;
  v21 = *(v12 + 24);
  v22 = v14 + 4;
  if ((v14 + 4) > (v21 >> 1))
  {
    sub_22C36FC14(v21 > 1, v14 + 4);
    v12 = v33;
  }

  *(v12 + 16) = v22;
  *(v12 + 8 * v20 + 32) = a2;
  sub_22C36A83C();
  v23 = swift_allocObject();
  *(v23 + 16) = 540876893;
  *(v23 + 24) = 0xE400000000000000;
  v24 = *(v12 + 24);
  v25 = v14 + 5;

  if ((v14 + 5) > (v24 >> 1))
  {
    sub_22C36FC14(v24 > 1, v14 + 5);
    v12 = v34;
  }

  *(v12 + 16) = v25;
  *(v12 + 8 * v22 + 32) = v23;
  v26 = *(v12 + 24);
  if ((v14 + 6) > (v26 >> 1))
  {
    sub_22C36FC14(v26 > 1, v14 + 6);
    v12 = v35;
  }

  *(v12 + 16) = v14 + 6;
  *(v12 + 8 * v25 + 32) = a3;
  sub_22C36A83C();
  v27 = swift_allocObject();
  sub_22C36ED28(v27);

  if ((v14 + 7) > (v24 >> 1))
  {
    sub_22C36FC14(v24 > 1, v14 + 7);
  }

  sub_22C372170();
  sub_22C387194();

  sub_22C369AEC();
  swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v28 = swift_allocObject();
  return sub_22C51E360(v28);
}

uint64_t sub_22C5253FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3C0980;

  return sub_22C51E720();
}

BOOL sub_22C5254A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9089DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C9089EC();
  v7 = sub_22C9089AC();
  (*(v4 + 8))(v6, v3);
  v11 = a2;
  v8 = sub_22C5EC13C(sub_22C4F5E4C, v10, v7);

  return v8;
}

uint64_t sub_22C5255CC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t (*a5)(char *, uint64_t))
{
  v8 = sub_22C369A48();
  v10 = v9(v8);
  sub_22C369824();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v18 - v15;
  a4(v14);
  LOBYTE(a5) = a5(v16, a2);
  (*(v12 + 8))(v16, v10);
  return a5 & 1;
}

uint64_t sub_22C5256C0@<X0>(char *a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C51E5B8(*a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_22C525730(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C525788(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C5257E0()
{
  sub_22C36FB38();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22C525AA0(v1);

  return sub_22C52413C(v2, v3, v4, v5);
}

unint64_t sub_22C5258D8()
{
  result = qword_27D9BD9E8;
  if (!qword_27D9BD9E8)
  {
    sub_22C3AC1A0(&qword_27D9BADC0, &qword_22C90D668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD9E8);
  }

  return result;
}

uint64_t sub_22C52593C()
{
  sub_22C36FB38();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_22C525AA0(v1);

  return sub_22C523ED4(v2, v3, v4, v5);
}

void sub_22C525A80()
{

  sub_22C591324();
}

uint64_t sub_22C525ABC(uint64_t a1, uint64_t a2)
{

  return sub_22C52492C(a1, a2, 2112800, 0xE300000000000000);
}

void sub_22C525AD8()
{

  sub_22C486784();
}

uint64_t sub_22C525B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  **(v9 + 32) = v8;
}

uint64_t sub_22C525B28()
{
}

void *sub_22C525EBC(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v40 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v39 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v42 = v36 - v5;
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v41 = *(a1 + 16);
  v37 = xmmword_22C90F800;
  v38 = a1;
  while (1)
  {
    if (v41 == v6)
    {

      return v7;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v8 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v9 = *(v40 + 72);
    sub_22C528DF8(a1 + v8 + v9 * v6, v42, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    v10 = sub_22C57ED3C();
    v18 = sub_22C633A1C();
    v19 = v7[2];
    v20 = (v11 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v11;
    if (v7[3] < v21)
    {
      sub_22C88D6C0(v21, 1, v12, v13, v14, v15, v16, v17, v36[0], v36[1], v37, SBYTE4(v37));
      v7 = v43;
      v23 = sub_22C633A1C();
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v7[7];
      sub_22C528E50(v42, v39, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59161C();
        v26 = v33;
        *(v25 + 8 * v18) = v33;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C59161C();
        v26 = v34;
        *(v25 + 8 * v18) = v34;
      }

      *(v26 + 16) = v28 + 1;
      sub_22C528E50(v39, v26 + v8 + v28 * v9, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      a1 = v38;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v29 = swift_allocObject();
      *(v29 + 16) = v37;
      sub_22C528E50(v42, v29 + v8, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v7[(v18 >> 6) + 8] |= 1 << v18;
      *(v7[6] + v18) = v10;
      *(v7[7] + 8 * v18) = v29;
      v30 = v7[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v7[2] = v32;
    }

    ++v6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C526204(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v47 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v44 - v5;
  v7 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v49 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v48 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = v44 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v53 = MEMORY[0x277D84F98];
  v50 = *(a1 + 16);
  v45 = xmmword_22C90F800;
  v46 = a1;
  while (1)
  {
    if (v50 == v11)
    {

      return v12;
    }

    if (v11 >= *(a1 + 16))
    {
      break;
    }

    v13 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v51 = *(v49 + 72);
    sub_22C528DF8(a1 + v13 + v51 * v11, v52, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    sub_22C9036BC();
    v14 = v6;
    v15 = sub_22C908EAC();
    v16 = 1;
    if (sub_22C370B74(v6, 1, v15) != 1)
    {
      v17 = v47;
      sub_22C528F6C(v6, v47, &qword_27D9BC1E8, &qword_22C9123B0);
      v16 = sub_22C4AEF6C();
      v18 = v17;
      v14 = v6;
      (*(*(v15 - 8) + 8))(v18, v15);
    }

    sub_22C3AC228(v14, &qword_27D9BC1E8, &qword_22C9123B0);
    v26 = sub_22C628620(v16 & 1);
    v27 = v12[2];
    v28 = (v19 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_21;
    }

    v30 = v19;
    if (v12[3] < v29)
    {
      sub_22C88D50C(v29, 1, v20, v21, v22, v23, v24, v25, v44[0], v44[1], v45, SBYTE4(v45));
      v12 = v53;
      v31 = sub_22C628620(v16 & 1);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_23;
      }

      v26 = v31;
    }

    if (v30)
    {
      v33 = v12[7];
      sub_22C528E50(v52, v48, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v34 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59161C();
        v34 = v41;
        *(v33 + 8 * v26) = v41;
      }

      v36 = *(v34 + 16);
      if (v36 >= *(v34 + 24) >> 1)
      {
        sub_22C59161C();
        v34 = v42;
        *(v33 + 8 * v26) = v42;
      }

      *(v34 + 16) = v36 + 1;
      sub_22C528E50(v48, v34 + v13 + v36 * v51, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      a1 = v46;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
      v37 = swift_allocObject();
      *(v37 + 16) = v45;
      sub_22C528E50(v52, v37 + v13, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v12[(v26 >> 6) + 8] |= 1 << v26;
      *(v12[6] + v26) = v16 & 1;
      *(v12[7] + 8 * v26) = v37;
      v38 = v12[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_22;
      }

      v12[2] = v40;
    }

    ++v11;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_22C3A5908(&qword_27D9BDA00, qword_22C91B300);
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C526684(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD958, &qword_22C919CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - v3;
  v37 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
  v33 = *(v37 - 8);
  v5 = MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v32 - v7;
  v36 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(a1 + 48) + v16);
    v18 = *(*(a1 + 56) + v16);
    swift_getKeyPath();
    v38[0] = v18;

    swift_getAtKeyPath();

    if (sub_22C370B74(v4, 1, v37) == 1)
    {

      result = sub_22C3AC228(v4, &qword_27D9BD958, &qword_22C919CA0);
    }

    else
    {
      v19 = v34;
      sub_22C528E50(v4, v34, type metadata accessor for _PromptMapper._ToolPromptMap);
      sub_22C528E50(v19, v35, type metadata accessor for _PromptMapper._ToolPromptMap);
      v20 = v36;
      if (v36[3] <= v36[2])
      {
        sub_22C88D114();
        v20 = v39;
      }

      v21 = v20;
      sub_22C90B62C();
      sub_22C48A9B4(v38, v17);
      result = sub_22C90B66C();
      v22 = v21 + 8;
      v36 = v21;
      v23 = -1 << *(v21 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~v21[(v24 >> 6) + 8]) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = v22[v25];
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~v21[(v24 >> 6) + 8])) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = v36;
      *(v36[6] + 8 * v26) = v17;
      result = sub_22C528E50(v35, v31[7] + *(v33 + 72) * v26, type metadata accessor for _PromptMapper._ToolPromptMap);
      ++v31[2];
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v36;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C526A5C(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for ToolRenderer_v2_0(0) + 24));
  v4 = v3[3];
  v5 = v3[4];
  sub_22C374168(v3, v4);
  return (*(v5 + 8))(a1, v4, v5);
}

uint64_t sub_22C526AC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (***a4)(char *, unint64_t, uint64_t)@<X8>)
{
  v6 = v4;
  v202 = a4;
  v225 = sub_22C9036EC();
  sub_22C369824();
  v210 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  v214 = &v196 - v13;
  v219 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C369824();
  v216 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v196 - v18;
  MEMORY[0x28223BE20](v17);
  *&v220 = &v196 - v20;
  type metadata accessor for RenderableTool(0);
  sub_22C369824();
  v217 = v22;
  v218 = v21;
  MEMORY[0x28223BE20](v21);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  v25 = &v196 - v24;
  v211 = a1;
  v26 = sub_22C4AF928();
  v27 = sub_22C525EBC(v26);
  v28 = v27[2];
  v209 = v19;
  if (v28 && (sub_22C633A1C(), (v29 & 1) != 0))
  {
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v215 = sub_22C526204(v30);
  v31 = v5;
  v32 = MEMORY[0x277D84F90];
  if (v27[2])
  {
    v33 = sub_22C633A1C();
    if (v34)
    {
      v35 = *(v27[7] + 8 * v33);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v36 = *(v35 + 16);
  if (v36)
  {
    v213 = v31;
    sub_22C528FDC();
    v208 = v6;
    v222 = v32;
    v37 = sub_22C3886F8();
    sub_22C3B696C(v37, v38, v39);
    v40 = v222;
    sub_22C37054C();
    v212 = v35;
    sub_22C37A0B0();
    do
    {
      sub_22C36AB10();
      v41 = v220;
      sub_22C528DF8(a3, v220, v42);
      v43 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
      (*v6)(v25, v41, v225);
      v44 = *(v219 + 24);
      sub_22C9037DC();
      sub_22C369A9C();
      (*(v45 + 32))(&v25[v43], v41 + v44);
      swift_storeEnumTagMultiPayload();
      sub_22C37FE10();
      if (v47)
      {
        v50 = sub_22C369AB0(v46);
        sub_22C3B696C(v50, v43, 1);
        v40 = v222;
      }

      *(v40 + 16) = v43;
      sub_22C37054C();
      sub_22C377DF4();
      sub_22C528E50(v25, v48, v49);
      a3 += a2;
      --v36;
    }

    while (v36);

    v6 = v208;
    a2 = v205;
    a3 = v207;
    v31 = v213;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v51);
  sub_22C528FF8();
  *(v52 - 32) = v6;
  *(v52 - 24) = a2;
  *(v52 - 16) = a3;
  sub_22C792A18(sub_22C528DAC, v53, v40);
  v55 = v209;
  v56 = v215;
  if (v31)
  {
LABEL_37:
  }

  else
  {
    v200 = v54;

    MEMORY[0x28223BE20](v57);
    sub_22C528FF8();
    *(v58 - 32) = v56;
    *(v58 - 24) = v6;
    *(v58 - 16) = a2;
    *(v58 - 8) = a3;
    sub_22C792A44();
    v197 = v59;
    sub_22C528FDC();
    v198 = 0;
    v208 = v6;

    v60 = sub_22C4AF928();
    v61 = 0;
    v213 = *(v60 + 16);
    v215 = (v210 + 16);
    v212 = (v210 + 88);
    LODWORD(v211) = *MEMORY[0x277D1ECE8];
    v62 = (v210 + 8);
    v199 = MEMORY[0x277D84F90];
    v63 = v225;
    while (v213 != v61)
    {
      v64 = *(v60 + 16);
      if (v61 >= v64)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_99:
          sub_22C369AB0(v64);
          sub_22C591324();
          v158 = v193;
          v64 = *(v193 + 24);
          v159 = v64 >> 1;
LABEL_69:
          *(v158 + 16) = a2;
          *(v158 + 8 * v55 + 32) = v6;
          v160 = v55 + 2;
          if (v159 < (v55 + 2))
          {
            sub_22C369AB0(v64);
            sub_22C591324();
            v158 = v194;
          }

          *(v158 + 16) = v160;
          *(v158 + 8 * a2 + 32) = v216;
          sub_22C36A83C();
          a2 = swift_allocObject();
          *(a2 + 16) = 1616928778;
          *(a2 + 24) = 0xE400000000000000;
          v161 = *(v158 + 24);

          if ((v55 + 3) > (v161 >> 1))
          {
            sub_22C591324();
            v158 = v195;
          }

          *(v158 + 16) = v55 + 3;
          *(v158 + 8 * v160 + 32) = a2;
          v162 = sub_22C3DB9B0(v158);

          sub_22C369AEC();
          v163 = swift_allocObject();
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          sub_22C369AEC();
          v164 = swift_allocObject();
          *(v164 + 16) = v162;
          *(v163 + 16) = v164;
          v215 = (v163 | 0x6000000000000000);
          v150 = MEMORY[0x277D84F90];
LABEL_74:
          v222 = v150;
          v55 = *(v61 + 16);
          if (v55)
          {
            v6 = 0;
            a2 = *(type metadata accessor for _PromptToolData(0) - 8);
            sub_22C36BA94();
            while (1)
            {
              v64 = *(v61 + 16);
              if (v6 >= v64)
              {
                goto LABEL_97;
              }

              ++v6;

              sub_22C3CD230();
              if (v55 == v6)
              {
                v150 = v222;
                break;
              }
            }
          }

          v165 = type metadata accessor for ToolRenderer_v2_0(0);
          sub_22C528F6C(v56 + *(v165 + 28), &v222, &qword_27D9BD9F8, &unk_22C91A240);
          v214 = v150;
          if (!v224)
          {
            sub_22C3AC228(&v222, &qword_27D9BD9F8, &unk_22C91A240);
            v176 = 0;
            v177 = 0;
            v178 = 0;
            v179 = 0;
            goto LABEL_94;
          }

          v198 = v31;
          sub_22C374168(&v222, v224);
          *&v220 = *(v61 + 16);
          if (!v220)
          {
            break;
          }

          v6 = 0;
          v225 = type metadata accessor for _PromptToolData(0);
          v218 = *(v225 - 8);
          sub_22C36BA94();
          v31 = (v61 + v166);
          v167 = MEMORY[0x277D84F90];
          while (1)
          {
            v64 = *(v61 + 16);
            if (v6 >= v64)
            {
              break;
            }

            v168 = &v31[*(v218 + 72) * v6 + *(v225 + 36)];
            v169 = *(v168 + 1);
            if (v169)
            {
              v170 = *v168;
              v55 = *(v168 + 2);
              v56 = *(v168 + 3);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C591018(0, *(v167 + 16) + 1, 1, v167);
                v167 = v173;
              }

              a2 = *(v167 + 16);
              v171 = *(v167 + 24);
              if (a2 >= v171 >> 1)
              {
                v174 = sub_22C369AB0(v171);
                sub_22C591018(v174, a2 + 1, 1, v167);
                v167 = v175;
              }

              *(v167 + 16) = a2 + 1;
              v172 = (v167 + 32 * a2);
              v172[4] = v170;
              v172[5] = v169;
              v172[6] = v55;
              v172[7] = v56;
            }

            ++v6;
            v61 = v219;
            if (v220 == v6)
            {
              goto LABEL_93;
            }
          }
        }

        v167 = MEMORY[0x277D84F90];
LABEL_93:
        sub_22C531C50(v167, v221);

        v176 = v221[0];
        v177 = v221[1];
        v178 = v221[2];
        v179 = v221[3];
        sub_22C36FF94(&v222);
LABEL_94:
        sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
        sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0, &unk_22C916CA4);
        v180 = sub_22C909F0C();
        sub_22C36A83C();
        v181 = swift_allocObject();
        v222 = 0;
        v223 = 0xE000000000000000;
        v182 = sub_22C37F264();
        sub_22C456C94(v182, v183, v184);
        v185 = sub_22C90A49C();
        v187 = v186;

        v188 = sub_22C37F264();
        sub_22C456D48(v188, v189, v190);

        *(v181 + 16) = v185;
        *(v181 + 24) = v187;
        v191 = v202;
        *v202 = v215;
        v191[1] = v180;
        v192 = v214;
        v191[2] = v213;
        v191[3] = v192;
        v191[4] = v176;
        v191[5] = v177;
        v191[6] = v178;
        v191[7] = v179;
        v191[8] = v181;
        return result;
      }

      v6 = (*(v216 + 80) + 32) & ~*(v216 + 80);
      v65 = v60;
      a2 = *(v216 + 72);
      sub_22C36AB10();
      sub_22C528DF8(v66, v55, v67);
      v31 = v214;
      (*v215)(v214, v55, v63);
      v56 = (*v212)(v31, v63);
      (*v62)(v31, v63);
      if (v56 == v211)
      {
        sub_22C3718C8();
        sub_22C528E50(v55, v204, v69);
        v70 = v199;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v70;
        v222 = v70;
        v56 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B685C(0, *(v72 + 16) + 1, 1);
          v63 = v225;
          v72 = v222;
        }

        v74 = *(v72 + 16);
        v73 = *(v72 + 24);
        v31 = (v74 + 1);
        if (v74 >= v73 >> 1)
        {
          v77 = sub_22C369AB0(v73);
          sub_22C3B685C(v77, v74 + 1, 1);
          v63 = v225;
          v72 = v222;
        }

        ++v61;
        *(v72 + 16) = v31;
        v199 = v72;
        sub_22C3718C8();
        sub_22C528E50(v204, v75, v76);
        v55 = v56;
        v60 = v65;
      }

      else
      {
        sub_22C38BA40();
        sub_22C528F18(v55, v68);
        ++v61;
        v60 = v65;
      }
    }

    v78 = *(v199 + 16);
    if (v78)
    {
      v222 = MEMORY[0x277D84F90];
      v79 = sub_22C3886F8();
      sub_22C3B696C(v79, v80, v81);
      v82 = v222;
      sub_22C37054C();
      sub_22C37A0B0();
      v83 = v203;
      do
      {
        sub_22C36AB10();
        v84 = v220;
        sub_22C528DF8(v61, v220, v85);
        v86 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
        (*v6)(v83, v84, v225);
        v87 = *(v219 + 24);
        sub_22C9037DC();
        sub_22C369A9C();
        (*(v88 + 32))(v83 + v86, v84 + v87);
        swift_storeEnumTagMultiPayload();
        sub_22C37FE10();
        if (v47)
        {
          v92 = sub_22C369AB0(v89);
          sub_22C3B696C(v92, v86, 1);
          v82 = v222;
        }

        *(v82 + 16) = v86;
        sub_22C37054C();
        sub_22C377DF4();
        sub_22C528E50(v83, v90, v91);
        v61 += a2;
        --v78;
      }

      while (v78);
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v93);
    sub_22C528FF8();
    v56 = v208;
    v94 = v205;
    sub_22C36D84C(v95);
    v96 = v198;
    sub_22C792A18(sub_22C528FC4, v97, v82);
    v31 = v96;
    if (v96)
    {

      goto LABEL_37;
    }

    v100 = v98;

    v222 = v100;
    sub_22C3CD560(v200);
    sub_22C3CD560(v197);
    v217 = sub_22C7F4DE0(v222);
    v102 = v101;
    v6 = 0;
    a2 = *(v101 + 16);
    v55 = MEMORY[0x277D84F90];
    v219 = v101;
    while (a2 != v6)
    {
      v64 = *(v102 + 16);
      if (v6 >= v64)
      {
        goto LABEL_96;
      }

      v103 = *(type metadata accessor for _PromptToolData(0) - 8);
      v104 = *(v102 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v6 + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591324();
        v55 = v106;
      }

      v61 = *(v55 + 16);
      v105 = *(v55 + 24);
      if (v61 >= v105 >> 1)
      {
        sub_22C369AB0(v105);
        sub_22C591324();
        v55 = v107;
      }

      *(v55 + 16) = v61 + 1;
      *(v55 + 8 * v61 + 32) = v104;
      ++v6;
      v102 = v219;
    }

    v108 = v217;

    v109 = sub_22C525B58(v108, v102);
    v110 = sub_22C526684(v109);

    v111 = v206;
    v112 = *(v206 + 16);
    v113 = MEMORY[0x277D84F90];
    v213 = v110;
    v214 = 0;
    if (v112)
    {
      v114 = sub_22C633A1C();
      if (v115)
      {
        v116 = *(*(v111 + 56) + 8 * v114);
      }

      else
      {
        v116 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v116 = MEMORY[0x277D84F90];
    }

    v117 = *(v116 + 16);
    if (v117)
    {
      v222 = v113;
      sub_22C3B657C(0, v117, 0);
      v118 = v222;
      sub_22C37054C();
      v212 = v116;
      v120 = v116 + v119;
      v218 = *(v121 + 72);
      v122 = v225;
      v123 = v201;
      do
      {
        sub_22C36AB10();
        v124 = v220;
        sub_22C528DF8(v120, v220, v125);
        (*v215)(v123, v124, v122);
        sub_22C38BA40();
        sub_22C528F18(v124, v126);
        v222 = v118;
        v128 = *(v118 + 16);
        v127 = *(v118 + 24);
        if (v128 >= v127 >> 1)
        {
          v131 = sub_22C369AB0(v127);
          sub_22C3B657C(v131, v128 + 1, 1);
          v118 = v222;
        }

        *(v118 + 16) = v128 + 1;
        sub_22C37054C();
        (*(v130 + 32))(v118 + v129 + *(v130 + 72) * v128, v123, v122);
        v120 += v218;
        --v117;
      }

      while (v117);

      v56 = v208;
      v94 = v205;
    }

    else
    {

      v118 = MEMORY[0x277D84F90];
    }

    a2 = &v196;
    MEMORY[0x28223BE20](v132);
    sub_22C36D84C(&v196);
    sub_22C566700(v118, &unk_283FAF218, v56, v94, sub_22C528DEC, v133);
    v135 = v134;

    v136 = *(v135 + 16);
    if (v136)
    {
      v225 = v55;
      v222 = MEMORY[0x277D84F90];
      v137 = sub_22C3886F8();
      sub_22C3B63D4(v137, v138, v139);
      v140 = 32;
      v141 = v222;
      v220 = xmmword_22C919C60;
      do
      {
        v142 = v135;
        v143 = *(v135 + v140);
        v144 = swift_allocObject();
        *(v144 + 16) = v220;
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        sub_22C369AEC();
        v145 = swift_allocObject();
        *(v145 + 16) = v143;
        *(v144 + 32) = v145;
        sub_22C369AEC();
        v146 = swift_allocObject();
        sub_22C369AEC();
        v147 = swift_allocObject();
        *(v147 + 16) = v144 | 0x8000000000000000;
        *(v146 + 16) = v147;
        v222 = v141;
        a2 = *(v141 + 16);
        v148 = *(v141 + 24);

        if (a2 >= v148 >> 1)
        {
          sub_22C3B63D4(v148 > 1, a2 + 1, 1);
          v141 = v222;
        }

        *(v141 + 16) = a2 + 1;
        *(v141 + 8 * a2 + 32) = v146 | 0x6000000000000000;
        v140 += 8;
        --v136;
        v135 = v142;
      }

      while (v136);

      v56 = v208;
      v55 = v225;
    }

    else
    {

      v141 = MEMORY[0x277D84F90];
    }

    v222 = v141;
    sub_22C3CD124(v55);
    v149 = sub_22C47D738(2570, 0xE200000000000000, v222);

    v150 = MEMORY[0x277D84F90];
    v222 = MEMORY[0x277D84F90];
    v216 = v149;
    v151 = v214;
    sub_22C496A94();
    v61 = v219;
    if (!v151)
    {
      v153 = v152;
      v31 = 0;

      sub_22C36A83C();
      v154 = swift_allocObject();
      v155 = v154;
      if ((v153 & 1) == 0)
      {
        *(v154 + 16) = 0x6F68747970606060;
        *(v154 + 24) = 0xEA00000000000A6ELL;
        v6 = v154;
        sub_22C591324();
        v158 = v157;
        v55 = *(v157 + 16);
        v64 = *(v157 + 24);
        v159 = v64 >> 1;
        a2 = v55 + 1;
        if (v64 >> 1 > v55)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

      v222 = 0;
      v223 = 0xE000000000000000;
      *(v154 + 16) = sub_22C90A49C();
      *(v155 + 24) = v156;
      v215 = v155;
      goto LABEL_74;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22C527D9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, void, void, void, void)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v51 = a5;
  v7 = sub_22C9063DC();
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v45 - v14;
  v16 = sub_22C908EAC();
  v54 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v56 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v46);
  v47 = (v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_22C6058B0(0, a1);
  if (v23)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      v45[1] = v23;
      v45[2] = v5;
      v25 = v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v26 = *(v19 + 72);
      v55 = (v54 + 32);
      v27 = MEMORY[0x277D84F90];
      v52 = v26;
      v53 = v16;
      do
      {
        sub_22C528DF8(v25, v21, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        sub_22C9036BC();
        sub_22C528EA8(v13, v15);
        sub_22C528F18(v21, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        if (sub_22C370B74(v15, 1, v16) == 1)
        {
          sub_22C3AC228(v15, &qword_27D9BC1E8, &qword_22C9123B0);
        }

        else
        {
          v28 = v13;
          v29 = *v55;
          (*v55)(v56, v15, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C591C4C();
            v27 = v32;
          }

          v30 = *(v27 + 16);
          if (v30 >= *(v27 + 24) >> 1)
          {
            sub_22C591C4C();
            v27 = v33;
          }

          *(v27 + 16) = v30 + 1;
          v31 = v27 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v30;
          v16 = v53;
          v29(v31, v56, v53);
          v13 = v28;
          v26 = v52;
        }

        v25 += v26;
        --v24;
      }

      while (v24);
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    v43 = v47;
    *v47 = v27;
    swift_storeEnumTagMultiPayload();
    v44 = type metadata accessor for ToolRenderer_v2_0(0);
    sub_22C4B8858(v43, (v48 + *(v44 + 20)), v49, v50, v51);
    return sub_22C528F18(v43, type metadata accessor for RenderableTool);
  }

  else
  {
    v34 = v51;
    v35 = v55;
    v36 = v7;
    sub_22C903F7C();
    v37 = sub_22C9063CC();
    v38 = sub_22C90AACC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_22C36F9F4(0x695F686372616573, 0xED00007070615F6ELL, &v57);
      sub_22C36FF94(v40);
      MEMORY[0x2318B9880](v40, -1, -1);
      MEMORY[0x2318B9880](v39, -1, -1);
    }

    (v35[1])(v9, v36);
    v41 = type metadata accessor for _PromptToolData(0);
    return sub_22C36C640(v34, 1, 1, v41);
  }
}

uint64_t sub_22C5283B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a4;
  v14[2] = a5;
  v5 = sub_22C90963C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90941C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolRenderer_v2_0(0);
  sub_22C483378();
  sub_22C374168(v15, v15[3]);
  MEMORY[0x2318B6CE0]();
  (*(v6 + 104))(v8, *MEMORY[0x277D72E10], v5);
  sub_22C4FCD10();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return sub_22C36FF94(v15);
}

uint64_t sub_22C5285BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v69 = a4;
  v70 = a3;
  LODWORD(v71) = a2;
  v6 = sub_22C908D6C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90977C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C374168(v4, v4[3]);
  sub_22C47FCDC();
  v18 = sub_22C9096FC();
  v73 = v17;
  v20 = a1;
  v21 = sub_22C4FB170(v18, v19, sub_22C436434, v72, v70);
  v23 = v22;

  (*(v14 + 8))(v17, v12);
  if (v71)
  {
    goto LABEL_2;
  }

  v67 = v21;
  v68 = v23;
  v70 = v20;
  result = sub_22C908DEC();
  v32 = 0;
  v33 = *(result + 16);
  v71 = v8 + 16;
  v34 = *MEMORY[0x277D72188];
  v35 = *MEMORY[0x277D72178];
  v36 = (v8 + 8);
  while (1)
  {
    if (v33 == v32)
    {
      v32 = v33;
      goto LABEL_11;
    }

    sub_22C36BA94();
    v38 = v37;
    (*(v8 + 16))(v11, v37 + v39 + *(v8 + 72) * v32, v6);
    v40 = (*(v8 + 88))(v11, v6);
    if (v40 == v34)
    {
      break;
    }

    if (v40 == v35)
    {
      goto LABEL_10;
    }

    (*v36)(v11, v6);
    ++v32;
    result = v38;
  }

  (*v36)(v11, v6);
LABEL_10:
  result = v38;
LABEL_11:
  v41 = *(result + 16);
  v43 = v67;
  v42 = v68;
  if (v32 == v41)
  {

    v44 = HIBYTE(v42) & 0xF;
    if ((v42 & 0x2000000000000000) == 0)
    {
      v44 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_22C90F870;
      *(v24 + 32) = v43;
      *(v24 + 40) = v42;
      *(v24 + 48) = sub_22C908E8C();
      *(v24 + 56) = v45;
      v30 = 2;
LABEL_16:
      v74 = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v30, 0, v26, v27, v28, v29);
      v46 = v74;
      v47 = v24 + 40;
      do
      {

        sub_22C36BA00();
        v48 = sub_22C90A2CC();
        v50 = v49;

        v74 = v46;
        v52 = *(v46 + 16);
        v51 = *(v46 + 24);
        if (v52 >= v51 >> 1)
        {
          v54 = sub_22C369AB0(v51);
          sub_22C3B5E2C(v54, v52 + 1, 1, v55, v56, v57, v58);
          v46 = v74;
        }

        *(v46 + 16) = v52 + 1;
        v53 = v46 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v47 += 16;
        --v30;
      }

      while (v30);

      v74 = v46;
      v59 = sub_22C36BA00();
      sub_22C3A5908(v59, v60);
      sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
      v61 = sub_22C90A04C();
      v63 = v62;

      v64 = v69;
      *v69 = v61;
      v64[1] = v63;
      v64[2] = 0;
      v64[3] = 0;
      *(v64 + 32) = 0;
      return result;
    }

LABEL_2:

    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22C90F800;
    *(v24 + 32) = sub_22C908E8C();
    *(v24 + 40) = v25;
    v30 = 1;
    goto LABEL_16;
  }

  if (v32 >= v41)
  {
    __break(1u);
  }

  else
  {
    sub_22C36BA94();
    result = sub_22C4AF1C0();
    if ((result & 1) == 0)
    {

      v65 = v69;
      *v69 = xmmword_22C91A1A0;
      v65[2] = v43;
      v65[3] = v42;
      *(v65 + 32) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22C528A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C374168(v2, v2[3]);
  v15 = sub_22C90381C();
  v16 = v5;
  v17 = a2;
  v18 = v4;
  v6 = sub_22C4FB170(v15, v5, sub_22C430BE0, &v14, a2);
  v8 = v7;

  v19 = v6;
  v20 = v8;

  MEMORY[0x2318B7850](32, 0xE100000000000000);

  v10 = v19;
  v9 = v20;
  v11 = sub_22C90382C();
  v13 = v12;
  v19 = v10;
  v20 = v9;

  MEMORY[0x2318B7850](v11, v13);

  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

double sub_22C528B88@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22C5285BC(a1, a2, a3, v8);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a4 = v8[0];
  *(a4 + 16) = v7;
  *(a4 + 32) = v5;
  return result;
}

uint64_t type metadata accessor for ToolRenderer_v2_0(uint64_t a1)
{
  result = qword_2814341B8;
  if (!qword_2814341B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C528C48(uint64_t a1)
{
  sub_22C908AEC();
  if (v1 <= 0x3F)
  {
    sub_22C528CEC();
    if (v2 <= 0x3F)
    {
      sub_22C528D48(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_22C528CEC()
{
  result = qword_281434978[0];
  if (!qword_281434978[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281434978);
  }

  return result;
}

void sub_22C528D48(uint64_t a1)
{
  if (!qword_281431EC8[0])
  {
    sub_22C3AC1A0(&qword_27D9BD9F0, &qword_22C91A228);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, qword_281431EC8);
    }
  }
}

uint64_t sub_22C528DF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C369A9C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C528E50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C369A9C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C528EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C528F18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C369848();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C528F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C3A5908(a3, a4);
  sub_22C369A9C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

void sub_22C528FDC()
{
  *(v3 - 288) = v2;
  *(v3 - 280) = v1;
  *(v3 - 296) = v0;
}

void sub_22C529050(uint64_t a1)
{
  if (!qword_27D9BD5F8)
  {
    sub_22C3AC1A0(&qword_27D9BD600, &qword_22C918528);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD5F8);
    }
  }
}

void sub_22C5290FC(uint64_t a1)
{
  sub_22C457168(319, &qword_27D9BD838, &protocol descriptor for EnumerationCaseDefinitionPromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, &qword_27D9BD840, &protocol descriptor for Hack_EnumerationDefinition_TypeReferenceRendering);
    if (v2 <= 0x3F)
    {
      sub_22C529050(319);
      if (v3 <= 0x3F)
      {
        sub_22C908AEC();
        if (v4 <= 0x3F)
        {
          sub_22C90077C();
          if (v5 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22C529214(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    sub_22C38BA58();
    v4 = v3 - 1;
    if (v4 < 0)
    {
      v4 = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = sub_22C374A1C();
    type metadata accessor for FullPlannerPreferences(v6);
    v7 = sub_22C36ECCC(*(v2 + 20));

    return sub_22C370B74(v7, v8, v9);
  }
}

uint64_t sub_22C5292A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    type metadata accessor for FullPlannerPreferences(0);
    v6 = sub_22C36ECCC(*(a4 + 20));

    return sub_22C36C640(v6, v7, a2, v8);
  }

  return result;
}

void sub_22C529340(uint64_t a1)
{
  sub_22C529050(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for FullPlannerPreferences(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C52940C(uint64_t a1)
{
  sub_22C457168(319, &qword_27D9BD7A0, &protocol descriptor for DynamicEnumerationCasePromptRendering);
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, &qword_281430540, &protocol descriptor for StaticTypeInstancePromptRendering);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DynamicEnumerationRenderer_v1_0(319);
      if (v3 <= 0x3F)
      {
        sub_22C529050(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for FullPlannerPreferences(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C5294F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v5 = MEMORY[0x28223BE20](v56);
  v55 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v54 = (&v43 - v7);
  v53 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = (&v43 - v11);
  MEMORY[0x28223BE20](v10);
  v50 = (&v43 - v12);
  v13 = *(a3 + 16);
  v60 = MEMORY[0x277D84F90];
  sub_22C3B63D4(0, v13, 0);
  v14 = v60;
  v49 = v13;
  if (v13)
  {
    v47 = a2 + 32;
    v15 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
    v16 = 0;
    v45 = *(v15 - 8);
    v46 = v15;
    v44 = a3 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v48 = *(a2 + 16);
    v17 = v52;
    while (v48 != v16)
    {
      v18 = v56;
      v19 = *(v56 + 48);
      v20 = v54;
      *v54 = *(v47 + 8 * v16);
      sub_22C4E719C(v44 + *(v45 + 72) * v16, v20 + v19, &qword_27D9BB018, &unk_22C91A3E0);
      v21 = v20;
      v22 = v55;
      sub_22C4E7208(v21, v55, &qword_27D9BB028, &unk_22C90FAD0);
      v23 = *(v18 + 48);
      v24 = v53;
      v25 = *(v53 + 48);
      v26 = *v22;
      v59 = v14;
      v27 = v50;
      *v50 = v26;
      sub_22C4E7208(v22 + v23, v27 + v25, &qword_27D9BB018, &unk_22C91A3E0);
      v28 = v51;
      sub_22C4E719C(v27, v51, &qword_27D9BDA78, &qword_22C91A3F0);
      v29 = *v28;
      v30 = *(v24 + 48);
      v31 = v28 + v30;
      v32 = *(v46 + 48);
      v33 = &v31[v32];
      v34 = v17 + v30;
      *v17 = v29;
      v35 = (v17 + v30 + v32);
      v36 = sub_22C901FAC();
      v37 = *(*(v36 - 8) + 32);
      v38 = *v33;
      v57 = *(v33 + 1);
      v58 = v38;
      v37(v34, v31, v36);
      v39 = v57;
      *v35 = v58;
      v35[1] = v39;

      sub_22C36DD28(v17, &qword_27D9BDA78, &qword_22C91A3F0);
      v40 = v27;
      v14 = v59;
      sub_22C36DD28(v40, &qword_27D9BDA78, &qword_22C91A3F0);
      v60 = v14;
      v42 = *(v14 + 16);
      v41 = *(v14 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_22C3B63D4(v41 > 1, v42 + 1, 1);
        v14 = v60;
      }

      ++v16;
      *(v14 + 16) = v42 + 1;
      *(v14 + 8 * v42 + 32) = v29;
      if (v49 == v16)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_22C5298D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v3 = a3;
  v4 = 0;
  v52 = *(a3 + 16);
  v5 = MEMORY[0x277D84F98];
  v58 = MEMORY[0x277D84F98];
  v6 = (a3 + 72);
  v48 = xmmword_22C90F800;
  v50 = a3;
  v51 = a2;
  while (1)
  {
    if (v52 == v4)
    {

      return v5;
    }

    if (v4 >= *(a2 + 16))
    {
      break;
    }

    if (v4 >= *(v3 + 16))
    {
      goto LABEL_20;
    }

    v53 = v6;
    v54 = v4;
    v7 = *(a2 + 8 * v4 + 32);
    v8 = *(v6 - 5);
    v9 = *(v6 - 4);
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v13 = *(v6 - 1);
    v12 = *v6;

    sub_22C456C94(v11, v10, v13);
    v55 = v7;

    sub_22C456C94(v11, v10, v13);
    sub_22C456D48(v11, v10, v13);
    v56 = v8;
    v21 = sub_22C36E2BC(v8, v9);
    v22 = v5[2];
    v23 = (v14 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v14;
    if (v5[3] < v24)
    {
      sub_22C88EF28(v24, 1, v15, v16, v17, v18, v19, v20, v44, v45, v46, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v5 = v58;
      v26 = sub_22C36E2BC(v56, v9);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v21 = v26;
    }

    if (v25)
    {

      v28 = v5[7];
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      v47 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5933B8();
        v29 = v41;
        *(v28 + 8 * v21) = v41;
      }

      v31 = *(v29 + 16);
      v32 = v31 + 1;
      if (v31 >= *(v29 + 24) >> 1)
      {
        sub_22C5933B8();
        v32 = v31 + 1;
        v29 = v42;
        *(v47 + 8 * v21) = v42;
      }

      v34 = v53;
      v33 = v54;
      *(v29 + 16) = v32;
      v35 = (v29 + 56 * v31);
      v35[4] = v55;
      v35[5] = v56;
      v35[6] = v9;
      v35[7] = v11;
      v35[8] = v10;
      v35[9] = v13;
      v35[10] = v12;
      v3 = v50;
      a2 = v51;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BDA50, &qword_22C91A3A8);
      v36 = swift_allocObject();
      *(v36 + 16) = v48;
      *(v36 + 32) = v55;
      *(v36 + 40) = v56;
      *(v36 + 48) = v9;
      *(v36 + 56) = v11;
      *(v36 + 64) = v10;
      *(v36 + 72) = v13;
      *(v36 + 80) = v12;
      v5[(v21 >> 6) + 8] |= 1 << v21;
      v37 = (v5[6] + 16 * v21);
      *v37 = v56;
      v37[1] = v9;
      *(v5[7] + 8 * v21) = v36;
      v38 = v5[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_22;
      }

      v5[2] = v40;
      a2 = v51;
      v34 = v53;
      v33 = v54;
    }

    v6 = (v34 + 48);
    v4 = v33 + 1;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C529BDC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v6 = swift_allocBox();
  v8 = v7;
  sub_22C52ED28(a1, v7, type metadata accessor for PromptTreeIdentifier);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v9 = swift_allocBox();
  sub_22C486784();
  v10 = a2(v9 | 0x2000000000000000);
  if (v2)
  {

    sub_22C52ED84(v8, type metadata accessor for PromptTreeIdentifier);
    return swift_deallocBox();
  }

  else
  {
    v12 = v10;

    v13 = *(v5 + 48);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v8 + v13) = v14;
    return v6 | 0x4000000000000000;
  }
}

unint64_t sub_22C529D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36D2A8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v6 + 32) = v7;

  return v6 | 0x8000000000000000;
}

void sub_22C529D80()
{
  sub_22C36BA7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22C909A3C();
  sub_22C369824();
  v81 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = v0[8];
  v15 = v0[9];
  sub_22C3766E0(v0 + 5, v14);
  v16 = (*(v15 + 8))(v5, v3, v14, v15);
  v18 = v17;
  v19 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  v20 = sub_22C577AA0(v5, v1 + *(v19 + 28), v1 + *(v19 + 32));
  v74 = v7;
  sub_22C378A4C(v1, v89);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  v83 = v8;
  v79 = v20;
  v75 = v1;
  v71 = v16;
  if (v21)
  {
    v88 = MEMORY[0x277D84F90];
    sub_22C3B68D4(0, v21, 0);
    v23 = 0;
    v22 = v88;
    v77 = v20 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    while (v23 < *(v20 + 16))
    {
      v24 = v21;
      (*(v81 + 16))(v13, v77 + *(v81 + 72) * v23, v8);
      v25 = v90;
      v26 = v91;
      sub_22C3766E0(v89, v90);
      (*(v26 + 16))(&v84, v13, v25, v26);
      (*(v81 + 8))(v13, v8);
      v27 = v84;
      v28 = v85;
      v29 = v86;
      v30 = v87;
      v88 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        v72 = v84;
        v69 = v85;
        sub_22C3B68D4((v31 > 1), v32 + 1, 1);
        v28 = v69;
        v27 = v72;
        v22 = v88;
      }

      ++v23;
      *(v22 + 16) = v32 + 1;
      v33 = v22 + 48 * v32;
      *(v33 + 32) = v27;
      *(v33 + 48) = v28;
      *(v33 + 64) = v29;
      *(v33 + 72) = v30;
      v21 = v24;
      v8 = v83;
      v20 = v79;
      if (v24 == v23)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_22C36FF94(v89);
    v34 = sub_22C47F410(v22);
    v36 = v35;

    v73 = v36;
    if (v36)
    {
      v70 = 0;
      v68 = 0;
      v76 = v34;
    }

    else
    {
      v89[0] = v34;
      sub_22C50B070(v34, 0);
      sub_22C52A418(v89, v79, &v84);
      sub_22C50B2CC(v34, 0);
      sub_22C50B2CC(v34, 0);
      v70 = *(&v84 + 1);
      v76 = v84;
      v68 = v85;
    }

    type metadata accessor for FullPlannerPreferences(0);
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    sub_22C577E5C();
    v38 = v37;

    v43 = *(v38 + 16);
    if (v43)
    {
      *&v84 = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v43, 0, v39, v40, v41, v42);
      v44 = v84;
      v45 = v81 + 16;
      v46 = v38 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v80 = *(v81 + 72);
      v82 = *(v81 + 16);
      v78 = (v45 - 8);
      do
      {
        v47 = v45;
        v82(v13, v46, v8);
        v48 = sub_22C909A2C();
        v50 = v49;
        (*v78)(v13, v8);
        *&v84 = v44;
        v56 = *(v44 + 16);
        v55 = *(v44 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_22C3B5E2C(v55 > 1, v56 + 1, 1, v51, v52, v53, v54);
          v44 = v84;
        }

        *(v44 + 16) = v56 + 1;
        v57 = v44 + 16 * v56;
        *(v57 + 32) = v48;
        *(v57 + 40) = v50;
        v46 += v80;
        --v43;
        v8 = v83;
        v45 = v47;
      }

      while (v43);
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    if (v73)
    {

      sub_22C3871A0(v76);
    }

    else
    {
      *&v84 = v76;
      *(&v84 + 1) = v70;
      *&v85 = v68;

      sub_22C52ABC0(&v84, v44, v89);

      v58 = v89[0];

      *&v84 = v58;

      sub_22C52AD8C(&v84, v71, v18, v89);
      swift_bridgeObjectRelease_n();
      v59 = v89[0];
      v89[0] = v76;
      v89[1] = v70;
      v89[2] = v68;

      sub_22C52B160(v89, v75, v71, v18, &v84);

      v60 = v84;
      v61 = v85;

      sub_22C52ECD8(v76, v70, v68, 0);

      sub_22C36BA00();
      sub_22C37FC50();
      sub_22C456C94(v62, v63, v64);
      sub_22C36BA00();
      sub_22C37FC50();
      sub_22C456D48(v65, v66, v67);

      *v74 = v59;
      *(v74 + 8) = v60;
      *(v74 + 24) = v61;
      *(v74 + 40) = 0;
    }

    sub_22C36CC48();
  }
}

uint64_t sub_22C52A418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v5 = sub_22C909A3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22C3A5908(&qword_27D9BD920, &qword_22C919B18);
  MEMORY[0x28223BE20](v36);
  v35 = &v32 - v8;
  v9 = *a1;
  v10 = (v9 + 64);
  v11 = *(a2 + 16);
  v39 = v6;
  v40 = v11;
  v38 = v6 + 16;
  v34 = (v6 + 32);
  v42 = a2;

  v41 = v9;

  v12 = 0;
  v45 = MEMORY[0x277D84F90];
  for (i = v5; ; v5 = i)
  {
    if (v40 == v12)
    {

LABEL_12:
      sub_22C8D57F4(v45);

      v46 = 0;
      *&v47 = MEMORY[0x277D84F90];
      *(&v47 + 1) = MEMORY[0x277D84F90];

      sub_22C52E178(v28, sub_22C52EC30, 0, &v46);

      v30 = v47;
      v31 = v33;
      *v33 = v46;
      *(v31 + 1) = v30;
      return result;
    }

    v39[2](v44, v42 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v39[9] * v12, v5);
    v13 = *(v41 + 16);
    if (v12 == v13)
    {

      (v39[1])(v44, v5);
      goto LABEL_12;
    }

    if (v12 >= v13)
    {
      break;
    }

    v15 = *(v10 - 4);
    v14 = *(v10 - 3);
    v16 = *(v10 - 2);
    v17 = *(v10 - 1);
    v6 = *v10;
    v18 = v5;
    v19 = v35;
    v20 = &v35[*(v36 + 48)];
    (*v34)(v35, v44, v18);
    *v20 = v15;
    *(v20 + 1) = v14;
    *(v20 + 2) = v16;
    *(v20 + 3) = v17;
    *(v20 + 4) = v6;

    sub_22C456C94(v14, v16, v17);

    sub_22C456C94(v14, v16, v17);
    v21 = sub_22C909A2C();
    v43 = v22;
    sub_22C36DD28(v19, &qword_27D9BD920, &qword_22C919B18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C5932F8();
      v45 = v26;
    }

    v23 = *(v45 + 16);
    if (v23 >= *(v45 + 24) >> 1)
    {
      sub_22C5932F8();
      v45 = v27;
    }

    v24 = v45;
    *(v45 + 16) = v23 + 1;
    v25 = (v24 + 56 * v23);
    v25[4] = v15;
    v25[5] = v21;
    v25[6] = v43;
    v25[7] = v14;
    v25[8] = v16;
    v25[9] = v17;
    v25[10] = v6;
    v10 += 5;
    ++v12;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C52A800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v55 = sub_22C9063DC();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v61 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v59 = v7;
  v60 = v10;
  v12 = v8;
  v63 = v8;
  v13 = a2[1];
  v49 = *a2;
  v14 = a2[3];
  v62 = a2[2];
  v52 = v14;
  v16 = a2[4];
  v15 = a2[5];
  v58 = v16;
  sub_22C903F7C();

  v17 = v60;
  sub_22C456C94(v12, v9, v60);

  v18 = v16;
  v19 = v15;
  sub_22C456C94(v62, v14, v18);
  v54 = v6;
  v20 = sub_22C9063CC();
  LODWORD(v14) = sub_22C90AADC();

  v21 = v9;
  v22 = v9;
  v23 = v11;
  sub_22C456D48(v63, v22, v17);

  v24 = v52;
  v51 = v19;
  sub_22C456D48(v62, v52, v58);
  v50 = v14;
  if (os_log_type_enabled(v20, v14))
  {
    v25 = swift_slowAlloc();
    v56 = v21;
    v26 = v25;
    v47 = swift_slowAlloc();
    v70 = v47;
    *v26 = 136315394;
    v27 = v60;
    v64 = v59;
    v65 = v61;
    v28 = v63;
    v66 = v63;
    v67 = v56;
    v68 = v60;
    v69 = v23;

    sub_22C456C94(v28, v56, v27);
    sub_22C3A5908(&qword_27D9BAFC0, &qword_22C90D860);
    v29 = sub_22C90A1AC();
    v48 = v23;
    v31 = sub_22C36F9F4(v29, v30, &v70);

    *(v26 + 4) = v31;
    *(v26 + 12) = 2080;
    v64 = v49;
    v65 = v13;
    v32 = v62;
    v66 = v62;
    v67 = v24;
    v33 = v24;
    v34 = v58;
    v68 = v58;
    v69 = v51;

    sub_22C456C94(v32, v33, v34);
    v35 = sub_22C90A1AC();
    v37 = sub_22C36F9F4(v35, v36, &v70);

    *(v26 + 14) = v37;
    v23 = v48;
    _os_log_impl(&dword_22C366000, v20, v50, "❗️ Folding enum cases, but identifier has already been seen.\nTaking old value: %s\nover new value: %s", v26, 0x16u);
    v38 = v47;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v38, -1, -1);
    v39 = v26;
    v21 = v56;
    MEMORY[0x2318B9880](v39, -1, -1);
  }

  (*(v57 + 8))(v54, v55);
  v40 = v53;
  v41 = v61;
  *v53 = v59;
  v40[1] = v41;
  v42 = v63;
  v40[2] = v63;
  v40[3] = v21;
  v43 = v21;
  v44 = v60;
  v40[4] = v60;
  v40[5] = v23;

  return sub_22C456C94(v42, v43, v44);
}

void sub_22C52ABC0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];

  v7 = sub_22C5298D8(v4, v5, v6);
  v8 = *(a2 + 16);
  v9 = (a2 + 40);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  if (v8)
  {
    while (1)
    {
      if (v7[2])
      {
        v12 = *(v9 - 1);
        v13 = *v9;

        v14 = sub_22C36E2BC(v12, v13);
        v15 = v10;
        if (v16)
        {
          v15 = *(v7[7] + 8 * v14);
        }
      }

      else
      {
        v15 = v10;
      }

      v17 = *(v15 + 16);
      v18 = *(v11 + 16);
      if (__OFADD__(v18, v17))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v18 + v17 > *(v11 + 24) >> 1)
      {
        sub_22C5933B8();
        v11 = v19;
      }

      if (*(v15 + 16))
      {
        if ((*(v11 + 24) >> 1) - *(v11 + 16) < v17)
        {
          goto LABEL_21;
        }

        sub_22C3A5908(&qword_27D9BDA48, &qword_22C91A3A0);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v20 = *(v11 + 16);
          v21 = __OFADD__(v20, v17);
          v22 = v20 + v17;
          if (v21)
          {
            goto LABEL_22;
          }

          *(v11 + 16) = v22;
        }
      }

      else
      {

        if (v17)
        {
          goto LABEL_20;
        }
      }

      v9 += 2;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_18:

    *a3 = v11;
  }
}

uint64_t sub_22C52AD8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v8, 0);
    v9 = v42;
    v10 = (v7 + 32);
    v11 = *(v42 + 16);
    do
    {
      v13 = *v10;
      v10 += 7;
      v12 = v13;
      v14 = *(v42 + 24);

      if (v11 >= v14 >> 1)
      {
        sub_22C3B63D4(v14 > 1, v11 + 1, 1);
      }

      *(v42 + 16) = v11 + 1;
      *(v42 + 8 * v11++ + 32) = v12;
      --v8;
    }

    while (v8);
  }

  v15 = sub_22C3DB9B0(v9);

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 32) = v17;
  v18 = sub_22C529D00(8236, 0xE200000000000000, v16 | 0x8000000000000000);

  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v19 + 16) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0xE000000000000000;
  sub_22C591324();
  v23 = v22;
  v24 = *(v22 + 16);
  v25 = v24 + 1;
  if (v24 >= *(v22 + 24) >> 1)
  {
    sub_22C591324();
    v23 = v37;
  }

  *(v23 + 16) = v25;
  *(v23 + 8 * v24 + 32) = v21;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v27 = *(v23 + 24);
  v28 = v24 + 2;

  if ((v24 + 2) > (v27 >> 1))
  {
    sub_22C591324();
    v23 = v38;
  }

  *(v23 + 16) = v28;
  *(v23 + 8 * v25 + 32) = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = 0x726574694C203D20;
  *(v29 + 24) = 0xEB000000005B6C61;
  v30 = v24 + 3;
  if ((v24 + 3) > *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v23 = v39;
  }

  *(v23 + 16) = v30;
  *(v23 + 8 * v28 + 32) = v29;
  v31 = v24 + 4;
  if ((v24 + 4) > *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v23 = v40;
  }

  *(v23 + 16) = v31;
  *(v23 + 8 * v30 + 32) = v19 | 0x6000000000000000;
  v32 = swift_allocObject();
  *(v32 + 16) = 93;
  *(v32 + 24) = 0xE100000000000000;
  v33 = *(v23 + 24);

  if ((v24 + 5) > (v33 >> 1))
  {
    sub_22C591324();
    v23 = v41;
  }

  *(v23 + 16) = v24 + 5;
  *(v23 + 8 * v31 + 32) = v32;
  v34 = sub_22C3DB9B0(v23);

  v35 = swift_allocObject();
  result = swift_allocObject();
  *(result + 16) = v34;
  *(v35 + 16) = result;
  *a4 = v35 | 0x6000000000000000;
  return result;
}

void sub_22C52B160(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  sub_22C4E719C(a2 + 80, v38, &qword_27D9BD628, &unk_22C91A390);
  if (v39)
  {
    v30 = a3;
    v31 = a4;
    v28 = v40;
    v29 = v39;
    sub_22C374168(v38, v39);
    v33 = *(v9 + 16);

    v10 = 0;
    v11 = v9 + 72;
    v32 = MEMORY[0x277D84F90];
LABEL_3:
    v12 = (v11 + 48 * v10);
    while (1)
    {
      if (v10 >= v33)
      {

        v34 = v32;
        v23 = *(v28 + 8);
        v24 = sub_22C3A5908(&qword_27D9BC560, &unk_22C9139C0);
        v25 = sub_22C52EC74();
        v23(&v35, v30, v31, &v34, v24, v25, v29, v28);

        v26 = v36;
        v27 = v37;
        *a5 = v35;
        *(a5 + 2) = v26;
        *(a5 + 3) = v27;
        sub_22C36FF94(v38);
        return;
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_16;
      }

      v13 = *(v12 - 3);
      v15 = *(v12 - 2);
      v14 = *(v12 - 1);
      ++v10;
      v17 = *v12;
      v12 += 6;
      v16 = v17;

      sub_22C456C94(v13, v15, v14);
      sub_22C456C94(v13, v15, v14);

      sub_22C456D48(v13, v15, v14);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591018(0, *(v32 + 16) + 1, 1, v32);
          v32 = v21;
        }

        v19 = *(v32 + 16);
        v18 = *(v32 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22C591018(v18 > 1, v19 + 1, 1, v32);
          v32 = v22;
        }

        *(v32 + 16) = v19 + 1;
        v20 = (v32 + 32 * v19);
        v20[4] = v13;
        v20[5] = v15;
        v20[6] = v14;
        v20[7] = v16;
        v11 = v9 + 72;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
    sub_22C36DD28(v38, &qword_27D9BD628, &unk_22C91A390);
    *a5 = 0u;
    a5[1] = 0u;
  }
}

void sub_22C52B408(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[8];
  v8 = v3[9];
  sub_22C3766E0(v3 + 5, v7);
  v9 = (*(v8 + 8))(a1, a2, v7, v8);
  v11 = v10;
  sub_22C529D80();
  v12 = v20;
  if (v25)
  {
  }

  else
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v11;
    *(inited + 32) = v14;
    sub_22C36D2A8();
    v15 = swift_allocObject();
    *(v15 + 16) = 5;
    *(v15 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v16 = swift_allocObject();
    *(v16 + 16) = v20;
    *(v15 + 32) = v16;
    *(inited + 40) = v15 | 0xA000000000000000;
    sub_22C456C94(v21, v22, v23);

    v17 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v18 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v18 + 16) = v19;
    sub_22C456CE4(v20, v21, v22, v23, v24, 0);
    v12 = v18 | 0x6000000000000000;
  }

  *a3 = v12;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v23;
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
}

void sub_22C52B60C()
{
  sub_22C36BA7C();
  sub_22C37228C();
  sub_22C36985C();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v5 = (v4 - v3);
  v6 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  sub_22C909A1C();
  v9 = sub_22C90993C();
  if (sub_22C370B74(v8, 1, v9) == 1)
  {
    sub_22C36DD28(v8, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C377E18(2);
    *(v0 + 40) = 1;
  }

  else
  {
    sub_22C9098BC();
    (*(*(v9 - 8) + 8))(v8, v9);
    type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
    type metadata accessor for FullPlannerPreferences(0);
    v36 = v1;
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    v10 = sub_22C90A2DC();
    v12 = v11;

    sub_22C36D6EC();
    v13 = swift_allocObject();
    v35 = v10;
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    *(v13 + 32) = 3;
    *v5 = v13;
    v14 = *MEMORY[0x277D1D7E8];
    v15 = sub_22C902D0C();
    sub_22C36985C();
    v17 = *(v16 + 104);
    v17(v5, v14, v15);
    sub_22C36C640(v5, 0, 3, v15);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    sub_22C36D6EC();
    v18 = swift_allocObject();
    v37 = v12;

    *(v18 + 16) = sub_22C909A2C();
    *(v18 + 24) = v19;
    *(v18 + 32) = 6;
    v20 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v5 + v20) = v18;
    v17((v5 + v20), v14, v15);
    swift_storeEnumTagMultiPayload();
    v21 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v23 = v22;
    v24 = *(v21 + 48);
    sub_22C52ED28(v5, v22, type metadata accessor for PromptTreeIdentifier);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v25 = swift_allocBox();
    sub_22C486784();
    sub_22C52ED84(v5, type metadata accessor for PromptTreeIdentifier);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v26 = swift_allocObject();
    *(v26 + 16) = v25 | 0x2000000000000000;
    *(v23 + v24) = v26;
    sub_22C4E719C(v36, v39, &qword_27D9BD628, &unk_22C91A390);
    v27 = v40;
    if (v40)
    {
      v28 = v41;
      sub_22C3766E0(v39, v40);
      v29 = sub_22C90A2CC();
      v31 = v30;
      v32 = sub_22C90A2AC();
      v34 = v33;

      (*(v28 + 16))(&v38, v29, v31, v32, v34, v27, v28);

      sub_22C36FF94(v39);
    }

    else
    {

      sub_22C36DD28(v39, &qword_27D9BD628, &unk_22C91A390);
    }

    sub_22C37F278();
  }

  sub_22C36CC48();
}

void sub_22C52BA54()
{
  sub_22C36BA7C();
  v1 = v0;
  v119 = v2;
  v117 = v3;
  v5 = v4;
  v111 = v6;
  v7 = type metadata accessor for DynamicEnumeration.Case(0);
  v122 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = type metadata accessor for DynamicEnumeration(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  v116 = sub_22C9063DC();
  sub_22C369824();
  v114 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  v21 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v112 = v11;
  v22 = *(v5 + *(v11 + 20));

  v120 = sub_22C8125A0(v130, v22);
  v123 = v23;
  v25 = v24;
  v107 = v26;
  v27 = v26 >> 1;
  v121 = v24;
  if (v130 >= *(v22 + 16))
  {
LABEL_7:
    v33 = (v1 + *(v21 + 24));
    v34 = v33[8];
    v35 = v33[9];
    sub_22C3766E0(v33 + 5, v34);
    (*(v35 + 24))(&v130, v5, v117, v119, v34, v35);
    v115 = v130;
    v118 = v131;
    v36 = v132;
    v110 = v133;
    sub_22C378A4C(v1, &v125);
    v37 = v27 - v25;
    if (__OFSUB__(v27, v25))
    {
      goto LABEL_28;
    }

    v38 = MEMORY[0x277D84F90];
    v113 = v36;
    if (v37)
    {
      v124 = MEMORY[0x277D84F90];
      sub_22C3B68D4(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v108 = v1;
      v38 = v124;
      v39 = v121;
      while (v39 < v27)
      {
        sub_22C52ED28(v123 + *(v122 + 72) * v39, v10, type metadata accessor for DynamicEnumeration.Case);
        v40 = *(&v126 + 1);
        v41 = v127;
        sub_22C3766E0(&v125, *(&v126 + 1));
        (*(v41 + 8))(&v130, v10, v40, v41);
        sub_22C52ED84(v10, type metadata accessor for DynamicEnumeration.Case);
        v42 = v130;
        v43 = v131;
        v44 = v132;
        v45 = v133;
        v124 = v38;
        v47 = *(v38 + 16);
        v46 = *(v38 + 24);
        if (v47 >= v46 >> 1)
        {
          v106 = v130;
          v105 = v131;
          sub_22C3B68D4((v46 > 1), v47 + 1, 1);
          v43 = v105;
          v42 = v106;
          v38 = v124;
        }

        *(v38 + 16) = v47 + 1;
        v48 = v38 + 48 * v47;
        *(v48 + 32) = v42;
        *(v48 + 48) = v43;
        *(v48 + 64) = v44;
        *(v48 + 72) = v45;
        if (v27 == ++v39)
        {
          v49 = v120;
          v1 = v108;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v49 = v120;
LABEL_17:
    sub_22C36FF94(&v125);
    v50 = sub_22C47F410(v38);
    v52 = v51;

    if (v52)
    {
      if (v110)
      {
        v53 = v115;
      }

      else
      {
        v53 = v50;
      }

      sub_22C52ECD8(v50, 0, 0, 1);
    }

    else
    {
      *&v125 = v50;
      sub_22C50B070(v50, 0);
      sub_22C52C2D0(&v125, v49, v123, v121, v107, &v130);
      sub_22C50B2CC(v50, 0);
      sub_22C50B2CC(v50, 0);
      v54 = v130;
      v55 = v131;
      if ((v110 & 1) == 0)
      {
        v125 = v115;
        v126 = v118;
        v127 = v113;
        v128 = v130;
        v129 = v131;
        sub_22C3728DC();
        sub_22C456C30(v64, v65, v66, v67, v68, 0);

        sub_22C4E719C(&v125, &v130, &qword_27D9BDA60, &qword_22C91A3C0);
        v69 = sub_22C52CD6C(&v124, v54, *(&v54 + 1), v55);
        sub_22C36DD28(&v125, &qword_27D9BDA60, &qword_22C91A3C0);
        v70 = sub_22C38870C();
        sub_22C36DD28(v70, &qword_27D9BDA60, &qword_22C91A3C0);
        v125 = v54;
        *&v126 = v55;
        *(&v126 + 1) = v115;
        sub_22C36BE60();
        v127 = v71;
        *&v128 = v72;
        *(&v128 + 1) = *(&v118 + 1);
        v129 = v113;
        sub_22C3728DC();
        sub_22C456C30(v73, v74, v75, v76, v77, v110);

        sub_22C4E719C(&v125, &v130, &qword_27D9BDA58, &qword_22C91A3B8);
        sub_22C52EE6C();
        sub_22C52D0A0(v78, v79, v80, v1, v81);
        sub_22C36DD28(&v125, &qword_27D9BDA58, &qword_22C91A3B8);
        v82 = v130;
        v83 = v131;
        v84 = sub_22C38870C();
        sub_22C36DD28(v84, &qword_27D9BDA58, &qword_22C91A3B8);
        sub_22C50AF90(v69, 0);
        v85 = sub_22C369EF4();
        sub_22C456C94(v85, v86, v87);

        v88 = sub_22C369EF4();
        sub_22C456C94(v88, v89, v90);
        v91 = sub_22C52EE6C();
        sub_22C52ECD8(v91, v92, v93, 0);
        sub_22C36BE60();
        sub_22C37A0C4();
        sub_22C456CE4(v94, v95, v96, v97, v98, 0);

        v99 = sub_22C369EF4();
        sub_22C456D48(v99, v100, v101);
        *v111 = v69;
        *(v111 + 8) = v82;
        *(v111 + 24) = v83;

        swift_unknownObjectRelease();
        v102 = sub_22C369EF4();
        sub_22C456D48(v102, v103, v104);
        *(v111 + 40) = 0;
        goto LABEL_26;
      }

      v56 = sub_22C52EE6C();
      sub_22C52ECD8(v56, v57, v58, 0);
      v53 = v115;
    }

    sub_22C36BE60();
    sub_22C37A0C4();
    sub_22C456CE4(v59, v60, v61, v62, v63, v110);
    swift_unknownObjectRelease();
    sub_22C3871A0(v53);
LABEL_26:
    sub_22C36CC48();
    return;
  }

  v109 = v21;
  sub_22C903F7C();
  sub_22C52ED28(v5, v15, type metadata accessor for DynamicEnumeration);
  swift_unknownObjectRetain();
  v28 = sub_22C9063CC();
  v29 = sub_22C90AACC();
  if (!os_log_type_enabled(v28, v29))
  {
    sub_22C52EE44();

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v30 = swift_slowAlloc();
  *v30 = 134218240;
  if (!__OFSUB__(v27, v121))
  {
    v31 = v30;
    *(v30 + 4) = v27 - v121;
    swift_unknownObjectRelease();
    *(v31 + 12) = 2048;
    v32 = *(*(v15 + *(v112 + 20)) + 16);
    sub_22C52EE44();
    *(v31 + 14) = v32;
    _os_log_impl(&dword_22C366000, v28, v29, "Enum cases for dynamic enumeration truncated to first %ld out of %ld cases", v31, 0x16u);
    MEMORY[0x2318B9880](v31, -1, -1);

LABEL_6:
    (*(v114 + 8))(v20, v116);
    v25 = v121;
    v21 = v109;
    goto LABEL_7;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_22C52C2D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v68 = a3;
  v59 = a6;
  v10 = sub_22C3A5908(&qword_27D9BDA68, &qword_22C91A3C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v54 - v11);
  v72 = sub_22C3A5908(&qword_27D9BB6C0, &qword_22C91A3D0);
  v56 = *(v72 - 8);
  v13 = MEMORY[0x28223BE20](v72);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = &v54 - v15;
  v16 = type metadata accessor for DynamicEnumeration.Case(0);
  v17 = *(v16 - 8);
  v66 = v16;
  v67 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22C3A5908(&qword_27D9BDA70, &qword_22C91A3D8);
  MEMORY[0x28223BE20](v65);
  v64 = &v54 - v20;
  v21 = *a1;
  v22 = *a1 + 64;
  v23 = a5 >> 1;
  v58 = a2;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v24 = 0;
  v60 = MEMORY[0x277D84F90];
  v62 = v21;
  v63 = v19;
  v54 = v22;
  v61 = a5 >> 1;
  v25 = v64;
LABEL_2:
  v26 = (v22 + 40 * v24);
  while (1)
  {
    if (v23 == a4)
    {

      swift_unknownObjectRelease();
LABEL_16:

      swift_unknownObjectRelease();
      sub_22C8D5980();

      v73 = 0;
      *&v74 = MEMORY[0x277D84F90];
      *(&v74 + 1) = MEMORY[0x277D84F90];

      sub_22C52E54C(v50, sub_22C52E024, 0, &v73);

      v52 = v74;
      v53 = v59;
      *v59 = v73;
      *(v53 + 1) = v52;
      return result;
    }

    if (a4 >= v23)
    {
      break;
    }

    sub_22C52ED28(v68 + *(v67 + 72) * a4, v19, type metadata accessor for DynamicEnumeration.Case);
    v27 = *(v21 + 16);
    if (v24 == v27)
    {

      swift_unknownObjectRelease();
      sub_22C52ED84(v19, type metadata accessor for DynamicEnumeration.Case);
      goto LABEL_16;
    }

    if (v24 >= v27)
    {
      goto LABEL_18;
    }

    v70 = v24;
    v71 = a4;
    v29 = *(v26 - 1);
    v69 = *v26;
    v28 = v69;
    v31 = *(v26 - 3);
    v30 = *(v26 - 2);
    v32 = *(v26 - 4);
    v33 = (v25 + *(v65 + 48));
    sub_22C52EDDC(v19, v25);
    *v33 = v32;
    v33[1] = v31;
    v33[2] = v30;
    v33[3] = v29;
    v33[4] = v28;
    v34 = v12 + *(v72 + 48);
    *v12 = v32;
    v35 = &v34[*(sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0) + 48)];
    v36 = v12;
    v37 = *(v66 + 20);
    v38 = sub_22C901FAC();
    v39 = v25 + v37;
    v12 = v36;
    (*(*(v38 - 8) + 16))(v34, v39, v38);
    *v35 = v31;
    v35[1] = v30;
    v40 = v69;
    v35[2] = v29;
    v35[3] = v40;
    v41 = v72;
    sub_22C36C640(v36, 0, 1, v72);

    sub_22C456C94(v31, v30, v29);

    sub_22C456C94(v31, v30, v29);
    sub_22C36DD28(v25, &qword_27D9BDA70, &qword_22C91A3D8);
    if (sub_22C370B74(v36, 1, v41) != 1)
    {
      v42 = v55;
      sub_22C4E7208(v36, v55, &qword_27D9BB6C0, &qword_22C91A3D0);
      sub_22C4E7208(v42, v57, &qword_27D9BB6C0, &qword_22C91A3D0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v70;
      v44 = v71;
      v23 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C593478();
        v60 = v48;
      }

      v21 = v62;
      v19 = v63;
      v46 = *(v60 + 16);
      if (v46 >= *(v60 + 24) >> 1)
      {
        sub_22C593478();
        v60 = v49;
      }

      v24 = v45 + 1;
      a4 = v44 + 1;
      v47 = v60;
      *(v60 + 16) = v46 + 1;
      sub_22C4E7208(v57, v47 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46, &qword_27D9BB6C0, &qword_22C91A3D0);
      v22 = v54;
      goto LABEL_2;
    }

    sub_22C36DD28(v36, &qword_27D9BDA68, &qword_22C91A3C8);
    v26 += 5;
    v24 = v70 + 1;
    a4 = v71 + 1;
    v21 = v62;
    v19 = v63;
    v23 = v61;
  }

  __break(1u);
LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C52C8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v58 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
  v5 = MEMORY[0x28223BE20](v58);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v49 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = sub_22C9063DC();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v62 = a1;
  sub_22C4E719C(a1, v15, &qword_27D9BB018, &unk_22C91A3E0);
  sub_22C4E719C(a2, v13, &qword_27D9BB018, &unk_22C91A3E0);
  v59 = v18;
  v19 = sub_22C9063CC();
  v20 = sub_22C90AADC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v56 = v20;
    v22 = v21;
    v54 = v21;
    v57 = swift_slowAlloc();
    v64 = v57;
    *v22 = 136315394;
    sub_22C4E719C(v15, v10, &qword_27D9BB018, &unk_22C91A3E0);
    v55 = v19;
    v23 = v58;
    v24 = *(v58 + 48);
    v25 = &v10[v24];
    v26 = &v7[v24];
    v27 = sub_22C901FAC();
    v28 = *(v27 - 8);
    v29 = *(v28 + 32);
    v51 = v13;
    v52 = v29;
    v53 = v28 + 32;
    v30 = *v25;
    v49 = *(v25 + 1);
    v50 = v30;
    v29(v7, v10, v27);
    v31 = v49;
    *v26 = v50;
    *(v26 + 1) = v31;
    v32 = sub_22C90A1AC();
    v34 = v33;
    sub_22C36DD28(v15, &qword_27D9BB018, &unk_22C91A3E0);
    v35 = sub_22C36F9F4(v32, v34, &v64);

    v36 = v54;
    *(v54 + 4) = v35;
    *(v36 + 12) = 2080;
    v37 = v51;
    sub_22C4E719C(v51, v10, &qword_27D9BB018, &unk_22C91A3E0);
    v38 = *(v23 + 48);
    v39 = &v7[v38];
    v40 = *&v10[v38];
    v49 = *&v10[v38 + 16];
    v50 = v40;
    v52(v7, v10, v27);
    v41 = v49;
    *v39 = v50;
    *(v39 + 1) = v41;
    v42 = sub_22C90A1AC();
    v44 = v43;
    sub_22C36DD28(v37, &qword_27D9BB018, &unk_22C91A3E0);
    v45 = sub_22C36F9F4(v42, v44, &v64);

    *(v36 + 14) = v45;
    v46 = v55;
    _os_log_impl(&dword_22C366000, v55, v56, "❗️ Folding enum cases, but identifier has already been seen.\nTaking old value: %s\nover new value: %s", v36, 0x16u);
    v47 = v57;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v47, -1, -1);
    MEMORY[0x2318B9880](v36, -1, -1);
  }

  else
  {

    sub_22C36DD28(v13, &qword_27D9BB018, &unk_22C91A3E0);
    sub_22C36DD28(v15, &qword_27D9BB018, &unk_22C91A3E0);
  }

  (*(v60 + 8))(v59, v61);
  return sub_22C4E719C(v62, v63, &qword_27D9BB018, &unk_22C91A3E0);
}

uint64_t sub_22C52CD6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  sub_22C5294F8(a2, a3, a4);
  v6 = sub_22C3DB9B0(v5);

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 32) = v8;
  v9 = sub_22C529D00(8236, 0xE200000000000000, v7 | 0x8000000000000000);

  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v10 + 16) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xE000000000000000;
  sub_22C591324();
  v14 = v13;
  v15 = *(v13 + 16);
  v16 = *(v13 + 24) >> 1;
  v17 = v15 + 1;
  if (v16 <= v15)
  {
    sub_22C591324();
    v14 = v29;
    v16 = *(v29 + 24) >> 1;
  }

  *(v14 + 16) = v17;
  *(v14 + 8 * v15 + 32) = v12;
  v18 = v15 + 2;
  if (v16 < (v15 + 2))
  {
    sub_22C591324();
    v14 = v30;
  }

  *(v14 + 16) = v18;
  *(v14 + 8 * v17 + 32) = v4;
  v19 = swift_allocObject();
  *(v19 + 16) = 0x726574694C203D20;
  *(v19 + 24) = 0xEB000000005B6C61;
  v20 = *(v14 + 24);
  v21 = v15 + 3;

  if ((v15 + 3) > (v20 >> 1))
  {
    sub_22C591324();
    v14 = v31;
  }

  *(v14 + 16) = v21;
  *(v14 + 8 * v18 + 32) = v19;
  v22 = v15 + 4;
  if ((v15 + 4) > *(v14 + 24) >> 1)
  {
    sub_22C591324();
    v14 = v32;
  }

  *(v14 + 16) = v22;
  *(v14 + 8 * v21 + 32) = v10 | 0x6000000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = 93;
  *(v23 + 24) = 0xE100000000000000;
  v24 = *(v14 + 24);

  if ((v15 + 5) > (v24 >> 1))
  {
    sub_22C591324();
    v14 = v33;
  }

  *(v14 + 16) = v15 + 5;
  *(v14 + 8 * v22 + 32) = v23;
  v25 = sub_22C3DB9B0(v14);

  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v26 + 16) = v27;
  return v26 | 0x6000000000000000;
}

void sub_22C52D0A0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v61 = a4;
  v62 = a5;
  v76 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v8 = MEMORY[0x28223BE20](v76);
  v75 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v74 = (&v59 - v10);
  v11 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
  v12 = MEMORY[0x28223BE20](v11);
  v73 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v12);
  v72 = (&v59 - v15);
  MEMORY[0x28223BE20](v14);
  v71 = (&v59 - v16);
  v60 = *a3;
  v70 = *(a2 + 16);
  if (v70)
  {
    v67 = *(v11 + 48);
    v66 = a1 + 32;
    v17 = 0;
    v65 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
    v64 = *(v65 - 8);
    v63 = a2 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v77 = MEMORY[0x277D84F90];
    v69 = *(a1 + 16);
    v68 = v11;
    while (v69 != v17)
    {
      v18 = v76;
      v19 = *(v76 + 48);
      v78 = *(v66 + 8 * v17);
      v20 = v74;
      *v74 = v78;
      sub_22C4E719C(v63 + *(v64 + 72) * v17, v20 + v19, &qword_27D9BB018, &unk_22C91A3E0);
      v21 = v20;
      v22 = v75;
      sub_22C4E7208(v21, v75, &qword_27D9BB028, &unk_22C90FAD0);
      v23 = *(v18 + 48);
      v24 = v71;
      *v71 = *v22;
      sub_22C4E7208(v22 + v23, v24 + v67, &qword_27D9BB018, &unk_22C91A3E0);
      v25 = v72;
      sub_22C4E719C(v24, v72, &qword_27D9BDA78, &qword_22C91A3F0);
      v26 = *v25;
      v27 = *(v11 + 48);
      v28 = v25 + v27;
      v29 = *(v65 + 48);
      v30 = (v25 + v27 + v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = v30[3];
      v35 = v73;
      v36 = v73 + v27;
      *v73 = v26;
      v37 = (v35 + v27 + v29);
      v38 = sub_22C901FAC();
      (*(*(v38 - 8) + 32))(v36, v28, v38);
      *v37 = v31;
      v37[1] = v32;
      v37[2] = v33;
      v37[3] = v34;

      sub_22C456C94(v31, v32, v33);
      sub_22C36DD28(v35, &qword_27D9BDA78, &qword_22C91A3F0);
      sub_22C36DD28(v24, &qword_27D9BDA78, &qword_22C91A3F0);
      if (v32)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591018(0, *(v77 + 16) + 1, 1, v77);
          v77 = v43;
        }

        v11 = v68;
        v40 = *(v77 + 16);
        v39 = *(v77 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_22C591018(v39 > 1, v40 + 1, 1, v77);
          v77 = v44;
        }

        v41 = v77;
        *(v77 + 16) = v40 + 1;
        v42 = (v41 + 32 * v40);
        v42[4] = v31;
        v42[5] = v32;
        v42[6] = v33;
        v42[7] = v34;
      }

      else
      {
        v11 = v68;
      }

      if (v70 == ++v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v77 = MEMORY[0x277D84F90];
LABEL_14:
    v45 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
    v46 = v61;
    v48 = sub_22C49FB90(v60, v61 + *(v45 + 32));
    v50 = v49;

    sub_22C4E719C(v46 + *(v45 + 28), v83, &qword_27D9BD628, &unk_22C91A390);
    v51 = v84;
    if (v84)
    {
      v52 = v85;
      sub_22C374168(v83, v84);
      v79 = v77;
      v53 = *(v52 + 8);
      v54 = sub_22C3A5908(&qword_27D9BC560, &unk_22C9139C0);
      v55 = sub_22C52EC74();
      v53(&v80, v48, v50, &v79, v54, v55, v51, v52);

      v56 = v81;
      v57 = v82;
      v58 = v62;
      *v62 = v80;
      *(v58 + 2) = v56;
      *(v58 + 3) = v57;
      sub_22C36FF94(v83);
    }

    else
    {

      sub_22C36DD28(v83, &qword_27D9BD628, &unk_22C91A390);
      v47 = v62;
      *v62 = 0u;
      v47[1] = 0u;
    }
  }
}

void sub_22C52D680(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DynamicEnumerationRenderer_v3_0(0) + 24);
  sub_22C3766E0((v3 + 40), *(v3 + 64));
  v4 = sub_22C3830A4();
  v5(v4);
  sub_22C3830A4();
  sub_22C52BA54();
  if (__dst[5])
  {
    sub_22C456CE4(__dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
    sub_22C377E18(LOBYTE(__dst[0]));
    *(a1 + 40) = 1;
  }

  else
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
    __src[4] = __dst[4];
    __src[5] = __dst[0];
    __src[6] = __dst[1];
    __src[7] = __dst[2];
    __src[8] = __dst[3];
    __src[9] = __dst[4];
    sub_22C52D7E4(__src, &__src[5], a1);
    memcpy(__dst, __src, 0x50uLL);
    sub_22C36DD28(__dst, &qword_27D9BD8F8, &qword_22C91A3B0);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_22C52D7E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = 5;
  *(v11 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v11 + 32) = v12;
  *(inited + 40) = v11 | 0xA000000000000000;

  sub_22C456C94(v5, v7, v8);

  v13 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v14 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v13;
  *(v14 + 16) = result;
  *a3 = v14 | 0x6000000000000000;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  return result;
}

void sub_22C52D95C()
{
  sub_22C36BA7C();
  v3 = sub_22C37228C();
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = (v6 - v5);
  v8 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v42 - v9;
  sub_22C90915C();
  v11 = sub_22C90993C();
  if (sub_22C370B74(v10, 1, v11) == 1)
  {
    sub_22C36DD28(v10, &qword_27D9BC390, &qword_22C912AC0);
    sub_22C377E18(2);
    *(v0 + 40) = 1;
  }

  else
  {
    sub_22C9098BC();
    (*(*(v11 - 8) + 8))(v10, v11);
    type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
    type metadata accessor for FullPlannerPreferences(0);
    v43 = v1;
    sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
    sub_22C901EDC();
    v12 = sub_22C90A2DC();
    v42[1] = v3;
    v14 = v13;

    sub_22C36D6EC();
    v15 = swift_allocObject();
    v42[0] = v12;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = 3;
    *v7 = v15;
    v16 = *MEMORY[0x277D1D7E8];
    v17 = sub_22C902D0C();
    sub_22C36985C();
    v19 = *(v18 + 104);
    v19(v7, v16, v17);
    sub_22C36C640(v7, 0, 3, v17);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    swift_storeEnumTagMultiPayload();
    v20 = sub_22C901FAC();
    v21 = swift_allocBox();
    v23 = v22;
    v24 = type metadata accessor for DynamicEnumeration.Case(0);
    (*(*(v20 - 8) + 16))(v23, v2 + *(v24 + 20), v20);
    v25 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
    *(v7 + v25) = v21;
    v19((v7 + v25), *MEMORY[0x277D1D798], v17);
    swift_storeEnumTagMultiPayload();
    v26 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    swift_allocBox();
    v28 = v27;
    v29 = *(v26 + 48);
    sub_22C52ED28(v7, v27, type metadata accessor for PromptTreeIdentifier);
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v30 = swift_allocBox();

    sub_22C486784();
    sub_22C52ED84(v7, type metadata accessor for PromptTreeIdentifier);
    sub_22C36D2A8();
    v31 = swift_allocObject();
    *(v31 + 16) = 3;
    *(v31 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v32 = swift_allocObject();
    *(v32 + 16) = v30 | 0x2000000000000000;
    *(v31 + 32) = v32;
    sub_22C369AEC();
    v33 = swift_allocObject();
    *(v33 + 16) = v31 | 0xA000000000000000;
    *(v28 + v29) = v33;
    sub_22C4E719C(v43, v45, &qword_27D9BD628, &unk_22C91A390);
    v34 = v46;
    if (v46)
    {
      v35 = v47;
      sub_22C3766E0(v45, v46);
      v36 = sub_22C90A2BC();
      v38 = v37;
      v39 = sub_22C90A2AC();
      v41 = v40;

      (*(v35 + 16))(&v44, v36, v38, v39, v41, v34, v35);

      sub_22C36FF94(v45);
    }

    else
    {

      sub_22C36DD28(v45, &qword_27D9BD628, &unk_22C91A390);
    }

    sub_22C37F278();
  }

  sub_22C36CC48();
}

void sub_22C52DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  v25 = v24 - 8;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = (&a9 - v29);
  v31 = *(sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410) + 48);
  sub_22C37FC50();
  sub_22C4E719C(v32, v33, v34, v35);
  v36 = *(v25 + 56);
  *v23 = *v30;
  sub_22C37FC50();
  sub_22C4E719C(v37, v38, v39, v40);
  sub_22C4E7208(&v28[*(v25 + 56)], v23 + v31, &qword_27D9BB0F0, &qword_22C90D990);

  sub_22C36DD28(v30 + v36, &qword_27D9BB0F0, &qword_22C90D990);
  sub_22C36CC48();
}

void sub_22C52DF5C(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;

  sub_22C456C94(v3, v4, v5);

  sub_22C456C94(v3, v4, v5);

  sub_22C456D48(v3, v4, v5);
}

uint64_t sub_22C52E024@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v14 - v9);
  v11 = *(sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0) + 48);
  sub_22C4E719C(a1, v10, &qword_27D9BB028, &unk_22C90FAD0);
  v12 = *(v5 + 56);
  *a2 = *v10;
  sub_22C4E719C(a1, v8, &qword_27D9BB028, &unk_22C90FAD0);
  sub_22C4E7208(&v8[*(v5 + 56)], a2 + v11, &qword_27D9BB018, &unk_22C91A3E0);

  return sub_22C36DD28(v10 + v12, &qword_27D9BB018, &unk_22C91A3E0);
}

void sub_22C52E178(uint64_t a1, void (*a2)(unint64_t *__return_ptr, __int128 *), uint64_t a3, uint64_t *a4)
{
  v5 = a4[2];
  v51 = a4 + 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C408();
    v5 = v6;
  }

  v52 = v4;
  v7 = 0;
  v48 = *(a1 + 16);
LABEL_4:
  v46 = v5 + 32;
  v57 = v5;
  while (1)
  {
    *v51 = v5;
    if (v7 == v48)
    {
LABEL_24:

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v8 = a1 + 32 + 56 * v7;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);
    v12 = *(v8 + 24);
    v11 = *(v8 + 32);
    v13 = *(v8 + 16);
    v63 = *v8;
    v64 = v13;
    v65 = v12;
    v66 = v11;
    v67 = v9;
    v68 = v10;

    sub_22C456C94(v12, v11, v9);
    a2(&v58, &v63);
    v14 = v58;
    v54 = v59;
    v15 = v60;
    v55 = *(&v61 + 1);
    v69 = v61;
    v56 = v62;
    v16 = v65;
    v17 = v66;
    v18 = v67;

    sub_22C456D48(v16, v17, v18);
    if (!v15)
    {
      goto LABEL_24;
    }

    v53 = v7 + 1;
    v22 = *a4;
    v21 = a4[1];
    v23 = v21 + 32;
    v24 = *(v21 + 16);
    if (!*a4)
    {
      v26 = 0;
      v31 = v15;
      while (v24 != v26)
      {
        v33 = *(v23 + 8 * v26);

        v34 = sub_22C48819C(v33, v14);

        if (v34)
        {
          v32 = v69;
          goto LABEL_17;
        }

        ++v26;
      }

      v30 = 0;
LABEL_21:
      v7 = v53;
      sub_22C7D5818(v14, v30, v19, v20);
      a4[2] = v57;
      v43 = *(v57 + 16);
      v42 = *(v57 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_22C3B737C(v42 > 1, v43 + 1, 1);
      }

      v5 = *v51;
      *(v5 + 16) = v15 + 1;
      v44 = (v5 + 48 * v15);
      v44[4] = v54;
      v44[5] = v31;
      v45 = v69;
      v44[6] = *(&v15 + 1);
      v44[7] = v45;
      v44[8] = v55;
      v44[9] = v56;
      goto LABEL_4;
    }

    sub_22C7DD014(v14, v23, v24, (v22 + 16));
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = v15;
    if (v28)
    {
      goto LABEL_21;
    }

    v32 = v69;
    if ((v26 & 0x8000000000000000) != 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    if (v26 >= *(v57 + 16))
    {
      goto LABEL_28;
    }

    *&v63 = v54;
    *(&v63 + 1) = v31;
    v35 = (v46 + 48 * v26);
    v64 = *(&v15 + 1);
    v65 = v32;
    v66 = v55;
    v67 = v56;
    sub_22C52A800(v35, &v63, &v58);
    if (v52)
    {

      sub_22C456D48(*(&v15 + 1), v32, v55);
      *v51 = v57;
      return;
    }

    v52 = 0;

    v36 = v35[2];
    v37 = v35[3];
    v38 = v35[4];

    sub_22C456D48(v36, v37, v38);

    sub_22C456D48(*(&v15 + 1), v69, v55);
    v39 = v59;
    v40 = v60;
    v41 = v61;
    *v35 = v58;
    v35[1] = v39;
    *(v35 + 1) = v40;
    *(v35 + 2) = v41;
    v5 = v57;
    v7 = v53;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_22C52E54C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v73 = a2;
  v74 = a3;
  v6 = sub_22C3A5908(&qword_27D9BB018, &unk_22C91A3E0);
  v78 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v70 = &v70 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v70 - v12;
  v81 = sub_22C3A5908(&qword_27D9BB028, &unk_22C90FAD0);
  v71 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v72 = &v70 - v14;
  v15 = sub_22C3A5908(&qword_27D9BDA80, &qword_22C91A3F8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v84 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  v20 = sub_22C3A5908(&qword_27D9BDA88, &unk_22C91A400);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v83 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = (&v70 - v23);
  v85 = a4;
  v27 = a4[2];
  v25 = a4 + 2;
  v26 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C420();
    v26 = v28;
  }

  v29 = 0;
  v85[2] = v26;
  v30 = *(a1 + 16);
  v88 = v13;
  v76 = v24;
  v77 = v25;
  v75 = v30;
  v79 = a1;
  v80 = v19;
  while (1)
  {
    v87 = v26;
    if (v29 == v30)
    {
      v31 = 1;
      v86 = v30;
      goto LABEL_9;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(a1 + 16))
    {
      goto LABEL_32;
    }

    sub_22C4E719C(a1 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v29, v19, &qword_27D9BB028, &unk_22C90FAD0);
    v31 = 0;
    v86 = v29 + 1;
LABEL_9:
    v32 = 1;
    v33 = v81;
    sub_22C36C640(v19, v31, 1, v81);
    v34 = v84;
    sub_22C4E7208(v19, v84, &qword_27D9BDA80, &qword_22C91A3F8);
    if (sub_22C370B74(v34, 1, v33) != 1)
    {
      v35 = v72;
      sub_22C4E7208(v84, v72, &qword_27D9BB028, &unk_22C90FAD0);
      v73(v35);
      v13 = v88;
      sub_22C36DD28(v35, &qword_27D9BB028, &unk_22C90FAD0);
      v32 = 0;
    }

    v36 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
    v37 = v83;
    sub_22C36C640(v83, v32, 1, v36);
    sub_22C4E7208(v37, v24, &qword_27D9BDA88, &unk_22C91A400);
    v38 = sub_22C3A5908(&qword_27D9BDA78, &qword_22C91A3F0);
    if (sub_22C370B74(v24, 1, v38) == 1)
    {

      return;
    }

    v39 = v9;
    v40 = *(v38 + 48);
    v41 = *v24;
    sub_22C4E7208(v24 + v40, v13, &qword_27D9BB018, &unk_22C91A3E0);
    v45 = *v85;
    v44 = v85[1];
    v46 = v44 + 32;
    v47 = *(v44 + 16);
    if (*v85)
    {

      sub_22C7DD014(v41, v46, v47, (v45 + 16));
      v49 = v48;
      v51 = v50;
      v53 = v52;

      v26 = v87;
      if (v51)
      {
LABEL_21:
        v56 = v85;
        sub_22C7D5818(v41, v53, v42, v43);
        v57 = v88;
        sub_22C4E719C(v88, v39, &qword_27D9BB018, &unk_22C91A3E0);
        v56[2] = v26;
        v64 = *(v26 + 16);
        v63 = *(v26 + 24);
        v65 = v77;
        if (v64 >= v63 >> 1)
        {
          sub_22C3B73BC(v63 > 1, v64 + 1, 1, v58, v59, v60, v61, v62);
        }

        sub_22C36DD28(v57, &qword_27D9BB018, &unk_22C91A3E0);
        v26 = *v65;
        *(v26 + 16) = v64 + 1;
        sub_22C4E7208(v39, v26 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v64, &qword_27D9BB018, &unk_22C91A3E0);
        v13 = v57;
        v19 = v80;
        v9 = v39;
        goto LABEL_28;
      }

      v19 = v80;
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v49 = 0;
      v26 = v87;
      while (1)
      {
        if (v47 == v49)
        {
          v53 = 0;
          goto LABEL_21;
        }

        v54 = *(v46 + 8 * v49);

        v55 = sub_22C48819C(v54, v41);

        if (v55)
        {
          break;
        }

        ++v49;
      }

      v19 = v80;
    }

    if (v49 >= *(v26 + 16))
    {
      goto LABEL_34;
    }

    v66 = v26 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v49;
    v67 = v70;
    v68 = v88;
    v69 = v82;
    sub_22C52C8FC(v66, v88, v70);
    sub_22C36DD28(v68, &qword_27D9BB018, &unk_22C91A3E0);
    v82 = v69;
    if (v69)
    {

      *v77 = v26;
      return;
    }

    sub_22C36DD28(v66, &qword_27D9BB018, &unk_22C91A3E0);
    sub_22C4E7208(v67, v66, &qword_27D9BB018, &unk_22C91A3E0);
    v9 = v39;
    v13 = v88;
    v65 = v77;
LABEL_28:
    *v65 = v26;
    a1 = v79;
    v30 = v75;
    v24 = v76;
    v29 = v86;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22C52EC30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = v2;
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  sub_22C52DF5C(&v3, a2);
}

unint64_t sub_22C52EC74()
{
  result = qword_27D9BC568;
  if (!qword_27D9BC568)
  {
    sub_22C3AC1A0(&qword_27D9BC560, &unk_22C9139C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC568);
  }

  return result;
}

uint64_t sub_22C52ECD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C52ED28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C52ED84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C52EDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration.Case(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C52EE44()
{

  return sub_22C52ED84(v0, type metadata accessor for DynamicEnumeration);
}

uint64_t type metadata accessor for SpanEventPromptGenerator_v3_0(uint64_t a1)
{
  result = qword_281430E20;
  if (!qword_281430E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C52EEF0(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C52EF74(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 129) = a3;
  *(v5 + 128) = a2;
  *(v5 + 72) = a1;
  v6 = sub_22C9063DC();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C52F04C, 0, 0);
}

void sub_22C52F04C(uint64_t a1)
{
  v2 = v1[4].i64[1];
  if (!*(v2 + 16))
  {
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1;
    v26 = &v1[6].i8[8];
    v25 = v1[6].i64[1];
    v24 = *(v26 + 1);
    v27 = v23[6].i64[0];
    if (v22)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "No span entities to include in the prompt";
LABEL_18:
      _os_log_impl(&dword_22C366000, v20, v21, v29, v28, 2u);
      sub_22C3699EC();
    }

LABEL_19:

    (*(v25 + 8))(v24, v27);
    v32 = MEMORY[0x277D84F90];
    v33 = v59;
    goto LABEL_31;
  }

  if (v1[8].i8[0] && (v1[8].i8[0] == 2 || v1[8].i8[1] != 1))
  {
    sub_22C903F7C();
    v20 = sub_22C9063CC();
    v21 = sub_22C90AACC();
    v30 = os_log_type_enabled(v20, v21);
    v24 = v1[7].i64[1];
    v31 = v1;
    v25 = v1[6].i64[1];
    v27 = v31[6].i64[0];
    if (v30)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Omitting stale span entities from old turn";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v3 = swift_task_alloc();
  v3[1] = vextq_s8(v1[5], v1[5], 8uLL);

  v4 = sub_22C47B550(sub_22C5318A0, v3, v2);

  sub_22C531270(v4);
  v6 = v5;
  v8 = v7;
  v9 = *(v7 + 16);
  v57 = v5;
  if (v9)
  {
    v62 = MEMORY[0x277D84F90];

    sub_22C3B6A74(0, v9, 0);
    v10 = *(v62 + 16);
    v11 = 32 * v10 + 56;
    v12 = 32;
    do
    {
      v13 = *(v8 + v12);
      if (*(v13 + 16) >= 0x14uLL)
      {
        v14 = 20;
      }

      else
      {
        v14 = *(v13 + 16);
      }

      v15 = *(v62 + 24);
      v16 = v10 + 1;

      if (v10 >= v15 >> 1)
      {
        sub_22C3B6A74((v15 > 1), v16, 1);
      }

      v17 = *(sub_22C90822C() - 8);
      v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      *(v62 + 16) = v16;
      v19 = (v62 + v11);
      *(v19 - 3) = v13;
      *(v19 - 2) = v18;
      *(v19 - 1) = 0;
      *v19 = (2 * v14) | 1;
      v11 += 32;
      v12 += 8;
      ++v10;
      --v9;
    }

    while (v9);
    v34 = v62;

    v6 = v57;

    v1 = v59;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v35 = v1[5].i64[1];
  v36 = type metadata accessor for SpanEventPromptGenerator_v3_0(0);
  sub_22C378A4C(v35 + *(v36 + 20) + 232, v1[1].i64);
  v63 = MEMORY[0x277D84F90];
  sub_22C3B63D4(0, 0, 0);
  v37 = 0;
  v38 = 0;
  v39 = (v34 + 56);
  v58 = v34;
  while (v38 != 20 && v38 < *(v34 + 16))
  {
    if (v38 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v60 = v59[5].i64[0];
    v61 = v38;
    v40 = *(v6 + v37 + 32);
    v41 = *(v6 + v37 + 40);
    v42 = *(v39 - 3);
    v43 = *(v39 - 2);
    v44 = *(v39 - 1);
    v45 = *v39;

    swift_unknownObjectRetain();
    sub_22C52F84C(v40, v41, v42, v43, v44, v45, v59[1].i64, v60);
    v47 = v46;

    swift_unknownObjectRelease();
    v49 = *(v63 + 16);
    v48 = *(v63 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_22C3B63D4(v48 > 1, v49 + 1, 1);
    }

    *(v63 + 16) = v49 + 1;
    *(v63 + 8 * v49 + 32) = v47;
    v39 += 4;
    v37 += 16;
    v38 = v61 + 1;
    v6 = v57;
    v34 = v58;
  }

  if (*(v63 + 16))
  {
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22C90F870;
    v50 = swift_allocObject();
    v33 = v59;
    v59[3].i64[1] = 0x6E6170735F746567;
    v59[4].i64[0] = 0xEB00000000292873;
    *(v50 + 16) = sub_22C90A49C();
    *(v50 + 24) = v51;
    *(v32 + 32) = 1;
    *(v32 + 40) = v50 | 2;
    v52 = sub_22C3DB9B0(v63);

    v53 = sub_22C529D00(10, 0xE100000000000000, v52);

    v54 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v55 = swift_allocObject();
    *(v55 + 16) = v53;
    *(v54 + 16) = v55;
    *(v32 + 48) = 5;
    *(v32 + 56) = v54 | 0x6000000000000002;

    sub_22C36FF94(v59[1].i64);
  }

  else
  {

    v33 = v59;
    sub_22C36FF94(v59[1].i64);
    v32 = MEMORY[0x277D84F90];
  }

LABEL_31:

  v56 = v33->i64[1];

  v56(v32);
}

BOOL sub_22C52F670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C9039FC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  sub_22C90821C();
  v12 = 0;
  if (*(a2 + *(type metadata accessor for SpanEventPromptGenerator_v3_0(0) + 24)) == 1)
  {
    v12 = *(a3 + 24);
  }

  (*(v6 + 16))(v9, v11, v5);
  if (!v12)
  {
    v15 = *(v6 + 8);
    v15(v9, v5);
    goto LABEL_7;
  }

  v14 = sub_22C530BC8(v13);

  v15 = *(v6 + 8);
  v15(v9, v5);
  if ((v14 & 1) == 0)
  {
LABEL_7:
    v17 = sub_22C53053C();

    v16 = !v17;
    goto LABEL_8;
  }

  v16 = 0;
LABEL_8:
  v15(v11, v5);
  return v16;
}

void sub_22C52F84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a7;
  v52 = a8;
  v59 = a4;
  v53 = a1;
  v58 = sub_22C90822C();
  v11 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22C9039FC();
  v14 = *(v57 - 8);
  v15 = MEMORY[0x28223BE20](v57);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a6 >> 1;
  v19 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v50 = a2;
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v60 = MEMORY[0x277D84F90];
    sub_22C3B73FC(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v20 = v60;
    v55 = v11 + 8;
    v56 = v11 + 16;
    v54 = v14 + 32;
    while (a5 < v18)
    {
      v21 = v58;
      (*(v11 + 16))(v13, v59 + *(v11 + 72) * a5, v58);
      sub_22C90821C();
      (*(v11 + 8))(v13, v21);
      v60 = v20;
      v23 = *(v20 + 16);
      v22 = *(v20 + 24);
      v19 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_22C3B73FC(v22 > 1, v23 + 1, 1);
        v20 = v60;
      }

      *(v20 + 16) = v19;
      v15 = (*(v14 + 32))(v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v23, v17, v57);
      if (v18 == ++a5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_9:
  MEMORY[0x28223BE20](v15);
  v24 = v52;
  *(&v50 - 2) = v51;
  *(&v50 - 1) = v24;
  v25 = sub_22C793528(sub_22C5318C0, (&v50 - 4), v20);

  v26 = sub_22C3DB9B0(v25);

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22C9173F0;
  v30 = swift_allocObject();
  *(v30 + 16) = v27 | 0x8000000000000000;
  *(v29 + 32) = v30;
  v17 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = v29 | 0x8000000000000000;
  *(v17 + 16) = v31;
  v14 = swift_allocObject();
  *(v14 + 16) = 8227;
  *(v14 + 24) = 0xE200000000000000;
  sub_22C591324();
  v33 = v32;
  v19 = *(v32 + 16);
  v18 = v19 + 1;
  if (v19 >= *(v32 + 24) >> 1)
  {
LABEL_21:
    sub_22C591324();
    v33 = v45;
  }

  *(v33 + 16) = v18;
  *(v33 + 8 * v19 + 32) = v14;
  v34 = swift_allocObject();
  *(v34 + 16) = v53;
  *(v34 + 24) = v50;
  v35 = *(v33 + 24);
  v36 = v19 + 2;

  if (v19 + 2 > (v35 >> 1))
  {
    sub_22C591324();
    v33 = v46;
  }

  *(v33 + 16) = v36;
  *(v33 + 8 * v18 + 32) = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = 8250;
  *(v37 + 24) = 0xE200000000000000;
  v38 = v19 + 3;
  if (v19 + 3 > *(v33 + 24) >> 1)
  {
    sub_22C591324();
    v33 = v47;
  }

  *(v33 + 16) = v38;
  *(v33 + 8 * v36 + 32) = v37;
  v39 = v19 + 4;
  if (v19 + 4 > *(v33 + 24) >> 1)
  {
    sub_22C591324();
    v33 = v48;
  }

  *(v33 + 16) = v39;
  *(v33 + 8 * v38 + 32) = v17 | 0x6000000000000000;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0xE000000000000000;
  v41 = *(v33 + 24);

  if (v19 + 5 > (v41 >> 1))
  {
    sub_22C591324();
    v33 = v49;
  }

  *(v33 + 16) = v19 + 5;
  *(v33 + 8 * v39 + 32) = v40;
  v42 = sub_22C3DB9B0(v33);

  v43 = swift_allocObject();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v43 + 16) = v44;
}