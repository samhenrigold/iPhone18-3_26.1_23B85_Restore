unsigned __int8 *sub_1001EC918(unsigned __int8 *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 24;
    v6 = &result[-a3];
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = v8 - 24;
      v10 = *(v8 - 3);
      v11 = *(v8 - 1);
      v12 = *v8;
      result = v8 - 56;
      v13 = *(v8 - 7);
      v14 = *(v8 - 5);
      v15 = *(v8 - 32);
      if (v12 == 1)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            if (v14 == 1)
            {
              v16 = *(v8 - 32);
            }

            else
            {
              v16 = 0;
            }

            if (v16)
            {
              goto LABEL_52;
            }

            v17 = 2;
            if ((v15 & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v14 > 1)
            {
              v20 = *(v8 - 32);
            }

            else
            {
              v20 = 0;
            }

            if (v20 == 1)
            {
              goto LABEL_52;
            }

            v17 = 3;
            if ((v15 & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else
        {
          if (v14)
          {
            v19 = 0;
          }

          else
          {
            v19 = *(v8 - 32);
          }

          if (v19)
          {
            goto LABEL_52;
          }

          if (!*(v8 - 32))
          {
            goto LABEL_53;
          }

          v17 = 0;
        }
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          if (v11 >= v14 && (v11 != v14 || v10 >= v13))
          {
            goto LABEL_4;
          }

          goto LABEL_53;
        }

        v17 = 1;
      }

      if (v17 < qword_1004E2AC0[v14])
      {
        goto LABEL_53;
      }

      if (!*v8)
      {
        goto LABEL_4;
      }

LABEL_19:
      if (v11)
      {
        if (v11 == 1)
        {
          if (v14 != 1)
          {
            v15 = 0;
          }
        }

        else if (v14 <= 1)
        {
          v15 = 0;
        }

        if (v15 != 1)
        {
          goto LABEL_4;
        }

LABEL_52:
        if (v10 >= v13)
        {
          goto LABEL_4;
        }

        goto LABEL_53;
      }

      if (v14)
      {
        v15 = 0;
      }

      if (v15 != 1 || v10 >= v13)
      {
LABEL_4:
        ++a3;
        v5 += 32;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_53:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v23 = *result;
      v22 = *(v8 - 40);
      *(v8 - 32) = v12;
      v8 -= 32;
      v24 = *(v8 + 4);
      *v9 = v23;
      *(v9 + 1) = v22;
      *(v8 - 3) = v10;
      *(v8 - 4) = v24;
      *(v8 - 1) = v11;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1001ECA80(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v126 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_227:
    v7 = *v126;
    if (!*v126)
    {
      goto LABEL_265;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_229;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (2)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_109;
    }

    v11 = *a3 + 32 * v8;
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *a3 + 32 * v10;
    v16 = *(v15 + 16);
    if (v14 != 1)
    {
      if ((*(v15 + 24) & 1) == 0)
      {
        v23 = v13 < v16;
        if (v13 != v16)
        {
LABEL_45:
          v21 = v23;
          goto LABEL_48;
        }

        goto LABEL_44;
      }

      v18 = 1;
      goto LABEL_16;
    }

    if (!v13)
    {
      if (v16)
      {
        v24 = 0;
      }

      else
      {
        v24 = *(v15 + 24);
      }

      if (v24)
      {
        goto LABEL_44;
      }

      if (!*(v15 + 24))
      {
        v21 = 1;
        goto LABEL_48;
      }

      v18 = 0;
      goto LABEL_16;
    }

    if (v13 != 1)
    {
      if (v16 > 1)
      {
        v25 = *(v15 + 24);
      }

      else
      {
        v25 = 0;
      }

      if (v25 == 1)
      {
        goto LABEL_44;
      }

      v18 = 3;
      if ((*(v15 + 24) & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_16:
      v19 = qword_1004E2AC0[v16];
      v20 = v18 >= v19;
      v21 = v18 < v19;
      if (!v20 || ((v14 ^ 1) & 1) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    if (v16 == 1)
    {
      v17 = *(v15 + 24);
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      goto LABEL_44;
    }

    v18 = 2;
    if (*(v15 + 24))
    {
      goto LABEL_16;
    }

LABEL_19:
    if (!v13)
    {
      if (v16)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v15 + 24);
      }

      if ((v26 & 1) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_44;
    }

    if (v13 != 1)
    {
      if (v16 > 1)
      {
        v120 = *(v15 + 24);
      }

      else
      {
        v120 = 0;
      }

      if ((v120 & 1) == 0)
      {
        goto LABEL_224;
      }

      goto LABEL_44;
    }

    if (v16 == 1)
    {
      v22 = *(v15 + 24);
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
LABEL_44:
      v23 = v12 < *v15;
      goto LABEL_45;
    }

LABEL_224:
    v21 = 0;
LABEL_48:
    v8 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      goto LABEL_96;
    }

    v27 = v15 + 48;
    do
    {
      v28 = v27;
      v30 = *(v27 + 32);
      v27 += 32;
      v29 = v30;
      v31 = *(v28 + 16);
      v32 = *(v28 + 40);
      v33 = *(v28 - 16);
      v34 = *v28;
      v35 = *(v28 + 8);
      if (v32 != 1)
      {
        if ((v35 & 1) == 0)
        {
          if (v29 == v34)
          {
            goto LABEL_50;
          }

          if (v29 < v34)
          {
            goto LABEL_75;
          }

          goto LABEL_93;
        }

        v37 = 1;
        goto LABEL_63;
      }

      if (!v29)
      {
        if (v34)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35;
        }

        if (v38)
        {
          goto LABEL_50;
        }

        if (!v35)
        {
LABEL_75:
          if (!v21)
          {
            goto LABEL_109;
          }

          goto LABEL_51;
        }

        v37 = 0;
LABEL_63:
        if (v37 < qword_1004E2AC0[v34])
        {
          goto LABEL_75;
        }

        if (!v32)
        {
          goto LABEL_93;
        }

        goto LABEL_82;
      }

      if (v29 == 1)
      {
        if (v34 == 1)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        if (v36)
        {
          goto LABEL_50;
        }

        v37 = 2;
        if (v35)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v34 > 1)
        {
          v39 = v35;
        }

        else
        {
          v39 = 0;
        }

        if (v39 == 1)
        {
          goto LABEL_50;
        }

        v37 = 3;
        if (v35)
        {
          goto LABEL_63;
        }
      }

LABEL_82:
      if (v29)
      {
        if (v29 != 1)
        {
          if (v34 <= 1)
          {
            LOBYTE(v35) = 0;
          }

          if (v35)
          {
LABEL_50:
            if (((v21 ^ (v31 >= v33)) & 1) == 0)
            {
              goto LABEL_96;
            }

            goto LABEL_51;
          }

          goto LABEL_93;
        }

        v40 = v34 == 1;
      }

      else
      {
        v40 = v34 == 0;
      }

      if (!v40)
      {
        LOBYTE(v35) = 0;
      }

      if (v35)
      {
        goto LABEL_50;
      }

LABEL_93:
      if (v21)
      {
        goto LABEL_97;
      }

LABEL_51:
      ++v8;
    }

    while (v6 != v8);
    v8 = v6;
LABEL_96:
    if (v21)
    {
LABEL_97:
      if (v8 >= v10)
      {
        if (v10 < v8)
        {
          v41 = 32 * v8 - 32;
          v42 = 32 * v10;
          v43 = v8;
          v44 = v10;
          do
          {
            if (v44 != --v43)
            {
              v47 = *a3;
              if (!*a3)
              {
                goto LABEL_262;
              }

              v48 = (v47 + v42);
              v49 = (v47 + v41);
              v50 = *(v47 + v42);
              v51 = *(v47 + v42 + 8);
              v52 = *(v47 + v42 + 16);
              v53 = *(v47 + v42 + 24);
              if (v42 != v41 || (result = (v49 + 2), v48 >= v49 + 2))
              {
                v45 = v49[1];
                *v48 = *v49;
                v48[1] = v45;
              }

              v46 = v47 + v41;
              *v46 = v50;
              *(v46 + 8) = v51;
              *(v46 + 16) = v52;
              *(v46 + 24) = v53;
            }

            ++v44;
            v41 -= 32;
            v42 += 32;
          }

          while (v44 < v43);
          v6 = a3[1];
        }

        goto LABEL_109;
      }

LABEL_258:
      __break(1u);
LABEL_259:
      result = sub_100141810(v9);
      v9 = result;
LABEL_229:
      v121 = *(v9 + 2);
      if (v121 >= 2)
      {
        while (*a3)
        {
          v122 = *&v9[16 * v121];
          v123 = *&v9[16 * v121 + 24];
          sub_1001ED8E0((*a3 + 32 * v122), (*a3 + 32 * *&v9[16 * v121 + 16]), (*a3 + 32 * v123), v7);
          if (v5)
          {
          }

          if (v123 < v122)
          {
            goto LABEL_252;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_100141810(v9);
          }

          if (v121 - 2 >= *(v9 + 2))
          {
            goto LABEL_253;
          }

          v124 = &v9[16 * v121];
          *v124 = v122;
          *(v124 + 1) = v123;
          result = sub_100141784(v121 - 1);
          v121 = *(v9 + 2);
          if (v121 <= 1)
          {
          }
        }

        goto LABEL_263;
      }
    }

LABEL_109:
    if (v8 >= v6)
    {
      goto LABEL_170;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_255;
    }

    if (v8 - v10 >= v7)
    {
      goto LABEL_170;
    }

    if (__OFADD__(v10, v7))
    {
      goto LABEL_256;
    }

    if (v10 + v7 < v6)
    {
      v6 = v10 + v7;
    }

    if (v6 < v10)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    if (v8 == v6)
    {
      goto LABEL_170;
    }

    v54 = *a3;
    v55 = *a3 + 32 * v8 + 24;
    v56 = v10 - v8;
LABEL_119:
    v57 = v56;
    v58 = v55;
LABEL_120:
    v59 = v58 - 24;
    v60 = *(v58 - 3);
    v61 = *(v58 - 1);
    v62 = *v58;
    result = *(v58 - 7);
    v63 = *(v58 - 5);
    v64 = *(v58 - 32);
    if (v62 == 1)
    {
      if (!v61)
      {
        if (v63)
        {
          v68 = 0;
        }

        else
        {
          v68 = *(v58 - 32);
        }

        if (v68)
        {
          goto LABEL_164;
        }

        if (!*(v58 - 32))
        {
          goto LABEL_165;
        }

        v66 = 0;
        goto LABEL_131;
      }

      if (v61 == 1)
      {
        if (v63 == 1)
        {
          v65 = *(v58 - 32);
        }

        else
        {
          v65 = 0;
        }

        if (v65)
        {
          goto LABEL_164;
        }

        v66 = 2;
        if ((v64 & 1) == 0)
        {
          goto LABEL_133;
        }

LABEL_131:
        if (v66 < qword_1004E2AC0[v63])
        {
          goto LABEL_165;
        }

        if (!*v58)
        {
          goto LABEL_118;
        }

        goto LABEL_133;
      }

      if (v63 > 1)
      {
        v69 = *(v58 - 32);
      }

      else
      {
        v69 = 0;
      }

      if (v69 == 1)
      {
        goto LABEL_164;
      }

      v66 = 3;
      if (v64)
      {
        goto LABEL_131;
      }

LABEL_133:
      if (v61)
      {
        if (v61 == 1)
        {
          if (v63 != 1)
          {
            v64 = 0;
          }

          if (v64 != 1)
          {
            goto LABEL_118;
          }

LABEL_164:
          if (v60 >= result)
          {
            goto LABEL_118;
          }

          goto LABEL_165;
        }

        if (v63 <= 1)
        {
          v64 = 0;
        }

        if (v64 == 1)
        {
          goto LABEL_164;
        }

LABEL_118:
        ++v8;
        v55 += 32;
        --v56;
        if (v8 == v6)
        {
          v8 = v6;
LABEL_170:
          if (v8 < v10)
          {
            goto LABEL_254;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100085288(0, *(v9 + 2) + 1, 1, v9);
            v9 = result;
          }

          v75 = *(v9 + 2);
          v74 = *(v9 + 3);
          v76 = v75 + 1;
          if (v75 >= v74 >> 1)
          {
            result = sub_100085288((v74 > 1), v75 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v76;
          v77 = &v9[16 * v75];
          *(v77 + 4) = v10;
          *(v77 + 5) = v8;
          v78 = *v126;
          if (!*v126)
          {
            goto LABEL_264;
          }

          if (!v75)
          {
LABEL_3:
            v6 = a3[1];
            v7 = a4;
            if (v8 >= v6)
            {
              goto LABEL_227;
            }

            continue;
          }

          while (2)
          {
            v79 = v76 - 1;
            if (v76 >= 4)
            {
              v84 = &v9[16 * v76 + 32];
              v85 = *(v84 - 64);
              v86 = *(v84 - 56);
              v90 = __OFSUB__(v86, v85);
              v87 = v86 - v85;
              if (v90)
              {
                goto LABEL_241;
              }

              v89 = *(v84 - 48);
              v88 = *(v84 - 40);
              v90 = __OFSUB__(v88, v89);
              v82 = v88 - v89;
              v83 = v90;
              if (v90)
              {
                goto LABEL_242;
              }

              v91 = &v9[16 * v76];
              v93 = *v91;
              v92 = *(v91 + 1);
              v90 = __OFSUB__(v92, v93);
              v94 = v92 - v93;
              if (v90)
              {
                goto LABEL_244;
              }

              v90 = __OFADD__(v82, v94);
              v95 = v82 + v94;
              if (v90)
              {
                goto LABEL_247;
              }

              if (v95 >= v87)
              {
                v113 = &v9[16 * v79 + 32];
                v115 = *v113;
                v114 = *(v113 + 1);
                v90 = __OFSUB__(v114, v115);
                v116 = v114 - v115;
                if (v90)
                {
                  goto LABEL_251;
                }

                if (v82 < v116)
                {
                  v79 = v76 - 2;
                }
              }

              else
              {
LABEL_190:
                if (v83)
                {
                  goto LABEL_243;
                }

                v96 = &v9[16 * v76];
                v98 = *v96;
                v97 = *(v96 + 1);
                v99 = __OFSUB__(v97, v98);
                v100 = v97 - v98;
                v101 = v99;
                if (v99)
                {
                  goto LABEL_246;
                }

                v102 = &v9[16 * v79 + 32];
                v104 = *v102;
                v103 = *(v102 + 1);
                v90 = __OFSUB__(v103, v104);
                v105 = v103 - v104;
                if (v90)
                {
                  goto LABEL_249;
                }

                if (__OFADD__(v100, v105))
                {
                  goto LABEL_250;
                }

                if (v100 + v105 < v82)
                {
                  goto LABEL_204;
                }

                if (v82 < v105)
                {
                  v79 = v76 - 2;
                }
              }
            }

            else
            {
              if (v76 == 3)
              {
                v80 = *(v9 + 4);
                v81 = *(v9 + 5);
                v90 = __OFSUB__(v81, v80);
                v82 = v81 - v80;
                v83 = v90;
                goto LABEL_190;
              }

              v106 = &v9[16 * v76];
              v108 = *v106;
              v107 = *(v106 + 1);
              v90 = __OFSUB__(v107, v108);
              v100 = v107 - v108;
              v101 = v90;
LABEL_204:
              if (v101)
              {
                goto LABEL_245;
              }

              v109 = &v9[16 * v79];
              v111 = *(v109 + 4);
              v110 = *(v109 + 5);
              v90 = __OFSUB__(v110, v111);
              v112 = v110 - v111;
              if (v90)
              {
                goto LABEL_248;
              }

              if (v112 < v100)
              {
                goto LABEL_3;
              }
            }

            v7 = v79 - 1;
            if (v79 - 1 >= v76)
            {
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
              goto LABEL_257;
            }

            if (!*a3)
            {
              goto LABEL_261;
            }

            v117 = *&v9[16 * v7 + 32];
            v118 = *&v9[16 * v79 + 40];
            sub_1001ED8E0((*a3 + 32 * v117), (*a3 + 32 * *&v9[16 * v79 + 32]), (*a3 + 32 * v118), v78);
            if (v5)
            {
            }

            if (v118 < v117)
            {
              goto LABEL_239;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v9 = sub_100141810(v9);
            }

            if (v7 >= *(v9 + 2))
            {
              goto LABEL_240;
            }

            v119 = &v9[16 * v7];
            *(v119 + 4) = v117;
            *(v119 + 5) = v118;
            result = sub_100141784(v79);
            v76 = *(v9 + 2);
            if (v76 <= 1)
            {
              goto LABEL_3;
            }

            continue;
          }
        }

        goto LABEL_119;
      }

      if (v63)
      {
        v64 = 0;
      }

      v67 = v64 == 1;
    }

    else
    {
      if (v64)
      {
        v66 = 1;
        goto LABEL_131;
      }

      v67 = v61 == v63;
      if (v61 < v63)
      {
        goto LABEL_165;
      }
    }

    break;
  }

  if (!v67 || v60 >= result)
  {
    goto LABEL_118;
  }

LABEL_165:
  if (v54)
  {
    v72 = *(v58 - 56);
    v71 = *(v58 - 40);
    *(v58 - 32) = v62;
    v58 -= 32;
    v73 = *(v58 + 4);
    *v59 = v72;
    *(v59 + 1) = v71;
    *(v58 - 3) = v60;
    *(v58 - 4) = v73;
    *(v58 - 1) = v61;
    v20 = __CFADD__(v57++, 1);
    if (v20)
    {
      goto LABEL_118;
    }

    goto LABEL_120;
  }

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
  return result;
}

uint64_t sub_1001ED2F0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100141810(v8);
      v8 = result;
    }

    v92 = v8 + 2;
    v93 = v8[2];
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = &v8[2 * v93];
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1001EDCD4((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7);
      v11 = (*a3 + 40 * v9);
      v14 = *v11;
      v13 = v11 + 10;
      v12 = v14;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *v13;
        v17 = v13[10];
        v13 += 10;
        ++v15;
        if (v10 < v12 == v17 >= v16)
        {
          v7 = v15 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = (v30 + v18);
            v25 = *(v22 - 3);
            v26 = *(v22 - 4);
            v27 = *(v22 - 1);
            v28 = *v22;
            result = v24[1];
            v29 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v29;
            *v22 = result;
            *(v24 - 6) = v23;
            *(v24 - 2) = v25;
            *(v24 - 2) = v26;
            *v24 = v27;
            *(v24 + 8) = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100085288(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v45 = v8[2];
    v44 = v8[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_100085288((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v46;
    v47 = v8 + 4;
    v48 = &v8[2 * v45 + 4];
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = v8[4];
          v51 = v8[5];
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = &v8[2 * v46];
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = &v47[2 * v49];
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = &v8[2 * v46];
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v47[2 * v49];
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = &v47[2 * v49 - 2];
        v88 = *v87;
        v89 = &v47[2 * v49];
        v90 = v89[1];
        sub_1001EDCD4((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > v8[2])
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = v8[2];
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove(&v47[2 * v49], v89 + 2, 16 * (v91 - 1 - v49));
        v8[2] = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = &v47[2 * v46];
      v55 = *(v54 - 8);
      v56 = *(v54 - 7);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 6);
      v58 = *(v54 - 5);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = &v8[2 * v46];
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = &v47[2 * v49];
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = v35 + 40;
    v37 = *(v35 + 40);
    if (v37 >= *v35)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 48);
    v39 = *(v35 + 56);
    v40 = *(v35 + 64);
    result = *(v35 + 72);
    v41 = *(v35 + 16);
    *v36 = *v35;
    *(v35 + 56) = v41;
    v42 = *(v35 + 32);
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v39;
    *(v35 + 24) = v40;
    *(v35 + 32) = result;
    v35 -= 40;
    *(v36 + 32) = v42;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1001ED8E0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 < v13)
  {
    v14 = 32 * v10;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14);
    }

    v15 = &v4[v14];
    if (v8 < 32 || v6 >= v5)
    {
LABEL_130:
      v33 = v7;
      goto LABEL_132;
    }

    while (1)
    {
      v16 = *v6;
      v17 = *(v6 + 2);
      v18 = *v4;
      v19 = *(v4 + 2);
      v20 = v4[24];
      if (v6[24] == 1)
      {
        if (v17)
        {
          if (v17 == 1)
          {
            if (v19 == 1)
            {
              v21 = v4[24];
            }

            else
            {
              v21 = 0;
            }

            if (v21)
            {
              goto LABEL_58;
            }

            v22 = 2;
            if ((v20 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            if (v19 > 1)
            {
              v25 = v4[24];
            }

            else
            {
              v25 = 0;
            }

            if (v25 == 1)
            {
              goto LABEL_58;
            }

            v22 = 3;
            if ((v20 & 1) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
          if (v19)
          {
            v24 = 0;
          }

          else
          {
            v24 = v4[24];
          }

          if (v24)
          {
            goto LABEL_58;
          }

          if (!v4[24])
          {
            goto LABEL_59;
          }

          v22 = 0;
        }
      }

      else
      {
        if ((v20 & 1) == 0)
        {
          if (v17 < v19)
          {
            goto LABEL_59;
          }

          if (v17 == v19 && v16 < v18)
          {
            goto LABEL_59;
          }

          goto LABEL_64;
        }

        v22 = 1;
      }

      if (v22 < qword_1004E2AC0[v19])
      {
        goto LABEL_59;
      }

      if (!v6[24])
      {
        goto LABEL_64;
      }

LABEL_42:
      if (v17)
      {
        if (v17 == 1)
        {
          if (v19 != 1)
          {
            v20 = 0;
          }

          if (v20 != 1)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v19 <= 1)
          {
            v20 = 0;
          }

          if (v20 != 1)
          {
            goto LABEL_64;
          }
        }

LABEL_58:
        if (v16 < v18)
        {
          goto LABEL_59;
        }

        goto LABEL_64;
      }

      if (v19)
      {
        v20 = 0;
      }

      if (v20 == 1 && v16 < v18)
      {
LABEL_59:
        v27 = v6;
        v28 = v7 == v6;
        v6 += 32;
        if (v28)
        {
          goto LABEL_61;
        }

LABEL_60:
        v29 = *(v27 + 1);
        *v7 = *v27;
        *(v7 + 1) = v29;
        goto LABEL_61;
      }

LABEL_64:
      v27 = v4;
      v28 = v7 == v4;
      v4 += 32;
      if (!v28)
      {
        goto LABEL_60;
      }

LABEL_61:
      v7 += 32;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_130;
      }
    }
  }

  v30 = 32 * v13;
  if (a4 != __dst || &__dst[v30] <= a4)
  {
    memmove(a4, __dst, 32 * v13);
  }

  v15 = &v4[v30];
  if (v11 < 32 || v6 <= v7)
  {
LABEL_131:
    v33 = v6;
    goto LABEL_132;
  }

  do
  {
    v31 = 0;
    v32 = v15;
    v33 = v6 - 32;
    while (1)
    {
      v34 = *&v32[v31 - 32];
      v35 = *&v32[v31 - 16];
      v36 = *(v6 - 4);
      v37 = *(v6 - 2);
      v38 = *(v6 - 8);
      if (v32[v31 - 8] == 1)
      {
        break;
      }

      if (v38)
      {
        v40 = 1;
        goto LABEL_103;
      }

      if (v35 < v37)
      {
        goto LABEL_125;
      }

      if (v35 == v37 && v34 < v36)
      {
        goto LABEL_125;
      }

LABEL_123:
      if (&v5[v31] != &v32[v31])
      {
        v45 = &v5[v31 - 32];
        v46 = *&v32[v31 - 16];
        *v45 = *&v32[v31 - 32];
        *(v45 + 1) = v46;
      }

      v31 -= 32;
      v15 = &v32[v31];
      if (&v32[v31] <= v4)
      {
        goto LABEL_131;
      }
    }

    if (!v35)
    {
      if (v37)
      {
        v42 = 0;
      }

      else
      {
        v42 = *(v6 - 8);
      }

      if ((v42 & 1) == 0)
      {
        if (!*(v6 - 8))
        {
          goto LABEL_125;
        }

        v40 = 0;
        goto LABEL_103;
      }

LABEL_122:
      if (v34 < v36)
      {
        goto LABEL_125;
      }

      goto LABEL_123;
    }

    if (v35 == 1)
    {
      if (v37 == 1)
      {
        v39 = *(v6 - 8);
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        goto LABEL_122;
      }

      v40 = 2;
      if (v38)
      {
LABEL_103:
        if (v40 < qword_1004E2AC0[v37])
        {
          goto LABEL_125;
        }

        if (!v32[v31 - 8])
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      if (v37 > 1)
      {
        v43 = *(v6 - 8);
      }

      else
      {
        v43 = 0;
      }

      if (v43 == 1)
      {
        goto LABEL_122;
      }

      v40 = 3;
      if (v38)
      {
        goto LABEL_103;
      }
    }

    if (v35)
    {
      if (v35 == 1)
      {
        if (v37 != 1)
        {
          v38 = 0;
        }

        if (v38 != 1)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v37 <= 1)
        {
          v38 = 0;
        }

        if (v38 != 1)
        {
          goto LABEL_123;
        }
      }

      goto LABEL_122;
    }

    if (v37)
    {
      v38 = 0;
    }

    if (v38 != 1 || v34 >= v36)
    {
      goto LABEL_123;
    }

LABEL_125:
    v47 = &v5[v31];
    v5 = &v5[v31 - 32];
    if (v47 != v6)
    {
      v48 = *(v6 - 1);
      *v5 = *v33;
      *(v5 + 1) = v48;
    }

    v15 = &v32[v31];
    if (&v32[v31] <= v4)
    {
      break;
    }

    v6 -= 32;
  }

  while (v33 > v7);
  v15 = &v32[v31];
LABEL_132:
  v49 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v33 != v4 || v33 >= &v4[v49])
  {
    memmove(v33, v4, v49);
  }

  return 1;
}

uint64_t sub_1001EDCD4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 40;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 40;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = (v5 + 40);
      v22 = *(v20 - 40);
      v20 -= 40;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          v25 = *v19;
          v26 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v25;
          *(v5 + 16) = v26;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v21 != v13)
      {
        v23 = *v20;
        v24 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v23;
        *(v5 + 16) = v24;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v27 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v27])
  {
    memmove(v6, v4, v27);
  }

  return 1;
}

uint64_t sub_1001EE04C(uint64_t result, int a2, uint64_t a3, char a4, uint64_t a5, int a6, unint64_t a7, char a8)
{
  if (a2 != a6)
  {
    return 0;
  }

  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v9 = result == a5;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_11:
    if (a4)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          if ((a8 & 1) != 0 && a7 == 1)
          {
            return 1;
          }
        }

        else if ((a8 & 1) != 0 && a7 > 1)
        {
          return 1;
        }
      }

      else if ((a8 & 1) != 0 && !a7)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && a3 == a7)
    {
      return 1;
    }

    return 0;
  }

  v10 = (result + 32);
  v11 = (a5 + 32);
  while (v8)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001EE138()
{
  result = qword_1005D4A58;
  if (!qword_1005D4A58)
  {
    result = swift_getWitnessTable("1E\n", &type metadata for MailboxSelectionUsage.Priority, v0, v1);
    atomic_store(result, &qword_1005D4A58);
  }

  return result;
}

unint64_t sub_1001EE190()
{
  result = qword_1005D4A60;
  if (!qword_1005D4A60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxSelectionUsage, &type metadata for MailboxSelectionUsage, v0, v1);
    atomic_store(result, &qword_1005D4A60);
  }

  return result;
}

uint64_t sub_1001EE214(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1001EE25C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001EE2B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EE2F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001EE34C(uint64_t a1, uint64_t a2)
{
  v4 = _s19CommandOutputBufferV7ElementOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1001EE3B0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  if ((sub_1000FFC98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if ((*(a1 + 32) & 1) == 0)
  {
    return (*(a2 + 32) & 1) == 0 && v4 == v5;
  }

  if (!v4)
  {
    return (*(a2 + 32) & 1) != 0 && !v5;
  }

  if (v4 != 1)
  {
    return (*(a2 + 32) & 1) != 0 && v5 > 1;
  }

  return (*(a2 + 32) & 1) != 0 && v5 == 1;
}

unint64_t sub_1001EE47C()
{
  result = qword_1005D4A78;
  if (!qword_1005D4A78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxName, &type metadata for MailboxName, v0, v1);
    atomic_store(result, &qword_1005D4A78);
  }

  return result;
}

uint64_t sub_1001EE4D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 7 && *(a1 + 80))
  {
    return (*a1 + 7);
  }

  v3 = (((*(a1 + 56) & 0x1000000000000000) != 0) | (*(a1 + 40) >> 59) & 6) ^ 7;
  if (v3 >= 6)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001EE52C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 1) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (((-a2 >> 1) & 3 | (4 * (-a2 & 7))) << 58) & 0x1000000000000000;
      *(result + 64) = 0;
      *(result + 72) = 0;
    }
  }

  return result;
}

uint64_t sub_1001EE5B8(uint64_t result, char a2)
{
  v2 = *(result + 56) & 0xEFFFFFFFFFFFFFFFLL | ((a2 & 1) << 60);
  *(result + 40) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) = v2;
  return result;
}

uint64_t sub_1001EE5E8(__n128 a1)
{
  v2 = *(v1 + 56);
  if ((v2 & 0x1000000000000000) == 0)
  {
    return 0x4E49474F4CLL;
  }

  v4 = (*(v1 + 72) >> 59) & 6 | ((v2 & 0x2000000000000000) != 0);
  if (v4 > 2)
  {
    if ((v4 - 5) >= 2)
    {
      if (v4 == 3)
      {
        if (qword_1005D2DA8 != -1)
        {
          swift_once();
        }

        v5 = &qword_1005DE0A0;
      }

      else
      {
        if (qword_1005D2DB0 != -1)
        {
          swift_once();
        }

        v5 = &qword_1005DE0B0;
      }
    }

    else
    {
      if (qword_1005D2DA0 != -1)
      {
        swift_once();
      }

      v5 = &qword_1005DE090;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      if (qword_1005D2D90 != -1)
      {
        swift_once();
      }

      v5 = &qword_1005DE070;
    }

    else
    {
      if (qword_1005D2D98 != -1)
      {
        swift_once();
      }

      v5 = &qword_1005DE080;
    }
  }

  else
  {
    v5 = AuthenticationMechanism.plain.unsafeMutableAddressor();
  }

  v6 = *v5;
  v7 = v5[1];

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  sub_1004A5994(v8);

  return 0x204C534153;
}

uint64_t sub_1001EE7D4@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 56);
  v41 = *v1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    a1[3] = &_s14descr100587B79C5LoginVN;
    a1[4] = &off_1005A6960;
    v6 = swift_allocObject();
    *a1 = v6;
    v7 = *(v1 + 48);
    *(v6 + 48) = *(v1 + 32);
    *(v6 + 64) = v7;
    v8 = *(v1 + 16);
    *(v6 + 16) = *v1;
    *(v6 + 32) = v8;
    *(v6 + 80) = *(v1 + 64);
    *(v6 + 96) = v41;
    *(v6 + 112) = v4;
    *(v6 + 120) = v3;
    *(v6 + 160) = 0;
LABEL_19:
    swift_bridgeObjectRetain_n();
    return swift_bridgeObjectRetain_n();
  }

  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v11 = *(v1 + 48);
  v13 = *(v1 + 64);
  v12 = *(v1 + 72);
  v14 = v5 & 0xEFFFFFFFFFFFFFFFLL;
  v15 = (v12 >> 59) & 6 | ((v5 & 0x2000000000000000) != 0);
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v35 = v5 & 0xCFFFFFFFFFFFFFFFLL;
        v36 = *(v1 + 72);
        v21 = v12 & 0xCFFFFFFFFFFFFFFFLL;
        sub_10000C9C0(&qword_1005D15D0, &qword_1004D69A8);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1004D13E0;
        *(v22 + 32) = v41;
        *(v22 + 48) = v41;
        *(v22 + 64) = v4;
        *(v22 + 72) = v3;
        *(v22 + 80) = v10;
        *(v22 + 88) = v9;
        v37 = v10;
        *(v22 + 96) = v11;
        *(v22 + 104) = v35;
        *(v22 + 112) = v13;
        *(v22 + 120) = v21;
        sub_100014CEC(v41, *(&v41 + 1));
        sub_100014CEC(v41, *(&v41 + 1));
        sub_100014CEC(v4, v3);
        sub_100014CEC(v10, v9);
        sub_100014CEC(v11, v35);
        sub_100014CEC(v13, v21);
        sub_100014CEC(v41, *(&v41 + 1));
        sub_100014CEC(v4, v3);
        sub_100014CEC(v10, v9);
        sub_100014CEC(v11, v35);
        sub_100014CEC(v13, v21);
        v23 = sub_10018D854(v22);
        v25 = v24;
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        a1[3] = &_s14descr100587B79C10AppleTokenVN;
        a1[4] = &off_1005A4028;
        result = swift_allocObject();
        *a1 = result;
        *(result + 16) = v41;
        *(result + 32) = v4;
        *(result + 40) = v3;
        *(result + 48) = v37;
        *(result + 56) = v9;
        *(result + 64) = v11;
        *(result + 72) = v14;
        *(result + 80) = v13;
        *(result + 88) = v36;
        *(result + 96) = v23;
        *(result + 104) = v25;
      }

      else
      {
        a1[3] = &_s14descr100587B79C11AppleToken2VN;
        a1[4] = &off_1005A4178;
        v31 = swift_allocObject();
        *a1 = v31;
        *(v31 + 16) = v41;
        *(v31 + 32) = v4;
        *(v31 + 40) = v3;
        *(v31 + 48) = v10;
        *(v31 + 56) = v9;
        *(v31 + 64) = v11;
        *(v31 + 72) = v14;
        *(v31 + 80) = v13;
        *(v31 + 88) = v12;
        *(v31 + 96) = v41;
        v32 = *(v1 + 48);
        v43[2] = *(v1 + 32);
        v44 = v32;
        v45 = *(v1 + 64);
        v33 = *(v1 + 16);
        v43[0] = *v1;
        v43[1] = v33;
        *(&v44 + 1) = *(&v32 + 1) & 0xEFFFFFFFFFFFFFFFLL;
        sub_10019782C(v1, v42);
        return sub_1001915E8(v43, v42);
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005D15D0, &qword_1004D69A8);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1004CEA80;
      v38 = v13;
      *(v27 + 32) = xmmword_1004DC1F0;
      *(v27 + 48) = v41;
      v40 = v11;
      *(v27 + 64) = v4;
      *(v27 + 72) = v3;
      sub_100014CEC(v41, *(&v41 + 1));
      sub_100014CEC(v4, v3);
      sub_100014CEC(v41, *(&v41 + 1));
      sub_100014CEC(v4, v3);
      v28 = sub_10018D854(v27);
      v30 = v29;
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1[3] = &_s14descr100587B79C5PlainVN;
      a1[4] = &off_1005A7ED0;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v41;
      *(result + 32) = v4;
      *(result + 40) = v3;
      *(result + 48) = v10;
      *(result + 56) = v9;
      *(result + 64) = v40;
      *(result + 72) = v14;
      *(result + 80) = v38;
      *(result + 88) = v12;
      *(result + 96) = v28;
      *(result + 104) = v30;
    }
  }

  else
  {
    if (v15 > 4)
    {
      a1[3] = &_s14descr100587B79C4NTLMVN;
      a1[4] = &off_1005A7828;
      if (v15 == 5)
      {
        v26 = swift_allocObject();
        *a1 = v26;
        *(v26 + 16) = 0;
      }

      else
      {
        v26 = swift_allocObject();
        *a1 = v26;
        *(v26 + 16) = 1;
      }

      *(v26 + 24) = v41;
      *(v26 + 40) = v4;
      *(v26 + 48) = v3;
      *(v26 + 56) = v41;
      *(v26 + 72) = v4;
      *(v26 + 80) = v3;
      *(v26 + 88) = v10;
      *(v26 + 96) = v9;
      *(v26 + 104) = v11;
      *(v26 + 112) = v14;
      *(v26 + 120) = v13;
      *(v26 + 128) = v12;
      *(v26 + 136) = 0u;
      *(v26 + 152) = 0u;
      *(v26 + 168) = 0u;
      *(v26 + 184) = 0;
      goto LABEL_19;
    }

    v39 = *(v1 + 48);
    if (v15 == 3)
    {
      v16 = *(v1 + 8);

      v17 = sub_1001F9E64(v41, v16, v4, v3);
      v19 = v18;
      a1[3] = &_s14descr100587B79C10OAuthTokenVN;
      a1[4] = &off_1005A7998;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v41;
      *(result + 32) = v4;
      *(result + 40) = v3;
      *(result + 48) = v10;
      *(result + 56) = v9;
      *(result + 64) = v39;
      *(result + 72) = v14;
      *(result + 80) = v13;
      *(result + 88) = v12;
      *(result + 96) = v17;
      *(result + 104) = v19;
    }

    else
    {
      a1[3] = &_s14descr100587B79C7CRAMMD5VN;
      a1[4] = &off_1005A5AE8;
      v34 = swift_allocObject();
      *a1 = v34;
      *(v34 + 16) = v41;
      *(v34 + 32) = v4;
      *(v34 + 40) = v3;
      *(v34 + 48) = v10;
      *(v34 + 56) = v9;
      *(v34 + 64) = v39;
      *(v34 + 72) = v14;
      *(v34 + 80) = v13;
      *(v34 + 88) = v12;
      *(v34 + 96) = xmmword_1004D25F0;
      *(v34 + 112) = v41;
      *(v34 + 128) = v4;
      *(v34 + 136) = v3;
      sub_100014CEC(v41, *(&v41 + 1));
      sub_100014CEC(v4, v3);
      sub_100014CEC(v41, *(&v41 + 1));

      return sub_100014CEC(v4, v3);
    }
  }

  return result;
}

BOOL sub_1001EEE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1004E36E8[(*(a2 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a1 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 >= v5;
  }

  v3 = 8;
  v4 = *(a1 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1004E36E8[(*(a1 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 >= v5;
}

BOOL sub_1001EEE70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1004E36E8[(*(a1 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a2 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 >= v5;
  }

  v3 = 8;
  v4 = *(a2 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1004E36E8[(*(a2 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 >= v5;
}

BOOL sub_1001EEED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1004E36E8[(*(a2 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a1 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 < v5;
  }

  v3 = 8;
  v4 = *(a1 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1004E36E8[(*(a1 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 < v5;
}

uint64_t sub_1001EEF30(uint64_t a1)
{
  v2 = (*(v1 + 72) >> 59) & 6 | ((*(v1 + 56) & 0x2000000000000000) != 0);
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_1004A6EB4(1uLL);
        sub_1004A4424();
        sub_1004A4424();
        sub_1004A4424();
        sub_1004A4424();
      }

      else
      {
        sub_1004A6EB4(2uLL);
      }

      goto LABEL_14;
    }

    v4 = 0;
  }

  else
  {
    if (v2 > 4)
    {
      if (v2 == 5)
      {
        v3 = 5;
      }

      else
      {
        v3 = 6;
      }

LABEL_18:
      sub_1004A6EB4(v3);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    if (v2 == 3)
    {
      v3 = 3;
      goto LABEL_18;
    }

    v4 = 4;
  }

  sub_1004A6EB4(v4);
  sub_1004A4424();
LABEL_14:

  return sub_1004A4424();
}

Swift::Int sub_1001EF0F4()
{
  sub_1004A6E94();
  sub_1001EEF30(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1001EF138(uint64_t a1)
{
  sub_1004A6E94();
  sub_1001EEF30(v2);
  return sub_1004A6F14();
}

uint64_t sub_1001EF174(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001EFF14(v8, v9) & 1;
}

Swift::Int sub_1001EF1D0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_1004A6E94();
  if ((v8 & 0x1000000000000000) != 0)
  {
    v12[9] = v2;
    v12[10] = v1;
    v12[11] = v4;
    v12[12] = v3;
    v12[13] = v5;
    v12[14] = v6;
    v12[15] = v7;
    v12[16] = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v12[17] = v10;
    v12[18] = v9;
    sub_1004A6EB4(1uLL);
    sub_1001EEF30(v12);
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1004A6F14();
}

uint64_t sub_1001EF2A0(uint64_t a1)
{
  if ((*(v1 + 56) & 0x1000000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    return sub_1001EEF30(a1);
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

Swift::Int sub_1001EF374(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  sub_1004A6E94();
  if ((v9 & 0x1000000000000000) != 0)
  {
    v13[9] = v3;
    v13[10] = v2;
    v13[11] = v5;
    v13[12] = v4;
    v13[13] = v6;
    v13[14] = v7;
    v13[15] = v8;
    v13[16] = v9 & 0xEFFFFFFFFFFFFFFFLL;
    v13[17] = v11;
    v13[18] = v10;
    sub_1004A6EB4(1uLL);
    sub_1001EEF30(v13);
  }

  else
  {
    sub_1004A6EB4(0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  return sub_1004A6F14();
}

uint64_t sub_1001EF440(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[7];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 3);
  v13 = a2[7];
  if ((v8 & 0x1000000000000000) != 0)
  {
    v16 = *(a2 + 5);
    v17 = *(a2 + 4);
    v18 = a1[6];
    v21[0] = v4;
    v21[1] = v5;
    v21[2] = v6;
    v21[3] = v7;
    v22 = *(a1 + 2);
    v23 = v18;
    v24 = v8 & 0xEFFFFFFFFFFFFFFFLL;
    v25 = *(a1 + 4);
    if ((v13 & 0x1000000000000000) != 0)
    {
      v26[0] = v9;
      v26[1] = v10;
      v26[2] = v11;
      v27 = v12;
      v28 = v16;
      v29 = v13 & 0xEFFFFFFFFFFFFFFFLL;
      v30 = v17;
      v15 = sub_1001EFF14(v21, v26);
      return v15 & 1;
    }

    goto LABEL_10;
  }

  if ((v13 & 0x1000000000000000) != 0 || (v4 != v9 || v5 != v10) && (v20 = *(a2 + 3), v14 = sub_1004A6D34(), *&v12 = v20, (v14 & 1) == 0))
  {
LABEL_10:
    v15 = 0;
    return v15 & 1;
  }

  if (v6 == v11 && v7 == v12)
  {
    v15 = 1;
    return v15 & 1;
  }

  return sub_1004A6D34();
}

unint64_t sub_1001EF578()
{
  result = qword_1005D4AB8;
  if (!qword_1005D4AB8)
  {
    result = swift_getWitnessTable(byte_1004E3080, &type metadata for MechanismKind, v0, v1);
    atomic_store(result, &qword_1005D4AB8);
  }

  return result;
}

BOOL sub_1001EF5CC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001F01F8(v8, v9);
}

BOOL sub_1001EF628(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001EEE10(v8, v9);
}

BOOL sub_1001EF684(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001EEE70(v8, v9);
}

BOOL sub_1001EF6E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1001EEED0(v8, v9);
}

char *sub_1001EF73C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = v2[3];
    v16[2] = v2[2];
    v16[3] = v5;
    v16[4] = v2[4];
    v6 = v2[1];
    v16[0] = *v2;
    v16[1] = v6;
    sub_1001F0C7C(v16, &v15);
    v7 = sub_1001F0758(v16);
    result = sub_1001F0CD8(v16);
    v8 = *(v7 + 2);
    v9 = *(v3 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v10 <= *(v3 + 3) >> 1)
    {
      if (*(v7 + 2))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v11 = v9 + v8;
      }

      else
      {
        v11 = v9;
      }

      result = sub_1001EBB14(result, v11, 1, v3);
      v3 = result;
      if (*(v7 + 2))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v8)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v12 = *(v3 + 2);
          v13 = __OFADD__(v12, v8);
          v14 = v12 + v8;
          if (v13)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 5;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1001EF8B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    v6 = _swiftEmptyArrayStorage;
    v58 = *(a2 + 16);
    v59 = result;
    v56 = a2 + 32;
    while (1)
    {
      v57 = v6;
      v7 = (v5 + 80 * v4);
      for (i = v4; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          return result;
        }

        v14 = v7[3];
        v69 = v7[2];
        v70 = v14;
        v71 = v7[4];
        v15 = v7[1];
        v67 = *v7;
        v68 = v15;
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }

        v60 = i + 1;
        if ((*(&v70 + 1) & 0x1000000000000000) != 0)
        {
          break;
        }

        v9 = Capability.loginDisabled.unsafeMutableAddressor();
        v10 = v9[1];
        v11 = v9[2];
        v12 = *(v9 + 24);
        *&v62 = *v9;
        *(&v62 + 1) = v10;
        *&v63 = v11;
        BYTE8(v63) = v12;
        __chkstk_darwin(v9);
        v55 = &v62;

        v13 = sub_100215C70(sub_1001F0EE0, v54, v3);

        if ((v13 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_5:
        result = sub_100193BF0(&v67);
        v7 += 5;
        if (v60 == v2)
        {
          return v57;
        }
      }

      v16 = (*(&v71 + 1) >> 59) & 6 | ((*(&v70 + 1) & 0x2000000000000000) != 0);
      if (v16 > 2)
      {
        if ((v16 - 5) >= 2)
        {
          if (v16 == 3)
          {
            v24 = v7[2];
            v25 = v7[4];
            v65 = v7[3];
            v66 = v25;
            v26 = *v7;
            v63 = v7[1];
            v64 = v24;
            v62 = v26;
            *(&v65 + 1) &= ~0x1000000000000000uLL;
            sub_1001915E8(&v62, v61);
            if (qword_1005D2DA8 != -1)
            {
              swift_once();
            }

            v20 = &qword_1005DE0A0;
          }

          else
          {
            v36 = v7[2];
            v37 = v7[4];
            v65 = v7[3];
            v66 = v37;
            v38 = *v7;
            v63 = v7[1];
            v64 = v36;
            v62 = v38;
            *(&v65 + 1) &= ~0x1000000000000000uLL;
            sub_1001915E8(&v62, v61);
            if (qword_1005D2DB0 != -1)
            {
              swift_once();
            }

            v20 = &qword_1005DE0B0;
          }
        }

        else
        {
          v21 = v7[2];
          v22 = v7[4];
          v65 = v7[3];
          v66 = v22;
          v23 = *v7;
          v63 = v7[1];
          v64 = v21;
          v62 = v23;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1001915E8(&v62, v61);
          if (qword_1005D2DA0 != -1)
          {
            swift_once();
          }

          v20 = &qword_1005DE090;
        }
      }

      else
      {
        if (!v16)
        {
          v27 = v7[2];
          v28 = v7[4];
          v65 = v7[3];
          v66 = v28;
          v29 = *v7;
          v63 = v7[1];
          v64 = v27;
          v62 = v29;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1001915E8(&v62, v61);
          v30 = AuthenticationMechanism.plain.unsafeMutableAddressor();
          v32 = *v30;
          v31 = v30[1];
          goto LABEL_31;
        }

        if (v16 == 1)
        {
          v17 = v7[2];
          v18 = v7[4];
          v65 = v7[3];
          v66 = v18;
          v19 = *v7;
          v63 = v7[1];
          v64 = v17;
          v62 = v19;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1001915E8(&v62, v61);
          if (qword_1005D2D90 != -1)
          {
            swift_once();
          }

          v20 = &qword_1005DE070;
        }

        else
        {
          v33 = v7[2];
          v34 = v7[4];
          v65 = v7[3];
          v66 = v34;
          v35 = *v7;
          v63 = v7[1];
          v64 = v33;
          v62 = v35;
          *(&v65 + 1) &= ~0x1000000000000000uLL;
          sub_1001915E8(&v62, v61);
          if (qword_1005D2D98 != -1)
          {
            swift_once();
          }

          v20 = &qword_1005DE080;
        }
      }

      v32 = *v20;
      v31 = v20[1];
LABEL_31:

      v73._countAndFlagsBits = v32;
      v73._object = v31;
      v39 = static Capability.authenticate(_:)(v73);
      v41 = v40;
      v43 = v42;
      v45 = v44;

      *&v62 = v39;
      *(&v62 + 1) = v41;
      *&v63 = v43;
      BYTE8(v63) = v45 & 1;
      __chkstk_darwin(v46);
      v55 = &v62;
      v3 = v59;
      v47 = sub_100215C70(sub_100197740, v54, v59);

      v2 = v58;
      if ((v47 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      v6 = v57;
      result = swift_isUniquelyReferenced_nonNull_native();
      v72 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1001D5FCC(0, v6[2] + 1, 1);
        v6 = v72;
      }

      v5 = v56;
      v49 = v6[2];
      v48 = v6[3];
      if (v49 >= v48 >> 1)
      {
        result = sub_1001D5FCC((v48 > 1), v49 + 1, 1);
        v6 = v72;
      }

      v6[2] = v49 + 1;
      v50 = &v6[10 * v49];
      v50[2] = v67;
      v51 = v68;
      v52 = v69;
      v53 = v71;
      v50[5] = v70;
      v50[6] = v53;
      v50[3] = v51;
      v50[4] = v52;
      v4 = v60;
      if (v60 == v2)
      {
        return v6;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001EFE08()
{
  result = sub_1004A5834();
  qword_1005DE070 = result;
  *algn_1005DE078 = v1;
  return result;
}

uint64_t sub_1001EFE3C()
{
  result = sub_1004A5834();
  qword_1005DE080 = result;
  *algn_1005DE088 = v1;
  return result;
}

uint64_t sub_1001EFE74()
{
  result = sub_1004A5834();
  qword_1005DE090 = result;
  *algn_1005DE098 = v1;
  return result;
}

uint64_t sub_1001EFEA4()
{
  result = sub_1004A5834();
  qword_1005DE0A0 = result;
  *algn_1005DE0A8 = v1;
  return result;
}

uint64_t sub_1001EFEDC()
{
  result = sub_1004A5834();
  qword_1005DE0B0 = result;
  *algn_1005DE0B8 = v1;
  return result;
}

uint64_t sub_1001EFF14(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[7];
  v9 = a1[9];
  v10 = (v9 >> 59) & 6 | ((v8 & 0x2000000000000000) != 0);
  if (v10 > 2)
  {
    if (v10 > 4)
    {
      if (v10 == 5)
      {
        if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 5)
        {
          return 0;
        }
      }

      else if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 6)
      {
        return 0;
      }

LABEL_28:
      v22 = a2[2];
      v23 = a2[3];
      if (v4 == *a2 && v5 == a2[1] || (sub_1004A6D34() & 1) != 0)
      {
        if (v6 == v22 && v7 == v23)
        {
          return 1;
        }

        return sub_1004A6D34();
      }

      return 0;
    }

    if (v10 == 3)
    {
      if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 3)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 4)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (!v10)
  {
    if ((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0))
    {
      return 0;
    }

LABEL_22:
    v19 = a2[2];
    v20 = a2[3];
    if (!sub_10003A194(v4, v5, *a2, a2[1]))
    {
      return 0;
    }

    v4 = v6;
    v5 = v7;
    v18 = v19;
    v17 = v20;
    goto LABEL_24;
  }

  if (v10 == 1)
  {
    v11 = a2[7];
    v12 = a2[9];
    if (((v12 >> 59) & 6 | ((v11 & 0x2000000000000000) != 0)) != 1)
    {
      return 0;
    }

    v28 = a1[5];
    v29 = a1[4];
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[4];
    v16 = a2[5];
    v26 = a2[6];
    v27 = a1[6];
    v24 = a2[8];
    v25 = a1[8];
    if (!sub_10003A194(v4, v5, *a2, a2[1]) || !sub_10003A194(v6, v7, v13, v14) || !sub_10003A194(v29, v28, v15, v16) || !sub_10003A194(v27, v8 & 0xDFFFFFFFFFFFFFFFLL, v26, v11 & 0xDFFFFFFFFFFFFFFFLL))
    {
      return 0;
    }

    v5 = v9 & 0xCFFFFFFFFFFFFFFFLL;
    v17 = v12 & 0xCFFFFFFFFFFFFFFFLL;
    v18 = v24;
    v4 = v25;
  }

  else
  {
    if (((a2[9] >> 59) & 6 | ((a2[7] & 0x2000000000000000) != 0)) != 2)
    {
      return 0;
    }

    v18 = *a2;
    v17 = a2[1];
  }

LABEL_24:

  return sub_10003A194(v4, v5, v18, v17);
}

BOOL sub_1001F01F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if ((v2 & 0x1000000000000000) != 0)
  {
    v3 = qword_1004E36E8[(*(a1 + 72) >> 59) & 6 | (v2 >> 61) & 1];
    v4 = *(a2 + 56);
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 8;
    return v3 < v5;
  }

  v3 = 8;
  v4 = *(a2 + 56);
  if ((v4 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = qword_1004E36E8[(*(a2 + 72) >> 59) & 6 | (v4 >> 61) & 1];
  return v3 < v5;
}

uint64_t sub_1001F0258()
{
  sub_1001F02D8(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);
  v1 = v0[13];
  if (((v1 >> 60) | 4) != 0xF)
  {
    sub_100014D40(v0[12], v1);
  }

  sub_100014D40(v0[14], v0[15]);
  sub_100014D40(v0[16], v0[17]);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_1001F02D8(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v12 = (a10 >> 59) & 6 | ((a8 & 0x2000000000000000) != 0);
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 != 6)
      {
        return result;
      }
    }

    else if (v12 == 4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v12 <= 1)
    {
      if (v12)
      {
        sub_100014D40(result, a2);
        sub_100014D40(a3, a4);
        sub_100014D40(a5, a6);
        sub_100014D40(a7, a8 & 0xDFFFFFFFFFFFFFFFLL);
        a2 = a10 & 0xCFFFFFFFFFFFFFFFLL;
        result = a9;
LABEL_9:

        return sub_100014D40(result, a2);
      }

LABEL_7:
      sub_100014D40(result, a2);
      result = a3;
      a2 = a4;
      goto LABEL_9;
    }

    if (v12 == 2)
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_1001F0410()
{

  sub_1001F02D8(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  if (*(v0 + 160) >= 3uLL)
  {
    v1 = *(v0 + 152);
    if (v1 != 255)
    {
      sub_100191658(*(v0 + 136), *(v0 + 144), v1);
    }
  }

  return _swift_deallocObject(v0, 188, 7);
}

uint64_t sub_1001F04AC()
{
  sub_1001F02D8(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);
  v1 = v0[13];
  if (((v1 >> 60) | 4) != 0xF)
  {
    sub_100014D40(v0[12], v1);
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001F0520()
{
  sub_1001F02D8(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11]);
  v1 = v0[13];
  if (v1 >> 60 != 15)
  {
    sub_100014D40(v0[12], v1);
  }

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001F058C()
{
  sub_1001F05FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1001F0664(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  return _swift_deallocObject(v0, 161, 7);
}

uint64_t sub_1001F05FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  if ((a8 & 0x1000000000000000) != 0)
  {
    v11 = a8 & 0xEFFFFFFFFFFFFFFFLL;

    return sub_1001F02D8(a1, a2, a3, a4, a5, a6, a7, v11, a9, a10);
  }

  else
  {
  }
}

uint64_t sub_1001F0664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 1u)
  {
    if (!a9)
    {
      goto LABEL_13;
    }

    if (a9 != 1)
    {
      return v9;
    }
  }

  else
  {
    if (a9 != 2)
    {
      if (a9 == 3)
      {
LABEL_14:
      }

      if (a9 != 4)
      {
        return v9;
      }

LABEL_13:

      goto LABEL_14;
    }
  }
}

char *sub_1001F0758(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = sub_1004A57F4();
  __chkstk_darwin(v4 - 8);
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[7];
  v8 = a1[9];
  v9 = (v8 >> 59) & 6 | ((v7 & 0x2000000000000000) != 0);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      sub_10000C9C0(&qword_1005D4650, &qword_1004E2A70);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_1004CEAA0;
      v10[4] = v3;
      v10[5] = v2;
      v10[9] = 0;
      v10[11] = 0x1000000000000000;
      v10[13] = 0x1000000000000000;
      sub_100014CEC(v3, v2);
    }

    else if (v9 == 3)
    {
      sub_10000C9C0(&qword_1005D4650, &qword_1004E2A70);
      v10 = swift_allocObject();
      *(v10 + 1) = xmmword_1004CEAA0;
      v10[4] = v3;
      v10[5] = v2;
      v10[6] = v6;
      v10[7] = v5;
      v10[9] = 0;
      v10[11] = 0x3000000000000000;
      v10[13] = 0x1000000000000000;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }

    return v10;
  }

  if (v9)
  {
    v21 = a1[8];
    v22 = a1[5];
    v51 = a1[6];
    v23 = a1[2];
    v24 = v8 & 0xCFFFFFFFFFFFFFFFLL;
    v25 = a1[4];
    sub_10000C9C0(&qword_1005D4650, &qword_1004E2A70);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_1004CEAA0;
    v10[4] = v3;
    v10[5] = v2;
    v10[6] = v23;
    v10[7] = v5;
    v10[8] = v25;
    v10[9] = v22 & 0xCFFFFFFFFFFFFFFFLL;
    v10[10] = v51;
    v10[11] = v7 | 0x3000000000000000;
    v10[12] = v21;
    v10[13] = v24;
    sub_100014CEC(v3, v2);
    sub_100014CEC(v23, v5);
    sub_100014CEC(v25, v22);
    sub_100014CEC(v51, v7 & 0xDFFFFFFFFFFFFFFFLL);
    sub_100014CEC(v21, v24);
    return v10;
  }

  sub_1004A57C4();
  v11 = sub_1004A5784();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_1004A57C4();
    v15 = sub_1004A5784();
    if (v16)
    {
      v17 = v16;
      v49 = v15;
      v50 = v13;
      v10 = sub_1001EBB14(0, 1, 1, _swiftEmptyArrayStorage);
      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        v10 = sub_1001EBB14((v18 > 1), v19 + 1, 1, v10);
      }

      v10[2] = v19 + 1;
      v20 = &v10[10 * v19];
      v20[4] = v50;
      v20[5] = v14;
      v20[6] = v49;
      v20[7] = v17;
      v20[9] = 0;
      v20[11] = 0;
      goto LABEL_16;
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_16:
  sub_100014CEC(v3, v2);
  sub_100014CEC(v6, v5);
  sub_100014CEC(v3, v2);
  sub_100014CEC(v6, v5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1001EBB14(0, v10[2] + 1, 1, v10);
  }

  v27 = v10[2];
  v26 = v10[3];
  v28 = v26 >> 1;
  v29 = v27 + 1;
  if (v26 >> 1 <= v27)
  {
    v10 = sub_1001EBB14((v26 > 1), v27 + 1, 1, v10);
    v26 = v10[3];
    v28 = v26 >> 1;
  }

  v10[2] = v29;
  v30 = &v10[10 * v27];
  v30[4] = v3;
  v30[5] = v2;
  v30[6] = v6;
  v30[7] = v5;
  v30[9] = 0;
  v30[11] = 0x1000000000000000;
  v30[13] = 0x2000000000000000;
  v31 = v27 + 2;
  if (v28 < v31)
  {
    v10 = sub_1001EBB14((v26 > 1), v31, 1, v10);
  }

  v10[2] = v31;
  v32 = &v10[10 * v29];
  v32[4] = v3;
  v32[5] = v2;
  v32[6] = v6;
  v32[7] = v5;
  v32[9] = 0;
  v32[11] = 0x1000000000000000;
  v32[13] = 0;
  sub_1004A57D4();
  v33 = sub_1004A5784();
  if (v34)
  {
    v35 = v33;
    v36 = v34;
    sub_1004A57D4();
    v37 = sub_1004A5784();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = v10[2];
      v42 = v10[3];
      v43 = v42 >> 1;
      v44 = v41 + 1;

      if (v42 >> 1 <= v41)
      {
        v10 = sub_1001EBB14((v42 > 1), v41 + 1, 1, v10);
        v42 = v10[3];
        v43 = v42 >> 1;
      }

      v10[2] = v44;
      v45 = &v10[10 * v41];
      v45[4] = v35;
      v45[5] = v36;
      v45[6] = v39;
      v45[7] = v40;
      v45[9] = 0;
      v45[11] = 0x3000000000000000;
      v45[13] = 0x2000000000000000;
      v46 = v41 + 2;
      if (v43 < v46)
      {
        v10 = sub_1001EBB14((v42 > 1), v46, 1, v10);
      }

      v10[2] = v46;
      v47 = &v10[10 * v44];
      v47[4] = v35;
      v47[5] = v36;
      v47[6] = v39;
      v47[7] = v40;
      v47[9] = 0;
      v47[11] = 0x1000000000000000;
      v47[13] = 0x3000000000000000;
    }

    else
    {
    }
  }

  return v10;
}

uint64_t sub_1001F0D2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 80))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1001F0D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1001F0E20(uint64_t result)
{
  v1 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 56) &= ~0x2000000000000000uLL;
  *(result + 72) = v1;
  return result;
}

void *sub_1001F0E3C(void *result, char a2)
{
  v2 = result[9];
  v3 = result[7] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  result[5] &= 0xCFFFFFFFFFFFFFFFLL;
  result[7] = v3;
  result[9] = v2 & 0xCFFFFFFFFFFFFFFFLL | ((((a2 & 7) >> 1) & 3) << 60);
  return result;
}

unint64_t sub_1001F0E84()
{
  result = qword_1005D4AC0;
  if (!qword_1005D4AC0)
  {
    result = swift_getWitnessTable(byte_1004E367C, &type metadata for MechanismKind.SASLKind, v0, v1);
    atomic_store(result, &qword_1005D4AC0);
  }

  return result;
}

uint64_t sub_1001F0F00()
{
  v1 = sub_1004A5C64();
  *(v1 + 16) = 32;
  *(v1 + 48) = 0u;
  *(v1 + 32) = 0u;
  sub_1001F331C((v1 + 32));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1001EDF00(v1);
  }

  if (*(v1 + 16) <= 0xBuLL)
  {
    goto LABEL_20;
  }

  *(v1 + 40) = 1;
  v2 = *(v0 + 32);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1001EDF00(v1);
  }

  if (*(v1 + 16) <= 0xFuLL)
  {
LABEL_20:
    result = sub_1004A69A4();
    __break(1u);
  }

  else
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v4) & 0xF;
    }

    if (v2)
    {
      v8 = 524807;
    }

    else
    {
      v8 = 519;
    }

    v9 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      v10 = v8 | 0x1000;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v10 |= 0x2000u;
    }

    *(v1 + 44) = v10;
    v11 = sub_1001F2F30(v3, v4);
    sub_1001F2354(v11, 16);

    v12 = sub_1001F2F30(v5, v6);
    sub_1001F2354(v12, 24);

    sub_10015BDC0(_swiftEmptyArrayStorage);
    v13 = sub_1001E194C(v1);

    return v13;
  }

  return result;
}

uint64_t sub_1001F1118(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1004A6D34();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_1004A6D34();
      }

      return 1;
    }

    return 0;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

BOOL sub_1001F11B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1001F5270(v5, v7);
}

uint64_t sub_1001F121C@<X0>(size_t a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1001F158C(a1, a2);
  if (!v3)
  {
    if (a1)
    {
      v10 = a2 - a1;
    }

    else
    {
      v10 = 0;
    }

    if (v10 < 0)
    {
      __break(1u);
    }

    else
    {
      if (sub_1001F19A8(8, 0, v10, a1, a2) != 2)
      {
        sub_1001F6EE0();
        swift_allocError();
        *v11 = 2;
        *(v11 + 8) = 2;
        return swift_willThrow();
      }

      v4 = sub_1001F19A8(20, 0, v10, a1, a2);
      v5 = sub_1001F3468(0x18, 8, a1, a2);
      if ((v4 & 0x800000) != 0)
      {
        v12 = sub_1001F1824(40, 0, v10, a1, a2);
        if (v12)
        {
          v17 = v12;
          v18 = sub_1001F1824(44, 0, v10, a1, a2);
          v10 = 0;
          if (v17 <= 0x7CFu && v18 < 0x7D0u)
          {
            v10 = 0;
            if (a1)
            {
              v28 = 0;
              v19 = (v18 + v17);
              if ((a2 - a1) >= v19)
              {
                v20 = v18;
                v21 = v19 - v18;
                v10 = sub_10015BEAC(v21, 0);
                result = sub_1001F4FAC(v27, (v10 + 32), v21, v20, v19, a1, a2);
                if (result != v21)
                {
                  __break(1u);
                  return result;
                }
              }

              v3 = v28;
            }
          }
        }

        else
        {
          v10 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v10 = 0;
      }

      if ((v4 & 0x2000000) == 0)
      {
        v13 = 0;
LABEL_16:
        v15 = 1;
        goto LABEL_17;
      }

      v14 = sub_1001F3468(0x30, 8, a1, a2);
      if (v3)
      {

        v13 = 0;
        v3 = 0;
        goto LABEL_16;
      }

      v22 = *(v14 + 2);
      v28 = v14;
      if (v22 != 8)
      {
        sub_1001F7120();
        swift_allocError();
        swift_willThrow();

        v13 = 0;
        v15 = 1;
        v3 = 0;
        goto LABEL_17;
      }

      v23 = (v14 + 32);
      v26 = sub_1001F1B2C(0, 0, 8, (v14 + 32), (v14 + 40));
      v25 = sub_1001F1B2C(1, 0, 8, v23, v23 + 8);
      v3 = 0;
      LODWORD(result) = sub_1001F1824(2, 0, 8, v23, v23 + 8);
    }

    v24 = result;

    v15 = 0;
    v13 = v26 | (v25 << 8) | (v24 << 16);
LABEL_17:
    result = sub_1001F16C8(12, v4 & 1, a1, a2);
    if (v3)
    {
    }

    else
    {
      *a3 = v4;
      *(a3 + 8) = v5;
      *(a3 + 16) = result;
      *(a3 + 24) = v16;
      *(a3 + 32) = v10;
      *(a3 + 40) = v13;
      *(a3 + 44) = v15;
    }
  }

  return result;
}

uint64_t sub_1001F158C(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (!a1)
  {
    v2 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || (v3 = v2, v2 > 6))
  {
    v3 = 7;
  }

  *&v12 = 0;
  *(&v12 + 1) = v3;
  *&v13 = a1;
  *(&v13 + 1) = v2;
  v14 = xmmword_1004E3720;
  *&v15 = 0xE700000000000000;
  *(&v15 + 1) = 15;
  v16 = 0;
  while (1)
  {
    v4 = sub_1001F4DFC();
    if ((v4 & 0x10000) != 0)
    {
      break;
    }

    if ((v4 & 0x80) != 0 || v4 != BYTE1(v4))
    {
      v9 = v14;
      v10 = v15;
      v11 = v16;
      v7 = v12;
      v8 = v13;
      sub_100025F40(&v7, &qword_1005D4B30, &qword_1004E39C8);
      sub_1001F6EE0();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 2;
      return swift_willThrow();
    }
  }

  v9 = v14;
  v10 = v15;
  v11 = v16;
  v7 = v12;
  v8 = v13;
  return sub_100025F40(&v7, &qword_1005D4B30, &qword_1004E39C8);
}

uint64_t sub_1001F16C8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (a3)
  {
    v6 = a4 - a3;
  }

  else
  {
    v6 = 0;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v10 = result;
  result = sub_1001F1824(result, 0, v6, a3, a4);
  if (v4)
  {
    return result;
  }

  if (!result)
  {
    return 0;
  }

  v11 = result;
  result = v10 + 4;
  if (__OFADD__(v10, 4))
  {
    goto LABEL_20;
  }

  v12 = sub_1001F1824(result, 0, v6, a3, a4);
  v13 = 2;
  v14 = 3;
  if (v11 <= 0x7CFu && v12 <= 0x7CFu)
  {
    v14 = 3;
    if (a3)
    {
      v15 = (v12 + v11);
      if (v5 >= v15)
      {
        v14 = v15 - v12;
        if ((a2 & 1) == 0)
        {
          return sub_1001F6218((v12 + a3), v14);
        }

        if ((v14 & 1) == 0)
        {
          return sub_1001F62F0(v12 + a3, v11 >> 1);
        }

        v13 = 1;
      }
    }
  }

  sub_1001F6EE0();
  swift_allocError();
  *v16 = v14;
  *(v16 + 8) = v13;
  return swift_willThrow();
}

uint64_t sub_1001F1824(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 2;
  if (__OFADD__(a1, 2))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if (a3 - a2 < v5)
  {
    sub_1001F6EE0();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  return 0;
}

uint64_t sub_1001F19A8(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 4;
  if (__OFADD__(a1, 4))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if (a3 - a2 < v5)
  {
    sub_1001F6EE0();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  return 0;
}

uint64_t sub_1001F1B2C(uint64_t a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = a5 - a4;
  if (!a4)
  {
    v6 = 0;
  }

  if (a2 < 0 || v6 < a2)
  {
    goto LABEL_21;
  }

  if (a3 < 0 || v6 < a3)
  {
    goto LABEL_22;
  }

  if (a3 - a2 < v5)
  {
    sub_1001F6EE0();
    swift_allocError();
    *v7 = 1;
    *(v7 + 8) = 2;
    return swift_willThrow();
  }

  v9 = a2 + a1;
  if (__OFADD__(a2, a1))
  {
    goto LABEL_23;
  }

  if ((v9 & 0x8000000000000000) != 0 || v6 < v9)
  {
    goto LABEL_24;
  }

  v10 = __OFADD__(a2, v5);
  v11 = a2 + v5;
  if (v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v11 & 0x8000000000000000) != 0 || v6 < v11)
  {
    goto LABEL_26;
  }

  if (v11 < v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 < a2)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v11 > a3)
  {
    goto LABEL_29;
  }

  sub_10000C9C0(&qword_1005D4B10, &qword_1004E39C0);
  sub_1001F7048();
  sub_1004A4074();
  return 0;
}

uint64_t sub_1001F1CB0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000FFC98(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1000FFC98(v2, v3);
}

uint64_t sub_1001F1D0C(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 12);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_1004A6D34()) && (v2 == v7 && v4 == v8 || (sub_1004A6D34()) && (sub_1000FFC98(v3, v10))
  {
    return sub_1000FFC98(v5, v9) & (v6 == v11);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F1DEC()
{
  v1 = v0;
  v2 = sub_1004A5C64();
  *(v2 + 16) = 64;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  sub_1001F331C((v2 + 32));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001EDF00(v2);
  }

  if (*(v2 + 16) > 0xBuLL)
  {
    *(v2 + 40) = 3;
    v3 = sub_1001F2F30(*(v1 + 16), *(v1 + 24));
    sub_1001F2354(v3, 28);

    v4 = sub_1001F2F30(*(v1 + 32), *(v1 + 40));
    sub_1001F2354(v4, 36);

    v5 = sub_1001F2F30(*(v1 + 48), *(v1 + 56));
    sub_1001F2354(v5, 44);

    sub_1001F2020(*v1, 12);
    sub_1001F2020(*(v1 + 8), 20);
    v6 = *(v1 + 64);
    if (v6)
    {
      sub_1001F21BC((v6 + 32), *(v6 + 16), 52);
    }

    else
    {
      sub_1001F2020(_swiftEmptyArrayStorage, 52);
    }

    if (*(v1 + 76))
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1001EDF00(v2);
    }

    if (*(v2 + 16) > 0x3FuLL)
    {
      *(v2 + 92) = v7;
LABEL_12:
      sub_10015BDC0(_swiftEmptyArrayStorage);
      v8 = sub_1001E194C(v2);

      return v8;
    }
  }

  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F2020(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;

  sub_10015BDC0(v11);
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1001EDF00(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v8 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v3)
  {
    goto LABEL_25;
  }

  v15 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v5;
  v17 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v3 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v10;
      *v4 = v8;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F21BC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = v3[1];
  v6 = v3 + 1;
  v8 = *(v7 + 16);
  v9 = *v5;
  v10 = *(*v5 + 16);
  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v11))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = a3;
  sub_1002158A0(a1, a2, 0);
  v6 = (*(*v6 + 16) - v8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1001EDF00(v9);
  v9 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v6 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v9 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v4)
  {
    goto LABEL_25;
  }

  v15 = v9 + 32;
  *(v9 + 32 + v4) = v6;
  v16 = v4 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v6;
  v17 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v4 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v11;
      *v5 = v9;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F2354(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = v2[1];
  v5 = v2 + 1;
  v7 = *(v6 + 16);
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = a2;

  sub_100215244(v11);
  v5 = (*(*v5 + 16) - v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1001EDF00(v8);
  v8 = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (v5 >> 16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v3 + 2;
  if (__OFADD__(v3, 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v8 + 16);
  if (v14 < v13)
  {
    goto LABEL_31;
  }

  if (v13 < v3)
  {
    goto LABEL_25;
  }

  v15 = v8 + 32;
  *(v8 + 32 + v3) = v5;
  v16 = v3 + 4;
  if (__OFADD__(v13, 2))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 < v16)
  {
    goto LABEL_31;
  }

  if (v16 < v13)
  {
    goto LABEL_27;
  }

  *(v15 + v13) = v5;
  v17 = v3 + 4;
  if (__OFADD__(v3, 4))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v3 + 8;
  if (__OFADD__(v17, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v14 >= v18)
  {
    if (v18 >= v17)
    {
      *(v15 + v17) = v10;
      *v4 = v8;
      return result;
    }

LABEL_30:
    __break(1u);
  }

LABEL_31:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_1001F24F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a2(a1);
  v3 = *(v2 + 2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_2:
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v2 = sub_10015BF20((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v6;
  v2[v5 + 32] = 0x80;
  v23 = v2;
  if (v5 > 0xFFFFFFFFFFFFFFELL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if ((v6 & 0x100000000000003FLL) == 0x38)
  {
    goto LABEL_12;
  }

  v7 = v5 + 33;
  do
  {
    v8 = *(v2 + 3);
    v9 = v7 - 31;
    if (v7 - 32 >= v8 >> 1)
    {
      v2 = sub_10015BF20((v8 > 1), v7 - 31, 1, v2);
    }

    *(v2 + 2) = v9;
    v2[v7] = 0;
    if (v7 - 32 > 0xFFFFFFFFFFFFFFELL)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v2 = sub_10015BF20(0, v3 + 1, 1, v2);
      goto LABEL_2;
    }

    ++v7;
  }

  while ((v9 & 0x100000000000003FLL) != 0x38);
  v23 = v2;
LABEL_12:
  if (v3 >> 60)
  {
LABEL_26:
    __break(1u);
  }

  v22 = 8 * v3;
  sub_100215418(&v22, &v23);
  v22 = v3 >> 29;
  sub_100215418(&v22, &v23);
  v10 = 1732584193;
  v11 = -271733879;
  v21 = -271733879;
  v22 = 1732584193;
  v12 = -1732584194;
  v13 = 271733878;
  v19 = 271733878;
  v20 = -1732584194;
  v2 = v23;
  v14 = *(v23 + 2);
  if (v14 >= 4)
  {
    v15 = 0;
    v3 = v14 >> 2;
    do
    {
      v16 = &v2[4 * v15 + 32];
      v24[0] = *v16;
      v24[1] = v16[1];
      v24[2] = v16[2];
      v24[3] = v16[3];
      v24[4] = v16[4];
      v24[5] = v16[5];
      v24[6] = v16[6];
      v24[7] = v16[7];
      v24[8] = v16[8];
      v24[9] = v16[9];
      v24[10] = v16[10];
      v24[11] = v16[11];
      v24[12] = v16[12];
      v24[13] = v16[13];
      v24[14] = v16[14];
      v24[15] = v16[15];
      sub_1001F7890(&v22, &v21, &v20, &v19, v24);
      if (v3 - v15 >= 0x10)
      {
        v15 += 16;
      }

      else
      {
        v15 = v3;
      }

      if (v3 < v15)
      {
        goto LABEL_23;
      }
    }

    while (v15 != v3);
    v11 = v21;
    v10 = v22;
    v13 = v19;
    v12 = v20;
  }

  v17 = sub_1004A5C64();
  *(v17 + 16) = 16;
  *(v17 + 32) = v10;
  *(v17 + 36) = v11;
  *(v17 + 40) = v12;
  *(v17 + 44) = v13;

  return v17;
}

void *sub_1001F27D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 16)
  {
LABEL_9:
    __break(1u);
  }

  swift_bridgeObjectRetain_n();
  sub_1001F4784(a1, a1 + 32, 0, 0xFuLL);
  v6 = v5;
  v20 = v5;
  sub_1001F4784(a1, a1 + 32, 7, 0x1DuLL);
  v8 = v7;

  v21 = v8;
  sub_1001F4784(a1, a1 + 32, 14, 0x21uLL);
  v10 = v9;

  sub_10015BDC0(&off_1005A3868);
  v22 = v10;
  v18 = _swiftEmptyArrayStorage;
  if (*(v6 + 16) != 7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1001F2A50(&v17, key, 8uLL, v6, a2);
  if (!v2)
  {
    v11 = v17;

    sub_10015BDC0(v11);
    v12 = v21;
    if (*(v21 + 16) == 7)
    {

      sub_1001F2A50(&v17, key, 8uLL, v12, a2);
      v13 = v17;

      sub_10015BDC0(v13);
      v14 = v22;
      if (*(v22 + 16) == 7)
      {

        sub_1001F2A50(&v17, key, 8uLL, v14, a2);
        v15 = v17;

        sub_10015BDC0(v15);
        sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
        swift_arrayDestroy();
        return v18;
      }
    }

    goto LABEL_8;
  }

  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  swift_arrayDestroy();

  swift_willThrow();
}

uint64_t *sub_1001F2A50@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *key@<X0>, size_t keyLength@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *(a4 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a4 + 32);
  *key = v8;
  if (v7 == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(a4 + 33);
  HIDWORD(v10) = v8;
  LODWORD(v10) = v9 << 24;
  key[1] = v10 >> 25;
  if (v7 < 3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(a4 + 34);
  HIDWORD(v12) = v9;
  LODWORD(v12) = v11 << 24;
  key[2] = v12 >> 26;
  if (v7 == 3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(a4 + 35);
  HIDWORD(v14) = v11;
  LODWORD(v14) = v13 << 24;
  key[3] = v14 >> 27;
  if (v7 < 5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(a4 + 36);
  HIDWORD(v16) = v13;
  LODWORD(v16) = v15 << 24;
  key[4] = v16 >> 28;
  if (v7 == 5)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v17 = *(a4 + 37);
  HIDWORD(v18) = v15;
  LODWORD(v18) = v17 << 24;
  key[5] = v18 >> 29;
  if (v7 < 7)
  {
    goto LABEL_18;
  }

  v19 = *(a4 + 38);
  HIDWORD(v20) = v17;
  LODWORD(v20) = v19 << 24;
  key[6] = v20 >> 30;
  key[7] = 2 * v19;
  result = sub_1001F2BAC(&v22, dataOut, key, keyLength, (a5 + 32), &v24, a5 + 32 + *(a5 + 16));
  if (v5)
  {
    return swift_willThrow();
  }

  *a1 = v22;
  return result;
}

uint64_t *sub_1001F2BAC@<X0>(uint64_t *__return_ptr a1@<X8>, void *dataOut@<X0>, void *key@<X2>, size_t keyLength@<X3>, void *dataIn@<X4>, size_t a6@<X1>, uint64_t a7@<X5>)
{
  if (dataIn)
  {
    v10 = a7 - dataIn;
  }

  else
  {
    v10 = 0;
  }

  if (dataOut)
  {
    v11 = a6 - dataOut;
  }

  else
  {
    v11 = 0;
  }

  dataOutMoved = 0;
  result = CCCrypt(0, 1u, 2u, key, keyLength, 0, dataIn, v10, dataOut, v11, &dataOutMoved);
  if (result)
  {
    v13 = result;
    sub_1001F720C();
    swift_allocError();
    *v14 = v13;
    return swift_willThrow();
  }

  if ((dataOutMoved & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v11 >= dataOutMoved)
  {
    v11 = dataOutMoved;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v15 = sub_10015BEAC(v11, 0);
  result = sub_1001F4FAC(v17, v15 + 4, v11, 0, v11, dataOut, a6);
  if (result != v11)
  {
    __break(1u);
LABEL_16:
    v15 = _swiftEmptyArrayStorage;
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1001F2D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1004A5474();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001F2F30(a3, a4);
  v15 = sub_1001F24F0(v14, sub_1001B429C);

  v21 = sub_1004A5834();
  v22 = v16;

  v23._countAndFlagsBits = a5;
  v23._object = a6;
  sub_1004A5994(v23);

  sub_1001F2F30(v21, v22);

  v21 = sub_1001D93E4(v17);
  v22 = v18;
  v20[1] = v15;
  sub_10000C9C0(&unk_1005D8FF0, &unk_1004DC230);
  sub_10000DF44(&qword_1005D2F10, &unk_1005D8FF0, &unk_1004DC230, &protocol conformance descriptor for <A> [A]);
  sub_1004A5464();
  sub_1004A54D4();
  sub_1001CFC28();
  sub_1001CFC80();
  sub_1004A5484();

  (*(v11 + 8))(v13, v10);
  return sub_100014D40(v21, v22);
}

uint64_t sub_1001F2F30(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  *(v6 + 50) = 1;
  sub_10000C9C0(&qword_1005D4B00, &qword_1004E39B8);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001F71BC;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v7;
  sub_10000C9C0(&qword_1005D4B38, &unk_1004E39D0);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1001F7204;
  *(v9 + 24) = v8;

  return v9;
}

uint64_t sub_1001F3058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004A5C64();
  v7 = v6;
  *(v6 + 16) = 28;
  *(v6 + 34) = 0;
  *(v6 + 42) = 0;
  *(v6 + 50) = 0;
  *(v6 + 58) = 0;
  *(v6 + 32) = 257;
  *(v6 + 40) = a1;
  if (*(a2 + 16) >= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  memmove((v6 + 48), (a2 + 32), v8);
  if (a3)
  {

    sub_10015BDC0(v9);
  }

  v10 = sub_1004A5C64();
  *(v10 + 16) = 4;
  *(v10 + 32) = 0;
  sub_10015BDC0(v10);
  return v7;
}

uint64_t sub_1001F3190()
{
  v1 = sub_1004A6CE4();
  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  sub_1004A5994(v2);
  v3._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v3);

  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  sub_1004A5994(v4);
  v5._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v5);

  return v1;
}

uint64_t sub_1001F3278(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1004A6D34(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1004A6D34();
    }
  }

  return result;
}

uint64_t sub_1001F331C(void *a1)
{
  v2 = sub_1004A5844();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2;
    sub_1001D606C(0, v3, 0);
    result = v4;
    for (i = 0; i != v3; ++i)
    {
      if (i >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v7 = aNtlmssp[i];
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1001D606C((v8 > 1), v9 + 1, 1);
        result = v4;
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v7;
    }

    if (!a1)
    {
    }
  }

  else
  {

    if (!a1)
    {
    }
  }

  memmove(a1, &_swiftEmptyArrayStorage[4], _swiftEmptyArrayStorage[2]);
}

char *sub_1001F3468(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    if (result <= 0)
    {
      v5 = &result[a2];
      if (__OFADD__(result, a2))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v5 <= 0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    sub_1001F6EE0();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 2;
    swift_willThrow();
    return v4;
  }

  if (a4 - a3 < result)
  {
    goto LABEL_9;
  }

  v5 = &result[a2];
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (a4 - a3 < v5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v7 = v5 - result;
  if (v5 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == result)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = result;
  result = sub_10015BEAC(v5 - result, 0);
  v10 = (v9 + v7);
  if (__OFADD__(v9, v7))
  {
    goto LABEL_28;
  }

  if (v10 >= v9)
  {
    v4 = result;
    if (v10 == v9)
    {
      if (v7)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      if (a3)
      {
        v11 = v9 + a3;
      }

      else
      {
        v11 = 0;
      }

      memcpy(result + 32, v11, v7);
    }

    return v4;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001F35AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    if (v6 == *(a1 + 24))
    {
      LOWORD(v6) = 0;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      *(a1 + 16) = v6 + 1;
      LOWORD(v6) = *v6;
    }
  }

  *a2 = v6;
  *(a2 + 2) = v4;
  return result;
}

Swift::UInt32 (__swiftcall *sub_1001F3630())(IMAP2Persistence::CredentialsRequestID)
{
  LODWORD(v1) = *v0;
  v2 = *(v0 + 4);
  v17 = *v0;
  v18 = v2;
  if (!v2)
  {
    sub_1004A6AA4();
    if (v16)
    {
LABEL_3:
      v3 = 0;
      *v0 = v1;
      *(v0 + 4) = 0;
      v4 = 1;
LABEL_27:
      LOBYTE(v15) = v4;
      return (v3 | (v4 << 32));
    }

    LODWORD(v3) = v15;
    if ((v15 & 0xF800) != 0xD800)
    {
      v7 = 0;
      goto LABEL_26;
    }

    LODWORD(v1) = v1 & 0xFFFF0000 | v15;
    v2 = 16;
LABEL_6:
    sub_1004A6AA4();
    if (v16)
    {
      v5 = v2;
      goto LABEL_8;
    }

    LODWORD(v1) = ((-65535 << v2) - 1) & v1 | (v15 << v2);
    v5 = v2 + 16;
    if ((v2 + 16) <= 0x1Fu)
    {
      sub_1004A6AA4();
      if (v16)
      {
        goto LABEL_8;
      }

      LODWORD(v1) = ((-65535 << v5) - 1) & v1 | (v15 << v5);
      v5 = v2 + 32;
      if (v2 >= 0xE0)
      {
        sub_1004A6AA4();
        if ((v16 & 1) == 0)
        {
          v6 = ((-65535 << v2) - 1) & v1 | (v15 << v2);
          v5 = v2 + 48;
LABEL_17:
          v8 = v6 & 0xFC00FC00;
          if ((v6 & 0xFC00FC00) == 0xDC00D800)
          {
            v9 = 32;
          }

          else
          {
            v9 = 16;
          }

          v7 = v5 - v9;
          v10 = v8 == -603924480;
          if (v8 == -603924480)
          {
            v11 = 32;
          }

          else
          {
            v11 = 16;
          }

          v1 = v6 >> v11;
          if (!v10)
          {
            *v0 = v1;
            *(v0 + 4) = v7;
            v3 = 1;
            v4 = 1;
            goto LABEL_27;
          }

          LODWORD(v3) = (HIWORD(v6) & 0x3FF | ((v6 & 0x3FF) << 10)) + 0x10000;
LABEL_26:
          v4 = 0;
          *v0 = v1;
          *(v0 + 4) = v7;
          v3 = v3;
          goto LABEL_27;
        }

LABEL_8:
        v6 = v1;
        if (!v5)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v6 = v1;
    goto LABEL_17;
  }

  if ((v1 & 0xF800) == 0xD800)
  {
    goto LABEL_6;
  }

  sub_1001F6FF4();
  result = UnsafeExtractedAttachment.part.modify();
  v14 = *(v13 + 4);
  if (v14)
  {
    *v13 = *(v13 + 2);
    *(v13 + 4) = v14 - 16;
    (result)(&v15, 0);
    LODWORD(v3) = v1;
    LODWORD(v1) = v17;
    v7 = v18;
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void *sub_1001F3878@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  if (*(a1 + 17) == 1)
  {
    result = sub_1004A6AA4();
    if (v9)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v5 = v7;
      result = swift_beginAccess();
      v6 = 0;
      *(a1 + 16) = v8;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    result = swift_beginAccess();
    v6 = 0;
    *(a1 + 16) = 256;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1001F3944@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  v3 = sub_1004A5A44();
  result = swift_endAccess();
  *a2 = v3;
  *(a2 + 2) = BYTE2(v3) & 1;
  return result;
}

BOOL sub_1001F39F0(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1001F3A20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1001F3A4C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1001F3B38@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1001F3B48@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1001F7278(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1001F3B88(int a1)
{
  if (a1)
  {
    v2 = sub_100085070(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100085070((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 0xD000000000000010;
    *(v5 + 5) = 0x80000001004AC0C0;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100085070((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    strcpy(v8 + 32, "negotiateOEM");
    v8[45] = 0;
    *(v8 + 23) = -5120;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_38;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100085070((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  strcpy(v11 + 32, "requestTarget");
  *(v11 + 23) = -4864;
  if ((a1 & 0x10) == 0)
  {
LABEL_9:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_38:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100085070((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "negotiateSign");
  *(v14 + 23) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_10:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_43:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_100085070((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  strcpy(v17 + 32, "negotiateSeal");
  *(v17 + 23) = -4864;
  if ((a1 & 0x40) == 0)
  {
LABEL_11:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_48:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100085070((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000016;
  *(v20 + 5) = 0x80000001004AC0A0;
  if ((a1 & 0x80) == 0)
  {
LABEL_12:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_53:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100085070((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0xD000000000000016;
  *(v23 + 5) = 0x80000001004AC080;
  if ((a1 & 0x200) == 0)
  {
LABEL_13:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_58:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100085070((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  strcpy(v26 + 32, "negotiateNTLM");
  *(v26 + 23) = -4864;
  if ((a1 & 0x800) == 0)
  {
LABEL_14:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_68;
  }

LABEL_63:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100085070((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000012;
  *(v29 + 5) = 0x80000001004AC060;
  if ((a1 & 0x1000) == 0)
  {
LABEL_15:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_73;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100085070((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0xD000000000000017;
  *(v32 + 5) = 0x80000001004AC040;
  if ((a1 & 0x2000) == 0)
  {
LABEL_16:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_78;
  }

LABEL_73:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100085070((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD00000000000001CLL;
  *(v35 + 5) = 0x80000001004AC020;
  if ((a1 & 0x8000) == 0)
  {
LABEL_17:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_78:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100085070((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000013;
  *(v38 + 5) = 0x80000001004AC000;
  if ((a1 & 0x10000) == 0)
  {
LABEL_18:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_88;
  }

LABEL_83:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100085070((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD000000000000010;
  *(v41 + 5) = 0x80000001004ABFE0;
  if ((a1 & 0x20000) == 0)
  {
LABEL_19:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_93;
  }

LABEL_88:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100085070((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000010;
  *(v44 + 5) = 0x80000001004ABFC0;
  if ((a1 & 0x80000) == 0)
  {
LABEL_20:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_98;
  }

LABEL_93:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v46 = *(v2 + 2);
  v45 = *(v2 + 3);
  if (v46 >= v45 >> 1)
  {
    v2 = sub_100085070((v45 > 1), v46 + 1, 1, v2);
  }

  *(v2 + 2) = v46 + 1;
  v47 = &v2[16 * v46];
  *(v47 + 4) = 0xD000000000000011;
  *(v47 + 5) = 0x80000001004ABFA0;
  if ((a1 & 0x100000) == 0)
  {
LABEL_21:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_103;
  }

LABEL_98:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v49 = *(v2 + 2);
  v48 = *(v2 + 3);
  if (v49 >= v48 >> 1)
  {
    v2 = sub_100085070((v48 > 1), v49 + 1, 1, v2);
  }

  *(v2 + 2) = v49 + 1;
  v50 = &v2[16 * v49];
  *(v50 + 4) = 0xD000000000000011;
  *(v50 + 5) = 0x80000001004ABF80;
  if ((a1 & 0x400000) == 0)
  {
LABEL_22:
    if ((a1 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_108;
  }

LABEL_103:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v52 = *(v2 + 2);
  v51 = *(v2 + 3);
  if (v52 >= v51 >> 1)
  {
    v2 = sub_100085070((v51 > 1), v52 + 1, 1, v2);
  }

  *(v2 + 2) = v52 + 1;
  v53 = &v2[16 * v52];
  *(v53 + 4) = 0xD000000000000016;
  *(v53 + 5) = 0x80000001004ABF60;
  if ((a1 & 0x800000) == 0)
  {
LABEL_23:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_113;
  }

LABEL_108:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v55 = *(v2 + 2);
  v54 = *(v2 + 3);
  if (v55 >= v54 >> 1)
  {
    v2 = sub_100085070((v54 > 1), v55 + 1, 1, v2);
  }

  *(v2 + 2) = v55 + 1;
  v56 = &v2[16 * v55];
  *(v56 + 4) = 0xD000000000000013;
  *(v56 + 5) = 0x80000001004ABF40;
  if ((a1 & 0x2000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_118;
  }

LABEL_113:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v58 = *(v2 + 2);
  v57 = *(v2 + 3);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_100085070((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 2) = v58 + 1;
  v59 = &v2[16 * v58];
  *(v59 + 4) = 0xD000000000000010;
  *(v59 + 5) = 0x80000001004ABF20;
  if ((a1 & 0x20000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_123;
  }

LABEL_118:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v61 = *(v2 + 2);
  v60 = *(v2 + 3);
  if (v61 >= v60 >> 1)
  {
    v2 = sub_100085070((v60 > 1), v61 + 1, 1, v2);
  }

  *(v2 + 2) = v61 + 1;
  v62 = &v2[16 * v61];
  strcpy(v62 + 32, "negotiate128");
  v62[45] = 0;
  *(v62 + 23) = -5120;
  if ((a1 & 0x40000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

LABEL_123:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
  }

  v64 = *(v2 + 2);
  v63 = *(v2 + 3);
  if (v64 >= v63 >> 1)
  {
    v2 = sub_100085070((v63 > 1), v64 + 1, 1, v2);
  }

  *(v2 + 2) = v64 + 1;
  v65 = &v2[16 * v64];
  *(v65 + 4) = 0xD000000000000014;
  *(v65 + 5) = 0x80000001004ABF00;
  if (a1 < 0)
  {
LABEL_128:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100085070(0, *(v2 + 2) + 1, 1, v2);
    }

    v67 = *(v2 + 2);
    v66 = *(v2 + 3);
    if (v67 >= v66 >> 1)
    {
      v2 = sub_100085070((v66 > 1), v67 + 1, 1, v2);
    }

    *(v2 + 2) = v67 + 1;
    v68 = &v2[16 * v67];
    *(v68 + 4) = 0x746169746F67656ELL;
    *(v68 + 5) = 0xEB00000000363565;
  }

LABEL_133:
  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770, &protocol conformance descriptor for [A]);
  v69 = sub_1004A5614();

  return v69;
}

void sub_1001F4784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t _s9OSVersionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9OSVersionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1001F48BC()
{
  result = qword_1005D4AC8;
  if (!qword_1005D4AC8)
  {
    result = swift_getWitnessTable("95\n", &_s5FlagsVN, v0, v1);
    atomic_store(result, &qword_1005D4AC8);
  }

  return result;
}

unint64_t sub_1001F4914()
{
  result = qword_1005D4AD0;
  if (!qword_1005D4AD0)
  {
    result = swift_getWitnessTable(")7\n", &_s5FlagsVN, v0, v1);
    atomic_store(result, &qword_1005D4AD0);
  }

  return result;
}

unint64_t sub_1001F496C()
{
  result = qword_1005D4AD8;
  if (!qword_1005D4AD8)
  {
    result = swift_getWitnessTable("9<\n", &_s5FlagsVN, v0, v1);
    atomic_store(result, &qword_1005D4AD8);
  }

  return result;
}

unint64_t sub_1001F49C4()
{
  result = qword_1005D4AE0;
  if (!qword_1005D4AE0)
  {
    result = swift_getWitnessTable(byte_1004E3890, &_s5FlagsVN, v0, v1);
    atomic_store(result, &qword_1005D4AE0);
  }

  return result;
}

uint64_t sub_1001F4A18(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1004A54D4();
      sub_1001CFC28();
      return sub_1004A5414();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001F4CB8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1001F4CB8(v5, v6);
  }

  sub_1004A54D4();
  sub_1001CFC28();
  return sub_1004A5414();
}

size_t sub_1001F4B98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_1001F121C(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1001F4D68(v5, v6, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001F4D68(v5, v6, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_1001F121C(v8, v4, a3);
}

uint64_t sub_1001F4CB8(uint64_t a1, uint64_t a2)
{
  result = sub_1004A40D4();
  if (!result || (result = sub_1004A4104(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1004A40F4();
      sub_1004A54D4();
      sub_1001CFC28();
      return sub_1004A5414();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_1001F4D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1004A40D4();
  v7 = result;
  if (result)
  {
    result = sub_1004A4104();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1004A40F4();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_1001F121C(v7, v13, a3);
}

uint64_t sub_1001F4DFC()
{
  if (*(v0 + 64))
  {
    v1 = 0;
    v2 = 1;
    return v1 | (v2 << 16);
  }

  v3 = *(v0 + 32);
  if (v3 == *(v0 + 8) || ((v4 = *(*(v0 + 16) + v3), *(v0 + 32) = v3 + 1, v5 = *(v0 + 40), v6 = *(v0 + 48), (v6 & 0x2000000000000000) != 0) ? (v7 = HIBYTE(v6) & 0xF) : (v7 = v5 & 0xFFFFFFFFFFFFLL), v8 = *(v0 + 56), v8 >> 14 == 4 * v7))
  {
    v1 = 0;
    v2 = 1;
    *(v0 + 64) = 1;
    return v1 | (v2 << 16);
  }

  v9 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = *(v0 + 56) & 0xCLL;
  v11 = 4 << v9;
  v12 = *(v0 + 56);
  if (v10 == v11)
  {
    v24 = *(v0 + 56);
    v27 = *(v0 + 40);
    v16 = *(v0 + 48);
    v17 = sub_10010C210(v8, v5, v6);
    v6 = v16;
    v12 = v17;
    v8 = v24;
    v5 = v27;
  }

  v13 = v12 >> 16;
  if (v12 >> 16 >= v7)
  {
    __break(1u);
LABEL_23:
    v25 = v8;
    v28 = v5;
    v18 = v6;
    v19 = sub_1004A5A24();
    v6 = v18;
    v13 = v19;
    v8 = v25;
    v5 = v28;
    if (v10 == v11)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v31[0] = v5;
    v31[1] = v6 & 0xFFFFFFFFFFFFFFLL;
    v14 = v31;
  }

  else
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_30;
    }

    v14 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  while (1)
  {
    LOBYTE(v13) = *(v14 + v13);
    if (v10 == v11)
    {
LABEL_24:
      v29 = v5;
      v22 = v6;
      v8 = sub_10010C210(v8, v5, v6);
      v6 = v22;
      v5 = v29;
      if ((v22 & 0x1000000000000000) == 0)
      {
LABEL_21:
        v15 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_27;
      }
    }

    else
    {
LABEL_20:
      if ((v6 & 0x1000000000000000) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v7 > v8 >> 16)
    {
      break;
    }

    __break(1u);
LABEL_30:
    v26 = v8;
    v30 = v5;
    v23 = v6;
    v21 = sub_1004A67E4();
    v5 = v30;
    v14 = v21;
    v6 = v23;
    v8 = v26;
  }

  v15 = sub_1004A59F4();
LABEL_27:
  v2 = 0;
  *(v0 + 56) = v15;
  v1 = v4 & 0xFFFF00FF | (v13 << 8);
  return v1 | (v2 << 16);
}

size_t *sub_1001F4FAC(size_t *result, void *__dst, int64_t a3, uint64_t a4, uint64_t a5, size_t a6, size_t a7)
{
  if (!a6)
  {
    goto LABEL_16;
  }

  v7 = a7 - a6;
  if ((a7 - a6) < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 < a4)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 < a5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(a4, a5 - a4))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a5 < a4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = 0;
  if (a5 != a4 && a3)
  {
    if (a5 - a4 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = a5 - a4;
    }

    v9 = result;
    v10 = a7;
    v11 = a6;
    v12 = a5;
    v13 = a4;
    memcpy(__dst, (a6 + a4), v8);
    a4 = v13;
    result = v9;
    a5 = v12;
    a6 = v11;
    a7 = v10;
  }

  v14 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_25;
  }

  if (v14 <= v7)
  {
LABEL_19:
    result[3] = a7;
    result[4] = v14;
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    return v8;
  }

  __break(1u);
LABEL_16:
  if (a4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!a5)
  {
    v14 = 0;
    v8 = 0;
    goto LABEL_19;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001F50B4(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          if (a1 == a4 && a2 == a5)
          {
            return 1;
          }

          return sub_1004A6D34();
        }
      }

      else if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1004A6D34();
    }
  }

  else if (a3 > 4u)
  {
    if (a3 == 5)
    {
      if (a6 == 5)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_1004A6D34();
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 6 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 6 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 6 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 6 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3 == 3)
  {
    if (a6 == 3)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_1004A6D34();
    }
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_1004A6D34();
  }

  return 0;
}

BOOL sub_1001F5270(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v5 == 255)
  {
    return 0;
  }

  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  if (!v4)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

LABEL_16:
    if ((v9 != v10 || a1[1] != v11) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }

LABEL_3:
    if (sub_1001CE964(a1[3], a2[3]))
    {
      v6 = a1[4];
      v7 = a2[4];
      if (v6)
      {
        if (!v7 || (sub_1000FFC98(v6, v7) & 1) == 0)
        {
          return 0;
        }

LABEL_24:
        if (sub_1000FFC98(a1[5], a2[5]))
        {
          return *(a1 + 12) == *(a2 + 12);
        }

        return 0;
      }

      if (!v7)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (v5 != 1)
    {
      return 0;
    }

    goto LABEL_16;
  }

  result = 0;
  if (v5 == 2 && !(v11 | v10))
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1001F5368(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v43 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a9;
  v16 = sub_1004A54D4();
  v47 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000C9C0(&qword_1005D3648, &unk_1004DD4F0);
  __chkstk_darwin(v45);
  v20 = &v38 - v19;
  v21 = *(a5 + 16);
  if (v21)
  {
    v22 = (a5 + 48);
    while (*v22 != 1)
    {
      v22 += 24;
      if (!--v21)
      {
        goto LABEL_5;
      }
    }

    v23 = *(v22 - 1);
    v39 = *(v22 - 2);
    v46 = v23;
  }

  else
  {
LABEL_5:
    v39 = 0;
    v46 = 0xE000000000000000;
  }

  v24 = sub_1001F2F30(a3, a4);
  v25 = sub_1001F24F0(v24, sub_1001B429C);

  v26 = sub_1004A5C64();
  v26[2] = 16;
  v26[4] = 0;
  v26[5] = 0;
  v48 = a8;

  sub_10015BDC0(v26);
  v44 = v48;
  v48 = a6;

  sub_10015BDC0(v27);
  v28 = sub_1001E194C(v48);
  v30 = v29;

  sub_1001CFC28();
  sub_1004A5434();
  sub_100014CEC(v28, v30);
  sub_1001F4A18(v28, v30, v18);
  sub_100014D40(v28, v30);
  sub_1004A5424();
  sub_100014D40(v28, v30);
  (*(v47 + 8))(v18, v16);
  *&v20[*(v45 + 36)] = 8;
  v31 = sub_1001B3D68(v20);
  sub_100025F40(v20, &qword_1005D3648, &unk_1004DD4F0);
  v32 = sub_1001F27D8(v25, v31);
  if (v10)
  {
  }

  else
  {
    v33 = v32;

    v35 = v42;
    v36 = v39;
    *v42 = v40;
    v35[1] = v34;
    v37 = v46;
    v35[2] = v36;
    v35[3] = v37;
    v35[4] = v44;
    v35[5] = v33;
    *(v35 + 12) = v43;
  }
}

double sub_1001F56C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W6>, uint64_t a7@<X8>, uint64_t a8@<X5>)
{
  v15 = sub_1001F2F30(a3, a4);
  v16 = sub_1001F24F0(v15, sub_1001B429C);

  v17 = sub_1001F27D8(v16, a8);

  if (!v8)
  {
    v19 = *(a5 + 16);
    if (v19)
    {
      v20 = (a5 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_6;
        }
      }

      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      sub_1001F7260(v21, v22, 1u);
    }

    else
    {
LABEL_6:
      v21 = 0;
      v22 = 0xE000000000000000;
    }

    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = v21;
    *(a7 + 24) = v22;
    *(a7 + 32) = v17;
    *(a7 + 40) = v17;
    *(a7 + 48) = a6;
  }

  return result;
}

void sub_1001F57E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, char *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v124 = a7;
  v114 = a6;
  v17 = sub_1004A5474();
  v18 = *(v17 - 8);
  v120 = v17;
  v121 = v18;
  __chkstk_darwin(v17);
  v116 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10000C9C0(&qword_1005D4018, &qword_1004DFEA0);
  v20 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v119 = &v92 - v23;
  __chkstk_darwin(v24);
  v117 = &v92 - v25;
  __chkstk_darwin(v26);
  v115 = &v92 - v27;
  __chkstk_darwin(v28);
  v122 = &v92 - v29;
  v30 = sub_1004A44E4();
  __chkstk_darwin(v30);
  v32 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  if ((a8 & 0x80000) != 0)
  {
    v47 = sub_1004A5C64();
    *(v47 + 16) = 8;
    *(v47 + 32) = 0;
    CCRandomGenerateBytes((v47 + 32), 8uLL);
    v48 = v123;
    sub_1001F5368(a1, a2, a3, a4, a5, v124, a8, v47, v127);

    if (v48)
    {
      return;
    }

    v49 = v128;
    v51 = v127[4];
    v50 = v127[5];
    v52 = v127[2];
    v53 = v127[3];
    v54 = v127[0];
    v55 = v127[1];
    goto LABEL_20;
  }

  v110 = a3;
  v111 = a4;
  v113 = a2;
  v109 = a8;
  if (a10)
  {
    v37 = v36;
    v107 = v34;
    v108 = v20;
    v106 = &v92 - v35;
    sub_1004A44D4();
    v38 = sub_1004A5C64();
    *(v38 + 16) = 8;
    v39 = v38;
    *(v38 + 32) = 0;
    CCRandomGenerateBytes((v38 + 32), 8uLL);
    v40 = *(a5 + 16);
    if (v40)
    {
      v41 = (a5 + 48);
      v42 = v118;
      v43 = v111;
      v44 = v110;
      while (*v41 != 1)
      {
        v41 += 24;
        if (!--v40)
        {
          v45 = 0;
          v46 = 0xE000000000000000;
          goto LABEL_14;
        }
      }

      v57 = *(v41 - 2);
      v58 = v111;
      v59 = v110;

      v45 = v57;
      v44 = v59;
      v43 = v58;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      v42 = v118;
      v43 = v111;
      v44 = v110;
    }

LABEL_14:
    v105 = a1;
    v104 = v45;
    v103 = v46;
    sub_1001F2D04(a1, v113, v44, v43, v45, v46);
    v60 = v107;
    (*(v37 + 16))(v32, v106, v107);
    sub_1004A44A4();
    v62 = round((v61 + 1.16444736e10) * 10000000.0);
    v63 = *(v37 + 8);
    v102 = v37 + 8;
    v63(v32, v60);
    if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v62 > -1.0)
    {
      if (v62 < 1.84467441e19)
      {
        v93 = v63;
        v94 = a9;
        v101 = v39;
        v64 = sub_1001F3058(v62, v39, v114);
        v125 = v124;
        swift_bridgeObjectRetain_n();

        sub_10015BDC0(v65);
        v66 = sub_1001E194C(v125);
        v68 = v67;

        v125 = v66;
        v126 = v68;
        v69 = v108;
        v70 = *(v108 + 16);
        v71 = v117;
        v118 = v108 + 16;
        v114 = v70;
        v70(v117, v122, v42);
        v72 = sub_10000DF44(&qword_1005D4030, &qword_1005D4018, &qword_1004DFEA0, &protocol conformance descriptor for HashedAuthenticationCode<A>);
        v73 = v116;
        v100 = v72;
        sub_1004A5464();
        v74 = sub_1004A54D4();
        v75 = sub_1001CFC28();
        v76 = sub_1001CFC80();
        v77 = v115;
        v99 = v74;
        v98 = v75;
        v97 = v76;
        sub_1004A5484();
        v78 = v121 + 8;
        v96 = *(v121 + 8);
        v96(v73, v120);
        sub_100014D40(v125, v126);
        v79 = *(v64 + 16);
        v95 = sub_10000DF44(&qword_1005D4B40, &qword_1005D4018, &qword_1004DFEA0, &protocol conformance descriptor for HashedAuthenticationCode<A>);
        v80 = sub_1004A5AE4();
        if (!__OFADD__(v79, v80))
        {
          v125 = sub_10015BF20(0, (v79 + v80) & ~((v79 + v80) >> 63), 0, _swiftEmptyArrayStorage);
          v114(v71, v77, v42);
          sub_1002155C8(v71);
          sub_10015BDC0(v64);
          v121 = v78;
          v81 = *(v69 + 8);
          v81(v77, v42);
          v108 = v69 + 8;
          v115 = v81;
          v81(v122, v42);
          v122 = v125;
          v82 = v119;
          v83 = v73;
          v55 = v113;
          sub_1001F2D04(v105, v113, v110, v111, v104, v103);
          v125 = v124;
          v84 = v101;
          swift_bridgeObjectRetain_n();
          sub_10015BDC0(v84);
          v85 = sub_1001E194C(v125);
          v87 = v86;

          v125 = v85;
          v126 = v87;
          v114(v71, v82, v42);
          sub_1004A5464();
          v88 = v112;
          sub_1004A5484();
          v96(v83, v120);
          sub_100014D40(v125, v126);
          v89 = *(v84 + 16);
          v90 = sub_1004A5AE4();
          if (!__OFADD__(v89, v90))
          {
            v125 = sub_10015BF20(0, (v89 + v90) & ~((v89 + v90) >> 63), 0, _swiftEmptyArrayStorage);
            v114(v71, v88, v42);
            sub_1002155C8(v71);
            sub_10015BDC0(v84);
            v91 = v115;
            (v115)(v88, v42);
            (v91)(v119, v42);
            v51 = v125;

            v93(v106, v107);

            v50 = v122;
            a9 = v94;
            v49 = v109;
            v54 = v105;
            v52 = v104;
            v53 = v103;
            goto LABEL_20;
          }

LABEL_26:
          __break(1u);
          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  v56 = v123;
  sub_1001F56C4(a1, v113, v110, v111, a5, v109, v129, v124);
  if (v56)
  {
    return;
  }

  v49 = v130;
  v51 = v129[4];
  v50 = v129[5];
  v52 = v129[2];
  v53 = v129[3];
  v54 = v129[0];
  v55 = v129[1];
LABEL_20:
  *a9 = v54;
  *(a9 + 8) = v55;
  *(a9 + 16) = v52;
  *(a9 + 24) = v53;
  *(a9 + 32) = v51;
  *(a9 + 40) = v50;
  *(a9 + 48) = v49;
}

uint64_t sub_1001F6218(unsigned __int8 *a1, Swift::Int a2)
{
  v2 = a2;
  sub_1004A5874(a2);
  if (!a1)
  {
    return 0;
  }

  result = 0;
  v5 = 0xE000000000000000;
  if (v2)
  {
    while (*a1 - 127 >= 0xFFFFFFA1)
    {
      ++a1;
      v7 = result;
      v8 = v5;
      sub_1004A58C4();
      result = v7;
      v5 = v8;
      if (!--v2)
      {
        return result;
      }
    }

    sub_1001F6EE0();
    swift_allocError();
    *v6 = 5;
    *(v6 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1001F62F0(uint64_t a1, Swift::Int a2)
{
  sub_1004A5874(a2);
  if (a1)
  {
    v4 = a1 + 2 * a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  sub_10000C9C0(&qword_1005D4B00, &qword_1004E39B8);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1001F6FEC;
  *(v6 + 24) = v5;

  while (1)
  {
    v7 = sub_1001F3630();
    if ((v7 & 0x100000000) != 0)
    {
      break;
    }

    sub_1004A58C4();
  }

  if (v7)
  {

    sub_1001F6EE0();
    swift_allocError();
    *v8 = 4;
    *(v8 + 8) = 2;
    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1001F6454@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v11 = 0;
      goto LABEL_21;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 >= 32)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 32)
      {
        goto LABEL_14;
      }

LABEL_8:
      if (v6 == 2)
      {
        v19 = *(result + 16);
        v18 = *(result + 24);
        v11 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_21;
        }

        __break(1u);
      }

      else if (v6 == 1)
      {
        if (!__OFSUB__(HIDWORD(result), result))
        {
          v11 = HIDWORD(result) - result;
LABEL_21:
          sub_1001F6EE0();
          swift_allocError();
          *v20 = v11;
          *(v20 + 8) = 0;
          swift_willThrow();
          return sub_100014D40(v5, a2);
        }

LABEL_25:
        __break(1u);
        return result;
      }

      v11 = BYTE6(a2);
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 0x20uLL)
  {
    goto LABEL_8;
  }

LABEL_14:
  sub_1001F4B98(result, a2, &v21);
  result = sub_100014D40(v5, a2);
  if (!v3)
  {
    v13 = v22;
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    *a3 = v21;
    *(a3 + 8) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    *(a3 + 40) = v16;
    *(a3 + 44) = v17;
  }

  return result;
}

uint64_t sub_1001F65BC(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1001F65D0(uint64_t result)
{
  v2 = *result;
  v3 = *(result + 16);
  v4 = *(result + 24);
  v5 = v4 - v3;
  v6 = v3 == 0;
  if (v3)
  {
    v7 = v4 - v3;
  }

  else
  {
    v7 = 0;
  }

  if ((v2 & 0x8000000000000000) == 0 && v7 >= v2)
  {
    v8 = result;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8;
      v11 = v8[1];
      if ((v11 & 0x8000000000000000) != 0 || v7 < v11)
      {
        goto LABEL_120;
      }

      if ((v11 - v2) < 4)
      {

        sub_1001F6F88();
        goto LABEL_115;
      }

      v63 = v9;
      v12 = sub_1001F1824(0, v2, v11, v3, v4);
      if (v1)
      {

        return v9;
      }

      v13 = v12;
      result = sub_1001F1824(2, v2, v11, v3, v4);
      if (!(v13 | result))
      {
        return v63;
      }

      if (v6)
      {
        if (v2)
        {
          goto LABEL_135;
        }

        v14 = 0;
      }

      else
      {
        v14 = v5;
        if (v5 < v2)
        {
          goto LABEL_134;
        }
      }

      if (v14 < v11)
      {
        goto LABEL_121;
      }

      v15 = v6;
      v16 = v2 + 4;
      if (__OFADD__(v2, 4))
      {
        goto LABEL_122;
      }

      if ((v16 & 0x8000000000000000) != 0 || v7 < v16)
      {
        goto LABEL_123;
      }

      if (v11 < v16)
      {
        goto LABEL_124;
      }

      if (v16 < v2)
      {
        goto LABEL_125;
      }

      *v10 = v16;
      v10[1] = v11;
      v10[2] = v3;
      v10[3] = v4;
      if (v15)
      {
        goto LABEL_136;
      }

      if (v5 < v16)
      {
        goto LABEL_126;
      }

      if (v5 < v11)
      {
        goto LABEL_127;
      }

      if ((v11 - v16) < result)
      {
        v9 = v63;

        sub_1001F6F34();
LABEL_115:
        swift_allocError();
        swift_willThrow();
        return v9;
      }

      v17 = v16 + result;
      if (__OFADD__(v16, result))
      {
        goto LABEL_128;
      }

      if ((v17 & 0x8000000000000000) != 0 || v5 < v17)
      {
        goto LABEL_129;
      }

      v18 = result;
      if (v17 < v16)
      {
        goto LABEL_130;
      }

      if (v11 < v17)
      {
        goto LABEL_131;
      }

      if (!result)
      {
        v17 = v16;
      }

      if (v5 < v17)
      {
        goto LABEL_132;
      }

      if (v11 < v17)
      {
        goto LABEL_119;
      }

      if (v17 < v16)
      {
        goto LABEL_133;
      }

      v8 = v10;
      *v10 = v17;
      v10[2] = v3;
      v10[3] = v4;
      result = sub_1001F65BC(v13);
      if (result > 4u)
      {
        break;
      }

      v1 = 0;
      v9 = v63;
      if (result <= 1u)
      {
        if (result)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v34 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v36 = v35;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v38 = *(v9 + 2);
          v37 = *(v9 + 3);
          if (v38 >= v37 >> 1)
          {
            result = sub_1001EC670((v37 > 1), v38 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v38 + 1;
          v39 = &v9[24 * v38];
          *(v39 + 4) = v34;
          *(v39 + 5) = v36;
          v39[48] = 0;
        }
      }

      else
      {
        if (result == 2)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v40 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v42 = v41;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v44 = *(v9 + 2);
          v43 = *(v9 + 3);
          if (v44 >= v43 >> 1)
          {
            result = sub_1001EC670((v43 > 1), v44 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v44 + 1;
          v21 = &v9[24 * v44];
          *(v21 + 4) = v40;
          *(v21 + 5) = v42;
          v33 = 1;
          goto LABEL_104;
        }

        if (result != 3)
        {
          if (v18)
          {
LABEL_116:
            sub_1001F6EE0();
            swift_allocError();
            *v62 = v18;
            *(v62 + 8) = 1;
            swift_willThrow();

            return v9;
          }

          v53 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v55 = v54;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v57 = *(v9 + 2);
          v56 = *(v9 + 3);
          if (v57 >= v56 >> 1)
          {
            result = sub_1001EC670((v56 > 1), v57 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v57 + 1;
          v21 = &v9[24 * v57];
          *(v21 + 4) = v53;
          *(v21 + 5) = v55;
          v33 = 3;
          goto LABEL_104;
        }

        if (v18)
        {
          goto LABEL_116;
        }

        v22 = sub_1001F62F0(v3 + v16, v18 >> 1);
        v24 = v23;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v26 = *(v9 + 2);
        v25 = *(v9 + 3);
        if (v26 >= v25 >> 1)
        {
          result = sub_1001EC670((v25 > 1), v26 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v26 + 1;
        v27 = &v9[24 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        v27[48] = 2;
      }

LABEL_105:
      v2 = *v8;
      v3 = v8[2];
      v4 = v8[3];
      v5 = v4 - v3;
      v6 = v3 == 0;
      if (v3)
      {
        v7 = v4 - v3;
      }

      else
      {
        v7 = 0;
      }

      if (v2 < 0 || v7 < v2)
      {
        goto LABEL_118;
      }
    }

    v1 = 0;
    v9 = v63;
    if (result > 7u)
    {
      if (result == 8)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v51 = *(v9 + 2);
        v50 = *(v9 + 3);
        v1 = 0;
        if (v51 >= v50 >> 1)
        {
          result = sub_1001EC670((v50 > 1), v51 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 2) = v51 + 1;
        v21 = &v9[24 * v51];
        v52 = xmmword_1004E3730;
      }

      else
      {
        if (result == 9)
        {
          if (v18)
          {
            goto LABEL_116;
          }

          v28 = sub_1001F62F0(v3 + v16, v18 >> 1);
          v30 = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
            v9 = result;
          }

          v32 = *(v9 + 2);
          v31 = *(v9 + 3);
          if (v32 >= v31 >> 1)
          {
            result = sub_1001EC670((v31 > 1), v32 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v32 + 1;
          v21 = &v9[24 * v32];
          *(v21 + 4) = v28;
          *(v21 + 5) = v30;
          v33 = 5;
          goto LABEL_104;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v61 = *(v9 + 2);
        v60 = *(v9 + 3);
        v1 = 0;
        if (v61 >= v60 >> 1)
        {
          result = sub_1001EC670((v60 > 1), v61 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 2) = v61 + 1;
        v21 = &v9[24 * v61];
        v52 = xmmword_1004E3740;
      }
    }

    else
    {
      if (result == 5)
      {
        if (v18)
        {
          goto LABEL_116;
        }

        v45 = sub_1001F62F0(v3 + v16, v18 >> 1);
        v47 = v46;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v49 = *(v9 + 2);
        v48 = *(v9 + 3);
        if (v49 >= v48 >> 1)
        {
          result = sub_1001EC670((v48 > 1), v49 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v49 + 1;
        v21 = &v9[24 * v49];
        *(v21 + 4) = v45;
        *(v21 + 5) = v47;
        v33 = 4;
        goto LABEL_104;
      }

      if (result == 6)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
          v9 = result;
        }

        v20 = *(v9 + 2);
        v19 = *(v9 + 3);
        v1 = 0;
        if (v20 >= v19 >> 1)
        {
          result = sub_1001EC670((v19 > 1), v20 + 1, 1, v9);
          v1 = 0;
          v9 = result;
        }

        *(v9 + 2) = v20 + 1;
        v21 = &v9[24 * v20];
        *(v21 + 4) = 0;
        *(v21 + 5) = 0;
        goto LABEL_103;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1001EC670(0, *(v63 + 2) + 1, 1, v63);
        v9 = result;
      }

      v59 = *(v9 + 2);
      v58 = *(v9 + 3);
      v1 = 0;
      if (v59 >= v58 >> 1)
      {
        result = sub_1001EC670((v58 > 1), v59 + 1, 1, v9);
        v1 = 0;
        v9 = result;
      }

      *(v9 + 2) = v59 + 1;
      v21 = &v9[24 * v59];
      v52 = xmmword_1004DB2C0;
    }

    *(v21 + 2) = v52;
LABEL_103:
    v33 = 6;
LABEL_104:
    v21[48] = v33;
    goto LABEL_105;
  }

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
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

unint64_t sub_1001F6EE0()
{
  result = qword_1005D4AE8;
  if (!qword_1005D4AE8)
  {
    result = swift_getWitnessTable(byte_1004E3FC0, &_s5ErrorON, v0, v1);
    atomic_store(result, &qword_1005D4AE8);
  }

  return result;
}

unint64_t sub_1001F6F34()
{
  result = qword_1005D4AF0;
  if (!qword_1005D4AF0)
  {
    result = swift_getWitnessTable("Q.\n", &_s16ChallengeMessageV20RawTargetInformationV52NTLMChallengeMessageTargetInformationByteCountTooBigVN, v0, v1);
    atomic_store(result, &qword_1005D4AF0);
  }

  return result;
}

unint64_t sub_1001F6F88()
{
  result = qword_1005D4AF8;
  if (!qword_1005D4AF8)
  {
    result = swift_getWitnessTable(byte_1004E3F40, &_s16ChallengeMessageV20RawTargetInformationV51NTLMChallengeMessageTargetInformationBufferTooShortVN, v0, v1);
    atomic_store(result, &qword_1005D4AF8);
  }

  return result;
}

unint64_t sub_1001F6FF4()
{
  result = qword_1005D4B08;
  if (!qword_1005D4B08)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Unicode.UTF16.ForwardParser, &type metadata for Unicode.UTF16.ForwardParser, v0, v1);
    atomic_store(result, &qword_1005D4B08);
  }

  return result;
}

unint64_t sub_1001F7048()
{
  result = qword_1005D4B18;
  if (!qword_1005D4B18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10000DEFC(&qword_1005D4B10, &qword_1004E39C0);
    v4[0] = sub_1001F70CC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v3, v4);
    atomic_store(result, &qword_1005D4B18);
  }

  return result;
}

unint64_t sub_1001F70CC()
{
  result = qword_1005D4B20;
  if (!qword_1005D4B20)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UnsafeRawBufferPointer, &type metadata for UnsafeRawBufferPointer, v0, v1);
    atomic_store(result, &qword_1005D4B20);
  }

  return result;
}

unint64_t sub_1001F7120()
{
  result = qword_1005D4B28;
  if (!qword_1005D4B28)
  {
    result = swift_getWitnessTable(byte_1004E3F00, &_s9OSVersionV16InvalidOSVersionVN, v0, v1);
    atomic_store(result, &qword_1005D4B28);
  }

  return result;
}

uint64_t sub_1001F7184()
{

  return _swift_deallocObject(v0, 51, 7);
}

uint64_t sub_1001F71C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001F720C()
{
  result = qword_1005D4B48;
  if (!qword_1005D4B48)
  {
    result = swift_getWitnessTable(byte_1004E3EC0, &_s17CommonCryptoErrorVN, v0, v1);
    atomic_store(result, &qword_1005D4B48);
  }

  return result;
}

double sub_1001F7260(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1001F7278(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_1001F72C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001F72DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F7324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001F7384(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001F73A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t sub_1001F73F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F7468(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1001F7484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F7498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1001F74E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F7540(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1001F755C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001F75A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001F75E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_1001F7640(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001F7654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001F769C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001F7720()
{
  result = qword_1005D4B50;
  if (!qword_1005D4B50)
  {
    result = swift_getWitnessTable("q/\n", &_s4ModeON, v0, v1);
    atomic_store(result, &qword_1005D4B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseParser.Mode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ResponseParser.Mode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001F7840(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

int *sub_1001F7890(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *a3;
  v8 = *a5;
  v72 = *a4;
  v7 = *a4;
  v73 = *result;
  HIDWORD(v10) = *a5 + *result + (*a3 & *a2 | *a4 & ~*a2);
  LODWORD(v10) = HIDWORD(v10);
  v9 = v10 >> 29;
  *result = v9;
  v11 = a5[1];
  HIDWORD(v10) = v11 + v7 + (v5 & v9 | v6 & ~v9);
  LODWORD(v10) = HIDWORD(v10);
  v12 = v10 >> 25;
  *a4 = v12;
  v13 = a5[2];
  HIDWORD(v10) = v13 + v6 + (v9 & v12 | v5 & ~v12);
  LODWORD(v10) = HIDWORD(v10);
  v14 = v10 >> 21;
  *a3 = v14;
  v15 = a5[3];
  HIDWORD(v10) = v15 + v5 + (v12 & v14 | v9 & ~v14);
  LODWORD(v10) = HIDWORD(v10);
  v16 = v10 >> 13;
  *a2 = v16;
  v17 = a5[4];
  HIDWORD(v10) = v17 + v9 + (v14 & v16 | v12 & ~v16);
  LODWORD(v10) = HIDWORD(v10);
  v18 = v10 >> 29;
  *result = v18;
  v19 = a5[5];
  HIDWORD(v10) = v12 + v19 + (v16 & v18 | v14 & ~v18);
  LODWORD(v10) = HIDWORD(v10);
  v20 = v10 >> 25;
  *a4 = v20;
  v21 = a5[6];
  HIDWORD(v10) = v14 + v21 + (v18 & v20 | v16 & ~v20);
  LODWORD(v10) = HIDWORD(v10);
  v22 = v10 >> 21;
  *a3 = v22;
  v23 = a5[7];
  HIDWORD(v10) = v16 + v23 + (v20 & v22 | v18 & ~v22);
  LODWORD(v10) = HIDWORD(v10);
  v24 = v10 >> 13;
  *a2 = v24;
  v25 = a5[8];
  HIDWORD(v10) = v18 + v25 + (v22 & v24 | v20 & ~v24);
  LODWORD(v10) = HIDWORD(v10);
  v26 = v10 >> 29;
  *result = v26;
  v27 = a5[9];
  HIDWORD(v10) = v20 + v27 + (v24 & v26 | v22 & ~v26);
  LODWORD(v10) = HIDWORD(v10);
  v28 = v10 >> 25;
  *a4 = v28;
  v29 = a5[10];
  HIDWORD(v10) = v22 + v29 + (v26 & v28 | v24 & ~v28);
  LODWORD(v10) = HIDWORD(v10);
  v30 = v10 >> 21;
  *a3 = v30;
  v31 = a5[11];
  HIDWORD(v10) = v24 + v31 + (v28 & v30 | v26 & ~v30);
  LODWORD(v10) = HIDWORD(v10);
  v32 = v10 >> 13;
  *a2 = v32;
  v33 = a5[12];
  HIDWORD(v10) = v26 + v33 + (v30 & v32 | v28 & ~v32);
  LODWORD(v10) = HIDWORD(v10);
  v34 = v10 >> 29;
  *result = v34;
  v35 = a5[13];
  HIDWORD(v10) = v28 + v35 + (v32 & v34 | v30 & ~v34);
  LODWORD(v10) = HIDWORD(v10);
  v36 = v10 >> 25;
  *a4 = v36;
  v37 = a5[14];
  HIDWORD(v10) = v30 + v37 + (v34 & v36 | v32 & ~v36);
  LODWORD(v10) = HIDWORD(v10);
  v38 = v10 >> 21;
  *a3 = v38;
  v39 = a5[15];
  HIDWORD(v10) = v32 + v39 + (v38 & v36 | v34 & ~v38);
  LODWORD(v10) = HIDWORD(v10);
  v40 = v10 >> 13;
  HIDWORD(v10) = v8 + v34 + 1518500249 + (v40 & (v38 | v36) | v38 & v36);
  LODWORD(v10) = HIDWORD(v10);
  v41 = v10 >> 29;
  HIDWORD(v10) = v17 + v36 + 1518500249 + (v41 & (v40 | v38) | v40 & v38);
  LODWORD(v10) = HIDWORD(v10);
  v42 = v10 >> 27;
  HIDWORD(v10) = v25 + v38 + 1518500249 + (v42 & (v41 | v40) | v41 & v40);
  LODWORD(v10) = HIDWORD(v10);
  v43 = v10 >> 23;
  HIDWORD(v10) = v33 + v40 + 1518500249 + (v43 & (v42 | v41) | v42 & v41);
  LODWORD(v10) = HIDWORD(v10);
  v44 = v10 >> 19;
  HIDWORD(v10) = v11 + v41 + 1518500249 + (v44 & (v43 | v42) | v43 & v42);
  LODWORD(v10) = HIDWORD(v10);
  v45 = v10 >> 29;
  HIDWORD(v10) = v19 + v42 + 1518500249 + (v45 & (v44 | v43) | v44 & v43);
  LODWORD(v10) = HIDWORD(v10);
  v46 = v10 >> 27;
  HIDWORD(v10) = v27 + v43 + 1518500249 + (v46 & (v45 | v44) | v45 & v44);
  LODWORD(v10) = HIDWORD(v10);
  v47 = v10 >> 23;
  HIDWORD(v10) = v35 + v44 + 1518500249 + (v47 & (v46 | v45) | v46 & v45);
  LODWORD(v10) = HIDWORD(v10);
  v48 = v10 >> 19;
  HIDWORD(v10) = v13 + v45 + 1518500249 + (v48 & (v47 | v46) | v47 & v46);
  LODWORD(v10) = HIDWORD(v10);
  v49 = v10 >> 29;
  HIDWORD(v10) = v21 + v46 + 1518500249 + (v49 & (v48 | v47) | v48 & v47);
  LODWORD(v10) = HIDWORD(v10);
  v50 = v10 >> 27;
  HIDWORD(v10) = v29 + v47 + 1518500249 + (v50 & (v49 | v48) | v49 & v48);
  LODWORD(v10) = HIDWORD(v10);
  v51 = v10 >> 23;
  HIDWORD(v10) = v37 + v48 + 1518500249 + (v51 & (v50 | v49) | v50 & v49);
  LODWORD(v10) = HIDWORD(v10);
  v52 = v10 >> 19;
  HIDWORD(v10) = v15 + v49 + 1518500249 + (v52 & (v51 | v50) | v51 & v50);
  LODWORD(v10) = HIDWORD(v10);
  v53 = v10 >> 29;
  HIDWORD(v10) = v23 + v50 + 1518500249 + (v53 & (v52 | v51) | v52 & v51);
  LODWORD(v10) = HIDWORD(v10);
  v54 = v10 >> 27;
  HIDWORD(v10) = v31 + v51 + 1518500249 + (v54 & (v53 | v52) | v53 & v52);
  LODWORD(v10) = HIDWORD(v10);
  v55 = v10 >> 23;
  HIDWORD(v10) = v39 + v52 + 1518500249 + (v55 & (v54 | v53) | v54 & v53);
  LODWORD(v10) = HIDWORD(v10);
  v56 = v10 >> 19;
  HIDWORD(v10) = v8 + v53 + 1859775393 + (v56 ^ v55 ^ v54);
  LODWORD(v10) = HIDWORD(v10);
  v57 = v10 >> 29;
  HIDWORD(v10) = v25 + v54 + 1859775393 + (v56 ^ v55 ^ v57);
  LODWORD(v10) = HIDWORD(v10);
  v58 = v10 >> 23;
  HIDWORD(v10) = v17 + v55 + 1859775393 + (v57 ^ v56 ^ v58);
  LODWORD(v10) = HIDWORD(v10);
  v59 = v10 >> 21;
  HIDWORD(v10) = v33 + v56 + 1859775393 + (v58 ^ v57 ^ v59);
  LODWORD(v10) = HIDWORD(v10);
  v60 = v10 >> 17;
  HIDWORD(v10) = v13 + v57 + 1859775393 + (v59 ^ v58 ^ v60);
  LODWORD(v10) = HIDWORD(v10);
  v61 = v10 >> 29;
  HIDWORD(v10) = v29 + v58 + 1859775393 + (v60 ^ v59 ^ v61);
  LODWORD(v10) = HIDWORD(v10);
  v62 = v10 >> 23;
  HIDWORD(v10) = v21 + v59 + 1859775393 + (v61 ^ v60 ^ v62);
  LODWORD(v10) = HIDWORD(v10);
  v63 = v10 >> 21;
  HIDWORD(v10) = v37 + v60 + 1859775393 + (v62 ^ v61 ^ v63);
  LODWORD(v10) = HIDWORD(v10);
  v64 = v10 >> 17;
  HIDWORD(v10) = v11 + v61 + 1859775393 + (v63 ^ v62 ^ v64);
  LODWORD(v10) = HIDWORD(v10);
  v65 = v10 >> 29;
  HIDWORD(v10) = v27 + v62 + 1859775393 + (v64 ^ v63 ^ v65);
  LODWORD(v10) = HIDWORD(v10);
  v66 = v10 >> 23;
  HIDWORD(v10) = v19 + v63 + 1859775393 + (v65 ^ v64 ^ v66);
  LODWORD(v10) = HIDWORD(v10);
  v67 = v10 >> 21;
  HIDWORD(v10) = v35 + v64 + 1859775393 + (v66 ^ v65 ^ v67);
  LODWORD(v10) = HIDWORD(v10);
  v68 = v10 >> 17;
  HIDWORD(v10) = v15 + v65 + 1859775393 + (v67 ^ v66 ^ v68);
  LODWORD(v10) = HIDWORD(v10);
  v69 = v10 >> 29;
  HIDWORD(v10) = v31 + v66 + 1859775393 + (v68 ^ v67 ^ v69);
  LODWORD(v10) = HIDWORD(v10);
  v70 = v10 >> 23;
  HIDWORD(v10) = v23 + v67 + 1859775393 + (v69 ^ v68 ^ v70);
  LODWORD(v10) = HIDWORD(v10);
  v71 = v10 >> 21;
  HIDWORD(v10) = v39 + v68 + 1859775393 + (v70 ^ v69 ^ v71);
  LODWORD(v10) = HIDWORD(v10);
  *result = v69 + v73;
  *a2 = (v10 >> 17) + v5;
  *a3 = v71 + v6;
  *a4 = v70 + v72;
  return result;
}