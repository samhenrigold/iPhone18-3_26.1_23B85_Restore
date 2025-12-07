uint64_t sub_21B2BC43C(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(v23 + 2 * v19 + (v29 & 0xFFFFFFFFFFFFFFC0) + 64);
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          LOWORD(v30) = 0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(v23 + 2 * v20 + (v36 & 0xFFFFFFFFFFFFFFC0) + 64);
          v38 = v37 < v30;
          if ((a8 & 1) == 0)
          {
            v38 = v30 < v37;
          }

          if (!v38)
          {
LABEL_32:
            v39 = v8;
            v40 = v11 == v8;
            v8 += 8;
            if (v40)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v39;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v39 = v10;
        v40 = v11 == v10;
        v10 += 8;
        if (!v40)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v41 = v10 - 8;
  v42 = v18;
  while (1)
  {
    v66 = v9;
    v44 = *(v42 - 1);
    v42 -= 8;
    v43 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

    v45 = v41;
    v46 = *v41;
    swift_beginAccess();
    v47 = *(a7 + 16);
    if (!v47)
    {
      goto LABEL_89;
    }

    v48 = v47[1];
    if (v43 >= v48)
    {
      break;
    }

    v41 = v45;
    v49 = v47 + 8;
    v50 = *(v47 + (v43 >> 3) + 64) & (1 << (v43 & 7));
    if (v50)
    {
      v51 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

      if (v51 < 0)
      {
        v51 = *v47 + 14;
      }

      v52 = v51 >> 3;
      v53 = v52 - 1;
      v27 = v52 < 1;
      v54 = v52 + 62;
      if (!v27)
      {
        v54 = v53;
      }

      v55 = *(v49 + 2 * v43 + (v54 & 0xFFFFFFFFFFFFFFC0) + 64);
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      LOWORD(v55) = 0;
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v46 >= v48)
    {
      break;
    }

    if ((*(v49 + (v46 >> 3)) >> (v46 & 7)))
    {
      v56 = *v47;
      v32 = __OFADD__(v56, 7);
      v57 = v56 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        v59 = v57 / 8;
        v60 = v59 - 1;
        v27 = v59 < 1;
        v61 = v59 + 62;
        if (!v27)
        {
          v61 = v60;
        }

        v62 = *(v49 + 2 * v46 + (v61 & 0xFFFFFFFFFFFFFFC0) + 64);
        v63 = v62 < v55;
        if ((a8 & 1) == 0)
        {
          v63 = v55 < v62;
        }

        if (v63)
        {
LABEL_73:
          if (v58 != v10)
          {
            *v9 = *v45;
          }

          if (v18 <= v8 || (v10 = v45, v45 <= v11))
          {
            v10 = v45;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v58)
    {
      *v9 = *v42;
    }

    v18 = v42;
    if (v42 <= v8)
    {
      v18 = v42;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2BC900(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v146 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v137 = a6;
    v130 = a1;
    v140 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6C88(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v132 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(v26 + 2 * v22 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              LOWORD(v33) = 0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v90 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v90)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v132;
                  a1 = v130;
                  if (v17 < v132)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(v26 + 2 * v23 + (v38 & 0xFFFFFFFFFFFFFFC0) + 64);
              v40 = v39 < v33;
              if ((a8 & 1) == 0)
              {
                v40 = v33 < v39;
              }

              if ((v20 & 1) != v40)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v132;
                a1 = v130;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v132;
              a1 = v130;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v41 = v17 - 1;
            v42 = v16;
            do
            {
              if (v42 != v41)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v44 = *(v43 + 8 * v42);
                *(v43 + 8 * v42) = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = v44;
              }

              v30 = ++v42 < v41--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v45 = a3[1];
      if (v17 < v45)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v45)
          {
            v46 = a3[1];
          }

          else
          {
            v46 = v16 + a4;
          }

          if (v46 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v46)
          {
            v141 = v15;
            v143 = v9;
            v47 = *a3;
            v48 = v16;
            v49 = *a3 + 8 * v17 - 8;
            v133 = v48;
            v135 = v46;
            v50 = v48 - v17;
            do
            {
              v51 = v17;
              v52 = *(v47 + 8 * v17);
              v53 = v50;
              v54 = v49;
              do
              {
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v55 = *v54;
                swift_beginAccess();
                v56 = *(a7 + 16);
                if (!v56)
                {
                  goto LABEL_172;
                }

                v57 = v56[1];
                if (v52 >= v57)
                {
                  goto LABEL_179;
                }

                v58 = v56 + 8;
                v59 = *(v56 + (v52 >> 3) + 64) & (1 << (v52 & 7));
                if (v59)
                {
                  v60 = *v56 + 7;
                  if (__OFADD__(*v56, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v60 < 0)
                  {
                    v60 = *v56 + 14;
                  }

                  v61 = v60 >> 3;
                  v62 = v61 - 1;
                  v30 = v61 < 1;
                  v63 = v61 + 62;
                  if (!v30)
                  {
                    v63 = v62;
                  }

                  v64 = *(v58 + 2 * v52 + (v63 & 0xFFFFFFFFFFFFFFC0) + 64);
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  LOWORD(v64) = 0;
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v55 >= v57)
                {
                  goto LABEL_179;
                }

                if ((*(v58 + (v55 >> 3)) >> (v55 & 7)))
                {
                  v65 = *v56;
                  v90 = __OFADD__(v65, 7);
                  v66 = v65 + 7;
                  if (v90)
                  {
                    goto LABEL_149;
                  }

                  if (!v59)
                  {
                    break;
                  }

                  v67 = v66 / 8;
                  v68 = v67 - 1;
                  v30 = v67 < 1;
                  v69 = v67 + 62;
                  if (!v30)
                  {
                    v69 = v68;
                  }

                  v70 = *(v58 + 2 * v55 + (v69 & 0xFFFFFFFFFFFFFFC0) + 64);
                  v71 = v70 < v64;
                  if ((a8 & 1) == 0)
                  {
                    v71 = v64 < v70;
                  }

                  if (!v71)
                  {
                    break;
                  }
                }

                else if (!v59)
                {
                  break;
                }

                if (!v47)
                {
                  goto LABEL_173;
                }

                v72 = *v54;
                v52 = v54[1];
                *v54 = v52;
                v54[1] = v72;
                --v54;
              }

              while (!__CFADD__(v53++, 1));
              v17 = v51 + 1;
              v49 += 8;
              --v50;
            }

            while ((v51 + 1) != v135);
            v17 = v135;
            v15 = v141;
            v9 = v143;
            a1 = v130;
            v16 = v133;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v131 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v75 = *(v15 + 2);
      v74 = *(v15 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v15 = sub_21B2356AC((v74 > 1), v75 + 1, 1, v15);
      }

      *(v15 + 2) = v76;
      v77 = v15 + 32;
      v78 = &v15[16 * v75 + 32];
      *v78 = v16;
      *(v78 + 1) = v17;
      v146 = v15;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v75)
      {
        v142 = v15;
        v144 = v9;
        v134 = v15 + 32;
        while (1)
        {
          v79 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v80 = *(v15 + 4);
            v81 = *(v15 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_108:
            if (v83)
            {
              goto LABEL_156;
            }

            v96 = &v15[16 * v76];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_159;
            }

            v102 = &v77[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_163;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v76 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v106 = &v15[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_122:
          if (v101)
          {
            goto LABEL_158;
          }

          v109 = &v77[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_161;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v79 - 1 >= v76)
          {
            goto LABEL_150;
          }

          v117 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v118 = &v77[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v77[16 * v79];
          v122 = *(v121 + 1);
          v123 = (v117 + 8 * *v118);
          v124 = (v117 + 8 * *v121);
          v125 = (v117 + 8 * v122);

          sub_21B2BC43C(v123, v124, v125, v136, a5, v137, v140, a8 & 1);
          if (v144)
          {

            v146 = v142;
            goto LABEL_144;
          }

          if (v122 < v119)
          {
            goto LABEL_151;
          }

          v126 = *(v142 + 2);
          if (v120 > v126)
          {
            goto LABEL_152;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v126)
          {
            goto LABEL_153;
          }

          v76 = v126 - 1;
          memmove(v121, v121 + 16, 16 * (v126 - 1 - v120));
          a7 = v140;
          v15 = v142;
          *(v142 + 2) = v126 - 1;
          v77 = v134;
          if (v126 <= 2)
          {
LABEL_3:
            v146 = v15;
            v9 = v144;
            a1 = v130;
            goto LABEL_4;
          }
        }

        v84 = &v77[16 * v76];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_154;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        v91 = &v15[16 * v76];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_157;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_160;
        }

        if (v95 >= v87)
        {
          v113 = &v77[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v82 < v116)
          {
            v79 = v76 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v131;
      a6 = v137;
      if (v131 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v127 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v146, v127, a3, a5, a6, a7, a8 & 1, sub_21B2BC43C);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BD288(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v38 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(v19 + 2 * v14 + (v25 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        LOWORD(v26) = 0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(v19 + 2 * v16 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
        v34 = v33 < v26;
        if ((a8 & 1) == 0)
        {
          v34 = v26 < v33;
        }

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v35 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v35;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v38 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BD4B0(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), void (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v14 = *a1;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_21B33EA0C(v14);
  }

  v15 = *(v14 + 2);
  v17[0] = v14 + 32;
  v17[1] = v15;

  sub_21B2C15A4(v17, a2, a3, a4, a5 & 1, a6, a7);

  *a1 = v14;

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B2BD5BC(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(v23 + 4 * v19 + (v29 & 0xFFFFFFFFFFFFFFC0) + 64);
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v30 = 0.0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(v23 + 4 * v20 + (v36 & 0xFFFFFFFFFFFFFFC0) + 64);
          v38 = v37 < v30;
          if ((a8 & 1) == 0)
          {
            v38 = v30 < v37;
          }

          if (!v38)
          {
LABEL_32:
            v39 = v8;
            v40 = v11 == v8;
            v8 += 8;
            if (v40)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v39;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v39 = v10;
        v40 = v11 == v10;
        v10 += 8;
        if (!v40)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v41 = v10 - 8;
  v42 = v18;
  while (1)
  {
    v66 = v9;
    v44 = *(v42 - 1);
    v42 -= 8;
    v43 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

    v45 = v41;
    v46 = *v41;
    swift_beginAccess();
    v47 = *(a7 + 16);
    if (!v47)
    {
      goto LABEL_89;
    }

    v48 = v47[1];
    if (v43 >= v48)
    {
      break;
    }

    v41 = v45;
    v49 = v47 + 8;
    v50 = *(v47 + (v43 >> 3) + 64) & (1 << (v43 & 7));
    if (v50)
    {
      v51 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

      if (v51 < 0)
      {
        v51 = *v47 + 14;
      }

      v52 = v51 >> 3;
      v53 = v52 - 1;
      v27 = v52 < 1;
      v54 = v52 + 62;
      if (!v27)
      {
        v54 = v53;
      }

      v55 = *(v49 + 4 * v43 + (v54 & 0xFFFFFFFFFFFFFFC0) + 64);
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      v55 = 0.0;
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v46 >= v48)
    {
      break;
    }

    if ((*(v49 + (v46 >> 3)) >> (v46 & 7)))
    {
      v56 = *v47;
      v32 = __OFADD__(v56, 7);
      v57 = v56 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        v59 = v57 / 8;
        v60 = v59 - 1;
        v27 = v59 < 1;
        v61 = v59 + 62;
        if (!v27)
        {
          v61 = v60;
        }

        v62 = *(v49 + 4 * v46 + (v61 & 0xFFFFFFFFFFFFFFC0) + 64);
        v63 = v62 < v55;
        if ((a8 & 1) == 0)
        {
          v63 = v55 < v62;
        }

        if (v63)
        {
LABEL_73:
          if (v58 != v10)
          {
            *v9 = *v45;
          }

          if (v18 <= v8 || (v10 = v45, v45 <= v11))
          {
            v10 = v45;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v58)
    {
      *v9 = *v42;
    }

    v18 = v42;
    if (v42 <= v8)
    {
      v18 = v42;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2BDA80(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v146 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v137 = a6;
    v130 = a1;
    v140 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6B5C(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v132 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(v26 + 4 * v22 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v33 = 0.0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v90 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v90)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v132;
                  a1 = v130;
                  if (v17 < v132)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(v26 + 4 * v23 + (v38 & 0xFFFFFFFFFFFFFFC0) + 64);
              v40 = v39 < v33;
              if ((a8 & 1) == 0)
              {
                v40 = v33 < v39;
              }

              if ((v20 & 1) != v40)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v132;
                a1 = v130;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v132;
              a1 = v130;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v41 = v17 - 1;
            v42 = v16;
            do
            {
              if (v42 != v41)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v44 = *(v43 + 8 * v42);
                *(v43 + 8 * v42) = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = v44;
              }

              v30 = ++v42 < v41--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v45 = a3[1];
      if (v17 < v45)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v45)
          {
            v46 = a3[1];
          }

          else
          {
            v46 = v16 + a4;
          }

          if (v46 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v46)
          {
            v141 = v15;
            v143 = v9;
            v47 = *a3;
            v48 = v16;
            v49 = *a3 + 8 * v17 - 8;
            v133 = v48;
            v135 = v46;
            v50 = v48 - v17;
            do
            {
              v51 = v17;
              v52 = *(v47 + 8 * v17);
              v53 = v50;
              v54 = v49;
              do
              {
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v55 = *v54;
                swift_beginAccess();
                v56 = *(a7 + 16);
                if (!v56)
                {
                  goto LABEL_172;
                }

                v57 = v56[1];
                if (v52 >= v57)
                {
                  goto LABEL_179;
                }

                v58 = v56 + 8;
                v59 = *(v56 + (v52 >> 3) + 64) & (1 << (v52 & 7));
                if (v59)
                {
                  v60 = *v56 + 7;
                  if (__OFADD__(*v56, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v60 < 0)
                  {
                    v60 = *v56 + 14;
                  }

                  v61 = v60 >> 3;
                  v62 = v61 - 1;
                  v30 = v61 < 1;
                  v63 = v61 + 62;
                  if (!v30)
                  {
                    v63 = v62;
                  }

                  v64 = *(v58 + 4 * v52 + (v63 & 0xFFFFFFFFFFFFFFC0) + 64);
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  v64 = 0.0;
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v55 >= v57)
                {
                  goto LABEL_179;
                }

                if ((*(v58 + (v55 >> 3)) >> (v55 & 7)))
                {
                  v65 = *v56;
                  v90 = __OFADD__(v65, 7);
                  v66 = v65 + 7;
                  if (v90)
                  {
                    goto LABEL_149;
                  }

                  if (!v59)
                  {
                    break;
                  }

                  v67 = v66 / 8;
                  v68 = v67 - 1;
                  v30 = v67 < 1;
                  v69 = v67 + 62;
                  if (!v30)
                  {
                    v69 = v68;
                  }

                  v70 = *(v58 + 4 * v55 + (v69 & 0xFFFFFFFFFFFFFFC0) + 64);
                  v71 = v70 < v64;
                  if ((a8 & 1) == 0)
                  {
                    v71 = v64 < v70;
                  }

                  if (!v71)
                  {
                    break;
                  }
                }

                else if (!v59)
                {
                  break;
                }

                if (!v47)
                {
                  goto LABEL_173;
                }

                v72 = *v54;
                v52 = v54[1];
                *v54 = v52;
                v54[1] = v72;
                --v54;
              }

              while (!__CFADD__(v53++, 1));
              v17 = v51 + 1;
              v49 += 8;
              --v50;
            }

            while ((v51 + 1) != v135);
            v17 = v135;
            v15 = v141;
            v9 = v143;
            a1 = v130;
            v16 = v133;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v131 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v75 = *(v15 + 2);
      v74 = *(v15 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v15 = sub_21B2356AC((v74 > 1), v75 + 1, 1, v15);
      }

      *(v15 + 2) = v76;
      v77 = v15 + 32;
      v78 = &v15[16 * v75 + 32];
      *v78 = v16;
      *(v78 + 1) = v17;
      v146 = v15;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v75)
      {
        v142 = v15;
        v144 = v9;
        v134 = v15 + 32;
        while (1)
        {
          v79 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v80 = *(v15 + 4);
            v81 = *(v15 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_108:
            if (v83)
            {
              goto LABEL_156;
            }

            v96 = &v15[16 * v76];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_159;
            }

            v102 = &v77[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_163;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v76 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v106 = &v15[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_122:
          if (v101)
          {
            goto LABEL_158;
          }

          v109 = &v77[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_161;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v79 - 1 >= v76)
          {
            goto LABEL_150;
          }

          v117 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v118 = &v77[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v77[16 * v79];
          v122 = *(v121 + 1);
          v123 = (v117 + 8 * *v118);
          v124 = (v117 + 8 * *v121);
          v125 = (v117 + 8 * v122);

          sub_21B2BD5BC(v123, v124, v125, v136, a5, v137, v140, a8 & 1);
          if (v144)
          {

            v146 = v142;
            goto LABEL_144;
          }

          if (v122 < v119)
          {
            goto LABEL_151;
          }

          v126 = *(v142 + 2);
          if (v120 > v126)
          {
            goto LABEL_152;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v126)
          {
            goto LABEL_153;
          }

          v76 = v126 - 1;
          memmove(v121, v121 + 16, 16 * (v126 - 1 - v120));
          a7 = v140;
          v15 = v142;
          *(v142 + 2) = v126 - 1;
          v77 = v134;
          if (v126 <= 2)
          {
LABEL_3:
            v146 = v15;
            v9 = v144;
            a1 = v130;
            goto LABEL_4;
          }
        }

        v84 = &v77[16 * v76];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_154;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        v91 = &v15[16 * v76];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_157;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_160;
        }

        if (v95 >= v87)
        {
          v113 = &v77[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v82 < v116)
          {
            v79 = v76 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v131;
      a6 = v137;
      if (v131 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v127 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v146, v127, a3, a5, a6, a7, a8 & 1, sub_21B2BD5BC);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BE408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v38 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(v19 + 4 * v14 + (v25 & 0xFFFFFFFFFFFFFFC0) + 64);
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v26 = 0.0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(v19 + 4 * v16 + (v32 & 0xFFFFFFFFFFFFFFC0) + 64);
        v34 = v33 < v26;
        if ((a8 & 1) == 0)
        {
          v34 = v26 < v33;
        }

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v35 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v35;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v38 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BE630(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = a4;
  v9 = a3;
  v10 = __dst;
  v11 = __src;
  v12 = __dst - __src;
  v13 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v13 = __dst - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - __dst;
  v16 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v16 = a3 - __dst;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (a4 != __src || &__src[8 * v14] <= a4)
    {
      memmove(a4, __src, 8 * v14);
    }

    v18 = &v8[8 * v14];
    if (v12 >= 8 && v10 < v9)
    {
      do
      {
        v19 = *v10;
        if ((*v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        v20 = *v8;
        swift_beginAccess();
        v21 = *(a7 + 16);
        if (!v21)
        {
          goto LABEL_88;
        }

        v22 = v21[1];
        if (v19 >= v22)
        {
          goto LABEL_90;
        }

        v23 = v21 + 8;
        v24 = *(v21 + (v19 >> 3) + 64) & (1 << (v19 & 7));
        if (v24)
        {
          v25 = *v21 + 7;
          if (__OFADD__(*v21, 7))
          {
            __break(1u);
            goto LABEL_85;
          }

          if (v25 < 0)
          {
            v25 = *v21 + 14;
          }

          v26 = v25 >> 3;
          v28 = v26 - 1;
          v27 = v26 < 1;
          v29 = v26 + 62;
          if (!v27)
          {
            v29 = v28;
          }

          v30 = *(&v23[v19 + 8] + (v29 & 0xFFFFFFFFFFFFFFC0));
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v30 = 0.0;
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }
        }

        if (v20 >= v22)
        {
          goto LABEL_90;
        }

        if ((*(v23 + (v20 >> 3)) >> (v20 & 7)))
        {
          v31 = *v21;
          v32 = __OFADD__(v31, 7);
          v33 = v31 + 7;
          if (v32)
          {
            goto LABEL_86;
          }

          if (!v24)
          {
            goto LABEL_32;
          }

          v34 = v33 / 8;
          v35 = v34 - 1;
          v27 = v34 < 1;
          v36 = v34 + 62;
          if (!v27)
          {
            v36 = v35;
          }

          v37 = *(&v23[v20 + 8] + (v36 & 0xFFFFFFFFFFFFFFC0));
          v38 = v37 < v30;
          if ((a8 & 1) == 0)
          {
            v38 = v30 < v37;
          }

          if (!v38)
          {
LABEL_32:
            v39 = v8;
            v40 = v11 == v8;
            v8 += 8;
            if (v40)
            {
              goto LABEL_34;
            }

LABEL_33:
            *v11 = *v39;
            goto LABEL_34;
          }
        }

        else if (!v24)
        {
          goto LABEL_32;
        }

        v39 = v10;
        v40 = v11 == v10;
        v10 += 8;
        if (!v40)
        {
          goto LABEL_33;
        }

LABEL_34:
        v11 += 8;
      }

      while (v8 < v18 && v10 < v9);
    }

    v10 = v11;
    goto LABEL_80;
  }

  if (a4 != __dst || &__dst[8 * v17] <= a4)
  {
    memmove(a4, __dst, 8 * v17);
  }

  v18 = &v8[8 * v17];
  if (v15 < 8 || v10 <= v11)
  {
LABEL_80:
    if (v10 != v8 || v10 >= &v8[(v18 - v8 + (v18 - v8 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v10, v8, 8 * ((v18 - v8) / 8));
    }

    return 1;
  }

LABEL_46:
  v41 = v10 - 8;
  v42 = v18;
  while (1)
  {
    v66 = v9;
    v44 = *(v42 - 1);
    v42 -= 8;
    v43 = v44;
    if ((v44 & 0x8000000000000000) != 0)
    {
      break;
    }

    v45 = v41;
    v46 = *v41;
    swift_beginAccess();
    v47 = *(a7 + 16);
    if (!v47)
    {
      goto LABEL_89;
    }

    v48 = v47[1];
    if (v43 >= v48)
    {
      break;
    }

    v41 = v45;
    v49 = v47 + 8;
    v50 = *(v47 + (v43 >> 3) + 64) & (1 << (v43 & 7));
    if (v50)
    {
      v51 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

      if (v51 < 0)
      {
        v51 = *v47 + 14;
      }

      v52 = v51 >> 3;
      v53 = v52 - 1;
      v27 = v52 < 1;
      v54 = v52 + 62;
      if (!v27)
      {
        v54 = v53;
      }

      v55 = *(&v49[v43 + 8] + (v54 & 0xFFFFFFFFFFFFFFC0));
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    else
    {
      v55 = 0.0;
      if ((v46 & 0x8000000000000000) != 0)
      {
        break;
      }
    }

    if (v46 >= v48)
    {
      break;
    }

    if ((*(v49 + (v46 >> 3)) >> (v46 & 7)))
    {
      v56 = *v47;
      v32 = __OFADD__(v56, 7);
      v57 = v56 + 7;
      if (v32)
      {
        goto LABEL_87;
      }

      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        v59 = v57 / 8;
        v60 = v59 - 1;
        v27 = v59 < 1;
        v61 = v59 + 62;
        if (!v27)
        {
          v61 = v60;
        }

        v62 = *(&v49[v46 + 8] + (v61 & 0xFFFFFFFFFFFFFFC0));
        v63 = v62 < v55;
        if ((a8 & 1) == 0)
        {
          v63 = v55 < v62;
        }

        if (v63)
        {
LABEL_73:
          if (v58 != v10)
          {
            *v9 = *v45;
          }

          if (v18 <= v8 || (v10 = v45, v45 <= v11))
          {
            v10 = v45;
            goto LABEL_80;
          }

          goto LABEL_46;
        }
      }
    }

    else
    {
      v58 = v66;
      v9 = v66 - 8;
      if (v50)
      {
        goto LABEL_73;
      }
    }

    if (v18 != v58)
    {
      *v9 = *v42;
    }

    v18 = v42;
    if (v42 <= v8)
    {
      v18 = v42;
      goto LABEL_80;
    }
  }

LABEL_90:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2BEAF4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v9 = v8;
  v11 = a1;
  v12 = *a1;

  v30 = a6;

  v32 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v32 = sub_21B23A330(v32);
  }

  v24 = v11;
  *v11 = v32;
  v13 = (v32 + 16);
  v14 = *(v32 + 2);
  if (v14 < 2)
  {
LABEL_9:

    *v24 = v32;
    return 1;
  }

  else
  {
    while (1)
    {
      v15 = *a3;
      if (!*a3)
      {
        break;
      }

      v16 = v9;
      v17 = &v32[16 * v14];
      v11 = *v17;
      v18 = &v13[2 * v14];
      v19 = v18[1];
      v34 = v15 + 8 * *v17;
      v33 = v15 + 8 * *v18;
      v20 = v15 + 8 * v19;

      a8(v34, v33, v20, a2, a4, a5, v30, a7 & 1);
      v9 = v16;

      if (v16)
      {
        *v24 = v32;

        return 1;
      }

      if (v19 < v11)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v21 = *v13;
      if (v14 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v17 = v11;
      *(v17 + 1) = v19;
      v22 = v21 - v14;
      if (v21 < v14)
      {
        goto LABEL_14;
      }

      v14 = v21 - 1;
      memmove(v18, v18 + 2, 16 * v22);
      *v13 = v14;
      if (v14 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v24 = v32;
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BECFC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v146 = MEMORY[0x277D84F90];
  v13 = a3[1];
  if (v13 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v137 = a6;
    v130 = a1;
    v140 = a7;
    while (1)
    {
      v16 = v14;
      v17 = v14 + 1;
      if (v14 + 1 < v13)
      {
        v18 = *a3;
        v19 = sub_21B2B6A20(*(*a3 + 8 * v17), *(*a3 + 8 * v14), a5, a6, a7, a8 & 1);
        if (v9)
        {
          goto LABEL_144;
        }

        v20 = v19;
        v17 = v16 + 2;
        if (v16 + 2 < v13)
        {
          v132 = v16;
          v21 = (v18 + 8 * v16 + 16);
          while (1)
          {
            v22 = *v21;
            if ((*v21 & 0x8000000000000000) != 0)
            {
              goto LABEL_179;
            }

            v23 = *(v21 - 1);
            swift_beginAccess();
            v24 = *(a7 + 16);
            if (!v24)
            {
              goto LABEL_175;
            }

            v25 = v24[1];
            if (v22 >= v25)
            {
              goto LABEL_179;
            }

            v26 = v24 + 8;
            v27 = *(v24 + (v22 >> 3) + 64) & (1 << (v22 & 7));
            if (v27)
            {
              v28 = *v24 + 7;
              if (__OFADD__(*v24, 7))
              {
                goto LABEL_164;
              }

              if (v28 < 0)
              {
                v28 = *v24 + 14;
              }

              v29 = v28 >> 3;
              v31 = v29 - 1;
              v30 = v29 < 1;
              v32 = v29 + 62;
              if (!v30)
              {
                v32 = v31;
              }

              v33 = *(&v26[v22 + 8] + (v32 & 0xFFFFFFFFFFFFFFC0));
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            else
            {
              v33 = 0.0;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_179;
              }
            }

            if (v23 >= v25)
            {
              goto LABEL_179;
            }

            if ((*(v26 + (v23 >> 3)) >> (v23 & 7)))
            {
              v34 = *v24;
              v90 = __OFADD__(v34, 7);
              v35 = v34 + 7;
              if (v90)
              {
                goto LABEL_165;
              }

              if (!v27)
              {
LABEL_9:
                if (v20)
                {
                  v16 = v132;
                  a1 = v130;
                  if (v17 < v132)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_40;
                }

                goto LABEL_10;
              }

              v36 = v35 / 8;
              v37 = v36 - 1;
              v30 = v36 < 1;
              v38 = v36 + 62;
              if (!v30)
              {
                v38 = v37;
              }

              v39 = *(&v26[v23 + 8] + (v38 & 0xFFFFFFFFFFFFFFC0));
              v40 = v39 < v33;
              if ((a8 & 1) == 0)
              {
                v40 = v33 < v39;
              }

              if ((v20 & 1) != v40)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (!v27)
              {
                goto LABEL_9;
              }

              if ((v20 & 1) == 0)
              {
                v16 = v132;
                a1 = v130;
                goto LABEL_47;
              }
            }

LABEL_10:
            ++v21;
            if (v13 == ++v17)
            {
              v17 = v13;
LABEL_37:
              v16 = v132;
              a1 = v130;
              break;
            }
          }
        }

        if (v20)
        {
          if (v17 < v16)
          {
            goto LABEL_169;
          }

LABEL_40:
          if (v16 < v17)
          {
            v41 = v17 - 1;
            v42 = v16;
            do
            {
              if (v42 != v41)
              {
                v43 = *a3;
                if (!*a3)
                {
                  goto LABEL_176;
                }

                v44 = *(v43 + 8 * v42);
                *(v43 + 8 * v42) = *(v43 + 8 * v41);
                *(v43 + 8 * v41) = v44;
              }

              v30 = ++v42 < v41--;
            }

            while (v30);
          }
        }
      }

LABEL_47:
      v45 = a3[1];
      if (v17 < v45)
      {
        if (__OFSUB__(v17, v16))
        {
          goto LABEL_168;
        }

        if (v17 - v16 < a4)
        {
          if (__OFADD__(v16, a4))
          {
            goto LABEL_170;
          }

          if (v16 + a4 >= v45)
          {
            v46 = a3[1];
          }

          else
          {
            v46 = v16 + a4;
          }

          if (v46 < v16)
          {
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_174:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_177:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_178:

            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_179:
            result = sub_21B34B824();
            __break(1u);
            return result;
          }

          if (v17 != v46)
          {
            v141 = v15;
            v143 = v9;
            v47 = *a3;
            v48 = v16;
            v49 = *a3 + 8 * v17 - 8;
            v133 = v48;
            v135 = v46;
            v50 = v48 - v17;
            do
            {
              v51 = v17;
              v52 = *(v47 + 8 * v17);
              v53 = v50;
              v54 = v49;
              do
              {
                if ((v52 & 0x8000000000000000) != 0)
                {
                  goto LABEL_179;
                }

                v55 = *v54;
                swift_beginAccess();
                v56 = *(a7 + 16);
                if (!v56)
                {
                  goto LABEL_172;
                }

                v57 = v56[1];
                if (v52 >= v57)
                {
                  goto LABEL_179;
                }

                v58 = v56 + 8;
                v59 = *(v56 + (v52 >> 3) + 64) & (1 << (v52 & 7));
                if (v59)
                {
                  v60 = *v56 + 7;
                  if (__OFADD__(*v56, 7))
                  {
                    __break(1u);
LABEL_149:
                    __break(1u);
LABEL_150:
                    __break(1u);
LABEL_151:
                    __break(1u);
LABEL_152:
                    __break(1u);
LABEL_153:
                    __break(1u);
LABEL_154:
                    __break(1u);
LABEL_155:
                    __break(1u);
LABEL_156:
                    __break(1u);
LABEL_157:
                    __break(1u);
LABEL_158:
                    __break(1u);
LABEL_159:
                    __break(1u);
LABEL_160:
                    __break(1u);
LABEL_161:
                    __break(1u);
LABEL_162:
                    __break(1u);
LABEL_163:
                    __break(1u);
LABEL_164:
                    __break(1u);
LABEL_165:
                    __break(1u);
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  if (v60 < 0)
                  {
                    v60 = *v56 + 14;
                  }

                  v61 = v60 >> 3;
                  v62 = v61 - 1;
                  v30 = v61 < 1;
                  v63 = v61 + 62;
                  if (!v30)
                  {
                    v63 = v62;
                  }

                  v64 = *(&v58[v52 + 8] + (v63 & 0xFFFFFFFFFFFFFFC0));
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                else
                {
                  v64 = 0.0;
                  if ((v55 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_179;
                  }
                }

                if (v55 >= v57)
                {
                  goto LABEL_179;
                }

                if ((*(v58 + (v55 >> 3)) >> (v55 & 7)))
                {
                  v65 = *v56;
                  v90 = __OFADD__(v65, 7);
                  v66 = v65 + 7;
                  if (v90)
                  {
                    goto LABEL_149;
                  }

                  if (!v59)
                  {
                    break;
                  }

                  v67 = v66 / 8;
                  v68 = v67 - 1;
                  v30 = v67 < 1;
                  v69 = v67 + 62;
                  if (!v30)
                  {
                    v69 = v68;
                  }

                  v70 = *(&v58[v55 + 8] + (v69 & 0xFFFFFFFFFFFFFFC0));
                  v71 = v70 < v64;
                  if ((a8 & 1) == 0)
                  {
                    v71 = v64 < v70;
                  }

                  if (!v71)
                  {
                    break;
                  }
                }

                else if (!v59)
                {
                  break;
                }

                if (!v47)
                {
                  goto LABEL_173;
                }

                v72 = *v54;
                v52 = v54[1];
                *v54 = v52;
                v54[1] = v72;
                --v54;
              }

              while (!__CFADD__(v53++, 1));
              v17 = v51 + 1;
              v49 += 8;
              --v50;
            }

            while ((v51 + 1) != v135);
            v17 = v135;
            v15 = v141;
            v9 = v143;
            a1 = v130;
            v16 = v133;
          }
        }
      }

      if (v17 < v16)
      {
        goto LABEL_167;
      }

      v131 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_21B2356AC(0, *(v15 + 2) + 1, 1, v15);
      }

      v75 = *(v15 + 2);
      v74 = *(v15 + 3);
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v15 = sub_21B2356AC((v74 > 1), v75 + 1, 1, v15);
      }

      *(v15 + 2) = v76;
      v77 = v15 + 32;
      v78 = &v15[16 * v75 + 32];
      *v78 = v16;
      *(v78 + 1) = v17;
      v146 = v15;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_177;
      }

      if (v75)
      {
        v142 = v15;
        v144 = v9;
        v134 = v15 + 32;
        while (1)
        {
          v79 = v76 - 1;
          if (v76 >= 4)
          {
            break;
          }

          if (v76 == 3)
          {
            v80 = *(v15 + 4);
            v81 = *(v15 + 5);
            v90 = __OFSUB__(v81, v80);
            v82 = v81 - v80;
            v83 = v90;
LABEL_108:
            if (v83)
            {
              goto LABEL_156;
            }

            v96 = &v15[16 * v76];
            v98 = *v96;
            v97 = *(v96 + 1);
            v99 = __OFSUB__(v97, v98);
            v100 = v97 - v98;
            v101 = v99;
            if (v99)
            {
              goto LABEL_159;
            }

            v102 = &v77[16 * v79];
            v104 = *v102;
            v103 = *(v102 + 1);
            v90 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v90)
            {
              goto LABEL_162;
            }

            if (__OFADD__(v100, v105))
            {
              goto LABEL_163;
            }

            if (v100 + v105 >= v82)
            {
              if (v82 < v105)
              {
                v79 = v76 - 2;
              }

              goto LABEL_129;
            }

            goto LABEL_122;
          }

          v106 = &v15[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v90 = __OFSUB__(v107, v108);
          v100 = v107 - v108;
          v101 = v90;
LABEL_122:
          if (v101)
          {
            goto LABEL_158;
          }

          v109 = &v77[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v90 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v90)
          {
            goto LABEL_161;
          }

          if (v112 < v100)
          {
            goto LABEL_3;
          }

LABEL_129:
          if (v79 - 1 >= v76)
          {
            goto LABEL_150;
          }

          v117 = *a3;
          if (!*a3)
          {
            goto LABEL_174;
          }

          v118 = &v77[16 * v79 - 16];
          v119 = *v118;
          v120 = v79;
          v121 = &v77[16 * v79];
          v122 = *(v121 + 1);
          v123 = (v117 + 8 * *v118);
          v124 = (v117 + 8 * *v121);
          v125 = (v117 + 8 * v122);

          sub_21B2BE630(v123, v124, v125, v136, a5, v137, v140, a8 & 1);
          if (v144)
          {

            v146 = v142;
            goto LABEL_144;
          }

          if (v122 < v119)
          {
            goto LABEL_151;
          }

          v126 = *(v142 + 2);
          if (v120 > v126)
          {
            goto LABEL_152;
          }

          *v118 = v119;
          *(v118 + 1) = v122;
          if (v120 >= v126)
          {
            goto LABEL_153;
          }

          v76 = v126 - 1;
          memmove(v121, v121 + 16, 16 * (v126 - 1 - v120));
          a7 = v140;
          v15 = v142;
          *(v142 + 2) = v126 - 1;
          v77 = v134;
          if (v126 <= 2)
          {
LABEL_3:
            v146 = v15;
            v9 = v144;
            a1 = v130;
            goto LABEL_4;
          }
        }

        v84 = &v77[16 * v76];
        v85 = *(v84 - 8);
        v86 = *(v84 - 7);
        v90 = __OFSUB__(v86, v85);
        v87 = v86 - v85;
        if (v90)
        {
          goto LABEL_154;
        }

        v89 = *(v84 - 6);
        v88 = *(v84 - 5);
        v90 = __OFSUB__(v88, v89);
        v82 = v88 - v89;
        v83 = v90;
        if (v90)
        {
          goto LABEL_155;
        }

        v91 = &v15[16 * v76];
        v93 = *v91;
        v92 = *(v91 + 1);
        v90 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v90)
        {
          goto LABEL_157;
        }

        v90 = __OFADD__(v82, v94);
        v95 = v82 + v94;
        if (v90)
        {
          goto LABEL_160;
        }

        if (v95 >= v87)
        {
          v113 = &v77[16 * v79];
          v115 = *v113;
          v114 = *(v113 + 1);
          v90 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v90)
          {
            goto LABEL_166;
          }

          if (v82 < v116)
          {
            v79 = v76 - 2;
          }

          goto LABEL_129;
        }

        goto LABEL_108;
      }

LABEL_4:
      v13 = a3[1];
      v14 = v131;
      a6 = v137;
      if (v131 >= v13)
      {
        goto LABEL_141;
      }
    }
  }

  swift_bridgeObjectRetain_n();
  swift_retain_n();
LABEL_141:
  v127 = *a1;
  if (!*a1)
  {
    goto LABEL_178;
  }

  sub_21B2BEAF4(&v146, v127, a3, a5, a6, a7, a8 & 1, sub_21B2BE630);
  if (v9)
  {

LABEL_144:

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_21B2BF684(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v10 = a3;
    v11 = *a4;
    v12 = (*a4 + 8 * a3 - 8);
    v13 = result - a3;
LABEL_5:
    v14 = *(v11 + 8 * v10);
    v15 = v13;
    v38 = v12;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v16 = *v12;
      result = swift_beginAccess();
      v17 = *(a7 + 16);
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17[1];
      if (v14 >= v18)
      {
        break;
      }

      v19 = v17 + 8;
      v20 = *(v17 + (v14 >> 3) + 64) & (1 << (v14 & 7));
      if (v20)
      {
        v21 = *v17 + 7;
        if (__OFADD__(*v17, 7))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          break;
        }

        if (v21 < 0)
        {
          v21 = *v17 + 14;
        }

        v22 = v21 >> 3;
        v24 = v22 - 1;
        v23 = v22 < 1;
        v25 = v22 + 62;
        if (!v23)
        {
          v25 = v24;
        }

        v26 = *(&v19[v14 + 8] + (v25 & 0xFFFFFFFFFFFFFFC0));
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      else
      {
        v26 = 0.0;
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }
      }

      if (v16 >= v18)
      {
        break;
      }

      if ((*(v19 + (v16 >> 3)) >> (v16 & 7)))
      {
        v27 = *v17;
        v28 = __OFADD__(v27, 7);
        v29 = v27 + 7;
        if (v28)
        {
          goto LABEL_34;
        }

        if (!v20)
        {
          goto LABEL_4;
        }

        v30 = v29 / 8;
        v31 = v30 - 1;
        v23 = v30 < 1;
        v32 = v30 + 62;
        if (!v23)
        {
          v32 = v31;
        }

        v33 = *(&v19[v16 + 8] + (v32 & 0xFFFFFFFFFFFFFFC0));
        v34 = v33 < v26;
        if ((a8 & 1) == 0)
        {
          v34 = v26 < v33;
        }

        if (!v34)
        {
          goto LABEL_4;
        }
      }

      else if (!v20)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        goto LABEL_36;
      }

      v35 = *v12;
      v14 = v12[1];
      *v12 = v14;
      v12[1] = v35;
      --v12;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        ++v10;
        v12 = v38 + 1;
        --v13;
        if (v10 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2BF8AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = (*a4 + 8 * a3 - 8);
    v11 = result - a3;
LABEL_7:
    v39 = v10;
    v40 = a3;
    v12 = *(v9 + 8 * a3);
    v38 = v11;
    while (1)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
LABEL_52:
        result = sub_21B34B824();
        __break(1u);
        return result;
      }

      v13 = *v10;
      result = swift_beginAccess();
      v14 = *(a7 + 16);
      if (!v14)
      {
        goto LABEL_50;
      }

      v15 = v14[1];
      if (v12 >= v15)
      {
        goto LABEL_52;
      }

      v16 = v14 + 8;
      if ((*(v14 + (v12 >> 3) + 64) >> (v12 & 7)))
      {
        v17 = *v14 + 7;
        if (__OFADD__(*v14, 7))
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

        if (v17 < 0)
        {
          v17 = *v14 + 14;
        }

        v18 = v17 >> 3;
        v20 = v18 - 1;
        v19 = v18 < 1;
        v21 = v18 + 62;
        if (!v19)
        {
          v21 = v20;
        }

        v22 = &v16[2 * v12] + (v21 & 0xFFFFFFFFFFFFFFC0);
        v23 = *(v22 + 64);
        v24 = *(v22 + 72);

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }
      }

      if (v13 >= v15)
      {
        goto LABEL_52;
      }

      if (((*(v16 + (v13 >> 3)) >> (v13 & 7)) & 1) == 0)
      {
        break;
      }

      v25 = *v14 + 7;
      if (__OFADD__(*v14, 7))
      {
        goto LABEL_49;
      }

      if (v25 < 0)
      {
        v25 = *v14 + 14;
      }

      v26 = v25 >> 3;
      v27 = v26 - 1;
      v19 = v26 < 1;
      v28 = v26 + 62;
      if (!v19)
      {
        v28 = v27;
      }

      v29 = &v16[2 * v13] + (v28 & 0xFFFFFFFFFFFFFFC0);
      v31 = *(v29 + 64);
      v30 = *(v29 + 72);

      if (!v24)
      {
        if (!v30)
        {
LABEL_6:
          a3 = v40 + 1;
          v10 = v39 + 1;
          v11 = v38 - 1;
          if (v40 + 1 == a2)
          {
            return result;
          }

          goto LABEL_7;
        }

LABEL_5:

        goto LABEL_6;
      }

      if (!v30)
      {
        goto LABEL_36;
      }

      if (a8)
      {
        if (v31 == v23 && v24 == v30)
        {
          goto LABEL_4;
        }
      }

      else if (v23 == v31 && v24 == v30)
      {
LABEL_4:

        goto LABEL_5;
      }

      v34 = sub_21B34B9F4();

      if ((v34 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_42:
      if (!v9)
      {
        goto LABEL_51;
      }

      v35 = *v10;
      v12 = v10[1];
      *v10 = v12;
      v10[1] = v35;
      --v10;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_6;
      }
    }

    if (!v24)
    {
      goto LABEL_6;
    }

LABEL_36:

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_21B2BFB48(char **a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v200 = a8;
  v192 = a5;
  v184 = a1;
  v208 = sub_21B34A834();
  v12 = *(v208 - 8);
  v13 = MEMORY[0x28223BE20](v208);
  v202 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v201 = &v181 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v183 = &v181 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v181 - v19;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v21 = MEMORY[0x28223BE20](v206);
  v203 = &v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v186 = &v181 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v213 = &v181 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v189 = &v181 - v31;
  MEMORY[0x28223BE20](v30);
  v194 = a3;
  v33 = a3[1];
  v193 = a6;
  v209 = a7;
  if (v33 < 1)
  {
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v35 = MEMORY[0x277D84F90];
LABEL_158:
    v213 = *v184;
    if (!v213)
    {
      goto LABEL_203;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v196;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_160;
  }

  v191 = &v181 - v32;
  v210 = v12 + 16;
  v212 = (v12 + 56);
  v205 = (v12 + 48);
  v198 = (v12 + 32);
  v197 = (v12 + 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  v190 = a4;
  v211 = v12;
  v182 = v20;
  v207 = v27;
  while (1)
  {
    v36 = v34;
    if (v34 + 1 >= v33)
    {
      v195 = v34 + 1;
      goto LABEL_57;
    }

    v199 = v35;
    v37 = *v194;
    v38 = v196;
    LODWORD(v188) = sub_21B2B65D4(*&(*v194)[8 * v34 + 8], *&(*v194)[8 * v34], v192, v193, a7, v200 & 1);
    if (v38)
    {
LABEL_156:

      swift_bridgeObjectRelease_n();
    }

    v196 = 0;
    v39 = v34 + 2;
    if (v34 + 2 >= v33)
    {
      v35 = v199;
    }

    else
    {
      v195 = v34 + 2;
      v181 = v34;
      v40 = &v37[8 * v34 + 16];
      v187 = v33;
      do
      {
        v41 = *v40;
        if ((*v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_204;
        }

        v35 = *(v40 - 1);
        swift_beginAccess();
        v42 = *(a7 + 16);
        if (!v42)
        {
          goto LABEL_199;
        }

        if (v41 >= v42[1])
        {
          goto LABEL_204;
        }

        v43 = v42 + 8;
        if ((*(v42 + (v41 >> 3) + 64) >> (v41 & 7)))
        {
          v44 = *v42 + 7;
          if (__OFADD__(*v42, 7))
          {
            goto LABEL_185;
          }

          if (v44 < 0)
          {
            v44 = *v42 + 14;
          }

          v45 = v44 >> 3;
          v47 = v45 - 1;
          v46 = v45 < 1;
          v48 = v45 + 62;
          if (!v46)
          {
            v48 = v47;
          }

          v33 = v191;
          v49 = v208;
          (*(v211 + 16))(v191, v43 + (v48 & 0xFFFFFFFFFFFFFFC0) + *(v211 + 72) * v41 + 64, v208);
          v50 = 0;
        }

        else
        {
          v50 = 1;
          v33 = v191;
          v49 = v208;
        }

        v51 = *v212;
        (*v212)(v33, v50, 1, v49);
        if (v35 < 0 || v35 >= v42[1])
        {
          goto LABEL_204;
        }

        v52 = *(v43 + (v35 >> 3)) >> (v35 & 7);
        v204 = v40;
        if (v52)
        {
          v53 = *v42 + 7;
          if (__OFADD__(*v42, 7))
          {
            goto LABEL_186;
          }

          if (v53 < 0)
          {
            v53 = *v42 + 14;
          }

          v54 = v53 >> 3;
          v55 = v54 - 1;
          v46 = v54 < 1;
          v56 = v54 + 62;
          if (!v46)
          {
            v56 = v55;
          }

          v57 = v43 + (v56 & 0xFFFFFFFFFFFFFFC0) + *(v211 + 72) * v35 + 64;
          v58 = v189;
          v59 = v208;
          (*(v211 + 16))(v189, v57, v208);
          v60 = 0;
        }

        else
        {
          v60 = 1;
          v58 = v189;
          v59 = v208;
        }

        v51(v58, v60, 1, v59);
        v61 = *(v206 + 48);
        v62 = v191;
        v63 = v58;
        v64 = v186;
        sub_21B2C1778(v191, v186);
        sub_21B2C1778(v58, v64 + v61);
        v65 = *v205;
        if ((*v205)(v64, 1, v59) == 1)
        {
          sub_21B261664(v63, &qword_27CD7E100, &unk_21B352A30);
          sub_21B261664(v62, &qword_27CD7E100, &unk_21B352A30);
          if (v65(v64 + v61, 1, v59) != 1)
          {
            sub_21B261664(v64 + v61, &qword_27CD7E100, &unk_21B352A30);
          }

          v33 = v187;
          if (v188)
          {
            v35 = v199;
            a4 = v190;
            v39 = v195;
            v36 = v181;
LABEL_49:
            if (v39 >= v36)
            {
              v195 = v39;
              if (v36 < v39)
              {
                v76 = v39 - 1;
                v77 = v36;
                do
                {
                  if (v77 != v76)
                  {
                    v78 = *v194;
                    if (!*v194)
                    {
                      goto LABEL_200;
                    }

                    v79 = *&v78[8 * v77];
                    *&v78[8 * v77] = *&v78[8 * v76];
                    *&v78[8 * v76] = v79;
                  }

                  v46 = ++v77 < v76--;
                }

                while (v46);
              }

              goto LABEL_57;
            }

LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            v35 = sub_21B23A330(v35);
LABEL_160:
            v196 = v33;
            v214 = v35;
            v170 = *(v35 + 16);
            if (v170 >= 2)
            {
              v33 = v193;
              do
              {
                v171 = *v194;
                if (!*v194)
                {
                  goto LABEL_201;
                }

                v172 = *(v35 + 16 * v170);
                v173 = v35;
                v174 = *(v35 + 16 * (v170 - 1) + 40);
                v175 = &v171[8 * v172];
                v176 = &v171[8 * *(v35 + 16 * (v170 - 1) + 32)];
                v177 = &v171[8 * v174];

                v35 = v209;

                v178 = v175;
                v179 = v196;
                sub_21B2324A8(v178, v176, v177, v213, v192, v33, v35, v200 & 1, sub_21B2B65D4);
                v196 = v179;
                if (v179)
                {
                  break;
                }

                if (v174 < v172)
                {
                  goto LABEL_188;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v173 = sub_21B23A330(v173);
                }

                if (v170 - 2 >= *(v173 + 2))
                {
                  goto LABEL_189;
                }

                v180 = &v173[16 * v170];
                *v180 = v172;
                *(v180 + 1) = v174;
                v214 = v173;
                sub_21B2327F4(v170 - 1);
                v35 = v214;
                v170 = *(v214 + 2);
              }

              while (v170 > 1);
            }

            return swift_bridgeObjectRelease_n();
          }
        }

        else
        {
          v66 = v65(v64 + v61, 1, v59);
          v33 = v187;
          if (v66 == 1)
          {
            sub_21B261664(v189, &qword_27CD7E100, &unk_21B352A30);
            sub_21B261664(v191, &qword_27CD7E100, &unk_21B352A30);
            sub_21B261664(v64, &qword_27CD7E100, &unk_21B352A30);
            if ((v188 & 1) == 0)
            {
              v35 = v199;
              a4 = v190;
              v36 = v181;
              goto LABEL_57;
            }
          }

          else
          {
            v67 = *v198;
            v68 = v182;
            (*v198)(v182, v64, v59);
            v69 = v64 + v61;
            v70 = v183;
            v67(v183, v69, v59);
            sub_21B2B5BB8();
            if (v200)
            {
              v71 = sub_21B34AB84();
            }

            else
            {
              v71 = sub_21B34AB94();
            }

            v72 = v70;
            v73 = v71;
            v74 = v189;
            v75 = *v197;
            (*v197)(v72, v59);
            v75(v68, v59);
            sub_21B261664(v74, &qword_27CD7E100, &unk_21B352A30);
            sub_21B261664(v191, &qword_27CD7E100, &unk_21B352A30);
            if ((v188 ^ v73))
            {
              v35 = v199;
              v39 = v195;
              goto LABEL_45;
            }
          }
        }

        v40 = v204 + 8;
        ++v195;
      }

      while (v33 != v195);
      v39 = v33;
      v35 = v199;
LABEL_45:
      v36 = v181;
    }

    a4 = v190;
    if (v188)
    {
      goto LABEL_49;
    }

    v195 = v39;
LABEL_57:
    v80 = v194[1];
    v81 = v195;
    if (v195 < v80)
    {
      if (__OFSUB__(v195, v36))
      {
        goto LABEL_191;
      }

      if (v195 - v36 >= a4)
      {
        v81 = v195;
        goto LABEL_104;
      }

      v82 = (v36 + a4);
      if (__OFADD__(v36, a4))
      {
        goto LABEL_193;
      }

      if (v82 >= v80)
      {
        v82 = v194[1];
      }

      if (v82 < v36)
      {
        goto LABEL_194;
      }

      v81 = v195;
      if (v195 != v82)
      {
        break;
      }
    }

LABEL_104:
    if (v81 < v36)
    {
      goto LABEL_190;
    }

LABEL_105:
    v195 = v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_21B2356AC(0, *(v35 + 16) + 1, 1, v35);
    }

    v114 = v35;
    v35 = *(v35 + 16);
    v199 = v114;
    v115 = *(v114 + 24);
    v116 = v35 + 1;
    if (v35 >= v115 >> 1)
    {
      v199 = sub_21B2356AC((v115 > 1), v35 + 1, 1, v199);
    }

    v117 = v199;
    *(v199 + 2) = v116;
    v118 = &v117[16 * v35];
    v119 = v195;
    *(v118 + 4) = v36;
    *(v118 + 5) = v119;
    v204 = *v184;
    if (!v204)
    {
      goto LABEL_202;
    }

    if (v35)
    {
      while (1)
      {
        v120 = v116 - 1;
        if (v116 >= 4)
        {
          break;
        }

        v121 = v199;
        if (v116 == 3)
        {
          v122 = *(v199 + 4);
          v123 = *(v199 + 5);
          v132 = __OFSUB__(v123, v122);
          v124 = v123 - v122;
          v125 = v132;
LABEL_124:
          if (v125)
          {
            goto LABEL_177;
          }

          v138 = &v121[16 * v116];
          v140 = *v138;
          v139 = *(v138 + 1);
          v141 = __OFSUB__(v139, v140);
          v142 = v139 - v140;
          v143 = v141;
          if (v141)
          {
            goto LABEL_180;
          }

          v144 = &v121[16 * v120 + 32];
          v146 = *v144;
          v145 = *(v144 + 1);
          v132 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v132)
          {
            goto LABEL_183;
          }

          if (__OFADD__(v142, v147))
          {
            goto LABEL_184;
          }

          if (v142 + v147 >= v124)
          {
            if (v124 < v147)
            {
              v120 = v116 - 2;
            }

            goto LABEL_145;
          }

          goto LABEL_138;
        }

        v148 = &v199[16 * v116];
        v150 = *v148;
        v149 = *(v148 + 1);
        v132 = __OFSUB__(v149, v150);
        v142 = v149 - v150;
        v143 = v132;
LABEL_138:
        if (v143)
        {
          goto LABEL_179;
        }

        v151 = &v121[16 * v120];
        v153 = *(v151 + 4);
        v152 = *(v151 + 5);
        v132 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v132)
        {
          goto LABEL_182;
        }

        if (v154 < v142)
        {
          goto LABEL_3;
        }

LABEL_145:
        v159 = v120 - 1;
        if (v120 - 1 >= v116)
        {
          goto LABEL_172;
        }

        v160 = v196;
        v161 = *v194;
        if (!*v194)
        {
          goto LABEL_198;
        }

        v33 = *&v121[16 * v159 + 32];
        v162 = v120;
        v163 = *&v121[16 * v120 + 40];
        v35 = &v161[8 * v33];
        v164 = &v161[8 * *&v121[16 * v120 + 32]];
        v165 = &v161[8 * v163];
        v166 = v193;

        a7 = v209;

        sub_21B2324A8(v35, v164, v165, v204, v192, v166, a7, v200 & 1, sub_21B2B65D4);
        if (v160)
        {
          goto LABEL_156;
        }

        if (v163 < v33)
        {
          goto LABEL_173;
        }

        v35 = v199;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21B23A330(v35);
        }

        v27 = v207;
        if (v159 >= *(v35 + 16))
        {
          goto LABEL_174;
        }

        v196 = 0;
        v167 = (v35 + 16 * v159);
        *(v167 + 4) = v33;
        *(v167 + 5) = v163;
        v214 = v35;
        sub_21B2327F4(v162);
        v199 = v214;
        v116 = *(v214 + 2);
        a4 = v190;
        if (v116 <= 1)
        {
          goto LABEL_3;
        }
      }

      v121 = v199;
      v126 = &v199[16 * v116 + 32];
      v127 = *(v126 - 8);
      v128 = *(v126 - 7);
      v132 = __OFSUB__(v128, v127);
      v129 = v128 - v127;
      if (v132)
      {
        goto LABEL_175;
      }

      v131 = *(v126 - 6);
      v130 = *(v126 - 5);
      v132 = __OFSUB__(v130, v131);
      v124 = v130 - v131;
      v125 = v132;
      if (v132)
      {
        goto LABEL_176;
      }

      v133 = &v199[16 * v116];
      v135 = *v133;
      v134 = *(v133 + 1);
      v132 = __OFSUB__(v134, v135);
      v136 = v134 - v135;
      if (v132)
      {
        goto LABEL_178;
      }

      v132 = __OFADD__(v124, v136);
      v137 = v124 + v136;
      if (v132)
      {
        goto LABEL_181;
      }

      if (v137 >= v129)
      {
        v155 = &v199[16 * v120 + 32];
        v157 = *v155;
        v156 = *(v155 + 1);
        v132 = __OFSUB__(v156, v157);
        v158 = v156 - v157;
        if (v132)
        {
          goto LABEL_187;
        }

        if (v124 < v158)
        {
          v120 = v116 - 2;
        }

        goto LABEL_145;
      }

      goto LABEL_124;
    }

LABEL_3:
    v33 = v194[1];
    v34 = v195;
    v35 = v199;
    if (v195 >= v33)
    {
      goto LABEL_158;
    }
  }

  v199 = v35;
  v204 = *v194;
  v83 = &v204[8 * v195 - 8];
  v84 = v195;
  v181 = v36;
  v33 = v36 - v195;
  v185 = v82;
LABEL_68:
  v195 = v84;
  v85 = *&v204[8 * v84];
  v187 = v33;
  v188 = v83;
  while (1)
  {
    if ((v85 & 0x8000000000000000) != 0)
    {
      goto LABEL_204;
    }

    v35 = *v83;
    swift_beginAccess();
    v86 = *(a7 + 16);
    if (!v86)
    {
      break;
    }

    if (v85 >= v86[1])
    {
      goto LABEL_204;
    }

    v87 = v86 + 8;
    if ((*(v86 + (v85 >> 3) + 64) >> (v85 & 7)))
    {
      v88 = *v86 + 7;
      if (__OFADD__(*v86, 7))
      {
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      if (v88 < 0)
      {
        v88 = *v86 + 14;
      }

      v89 = v88 >> 3;
      v90 = v89 - 1;
      v46 = v89 < 1;
      v91 = v89 + 62;
      if (!v46)
      {
        v91 = v90;
      }

      v92 = v213;
      v93 = v208;
      (*(v211 + 16))(v213, v87 + (v91 & 0xFFFFFFFFFFFFFFC0) + *(v211 + 72) * v85 + 64, v208);
      v94 = 0;
    }

    else
    {
      v94 = 1;
      v92 = v213;
      v93 = v208;
    }

    v95 = *v212;
    (*v212)(v92, v94, 1, v93);
    if (v35 < 0 || v35 >= v86[1])
    {
      goto LABEL_204;
    }

    if ((*(v87 + (v35 >> 3)) >> (v35 & 7)))
    {
      v96 = *v86 + 7;
      if (__OFADD__(*v86, 7))
      {
        goto LABEL_171;
      }

      if (v96 < 0)
      {
        v96 = *v86 + 14;
      }

      v97 = v96 >> 3;
      v98 = v97 - 1;
      v46 = v97 < 1;
      v99 = v97 + 62;
      if (!v46)
      {
        v99 = v98;
      }

      (*(v211 + 16))(v27, v87 + (v99 & 0xFFFFFFFFFFFFFFC0) + *(v211 + 72) * v35 + 64, v93);
      v100 = 0;
    }

    else
    {
      v100 = 1;
    }

    v95(v27, v100, 1, v93);
    v101 = *(v206 + 48);
    v102 = v213;
    v103 = v203;
    sub_21B2C1778(v213, v203);
    sub_21B2C1778(v27, v103 + v101);
    v104 = *v205;
    if ((*v205)(v103, 1, v93) == 1)
    {
      sub_21B261664(v27, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v102, &qword_27CD7E100, &unk_21B352A30);
      if (v104(v103 + v101, 1, v93) != 1)
      {
        sub_21B261664(v103 + v101, &qword_27CD7E100, &unk_21B352A30);
      }

      a7 = v209;
LABEL_67:
      v84 = v195 + 1;
      v83 = v188 + 8;
      v33 = v187 - 1;
      if ((v195 + 1) != v185)
      {
        goto LABEL_68;
      }

      v81 = v185;
      v35 = v199;
      a4 = v190;
      v36 = v181;
      if (v185 < v181)
      {
        goto LABEL_190;
      }

      goto LABEL_105;
    }

    v105 = v104(v103 + v101, 1, v93);
    v107 = v201;
    v106 = v202;
    if (v105 == 1)
    {
      v27 = v207;
      sub_21B261664(v207, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v213, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v103, &qword_27CD7E100, &unk_21B352A30);
      a7 = v209;
    }

    else
    {
      v108 = *v198;
      (*v198)(v201, v103, v93);
      v108(v106, v103 + v101, v93);
      sub_21B2B5BB8();
      if (v200)
      {
        v109 = sub_21B34AB84();
      }

      else
      {
        v109 = sub_21B34AB94();
      }

      v110 = v109;
      a7 = v209;
      v111 = *v197;
      (*v197)(v106, v93);
      v111(v107, v93);
      v27 = v207;
      sub_21B261664(v207, &qword_27CD7E100, &unk_21B352A30);
      sub_21B261664(v213, &qword_27CD7E100, &unk_21B352A30);
      if ((v110 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    if (!v204)
    {
      goto LABEL_197;
    }

    v112 = *v83;
    v85 = *(v83 + 1);
    *v83 = v85;
    *(v83 + 1) = v112;
    v83 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_197:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_198:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_201:

  __break(1u);
LABEL_202:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_203:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_204:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B2C0F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v66 = a8;
  v69 = a7;
  v12 = sub_21B34A834();
  v72 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v57 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  MEMORY[0x28223BE20](v68);
  v17 = &v57 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v73 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v58 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v74 = (v72 + 56);
    v67 = (v72 + 48);
    v62 = (v72 + 8);
    v63 = (v72 + 32);
    v70 = v24;
    v71 = v72 + 16;
    v25 = (v24 + 8 * a3 - 8);
    v26 = a1 - a3;
LABEL_5:
    v60 = v25;
    v61 = a3;
    v27 = *(v70 + 8 * a3);
    v59 = v26;
    while ((v27 & 0x8000000000000000) == 0)
    {
      v28 = *v25;
      v29 = v69;
      swift_beginAccess();
      v30 = *(v29 + 16);
      if (!v30)
      {
        goto LABEL_42;
      }

      if (v27 >= v30[1])
      {
        break;
      }

      v31 = v30 + 8;
      if ((*(v30 + (v27 >> 3) + 64) >> (v27 & 7)))
      {
        v32 = *v30 + 7;
        if (__OFADD__(*v30, 7))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        if (v32 < 0)
        {
          v32 = *v30 + 14;
        }

        v33 = v32 >> 3;
        v35 = v33 - 1;
        v34 = v33 < 1;
        v36 = v33 + 62;
        if (!v34)
        {
          v36 = v35;
        }

        (*(v72 + 16))(v23, v31 + (v36 & 0xFFFFFFFFFFFFFFC0) + *(v72 + 72) * v27 + 64, v12);
        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v38 = *v74;
      (*v74)(v23, v37, 1, v12);
      if ((v28 & 0x8000000000000000) != 0 || v28 >= v30[1])
      {
        break;
      }

      if ((*(v31 + (v28 >> 3)) >> (v28 & 7)))
      {
        v39 = *v30 + 7;
        if (__OFADD__(*v30, 7))
        {
          goto LABEL_41;
        }

        if (v39 < 0)
        {
          v39 = *v30 + 14;
        }

        v40 = v39 >> 3;
        v41 = v40 - 1;
        v34 = v40 < 1;
        v42 = v40 + 62;
        if (!v34)
        {
          v42 = v41;
        }

        v43 = v73;
        (*(v72 + 16))(v73, v31 + (v42 & 0xFFFFFFFFFFFFFFC0) + *(v72 + 72) * v28 + 64, v12);
        v44 = 0;
      }

      else
      {
        v44 = 1;
        v43 = v73;
      }

      v38(v43, v44, 1, v12);
      v45 = *(v68 + 48);
      sub_21B2C1778(v23, v17);
      sub_21B2C1778(v43, &v17[v45]);
      v46 = *v67;
      if ((*v67)(v17, 1, v12) == 1)
      {
        sub_21B261664(v43, &qword_27CD7E100, &unk_21B352A30);
        sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
        result = (v46)(&v17[v45], 1, v12);
        if (result != 1)
        {
          result = sub_21B261664(&v17[v45], &qword_27CD7E100, &unk_21B352A30);
        }

LABEL_4:
        a3 = v61 + 1;
        v25 = v60 + 1;
        v26 = v59 - 1;
        if (v61 + 1 == v58)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (v46(&v17[v45], 1, v12) == 1)
      {
        sub_21B261664(v43, &qword_27CD7E100, &unk_21B352A30);
        sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
        result = sub_21B261664(v17, &qword_27CD7E100, &unk_21B352A30);
      }

      else
      {
        v47 = v64;
        v48 = *v63;
        (*v63)(v64, v17, v12);
        v49 = &v17[v45];
        v50 = v65;
        v48(v65, v49, v12);
        sub_21B2B5BB8();
        if (v66)
        {
          v51 = sub_21B34AB84();
        }

        else
        {
          v51 = sub_21B34AB94();
        }

        v52 = v51;
        v53 = v50;
        v54 = *v62;
        (*v62)(v53, v12);
        v54(v47, v12);
        sub_21B261664(v73, &qword_27CD7E100, &unk_21B352A30);
        result = sub_21B261664(v23, &qword_27CD7E100, &unk_21B352A30);
        if ((v52 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v70)
      {
        goto LABEL_43;
      }

      v55 = *v25;
      v27 = v25[1];
      *v25 = v27;
      v25[1] = v55;
      --v25;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B2C15A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), void (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  v13 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_21B34B914();
  if (result < v13)
  {
    if (v13 >= -1)
    {
      v15 = result;
      if (v13 <= 1)
      {
        v16 = MEMORY[0x277D84F90];
      }

      else
      {
        v16 = sub_21B34AFE4();
        *(v16 + 16) = v13 / 2;
      }

      v19[0] = v16 + 32;
      v19[1] = v13 / 2;
      v17 = v16;

      a6(v19, v20, a1, v15, a2, a3, a4, a5 & 1);

      *(v17 + 16) = 0;

      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v13 < 0)
  {
    goto LABEL_12;
  }

  if (v13)
  {

    a7(0, v13, 1, a1, a2, a3, a4, a5 & 1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21B2C1778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t JSONReadingError.description.getter()
{
  sub_21B2C1DE8(v0, &v23);
  if (v27 <= 1u)
  {
    if (!v27)
    {
      v1 = v24;
      v2 = v25;
      sub_21B261720(&v26, &v21);
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34CF40);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      sub_21B34B9C4();
      MEMORY[0x21CEED5E0](0x776F722074612027, 0xE900000000000020);
      v3 = sub_21B34B944();
      MEMORY[0x21CEED5E0](v3);

      MEMORY[0x21CEED5E0](0x6E6D756C6F63202CLL, 0xEA00000000002720);
      MEMORY[0x21CEED5E0](v1, v2);

      MEMORY[0x21CEED5E0](2108967, 0xE300000000000000);
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD000000000000019, 0x800000021B34CF60);
      sub_21B34B7C4();
      MEMORY[0x21CEED5E0](46, 0xE100000000000000);

      MEMORY[0x21CEED5E0](0, 0xE000000000000000);

      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
      return 0;
    }

    v19 = v23;
    v20 = v24;
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001FLL, 0x800000021B34CEE0);
    MEMORY[0x21CEED5E0](v19, v20);

    MEMORY[0x21CEED5E0](0xD000000000000038, 0x800000021B34CF00);
    return v21;
  }

  if (v27 == 2)
  {
    v5 = v24;
    v6 = v25;
    v7 = v26;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34CEA0);
    v8 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v8);

    MEMORY[0x21CEED5E0](0x206E6D756C6F6320, 0xE900000000000027);
    MEMORY[0x21CEED5E0](v5, v6);

    MEMORY[0x21CEED5E0](0x2073612027, 0xE500000000000000);
    sub_21B34B7C4();
    MEMORY[0x21CEED5E0](8238, 0xE200000000000000);
    sub_21B34B634();

    v9 = sub_21B2CFC1C(1024, v7, *(&v7 + 1));
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = MEMORY[0x21CEED540](v9, v11, v13, v15);
    v18 = v17;

    MEMORY[0x21CEED5E0](v16, v18);

    MEMORY[0x21CEED5E0](11815, 0xE200000000000000);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;

    MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34CEC0);

    return v21;
  }

  return 0xD00000000000003FLL;
}

uint64_t get_enum_tag_for_layout_string_11TabularData16JSONReadingErrorO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21B2C1E6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B2C1EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_21B2C1EF8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_21B2C1F54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_21B2C1F9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2C200C(uint64_t a1)
{
  result = sub_21B2C20D8(a1);
  if ((result & 1) == 0)
  {
    result = sub_21B2C24CC(a1);
    if ((result & 1) == 0)
    {
      result = sub_21B2C2B40(a1);
      if ((result & 1) == 0)
      {
        result = sub_21B2C31B0(a1);
        if ((result & 1) == 0)
        {
          result = sub_21B2C3A10(a1);
          if ((result & 1) == 0)
          {
            result = sub_21B2C4A44(a1);
            if ((result & 1) == 0)
            {
              result = sub_21B2C5074(a1);
              if ((result & 1) == 0)
              {
                result = sub_21B2C57D8(a1);
                if ((result & 1) == 0)
                {
                  sub_21B2735F8();
                  swift_allocError();
                  v4 = *(v1 + 72);
                  v5 = *(v1 + 80);
                  *v6 = v4;
                  *(v6 + 8) = v5;
                  *(v6 + 64) = 1;
                  swift_willThrow();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21B2C20D8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v41 = v3;
  *&v42 = v4;

  *(&v42 + 1) = sub_21B2613A4(MEMORY[0x277D84F90]);
  sub_21B2FDDB8(0);
  v35 = v1;
  sub_21B2348E0(v35 + 32, v35 + 88);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v7 = *v6;
      if (*(*v6 + 16))
      {

        v8 = sub_21B24B534(v3, v4);
        if (v9)
        {
          sub_21B2616C4(*(v7 + 56) + 32 * v8, v36);

          sub_21B261664(v36, &qword_27CD7E500, &qword_21B352660);

          return 0;
        }
      }

      memset(v36, 0, sizeof(v36));
      sub_21B261664(v36, &qword_27CD7E500, &qword_21B352660);
      memset(v36, 0, sizeof(v36));
      v10 = *(&v42 + 1);
      result = swift_beginAccess();
      v12 = *(v10 + 16);
      if (!v12)
      {
        break;
      }

      v13 = *(v12 + 8);
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        break;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        result = *(v10 + 16);
        if (!result)
        {
          goto LABEL_49;
        }

        if (*result < v14)
        {
          if (*result + 0x4000000000000000 < 0)
          {
            goto LABEL_44;
          }

          sub_21B2B4368();
          sub_21B2B436C();
          *(v10 + 16) = *v40;
        }
      }

      else
      {
        result = swift_beginAccess();
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_48;
        }

        v16 = *v15;
        if (*v15 < v14)
        {
          if (v16 + 0x4000000000000000 < 0)
          {
            goto LABEL_45;
          }

          if (2 * v16 <= v14)
          {
            v16 = v14;
          }

          else
          {
            v16 *= 2;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4F8, &qword_21B354CA0);
        v17 = swift_allocObject();
        sub_21B2AFB80(v15, v16, v40);
        *(v17 + 16) = *v40;

        *(&v42 + 1) = v17;
        v10 = v17;
      }

      swift_beginAccess();
      v18 = *(v10 + 16);
      sub_21B2615FC(v36, &v38, &qword_27CD7E500, &qword_21B352660);
      if (v39)
      {
        result = sub_21B261720(&v38, v40);
        if (!v18)
        {
          goto LABEL_47;
        }

        v19 = *v18 + 7;
        if (__OFADD__(*v18, 7))
        {
          goto LABEL_42;
        }

        v20 = v18 + 8;
        if (v19 < 0)
        {
          v19 = *v18 + 14;
        }

        v21 = v19 >> 3;
        v23 = v21 - 1;
        v22 = v21 < 1;
        v24 = v21 + 62;
        if (!v22)
        {
          v24 = v23;
        }

        sub_21B2616C4(v40, &v20[4 * v18[1] + 8] + (v24 & 0xFFFFFFFFFFFFFFC0));
        v25 = v18[1];
        v26 = v25 + 7;
        if (v25 >= 0)
        {
          v26 = v18[1];
        }

        v27 = v25 - (v26 & 0xFFFFFFFFFFFFFFF8);
        if (v27 >= 0)
        {
          v28 = 1 << v27;
        }

        else
        {
          v28 = 0;
        }

        *(v20 + (v26 >> 3)) |= v28;
        result = __swift_destroy_boxed_opaque_existential_1Tm(v40);
      }

      else
      {
        result = sub_21B261664(&v38, &qword_27CD7E500, &qword_21B352660);
        if (!v18)
        {
          goto LABEL_50;
        }

        v29 = v18[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_43;
        }

        v18[2] = v31;
      }

      v32 = v18[1];
      v30 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v30)
      {
        goto LABEL_41;
      }

      v18[1] = v33;
      sub_21B261664(v36, &qword_27CD7E500, &qword_21B352660);
      ++v6;
      if (!--v5)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
LABEL_38:
    v34 = v41;
    *(&v36[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7ED20, &qword_21B354CA8);
    v37 = &off_282CAA128;
    *&v36[0] = v34;
    *(v36 + 8) = v42;
    sub_21B2339B4(v36, v35 + 88);
    return 1;
  }

  return result;
}

uint64_t sub_21B2C24CC(uint64_t a1)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v63 = v4;
  *&v64 = v3;

  sub_21B234EF8(MEMORY[0x277D84F90]);
  *(&v64 + 1) = v5;
  sub_21B2351E8(0);
  v55 = v1;
  sub_21B2348E0(v55 + 32, v55 + 88);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_68:
    v54 = v63;
    *(&v56[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E170, &unk_21B3526E0);
    v57 = &off_282CAA128;
    *&v56[0] = v54;
    *(v56 + 8) = v64;
    sub_21B2339B4(v56, v55 + 88);
    return 1;
  }

  v7 = (a1 + 32);
  while (1)
  {
    v8 = *v7;
    if (*(*v7 + 16))
    {

      v9 = sub_21B24B534(v4, v3);
      if (v10)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v9, v56);

        goto LABEL_9;
      }
    }

    memset(v56, 0, sizeof(v56));
LABEL_9:
    sub_21B2615FC(v56, &v61, &qword_27CD7E500, &qword_21B352660);
    if (v62)
    {
      sub_21B2615FC(&v61, v60, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_21B261664(v56, &qword_27CD7E500, &qword_21B352660);

          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          sub_21B261664(&v61, &qword_27CD7E500, &qword_21B352660);
          return 0;
        }

        v28 = v3;
        v29 = v4;
        v30 = v59;
        v31 = *(&v64 + 1);
        result = swift_beginAccess();
        v32 = *(v31 + 16);
        if (!v32)
        {
          goto LABEL_87;
        }

        v33 = *(v32 + 8);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_74;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v31 + 16);
          if (!result)
          {
            goto LABEL_90;
          }

          v35 = *result;
          if (*result < v34)
          {
            if (v35 + 0x4000000000000000 < 0)
            {
              goto LABEL_81;
            }

            v36 = 2 * v35;
            if (v36 <= v34)
            {
              v37 = v34;
            }

            else
            {
              v37 = v36;
            }

            sub_21B235334(result, v37, &v58);
            result = *(v31 + 16);
            if (!result)
            {
              goto LABEL_92;
            }

            if ((*(result + 8) & 0x8000000000000000) != 0)
            {
              goto LABEL_82;
            }

            MEMORY[0x21CEEEA30]();
            *(v31 + 16) = v58;
          }
        }

        else
        {
          result = swift_beginAccess();
          v38 = *(v31 + 16);
          if (!v38)
          {
            goto LABEL_91;
          }

          v39 = *v38;
          if (*v38 < v34)
          {
            if (v39 + 0x4000000000000000 < 0)
            {
              goto LABEL_80;
            }

            if (2 * v39 <= v34)
            {
              v39 = v34;
            }

            else
            {
              v39 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
          v40 = swift_allocObject();
          sub_21B2AECDC(v38, v39, &v58);
          *(v40 + 16) = v58;

          *(&v64 + 1) = v40;
          v31 = v40;
        }

        result = swift_beginAccess();
        v41 = *(v31 + 16);
        if (!v41)
        {
          goto LABEL_88;
        }

        v42 = *v41 + 7;
        if (__OFADD__(*v41, 7))
        {
          goto LABEL_75;
        }

        v43 = v41 + 8;
        if (v42 < 0)
        {
          v42 = *v41 + 14;
        }

        v44 = v42 >> 3;
        v46 = v44 - 1;
        v45 = v44 < 1;
        v47 = v44 + 62;
        if (!v45)
        {
          v47 = v46;
        }

        *(&v43[v41[1] + 8] + (v47 & 0xFFFFFFFFFFFFFFC0)) = v30;
        v48 = v41[1];
        v49 = v48 + 7;
        if (v48 >= 0)
        {
          v49 = v41[1];
        }

        v50 = v49 >> 3;
        v51 = v48 - (v49 & 0xFFFFFFFFFFFFFFF8);
        if (v51 >= 0)
        {
          v52 = 1 << v51;
        }

        else
        {
          v52 = 0;
        }

        *(v43 + v50) |= v52;
        v24 = __OFADD__(v48, 1);
        v53 = v48 + 1;
        if (v24)
        {
          goto LABEL_76;
        }

        v41[1] = v53;
        sub_21B261664(v56, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        sub_21B261664(&v61, &qword_27CD7E500, &qword_21B352660);
        v4 = v29;
        v3 = v28;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v60);
    }

    sub_21B261664(&v61, &qword_27CD7E500, &qword_21B352660);
    v11 = *(&v64 + 1);
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
      goto LABEL_83;
    }

    v14 = *(v13 + 8);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (!result)
      {
        goto LABEL_86;
      }

      v16 = *result;
      if (*result < v15)
      {
        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_78;
        }

        v17 = 2 * v16;
        if (v17 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        sub_21B235334(result, v18, &v61);
        result = *(v11 + 16);
        if (!result)
        {
          goto LABEL_89;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        MEMORY[0x21CEEEA30]();
        *(v11 + 16) = v61;
      }
    }

    else
    {
      result = swift_beginAccess();
      v19 = *(v11 + 16);
      if (!v19)
      {
        goto LABEL_85;
      }

      v20 = *v19;
      if (*v19 < v15)
      {
        if (v20 + 0x4000000000000000 < 0)
        {
          goto LABEL_77;
        }

        if (2 * v20 <= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E488, &unk_21B3544A0);
      v21 = swift_allocObject();
      sub_21B2AECDC(v19, v20, &v61);
      *(v21 + 16) = v61;

      *(&v64 + 1) = v21;
      v11 = v21;
    }

    result = swift_beginAccess();
    v22 = *(v11 + 16);
    if (!v22)
    {
      goto LABEL_84;
    }

    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_72;
    }

    *(v22 + 16) = v25;
    v26 = *(v22 + 8);
    v24 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v24)
    {
      goto LABEL_73;
    }

    *(v22 + 8) = v27;
    sub_21B261664(v56, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    ++v7;
    if (!--v6)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_21B2C2B40(uint64_t a1)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v60 = v4;
  *&v61 = v3;

  sub_21B260114(MEMORY[0x277D84F90]);
  *(&v61 + 1) = v5;
  sub_21B2FD6A0(0);
  v52 = v1;
  sub_21B2348E0(v52 + 32, v52 + 88);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_66:
    v51 = v60;
    *(&v53[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
    v54 = &off_282CAA128;
    *&v53[0] = v51;
    *(v53 + 8) = v61;
    sub_21B2339B4(v53, v52 + 88);
    return 1;
  }

  v7 = (a1 + 32);
  while (1)
  {
    v8 = *v7;
    if (*(*v7 + 16))
    {

      v9 = sub_21B24B534(v4, v3);
      if (v10)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v9, v53);

        goto LABEL_9;
      }
    }

    memset(v53, 0, sizeof(v53));
LABEL_9:
    sub_21B2615FC(v53, &v58, &qword_27CD7E500, &qword_21B352660);
    if (v59)
    {
      sub_21B2615FC(&v58, v57, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_21B261664(v53, &qword_27CD7E500, &qword_21B352660);

          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          sub_21B261664(&v58, &qword_27CD7E500, &qword_21B352660);
          return 0;
        }

        v28 = v3;
        v29 = v4;
        v30 = v56;
        v31 = *(&v61 + 1);
        result = swift_beginAccess();
        v32 = *(v31 + 16);
        if (!v32)
        {
          goto LABEL_84;
        }

        v33 = *(v32 + 8);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_71;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v31 + 16);
          if (!result)
          {
            goto LABEL_87;
          }

          v35 = *result;
          if (*result < v34)
          {
            if (v35 + 0x4000000000000000 < 0)
            {
              goto LABEL_78;
            }

            v36 = 2 * v35;
            if (v36 <= v34)
            {
              v37 = v34;
            }

            else
            {
              v37 = v36;
            }

            sub_21B2B0190(result, v37, &v55);
            result = *(v31 + 16);
            if (!result)
            {
              goto LABEL_89;
            }

            if ((*(result + 8) & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            MEMORY[0x21CEEEA30]();
            *(v31 + 16) = v55;
          }
        }

        else
        {
          result = swift_beginAccess();
          v38 = *(v31 + 16);
          if (!v38)
          {
            goto LABEL_88;
          }

          v39 = *v38;
          if (*v38 < v34)
          {
            if (v39 + 0x4000000000000000 < 0)
            {
              goto LABEL_77;
            }

            if (2 * v39 <= v34)
            {
              v39 = v34;
            }

            else
            {
              v39 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
          v40 = swift_allocObject();
          sub_21B2AF39C(v38, v39, &v55);
          *(v40 + 16) = v55;

          *(&v61 + 1) = v40;
          v31 = v40;
        }

        result = swift_beginAccess();
        v41 = *(v31 + 16);
        if (!v41)
        {
          goto LABEL_85;
        }

        v42 = *v41 + 7;
        if (__OFADD__(*v41, 7))
        {
          goto LABEL_72;
        }

        v43 = v41 + 8;
        if (v42 < 0)
        {
          v42 = *v41 + 14;
        }

        v44 = v42 >> 3;
        v46 = v44 - 1;
        v45 = v44 < 1;
        v47 = v44 + 62;
        if (!v45)
        {
          v47 = v46;
        }

        v48 = v41[1];
        *(v43 + v48 + (v47 & 0xFFFFFFFFFFFFFFC0) + 64) = v30;
        v49 = v48 - (v47 & 0xFFFFFFFFFFFFFFF8);
        if (v49 >= 0)
        {
          v50 = 1 << v49;
        }

        else
        {
          v50 = 0;
        }

        *(v43 + v48 / 8) |= v50;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_73;
        }

        v41[1] = v48 + 1;
        sub_21B261664(v53, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        sub_21B261664(&v58, &qword_27CD7E500, &qword_21B352660);
        v4 = v29;
        v3 = v28;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    sub_21B261664(&v58, &qword_27CD7E500, &qword_21B352660);
    v11 = *(&v61 + 1);
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
      goto LABEL_80;
    }

    v14 = *(v13 + 8);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (!result)
      {
        goto LABEL_83;
      }

      v16 = *result;
      if (*result < v15)
      {
        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_75;
        }

        v17 = 2 * v16;
        if (v17 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        sub_21B2B0190(result, v18, &v58);
        result = *(v11 + 16);
        if (!result)
        {
          goto LABEL_86;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        MEMORY[0x21CEEEA30]();
        *(v11 + 16) = v58;
      }
    }

    else
    {
      result = swift_beginAccess();
      v19 = *(v11 + 16);
      if (!v19)
      {
        goto LABEL_82;
      }

      v20 = *v19;
      if (*v19 < v15)
      {
        if (v20 + 0x4000000000000000 < 0)
        {
          goto LABEL_74;
        }

        if (2 * v20 <= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A8, &unk_21B354C90);
      v21 = swift_allocObject();
      sub_21B2AF39C(v19, v20, &v58);
      *(v21 + 16) = v58;

      *(&v61 + 1) = v21;
      v11 = v21;
    }

    result = swift_beginAccess();
    v22 = *(v11 + 16);
    if (!v22)
    {
      goto LABEL_81;
    }

    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_69;
    }

    *(v22 + 16) = v25;
    v26 = *(v22 + 8);
    v24 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v24)
    {
      goto LABEL_70;
    }

    *(v22 + 8) = v27;
    sub_21B261664(v53, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    ++v7;
    if (!--v6)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_21B2C31B0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v71 = *(v1 + 72);
  v78 = v71;
  *&v79 = v3;

  sub_21B25E224(MEMORY[0x277D84F90]);
  *(&v79 + 1) = v4;
  sub_21B2FD590(0);
  v70 = v1;
  sub_21B2348E0(v70 + 32, v70 + 88);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_100:
    v69 = v78;
    v72[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v72[4] = &off_282CAA128;
    v72[0] = v69;
    *&v72[1] = v79;
    sub_21B2339B4(v72, v70 + 88);
    return 1;
  }

  v6 = (a1 + 32);
  while (1)
  {
    v8 = *v6;
    if (*(*v6 + 16))
    {

      v9 = sub_21B24B534(v71, v3);
      if (v10)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v9, v72);

        goto LABEL_10;
      }
    }

    memset(v72, 0, 32);
LABEL_10:
    sub_21B2615FC(v72, &v76, &qword_27CD7E500, &qword_21B352660);
    if (v77)
    {
      sub_21B2615FC(&v76, v75, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v28 = v74;
          v29 = *(&v79 + 1);
          result = swift_beginAccess();
          v30 = *(v29 + 16);
          if (!v30)
          {
            goto LABEL_124;
          }

          v31 = *(v30 + 8);
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_108;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            swift_beginAccess();
            result = *(v29 + 16);
            if (!result)
            {
              goto LABEL_129;
            }

            v33 = *result;
            if (*result < v32)
            {
              if (v33 + 0x4000000000000000 < 0)
              {
                goto LABEL_113;
              }

              v34 = 2 * v33;
              if (v34 <= v32)
              {
                v35 = v32;
              }

              else
              {
                v35 = v34;
              }

              sub_21B235334(result, v35, &v73);
              result = *(v29 + 16);
              if (!result)
              {
                goto LABEL_132;
              }

              if ((*(result + 8) & 0x8000000000000000) != 0)
              {
                goto LABEL_115;
              }

              MEMORY[0x21CEEEA30]();
              *(v29 + 16) = v73;
            }
          }

          else
          {
            result = swift_beginAccess();
            v44 = *(v29 + 16);
            if (!v44)
            {
              goto LABEL_128;
            }

            v45 = *v44;
            if (*v44 < v32)
            {
              if (v45 + 0x4000000000000000 < 0)
              {
                goto LABEL_114;
              }

              if (2 * v45 <= v32)
              {
                v45 = v32;
              }

              else
              {
                v45 *= 2;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
            v46 = swift_allocObject();
            sub_21B2AEE64(v44, v45, &v73);
            *(v46 + 16) = v73;

            *(&v79 + 1) = v46;
            v29 = v46;
          }

          result = swift_beginAccess();
          v47 = *(v29 + 16);
          if (!v47)
          {
            goto LABEL_125;
          }

          v48 = *v47 + 7;
          if (__OFADD__(*v47, 7))
          {
            goto LABEL_109;
          }

          v49 = v47 + 8;
          if (v48 < 0)
          {
            v48 = *v47 + 14;
          }

          v50 = v48 >> 3;
          v52 = v50 - 1;
          v51 = v50 < 1;
          v53 = v50 + 62;
          if (!v51)
          {
            v53 = v52;
          }

          v54 = v47[1];
          *(&v49[v54 + 8] + (v53 & 0xFFFFFFFFFFFFFFC0)) = v28;
          v55 = v54 - (v53 & 0xFFFFFFFFFFFFFFF8);
          if (v55 >= 0)
          {
            v56 = 1 << v55;
          }

          else
          {
            v56 = 0;
          }

          *(v49 + v54 / 8) |= v56;
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_21B261664(v72, &qword_27CD7E500, &qword_21B352660);

            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            sub_21B261664(&v76, &qword_27CD7E500, &qword_21B352660);
            return 0;
          }

          v36 = v74;
          v37 = *(&v79 + 1);
          result = swift_beginAccess();
          v38 = *(v37 + 16);
          if (!v38)
          {
            goto LABEL_126;
          }

          v39 = *(v38 + 8);
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_111;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            swift_beginAccess();
            result = *(v37 + 16);
            if (!result)
            {
              goto LABEL_131;
            }

            v41 = *result;
            if (*result < v40)
            {
              if (v41 + 0x4000000000000000 < 0)
              {
                goto LABEL_116;
              }

              v42 = 2 * v41;
              if (v42 <= v40)
              {
                v43 = v40;
              }

              else
              {
                v43 = v42;
              }

              sub_21B235334(result, v43, &v73);
              result = *(v37 + 16);
              if (!result)
              {
                goto LABEL_133;
              }

              if ((*(result + 8) & 0x8000000000000000) != 0)
              {
                goto LABEL_118;
              }

              MEMORY[0x21CEEEA30]();
              *(v37 + 16) = v73;
            }
          }

          else
          {
            result = swift_beginAccess();
            v58 = *(v37 + 16);
            if (!v58)
            {
              goto LABEL_130;
            }

            v59 = *v58;
            if (*v58 < v40)
            {
              if (v59 + 0x4000000000000000 < 0)
              {
                goto LABEL_117;
              }

              if (2 * v59 <= v40)
              {
                v59 = v40;
              }

              else
              {
                v59 *= 2;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
            v60 = swift_allocObject();
            sub_21B2AEE64(v58, v59, &v73);
            *(v60 + 16) = v73;

            *(&v79 + 1) = v60;
            v37 = v60;
          }

          result = swift_beginAccess();
          v47 = *(v37 + 16);
          if (!v47)
          {
            goto LABEL_127;
          }

          v61 = *v47 + 7;
          if (__OFADD__(*v47, 7))
          {
            goto LABEL_112;
          }

          v62 = v47 + 8;
          if (v61 < 0)
          {
            v61 = *v47 + 14;
          }

          v63 = v61 >> 3;
          v64 = v63 - 1;
          v51 = v63 < 1;
          v65 = v63 + 62;
          if (!v51)
          {
            v65 = v64;
          }

          v66 = v47[1];
          *(&v62[v66 + 8] + (v65 & 0xFFFFFFFFFFFFFFC0)) = v36;
          v67 = v66 - (v65 & 0xFFFFFFFFFFFFFFF8);
          if (v67 >= 0)
          {
            v68 = 1 << v67;
          }

          else
          {
            v68 = 0;
          }

          *(v62 + v66 / 8) |= v68;
          v57 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            __break(1u);
            goto LABEL_100;
          }
        }

        v47[1] = v57;
        sub_21B261664(v72, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        v7 = &v76;
        goto LABEL_4;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v75);
    }

    sub_21B261664(&v76, &qword_27CD7E500, &qword_21B352660);
    v11 = *(&v79 + 1);
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
      goto LABEL_119;
    }

    v14 = *(v13 + 8);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (!result)
      {
        goto LABEL_122;
      }

      v16 = *result;
      if (*result < v15)
      {
        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_105;
        }

        v17 = 2 * v16;
        if (v17 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        sub_21B235334(result, v18, &v76);
        result = *(v11 + 16);
        if (!result)
        {
          goto LABEL_123;
        }

        if ((*(result + 8) & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        MEMORY[0x21CEEEA30]();
        *(v11 + 16) = v76;
      }
    }

    else
    {
      result = swift_beginAccess();
      v19 = *(v11 + 16);
      if (!v19)
      {
        goto LABEL_121;
      }

      v20 = *v19;
      if (*v19 < v15)
      {
        if (v20 + 0x4000000000000000 < 0)
        {
          goto LABEL_106;
        }

        if (2 * v20 <= v15)
        {
          v20 = v15;
        }

        else
        {
          v20 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E490, &unk_21B354C80);
      v21 = swift_allocObject();
      sub_21B2AEE64(v19, v20, &v76);
      *(v21 + 16) = v76;

      *(&v79 + 1) = v21;
      v11 = v21;
    }

    result = swift_beginAccess();
    v22 = *(v11 + 16);
    if (!v22)
    {
      goto LABEL_120;
    }

    v23 = *(v22 + 16);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_103;
    }

    *(v22 + 16) = v25;
    v26 = *(v22 + 8);
    v24 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v24)
    {
      goto LABEL_104;
    }

    *(v22 + 8) = v27;
    v7 = v72;
LABEL_4:
    sub_21B261664(v7, &qword_27CD7E500, &qword_21B352660);
    ++v6;
    if (!--v5)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
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
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_21B2C3A10(uint64_t a1)
{
  v3 = sub_21B34A834();
  v148 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v135 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v143 = &v134 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v139 = &v134 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v144 = &v134 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v145 = &v134 - v13;
  MEMORY[0x28223BE20](v12);
  v151 = &v134 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v136 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v134 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v137 = &v134 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v134 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v147 = &v134 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v152 = &v134 - v27;
  MEMORY[0x28223BE20](v26);
  v158 = &v134 - v28;
  v29 = *(v1 + 72);
  v149 = *(v1 + 80);
  v150 = v29;
  v165 = v29;
  *&v166 = v149;

  *(&v166 + 1) = sub_21B260568(MEMORY[0x277D84F90]);
  sub_21B2FD6DC(0);
  v142 = v1;
  sub_21B2348E0(v142 + 32, v142 + 88);
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_121:
    v133 = v165;
    v159[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
    v159[4] = &off_282CAA128;
    v159[0] = v133;
    *&v159[1] = v166;
    sub_21B2339B4(v159, v142 + 88);
    return 1;
  }

  v31 = (a1 + 32);
  v154 = (v148 + 16);
  v155 = (v148 + 32);
  v156 = (v148 + 56);
  v157 = (v148 + 48);
  v153 = (v148 + 8);
  while (1)
  {
    v33 = *v31;
    if (*(*v31 + 16))
    {

      v34 = sub_21B24B534(v150, v149);
      if (v35)
      {
        sub_21B2616C4(*(v33 + 56) + 32 * v34, v159);

        goto LABEL_10;
      }
    }

    memset(v159, 0, 32);
LABEL_10:
    sub_21B2615FC(v159, &v163, &qword_27CD7E500, &qword_21B352660);
    if (!v164)
    {
      goto LABEL_13;
    }

    sub_21B2615FC(&v163, v162, &qword_27CD7E500, &qword_21B352660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
    sub_21B2735AC();
    if (!swift_dynamicCast())
    {
      v66 = v145;
      if (swift_dynamicCast())
      {
        v67 = *v155;
        v68 = v144;
        (*v155)(v144, v66, v3);
        v69 = *v154;
        v70 = v147;
        (*v154)(v147, v68, v3);
        (*v156)(v70, 0, 1, v3);
        v71 = *(&v166 + 1);
        result = swift_beginAccess();
        v72 = *(v71 + 16);
        if (!v72)
        {
          goto LABEL_149;
        }

        v73 = *(v72 + 8);
        v74 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_132;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v141 = v69;
        if (isUniquelyReferenced_nonNull_native)
        {
          swift_beginAccess();
          result = *(v71 + 16);
          if (!result)
          {
            goto LABEL_151;
          }

          v76 = *result;
          if (*result < v74)
          {
            if (v76 + 0x4000000000000000 < 0)
            {
              goto LABEL_141;
            }

            v77 = 2 * v76;
            if (v77 <= v74)
            {
              v78 = v74;
            }

            else
            {
              v78 = v77;
            }

            sub_21B2AFF0C(result, v78, &v161);
            sub_21B2B0A2C(*(v71 + 16));
            *(v71 + 16) = v161;
          }
        }

        else
        {
          result = swift_beginAccess();
          v92 = *(v71 + 16);
          if (!v92)
          {
            goto LABEL_152;
          }

          v93 = *v92;
          if (*v92 < v74)
          {
            if (v93 + 0x4000000000000000 < 0)
            {
              goto LABEL_140;
            }

            if (2 * v93 <= v74)
            {
              v93 = v74;
            }

            else
            {
              v93 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
          v94 = swift_allocObject();
          sub_21B2AF188(v92, v93, &v161);
          *(v94 + 16) = v161;

          *(&v166 + 1) = v94;
          v71 = v94;
        }

        swift_beginAccess();
        v95 = *(v71 + 16);
        v96 = v140;
        sub_21B2615FC(v147, v140, &qword_27CD7E100, &unk_21B352A30);
        if ((*v157)(v96, 1, v3) == 1)
        {
          result = sub_21B261664(v96, &qword_27CD7E100, &unk_21B352A30);
          if (!v95)
          {
            goto LABEL_153;
          }

          v97 = v95[2];
          v50 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v50)
          {
            goto LABEL_136;
          }

          v95[2] = v98;
        }

        else
        {
          result = v67(v139, v96, v3);
          if (!v95)
          {
            goto LABEL_154;
          }

          v99 = *v95 + 7;
          if (__OFADD__(*v95, 7))
          {
            goto LABEL_137;
          }

          v100 = (v95 + 8);
          if (v99 < 0)
          {
            v99 = *v95 + 14;
          }

          v101 = v99 >> 3;
          v102 = v101 - 1;
          v55 = v101 < 1;
          v103 = v101 + 62;
          if (!v55)
          {
            v103 = v102;
          }

          v104 = v148;
          v105 = v139;
          v141(&v100[(v103 & 0xFFFFFFFFFFFFFFC0) + 64 + *(v148 + 72) * v95[1]], v139, v3);
          v106 = v95[1];
          v107 = v106 + 7;
          if (v106 >= 0)
          {
            v107 = v95[1];
          }

          v108 = v106 - (v107 & 0xFFFFFFFFFFFFFFF8);
          if (v108 >= 0)
          {
            v109 = 1 << v108;
          }

          else
          {
            v109 = 0;
          }

          v100[v107 >> 3] |= v109;
          result = (*(v104 + 8))(v105, v3);
        }

        v110 = v95[1];
        v50 = __OFADD__(v110, 1);
        v111 = v110 + 1;
        if (v50)
        {
          goto LABEL_133;
        }

        v95[1] = v111;
        sub_21B261664(v147, &qword_27CD7E100, &unk_21B352A30);
        v112 = *v153;
LABEL_3:
        v112();
        sub_21B261664(v159, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v162);
        v32 = &v163;
        goto LABEL_4;
      }

      if (swift_dynamicCast())
      {
        v79 = v137;
        sub_21B2D12C4(v161, *(&v161 + 1), v137);

        v80 = *v157;
        if ((*v157)(v79, 1, v3) != 1)
        {
          v81 = v143;
          v141 = *v155;
          v141(v143, v79, v3);
          v82 = *v154;
          v83 = v146;
          (*v154)(v146, v81, v3);
          (*v156)(v83, 0, 1, v3);
          v84 = *(&v166 + 1);
          result = swift_beginAccess();
          v85 = *(v84 + 16);
          if (!v85)
          {
            goto LABEL_150;
          }

          v86 = *(v85 + 8);
          v87 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_134;
          }

          v88 = swift_isUniquelyReferenced_nonNull_native();
          v138 = v82;
          if (v88)
          {
            swift_beginAccess();
            result = *(v84 + 16);
            if (!result)
            {
              goto LABEL_158;
            }

            v89 = *result;
            if (*result < v87)
            {
              if (v89 + 0x4000000000000000 < 0)
              {
                goto LABEL_143;
              }

              v90 = 2 * v89;
              if (v90 <= v87)
              {
                v91 = v87;
              }

              else
              {
                v91 = v90;
              }

              sub_21B2AFF0C(result, v91, &v160);
              sub_21B2B0A2C(*(v84 + 16));
              *(v84 + 16) = v160;
            }
          }

          else
          {
            result = swift_beginAccess();
            v113 = *(v84 + 16);
            if (!v113)
            {
              goto LABEL_157;
            }

            v114 = *v113;
            if (*v113 < v87)
            {
              if (v114 + 0x4000000000000000 < 0)
              {
                goto LABEL_142;
              }

              if (2 * v114 <= v87)
              {
                v114 = v87;
              }

              else
              {
                v114 *= 2;
              }
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
            v115 = swift_allocObject();
            sub_21B2AF188(v113, v114, &v160);
            *(v115 + 16) = v160;

            *(&v166 + 1) = v115;
            v84 = v115;
          }

          swift_beginAccess();
          v116 = *(v84 + 16);
          v117 = v136;
          sub_21B2615FC(v146, v136, &qword_27CD7E100, &unk_21B352A30);
          if (v80(v117, 1, v3) == 1)
          {
            result = sub_21B261664(v117, &qword_27CD7E100, &unk_21B352A30);
            if (!v116)
            {
              goto LABEL_155;
            }

            v118 = v116[2];
            v50 = __OFADD__(v118, 1);
            v119 = v118 + 1;
            if (v50)
            {
              goto LABEL_138;
            }

            v116[2] = v119;
          }

          else
          {
            result = v141(v135, v117, v3);
            if (!v116)
            {
              goto LABEL_156;
            }

            v120 = *v116 + 7;
            if (__OFADD__(*v116, 7))
            {
              goto LABEL_139;
            }

            v121 = (v116 + 8);
            if (v120 < 0)
            {
              v120 = *v116 + 14;
            }

            v122 = v120 >> 3;
            v123 = v122 - 1;
            v55 = v122 < 1;
            v124 = v122 + 62;
            if (!v55)
            {
              v124 = v123;
            }

            v125 = v148;
            v126 = v135;
            v138(&v121[(v124 & 0xFFFFFFFFFFFFFFC0) + 64 + *(v148 + 72) * v116[1]], v135, v3);
            v127 = v116[1];
            v128 = v127 + 7;
            if (v127 >= 0)
            {
              v128 = v116[1];
            }

            v129 = v127 - (v128 & 0xFFFFFFFFFFFFFFF8);
            if (v129 >= 0)
            {
              v130 = 1 << v129;
            }

            else
            {
              v130 = 0;
            }

            v121[v128 >> 3] |= v130;
            result = (*(v125 + 8))(v126, v3);
          }

          v131 = v116[1];
          v50 = __OFADD__(v131, 1);
          v132 = v131 + 1;
          if (v50)
          {
            goto LABEL_135;
          }

          v116[1] = v132;
          sub_21B261664(v146, &qword_27CD7E100, &unk_21B352A30);
          v112 = *v153;
          goto LABEL_3;
        }

        sub_21B261664(v159, &qword_27CD7E500, &qword_21B352660);

        sub_21B261664(v79, &qword_27CD7E100, &unk_21B352A30);
      }

      else
      {
        sub_21B261664(v159, &qword_27CD7E500, &qword_21B352660);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v162);
      sub_21B261664(&v163, &qword_27CD7E500, &qword_21B352660);
      return 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v162);
LABEL_13:
    sub_21B261664(&v163, &qword_27CD7E500, &qword_21B352660);
    (*v156)(v158, 1, 1, v3);
    v36 = *(&v166 + 1);
    result = swift_beginAccess();
    v38 = *(v36 + 16);
    if (!v38)
    {
      goto LABEL_144;
    }

    v39 = *(v38 + 8);
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v36 + 16);
      if (!result)
      {
        goto LABEL_146;
      }

      v41 = *result;
      if (*result < v40)
      {
        if (v41 + 0x4000000000000000 < 0)
        {
          goto LABEL_131;
        }

        v42 = 2 * v41;
        if (v42 <= v40)
        {
          v43 = v40;
        }

        else
        {
          v43 = v42;
        }

        sub_21B2AFF0C(result, v43, &v163);
        sub_21B2B0A2C(*(v36 + 16));
        *(v36 + 16) = v163;
      }
    }

    else
    {
      result = swift_beginAccess();
      v44 = *(v36 + 16);
      if (!v44)
      {
        goto LABEL_145;
      }

      v45 = *v44;
      if (*v44 < v40)
      {
        if (v45 + 0x4000000000000000 < 0)
        {
          goto LABEL_130;
        }

        if (2 * v45 <= v40)
        {
          v45 = v40;
        }

        else
        {
          v45 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4B8, &unk_21B354C70);
      v46 = swift_allocObject();
      sub_21B2AF188(v44, v45, &v163);
      *(v46 + 16) = v163;

      *(&v166 + 1) = v46;
      v36 = v46;
    }

    swift_beginAccess();
    v47 = *(v36 + 16);
    v48 = v152;
    sub_21B2615FC(v158, v152, &qword_27CD7E100, &unk_21B352A30);
    if ((*v157)(v48, 1, v3) == 1)
    {
      result = sub_21B261664(v48, &qword_27CD7E100, &unk_21B352A30);
      if (!v47)
      {
        goto LABEL_148;
      }

      v49 = v47[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_128;
      }

      v47[2] = v51;
    }

    else
    {
      result = (*v155)(v151, v48, v3);
      if (!v47)
      {
        goto LABEL_147;
      }

      v52 = *v47 + 7;
      if (__OFADD__(*v47, 7))
      {
        goto LABEL_129;
      }

      v53 = v47 + 8;
      if (v52 < 0)
      {
        v52 = *v47 + 14;
      }

      v54 = v52 >> 3;
      v56 = v54 - 1;
      v55 = v54 < 1;
      v57 = v54 + 62;
      if (!v55)
      {
        v57 = v56;
      }

      v58 = v148;
      v59 = v151;
      (*(v148 + 16))(v53 + (v57 & 0xFFFFFFFFFFFFFFC0) + *(v148 + 72) * v47[1] + 64, v151, v3);
      v60 = v47[1];
      v61 = v60 + 7;
      if (v60 >= 0)
      {
        v61 = v47[1];
      }

      v62 = v60 - (v61 & 0xFFFFFFFFFFFFFFF8);
      if (v62 >= 0)
      {
        v63 = 1 << v62;
      }

      else
      {
        v63 = 0;
      }

      *(v53 + (v61 >> 3)) |= v63;
      result = (*(v58 + 8))(v59, v3);
    }

    v64 = v47[1];
    v50 = __OFADD__(v64, 1);
    v65 = v64 + 1;
    if (v50)
    {
      goto LABEL_127;
    }

    v47[1] = v65;
    sub_21B261664(v158, &qword_27CD7E100, &unk_21B352A30);
    v32 = v159;
LABEL_4:
    sub_21B261664(v32, &qword_27CD7E500, &qword_21B352660);
    ++v31;
    if (!--v30)
    {
      goto LABEL_121;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

uint64_t sub_21B2C4A44(uint64_t a1)
{
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v65 = v4;
  *&v66 = v3;
  v56 = v3;

  *(&v66 + 1) = sub_21B25DFE0(MEMORY[0x277D84F90]);
  sub_21B2FD5CC(0);
  v55 = v1;
  sub_21B2348E0(v55 + 32, v55 + 88);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_65:
    v54 = v65;
    *(&v57[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E158, &unk_21B3526B0);
    v58 = &off_282CAA128;
    *&v57[0] = v54;
    *(v57 + 8) = v66;
    sub_21B2339B4(v57, v55 + 88);
    return 1;
  }

  v6 = (a1 + 32);
  while (1)
  {
    v7 = *v6;
    if (*(*v6 + 16))
    {

      v8 = sub_21B24B534(v4, v56);
      if (v9)
      {
        sub_21B2616C4(*(v7 + 56) + 32 * v8, v57);

        goto LABEL_9;
      }
    }

    memset(v57, 0, sizeof(v57));
LABEL_9:
    sub_21B2615FC(v57, &v63, &qword_27CD7E500, &qword_21B352660);
    if (v64)
    {
      sub_21B2615FC(&v63, v62, &qword_27CD7E500, &qword_21B352660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
      sub_21B2735AC();
      if (!swift_dynamicCast())
      {
        if (!swift_dynamicCast())
        {
          sub_21B261664(v57, &qword_27CD7E500, &qword_21B352660);

          __swift_destroy_boxed_opaque_existential_1Tm(v62);
          sub_21B261664(&v63, &qword_27CD7E500, &qword_21B352660);
          return 0;
        }

        v27 = v4;
        v29 = v60;
        v28 = v61;
        v30 = *(&v66 + 1);
        result = swift_beginAccess();
        v31 = *(v30 + 16);
        if (!v31)
        {
          goto LABEL_81;
        }

        v32 = *(v31 + 8);
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_71;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          result = *(v30 + 16);
          if (!result)
          {
            goto LABEL_83;
          }

          v34 = *result;
          if (*result < v33)
          {
            if (v34 + 0x4000000000000000 < 0)
            {
              goto LABEL_75;
            }

            v35 = 2 * v34;
            if (v35 <= v33)
            {
              v36 = v33;
            }

            else
            {
              v36 = v35;
            }

            sub_21B2AFD1C(result, v36, &v59);
            sub_21B2B0954(*(v30 + 16));
            *(v30 + 16) = v59;
          }
        }

        else
        {
          result = swift_beginAccess();
          v37 = *(v30 + 16);
          if (!v37)
          {
            goto LABEL_84;
          }

          v38 = *v37;
          if (*v37 < v33)
          {
            if (v38 + 0x4000000000000000 < 0)
            {
              goto LABEL_76;
            }

            if (2 * v38 <= v33)
            {
              v38 = v33;
            }

            else
            {
              v38 *= 2;
            }
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
          v39 = swift_allocObject();
          sub_21B2AEFEC(v37, v38, &v59);
          *(v39 + 16) = v59;

          *(&v66 + 1) = v39;
          v30 = v39;
        }

        result = swift_beginAccess();
        v40 = *(v30 + 16);
        if (!v40)
        {
          goto LABEL_82;
        }

        v41 = *v40 + 7;
        if (__OFADD__(*v40, 7))
        {
          goto LABEL_72;
        }

        v42 = v40 + 8;
        if (v41 < 0)
        {
          v41 = *v40 + 14;
        }

        v43 = v41 >> 3;
        v45 = v43 - 1;
        v44 = v43 < 1;
        v46 = v43 + 62;
        if (!v44)
        {
          v46 = v45;
        }

        v47 = &v42[2 * v40[1]] + (v46 & 0xFFFFFFFFFFFFFFC0);
        *(v47 + 64) = v29;
        *(v47 + 72) = v28;
        v48 = v40[1];
        v49 = v48 + 7;
        if (v48 >= 0)
        {
          v49 = v40[1];
        }

        v50 = v49 >> 3;
        v51 = v48 - (v49 & 0xFFFFFFFFFFFFFFF8);
        if (v51 >= 0)
        {
          v52 = 1 << v51;
        }

        else
        {
          v52 = 0;
        }

        *(v42 + v50) |= v52;
        v23 = __OFADD__(v48, 1);
        v53 = v48 + 1;
        if (v23)
        {
          __break(1u);
          goto LABEL_65;
        }

        v40[1] = v53;
        sub_21B261664(v57, &qword_27CD7E500, &qword_21B352660);
        __swift_destroy_boxed_opaque_existential_1Tm(v62);
        sub_21B261664(&v63, &qword_27CD7E500, &qword_21B352660);
        v4 = v27;
        goto LABEL_3;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v62);
    }

    sub_21B261664(&v63, &qword_27CD7E500, &qword_21B352660);
    v10 = *(&v66 + 1);
    result = swift_beginAccess();
    v12 = *(v10 + 16);
    if (!v12)
    {
      goto LABEL_77;
    }

    v13 = *(v12 + 8);
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v10 + 16);
      if (!result)
      {
        goto LABEL_79;
      }

      v15 = *result;
      if (*result < v14)
      {
        if (v15 + 0x4000000000000000 < 0)
        {
          goto LABEL_73;
        }

        v16 = 2 * v15;
        if (v16 <= v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v16;
        }

        sub_21B2AFD1C(result, v17, &v63);
        sub_21B2B0954(*(v10 + 16));
        *(v10 + 16) = v63;
      }
    }

    else
    {
      result = swift_beginAccess();
      v18 = *(v10 + 16);
      if (!v18)
      {
        goto LABEL_80;
      }

      v19 = *v18;
      if (*v18 < v14)
      {
        if (v19 + 0x4000000000000000 < 0)
        {
          goto LABEL_74;
        }

        if (2 * v19 <= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 *= 2;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4A0, &unk_21B354480);
      v20 = swift_allocObject();
      sub_21B2AEFEC(v18, v19, &v63);
      *(v20 + 16) = v63;

      *(&v66 + 1) = v20;
      v10 = v20;
    }

    result = swift_beginAccess();
    v21 = *(v10 + 16);
    if (!v21)
    {
      goto LABEL_78;
    }

    v22 = *(v21 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_69;
    }

    *(v21 + 16) = v24;
    v25 = *(v21 + 8);
    v23 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v23)
    {
      goto LABEL_70;
    }

    *(v21 + 8) = v26;
    sub_21B261664(v57, &qword_27CD7E500, &qword_21B352660);
LABEL_3:
    ++v6;
    if (!--v5)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_21B2C5074(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v72 = v3;
  *&v73 = v4;

  *(&v73 + 1) = sub_21B260F5C(MEMORY[0x277D84F90]);
  sub_21B2FD7B0(0);
  v56 = v1;
  sub_21B2348E0(v56 + 32, v56 + 88);
  v60 = *(a1 + 16);
  if (!v60)
  {
LABEL_69:
    v53 = v72;
    *(&v62[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7A8, &unk_21B352690);
    v63 = &off_282CAA128;
    *&v62[0] = v53;
    *(v62 + 8) = v73;
    sub_21B2339B4(v62, v56 + 88);
    return 1;
  }

  v5 = 0;
  v59 = a1 + 32;
  v57 = v4;
  v58 = v3;
  while (1)
  {
    v6 = *(v59 + 8 * v5);
    if (*(v6 + 16))
    {

      v7 = sub_21B24B534(v3, v4);
      if (v8)
      {
        sub_21B2616C4(*(v6 + 56) + 32 * v7, v62);

        goto LABEL_9;
      }
    }

    memset(v62, 0, sizeof(v62));
LABEL_9:
    sub_21B2615FC(v62, &v70, &qword_27CD7E500, &qword_21B352660);
    if (!v71)
    {
      goto LABEL_12;
    }

    sub_21B2615FC(&v70, v69, &qword_27CD7E500, &qword_21B352660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
    sub_21B2735AC();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7A0, &unk_21B354C60);
    if (!swift_dynamicCast())
    {
      sub_21B261664(v62, &qword_27CD7E500, &qword_21B352660);

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      sub_21B261664(&v70, &qword_27CD7E500, &qword_21B352660);
      return 0;
    }

    v25 = v68;
    v26 = *(v68 + 16);
    if (v26)
    {
      v67 = MEMORY[0x277D84F90];
      sub_21B254308(0, v26, 0);
      v27 = v67;
      v28 = v25 + 32;
      while (1)
      {
        sub_21B2615FC(v28, v66, &qword_27CD7E500, &qword_21B352660);
        sub_21B2615FC(v66, v64, &qword_27CD7E500, &qword_21B352660);
        if (!v65)
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_38;
        }

        sub_21B261664(v66, &qword_27CD7E500, &qword_21B352660);

        v29 = 0uLL;
        v30 = 0uLL;
LABEL_39:
        v67 = v27;
        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        if (v32 >= v31 >> 1)
        {
          v54 = v30;
          v55 = v29;
          sub_21B254308((v31 > 1), v32 + 1, 1);
          v30 = v54;
          v29 = v55;
          v27 = v67;
        }

        *(v27 + 16) = v32 + 1;
        v33 = v27 + 32 * v32;
        *(v33 + 32) = v29;
        *(v33 + 48) = v30;
        v28 += 32;
        if (!--v26)
        {

          goto LABEL_44;
        }
      }

      sub_21B261664(v64, &qword_27CD7E500, &qword_21B352660);
LABEL_38:
      v29 = v66[0];
      v30 = v66[1];
      goto LABEL_39;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_44:
    v34 = *(&v73 + 1);
    result = swift_beginAccess();
    v35 = *(v34 + 16);
    if (!v35)
    {
      goto LABEL_85;
    }

    v36 = *(v35 + 8);
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_74;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v34 + 16);
      if (!result)
      {
        goto LABEL_87;
      }

      v38 = *result;
      if (*result < v37)
      {
        if (v38 + 0x4000000000000000 < 0)
        {
          goto LABEL_79;
        }

        v39 = 2 * v38;
        if (v39 <= v37)
        {
          v40 = v37;
        }

        else
        {
          v40 = v39;
        }

        sub_21B2B4364(v66, result, v40);
        sub_21B2B0C0C(*(v34 + 16), *(v34 + 24));
        *(v34 + 16) = v66[0];
      }
    }

    else
    {
      result = swift_beginAccess();
      v41 = *(v34 + 16);
      if (!v41)
      {
        goto LABEL_88;
      }

      if (*v41 < v37 && *v41 + 0x4000000000000000 < 0)
      {
        goto LABEL_80;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
      v42 = swift_allocObject();
      sub_21B2B4360();
      *(v42 + 16) = v66[0];

      *(&v73 + 1) = v42;
      v34 = v42;
    }

    result = swift_beginAccess();
    v43 = *(v34 + 16);
    if (!v43)
    {
      goto LABEL_86;
    }

    v44 = *v43 + 7;
    if (__OFADD__(*v43, 7))
    {
      goto LABEL_75;
    }

    v45 = v43 + 8;
    if (v44 < 0)
    {
      v44 = *v43 + 14;
    }

    v46 = v44 >> 3;
    v48 = v46 - 1;
    v47 = v46 < 1;
    v49 = v46 + 62;
    if (!v47)
    {
      v49 = v48;
    }

    v50 = v43[1];
    *(&v45[v50 + 8] + (v49 & 0xFFFFFFFFFFFFFFC0)) = v27;
    v51 = v50 - (v49 & 0xFFFFFFFFFFFFFFF8);
    if (v51 >= 0)
    {
      v52 = 1 << v51;
    }

    else
    {
      v52 = 0;
    }

    *(v45 + v50 / 8) |= v52;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_76;
    }

    v43[1] = v50 + 1;
    sub_21B261664(v62, &qword_27CD7E500, &qword_21B352660);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    sub_21B261664(&v70, &qword_27CD7E500, &qword_21B352660);
    v4 = v57;
    v3 = v58;
LABEL_3:
    if (++v5 == v60)
    {
      goto LABEL_69;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v69);
LABEL_12:
  sub_21B261664(&v70, &qword_27CD7E500, &qword_21B352660);
  v9 = *(&v73 + 1);
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (!v11)
  {
    goto LABEL_81;
  }

  v12 = *(v11 + 8);
  v13 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v9 + 16);
      if (!result)
      {
        goto LABEL_83;
      }

      v14 = *result;
      if (*result < v13)
      {
        if (v14 + 0x4000000000000000 < 0)
        {
          goto LABEL_77;
        }

        v15 = 2 * v14;
        if (v15 <= v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = v15;
        }

        sub_21B2B4364(&v70, result, v16);
        sub_21B2B0C0C(*(v9 + 16), *(v9 + 24));
        *(v9 + 16) = v70;
      }
    }

    else
    {
      result = swift_beginAccess();
      v17 = *(v9 + 16);
      if (!v17)
      {
        goto LABEL_84;
      }

      if (*v17 < v13 && *v17 + 0x4000000000000000 < 0)
      {
        goto LABEL_78;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3A8, &qword_21B351CB8);
      v18 = swift_allocObject();
      sub_21B2B4360();
      *(v18 + 16) = v70;

      *(&v73 + 1) = v18;
      v9 = v18;
    }

    result = swift_beginAccess();
    v19 = *(v9 + 16);
    if (!v19)
    {
      goto LABEL_82;
    }

    v20 = *(v19 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_72;
    }

    *(v19 + 16) = v22;
    v23 = *(v19 + 8);
    v21 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v21)
    {
      goto LABEL_73;
    }

    *(v19 + 8) = v24;
    sub_21B261664(v62, &qword_27CD7E500, &qword_21B352660);
    goto LABEL_3;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_21B2C57D8(uint64_t a1)
{
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v67 = v3;
  *&v68 = v4;

  *(&v68 + 1) = sub_21B26117C(MEMORY[0x277D84F90]);
  sub_21B2FD884(0);
  v49 = v1;
  sub_21B2348E0(v49 + 32, v49 + 88);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_50:
    v48 = v67;
    *(&v57[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E798, &unk_21B352680);
    v58 = &off_282CAA128;
    *&v57[0] = v48;
    *(v57 + 8) = v68;
    sub_21B2339B4(v57, v49 + 88);
    return 1;
  }

  v6 = 0;
  v7 = a1 + 32;
  v52 = v4;
  v53 = v3;
  v50 = v7;
  v51 = v5;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    if (*(v8 + 16))
    {

      v9 = sub_21B24B534(v3, v4);
      if (v10)
      {
        sub_21B2616C4(*(v8 + 56) + 32 * v9, v57);

        goto LABEL_10;
      }
    }

    memset(v57, 0, sizeof(v57));
LABEL_10:
    sub_21B2615FC(v57, &v65, &qword_27CD7E500, &qword_21B352660);
    if (!v66)
    {
      goto LABEL_13;
    }

    sub_21B2615FC(&v65, v64, &qword_27CD7E500, &qword_21B352660);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E770, &qword_21B352668);
    sub_21B2735AC();
    if (!swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
LABEL_13:
    sub_21B261664(&v65, &qword_27CD7E500, &qword_21B352660);
    v11 = *(&v68 + 1);
    result = swift_beginAccess();
    v13 = *(v11 + 16);
    if (!v13)
    {
      goto LABEL_59;
    }

    v14 = *(v13 + 8);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_54;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      result = *(v11 + 16);
      if (!result)
      {
        goto LABEL_61;
      }

      v16 = *result;
      if (*result < v15)
      {
        if (v16 + 0x4000000000000000 < 0)
        {
          goto LABEL_58;
        }

        v17 = 2 * v16;
        if (v17 <= v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v17;
        }

        sub_21B2B4364(&v65, result, v18);
        sub_21B2B0D10(*(v11 + 16), *(v11 + 24));
        *(v11 + 16) = v65;
      }
    }

    else
    {
      result = swift_beginAccess();
      v19 = *(v11 + 16);
      if (!v19)
      {
        goto LABEL_62;
      }

      if (*v19 < v15 && *v19 + 0x4000000000000000 < 0)
      {
        goto LABEL_57;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3C0, &qword_21B355BC0);
      v20 = swift_allocObject();
      sub_21B2B4360();
      *(v20 + 16) = v65;

      *(&v68 + 1) = v20;
      v11 = v20;
    }

    result = swift_beginAccess();
    v21 = *(v11 + 16);
    if (!v21)
    {
      goto LABEL_60;
    }

    v22 = *(v21 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_55;
    }

    *(v21 + 16) = v24;
    v25 = *(v21 + 8);
    v23 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v23)
    {
      goto LABEL_56;
    }

    *(v21 + 8) = v26;
    sub_21B261664(v57, &qword_27CD7E500, &qword_21B352660);
LABEL_4:
    if (++v6 == v5)
    {
      goto LABEL_50;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E780, &qword_21B352670);
  if (swift_dynamicCast())
  {
    v54 = v6;
    v27 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E790, &qword_21B352678);
    result = sub_21B34B874();
    v28 = result;
    v29 = 0;
    v30 = v27 + 64;
    v31 = 1 << *(v27 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v27 + 64);
    v34 = (v31 + 63) >> 6;
    v55 = result + 64;
    v56 = v27;
    if (v33)
    {
      while (1)
      {
        v35 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
LABEL_42:
        v38 = v35 | (v29 << 6);
        v39 = (*(v56 + 48) + 16 * v38);
        v41 = *v39;
        v40 = v39[1];
        sub_21B2615FC(*(v56 + 56) + 32 * v38, v62, &qword_27CD7E500, &qword_21B352660);
        sub_21B2615FC(v62, v60, &qword_27CD7E500, &qword_21B352660);
        if (!v61)
        {
          break;
        }

        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_46;
        }

        result = sub_21B261664(v62, &qword_27CD7E500, &qword_21B352660);
        v42 = 0uLL;
        v43 = 0uLL;
LABEL_47:
        *(v55 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        v44 = (v28[6] + 16 * v38);
        *v44 = v41;
        v44[1] = v40;
        v45 = (v28[7] + 32 * v38);
        *v45 = v42;
        v45[1] = v43;
        v46 = v28[2];
        v23 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v23)
        {
          goto LABEL_53;
        }

        v28[2] = v47;
        if (!v33)
        {
          goto LABEL_37;
        }
      }

      result = sub_21B261664(v60, &qword_27CD7E500, &qword_21B352660);
LABEL_46:
      v42 = v62[0];
      v43 = v62[1];
      goto LABEL_47;
    }

LABEL_37:
    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v34)
      {

        sub_21B2FE2F8();
        sub_21B261664(v57, &qword_27CD7E500, &qword_21B352660);

        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        sub_21B261664(&v65, &qword_27CD7E500, &qword_21B352660);
        v4 = v52;
        v3 = v53;
        v7 = v50;
        v5 = v51;
        v6 = v54;
        goto LABEL_4;
      }

      v37 = *(v30 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v33 = (v37 - 1) & v37;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    sub_21B261664(v57, &qword_27CD7E500, &qword_21B352660);

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    sub_21B261664(&v65, &qword_27CD7E500, &qword_21B352660);
    return 0;
  }

  return result;
}

int64_t sub_21B2C5E38(unsigned __int8 **a1, uint64_t a2)
{
  v5 = sub_21B34AD44();
  MEMORY[0x28223BE20](v5 - 8);
  result = sub_21B23828C(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v7 = result;
    v27 = a2;
    v8 = sub_21B231F84(0, result, 0, MEMORY[0x277D84F90]);
    if (v7)
    {
      while (1)
      {
        result = sub_21B23828C(a1);
        if (result < 0)
        {
          break;
        }

        *a1 += result;
        sub_21B34AD34();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
        sub_21B28325C();
        v9 = sub_21B34ACB4();
        if (!v10)
        {
          v2 = 0x800000021B34C8D0;
          sub_21B239564();
          swift_allocError();
          *v26 = 0xD000000000000020;
          *(v26 + 8) = 0x800000021B34C8D0;
          *(v26 + 16) = 4;
          swift_willThrow();
          goto LABEL_18;
        }

        v11 = v9;
        v2 = v10;
        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_21B231F84((v12 > 1), v13 + 1, 1, v8);
        }

        *(v8 + 2) = v13 + 1;
        v14 = &v8[16 * v13];
        *(v14 + 4) = v11;
        *(v14 + 5) = v2;
        if (!--v7)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    v15 = sub_21B270D34(a1, v27);
    if (v29)
    {
LABEL_18:
    }

    else
    {
      v16 = v15;
      v17 = *(v15 + 16);
      if (v17)
      {
        v28 = MEMORY[0x277D84F90];
        result = sub_21B231F10(0, v17, 0);
        v2 = v28;
        for (i = 32; ; i += 8)
        {
          v19 = *(v16 + i);
          if ((v19 & 0x8000000000000000) != 0)
          {
            break;
          }

          if (v19 >= *(v8 + 2))
          {
            goto LABEL_23;
          }

          v20 = &v8[16 * v19 + 32];
          v21 = *v20;
          v22 = *(v20 + 1);
          v24 = *(v28 + 16);
          v23 = *(v28 + 24);

          if (v24 >= v23 >> 1)
          {
            result = sub_21B231F10((v23 > 1), v24 + 1, 1);
          }

          *(v28 + 16) = v24 + 1;
          v25 = v28 + 16 * v24;
          *(v25 + 32) = v21;
          *(v25 + 40) = v22;
          if (!--v17)
          {

            return v2;
          }
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      return MEMORY[0x277D84F90];
    }

    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21B2C611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v60 = a5;
  v47 = a2;
  v48 = a7;
  AssociatedConformanceWitness = a1;
  v49 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v59 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = sub_21B34B474();
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v46 - v15;
  v17 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v46 - v22;
  v64 = sub_21B34A974();
  v63 = sub_21B34A984();
  (*(v17 + 16))(v19, AssociatedConformanceWitness, a4);
  v24 = v47;
  sub_21B34AEC4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_21B34B4D4();
  v25 = v49;
  v56 = *(v49 + 48);
  v57 = v49 + 48;
  v26 = v56(v16, 1, a3);
  v27 = v48;
  v28 = 0;
  if (v26 == 1)
  {
LABEL_17:
    v43 = v27;
    (*(v21 + 8))(v23, AssociatedTypeWitness);
    result = sub_21B34A9F4();
    if (v24 < 1 || (v44 = __OFADD__(result, 1), ++result, !v44))
    {
      v45 = v63;
      *v43 = v28;
      v43[1] = v24;
      v43[2] = result;
      v43[3] = v45;
    }
  }

  else
  {
    v54 = v23;
    v55 = AssociatedTypeWitness;
    v46 = v21;
    v29 = 0;
    v30 = 0;
    v52 = *(v25 + 32);
    v53 = v25 + 32;
    v31 = (v25 + 16);
    v50 = (v25 + 8);
    for (result = v52(v12, v16, a3); ; result = v52(v12, v16, a3))
    {
      v51 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v34 = v64;
      v35 = *(v64 + 16);
      if (v35)
      {
        result = sub_21B2E9604(v12, a3, v60);
        if (v36)
        {
          v35 = *(*(v34 + 56) + 8 * result);
        }

        else
        {
          v35 = 0;
        }
      }

      v33 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_21;
      }

      v37 = *v31;
      (*v31)(v59, v12, a3);
      v61 = v33;
      v62 = 0;
      sub_21B34AA04();
      sub_21B34AA24();
      if (v30 >= v33)
      {
        if (v33 == v30)
        {
          v37(v59, v12, a3);
          sub_21B34B054();
          sub_21B34B024();
        }

        (*v50)(v12, a3);
        v33 = v30;
      }

      else
      {

        sub_21B2C6B14(a3, a3);
        v38 = v49;
        swift_allocObject();
        v39 = sub_21B34AF94();
        v37(v40, v12, a3);
        sub_21B2D9190(v39, a3);
        v42 = v41;
        (*(v38 + 8))(v12, a3);
        v63 = v42;
      }

      sub_21B34B4D4();
      ++v29;
      v30 = v33;
      if (v56(v16, 1, a3) == 1)
      {
        v24 = v47;
        v27 = v48;
        v23 = v54;
        AssociatedTypeWitness = v55;
        v21 = v46;
        v28 = v51;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CategoricalSummary.init(someCount:noneCount:uniqueCount:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CategoricalSummary.totalCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t CategoricalSummary.mode.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CategoricalSummary.init()@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_21B34AFD4();
  a2[3] = result;
  return result;
}

uint64_t CategoricalSummary.debugDescription.getter(uint64_t a1)
{

  sub_21B34B634();
  MEMORY[0x21CEED5E0](0xD000000000000016, 0x800000021B34CFC0);
  v1 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v1);

  MEMORY[0x21CEED5E0](0x43656E6F6E20200ALL, 0xEE00203A746E756FLL);
  v2 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v2);

  MEMORY[0x21CEED5E0](0x7571696E7520200ALL, 0xEB00000000203A65);
  v3 = sub_21B34B944();
  MEMORY[0x21CEED5E0](v3);

  MEMORY[0x21CEED5E0](0x3A65646F6D20200ALL, 0xE900000000000020);
  sub_21B34B054();
  swift_getWitnessTable();
  sub_21B34B9D4();

  return 0;
}

uint64_t static CategoricalSummary.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return sub_21B34B074();
  }

  else
  {
    return 0;
  }
}

uint64_t CategoricalSummary.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  MEMORY[0x21CEEE3B0](*v2);
  MEMORY[0x21CEEE3B0](v5);
  MEMORY[0x21CEEE3B0](v6);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);

  return MEMORY[0x2821FC380](a1, v7, v8, v9);
}

uint64_t CategoricalSummary.hashValue.getter(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v7 = *v1;
  v8 = v3;
  v9 = v4;
  sub_21B34BBC4();
  CategoricalSummary.hash(into:)(v6, a1);
  return sub_21B34BC24();
}

uint64_t sub_21B2C6AC0(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  CategoricalSummary.hash(into:)(v4, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B2C6B14(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7EDA8, &unk_21B354DC0);
  }

  else
  {

    return sub_21B34B954();
  }
}

uint64_t sub_21B2C6BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B2C6BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21B2C6C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B2C6C8C@<X0>(char *a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a3 + 16))
  {
    sub_21B233A74(a3 + 32, &v26);
    v12 = v29;
    v11 = v30;
    __swift_project_boxed_opaque_existential_1(&v26, v29);
    v13 = *(v11 + 8);
    v14 = *(v13 + 48);

    v15 = v14(v12, v13);
    result = sub_21B233960(&v26);
    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    if (v15)
    {
      v17 = 0;
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v17 = 2;
  sub_21B2A6400();
  v15 = 0;
  if (v20)
  {
    v18 = 0;
  }

  else
  {
    v18 = v19;
  }

LABEL_9:
  sub_21B2A6400();
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  sub_21B254074(0, v15, v17);

  sub_21B23A9F4(0, v15, v17);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = 0;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = v23;
  v24 = DataFrame.Rows.index(after:)(a2);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = 0;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = v23;
  sub_21B261664(&v26, &qword_27CD7E510, &unk_21B351F10);
  return sub_21B2A35DC(a1, v24, a3, a4, a5, a6);
}

uint64_t sub_21B2C6E78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = type metadata accessor for FormattingOptions(0);
  MEMORY[0x28223BE20](v10 - 8);
  v154 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = *(a2 + 16);
  if (!v153)
  {
    return 0;
  }

  v156 = a1;
  sub_21B233A74(a2 + 32, &v176);
  v12 = v179;
  v13 = v180;
  v14 = __swift_project_boxed_opaque_existential_1(&v176, v179);
  v15 = *(v13 + 8);
  v16 = *(v15 + 48);

  v17 = (v16)(v12, v15);
  sub_21B233960(&v176);
  if (v17 < 0)
  {
    goto LABEL_140;
  }

  v18 = 2 * (v17 == 0);
  sub_21B254074(0, v17, v18);

  sub_21B23A9F4(0, v17, v18);
  v15 = sub_21B2FB104(0, v17, v18);
  sub_21B23A9F4(0, v17, v18);
  v14 = v156;
  v19 = *(v156 + 16);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_141;
  }

  v20 = *(v15 + 16);
  if (v20 >= v19)
  {
    v20 = *(v156 + 16);
  }

  v21 = 2 * v20;
  if (v19)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = 1;
  }

  v23 = v154;
  sub_21B2CC2D0(v15 + 32, 0, v22, v156, a2, v154);
  v151 = a2;
  v24 = sub_21B2CD000(v15, v15 + 32, 0, v22, v23, a2, a3, a4);
  v4 = v24;
  v25 = *(v24 + 2);
  v26 = v153 + *(v14 + 25);
  v150 = a3;
  v149 = a4;
  v148[2] = v15;
  v167 = v22;
  if (v25 >= v26)
  {
    v171 = (v24 + 16);
    v164 = 0;
    a4 = 0;
    v5 = 0;
    v162 = 0;
    v163 = 0;
    v165 = 0;
    a3 = 0;
    goto LABEL_36;
  }

  if (v25)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  v4 = sub_21B23A308(v4);
LABEL_13:
  v27 = *(v4 + 16);
  if (!v27)
  {
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v25 = v27 - 1;
  v28 = (v4 + 48 * v27);
  v165 = *(v28 - 2);
  v29 = *(v28 - 1);
  v162 = *v28;
  v5 = v28[1];
  a4 = v28[2];
  v30 = v28[3];
  *(v4 + 16) = v25;
  v164 = v30;
  a3 = v30 + 2;
  v163 = v29;
  v171 = (v4 + 16);
  if (__OFADD__(v30, 2))
  {
    goto LABEL_148;
  }

  if (!v25)
  {
    v173 = 0;
    v31 = MEMORY[0x277D84F90];
    v16 = 1;
    goto LABEL_17;
  }

LABEL_36:
  v176 = MEMORY[0x277D84F90];
  sub_21B254034(0, v25, 0);
  v45 = 72;
  v31 = v176;
  v173 = v25;
  v16 = v25;
  v14 = v156;
  do
  {
    v46 = *(v4 + v45);
    v25 = v46 + 2;
    if (__OFADD__(v46, 2))
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v176 = v31;
    a2 = *(v31 + 16);
    v47 = *(v31 + 24);
    v15 = a2 + 1;
    if (a2 >= v47 >> 1)
    {
      sub_21B254034((v47 > 1), a2 + 1, 1);
      v14 = v156;
      v31 = v176;
    }

    *(v31 + 16) = v15;
    *(v31 + 8 * a2 + 32) = v25;
    v45 += 48;
    --v16;
  }

  while (v16);
LABEL_17:
  v15 = qword_282CA8FB0;
  v152 = v31;
  v155 = a3;
  v14 = sub_21B340E7C(qword_282CA8FB0, v31, 9278946, 0xA300000000000000, a3);
  v22 = v32;
  swift_arrayDestroy();
  v175[0] = v14;
  v175[1] = v22;
  v33 = sub_21B34ADA4();
  v148[0] = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
    goto LABEL_142;
  }

  a2 = MEMORY[0x277D84F90];
  v161 = v4;
  v160 = a4;
  v159 = v5;
  if (v16)
  {
LABEL_42:
    v16 = v163;
    if (!v163)
    {
      goto LABEL_50;
    }

    v14 = v165;
    v48 = sub_21B2A0B58(v165, v16);
    v15 = v16;
    if (v164 < v48)
    {
LABEL_46:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_47;
      }

      goto LABEL_144;
    }

    if (!__OFSUB__(v164, v48))
    {
      v49 = sub_21B34AE74();
      v51 = v50;
      v176 = v165;
      v177 = v16;

      MEMORY[0x21CEED5E0](v49, v51);

      v14 = v176;
      v15 = v177;
      goto LABEL_46;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v174 = MEMORY[0x277D84F90];
  sub_21B231F10(0, v173, 0);
  v22 = 0;
  a2 = v174;
  v172 = v4 + 32;
LABEL_20:
  v4 = a2;
  v34 = (v172 + 48 * v22);
  v5 = *v34;
  v15 = v34[1];
  v16 = v34[3];
  a4 = v34[4];
  a3 = v34[5];
  v35 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v35 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v176 = v5;
  v177 = v15;
  v178 = 0;
  v179 = v35;
  swift_bridgeObjectRetain_n();

  v25 = 0;
  do
  {
    v14 = &v176;
    v36 = sub_21B34AE14();
    if (!v37)
    {

      if (a3 >= v25)
      {
        if (__OFSUB__(a3, v25))
        {
          goto LABEL_136;
        }

        v41 = sub_21B34AE74();
        a3 = v42;
        v176 = v5;
        v177 = v15;

        MEMORY[0x21CEED5E0](v41, a3);

        v5 = v176;
        v15 = v177;
      }

      else
      {
      }

      a2 = v4;
      v174 = v4;
      v25 = *(v4 + 16);
      v43 = *(v4 + 24);
      if (v25 >= v43 >> 1)
      {
        sub_21B231F10((v43 > 1), v25 + 1, 1);
        a2 = v174;
      }

      ++v22;
      *(a2 + 16) = v25 + 1;
      v44 = a2 + 16 * v25;
      *(v44 + 32) = v5;
      *(v44 + 40) = v15;
      if (v22 == v173)
      {
        v4 = v161;
        a4 = v160;
        v5 = v159;
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    v38 = v37;
    a2 = sub_21B2A0BE0(v36, v37);

    v40 = __OFADD__(v25, a2);
    v25 += a2;
  }

  while (!v40);
  __break(1u);
LABEL_67:
  if (v40)
  {
LABEL_156:
    __break(1u);
    return result;
  }

  v68 = sub_21B34AE74();
  v70 = v69;
  v176 = v38;
  v177 = v5;

  MEMORY[0x21CEED5E0](v68, v70);

  v15 = v176;
  v22 = v177;
LABEL_69:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_153:
    v25 = sub_21B231F84(0, *(v25 + 16) + 1, 1, v25);
  }

  v72 = *(v25 + 16);
  v71 = *(v25 + 24);
  if (v72 >= v71 >> 1)
  {
    v25 = sub_21B231F84((v71 > 1), v72 + 1, 1, v25);
  }

  *(v25 + 16) = v72 + 1;
  v73 = v25 + 16 * v72;
  *(v73 + 32) = v15;
  *(v73 + 40) = v22;
  v16 = v163;
LABEL_73:
  v176 = v25;
  v74 = sub_21B34AB74();
  v76 = v75;

  v176 = 32;
  v177 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v74, v76);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v77 = v176;
  v78 = v177;
  v176 = 8623330;
  v177 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v77, v78);

  MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v176, v177);

  v61 = v155;
  while (1)
  {
    v79 = sub_21B340E7C(qword_282CA9010, v152, 9278946, 0xA300000000000000, v61);
    v81 = v80;
    swift_arrayDestroy();
    v14 = v175;
    MEMORY[0x21CEED5E0](v79, v81);

    v170 = (v167 >> 1);
    if (v167 != 1)
    {
      v15 = 0;
      v157 = a4 + 32;
      v91 = *v171;
      v92 = 8819938;
      if (!v155)
      {
        v92 = 8557794;
      }

      v166 = v92;
      v167 = 8557794;
      v93 = v170;
      v158 = v4 + 72;
      v172 = v91;
      while (v15 < v93)
      {
        if (__OFADD__(v15, 1))
        {
          goto LABEL_134;
        }

        v171 = (v15 + 1);
        if (v91)
        {
          v174 = MEMORY[0x277D84F90];
          sub_21B231F10(0, v91, 0);
          v14 = v174;
          v5 = v158;
          v16 = v91;
          v173 = v15;
          do
          {
            a4 = *(v5 - 8);
            if (v15 >= *(a4 + 16))
            {
              __break(1u);
              goto LABEL_118;
            }

            a2 = *(v5 - 32);
            a3 = *(v5 - 16);
            v100 = *v5;
            v101 = a4 + 16 * v15;
            v4 = *(v101 + 32);
            v15 = *(v101 + 40);

            v102 = sub_21B2A0B58(v4, v15);
            if (v100 >= v102)
            {
              if (__OFSUB__(v100, v102))
              {
                __break(1u);
                goto LABEL_132;
              }

              v103 = sub_21B34AE74();
              v105 = v104;
              v176 = v4;
              v177 = v15;

              v106 = v103;
              v91 = v172;
              MEMORY[0x21CEED5E0](v106, v105);

              v4 = v176;
              v15 = v177;
            }

            else
            {
            }

            v174 = v14;
            v108 = *(v14 + 16);
            v107 = *(v14 + 24);
            a2 = v108 + 1;
            if (v108 >= v107 >> 1)
            {
              sub_21B231F10((v107 > 1), v108 + 1, 1);
              v14 = v174;
            }

            v5 += 48;
            *(v14 + 16) = a2;
            v109 = v14 + 16 * v108;
            *(v109 + 32) = v4;
            *(v109 + 40) = v15;
            --v16;
            v15 = v173;
          }

          while (v16);
          v4 = v161;
          a4 = v160;
          v5 = v159;
          v16 = v163;
          if (v163)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v14 = MEMORY[0x277D84F90];
          if (v16)
          {
LABEL_107:
            if (v15 >= *(a4 + 16))
            {
              goto LABEL_135;
            }

            a3 = v14;
            v110 = (v157 + 16 * v15);
            v14 = *v110;
            v15 = v110[1];
            v111 = v164;
            sub_21B2CF988(v165, v16, v162, v5, a4);

            v112 = sub_21B2A0B58(v14, v15);
            if (v111 >= v112)
            {
              if (__OFSUB__(v111, v112))
              {
                goto LABEL_139;
              }

              v113 = sub_21B34AE74();
              v115 = v114;
              v176 = v14;
              v177 = v15;

              MEMORY[0x21CEED5E0](v113, v115);
              v14 = v176;
              v116 = v177;
              v91 = v172;

              v15 = v116;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a3 = sub_21B231F84(0, *(a3 + 16) + 1, 1, a3);
            }

            v118 = *(a3 + 16);
            v117 = *(a3 + 24);
            if (v118 >= v117 >> 1)
            {
              a3 = sub_21B231F84((v117 > 1), v118 + 1, 1, a3);
            }

            *(a3 + 16) = v118 + 1;
            v94 = a3 + 16 * v118;
            *(v94 + 32) = v14;
            *(v94 + 40) = v15;
            v14 = a3;
          }
        }

        v176 = v14;
        a2 = v14;
        v95 = sub_21B34AB74();
        v97 = v96;

        v176 = 32;
        v177 = 0xE100000000000000;
        MEMORY[0x21CEED5E0](v95, v97);

        MEMORY[0x21CEED5E0](32, 0xE100000000000000);

        v98 = v176;
        v99 = v177;
        v176 = v167;
        v177 = 0xA300000000000000;
        MEMORY[0x21CEED5E0](v98, v99);

        MEMORY[0x21CEED5E0](v166, 0xA300000000000000);

        MEMORY[0x21CEED5E0](10, 0xE100000000000000);

        v14 = v175;
        MEMORY[0x21CEED5E0](v176, v177);

        v93 = v170;
        v15 = v171;
        if (v171 == v170)
        {
          goto LABEL_75;
        }
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

LABEL_75:
    sub_21B2CF938(v165, v16, v162, v5, a4);

    a2 = v151;
    sub_21B233A74(v151 + 32, &v176);
    v82 = v179;
    v83 = v180;
    v14 = __swift_project_boxed_opaque_existential_1(&v176, v179);
    v15 = *(v83 + 8);
    v22 = v15 + 48;
    v16 = *(v15 + 48);

    a4 = v149;

    v25 = (v16)(v82, v15);
    sub_21B233960(&v176);
    if ((v25 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_143:
    __break(1u);
LABEL_144:
    a2 = sub_21B231F84(0, *(a2 + 16) + 1, 1, a2);
LABEL_47:
    v53 = *(a2 + 16);
    v52 = *(a2 + 24);
    if (v53 >= v52 >> 1)
    {
      a2 = sub_21B231F84((v52 > 1), v53 + 1, 1, a2);
    }

    *(a2 + 16) = v53 + 1;
    v54 = a2 + 16 * v53;
    *(v54 + 32) = v14;
    *(v54 + 40) = v15;
LABEL_50:
    a3 = 0x208394E220;
    v176 = a2;

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    v168 = sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
    v169 = v55;
    v56 = sub_21B34AB74();
    v58 = v57;
    v148[1] = a2;

    v176 = 32;
    v177 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v56, v58);

    MEMORY[0x21CEED5E0](32, 0xE100000000000000);

    v59 = v176;
    v60 = v177;
    v61 = v155;
    if (v155)
    {
      a2 = 8885474;
    }

    else
    {
      a2 = 8623330;
    }

    v176 = 8623330;
    v177 = 0xA300000000000000;
    MEMORY[0x21CEED5E0](v59, v60);

    MEMORY[0x21CEED5E0](a2, 0xA300000000000000);

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v176, v177);

    if (*(v156 + 24) == 1)
    {
      v16 = *v171;
      v25 = MEMORY[0x277D84F90];
      if (*v171)
      {
        v173 = a2;
        v174 = MEMORY[0x277D84F90];
        sub_21B231F10(0, v16, 0);
        v25 = v174;
        v5 = v4 + 72;
        do
        {
          a2 = *(v5 - 32);
          a4 = *(v5 - 24);
          v15 = *(v5 - 16);
          a3 = *(v5 - 8);
          v14 = *v5;
          swift_bridgeObjectRetain_n();

          v62 = sub_21B2A0B58(a4, v15);
          if (v14 >= v62)
          {
            if (__OFSUB__(v14, v62))
            {
              goto LABEL_138;
            }

            v4 = sub_21B34AE74();
            v64 = v63;
            v176 = a4;
            v177 = v15;

            MEMORY[0x21CEED5E0](v4, v64);

            swift_bridgeObjectRelease_n();

            a4 = v176;
            v15 = v177;
          }

          else
          {
          }

          v174 = v25;
          v66 = *(v25 + 16);
          v65 = *(v25 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_21B231F10((v65 > 1), v66 + 1, 1);
            v25 = v174;
          }

          v5 += 48;
          *(v25 + 16) = v66 + 1;
          v67 = v25 + 16 * v66;
          *(v67 + 32) = a4;
          *(v67 + 40) = v15;
          --v16;
        }

        while (v16);
        v4 = v161;
        a4 = v160;
        v5 = v159;
        a2 = v173;
      }

      v38 = v162;
      v16 = v163;
      if (!v163)
      {
        goto LABEL_73;
      }

      result = sub_21B2A0B58(v38, v5);
      v40 = __OFSUB__(v164, result);
      if (v164 >= result)
      {
        goto LABEL_67;
      }

      v15 = v38;
      v22 = v5;
      goto LABEL_69;
    }
  }

  v84 = 2 * (v25 == 0);
  v15 = sub_21B2FB1D4(0, v25, v84);

  sub_21B23A9F4(0, v25, v84);
  if (v170 >= v15)
  {
    v119 = v156;
    v120 = sub_21B340E7C(qword_282CA90D0, v152, 9213410, 0xA300000000000000, v155);
    v122 = v121;

    swift_arrayDestroy();
    goto LABEL_126;
  }

  a3 = v148[0] - 2;
  if (__OFSUB__(v148[0], 2))
  {
    goto LABEL_149;
  }

  v16 = v148[0] - 4;
  if (__OFSUB__(a3, 2))
  {
    goto LABEL_150;
  }

  if (v148[0] == 4)
  {
    v85 = 0;
    v90 = 0xE000000000000000;
    goto LABEL_119;
  }

  v85 = 3026478;
  if (v16 >= 1)
  {
    a2 = 0;
    v14 = 15;
    while (1)
    {
      v86 = sub_21B34AE94();
      v15 = v87;
      v88 = sub_21B2A0BE0(v86, v87);

      v40 = __OFADD__(a2, v88);
      a2 += v88;
      if (v40)
      {
        break;
      }

      v89 = sub_21B34ADB4();
      v14 = v89;
      if (v89 >> 16 > 2 || a2 >= v16)
      {
        if ((v89 & 0xFFFFFFFFFFFFC000) != 0x30000)
        {
          goto LABEL_118;
        }

        v90 = 0xE300000000000000;
        goto LABEL_119;
      }
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_118:
  sub_21B34ADC4();
  v123 = sub_21B34AEB4();
  v124 = MEMORY[0x21CEED540](v123);
  v126 = v125;

  v176 = v124;
  v177 = v126;

  MEMORY[0x21CEED5E0](10911970, 0xA300000000000000);

  v85 = v176;
  v90 = v177;
LABEL_119:
  result = sub_21B2A0B58(v85, v90);
  v127 = v16 - result;
  if (v16 >= result)
  {
    if (!__OFSUB__(v16, result))
    {
      v128 = sub_21B34AE74();
      v130 = v129;
      v176 = v85;
      v177 = v90;

      MEMORY[0x21CEED5E0](v128, v130);

      v85 = v176;
      v90 = v177;
      goto LABEL_122;
    }

    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

LABEL_122:
  v176 = 32;
  v177 = 0xE100000000000000;
  MEMORY[0x21CEED5E0](v85, v90, v127);

  MEMORY[0x21CEED5E0](32, 0xE100000000000000);

  v132 = v176;
  v131 = v177;
  v4 = v152;
  v133 = sub_21B340E7C(qword_282CA9070, v152, 9278946, 0xA300000000000000, v155);
  v135 = v134;

  swift_arrayDestroy();
  MEMORY[0x21CEED5E0](v133, v135);

  result = sub_21B2A0B58(v132, v131);
  v136 = a3 - result;
  if (a3 >= result)
  {
    if (__OFSUB__(a3, result))
    {
      goto LABEL_155;
    }

    v137 = sub_21B34AE74();
    v139 = v138;
    v176 = v132;
    v177 = v131;

    MEMORY[0x21CEED5E0](v137, v139);

    v132 = v176;
    v131 = v177;
  }

  v176 = 8885474;
  v177 = 0xA300000000000000;
  MEMORY[0x21CEED5E0](v132, v131, v136);

  MEMORY[0x21CEED5E0](8885474, 0xA300000000000000);

  MEMORY[0x21CEED5E0](10, 0xE100000000000000);

  MEMORY[0x21CEED5E0](v176, v177);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E218, &qword_21B351B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B351EA0;
  *(inited + 32) = a3;
  v119 = v156;
  v120 = sub_21B33F0FC(inited);
  v122 = v141;
  swift_setDeallocating();
LABEL_126:
  MEMORY[0x21CEED5E0](v120, v122);

  a2 = v151;
  if (*(v119 + 26) == 1)
  {
    sub_21B233A74(v151 + 32, &v176);
    v142 = v179;
    v143 = v180;
    __swift_project_boxed_opaque_existential_1(&v176, v179);
    v15 = *(v143 + 8);
    v22 = v15 + 48;
    v144 = *(v15 + 48);

    a3 = v150;

    a4 = v149;

    v25 = v144(v142, v15);
    sub_21B233960(&v176);
    if (v25 < 0)
    {
      goto LABEL_151;
    }

    v145 = 2 * (v25 == 0);
    v146 = sub_21B2FB1D4(0, v25, v145);

    sub_21B23A9F4(0, v25, v145);
    v176 = sub_21B2CEA58(v146, v153, v156);
    v177 = v147;

    MEMORY[0x21CEED5E0](10, 0xE100000000000000);

    MEMORY[0x21CEED5E0](v176, v177);
    swift_unknownObjectRelease();

    sub_21B2B42B0(v154);
  }

  else
  {
    sub_21B2B42B0(v154);
    swift_unknownObjectRelease();
  }

  return v175[0];
}