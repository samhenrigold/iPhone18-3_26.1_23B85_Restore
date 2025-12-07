Swift::Int sub_1001D6880(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001D7918(v2);
  }

  v3 = *(v2 + 2);
  v35[0] = (v2 + 32);
  v35[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 < 2)
    {
      goto LABEL_48;
    }

    v8 = v2 + 64;
    v9 = -1;
    v10 = 1;
LABEL_9:
    v11 = v9;
    v12 = v8;
    while (1)
    {
      v13 = v12 + 16;
      v14 = *(v12 + 2);
      v15 = v12[56];
      v16 = v12[56];
      if (v12[56])
      {
        if (v15 == 1)
        {
          v16 = 4;
        }

        else
        {
          v18 = *(v12 + 3);
          v17 = *(v12 + 4);
          v19 = *(v12 + 5) | *(v12 + 6);
          if (v19 | v14 | v17 | v18)
          {
            v20 = v19 | v17 | v18;
            if (v14 != 1 || v20)
            {
              if (v20)
              {
                v21 = 0;
              }

              else
              {
                v21 = v14 == 2;
              }

              if (v21)
              {
                v16 = 5;
              }

              else
              {
                v16 = 6;
              }
            }

            else
            {
              v16 = 3;
            }
          }

          else
          {
            v16 = 2;
          }
        }
      }

      result = *(v12 - 4);
      v22 = v12[8];
      if (!v12[8])
      {
        goto LABEL_34;
      }

      if (v22 == 1)
      {
        if (v16 >= 4)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v23 = *(v12 - 1);
        v24 = *(v12 - 2) | *(v12 - 3);
        if (!(v24 | result | v23 | *v12))
        {
          v22 = 2;
LABEL_34:
          if (v16 >= v22)
          {
            goto LABEL_8;
          }

          goto LABEL_35;
        }

        v25 = v24 | v23 | *v12;
        if (result != 1 || v25)
        {
          if (v25)
          {
            v31 = 0;
          }

          else
          {
            v31 = result == 2;
          }

          if (v31)
          {
            v32 = 5;
          }

          else
          {
            v32 = 6;
          }

          if (v16 >= v32)
          {
LABEL_8:
            ++v10;
            v8 += 48;
            --v9;
            if (v10 == v3)
            {
              goto LABEL_48;
            }

            goto LABEL_9;
          }
        }

        else if (v16 >= 3)
        {
          goto LABEL_8;
        }
      }

LABEL_35:
      v26 = *(v12 + 24);
      v27 = *(v12 + 40);
      v28 = *(v12 - 1);
      *v13 = *(v12 - 2);
      *(v12 + 2) = v28;
      v29 = *v12;
      *(v12 - 4) = v14;
      *(v12 - 24) = v26;
      *(v12 - 8) = v27;
      v12[8] = v15;
      v12 -= 48;
      v13[2] = v29;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v5 = result;
  v6 = v3 >> 1;
  if (v3 >= 2)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7[2] = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v33[0] = v7 + 4;
  v33[1] = v6;
  sub_1001D6ACC(v33, v34, v35, v5);
  v7[2] = 0;

LABEL_48:
  *a1 = v2;
  return result;
}

uint64_t sub_1001D6ACC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v146 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_186:
    v146 = *v146;
    if (!v146)
    {
      goto LABEL_224;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_188:
      v138 = v9 + 16;
      v139 = *(v9 + 2);
      if (v139 >= 2)
      {
        while (*a3)
        {
          v140 = &v9[16 * v139];
          v141 = *v140;
          v142 = &v138[2 * v139];
          v143 = v142[1];
          sub_1001D732C((*a3 + 48 * *v140), (*a3 + 48 * *v142), (*a3 + 48 * v143), v146);
          if (v5)
          {
          }

          if (v143 < v141)
          {
            goto LABEL_210;
          }

          if (v139 - 2 >= *v138)
          {
            goto LABEL_211;
          }

          *v140 = v141;
          *(v140 + 1) = v143;
          v144 = *v138 - v139;
          if (*v138 < v139)
          {
            goto LABEL_212;
          }

          v139 = *v138 - 1;
          result = memmove(v142, v142 + 2, 16 * v144);
          *v138 = v139;
          if (v139 <= 1)
          {
          }
        }

        goto LABEL_222;
      }
    }

LABEL_218:
    result = sub_1001D77EC(v9);
    v9 = result;
    goto LABEL_188;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
LABEL_4:
  v10 = v8++;
  if (v8 >= v6)
  {
    goto LABEL_86;
  }

  v11 = *a3;
  v12 = *a3 + 48 * v8;
  v13 = *(v12 + 40);
  if (*(v12 + 40))
  {
    if (v13 == 1)
    {
      v13 = 4;
    }

    else
    {
      v15 = *(v12 + 24);
      v14 = *(v12 + 32);
      v16 = *(v12 + 16);
      v17 = *v12;
      v18 = *(v12 + 8);
      v19 = v15 | v14;
      v20 = v19 | v17 | v16 | v18;
      v21 = v19 | v16 | v18;
      if (v21)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17 == 2;
      }

      if (v22)
      {
        v23 = 5;
      }

      else
      {
        v23 = 6;
      }

      v24 = v17 == 1 && v21 == 0;
      v25 = 3;
      if (!v24)
      {
        v25 = v23;
      }

      v13 = 2;
      if (v20)
      {
        v13 = v25;
      }
    }
  }

  v26 = (v11 + 48 * v10);
  v27 = *(v26 + 40);
  if (*(v26 + 40))
  {
    if (v27 == 1)
    {
      v27 = 4;
    }

    else
    {
      v28 = *v26;
      v29 = v26[1];
      v31 = v26[2];
      v30 = v26[3];
      v32 = v26[4];
      v33 = v31 | v29;
      v34 = v33 | v28 | v30 | v32;
      v35 = v33 | v30 | v32;
      if (v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v28 == 2;
      }

      if (v36)
      {
        v37 = 5;
      }

      else
      {
        v37 = 6;
      }

      v38 = v28 == 1 && v35 == 0;
      v39 = 3;
      if (!v38)
      {
        v39 = v37;
      }

      v27 = 2;
      if (v34)
      {
        v27 = v39;
      }
    }
  }

  if (v6 <= v10 + 2)
  {
    v40 = v10 + 2;
  }

  else
  {
    v40 = v6;
  }

  v41 = v40 - v10 - 2;
  v42 = 48 * v10;
  v43 = v11 + 48 * v10 + 72;
  while (v41)
  {
    v45 = *(v43 + 64);
    if (!*(v43 + 64))
    {
      goto LABEL_54;
    }

    if (v45 == 1)
    {
      v45 = 4;
      v44 = *(v43 + 16);
      if (*(v43 + 16))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v46 = *(v43 + 24);
    v47 = *(v43 + 32);
    v48 = *(v43 + 40);
    v49 = *(v43 + 48) | *(v43 + 56);
    result = v49 | v46 | v48 | v47;
    if (!result)
    {
      v45 = 2;
LABEL_54:
      v44 = *(v43 + 16);
      if (*(v43 + 16))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    v50 = v49 | v48 | v47;
    if (v46 != 1 || v50)
    {
      if (v50)
      {
        v54 = 0;
      }

      else
      {
        v54 = v46 == 2;
      }

      if (v54)
      {
        v45 = 5;
      }

      else
      {
        v45 = 6;
      }

      v44 = *(v43 + 16);
      if (!*(v43 + 16))
      {
        goto LABEL_42;
      }

LABEL_55:
      if (v44 == 1)
      {
        v44 = 4;
      }

      else
      {
        v51 = *(v43 - 24);
        v52 = *(v43 + 8);
        result = *(v43 - 8) | *(v43 - 16);
        if (result | v51 | *v43 | v52)
        {
          v53 = result | *v43 | v52;
          if (v51 != 1 || v53)
          {
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v51 == 2;
            }

            if (v55)
            {
              v44 = 5;
            }

            else
            {
              v44 = 6;
            }
          }

          else
          {
            v44 = 3;
          }
        }

        else
        {
          v44 = 2;
        }
      }

      goto LABEL_42;
    }

    v45 = 3;
    v44 = *(v43 + 16);
    if (*(v43 + 16))
    {
      goto LABEL_55;
    }

LABEL_42:
    --v41;
    v43 += 48;
    ++v8;
    if (v13 < v27 == v45 >= v44)
    {
      goto LABEL_76;
    }
  }

  v8 = v40;
LABEL_76:
  if (v13 < v27)
  {
    if (v8 < v10)
    {
      goto LABEL_215;
    }

    if (v10 < v8)
    {
      v56 = 48 * v8 - 48;
      v57 = v8;
      v58 = v10;
      do
      {
        if (v58 != --v57)
        {
          v67 = *a3;
          if (!*a3)
          {
            goto LABEL_221;
          }

          v59 = (v67 + v42);
          v60 = *(v67 + v42 + 32);
          v61 = (v67 + v56);
          v62 = *(v59 + 40);
          v63 = *v59;
          v64 = v59[1];
          v66 = v61[1];
          v65 = v61[2];
          *v59 = *v61;
          v59[1] = v66;
          v59[2] = v65;
          *v61 = v63;
          v61[1] = v64;
          *(v61 + 4) = v60;
          *(v61 + 40) = v62;
        }

        ++v58;
        v56 -= 48;
        v42 += 48;
      }

      while (v58 < v57);
      v6 = a3[1];
    }
  }

LABEL_86:
  if (v8 >= v6)
  {
    goto LABEL_135;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_214;
  }

  if (v8 - v10 >= v7)
  {
    goto LABEL_135;
  }

  if (__OFADD__(v10, v7))
  {
    goto LABEL_216;
  }

  if (v10 + v7 < v6)
  {
    v6 = v10 + v7;
  }

  if (v6 < v10)
  {
LABEL_217:
    __break(1u);
    goto LABEL_218;
  }

  if (v8 == v6)
  {
    goto LABEL_135;
  }

  v68 = *a3;
  v69 = *a3 + 48 * v8 - 48;
  v70 = v10 - v8;
LABEL_96:
  v71 = v70;
  v72 = v69;
  while (1)
  {
    v73 = (v72 + 48);
    v74 = *(v72 + 48);
    v75 = *(v72 + 88);
    v76 = *(v72 + 88);
    if (!*(v72 + 88))
    {
      goto LABEL_107;
    }

    if (v75 == 1)
    {
      v76 = 4;
      v77 = *(v72 + 40);
      if (!*(v72 + 40))
      {
        goto LABEL_129;
      }

      goto LABEL_108;
    }

    v79 = *(v72 + 56);
    v78 = *(v72 + 64);
    result = *(v72 + 72) | *(v72 + 80);
    if (!(result | v74 | v78 | v79))
    {
      v76 = 2;
LABEL_107:
      v77 = *(v72 + 40);
      if (!*(v72 + 40))
      {
        goto LABEL_129;
      }

LABEL_108:
      if (v77 == 1)
      {
        v77 = 4;
      }

      else
      {
        v81 = *v72;
        result = *(v72 + 24);
        v82 = *(v72 + 32);
        v83 = *(v72 + 16) | *(v72 + 8);
        if (v83 | *v72 | result | v82)
        {
          result |= v83 | v82;
          if (v81 != 1 || result)
          {
            if (result)
            {
              v85 = 0;
            }

            else
            {
              v85 = v81 == 2;
            }

            if (v85)
            {
              v77 = 5;
            }

            else
            {
              v77 = 6;
            }
          }

          else
          {
            v77 = 3;
          }
        }

        else
        {
          v77 = 2;
        }
      }

      goto LABEL_129;
    }

    v80 = result | v78 | v79;
    if (v74 == 1 && !v80)
    {
      v76 = 3;
      v77 = *(v72 + 40);
      if (!*(v72 + 40))
      {
        goto LABEL_129;
      }

      goto LABEL_108;
    }

    if (v80)
    {
      v84 = 0;
    }

    else
    {
      v84 = v74 == 2;
    }

    if (v84)
    {
      v76 = 5;
    }

    else
    {
      v76 = 6;
    }

    v77 = *(v72 + 40);
    if (*(v72 + 40))
    {
      goto LABEL_108;
    }

LABEL_129:
    if (v76 >= v77)
    {
      goto LABEL_95;
    }

    if (!v68)
    {
      break;
    }

    v86 = *(v72 + 56);
    v87 = *(v72 + 72);
    v88 = *(v72 + 16);
    *v73 = *v72;
    *(v72 + 64) = v88;
    v89 = *(v72 + 32);
    *v72 = v74;
    *(v72 + 8) = v86;
    *(v72 + 24) = v87;
    *(v72 + 40) = v75;
    v72 -= 48;
    v73[2] = v89;
    if (__CFADD__(v71++, 1))
    {
LABEL_95:
      ++v8;
      v69 += 48;
      --v70;
      if (v8 == v6)
      {
        v8 = v6;
LABEL_135:
        if (v8 < v10)
        {
          goto LABEL_213;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001D7800(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v92 = *(v9 + 2);
        v91 = *(v9 + 3);
        v93 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          result = sub_1001D7800((v91 > 1), v92 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v93;
        v94 = &v9[16 * v92];
        *(v94 + 4) = v10;
        *(v94 + 5) = v8;
        v95 = *v146;
        if (!*v146)
        {
          goto LABEL_223;
        }

        if (!v92)
        {
LABEL_3:
          v6 = a3[1];
          v7 = a4;
          if (v8 >= v6)
          {
            goto LABEL_186;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v96 = v93 - 1;
          if (v93 >= 4)
          {
            break;
          }

          if (v93 == 3)
          {
            v97 = *(v9 + 4);
            v98 = *(v9 + 5);
            v107 = __OFSUB__(v98, v97);
            v99 = v98 - v97;
            v100 = v107;
LABEL_155:
            if (v100)
            {
              goto LABEL_201;
            }

            v113 = &v9[16 * v93];
            v115 = *v113;
            v114 = *(v113 + 1);
            v116 = __OFSUB__(v114, v115);
            v117 = v114 - v115;
            v118 = v116;
            if (v116)
            {
              goto LABEL_204;
            }

            v119 = &v9[16 * v96 + 32];
            v121 = *v119;
            v120 = *(v119 + 1);
            v107 = __OFSUB__(v120, v121);
            v122 = v120 - v121;
            if (v107)
            {
              goto LABEL_207;
            }

            if (__OFADD__(v117, v122))
            {
              goto LABEL_208;
            }

            if (v117 + v122 >= v99)
            {
              if (v99 < v122)
              {
                v96 = v93 - 2;
              }

              goto LABEL_176;
            }

            goto LABEL_169;
          }

          v123 = &v9[16 * v93];
          v125 = *v123;
          v124 = *(v123 + 1);
          v107 = __OFSUB__(v124, v125);
          v117 = v124 - v125;
          v118 = v107;
LABEL_169:
          if (v118)
          {
            goto LABEL_203;
          }

          v126 = &v9[16 * v96];
          v128 = *(v126 + 4);
          v127 = *(v126 + 5);
          v107 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v107)
          {
            goto LABEL_206;
          }

          if (v129 < v117)
          {
            goto LABEL_3;
          }

LABEL_176:
          v134 = v96 - 1;
          if (v96 - 1 >= v93)
          {
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);
LABEL_213:
            __break(1u);
LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
            goto LABEL_217;
          }

          if (!*a3)
          {
            goto LABEL_220;
          }

          v135 = *&v9[16 * v134 + 32];
          v136 = *&v9[16 * v96 + 40];
          sub_1001D732C((*a3 + 48 * v135), (*a3 + 48 * *&v9[16 * v96 + 32]), (*a3 + 48 * v136), v95);
          if (v5)
          {
          }

          if (v136 < v135)
          {
            goto LABEL_197;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1001D77EC(v9);
          }

          if (v134 >= *(v9 + 2))
          {
            goto LABEL_198;
          }

          v137 = &v9[16 * v134];
          *(v137 + 4) = v135;
          *(v137 + 5) = v136;
          result = sub_1001D7760(v96);
          v93 = *(v9 + 2);
          if (v93 <= 1)
          {
            goto LABEL_3;
          }
        }

        v101 = &v9[16 * v93 + 32];
        v102 = *(v101 - 64);
        v103 = *(v101 - 56);
        v107 = __OFSUB__(v103, v102);
        v104 = v103 - v102;
        if (v107)
        {
          goto LABEL_199;
        }

        v106 = *(v101 - 48);
        v105 = *(v101 - 40);
        v107 = __OFSUB__(v105, v106);
        v99 = v105 - v106;
        v100 = v107;
        if (v107)
        {
          goto LABEL_200;
        }

        v108 = &v9[16 * v93];
        v110 = *v108;
        v109 = *(v108 + 1);
        v107 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v107)
        {
          goto LABEL_202;
        }

        v107 = __OFADD__(v99, v111);
        v112 = v99 + v111;
        if (v107)
        {
          goto LABEL_205;
        }

        if (v112 >= v104)
        {
          v130 = &v9[16 * v96 + 32];
          v132 = *v130;
          v131 = *(v130 + 1);
          v107 = __OFSUB__(v131, v132);
          v133 = v131 - v132;
          if (v107)
          {
            goto LABEL_209;
          }

          if (v99 < v133)
          {
            v96 = v93 - 2;
          }

          goto LABEL_176;
        }

        goto LABEL_155;
      }

      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

uint64_t sub_1001D732C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 < v11)
  {
    v12 = 48 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 48 || v6 >= v5)
    {
LABEL_98:
      v35 = v7;
      goto LABEL_100;
    }

    while (1)
    {
      v14 = v6[40];
      if (!v6[40])
      {
        goto LABEL_20;
      }

      if (v14 == 1)
      {
        v14 = 4;
        v15 = v4[40];
        if (!v4[40])
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      v17 = *v6;
      v18 = *(v6 + 1);
      v19 = *(v6 + 2);
      v20 = *(v6 + 3) | *(v6 + 4);
      if (!(v20 | *v6 | v19 | v18))
      {
        break;
      }

      v21 = v20 | v19 | v18;
      if (v17 != 1 || v21)
      {
        if (v21)
        {
          v29 = 0;
        }

        else
        {
          v29 = v17 == 2;
        }

        if (v29)
        {
          v14 = 5;
        }

        else
        {
          v14 = 6;
        }

        v15 = v4[40];
        if (!v4[40])
        {
LABEL_10:
          if (v14 >= v15)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v14 = 3;
        v15 = v4[40];
        if (!v4[40])
        {
          goto LABEL_10;
        }
      }

LABEL_21:
      if (v15 == 1)
      {
        if (v14 >= 4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v24 = *v4;
        v25 = *(v4 + 3);
        v26 = *(v4 + 4);
        v27 = *(v4 + 2) | *(v4 + 1);
        if (v27 | *v4 | v25 | v26)
        {
          v28 = v27 | v25 | v26;
          if (v24 != 1 || v28)
          {
            if (v28)
            {
              v30 = 0;
            }

            else
            {
              v30 = v24 == 2;
            }

            if (v30)
            {
              v31 = 5;
            }

            else
            {
              v31 = 6;
            }

            if (v14 >= v31)
            {
LABEL_23:
              v16 = v4;
              v29 = v7 == v4;
              v4 += 48;
              if (v29)
              {
                goto LABEL_25;
              }

LABEL_24:
              v22 = *v16;
              v23 = *(v16 + 2);
              *(v7 + 1) = *(v16 + 1);
              *(v7 + 2) = v23;
              *v7 = v22;
              goto LABEL_25;
            }
          }

          else if (v14 >= 3)
          {
            goto LABEL_23;
          }
        }

        else if (v14 >= 2)
        {
          goto LABEL_23;
        }
      }

LABEL_11:
      v16 = v6;
      v29 = v7 == v6;
      v6 += 48;
      if (!v29)
      {
        goto LABEL_24;
      }

LABEL_25:
      v7 += 48;
      if (v4 >= v13 || v6 >= v5)
      {
        goto LABEL_98;
      }
    }

    v14 = 2;
LABEL_20:
    v15 = v4[40];
    if (!v4[40])
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v32 = 48 * v11;
  if (a4 != __dst || &__dst[v32] <= a4)
  {
    memmove(a4, __dst, 48 * v11);
  }

  v13 = &v4[v32];
  if (v10 < 48 || v6 <= v7)
  {
LABEL_99:
    v35 = v6;
    goto LABEL_100;
  }

  do
  {
    v33 = 0;
    v34 = v13;
    v35 = v6 - 48;
    while (1)
    {
      v36 = *&v34[v33 - 48];
      v37 = v34[v33 - 8];
      if (!v34[v33 - 8])
      {
        goto LABEL_68;
      }

      if (v37 == 1)
      {
        v37 = 4;
        v38 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_90;
        }

        goto LABEL_69;
      }

      v40 = *&v34[v33 - 40];
      v39 = *&v34[v33 - 32];
      v41 = *&v34[v33 - 24] | *&v34[v33 - 16];
      if (!(v41 | v36 | v39 | v40))
      {
        v37 = 2;
LABEL_68:
        v38 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_90;
        }

LABEL_69:
        if (v38 == 1)
        {
          v38 = 4;
        }

        else
        {
          v43 = *(v6 - 6);
          v44 = *(v6 - 3);
          v45 = *(v6 - 2);
          v46 = *(v6 - 4) | *(v6 - 5);
          if (v46 | v43 | v44 | v45)
          {
            v47 = v46 | v44 | v45;
            if (v43 != 1 || v47)
            {
              if (v47)
              {
                v49 = 0;
              }

              else
              {
                v49 = v43 == 2;
              }

              if (v49)
              {
                v38 = 5;
              }

              else
              {
                v38 = 6;
              }
            }

            else
            {
              v38 = 3;
            }
          }

          else
          {
            v38 = 2;
          }
        }

        goto LABEL_90;
      }

      v42 = v41 | v39 | v40;
      if (v36 == 1 && !v42)
      {
        v37 = 3;
        v38 = *(v6 - 8);
        if (!*(v6 - 8))
        {
          goto LABEL_90;
        }

        goto LABEL_69;
      }

      if (v42)
      {
        v48 = 0;
      }

      else
      {
        v48 = v36 == 2;
      }

      if (v48)
      {
        v37 = 5;
      }

      else
      {
        v37 = 6;
      }

      v38 = *(v6 - 8);
      if (*(v6 - 8))
      {
        goto LABEL_69;
      }

LABEL_90:
      if (v37 < v38)
      {
        break;
      }

      if (&v5[v33] != &v34[v33])
      {
        v50 = &v5[v33 - 48];
        v51 = *&v34[v33 - 48];
        v52 = *&v34[v33 - 16];
        *(v50 + 1) = *&v34[v33 - 32];
        *(v50 + 2) = v52;
        *v50 = v51;
      }

      v33 -= 48;
      v13 = &v34[v33];
      if (&v34[v33] <= v4)
      {
        goto LABEL_99;
      }
    }

    v53 = &v5[v33];
    v5 = &v5[v33 - 48];
    if (v53 != v6)
    {
      v54 = *v35;
      v55 = *(v6 - 1);
      *(v5 + 1) = *(v6 - 2);
      *(v5 + 2) = v55;
      *v5 = v54;
    }

    v13 = &v34[v33];
    if (&v34[v33] <= v4)
    {
      break;
    }

    v6 -= 48;
  }

  while (v35 > v7);
  v13 = &v34[v33];
LABEL_100:
  v56 = 48 * ((v13 - v4) / 48);
  if (v35 != v4 || v35 >= &v4[v56])
  {
    memmove(v35, v4, v56);
  }

  return 1;
}

uint64_t sub_1001D7760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001D77EC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1001D7800(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_1005763A8, &qword_100403758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double sub_1001D792C()
{
  sub_100168088(&qword_100574840, &qword_1004066A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007A0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = &_swiftEmptySetSingleton;
  *(v0 + 72) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = 2;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 2;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 216) = 1;
  *(v0 + 224) = 2;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 2;
  return result;
}

uint64_t sub_1001D7A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v132;
  v6 = *(a1 + 8);
  v96 = *a1;
  v97 = a3;
  v7 = *(a1 + 24);
  v94 = *(a1 + 16);
  v95 = v6;
  v92 = *(a1 + 32);
  v93 = v7;
  v8 = a1;
  v91 = *(a1 + 40);
  v90 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v90 - 8);
  __chkstk_darwin();
  v89 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v11 = *(v88 - 8);
  __chkstk_darwin();
  v99 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v83 = a2;
  v13 = *(a2 + 64);
  v118 = 0;
  v119 = 0;
  v121 = 0;
  v122 = 0;
  v120 = &_swiftEmptySetSingleton;
  v123 = 0;
  v124 = 0u;
  memset(v125, 0, 24);
  BYTE8(v125[1]) = 2;
  *&v126[0] = 1;
  *(v126 + 8) = 0u;
  *(&v126[1] + 8) = 0u;
  BYTE8(v126[2]) = 2;
  v127 = 0u;
  memset(v128, 0, 24);
  BYTE8(v128[1]) = 1;
  *&v129[0] = 2;
  *(v129 + 8) = 0u;
  *(&v129[1] + 8) = 0u;
  BYTE8(v129[2]) = 2;
  v132 = 0u;
  v133[0] = &_swiftEmptySetSingleton;
  *(v133 + 9) = 0u;
  swift_bridgeObjectRetain_n();
  sub_1001D79C8(&v132, &v116);
  v14 = sub_1001D6348(&v132, v13);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v124;
  v133[0] = v125[0];
  *(v133 + 9) = *(v125 + 9);

  sub_1001D79C8(&v132, &v116);
  v15 = sub_1001D6348(&v132, v14);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v126[0];
  v133[0] = v126[1];
  *(v133 + 9) = *(&v126[1] + 9);

  sub_1001D79C8(&v132, &v116);
  v16 = sub_1001D6348(&v132, v15);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v127;
  v133[0] = v128[0];
  *(v133 + 9) = *(v128 + 9);

  sub_1001D79C8(&v132, &v116);
  v17 = sub_1001D6348(&v132, v16);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  v132 = v129[0];
  v133[0] = v129[1];
  *(v133 + 9) = *(&v129[1] + 9);

  sub_1001D79C8(&v132, &v116);
  v18 = sub_1001D6348(&v132, v17);
  swift_bridgeObjectRelease_n();
  sub_1001D87B0(&v132);
  swift_arrayDestroy();
  *&v116 = v18;

  v19 = 0;
  sub_1001D6880(&v116);

  v110 = v116;
  v109 = *(v116 + 16);
  v98 = v8;
  if (!v109)
  {
    v84 = _swiftEmptyArrayStorage;
    goto LABEL_52;
  }

  v20 = 0;
  v86 = (v9 + 1);
  v87 = v117;
  v85 = (v11 + 8);
  v21 = v110 + 72;
  v81 = v109 - 1;
  v84 = _swiftEmptyArrayStorage;
  v22 = v8;
  v82 = v110 + 72;
  do
  {
    v23 = (v21 + 48 * v20);
    v24 = v20;
    while (1)
    {
      if (v24 >= *(v110 + 16))
      {
        __break(1u);
        goto LABEL_68;
      }

      v19 = *(v23 - 5);
      v26 = *(v23 - 4);
      v27 = *(v23 - 3);
      v8 = *(v23 - 2);
      v18 = *(v23 - 1);
      v28 = *v23;
      v9 = v28;
      v29 = *v22;
      v5 = *(v22 + 8);
      v30 = *(v22 + 24);
      v112 = *(v22 + 16);
      v31 = *(v22 + 32);
      if (*(v22 + 40) > 1u)
      {
        if (*(v22 + 40) != 2)
        {
          goto LABEL_45;
        }

        if (v112 | v5 | v29 | v30 | v31)
        {
          v33 = v112 | v5 | v30 | v31;
          if (v29 != 1 || v33)
          {
            if (v33)
            {
              v59 = 0;
            }

            else
            {
              v59 = v29 == 2;
            }

            v32 = 5;
            if (!v59)
            {
              v32 = 6;
            }
          }

          else
          {
            v32 = 3;
          }
        }

        else
        {
          v32 = 2;
        }
      }

      else
      {
        v32 = 4;
        if (!*(v22 + 40))
        {
          v32 = *(v22 + 40);
        }
      }

      if (v28)
      {
        break;
      }

LABEL_27:
      if (v32 != v28)
      {
        goto LABEL_45;
      }

LABEL_28:
      if (!*(v22 + 40))
      {
        v100 = v24;
        v107 = v31;
        v108 = v29;
        v111 = v30;
        v35 = v5;
        v36 = v22;
        v37 = v27;
        v38 = v26;
        sub_1001D8730(v96, v95, v94, v93, v92, v91);
        v39 = v36;
        v40 = v35;
        v41 = v111;
        sub_100010430(v39, &v116, &qword_1005763A0, &qword_100403750);
        v105 = v19;
        v106 = v8;
        v102 = v18;
        v42 = v18;
        v43 = v107;
        sub_1001D8730(v19, v38, v37, v8, v42, v9);
        v8 = v112;

        sub_1000112B4(v41, v43);
        v101 = v9;
        v103 = v37;
        v104 = v38;

        v44 = v43;
        sub_100013CB4(v41, v43);
        if (!v9)
        {

          v8 = sub_1001D50E0(v45, v8);
        }

        v46 = v40;
        sub_100010430(v97 + 16, v113, &qword_100576398, &qword_100403748);
        if (v114)
        {
          sub_1000044A0(v113, v114);
          sub_10002BD04();
          v112 = v40;
          v47 = static OS_dispatch_queue.main.getter();
          v48 = swift_allocObject();
          swift_weakInit();
          v49 = swift_allocObject();
          v50 = v108;
          *(v49 + 16) = v48;
          *(v49 + 24) = v50;
          v51 = v111;
          *(v49 + 32) = v112;
          *(v49 + 40) = v8;
          *(v49 + 48) = v51;
          *(v49 + 56) = v44;
          *(v49 + 64) = 0;
          *&v117[1] = sub_1001D87E0;
          *(&v117[1] + 1) = v49;
          *&v116 = _NSConcreteStackBlock;
          *(&v116 + 1) = 1107296256;
          *&v117[0] = sub_10000F038;
          *(&v117[0] + 1) = &unk_1004E3818;
          v52 = _Block_copy(&v116);
          sub_1001D8730(v50, v112, v8, v51, v44, 0);

          static DispatchQoS.unspecified.getter();
          *&v116 = _swiftEmptyArrayStorage;
          sub_1001D293C();
          sub_100168088(&unk_100575CD0, &unk_100400B50);
          sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
          v53 = v8;
          v55 = v89;
          v54 = v90;
          v19 = &qword_100403750;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          v9 = &qword_1005763A0;
          v46 = v112;
          v56 = v52;
          v3 = v98;
          _Block_release(v56);

          v57 = v55;
          v8 = v53;
          v25 = v107;
          v18 = v108;
          v58 = v54;
          v5 = v111;
          (*v86)(v57, v58);
          (*v85)(v99, v88);
          sub_100004590(v113);
        }

        else
        {
          sub_100009104(v113, &qword_100576398, &qword_100403748);
          v18 = v108;
          v5 = v111;
          v25 = v44;
          v3 = v98;
          v19 = &qword_100403750;
          v9 = &qword_1005763A0;
        }

        sub_1001D869C(v105, v104, v103, v106, v102, v101);
        sub_100009104(v3, &qword_1005763A0, &qword_100403750);
        sub_1001D869C(v18, v46, v8, v5, v25, 0);
        v22 = v3;
        v24 = v100;
      }

      ++v24;
      v23 += 48;
      if (v109 == v24)
      {
        goto LABEL_52;
      }
    }

    if (v28 == 1)
    {
      if (v32 != 4)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    }

    if (!(v27 | v26 | v19 | v8 | v18))
    {
      v28 = 2;
      goto LABEL_27;
    }

    v34 = v27 | v26 | v8 | v18;
    if (v19 == 1 && !v34)
    {
      if (v32 != 3)
      {
        goto LABEL_45;
      }

      goto LABEL_28;
    }

    if (v34)
    {
      v60 = 0;
    }

    else
    {
      v60 = v19 == 2;
    }

    v61 = 5;
    if (!v60)
    {
      v61 = 6;
    }

    if (v32 == v61)
    {
      goto LABEL_28;
    }

LABEL_45:
    v3 = v24;
    v5 = v22;
    v105 = v19;
    v106 = v8;
    v62 = v26;
    v63 = v27;
    v64 = v8;
    v8 = v18;
    v65 = v18;
    v18 = v9;
    sub_1001D8730(v19, v26, v27, v64, v65, v9);
    v9 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001A76D8(0, v9[2] + 1, 1);
      v9 = v115;
    }

    v68 = v9[2];
    v67 = v9[3];
    v19 = v68 + 1;
    v70 = v105;
    v69 = v106;
    v71 = v8;
    if (v68 >= v67 >> 1)
    {
      sub_1001A76D8((v67 > 1), v68 + 1, 1);
      v70 = v105;
      v69 = v106;
      v71 = v8;
      v9 = v115;
    }

    v20 = v3 + 1;
    v9[2] = v19;
    v84 = v9;
    v72 = &v9[6 * v68];
    v72[4] = v70;
    v72[5] = v62;
    v72[6] = v63;
    v72[7] = v69;
    v72[8] = v71;
    *(v72 + 72) = v18;
    v21 = v82;
    v22 = v5;
  }

  while (v81 != v3);
LABEL_52:

  if (v84[2])
  {
    v9 = v84[4];
    v19 = v84[5];
    v23 = v84[6];
    v18 = v84[7];
    v5 = v84[8];
    LODWORD(v8) = *(v84 + 72);
    sub_1001D8730(v9, v19, v23, v18, v5, *(v84 + 72));
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v23 = 0;
    v18 = 0;
    v5 = 0;
    LODWORD(v8) = 255;
  }

  v130[0] = v9;
  v130[1] = v19;
  v130[2] = v23;
  v130[3] = v18;
  v130[4] = v5;
  v131 = v8;
  if (v8 == 255)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1001D8730(v9, v19, v23, v18, v5, v8);
    v3 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_68:
      v3 = sub_100243690(0, *(v3 + 2) + 1, 1, v3);
    }

    v74 = *(v3 + 2);
    v73 = *(v3 + 3);
    if (v74 >= v73 >> 1)
    {
      v3 = sub_100243690((v73 > 1), v74 + 1, 1, v3);
    }

    *(v3 + 2) = v74 + 1;
    v75 = &v3[48 * v74];
    *(v75 + 4) = v9;
    *(v75 + 5) = v19;
    *(v75 + 6) = v23;
    *(v75 + 7) = v18;
    *(v75 + 8) = v5;
    v75[72] = v8;
  }

  sub_100009104(v130, &qword_1005763A0, &qword_100403750);
  v76 = v83;
  *(v83 + 64) = v3;

  if (*(v98 + 40) == 255)
  {
    v78 = *(v76 + 64);
    if (*(v78 + 16))
    {
      swift_beginAccess();
      v79 = *(v78 + 48);
      v116 = *(v78 + 32);
      v117[0] = v79;
      *(v117 + 9) = *(v78 + 57);
      sub_1001D79C8(&v116, v113);
      sub_10025260C(0, 1);
      swift_endAccess();
      sub_100010430(v76 + 16, v113, &qword_100576398, &qword_100403748);
      if (v114)
      {
        sub_1000044A0(v113, v114);
        sub_10021F4DC(&v116);
        sub_1001D87B0(&v116);
        return sub_100004590(v113);
      }

      else
      {
        sub_1001D87B0(&v116);
        return sub_100009104(v113, &qword_100576398, &qword_100403748);
      }
    }
  }

  return result;
}

void sub_1001D8688(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1001D869C(result, a2, a3, a4, a5, a6);
  }
}

void sub_1001D869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {

    sub_1000112B4(a4, a5);
  }
}

void sub_1001D871C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1001D8730(result, a2, a3, a4, a5, a6);
  }
}

void sub_1001D8730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {

    sub_100013CB4(a4, a5);
  }
}

uint64_t sub_1001D87EC()
{

  sub_1001D869C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1001D885C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  type metadata accessor for PodcastContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    *(v1 + 24) = *(result + qword_100576738);
  }

  return result;
}

uint64_t sub_1001D88F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  type metadata accessor for PodcastContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    *(v1 + 16) = *(result + qword_100576738);
  }

  return result;
}

uint64_t sub_1001D898C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFAA0(a1);
  v9 = sub_1001E0018(v8);
  result = 0;
  if (v9)
  {
    v11 = [objc_opt_self() mainBundle];
    v19._object = 0xE000000000000000;
    v12._object = 0x8000000100468170;
    v12._countAndFlagsBits = 0xD00000000000001CLL;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v19);

    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() _systemImageNamed:v14];

    if (v15)
    {
      v16 = [v15 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.removeFromStation(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001D8C20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InteractionContext();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D885C(a1);
  swift_beginAccess();
  if (*(v1 + 16))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v11 + 8))(v13, v10);
    v14 = InteractionContext.Page.isShowPage.getter();
    sub_1001E92E4(v9, &type metadata accessor for InteractionContext.Page);
    if (v14)
    {
      return 0;
    }
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v15 = [objc_opt_self() mainBundle];
  v24._object = 0x8000000100468210;
  v16._countAndFlagsBits = 0x6853206F74206F47;
  v16._object = 0xEA0000000000776FLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v24);

  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() _systemImageNamed:v18];

  if (v19)
  {
    v20 = [v19 imageWithRenderingMode:2];
  }

  sub_1001E9254();
  (*(v5 + 104))(v7, enum case for ContextActionType.presentPodcast(_:), v4);
  ContextActionType.actionIdentifier.getter();
  (*(v5 + 8))(v7, v4);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D900C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFCF0(a1);
  v8 = sub_100237910();
  result = 0;
  if (v8)
  {

    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    if (v11)
    {
      v12 = [v11 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.playFromTranscript(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001D922C(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v25[-v4];
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = &v25[-v6];
  swift_beginAccess();
  *(v1 + 16) = a1;

  sub_1002476CC();
  if (!*(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v9 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
  swift_beginAccess();
  sub_100010430(v1 + v9, v7, &qword_100574040, &unk_100400AD0);
  v10 = type metadata accessor for URL();
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v7, 1, v10);
  sub_100009104(v7, &qword_100574040, &unk_100400AD0);
  if (v9 == 1)
  {
    return 0;
  }

  v11 = (v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination);
  v12 = *(v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination + 8);
  if (v12 >= 2)
  {
    v15 = *v11;

    v16._countAndFlagsBits = 0x5F4E495F4E45504FLL;
    v17._countAndFlagsBits = 0xD000000000000022;
    v17._object = 0x8000000100468280;
    v16._object = 0xEA00000000004025;
    PFLocalizedString(_:comment:)(v16, v17);
    sub_100168088(&unk_100574670, &qword_100400AB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100400790;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100022C18();
    *(v18 + 32) = v15;
    *(v18 + 40) = v12;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v13._countAndFlagsBits = 0x4E494C5F4E45504FLL;
    v14._countAndFlagsBits = 0xD000000000000021;
    v14._object = 0x8000000100468250;
    v13._object = 0xE90000000000004BLL;
    PFLocalizedString(_:comment:)(v13, v14);
  }

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() _systemImageNamed:v19];

  if (v20)
  {
    v21 = [v20 imageWithRenderingMode:2];
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v22 = type metadata accessor for ContextActionType();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v23 + 8))(v5, v22);
  }

  sub_1001E9254();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D9710(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  sub_1001DFE1C(a1);
  if ((sub_10027EA24() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 96))
  {

    v6 = String._bridgeToObjectiveC()();

    v7 = [objc_opt_self() _systemImageNamed:v6];

    if (v7)
    {
      v8 = [v7 imageWithRenderingMode:2];
    }
  }

  else
  {
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v10 = type metadata accessor for ContextActionType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v11 + 8))(v5, v10);
  }

  sub_1001E9254();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D99A0(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  sub_1001DF898(a1);
  if (!sub_10028DCD0(v6))
  {
    return 0;
  }

  if (*(v1 + 104))
  {

    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:v7];

    if (v8)
    {
      v9 = [v8 imageWithRenderingMode:2];
    }
  }

  else
  {
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v11 = type metadata accessor for ContextActionType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v12 + 8))(v5, v11);
  }

  sub_1001E9254();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D9C20(uint64_t a1)
{
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v4 = &v17 - v3;
  v5 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v5) = a1;
  swift_retain_n();

  type metadata accessor for CategoryContextActionConfiguration(0);
  v6 = swift_dynamicCastClass();

  if (!v6)
  {
    return 0;
  }

  v7 = [objc_opt_self() mainBundle];
  v18._object = 0x80000001004682E0;
  v8._object = 0x80000001004682B0;
  v8._countAndFlagsBits = 0xD000000000000029;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0x100000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v18);

  if (*(v1 + 32))
  {

    v10 = String._bridgeToObjectiveC()();

    v11 = [objc_opt_self() _systemImageNamed:v10];

    if (v11)
    {
      v12 = [v11 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, v4, &qword_100575870, &unk_100402BE0);
  v14 = type metadata accessor for ContextActionType();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    sub_100009104(v4, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v15 + 8))(v4, v14);
  }

  sub_1001E9254();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v1;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001D9F7C(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  swift_beginAccess();
  *(v1 + 48) = a1;

  sub_1002B9CCC();
  v6 = [objc_opt_self() mainBundle];
  v17._object = 0x8000000100468320;
  v7._object = 0x8000000100468300;
  v17._countAndFlagsBits = 0xD000000000000025;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  if (*(v2 + 72))
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() _systemImageNamed:v9];

    if (v10)
    {
      v11 = [v10 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v13 + 8))(v5, v12);
  }

  sub_1001E9254();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001DA284(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_1002C5B24();
  v7 = sub_1002C5CCC();
  result = 0;
  if (v7)
  {
    v9 = [objc_opt_self() mainBundle];
    v19._object = 0xE800000000000000;
    v19._countAndFlagsBits = 0x657469726F766146;
    v10._object = 0x8000000100468360;
    v10._countAndFlagsBits = 0xD000000000000015;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v19);

    if (*(v2 + 32))
    {

      v12 = String._bridgeToObjectiveC()();

      v13 = [objc_opt_self() _systemImageNamed:v12];

      if (v13)
      {
        v14 = [v13 imageWithRenderingMode:2];
      }
    }

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v15 = type metadata accessor for ContextActionType();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v5, 1, v15) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
    }

    else
    {
      ContextActionType.actionIdentifier.getter();
      (*(v16 + 8))(v5, v15);
    }

    sub_1001E9254();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DA5C0(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_1002DB9E4();
  v7 = sub_1002DBB30();
  result = 0;
  if (v7)
  {
    v9 = [objc_opt_self() mainBundle];
    v19._object = 0xEC0000007373654CLL;
    v19._countAndFlagsBits = 0x2074736567677553;
    v10._object = 0x8000000100468380;
    v10._countAndFlagsBits = 0xD000000000000019;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v19);

    if (*(v2 + 32))
    {

      v12 = String._bridgeToObjectiveC()();

      v13 = [objc_opt_self() _systemImageNamed:v12];

      if (v13)
      {
        v14 = [v13 imageWithRenderingMode:2];
      }
    }

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v15 = type metadata accessor for ContextActionType();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v5, 1, v15) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
    }

    else
    {
      ContextActionType.actionIdentifier.getter();
      (*(v16 + 8))(v5, v15);
    }

    sub_1001E9254();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DA904(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DF990(a1);
  v8 = sub_1002EB674();
  result = 0;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
    swift_beginAccess();
    if (*(v1 + v10) && (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
    {
      v11 = [objc_opt_self() mainBundle];
      v20 = 0xAE00A680E2747865;
      v12 = 0x54207463656C6553;
      v13 = 0x80000001004683A0;
      v14 = 0xD000000000000014;
    }

    else
    {
      v11 = [objc_opt_self() mainBundle];
      v20 = 0xEF7470697263736ELL;
      v14 = 0x4152545F57454956;
      v13 = 0xEF5450495243534ELL;
      v12 = 0x6172542077656956;
    }

    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v14, 0, v11, v15, *&v12)._countAndFlagsBits;

    if (*(v2 + v10))
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      swift_dynamicCastClass();
    }

    v16 = String._bridgeToObjectiveC()();

    v17 = [objc_opt_self() _systemImageNamed:v16];

    if (v17)
    {
      v18 = [v17 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.viewTranscript(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DACA8(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_10031B084();
  if ((*(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    return 0;
  }

  v8 = InterestState.rawValue.getter();
  v10 = v9;
  if (v8 == InterestState.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = [objc_opt_self() mainBundle];
  v24._object = 0x8000000100468400;
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  v15._object = 0x80000001004683E0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000011;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v24);

  if (*(v2 + 32))
  {

    v17 = String._bridgeToObjectiveC()();

    v18 = [objc_opt_self() _systemImageNamed:v17];

    if (v18)
    {
      v19 = [v18 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v20 = type metadata accessor for ContextActionType();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v21 + 8))(v5, v20);
  }

  sub_1001E9254();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001DB07C(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  swift_beginAccess();
  *(v1 + 16) = a1;

  v6 = sub_100231E2C();
  result = 0;
  if (v6)
  {
    if (*(v1 + 40))
    {
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() _systemImageNamed:v8];

      if (v9)
      {
        v10 = [v9 imageWithRenderingMode:2];
      }
    }

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v11 = type metadata accessor for ContextActionType();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5, 1, v11) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
    }

    else
    {
      ContextActionType.actionIdentifier.getter();
      (*(v12 + 8))(v5, v11);
    }

    sub_1001E9254();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DB314(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_1003530F0();
  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8))
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4)
  {
    return 0;
  }

  if (*(v1 + v6))
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 0;
    }
  }

  v7 = InterestState.rawValue.getter();
  v9 = v8;
  if (v7 == InterestState.rawValue.getter() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = [objc_opt_self() mainBundle];
  v24._object = 0xED0000657469726FLL;
  v24._countAndFlagsBits = 0x766146206F646E55;
  v15._object = 0x8000000100468450;
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v24);

  if (*(v2 + 32))
  {

    v17 = String._bridgeToObjectiveC()();

    v18 = [objc_opt_self() _systemImageNamed:v17];

    if (v18)
    {
      v19 = [v18 imageWithRenderingMode:2];
    }
  }

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v20 = type metadata accessor for ContextActionType();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
  }

  else
  {
    ContextActionType.actionIdentifier.getter();
    (*(v21 + 8))(v5, v20);
  }

  sub_1001E9254();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v2;

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001DB70C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D88F4(a1);
  v8 = sub_1003953A8();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v18._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x73676E6974746553;
    v11._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    if (v14)
    {
      v15 = [v14 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.settings(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

uint64_t sub_1001DB98C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFBF8(a1);
  v8 = sub_1003B1B64();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v18._object = 0x8000000100468470;
    v11._countAndFlagsBits = 0x6853206F74206F47;
    v11._object = 0xEA0000000000776FLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v18);

    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13];

    if (v14)
    {
      v15 = [v14 imageWithRenderingMode:2];
    }

    sub_1001E9254();
    (*(v5 + 104))(v7, enum case for ContextActionType.episodeGoToShow(_:), v4);
    ContextActionType.actionIdentifier.getter();
    (*(v5 + 8))(v7, v4);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = v2;

    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

id sub_1001DBC34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFAA0(a1);
  v9 = 0;
  if (sub_1001E0018(v8))
  {
    v10 = sub_1001E9000(&aBlock);
    v11 = aBlock;
    v23[1] = v25;
    v12 = v26;
    v13 = v28;
    (*(v5 + 104))(v7, enum case for ContextActionType.removeFromStation(_:), v4, v10);
    v14 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v15 = swift_allocObject();
    v15[2] = v2;
    v15[3] = a1;
    v15[4] = v14;

    if (v13)
    {
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

    v28 = sub_1001E90F0;
    v29 = v15;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1002348A4;
    v27 = &unk_1004E3978;
    v17 = _Block_copy(&aBlock);
    v9 = [objc_opt_self() contextualActionWithStyle:v14 title:v16 handler:v17];

    _Block_release(v17);

    [v9 setBackgroundColor:v11];
    if (v12)
    {
      v18 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() systemImageNamed:v18];
    }

    else
    {
      v20 = String._bridgeToObjectiveC()();
      v18 = [objc_opt_self() _systemImageNamed:v20];

      if (!v18)
      {
        v21 = 0;
        goto LABEL_10;
      }

      v19 = [v18 imageWithRenderingMode:2];
    }

    v21 = v19;

LABEL_10:
    [v9 setImage:v21];
  }

  return v9;
}

id sub_1001DBF70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InteractionContext();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D885C(a1);
  swift_beginAccess();
  if (*(v1 + 16))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v11 + 8))(v13, v10);
    v14 = InteractionContext.Page.isShowPage.getter();
    sub_1001E92E4(v9, &type metadata accessor for InteractionContext.Page);
    if (v14)
    {
      return 0;
    }
  }

  if (!*(v2 + 24))
  {
    return 0;
  }

  v15.super.isa = [objc_opt_self() mainBundle];
  v28._object = 0x8000000100468210;
  v16._countAndFlagsBits = 0x6853206F74206F47;
  v16._object = 0xEA0000000000776FLL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v28);

  (*(v5 + 104))(v7, enum case for ContextActionType.presentPodcast(_:), v4);
  LOBYTE(v15.super.isa) = sub_100234C80();
  (*(v5 + 8))(v7, v4);
  v18 = v15.super.isa & 1;
  v19 = swift_allocObject();
  v19[2] = v2;
  v19[3] = a1;
  v19[4] = v18;

  v20 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001E9344;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E39F0;
  v21 = _Block_copy(aBlock);
  v22 = [objc_opt_self() contextualActionWithStyle:v18 title:v20 handler:v21];

  _Block_release(v21);

  [v22 setBackgroundColor:0];
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() systemImageNamed:v23];

  [v22 setImage:v24];
  return v22;
}

id sub_1001DC3D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFCF0(a1);
  v8 = sub_100231F68();
  result = 0;
  if (v8)
  {
    (*(v5 + 104))(v7, enum case for ContextActionType.playFromTranscript(_:), v4);

    v10 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = v10;

    v12 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E93D8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3A68;
    v13 = _Block_copy(aBlock);
    v14 = [objc_opt_self() contextualActionWithStyle:v10 title:v12 handler:v13];

    _Block_release(v13);

    [v14 setBackgroundColor:0];
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    [v14 setImage:v16];
    return v14;
  }

  return result;
}

void *sub_1001DC664(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = v26 - v4;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = v26 - v6;
  swift_beginAccess();
  *(v1 + 16) = a1;

  sub_1002476CC();
  if (!*(v1 + 16))
  {
    return 0;
  }

  type metadata accessor for ExternalReferenceLinkContextActionConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link;
    swift_beginAccess();
    sub_100010430(v1 + v9, v7, &qword_100574040, &unk_100400AD0);
    v10 = type metadata accessor for URL();
    LODWORD(v9) = (*(*(v10 - 8) + 48))(v7, 1, v10);
    sub_100009104(v7, &qword_100574040, &unk_100400AD0);
    if (v9 == 1)
    {
      return 0;
    }

    sub_1002317F8(&aBlock);
    v11 = aBlock;
    v26[1] = v28;
    v12 = v29;
    v13 = v31;
    sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v14 = type metadata accessor for ContextActionType();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
      v16 = 0;
    }

    else
    {
      v16 = sub_100234C80() & 1;
      (*(v15 + 8))(v5, v14);
    }

    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = v16;

    if (v13)
    {
      v18 = String._bridgeToObjectiveC()();
    }

    else
    {
      v18 = 0;
    }

    v31 = sub_1001E946C;
    v32 = v17;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1002348A4;
    v30 = &unk_1004E3AE0;
    v19 = _Block_copy(&aBlock);
    v20 = [objc_opt_self() contextualActionWithStyle:v16 title:v18 handler:v19];

    _Block_release(v19);

    v21 = v20;
    [v20 setBackgroundColor:v11];
    if (v12)
    {
      v22 = String._bridgeToObjectiveC()();

      v23 = [objc_opt_self() systemImageNamed:v22];
    }

    else
    {
      v24 = String._bridgeToObjectiveC()();

      v22 = [objc_opt_self() _systemImageNamed:v24];

      if (!v22)
      {
        v25 = 0;
        goto LABEL_16;
      }

      v23 = [v22 imageWithRenderingMode:2];
    }

    v25 = v23;

LABEL_16:
    [v21 setImage:v25];

    return v21;
  }

  return result;
}

id sub_1001DCB58(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = aBlock - v4;
  sub_1001DFE1C(a1);
  if ((sub_10027EA24() & 1) == 0)
  {
    return 0;
  }

  v6 = [objc_opt_self() systemGrayColor];
  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v7 = type metadata accessor for ContextActionType();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);

  if (v9 == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
    v10 = 0;
  }

  else
  {
    v10 = sub_100234C80() & 1;
    (*(v8 + 8))(v5, v7);
  }

  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = v10;

  v13 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001E94E4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E3B80;
  v14 = _Block_copy(aBlock);
  v15 = [objc_opt_self() contextualActionWithStyle:v10 title:v13 handler:v14];

  _Block_release(v14);

  [v15 setBackgroundColor:v6];
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v15 setImage:v17];
  return v15;
}

id sub_1001DCE7C(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = aBlock - v4;
  sub_1001DF898(a1);
  if (!sub_10028DCD0(v6))
  {
    return 0;
  }

  v7 = *(v1 + 104);
  sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v8 = type metadata accessor for ContextActionType();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
    v10 = 0;
  }

  else
  {
    v10 = sub_100234C80() & 1;
    (*(v9 + 8))(v5, v8);
  }

  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = v10;

  v13 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1001E94F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E3BF8;
  v14 = _Block_copy(aBlock);
  v11 = [objc_opt_self() contextualActionWithStyle:v10 title:v13 handler:v14];

  _Block_release(v14);

  [v11 setBackgroundColor:0];
  if (v7)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    [v11 setImage:v16];
  }

  else
  {
    [v11 setImage:0];
  }

  return v11;
}

id sub_1001DD170(uint64_t a1)
{
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v4 = &aBlock[-1] - v3;
  v5 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration;
  swift_beginAccess();
  *(v1 + v5) = a1;
  swift_retain_n();

  type metadata accessor for CategoryContextActionConfiguration(0);
  v6 = swift_dynamicCastClass();

  if (v6)
  {
    v7 = *(v1 + 32);
    v8 = objc_opt_self();

    v9 = [v8 mainBundle];
    v26._object = 0x80000001004682E0;
    v10._object = 0x80000001004682B0;
    v10._countAndFlagsBits = 0xD000000000000029;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0x100000000000001DLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v26);

    sub_100010430(v1 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, v4, &qword_100575870, &unk_100402BE0);
    v12 = type metadata accessor for ContextActionType();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v4, 1, v12) == 1)
    {
      sub_100009104(v4, &qword_100575870, &unk_100402BE0);
      v14 = 0;
    }

    else
    {
      v14 = sub_100234C80() & 1;
      (*(v13 + 8))(v4, v12);
    }

    v16 = swift_allocObject();
    v16[2] = v1;
    v16[3] = a1;
    v16[4] = v14;

    v17 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E958C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3C70;
    v18 = _Block_copy(aBlock);
    v15 = [objc_opt_self() contextualActionWithStyle:v14 title:v17 handler:v18];

    _Block_release(v18);

    [v15 setBackgroundColor:0];
    if (v7)
    {
      v19 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() systemImageNamed:v19];
    }

    else
    {
      v21 = *(v1 + 32);
      if (!v21)
      {
        goto LABEL_9;
      }

      v23 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() _systemImageNamed:v23];

      if (!v19)
      {
        v21 = 0;
        goto LABEL_9;
      }

      v20 = [v19 imageWithRenderingMode:2];
    }

    v21 = v20;

LABEL_9:
    [v15 setImage:v21];

    return v15;
  }

  return 0;
}

id sub_1001DD5BC(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &aBlock[-1] - v4;
  swift_beginAccess();
  *(v1 + 48) = a1;

  sub_1002B9CCC();
  v6 = *(v1 + 72);
  v7 = [objc_opt_self() mainBundle];
  v22._object = 0x8000000100468320;
  v8._object = 0x8000000100468300;
  v22._countAndFlagsBits = 0xD000000000000025;
  v8._countAndFlagsBits = 0xD000000000000010;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v22);

  sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
  v10 = type metadata accessor for ContextActionType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_100009104(v5, &qword_100575870, &unk_100402BE0);
    v12 = 0;
  }

  else
  {
    v12 = sub_100234C80() & 1;
    (*(v11 + 8))(v5, v10);
  }

  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = v12;

  v14 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1001E9658;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002348A4;
  aBlock[3] = &unk_1004E3CE8;
  v15 = _Block_copy(aBlock);
  v16 = [objc_opt_self() contextualActionWithStyle:v12 title:v14 handler:v15];

  _Block_release(v15);

  [v16 setBackgroundColor:0];
  if (v6)
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() systemImageNamed:v17];

    [v16 setImage:v18];
  }

  else
  {
    [v16 setImage:0];
  }

  return v16;
}

id sub_1001DD950(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &aBlock[-1] - v4;
  v6 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_1002C5B24();
  v7 = 0;
  if (sub_1002C5CCC())
  {
    v8 = *(v2 + 32);
    v9 = objc_opt_self();

    v10 = [v9 mainBundle];
    v26._object = 0xE800000000000000;
    v26._countAndFlagsBits = 0x657469726F766146;
    v11._object = 0x8000000100468360;
    v11._countAndFlagsBits = 0xD000000000000015;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v26);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v13 = type metadata accessor for ContextActionType();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
      v15 = 0;
    }

    else
    {
      v15 = sub_100234C80() & 1;
      (*(v14 + 8))(v5, v13);
    }

    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = v15;

    v17 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E96B8;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3E00;
    v18 = _Block_copy(aBlock);
    v7 = [objc_opt_self() contextualActionWithStyle:v15 title:v17 handler:v18];

    _Block_release(v18);

    [v7 setBackgroundColor:0];
    if (v8)
    {
      v19 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() systemImageNamed:v19];
    }

    else
    {
      v21 = *(v2 + 32);
      if (!v21)
      {
        goto LABEL_8;
      }

      v23 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() _systemImageNamed:v23];

      if (!v19)
      {
        v21 = 0;
        goto LABEL_8;
      }

      v20 = [v19 imageWithRenderingMode:2];
    }

    v21 = v20;

LABEL_8:
    [v7 setImage:v21];
  }

  return v7;
}

id sub_1001DDD78(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &aBlock[-1] - v4;
  v6 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_1002DB9E4();
  v7 = 0;
  if (sub_1002319E8())
  {
    v8 = *(v2 + 32);
    v9 = objc_opt_self();

    v10 = [v9 mainBundle];
    v26._object = 0xEC0000007373654CLL;
    v26._countAndFlagsBits = 0x2074736567677553;
    v11._object = 0x8000000100468380;
    v11._countAndFlagsBits = 0xD000000000000019;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v26);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v13 = type metadata accessor for ContextActionType();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
      v15 = 0;
    }

    else
    {
      v15 = sub_100234C80() & 1;
      (*(v14 + 8))(v5, v13);
    }

    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = v15;

    v17 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9784;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3E78;
    v18 = _Block_copy(aBlock);
    v7 = [objc_opt_self() contextualActionWithStyle:v15 title:v17 handler:v18];

    _Block_release(v18);

    [v7 setBackgroundColor:0];
    if (v8)
    {
      v19 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() systemImageNamed:v19];
    }

    else
    {
      v21 = *(v2 + 32);
      if (!v21)
      {
        goto LABEL_8;
      }

      v23 = String._bridgeToObjectiveC()();

      v19 = [objc_opt_self() _systemImageNamed:v23];

      if (!v19)
      {
        v21 = 0;
        goto LABEL_8;
      }

      v20 = [v19 imageWithRenderingMode:2];
    }

    v21 = v20;

LABEL_8:
    [v7 setImage:v21];
  }

  return v7;
}

id sub_1001DE1A8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DF990(a1);
  v8 = sub_1002EB674();
  result = 0;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
    swift_beginAccess();
    if (*(v2 + v10) && (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
    {
      v11 = [objc_opt_self() mainBundle];
      v25._object = 0xAE00A680E2747865;
      v25._countAndFlagsBits = 0x54207463656C6553;
      v12._object = 0x80000001004683A0;
      v12._countAndFlagsBits = 0xD000000000000014;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v25);
    }

    else
    {
      v11 = [objc_opt_self() mainBundle];
      v26._object = 0xEF7470697263736ELL;
      v14._countAndFlagsBits = 0x4152545F57454956;
      v14._object = 0xEF5450495243534ELL;
      v26._countAndFlagsBits = 0x6172542077656956;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v11, v15, v26);
    }

    (*(v5 + 104))(v7, enum case for ContextActionType.viewTranscript(_:), v4);
    v16 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = v16;

    v18 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9850;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3EF0;
    v19 = _Block_copy(aBlock);
    v20 = [objc_opt_self() contextualActionWithStyle:v16 title:v18 handler:v19];

    _Block_release(v19);

    [v20 setBackgroundColor:0];
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() systemImageNamed:v21];

    [v20 setImage:v22];
    return v20;
  }

  return result;
}

void *sub_1001DE5C4(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &aBlock[-1] - v4;
  v6 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_10031B084();
  if ((*(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v1 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    return 0;
  }

  v8 = InterestState.rawValue.getter();
  v10 = v9;
  if (v8 == InterestState.rawValue.getter() && v10 == v11)
  {

    goto LABEL_12;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_12:
    v14 = *(v2 + 32);
    v15 = objc_opt_self();

    v16 = [v15 mainBundle];
    v33._object = 0x8000000100468400;
    v17._countAndFlagsBits = 0xD00000000000001ELL;
    v17._object = 0x80000001004683E0;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD000000000000011;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v33);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v19 = type metadata accessor for ContextActionType();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v5, 1, v19) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
      v21 = 0;
    }

    else
    {
      v21 = sub_100234C80() & 1;
      (*(v20 + 8))(v5, v19);
    }

    v22 = swift_allocObject();
    v22[2] = v2;
    v22[3] = a1;
    v22[4] = v21;

    v23 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E98E4;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3F68;
    v24 = _Block_copy(aBlock);
    v25 = [objc_opt_self() contextualActionWithStyle:v21 title:v23 handler:v24];

    _Block_release(v24);

    v26 = v25;
    [v25 setBackgroundColor:0];
    if (v14)
    {
      v27 = String._bridgeToObjectiveC()();

      v28 = [objc_opt_self() systemImageNamed:v27];
    }

    else
    {
      v29 = *(v2 + 32);
      if (!v29)
      {
        goto LABEL_18;
      }

      v30 = String._bridgeToObjectiveC()();

      v27 = [objc_opt_self() _systemImageNamed:v30];

      if (!v27)
      {
        v29 = 0;
        goto LABEL_18;
      }

      v28 = [v27 imageWithRenderingMode:2];
    }

    v29 = v28;

LABEL_18:
    [v26 setImage:v29];

    return v26;
  }

  return 0;
}

id sub_1001DEA8C(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &aBlock[-1] - v4;
  swift_beginAccess();
  *(v1 + 16) = a1;

  v6 = 0;
  if (sub_100231E2C())
  {
    v7 = *(v2 + 40);
    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v8 = type metadata accessor for ContextActionType();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
      v10 = 0;
    }

    else
    {
      v10 = sub_100234C80() & 1;
      (*(v9 + 8))(v5, v8);
    }

    v11 = swift_allocObject();
    v11[2] = v2;
    v11[3] = a1;
    v11[4] = v10;

    v12 = String._bridgeToObjectiveC()();
    aBlock[4] = sub_1001E99B0;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E3FE0;
    v13 = _Block_copy(aBlock);
    v6 = [objc_opt_self() contextualActionWithStyle:v10 title:v12 handler:v13];

    _Block_release(v13);

    [v6 setBackgroundColor:0];
    if (v7)
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = [objc_opt_self() systemImageNamed:v14];

      [v6 setImage:v15];
    }

    else
    {
      [v6 setImage:0];
    }
  }

  return v6;
}

void *sub_1001DEDA4(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100575870, &unk_100402BE0);
  __chkstk_darwin();
  v5 = &aBlock[-1] - v4;
  v6 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v6) = a1;

  sub_1003530F0();
  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID + 8))
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) == 4)
  {
    return 0;
  }

  if (*(v1 + v6))
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return 0;
    }
  }

  v7 = InterestState.rawValue.getter();
  v9 = v8;
  if (v7 == InterestState.rawValue.getter() && v9 == v10)
  {

LABEL_13:
    v14 = *(v2 + 32);
    v15 = objc_opt_self();

    v16 = [v15 mainBundle];
    v33._object = 0xED0000657469726FLL;
    v33._countAndFlagsBits = 0x766146206F646E55;
    v17._object = 0x8000000100468450;
    v17._countAndFlagsBits = 0xD00000000000001ALL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v33);

    sub_100010430(v2 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType, v5, &qword_100575870, &unk_100402BE0);
    v19 = type metadata accessor for ContextActionType();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v5, 1, v19) == 1)
    {
      sub_100009104(v5, &qword_100575870, &unk_100402BE0);
      v21 = 0;
    }

    else
    {
      v21 = sub_100234C80() & 1;
      (*(v20 + 8))(v5, v19);
    }

    v22 = swift_allocObject();
    v22[2] = v2;
    v22[3] = a1;
    v22[4] = v21;

    v23 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E99C4;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E4058;
    v24 = _Block_copy(aBlock);
    v25 = [objc_opt_self() contextualActionWithStyle:v21 title:v23 handler:v24];

    _Block_release(v24);

    v26 = v25;
    [v25 setBackgroundColor:0];
    if (v14)
    {
      v27 = String._bridgeToObjectiveC()();

      v28 = [objc_opt_self() systemImageNamed:v27];
    }

    else
    {
      v29 = *(v2 + 32);
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = String._bridgeToObjectiveC()();

      v27 = [objc_opt_self() _systemImageNamed:v30];

      if (!v27)
      {
        v29 = 0;
        goto LABEL_19;
      }

      v28 = [v27 imageWithRenderingMode:2];
    }

    v29 = v28;

LABEL_19:
    [v26 setImage:v29];

    return v26;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_13;
  }

  return 0;
}

id sub_1001DF290(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D88F4(a1);
  v8 = sub_1003953A8();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v21._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x73676E6974746553;
    v11._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v21);

    (*(v5 + 104))(v7, enum case for ContextActionType.settings(_:), v4);
    v13 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = v13;

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9A90;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E40D0;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:v13 title:v15 handler:v16];

    _Block_release(v16);

    [v17 setBackgroundColor:0];
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    [v17 setImage:v19];
    return v17;
  }

  return result;
}

id sub_1001DF580(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContextActionType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001DFBF8(a1);
  v8 = sub_1003B1B64();
  result = 0;
  if (v8)
  {
    v10 = [objc_opt_self() mainBundle];
    v21._object = 0x8000000100468470;
    v11._countAndFlagsBits = 0x6853206F74206F47;
    v11._object = 0xEA0000000000776FLL;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD000000000000021;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v21);

    (*(v5 + 104))(v7, enum case for ContextActionType.episodeGoToShow(_:), v4);
    v13 = sub_100234C80() & 1;
    (*(v5 + 8))(v7, v4);
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = v13;

    v15 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1001E9B5C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002348A4;
    aBlock[3] = &unk_1004E4148;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:v13 title:v15 handler:v16];

    _Block_release(v16);

    [v17 setBackgroundColor:0];
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() systemImageNamed:v18];

    [v17 setImage:v19];
    return v17;
  }

  return result;
}

uint64_t sub_1001DF898(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 64) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 56) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 56) = *(result + *v6);
  }
}

uint64_t sub_1001DF990(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v1 + 16) = v4;
LABEL_8:

    return sub_1002EB97C();
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_100576670;
LABEL_7:
    *(v1 + 16) = *(v5 + *v6);

    goto LABEL_8;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_1005766C8;
    goto LABEL_7;
  }

  return sub_1002EB97C();
}

uint64_t sub_1001DFAA0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 88) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 16) = v4;
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_100576670;
LABEL_7:
    *(v1 + 16) = *(v5 + *v6);

    goto LABEL_8;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = &qword_1005766C8;
    goto LABEL_7;
  }

LABEL_9:
  sub_100004428(v2 + 32, &v8);
  type metadata accessor for EpisodeDeletionActionProvider();
  swift_allocObject();

  *(v2 + 80) = EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)();
}

uint64_t sub_1001DFBF8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 24) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 16) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 16) = *(result + *v6);
  }
}

uint64_t sub_1001DFCF0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 40) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 16) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        goto LABEL_9;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 16) = *(result + *v6);
  }

LABEL_9:
  v7 = *(v2 + 16);
  if (v7)
  {

    if (sub_100397D28(v8))
    {
      sub_100236C04(v7);
      sub_10023778C();
    }
  }

  return result;
}

uint64_t sub_1001DFE1C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v1 + 16) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v4 = sub_1001ECDA0();

    *(v2 + 24) = v4;
  }

  else
  {
    type metadata accessor for EpisodeContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v6 = &qword_100576670;
    }

    else
    {
      type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v6 = &qword_1005766C8;
    }

    *(v1 + 24) = *(result + *v6);
  }
}

void sub_1001DFF14(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    v3 = sub_1001ECDA0();

    *(v1 + 16) = v3;
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &qword_100576670;
LABEL_7:
    *(v1 + 16) = *(v4 + *v5);

    goto LABEL_8;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = &qword_1005766C8;
    goto LABEL_7;
  }

LABEL_9:
  sub_100354F28();
}

uint64_t sub_1001E0018(__n128 a1)
{
  v2 = type metadata accessor for EpisodeContextActionDataType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&unk_10057BBB0, &qword_100403860);
  v6 = __chkstk_darwin();
  v8 = &v16[-v7];
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001E9140(v9 + v10, v8, type metadata accessor for EpisodeContextActionDataType);
    (*(v3 + 56))(v8, 0, 1, v2);
    sub_100009104(v8, &unk_10057BBB0, &qword_100403860);
    v11 = *(v1 + 16);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
      swift_beginAccess();
      sub_1001E9140(v11 + v12, v5, type metadata accessor for EpisodeContextActionDataType);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1001E92E4(v5, type metadata accessor for EpisodeContextActionDataType);
      }

      else
      {
        v14 = *(v5 + 1);

        if (v14)
        {
          v15 = *(v14 + 16);

          if (v15)
          {
            return 1;
          }
        }
      }
    }
  }

  else
  {
    (*(v3 + 56))(v8, 1, 1, v2, v6);
    sub_100009104(v8, &unk_10057BBB0, &qword_100403860);
  }

  return 0;
}

void sub_1001E0268(__n128 a1)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001E9140(v4 + v5, v3, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1001E92E4(v3, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {
      if (*(v3 + 1))
      {
        if (*(v1 + 80))
        {

          dispatch thunk of EpisodeDeletionActionProvider.deleteEpisodesFromStations(episodeUuids:stationUuids:)();
        }
      }
    }
  }
}

uint64_t sub_1001E039C()
{

  sub_100004590((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1001E0420()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x8000000100468170;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001E04C0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.removeFromStation(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001E0534@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.removeFromStation(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001E0610()
{
  sub_100004428(v0 + 32, v2);
  type metadata accessor for EpisodeDeletionActionProvider();
  swift_allocObject();

  *(v0 + 80) = EpisodeDeletionActionProvider.init(asPartOf:episodeDownloadStateController:libraryActionController:)();
}

double sub_1001E06A0@<D0>(uint64_t a1@<X8>)
{
  sub_1001E9000(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001E071C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1001E07C0(uint64_t a1, uint64_t a2)
{
  result = sub_1001E91A8(&unk_1005821A0, a2, type metadata accessor for RemoveFromStationContextAction, &unk_1004037D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E0818(uint64_t a1, uint64_t a2)
{
  result = sub_1001E91A8(&qword_100576478, a2, type metadata accessor for RemoveFromStationContextAction, &unk_100403828);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001E0870(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v33 = a4;
  v34 = a3;
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v9 = &v28[-v8];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v28[-v12];
  v14 = type metadata accessor for PresentationSource();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v28[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v18 = __chkstk_darwin().n128_u64[0];
  v20 = &v28[-v19];
  v21 = [a1 presentationSourceItem];
  if (v21)
  {
    v22 = v21;
    v32 = a2;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v13, &unk_10057BB90, &unk_100402D60);
      a2 = v32;
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      v31 = a5;
      v30 = *(v15 + 16);
      v30(v17, v20, v14);
      *v9 = v22;
      v29 = enum case for PresentationSource.Position.sourceItem(_:);
      v23 = type metadata accessor for PresentationSource.Position();
      v24 = *(v23 - 8);
      (*(v24 + 104))(v9, v29, v23);
      (*(v24 + 56))(v9, 0, 1, v23);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v30(v11, v17, v14);
      a5 = v31;
      (*(v15 + 56))(v11, 0, 1, v14);
      a2 = v32;
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v25 = *(v15 + 8);
      v25(v17, v14);
      v25(v20, v14);
    }
  }

  v26 = v33(a2);
  return a5(v26);
}

uint64_t sub_1001E0C14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v36 = a3;
  v37 = a2;
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v10 = &v29[-v9];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v14 = &v29[-v13];
  v15 = type metadata accessor for PresentationSource();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v19 = __chkstk_darwin().n128_u64[0];
  v21 = &v29[-v20];
  v22 = [a1 presentationSourceItem];
  if (v22)
  {
    v23 = v22;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v14, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      v32 = a7;
      v31 = *(v16 + 16);
      v31(v18, v21, v15);
      *v10 = v23;
      v30 = enum case for PresentationSource.Position.sourceItem(_:);
      v24 = type metadata accessor for PresentationSource.Position();
      v25 = *(v24 - 8);
      (*(v25 + 104))(v10, v30, v24);
      (*(v25 + 56))(v10, 0, 1, v24);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v31(v12, v18, v15);
      a7 = v32;
      (*(v16 + 56))(v12, 0, 1, v15);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v26 = *(v16 + 8);
      v26(v18, v15);
      v26(v21, v15);
    }
  }

  v27 = v35(v37, v33, v34);
  return a7(v27);
}

uint64_t sub_1001E0FBC(void *a1, uint64_t a2, void *a3, __n128 a4)
{
  v36 = a2;
  v34 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v35 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v8 = &v30[-v7];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v30[-v11];
  v13 = type metadata accessor for PresentationSource();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v30[-v18];
  v20 = [a1 presentationSourceItem];
  if (v20)
  {
    v21 = v20;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v12, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      (*(v14 + 32))(v19, v12, v13);
      v33 = a3;
      v32 = *(v14 + 16);
      v32(v16, v19, v13);
      *v8 = v21;
      v31 = enum case for PresentationSource.Position.sourceItem(_:);
      v22 = type metadata accessor for PresentationSource.Position();
      v23 = *(v22 - 8);
      (*(v23 + 104))(v8, v31, v22);
      (*(v23 + 56))(v8, 0, 1, v22);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v32(v10, v16, v13);
      a3 = v33;
      (*(v14 + 56))(v10, 0, 1, v13);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v24 = *(v14 + 8);
      v24(v16, v13);
      v24(v19, v13);
    }
  }

  result = sub_1001E63F8(v36, sub_1001E85D8, &OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel);
  v26 = a3[3];
  if (v26)
  {
    v27 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    v28 = v26 + v27;
    v29 = v35;
    sub_1001E9140(v28, v35, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_1001E92E4(v29, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {

      sub_1000044A0(a3 + 4, a3[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();
    }
  }

  return result;
}

uint64_t sub_1001E1484(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v6 = &v29[-v5];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v29[-v9];
  v11 = type metadata accessor for PresentationSource();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v29[-v16];
  v18 = [a1 presentationSourceItem];
  if (v18)
  {
    v20 = v18;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v10, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v32 = a3;
      v31 = *(v12 + 16);
      v31(v14, v17, v11);
      *v6 = v20;
      v30 = enum case for PresentationSource.Position.sourceItem(_:);
      v21 = type metadata accessor for PresentationSource.Position();
      v22 = *(v21 - 8);
      (*(v22 + 104))(v6, v30, v21);
      (*(v22 + 56))(v6, 0, 1, v21);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v31(v8, v14, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v23 = *(v12 + 8);
      v23(v14, v11);
      v23(v17, v11);
      a3 = v32;
    }
  }

  sub_1002B9778(v19);
  v24 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v25 = *(a3 + 48);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = sub_10024E918;
  v26[4] = 0;
  aBlock[4] = sub_1001E9C64;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004E3DB0;
  v27 = _Block_copy(aBlock);
  swift_retain_n();

  [v24 reportAConcernURLWithCompletion:v27];
  _Block_release(v27);
}

void sub_1001E191C(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v6 = &v23[-v5];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v23[-v9];
  v11 = type metadata accessor for PresentationSource();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v23[-v16];
  v18 = [a1 presentationSourceItem];
  if (v18)
  {
    v19 = v18;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      swift_unknownObjectRelease();
      sub_100009104(v10, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v26 = a3;
      v25 = *(v12 + 16);
      v25(v14, v17, v11);
      *v6 = v19;
      v24 = enum case for PresentationSource.Position.sourceItem(_:);
      v20 = type metadata accessor for PresentationSource.Position();
      v21 = *(v20 - 8);
      (*(v21 + 104))(v6, v24, v20);
      (*(v21 + 56))(v6, 0, 1, v20);
      swift_unknownObjectRetain();
      PresentationSource.position.setter();
      v25(v8, v14, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      dispatch thunk of ContextActionsConfiguration.presentationSource.setter();
      swift_unknownObjectRelease();
      v22 = *(v12 + 8);
      v22(v14, v11);
      v22(v17, v11);
    }
  }

  sub_10031FEB0();
}

uint64_t sub_1001E1CA8(uint64_t a1)
{
  v73 = type metadata accessor for PresentationSource.Position();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v75 = v66 - v3;
  v86 = type metadata accessor for ActionMetricsBehavior();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v78 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSLogger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v82 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v66 - v11;
  v88 = type metadata accessor for ActionOrigin();
  v87 = *(v88 - 8);
  __chkstk_darwin();
  v83 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v77 = v66 - v13;
  v14 = type metadata accessor for MetricsLabel();
  v76 = *(v14 - 8);
  __chkstk_darwin();
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for NativeClickMetricsAction();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v74 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = v66 - v21;
  result = sub_1001E85D8(a1);
  if (v24)
  {
    v69 = result;
    v90 = v6;
    v25 = v7;
    v70 = v18;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v26 = type metadata accessor for PresentationSource();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    v29 = v27 + 48;
    if (v28(v22, 1, v26) || (v66[2] = v29, v67 = v28, v68 = v26, (v31 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v22, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v32 = v31;
      sub_100009104(v22, &unk_10057BB90, &unk_100402D60);
      v33 = UIResponder.nearestActionRunner.getter();
      v66[1] = v34;

      if (v33)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
        {
          v35 = static MetricsTargetType.transcriptText.getter();
        }

        else
        {
          v35 = static MetricsTargetType.button.getter();
        }

        v90 = v35;
        v36 = v76;
        (*(v76 + 104))(v16, enum case for MetricsLabel.removeFromStation(_:), v14);
        MetricsLabel.rawValue.getter();
        (*(v36 + 8))(v16, v14);
        v37 = swift_dynamicCastClass();
        v66[0] = v33;
        if (v37)
        {
          static MetricsActionContext.selectionMenu.getter();
        }

        else
        {
          static MetricsActionContext.contextual.getter();
        }

        v38 = v89;
        v39 = type metadata accessor for URL();
        v40 = v77;
        (*(*(v39 - 8) + 56))(v77, 1, 1, v39);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v103 = v96;
        sub_100009104(&v103, &unk_100574650, &unk_1004023C0);
        v102 = v97;
        sub_100009104(&v102, &unk_100573A90, &unk_100401170);
        v101 = v98;
        sub_100009104(&v101, &unk_100574660, &unk_1004023D0);
        sub_100037470(v99, v100);

        sub_100009104(v40, &qword_100574040, &unk_100400AD0);
        v41 = v79;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v42 = v88;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v43 = v87;
        v44 = *(v87 + 48);
        if (v44(v38, 1, v42) != 1)
        {
          v50 = v83;
          sub_1001E91F0(v38, v83, v45);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v57 = v82;
          sub_1001E9140(v50, v82, &type metadata accessor for ActionOrigin);
          (*(v43 + 56))(v57, 0, 1, v42);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v57, &qword_100576488, &unk_100403870);
          swift_getObjectType();
          v58 = v81;
          v92 = v81;
          v93 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
          v59 = sub_10000E680(v91);
          v60 = v80;
          (*(v80 + 16))(v59, v41, v58);
          v61 = v85;
          v62 = v84;
          v63 = v86;
          (*(v85 + 104))(v84, enum case for ActionMetricsBehavior.fromAction(_:), v86);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v61 + 8))(v62, v63);
          sub_1001E92E4(v50, &type metadata accessor for ActionOrigin);
          (*(v60 + 8))(v41, v58);
          return sub_100004590(v91);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v46 = v92;
        v47 = v41;
        if (v92)
        {
          v48 = sub_1000044A0(v91, v92);
          *(&v95 + 1) = v46;
          v49 = sub_10000E680(&v94);
          (*(*(v46 - 8) + 16))(v49, v48, v46);
          sub_100004590(v91);
        }

        else
        {
          sub_100009104(v91, &qword_100576490, &qword_100403D40);
          v94 = 0u;
          v95 = 0u;
        }

        v51 = v75;
        v52 = v74;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v53 = v52;
        v54 = v67(v52, 1, v68);
        v41 = v47;
        if (!v54)
        {
          PresentationSource.position.getter();
          v55 = v72;
          v56 = v73;
          if (!(*(v72 + 48))(v51, 1, v73))
          {
            v64 = v53;
            v65 = v71;
            (*(v55 + 16))(v71, v51, v56);
            sub_100009104(v51, &qword_100576480, &qword_100403868);
            sub_100009104(v64, &unk_10057BB90, &unk_100402D60);
            PresentationSource.Position.view.getter();
            v42 = v88;
            (*(v55 + 8))(v65, v56);
            v43 = v87;
            v38 = v89;
LABEL_24:
            v50 = v83;
            ActionOrigin.init(context:sender:view:)();
            if (v44(v38, 1, v42) != 1)
            {
              sub_100009104(v38, &qword_100576488, &unk_100403870);
            }

            goto LABEL_26;
          }

          sub_100009104(v51, &qword_100576480, &qword_100403868);
          v38 = v89;
        }

        sub_100009104(v53, &unk_10057BB90, &unk_100402D60);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    v30 = v90;
    Logger.error(_:)();

    return (*(v25 + 8))(v9, v30);
  }

  return result;
}

uint64_t sub_1001E2B14(uint64_t a1)
{
  v73 = type metadata accessor for PresentationSource.Position();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v70 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v71 = &v60 - v3;
  v4 = type metadata accessor for ActionMetricsBehavior();
  v84 = *(v4 - 8);
  __chkstk_darwin();
  v83 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSLogger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v79 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v60 - v12;
  v77 = type metadata accessor for ActionOrigin();
  v85 = *(v77 - 8);
  __chkstk_darwin();
  v82 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v15 = &v60 - v14;
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v75 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for NativeClickMetricsAction();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v78 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v74 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v60 - v19;
  result = sub_1001E885C(a1);
  if (v22)
  {
    v67 = result;
    v68 = v15;
    v69 = v4;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v23 = type metadata accessor for PresentationSource();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    v26 = v24 + 48;
    if (v25(v20, 1, v23) || (v64 = v26, v65 = v25, v66 = a1, (v27 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v20, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v28 = v27;
      sub_100009104(v20, &unk_10057BB90, &unk_100402D60);
      v29 = UIResponder.nearestActionRunner.getter();
      v31 = v30;

      if (v29)
      {
        v62 = v31;
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v32 = swift_dynamicCastClass();
        v63 = v29;
        v61 = v23;
        if (v32)
        {
          static MetricsTargetType.transcriptText.getter();
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.selectionMenu.getter();
          v33 = v68;
        }

        else
        {
          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (swift_dynamicCastClass())
          {
            static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            static MetricsTargetType.button.getter();
          }

          v33 = v68;
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.contextual.getter();
        }

        v34 = type metadata accessor for URL();
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v99 = v92;
        sub_100009104(&v99, &unk_100574650, &unk_1004023C0);
        v98 = v93;
        sub_100009104(&v98, &unk_100573A90, &unk_100401170);
        v97 = v94;
        sub_100009104(&v97, &unk_100574660, &unk_1004023D0);
        sub_100037470(v95, v96);

        sub_100009104(v33, &qword_100574040, &unk_100400AD0);
        v35 = v78;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v36 = v86;
        v37 = v77;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v38 = v85;
        v39 = *(v85 + 48);
        if (v39(v36, 1, v37) != 1)
        {
          v42 = v82;
          sub_1001E91F0(v36, v82, v40);
          v45 = v69;
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v52 = v79;
          sub_1001E9140(v42, v79, &type metadata accessor for ActionOrigin);
          (*(v38 + 56))(v52, 0, 1, v37);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v52, &qword_100576488, &unk_100403870);
          swift_getObjectType();
          v53 = v81;
          v88 = v81;
          v89 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
          v54 = sub_10000E680(v87);
          v55 = v80;
          (*(v80 + 16))(v54, v35, v53);
          v56 = v84;
          v57 = v83;
          (*(v84 + 104))(v83, enum case for ActionMetricsBehavior.fromAction(_:), v45);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v56 + 8))(v57, v45);
          sub_1001E92E4(v42, &type metadata accessor for ActionOrigin);
          (*(v55 + 8))(v35, v53);
          return sub_100004590(v87);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v41 = v88;
        v42 = v82;
        if (v88)
        {
          v43 = sub_1000044A0(v87, v88);
          *(&v91 + 1) = v41;
          v44 = sub_10000E680(&v90);
          (*(*(v41 - 8) + 16))(v44, v43, v41);
          sub_100004590(v87);
        }

        else
        {
          sub_100009104(v87, &qword_100576490, &qword_100403D40);
          v90 = 0u;
          v91 = 0u;
        }

        v46 = v74;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v47 = v65(v46, 1, v61);
        v45 = v69;
        v48 = v86;
        if (!v47)
        {
          v49 = v71;
          PresentationSource.position.getter();
          v50 = v49;
          v51 = v72;
          if (!(*(v72 + 48))(v50, 1, v73))
          {
            v58 = v50;
            v59 = v70;
            (*(v51 + 16))(v70, v58, v73);
            sub_100009104(v58, &qword_100576480, &qword_100403868);
            sub_100009104(v46, &unk_10057BB90, &unk_100402D60);
            PresentationSource.Position.view.getter();
            (*(v51 + 8))(v59, v73);
            v38 = v85;
            v48 = v86;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            if (v39(v48, 1, v37) != 1)
            {
              sub_100009104(v48, &qword_100576488, &unk_100403870);
            }

            goto LABEL_26;
          }

          sub_100009104(v50, &qword_100576480, &qword_100403868);
          v48 = v86;
        }

        sub_100009104(v46, &unk_10057BB90, &unk_100402D60);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1001E38EC(uint64_t a1)
{
  v74 = type metadata accessor for PresentationSource.Position();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v76 = v66 - v3;
  v87 = type metadata accessor for ActionMetricsBehavior();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v79 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v83 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v90 = v66 - v7;
  v80 = type metadata accessor for ActionOrigin();
  v88 = *(v80 - 8);
  __chkstk_darwin();
  v84 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v78 = v66 - v9;
  v10 = type metadata accessor for MetricsLabel();
  v77 = *(v10 - 8);
  __chkstk_darwin();
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NativeClickMetricsAction();
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v89 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSLogger();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v75 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = v66 - v21;
  result = sub_1001E85D8(a1);
  if (v24)
  {
    v69 = result;
    v70 = v10;
    v71 = v14;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v25 = type metadata accessor for PresentationSource();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    v28 = v26 + 48;
    if (v27(v22, 1, v25) || (v66[4] = v28, v67 = v27, v68 = v25, (v29 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v22, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v30 = v29;
      sub_100009104(v22, &unk_10057BB90, &unk_100402D60);
      v31 = UIResponder.nearestActionRunner.getter();
      v66[3] = v32;

      if (v31)
      {
        v66[2] = v31;
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
        {
          v33 = static MetricsTargetType.transcriptText.getter();
        }

        else
        {
          v33 = static MetricsTargetType.button.getter();
        }

        v66[0] = v33;
        v66[1] = v34;
        v35 = v70;
        v36 = v77;
        (*(v77 + 104))(v12, enum case for MetricsLabel.play(_:), v70);
        MetricsLabel.rawValue.getter();
        (*(v36 + 8))(v12, v35);
        if (swift_dynamicCastClass())
        {
          static MetricsActionContext.selectionMenu.getter();
        }

        else
        {
          static MetricsActionContext.contextual.getter();
        }

        v37 = v89;
        v38 = type metadata accessor for URL();
        v39 = v78;
        (*(*(v38 - 8) + 56))(v78, 1, 1, v38);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v103 = v96;
        sub_100009104(&v103, &unk_100574650, &unk_1004023C0);
        v102 = v97;
        sub_100009104(&v102, &unk_100573A90, &unk_100401170);
        v101 = v98;
        sub_100009104(&v101, &unk_100574660, &unk_1004023D0);
        sub_100037470(v99, v100);

        sub_100009104(v39, &qword_100574040, &unk_100400AD0);
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v40 = v90;
        v41 = v80;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v42 = v88;
        v43 = *(v88 + 48);
        if (v43(v40, 1, v41) != 1)
        {
          v46 = v84;
          sub_1001E91F0(v40, v84, v44);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v57 = v83;
          sub_1001E9140(v46, v83, &type metadata accessor for ActionOrigin);
          (*(v42 + 56))(v57, 0, 1, v41);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v57, &qword_100576488, &unk_100403870);
          swift_getObjectType();
          v58 = v82;
          v92 = v82;
          v93 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
          v59 = sub_10000E680(v91);
          v60 = v81;
          (*(v81 + 16))(v59, v37, v58);
          v61 = v86;
          v62 = v85;
          v63 = v87;
          (*(v86 + 104))(v85, enum case for ActionMetricsBehavior.fromAction(_:), v87);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v61 + 8))(v62, v63);
          sub_1001E92E4(v46, &type metadata accessor for ActionOrigin);
          (*(v60 + 8))(v37, v58);
          return sub_100004590(v91);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v45 = v92;
        v46 = v84;
        if (v92)
        {
          v47 = sub_1000044A0(v91, v92);
          *(&v95 + 1) = v45;
          v48 = sub_10000E680(&v94);
          (*(*(v45 - 8) + 16))(v48, v47, v45);
          sub_100004590(v91);
        }

        else
        {
          sub_100009104(v91, &qword_100576490, &qword_100403D40);
          v94 = 0u;
          v95 = 0u;
        }

        v49 = v76;
        v50 = v67;
        v51 = v75;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v52 = v50(v51, 1, v68);
        v53 = v90;
        if (!v52)
        {
          PresentationSource.position.getter();
          v54 = v73;
          v55 = v74;
          if (!(*(v73 + 48))(v49, 1, v74))
          {
            v64 = v49;
            v65 = v72;
            (*(v54 + 16))(v72, v64, v55);
            sub_100009104(v64, &qword_100576480, &qword_100403868);
            sub_100009104(v51, &unk_10057BB90, &unk_100402D60);
            PresentationSource.Position.view.getter();
            (*(v54 + 8))(v65, v55);
            v42 = v88;
            v53 = v90;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            v56 = v43(v53, 1, v41);
            v37 = v89;
            if (v56 != 1)
            {
              sub_100009104(v53, &qword_100576488, &unk_100403870);
            }

            goto LABEL_26;
          }

          sub_100009104(v49, &qword_100576480, &qword_100403868);
          v53 = v90;
        }

        sub_100009104(v51, &unk_10057BB90, &unk_100402D60);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1001E4758(uint64_t a1)
{
  v73 = type metadata accessor for PresentationSource.Position();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v70 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v71 = &v60 - v3;
  v4 = type metadata accessor for ActionMetricsBehavior();
  v84 = *(v4 - 8);
  __chkstk_darwin();
  v83 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v79 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v60 - v8;
  v77 = type metadata accessor for ActionOrigin();
  v85 = *(v77 - 8);
  __chkstk_darwin();
  v82 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v11 = &v60 - v10;
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v75 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for NativeClickMetricsAction();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v78 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OSLogger();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v74 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v60 - v19;
  result = sub_1001E85D8(a1);
  if (v22)
  {
    v67 = result;
    v68 = v11;
    v69 = v4;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v23 = type metadata accessor for PresentationSource();
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    v26 = v24 + 48;
    if (v25(v20, 1, v23) || (v65 = v26, v66 = v25, (v27 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v20, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v28 = v27;
      sub_100009104(v20, &unk_10057BB90, &unk_100402D60);
      v29 = UIResponder.nearestActionRunner.getter();
      v63 = v30;

      v64 = v29;
      if (v29)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v31 = swift_dynamicCastClass();
        v61 = v23;
        v62 = a1;
        if (v31)
        {
          static MetricsTargetType.transcriptText.getter();
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.selectionMenu.getter();
          v32 = v68;
        }

        else
        {
          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (swift_dynamicCastClass())
          {
            static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            static MetricsTargetType.button.getter();
          }

          v32 = v68;
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.contextual.getter();
        }

        v33 = type metadata accessor for URL();
        (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v99 = v92;
        sub_100009104(&v99, &unk_100574650, &unk_1004023C0);
        v98 = v93;
        sub_100009104(&v98, &unk_100573A90, &unk_100401170);
        v97 = v94;
        sub_100009104(&v97, &unk_100574660, &unk_1004023D0);
        sub_100037470(v95, v96);

        sub_100009104(v32, &qword_100574040, &unk_100400AD0);
        v34 = v78;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v35 = v86;
        v36 = v77;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v37 = v85;
        v38 = *(v85 + 48);
        if (v38(v35, 1, v36) != 1)
        {
          v41 = v82;
          sub_1001E91F0(v35, v82, v39);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v51 = v79;
          sub_1001E9140(v41, v79, &type metadata accessor for ActionOrigin);
          (*(v37 + 56))(v51, 0, 1, v36);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v51, &qword_100576488, &unk_100403870);
          swift_getObjectType();
          v52 = v81;
          v88 = v81;
          v89 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
          v53 = sub_10000E680(v87);
          v54 = v80;
          (*(v80 + 16))(v53, v34, v52);
          v55 = v84;
          v56 = v83;
          v57 = v69;
          (*(v84 + 104))(v83, enum case for ActionMetricsBehavior.fromAction(_:), v69);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v55 + 8))(v56, v57);
          sub_1001E92E4(v41, &type metadata accessor for ActionOrigin);
          (*(v54 + 8))(v34, v52);
          return sub_100004590(v87);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v40 = v88;
        v41 = v82;
        v42 = v34;
        if (v88)
        {
          v43 = sub_1000044A0(v87, v88);
          *(&v91 + 1) = v40;
          v44 = sub_10000E680(&v90);
          v45 = v43;
          v35 = v86;
          (*(*(v40 - 8) + 16))(v44, v45, v40);
          sub_100004590(v87);
        }

        else
        {
          sub_100009104(v87, &qword_100576490, &qword_100403D40);
          v90 = 0u;
          v91 = 0u;
        }

        v46 = v74;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v47 = v46;
        v48 = v66(v46, 1, v61);
        v34 = v42;
        if (!v48)
        {
          v49 = v71;
          PresentationSource.position.getter();
          v50 = v72;
          if (!(*(v72 + 48))(v49, 1, v73))
          {
            v58 = v70;
            (*(v50 + 16))(v70, v49, v73);
            sub_100009104(v49, &qword_100576480, &qword_100403868);
            sub_100009104(v74, &unk_10057BB90, &unk_100402D60);
            PresentationSource.Position.view.getter();
            v59 = v58;
            v37 = v85;
            (*(v50 + 8))(v59, v73);
            v35 = v86;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            if (v38(v35, 1, v36) != 1)
            {
              sub_100009104(v35, &qword_100576488, &unk_100403870);
            }

            goto LABEL_26;
          }

          sub_100009104(v49, &qword_100576480, &qword_100403868);
          v47 = v74;
        }

        sub_100009104(v47, &unk_10057BB90, &unk_100402D60);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1001E5524(uint64_t a1)
{
  v74 = type metadata accessor for PresentationSource.Position();
  v75 = *(v74 - 8);
  __chkstk_darwin();
  v72 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v73 = v66 - v4;
  v87 = type metadata accessor for ActionMetricsBehavior();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v77 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v83 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = v66 - v8;
  v80 = type metadata accessor for ActionOrigin();
  v88 = *(v80 - 8);
  __chkstk_darwin();
  v84 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v79 = v66 - v10;
  v11 = type metadata accessor for MetricsLabel();
  v78 = *(v11 - 8);
  __chkstk_darwin();
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NativeClickMetricsAction();
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v90 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSLogger();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v76 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = v66 - v22;
  v24 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (!*(v1 + v24) || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), (result = swift_dynamicCastClass()) == 0))
  {
    result = sub_1001E85D8(a1);
    if (v26)
    {
      v69 = result;
      v71 = v26;
      v70 = v15;
      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
      v27 = type metadata accessor for PresentationSource();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      v30 = v28 + 48;
      if (v29(v23, 1, v27) || (v66[4] = v30, v67 = v29, v68 = v27, (v31 = PresentationSource.viewController.getter()) == 0))
      {

        sub_100009104(v23, &unk_10057BB90, &unk_100402D60);
      }

      else
      {
        v32 = v31;
        sub_100009104(v23, &unk_10057BB90, &unk_100402D60);
        v33 = UIResponder.nearestActionRunner.getter();
        v66[2] = v34;

        v66[3] = v33;
        if (v33)
        {
          type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
          if (swift_dynamicCastClass() || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
          {
            v35 = static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            v35 = static MetricsTargetType.button.getter();
          }

          v66[0] = v35;
          v66[1] = v36;
          v37 = v78;
          (*(v78 + 104))(v13, enum case for MetricsLabel.viewTranscript(_:), v11);
          MetricsLabel.rawValue.getter();
          (*(v37 + 8))(v13, v11);
          if (swift_dynamicCastClass())
          {
            static MetricsActionContext.selectionMenu.getter();
          }

          else
          {
            static MetricsActionContext.contextual.getter();
          }

          v38 = v80;
          v39 = type metadata accessor for URL();
          v40 = v79;
          (*(*(v39 - 8) + 56))(v79, 1, 1, v39);
          static MetricsDataConfiguration.default.getter();
          static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

          v103 = v96;
          sub_100009104(&v103, &unk_100574650, &unk_1004023C0);
          v102 = v97;
          sub_100009104(&v102, &unk_100573A90, &unk_100401170);
          v101 = v98;
          sub_100009104(&v101, &unk_100574660, &unk_1004023D0);
          sub_100037470(v99, v100);

          sub_100009104(v40, &qword_100574040, &unk_100400AD0);
          NativeClickMetricsAction.init(_:)();
          ContextActionsConfiguration.objectGraph.getter();
          v41 = v89;
          BaseObjectGraph.injectIfAvailable<A>(_:)();

          v42 = v88;
          v43 = *(v88 + 48);
          v45 = v38;
          if (v43(v41, 1, v38) != 1)
          {
            v47 = v84;
            sub_1001E91F0(v41, v84, v44);
LABEL_28:
            type metadata accessor for ActionRunnerOptions();
            ContextActionsConfiguration.objectGraph.getter();
            BaseObjectGraph.__allocating_init(_:)();
            v55 = v83;
            sub_1001E9140(v47, v83, &type metadata accessor for ActionOrigin);
            (*(v42 + 56))(v55, 0, 1, v45);
            ActionRunnerOptions.withActionOrigin(_:)();

            sub_100009104(v55, &qword_100576488, &unk_100403870);
            swift_getObjectType();
            v56 = v82;
            v92 = v82;
            v93 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
            v57 = sub_10000E680(v91);
            v58 = v81;
            v59 = v90;
            (*(v81 + 16))(v57, v90, v56);
            v60 = v86;
            v61 = v85;
            v62 = v87;
            (*(v86 + 104))(v85, enum case for ActionMetricsBehavior.fromAction(_:), v87);
            ActionRunner.perform(_:withMetrics:asPartOf:)();
            swift_unknownObjectRelease();

            (*(v60 + 8))(v61, v62);
            sub_1001E92E4(v47, &type metadata accessor for ActionOrigin);
            (*(v58 + 8))(v59, v56);
            return sub_100004590(v91);
          }

          dispatch thunk of ContextActionsConfiguration.context.getter();
          dispatch thunk of ContextActionsConfiguration.previewModel.getter();
          v46 = v92;
          v47 = v84;
          if (v92)
          {
            v48 = sub_1000044A0(v91, v92);
            *(&v95 + 1) = v46;
            v49 = sub_10000E680(&v94);
            v50 = v48;
            v41 = v89;
            (*(*(v46 - 8) + 16))(v49, v50, v46);
            sub_100004590(v91);
          }

          else
          {
            sub_100009104(v91, &qword_100576490, &qword_100403D40);
            v94 = 0u;
            v95 = 0u;
          }

          v51 = v76;
          dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
          if (!v67(v51, 1, v68))
          {
            v52 = v73;
            v53 = v51;
            PresentationSource.position.getter();
            v54 = v74;
            if (!(*(v75 + 48))(v52, 1, v74))
            {
              v63 = v75;
              v64 = v72;
              (*(v75 + 16))(v72, v52, v54);
              sub_100009104(v52, &qword_100576480, &qword_100403868);
              sub_100009104(v53, &unk_10057BB90, &unk_100402D60);
              PresentationSource.Position.view.getter();
              v65 = v64;
              v41 = v89;
              (*(v63 + 8))(v65, v54);
              v42 = v88;
LABEL_26:
              ActionOrigin.init(context:sender:view:)();
              if (v43(v41, 1, v45) != 1)
              {
                sub_100009104(v41, &qword_100576488, &unk_100403870);
              }

              goto LABEL_28;
            }

            sub_100009104(v52, &qword_100576480, &qword_100403868);
            v51 = v53;
          }

          sub_100009104(v51, &unk_10057BB90, &unk_100402D60);
          goto LABEL_26;
        }
      }

      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660, qword_100403D70);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      return (*(v18 + 8))(v20, v17);
    }
  }

  return result;
}

uint64_t sub_1001E63F8(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), void *a3)
{
  v87 = a3;
  v82 = type metadata accessor for PresentationSource.Position();
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v80 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v84 = v74 - v7;
  v97 = type metadata accessor for ActionMetricsBehavior();
  v96 = *(v97 - 8);
  __chkstk_darwin();
  v95 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v89 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v93 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = v74 - v11;
  v90 = type metadata accessor for ActionOrigin();
  v98 = *(v90 - 8);
  __chkstk_darwin();
  v94 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v88 = v74 - v13;
  v14 = type metadata accessor for MetricsLabel();
  v85 = *(v14 - 8);
  __chkstk_darwin();
  v16 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v18 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for NativeClickMetricsAction();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v100 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OSLogger();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v83 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin();
  v27 = v74 - v26;
  v86 = v3;
  result = a2(a1, v25);
  if (v29)
  {
    v77 = result;
    v78 = v14;
    v79 = v18;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v30 = type metadata accessor for PresentationSource();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v33 = v31 + 48;
    if (v32(v27, 1, v30) || (v74[6] = v33, v75 = v32, v76 = v30, (v34 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v27, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v35 = v34;
      sub_100009104(v27, &unk_10057BB90, &unk_100402D60);
      v36 = UIResponder.nearestActionRunner.getter();
      v74[5] = v37;

      if (v36)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v38 = swift_dynamicCastClass();
        v74[4] = v36;
        if (v38 || (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
        {
          v39 = static MetricsTargetType.transcriptText.getter();
        }

        else
        {
          v39 = static MetricsTargetType.button.getter();
        }

        v74[1] = v39;
        v74[3] = v40;
        v41 = v78;
        v42 = v85;
        (*(v85 + 16))(v16, v86 + *v87, v78);
        MetricsLabel.rawValue.getter();
        (*(v42 + 8))(v16, v41);
        v43 = swift_dynamicCastClass();
        v74[2] = a1;
        if (v43)
        {
          static MetricsActionContext.selectionMenu.getter();
        }

        else
        {
          static MetricsActionContext.contextual.getter();
        }

        v44 = v100;
        v45 = v90;
        v46 = type metadata accessor for URL();
        v47 = v88;
        (*(*(v46 - 8) + 56))(v88, 1, 1, v46);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v113 = v106;
        sub_100009104(&v113, &unk_100574650, &unk_1004023C0);
        v112 = v107;
        sub_100009104(&v112, &unk_100573A90, &unk_100401170);
        v111 = v108;
        sub_100009104(&v111, &unk_100574660, &unk_1004023D0);
        sub_100037470(v109, v110);

        sub_100009104(v47, &qword_100574040, &unk_100400AD0);
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v48 = v99;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v49 = v98;
        v50 = *(v98 + 48);
        if (v50(v48, 1, v45) != 1)
        {
          v55 = v44;
          v56 = v94;
          sub_1001E91F0(v48, v94, v51);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v65 = v93;
          sub_1001E9140(v56, v93, &type metadata accessor for ActionOrigin);
          (*(v49 + 56))(v65, 0, 1, v45);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v65, &qword_100576488, &unk_100403870);
          swift_getObjectType();
          v66 = v92;
          v102 = v92;
          v103 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
          v67 = sub_10000E680(&v101);
          v68 = v91;
          (*(v91 + 16))(v67, v55, v66);
          v69 = v96;
          v70 = v95;
          v71 = v97;
          (*(v96 + 104))(v95, enum case for ActionMetricsBehavior.fromAction(_:), v97);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v69 + 8))(v70, v71);
          sub_1001E92E4(v56, &type metadata accessor for ActionOrigin);
          (*(v68 + 8))(v55, v66);
          return sub_100004590(&v101);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v52 = v102;
        if (v102)
        {
          v53 = sub_1000044A0(&v101, v102);
          *(&v105 + 1) = v52;
          v54 = sub_10000E680(&v104);
          (*(*(v52 - 8) + 16))(v54, v53, v52);
          sub_100004590(&v101);
        }

        else
        {
          sub_100009104(&v101, &qword_100576490, &qword_100403D40);
          v104 = 0u;
          v105 = 0u;
        }

        v57 = v84;
        v58 = v75;
        v59 = v83;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v60 = v58(v59, 1, v76);
        v56 = v94;
        if (!v60)
        {
          v61 = v59;
          PresentationSource.position.getter();
          v62 = v81;
          v63 = v82;
          if (!(*(v81 + 48))(v57, 1, v82))
          {
            v72 = v80;
            (*(v62 + 16))(v80, v57, v63);
            sub_100009104(v57, &qword_100576480, &qword_100403868);
            sub_100009104(v61, &unk_10057BB90, &unk_100402D60);
            PresentationSource.Position.view.getter();
            v73 = v72;
            v49 = v98;
            (*(v62 + 8))(v73, v63);
LABEL_24:
            v55 = v100;
            ActionOrigin.init(context:sender:view:)();
            v64 = v99;
            if (v50(v99, 1, v45) != 1)
            {
              sub_100009104(v64, &qword_100576488, &unk_100403870);
            }

            goto LABEL_26;
          }

          sub_100009104(v57, &qword_100576480, &qword_100403868);
          v59 = v61;
        }

        sub_100009104(v59, &unk_10057BB90, &unk_100402D60);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v21 + 8))(v23, v20);
  }

  return result;
}

uint64_t sub_1001E7290(uint64_t a1, uint64_t (*a2)(uint64_t, __n128), uint64_t a3)
{
  v73 = a3;
  v70 = type metadata accessor for PresentationSource.Position();
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v67 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576480, &qword_100403868);
  __chkstk_darwin();
  v68 = v63 - v6;
  v83 = type metadata accessor for ActionMetricsBehavior();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext();
  __chkstk_darwin();
  v74 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576488, &unk_100403870);
  __chkstk_darwin();
  v77 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = v63 - v10;
  v75 = type metadata accessor for ActionOrigin();
  v84 = *(v75 - 8);
  __chkstk_darwin();
  v80 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v13 = v63 - v12;
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  v72 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for NativeClickMetricsAction();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v76 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OSLogger();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v71 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin();
  v23 = v63 - v22;
  result = a2(a1, v21);
  if (v25)
  {
    v65 = result;
    v66 = v13;
    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v26 = type metadata accessor for PresentationSource();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    v29 = v27 + 48;
    if (v28(v23, 1, v26) || (v63[4] = v29, v64 = v28, (v30 = PresentationSource.viewController.getter()) == 0))
    {

      sub_100009104(v23, &unk_10057BB90, &unk_100402D60);
    }

    else
    {
      v31 = v30;
      sub_100009104(v23, &unk_10057BB90, &unk_100402D60);
      v32 = UIResponder.nearestActionRunner.getter();
      v63[2] = v33;

      v63[3] = v32;
      if (v32)
      {
        type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
        v34 = swift_dynamicCastClass();
        v63[0] = v26;
        v63[1] = a1;
        if (v34)
        {
          static MetricsTargetType.transcriptText.getter();
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.selectionMenu.getter();
          v35 = v66;
        }

        else
        {
          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (swift_dynamicCastClass())
          {
            static MetricsTargetType.transcriptText.getter();
          }

          else
          {
            static MetricsTargetType.button.getter();
          }

          v35 = v66;
          MetricsLabel.rawValue.getter();
          static MetricsActionContext.contextual.getter();
        }

        v36 = type metadata accessor for URL();
        (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
        static MetricsDataConfiguration.default.getter();
        static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

        v98 = v91;
        sub_100009104(&v98, &unk_100574650, &unk_1004023C0);
        v97 = v92;
        sub_100009104(&v97, &unk_100573A90, &unk_100401170);
        v96 = v93;
        sub_100009104(&v96, &unk_100574660, &unk_1004023D0);
        sub_100037470(v94, v95);

        sub_100009104(v35, &qword_100574040, &unk_100400AD0);
        v37 = v76;
        NativeClickMetricsAction.init(_:)();
        ContextActionsConfiguration.objectGraph.getter();
        v38 = v85;
        v39 = v75;
        BaseObjectGraph.injectIfAvailable<A>(_:)();

        v40 = v84;
        v41 = *(v84 + 48);
        if (v41(v38, 1, v39) != 1)
        {
          v44 = v80;
          sub_1001E91F0(v38, v80, v42);
LABEL_26:
          type metadata accessor for ActionRunnerOptions();
          ContextActionsConfiguration.objectGraph.getter();
          BaseObjectGraph.__allocating_init(_:)();
          v54 = v77;
          sub_1001E9140(v44, v77, &type metadata accessor for ActionOrigin);
          (*(v40 + 56))(v54, 0, 1, v39);
          ActionRunnerOptions.withActionOrigin(_:)();

          sub_100009104(v54, &qword_100576488, &unk_100403870);
          swift_getObjectType();
          v55 = v79;
          v87 = v79;
          v88 = sub_1001E91A8(&qword_100576498, 255, &type metadata accessor for NativeClickMetricsAction, &protocol conformance descriptor for NativeClickMetricsAction);
          v56 = sub_10000E680(v86);
          v57 = v78;
          (*(v78 + 16))(v56, v37, v55);
          v58 = v82;
          v59 = v81;
          v60 = v83;
          (*(v82 + 104))(v81, enum case for ActionMetricsBehavior.fromAction(_:), v83);
          ActionRunner.perform(_:withMetrics:asPartOf:)();
          swift_unknownObjectRelease();

          (*(v58 + 8))(v59, v60);
          sub_1001E92E4(v44, &type metadata accessor for ActionOrigin);
          (*(v57 + 8))(v37, v55);
          return sub_100004590(v86);
        }

        dispatch thunk of ContextActionsConfiguration.context.getter();
        dispatch thunk of ContextActionsConfiguration.previewModel.getter();
        v43 = v87;
        v44 = v80;
        v45 = v37;
        if (v87)
        {
          v46 = sub_1000044A0(v86, v87);
          *(&v90 + 1) = v43;
          v47 = sub_10000E680(&v89);
          v48 = v46;
          v38 = v85;
          (*(*(v43 - 8) + 16))(v47, v48, v43);
          sub_100004590(v86);
        }

        else
        {
          sub_100009104(v86, &qword_100576490, &qword_100403D40);
          v89 = 0u;
          v90 = 0u;
        }

        v49 = v71;
        dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
        v50 = v49;
        v51 = v64(v49, 1, v63[0]);
        v37 = v45;
        if (!v51)
        {
          v52 = v68;
          PresentationSource.position.getter();
          v53 = v69;
          if (!(*(v69 + 48))(v52, 1, v70))
          {
            v61 = v67;
            (*(v53 + 16))(v67, v52, v70);
            sub_100009104(v52, &qword_100576480, &qword_100403868);
            sub_100009104(v71, &unk_10057BB90, &unk_100402D60);
            PresentationSource.Position.view.getter();
            v62 = v61;
            v40 = v84;
            (*(v53 + 8))(v62, v70);
            v38 = v85;
LABEL_24:
            ActionOrigin.init(context:sender:view:)();
            if (v41(v38, 1, v39) != 1)
            {
              sub_100009104(v38, &qword_100576488, &unk_100403870);
            }

            goto LABEL_26;
          }

          sub_100009104(v52, &qword_100576480, &qword_100403868);
          v50 = v71;
        }

        sub_100009104(v50, &unk_10057BB90, &unk_100402D60);
        goto LABEL_24;
      }
    }

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660, qword_100403D70);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1001E8068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t), void (*a9)(uint64_t))
{
  a8(a6, a2);

  a9(v12);
  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E80E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1001E63F8(a6, sub_1001E8AE8, &OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_metricsLabel);
  v10 = swift_allocObject();
  v10[2] = a7;
  v10[3] = a3;
  v10[4] = a4;

  sub_100232294(sub_1001E9478, v10);
}

uint64_t sub_1001E81A0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E63F8(a7, sub_1001E85D8, &OBJC_IVAR____TtC8Podcasts36RemoveFromUpNextEpisodeContextAction_metricsLabel);
  v15 = a6[3];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001E9140(v15 + v16, v14, type metadata accessor for EpisodeContextActionDataType);
    if (swift_getEnumCaseMultiPayload())
    {
      swift_retain_n();
      sub_1001E92E4(v14, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {
      swift_retain_n();

      sub_1000044A0(a6 + 4, a6[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeFromUpNext(uuids:)();
    }
  }

  else
  {
    swift_retain_n();
  }

  sub_1002344D8(a8, a4, a5);
}

uint64_t sub_1001E8364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t), void (*a11)(uint64_t))
{
  a10(a6, a8, a9);

  a11(v14);
  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E83EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_retain_n();
  sub_1002B9778(v11);
  v12 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v13 = *(a5 + 48);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_10024E918;
  v14[4] = 0;
  aBlock[4] = sub_1001E9664;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002355D0;
  aBlock[3] = &unk_1004E3D38;
  v15 = _Block_copy(aBlock);
  swift_retain_n();

  [v12 reportAConcernURLWithCompletion:v15];
  _Block_release(v15);

  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E8574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_10031FEB0();
  sub_1002344D8(a7, a3, a4);
}

uint64_t sub_1001E85D8(uint64_t a1)
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    *&v13 = *(v1 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  ObjectType = swift_getObjectType();
  if ((*(v3 + 16))(ObjectType, v3))
  {
    v5 = sub_100398D08();

    goto LABEL_7;
  }

  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v6;
    v8 = swift_getObjectType();
    if ((*(v7 + 16))(v8, v7))
    {
      v10 = sub_1002160A8(v9);

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        *&v13 = v10;
        goto LABEL_3;
      }
    }
  }

  type metadata accessor for ContextActionsConfiguration();

  sub_100168088(&qword_1005764A0, &qword_100403880);
  if (swift_dynamicCast())
  {
    v11 = *(&v14 + 1);
    v12 = v15;
    sub_1000044A0(&v13, *(&v14 + 1));
    if ((*(v12 + 8))(v11, v12))
    {
      v5 = sub_100399278();

      sub_100004590(&v13);
LABEL_7:
      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        *&v13 = v5;
        goto LABEL_3;
      }

      return 0;
    }

    sub_100004590(&v13);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_100009104(&v13, &qword_1005764A8, qword_100403888);
  }

  return 0;
}

uint64_t sub_1001E885C(uint64_t a1)
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    *&v13 = *(v1 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    if ((*(v4 + 16))(ObjectType, v4))
    {
      v6 = sub_100398D08();

      goto LABEL_13;
    }
  }

  result = swift_conformsToProtocol2();
  if (result)
  {
    v7 = result;
    v8 = swift_getObjectType();
    if ((*(v7 + 16))(v8, v7))
    {
      v10 = sub_1002160A8(v9);

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
        *&v13 = v10;
        goto LABEL_3;
      }
    }

    type metadata accessor for ContextActionsConfiguration();

    sub_100168088(&qword_1005764A0, &qword_100403880);
    if (swift_dynamicCast())
    {
      v11 = *(&v14 + 1);
      v12 = v15;
      sub_1000044A0(&v13, *(&v14 + 1));
      if ((*(v12 + 8))(v11, v12))
      {
        v6 = sub_100399278();

        sub_100004590(&v13);
LABEL_13:
        if ((AdamID.isEmpty.getter() & 1) == 0)
        {
          *&v13 = v6;
          goto LABEL_3;
        }

        return 0;
      }

      sub_100004590(&v13);
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_100009104(&v13, &qword_1005764A8, qword_100403888);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E8AE8(uint64_t a1)
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    *&v14 = *(v1 + qword_1005932C8 + 8);
LABEL_3:
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  v3 = swift_conformsToProtocol2();
  if (v3 && (v4 = v3, v5 = swift_getObjectType(), (*(v4 + 16))(v5, v4)))
  {
    v6 = sub_100398D08();
  }

  else
  {
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      if ((*(v8 + 16))(ObjectType, v8))
      {
        v11 = sub_1002160A8(v10);

        if ((AdamID.isEmpty.getter() & 1) == 0)
        {
          *&v14 = v11;
          goto LABEL_3;
        }
      }
    }

    type metadata accessor for ContextActionsConfiguration();

    sub_100168088(&qword_1005764A0, &qword_100403880);
    if (!swift_dynamicCast())
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      sub_100009104(&v14, &qword_1005764A8, qword_100403888);
      return 0;
    }

    v12 = *(&v15 + 1);
    v13 = v16;
    sub_1000044A0(&v14, *(&v15 + 1));
    if (!(*(v13 + 8))(v12, v13))
    {
      sub_100004590(&v14);
      return 0;
    }

    v6 = sub_100399278();

    sub_100004590(&v14);
  }

  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    *&v14 = v6;
    goto LABEL_3;
  }

  return 0;
}

uint64_t sub_1001E8D70(uint64_t a1)
{
  type metadata accessor for ChannelContextActionConfiguration(0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    result = swift_conformsToProtocol2();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    ObjectType = swift_getObjectType();
    if ((*(v3 + 16))(ObjectType, v3))
    {
      v5 = sub_100398D08();
      v7 = v6;

      if ((AdamID.isEmpty.getter() & 1) == 0)
      {
LABEL_8:
        *&v14 = v7;
        goto LABEL_3;
      }
    }

    else
    {
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v9 = v8;
        v10 = swift_getObjectType();
        if ((*(v9 + 16))(v10, v9))
        {
          v7 = sub_1002160A8(v11);

          if ((AdamID.isEmpty.getter() & 1) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      type metadata accessor for ContextActionsConfiguration();

      sub_100168088(&qword_1005764A0, &qword_100403880);
      if (!swift_dynamicCast())
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
        sub_100009104(&v14, &qword_1005764A8, qword_100403888);
        return 0;
      }

      v12 = *(&v15 + 1);
      v13 = v16;
      sub_1000044A0(&v14, *(&v15 + 1));
      if (!(*(v13 + 8))(v12, v13))
      {
        sub_100004590(&v14);
        return 0;
      }

      v5 = sub_100399278();

      sub_100004590(&v14);
    }

    if ((AdamID.isEmpty.getter() & 1) == 0)
    {
      *&v14 = v5;
      goto LABEL_3;
    }

    return 0;
  }

  *&v14 = *(v1 + qword_1005932C8 + 8);
LABEL_3:
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

double sub_1001E9000@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemGrayColor];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 mainBundle];
  v10._object = 0xE000000000000000;
  v6._object = 0x8000000100468170;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10);

  *a1 = v2;
  result = 4.58826571e199;
  *(a1 + 8) = xmmword_100403760;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1001E9140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001E91A8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1001E91F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for ActionOrigin();
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001E9254()
{
  result = qword_1005764B0;
  if (!qword_1005764B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005764B0);
  }

  return result;
}

uint64_t sub_1001E92E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001E9678()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001E9CD0()
{
  result = qword_100576550;
  if (!qword_100576550)
  {
    type metadata accessor for ReevaluateAutoDownloadsIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576550);
  }

  return result;
}

uint64_t sub_1001E9D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_1001E9D4C, 0, 0);
}

uint64_t sub_1001E9D4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(type metadata accessor for ReevaluateAutoDownloadsIntentImplementation(0) + 24);
  *(v0 + 112) = v3;
  v4 = type metadata accessor for ReevaluateAutoDownloadsIntent();
  *(v0 + 56) = v4;
  v5 = *(v4 - 8);
  *(v0 + 64) = v5;
  (*(v5 + 16))(v2 + v3, v1, v4);
  v6 = type metadata accessor for DebouncedAutoDownloadProcessor();
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_1001E9E70;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v6, v6);
}

uint64_t sub_1001E9E70()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1001EA1EC;
  }

  else
  {
    v2 = sub_1001E9F84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001E9F84()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[11] = v2;
  *v1 = v2;
  v3 = type metadata accessor for DebouncedAssetRemovalProcessor();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1001EA044;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v3, v3);
}

uint64_t sub_1001EA044()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1001EA290;
  }

  else
  {
    v2 = sub_1001EA158;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001EA158()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];

  (*(v2 + 8))(v3, v1);
  *(v4 + 8) = v0[3];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001EA1EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = *(v2 + 8);
  v4(v3, v1);
  v4(*(v0 + 32) + *(v0 + 112), *(v0 + 56));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001EA290()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  v5 = *(v3 + 8);
  v5(v4, v2);

  v5(*(v0 + 32) + *(v0 + 112), *(v0 + 56));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001EA344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001C51C;

  return sub_1001E9D28(a1, a2, a3);
}

uint64_t sub_1001EA414()
{
  DebouncedAutoDownloadProcessor.reevaluate()();
  DebouncedAssetRemovalProcessor.reevaluate()();
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1001EA484()
{
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v2 = v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EpisodeOffer();
  v4 = *(v3 - 8);
  v97 = v3;
  v98 = v4;
  __chkstk_darwin();
  v6 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v93 - v9;
  __chkstk_darwin();
  v12 = v93 - v11;
  v99 = v0;
  v13 = *(v0 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v13 + v14, v10, v15);
  sub_1001EB048(v10, v12, type metadata accessor for EpisodeContextActionDataType);
  v94 = v12;
  sub_1001EAFE4(v12, v8, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v80 = *v8;
      v81 = *(*v8 + 16);
      if (!v81)
      {

        v22 = _swiftEmptyArrayStorage;
LABEL_83:
        sub_1001EB0B0(v94, type metadata accessor for EpisodeContextActionDataType);
        return v22;
      }

      v82 = *(v99 + 24);
      v96 = *(v98 + 16);
      v83 = *(v98 + 80);
      v93[1] = v80;
      v84 = v80 + ((v83 + 32) & ~v83);
      v95 = *(v98 + 72);
      v98 += 16;
      v99 = v82;
      v85 = (v98 - 8);
      v22 = _swiftEmptyArrayStorage;
      do
      {
        v86 = v97;
        v96(v6, v84, v97);
        EpisodeOffer.contentId.getter();
        (*v85)(v6, v86);
        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
        ModernEpisodeDownloadStateMachine.currentState.getter();

        CurrentValueSubject.value.getter();

        v88 = v100;
        v87 = v101;
        v89 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
        }

        v91 = *(v22 + 2);
        v90 = *(v22 + 3);
        if (v91 >= v90 >> 1)
        {
          v22 = sub_1002434B4((v90 > 1), v91 + 1, 1, v22);
        }

        *(v22 + 2) = v91 + 1;
        v92 = &v22[24 * v91];
        *(v92 + 4) = v88;
        *(v92 + 5) = v87;
        v92[48] = v89;
        v84 += v95;
        --v81;
      }

      while (v81);
    }

    else
    {
      v48 = *v8;

      v49 = *(v48 + 16);
      v98 = v48;
      if (v49)
      {
        v50 = v48 + 40;
        v22 = _swiftEmptyArrayStorage;
        do
        {

          EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();

          ModernEpisodeDownloadStateMachine.currentState.getter();

          CurrentValueSubject.value.getter();

          v51 = v100;
          v52 = v101;
          v53 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
          }

          v55 = *(v22 + 2);
          v54 = *(v22 + 3);
          if (v55 >= v54 >> 1)
          {
            v22 = sub_1002434B4((v54 > 1), v55 + 1, 1, v22);
          }

          *(v22 + 2) = v55 + 1;
          v56 = &v22[24 * v55];
          *(v56 + 4) = v51;
          *(v56 + 5) = v52;
          v56[48] = v53;
          v50 += 16;
          --v49;
        }

        while (v49);
      }

      else
      {
        v22 = _swiftEmptyArrayStorage;
      }
    }

LABEL_82:

    goto LABEL_83;
  }

  if (result == 2)
  {
    v57 = *v8;
    if (*v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v58 = result;
      if (!result)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_81;
      }
    }

    if (v58 < 1)
    {
      __break(1u);
      goto LABEL_86;
    }

    v59 = 0;
    v98 = v57 & 0xC000000000000001;
    v22 = _swiftEmptyArrayStorage;
    v60 = &selRef_defaultInstance;
    while (1)
    {
      if (v98)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v62 = *(v57 + 8 * v59 + 32);
      }

      v63 = v62;
      v64 = [v62 episodeUuid];
      if (v64)
      {
        v65 = v64;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
      }

      else
      {
        if (![objc_opt_self() isNotEmpty:{objc_msgSend(v63, v60[306])}])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
          }

          v72 = *(v22 + 2);
          v71 = *(v22 + 3);
          if (v72 >= v71 >> 1)
          {
            v22 = sub_1002434B4((v71 > 1), v72 + 1, 1, v22);
          }

          *(v22 + 2) = v72 + 1;
          v73 = &v22[24 * v72];
          *(v73 + 4) = 0;
          *(v73 + 5) = 0;
          v73[48] = 2;
          goto LABEL_48;
        }

        [v63 v60[306]];
        AdamID.init(rawValue:)();
        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
      }

      ModernEpisodeDownloadStateMachine.currentState.getter();

      CurrentValueSubject.value.getter();

      v66 = v100;
      v67 = v101;
      v68 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
      }

      v70 = *(v22 + 2);
      v69 = *(v22 + 3);
      if (v70 >= v69 >> 1)
      {
        v22 = sub_1002434B4((v69 > 1), v70 + 1, 1, v22);
      }

      *(v22 + 2) = v70 + 1;
      v61 = &v22[24 * v70];
      *(v61 + 4) = v66;
      *(v61 + 5) = v67;
      v61[48] = v68;
      v60 = &selRef_defaultInstance;
LABEL_48:
      if (v58 == ++v59)
      {
        goto LABEL_82;
      }
    }
  }

  if (result != 3)
  {
    sub_1001EB048(v8, v2, type metadata accessor for EpisodeContextActionDataType.Reference);
    EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
    ModernEpisodeDownloadStateMachine.currentState.getter();

    CurrentValueSubject.value.getter();

    v74 = v100;
    v75 = v101;
    v76 = v102;
    v22 = sub_1002434B4(0, 1, 1, _swiftEmptyArrayStorage);
    v78 = *(v22 + 2);
    v77 = *(v22 + 3);
    if (v78 >= v77 >> 1)
    {
      v22 = sub_1002434B4((v77 > 1), v78 + 1, 1, v22);
    }

    sub_1001EB0B0(v2, type metadata accessor for EpisodeContextActionDataType.Reference);
    sub_1001EB0B0(v94, type metadata accessor for EpisodeContextActionDataType);
    *(v22 + 2) = v78 + 1;
    v79 = &v22[24 * v78];
    *(v79 + 4) = v74;
    *(v79 + 5) = v75;
    v79[48] = v76;
    return v22;
  }

  v18 = *v8;
  if (!(*v8 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

    goto LABEL_81;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (!result)
  {
LABEL_81:
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_82;
  }

LABEL_7:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = v18 & 0xC000000000000001;
    v22 = _swiftEmptyArrayStorage;
    v98 = v18 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v18 + 8 * v20 + 32);
      }

      v25 = v24;
      v26 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v26 && (v27 = v26, MPModelObject.uuid.getter(), v29 = v28, v27, v29))
      {
        EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();

        ModernEpisodeDownloadStateMachine.currentState.getter();

        CurrentValueSubject.value.getter();

        v30 = v100;
        v31 = v101;
        v32 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
        }

        v34 = *(v22 + 2);
        v33 = *(v22 + 3);
        if (v34 >= v33 >> 1)
        {
          v22 = sub_1002434B4((v33 > 1), v34 + 1, 1, v22);
        }

        *(v22 + 2) = v34 + 1;
        v35 = &v22[24 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v31;
        v35[48] = v32;
        v21 = v98;
      }

      else
      {
        v36 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (!v36 || (v37 = v36, MPModelObject.adamID.getter(), v39 = v38, v37, (v39 & 1) != 0) || (AdamID.isEmpty.getter() & 1) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
          }

          v41 = *(v22 + 2);
          v40 = *(v22 + 3);
          if (v41 >= v40 >> 1)
          {
            v22 = sub_1002434B4((v40 > 1), v41 + 1, 1, v22);
          }

          *(v22 + 2) = v41 + 1;
          v23 = &v22[24 * v41];
          *(v23 + 4) = 0;
          *(v23 + 5) = 0;
          v23[48] = 2;
        }

        else
        {
          EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
          ModernEpisodeDownloadStateMachine.currentState.getter();

          CurrentValueSubject.value.getter();

          v42 = v100;
          v43 = v101;
          v44 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1002434B4(0, *(v22 + 2) + 1, 1, v22);
          }

          v46 = *(v22 + 2);
          v45 = *(v22 + 3);
          if (v46 >= v45 >> 1)
          {
            v22 = sub_1002434B4((v45 > 1), v46 + 1, 1, v22);
          }

          *(v22 + 2) = v46 + 1;
          v47 = &v22[24 * v46];
          *(v47 + 4) = v42;
          *(v47 + 5) = v43;
          v47[48] = v44;
          v21 = v98;
        }
      }

      ++v20;
    }

    while (v19 != v20);
    goto LABEL_82;
  }

LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1001EAF80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001EAFE4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EB048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001EB0B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001EB110(__n128 a1)
{
  v39 = *v1;
  v2 = type metadata accessor for OSLogger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetricsBehavior();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60, &unk_100409160);
  __chkstk_darwin();
  v11 = &v33 - v10;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v13 = (&v33 - v12);
  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
  v14 = type metadata accessor for PresentationSource();
  if ((*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v15 = &unk_10057BB90;
    v16 = &unk_100402D60;
    v17 = v13;
LABEL_3:
    sub_100009104(v17, v15, v16);
    goto LABEL_4;
  }

  v36 = v11;
  v37 = v9;
  v19 = v39;
  v38 = v7;
  v20 = PresentationSource.viewController.getter();
  sub_100009104(v13, &unk_10057BB90, &unk_100402D60);
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  v22 = UIResponder.nearestActionRunner.getter();

  if (!v22)
  {

    goto LABEL_4;
  }

  dispatch thunk of ContextActionsConfiguration.previewModel.getter();
  if (!v41)
  {

    swift_unknownObjectRelease();
    v15 = &qword_100576490;
    v16 = &qword_100403D40;
    v17 = &v40;
    goto LABEL_3;
  }

  v34 = v21;
  v35 = v22;
  sub_1000109E4(&v40, &v42);
  v23 = *(&v43 + 1);
  v24 = v44;
  v25 = sub_1000044A0(&v42, *(&v43 + 1));
  v26 = sub_1001EDA8C(v25, v19, v23, v24);
  sub_100004590(&v42);
  if (v26)
  {
    type metadata accessor for ActionRunnerOptions();
    ContextActionsConfiguration.objectGraph.getter();
    BaseObjectGraph.__allocating_init(_:)();
    v27 = type metadata accessor for InteractionContext();
    v28 = v36;
    (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
    v42 = 0u;
    v43 = 0u;
    v29 = v34;
    v30 = [v34 view];
    ActionRunnerOptions.withActionOrigin(context:sender:view:)();

    sub_100009104(&v42, &unk_1005783D0, &qword_1004031E0);
    sub_100009104(v28, &unk_10057BB60, &unk_100409160);
    swift_getObjectType();
    *(&v43 + 1) = type metadata accessor for Action();
    v44 = sub_100036A24();
    *&v42 = v26;
    v31 = v38;
    v32 = v37;
    (*(v38 + 104))(v37, enum case for ActionMetricsBehavior.fromAction(_:), v6);

    ActionRunner.perform(_:withMetrics:asPartOf:)();

    swift_unknownObjectRelease();

    (*(v31 + 8))(v32, v6);
    return sub_100004590(&v42);
  }

  swift_unknownObjectRelease();
LABEL_4:
  static OSLogger.actions.getter();
  sub_100168088(&unk_10057E660, qword_100403D70);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_100400790;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1001EB6E4()
{
  v1 = *v0;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v3 = &v14 - v2;
  dispatch thunk of ContextActionsConfiguration.previewModel.getter();
  if (!v15)
  {
    sub_100009104(&v14, &qword_100576490, &qword_100403D40);
    goto LABEL_11;
  }

  sub_1000109E4(&v14, v16);
  v4 = v17;
  v5 = v18;
  v6 = sub_1000044A0(v16, v17);
  v7 = sub_1001EDA8C(v6, v1, v4, v5);
  sub_100004590(v16);
  if (v7)
  {
    type metadata accessor for FlowAction();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_10;
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
    v8 = type metadata accessor for PresentationSource();
    if ((*(*(v8 - 8) + 48))(v3, 1, v8))
    {

      sub_100009104(v3, &unk_10057BB90, &unk_100402D60);
      goto LABEL_11;
    }

    v9 = PresentationSource.viewController.getter();
    sub_100009104(v3, &unk_10057BB90, &unk_100402D60);
    if (!v9)
    {
LABEL_10:

      goto LABEL_11;
    }

    v10 = [v9 traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 1)
    {
      return 1;
    }
  }

LABEL_11:
  type metadata accessor for ContextActionsConfiguration();
  v13 = method lookup function for ContextActionsConfiguration();
  return v13();
}

uint64_t sub_1001EB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v12 = &v17[-v11 - 8];
  swift_allocObject();
  sub_100010430(a2, v12, &unk_10057BB90, &unk_100402D60);
  v13 = a3;
  sub_100010430(a3, v17, &qword_100576490, &qword_100403D40);
  (*(v8 + 16))(v10, a4, v7);
  v14 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  (*(v8 + 8))(a4, v7);
  sub_100009104(v13, &qword_100576490, &qword_100403D40);
  sub_100009104(a2, &unk_10057BB90, &unk_100402D60);
  return v14;
}

uint64_t sub_1001EBB1C()
{
  ContextActionsConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EBBC8()
{

  sub_100009104(v0 + qword_100593298, &qword_100576948, &unk_100403D60);
  v1 = (v0 + qword_1005932A0);

  return sub_100004590(v1);
}

uint64_t sub_1001EBC38()
{
  v0 = ContextActionsConfiguration.deinit();

  sub_100009104(v0 + qword_100593298, &qword_100576948, &unk_100403D60);
  sub_100004590((v0 + qword_1005932A0));

  return swift_deallocClassInstance();
}

uint64_t sub_1001EBD74(void *a1)
{
  ContextActionsConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EBDC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v52 = a4;
  v53 = a2;
  v8 = *v4;
  v9 = type metadata accessor for InteractionContext();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v43 - v12;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v43 - v14;
  sub_100168088(&qword_100576938, &qword_100403D48);
  __chkstk_darwin();
  v16 = &v43 - v15;
  v17 = type metadata accessor for URL();
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin();
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3[3];
  v21 = a3[4];
  v22 = sub_1000044A0(a3, v20);
  if (!sub_1001EDA8C(v22, v8, v20, v21))
  {

    (*(v10 + 8))(v52, v9);
    sub_100004590(a3);
    v25 = &unk_10057BB90;
    v26 = &unk_100402D60;
    v27 = v53;
    goto LABEL_5;
  }

  v45 = a1;
  v23 = v53;

  sub_1001EC5E0(a3, v16);
  v24 = sub_100168088(&qword_100576930, &unk_100409180);
  if ((*(*(v24 - 8) + 48))(v16, 1, v24) == 1)
  {

    (*(v10 + 8))(v52, v9);
    sub_100004590(a3);
    sub_100009104(v23, &unk_10057BB90, &unk_100402D60);
    v25 = &qword_100576938;
    v26 = &qword_100403D48;
    v27 = v16;
LABEL_5:
    sub_100009104(v27, v25, v26);
    type metadata accessor for OtherContextActionConfiguration(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v29 = &v16[*(v24 + 48)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v32 = v49;
  v33 = *(v49 + 32);
  v44 = v19;
  v34 = v16;
  v35 = v50;
  v33(v19, v34, v50);
  (*(v32 + 16))(v5 + qword_100593318, v19, v35);
  v36 = (v5 + qword_100593320);
  *v36 = v30;
  v36[1] = v31;
  v37 = v51;
  sub_100010430(v23, v51, &unk_10057BB90, &unk_100402D60);
  sub_100004428(a3, v55);
  v38 = *(v10 + 16);
  v39 = v48;
  v40 = v52;
  v38(v48, v52, v9);
  sub_100010430(v37, v46, &unk_10057BB90, &unk_100402D60);
  sub_100010430(v55, v54, &qword_100576490, &qword_100403D40);
  v38(v47, v39, v9);
  v41 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
  v42 = *(v10 + 8);
  v42(v40, v9);
  sub_100004590(a3);
  sub_100009104(v53, &unk_10057BB90, &unk_100402D60);
  v42(v39, v9);
  sub_100009104(v55, &qword_100576490, &qword_100403D40);
  sub_100009104(v51, &unk_10057BB90, &unk_100402D60);
  (*(v49 + 8))(v44, v50);
  return v41;
}

uint64_t sub_1001EC374()
{
  v0 = ContextActionsConfiguration.deinit();
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EC484()
{
  v0 = ContextActionsConfiguration.deinit();
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001EC580()
{
  ContextActionsConfiguration.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001EC5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_10057CF40, qword_100405ED0);
  __chkstk_darwin();
  v5 = &v35 - v4;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = &v35 - v6;
  v37 = type metadata accessor for URL();
  v8 = *(v37 - 8);
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004428(a1, v38);
  sub_100168088(&qword_1005748C0, qword_1004060D0);
  sub_100168088(&qword_10057BC00, &unk_100403D20);
  v11 = swift_dynamicCast();
  v36 = v10;
  if (v11)
  {
    sub_1000044A0(&v39, *(&v40 + 1));
    dispatch thunk of ClickableModel.clickAction.getter();
    sub_100004590(&v39);
    if (*(&v43 + 1))
    {
      sub_100168088(&unk_10057BB70, &qword_100401CB0);
      type metadata accessor for FlowAction();
      if (swift_dynamicCast())
      {
        v12 = v39;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_100009104(&v39, &qword_100576928, &unk_1004091A0);
    v42 = 0u;
    v43 = 0u;
    v44 = 0;
  }

  sub_100009104(&v42, &qword_100578C20, &unk_100403D30);
  v12 = 0;
LABEL_8:
  sub_100004428(a1, &v42);
  type metadata accessor for FlowAction();
  if (swift_dynamicCast())
  {
    v13 = v39;
  }

  else
  {
    v13 = 0;
  }

  if (!v12)
  {
    if (!v13)
    {
      v18 = sub_100168088(&qword_100576930, &unk_100409180);
      v19 = *(*(v18 - 8) + 56);
      v20 = a2;
      return v19(v20, 1, 1, v18);
    }
  }

  dispatch thunk of FlowAction.destination.getter();
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {

    sub_100009104(v5, &qword_10057CF40, qword_100405ED0);
    (*(v8 + 56))(v7, 1, 1, v37);
LABEL_18:
    v17 = a2;
    sub_100009104(v7, &qword_100574040, &unk_100400AD0);
LABEL_19:
    v18 = sub_100168088(&qword_100576930, &unk_100409180);
    v19 = *(*(v18 - 8) + 56);
    v20 = v17;
    return v19(v20, 1, 1, v18);
  }

  FlowDestination.pageDestinationURL.getter();
  (*(v15 + 8))(v5, v14);
  v16 = v37;
  if ((*(v8 + 48))(v7, 1, v37) == 1)
  {

    goto LABEL_18;
  }

  v22 = v36;
  (*(v8 + 32))(v36, v7, v16);
  v23 = URL.scheme.getter();
  v17 = a2;
  if (!v24)
  {
    goto LABEL_31;
  }

  if (v23 != 1886680168 || v24 != 0xE400000000000000)
  {
    v25 = v23;
    v26 = v24;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v25 != 0x7370747468 || v26 != 0xE500000000000000))
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_28;
      }

LABEL_31:
      (*(v8 + 8))(v22, v16);

      goto LABEL_19;
    }
  }

LABEL_28:
  v27 = sub_100168088(&qword_100576930, &unk_100409180);
  v28 = v22;
  v29 = v17;
  v30 = (v17 + *(v27 + 48));
  (*(v8 + 16))(v29, v28, v16);

  v31 = Action.title.getter();
  v35 = v32;

  (*(v8 + 8))(v28, v16);
  v33 = v35;
  *v30 = v31;
  v30[1] = v33;
  return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
}

uint64_t sub_1001ECC44()
{
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_1001ECCC0()
{
  v0 = ContextActionsConfiguration.deinit();
  v1 = qword_100593318;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001ECDA0()
{
  v0 = type metadata accessor for PreviewingPresentationHint();
  v46 = *(v0 - 8);
  v47 = v0;
  __chkstk_darwin();
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v44 - v3;
  __chkstk_darwin();
  v6 = &v44 - v5;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (&v44 - v9);
  __chkstk_darwin();
  v12 = (&v44 - v11);
  sub_1001AD650();
  dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v13 = IMPlayerItem.init(modelObject:includeArtworkCatalog:)();
  type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
  v45 = swift_dynamicCastClass();
  v14 = v13;
  if ([v14 podcastStoreId] < 1)
  {
  }

  else
  {
    v15 = [v14 episodeStoreId];

    if (v15 >= 1)
    {
      v16 = dispatch thunk of NowPlayingContextActionConfiguration.playerResponseItem.getter();
      if (v16)
      {
        v17 = v16;
        sub_100168088(&unk_100574680, &qword_100401740);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1004007B0;
        *(v18 + 32) = v17;
        *v12 = v18;
        swift_storeEnumTagMultiPayload();
        v20 = v46;
        v19 = v47;
        (*(v46 + 104))(v6, enum case for PreviewingPresentationHint.inferTab(_:), v47);
        type metadata accessor for EpisodeContextActionData(0);
        v21 = swift_allocObject();
        v22 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        v23 = objc_opt_self();
        v24 = v17;
        *(v21 + v22) = [v23 sharedInstance];
        sub_1001EAFE4(v12, v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, v25);
        (*(v20 + 16))(v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v6, v19);
        *(v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
        if (!v45)
        {
          sub_100399908();
        }

        (*(v20 + 8))(v6, v19);
        v27 = v12;
      }

      else
      {
        sub_100168088(&unk_100574680, &qword_100401740);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1004007B0;
        *(v36 + 32) = v14;
        *v10 = v36;
        swift_storeEnumTagMultiPayload();
        v38 = v46;
        v37 = v47;
        (*(v46 + 104))(v4, enum case for PreviewingPresentationHint.inferTab(_:), v47);
        type metadata accessor for EpisodeContextActionData(0);
        v21 = swift_allocObject();
        v39 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
        v40 = objc_opt_self();
        v41 = v14;
        *(v21 + v39) = [v40 sharedInstance];
        sub_1001EAFE4(v10, v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, v42);
        (*(v38 + 16))(v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v4, v37);
        *(v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
        if (!v45)
        {
          sub_100399908();
        }

        (*(v38 + 8))(v4, v37);
        v27 = v10;
      }

      goto LABEL_14;
    }
  }

  v28 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v29 = MPModelObject.uuid.getter();
  v21 = v30;

  if (v21)
  {
    sub_100168088(&qword_100574690, &unk_100401BA0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100400790;
    *(v31 + 32) = v29;
    *(v31 + 40) = v21;
    *v8 = v31;
    v8[1] = 0;
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    v32 = v47;
    (*(v46 + 104))(v2, enum case for PreviewingPresentationHint.inferTab(_:), v47);
    type metadata accessor for EpisodeContextActionData(0);
    v21 = swift_allocObject();
    v34 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
    *(v21 + v34) = [objc_opt_self() sharedInstance];
    sub_1001EAFE4(v8, v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, v35);
    (*(v33 + 16))(v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v2, v32);
    *(v21 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = 1;
    sub_100399908();

    (*(v33 + 8))(v2, v32);
    v27 = v8;
LABEL_14:
    sub_1001EDA30(v27, v26);
    return v21;
  }

  return v21;
}

void sub_1001ED468(uint64_t a1)
{
  sub_1001ED530(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1001ED530(uint64_t a1)
{
  if (!qword_100576718[0])
  {
    type metadata accessor for KCURadar.ReportContent();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_100576718);
    }
  }
}

uint64_t sub_1001ED758(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001ED800(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = __chkstk_darwin();
  v9 = *(v3 + 16);
  v9(&v16 - v10, v1, a1, v8);
  type metadata accessor for ChannelContextActionConfiguration(0);
  if (swift_dynamicCast())
  {
    v11 = *(v17 + qword_1005932C8 + 8);
LABEL_5:

    return v11;
  }

  (v9)(v7, v1, a1);
  type metadata accessor for CategoryContextActionConfiguration(0);
  if (swift_dynamicCast())
  {
    v11 = *(v17 + qword_100576858);
    goto LABEL_5;
  }

  (v9)(v5, v1, a1);
  type metadata accessor for PodcastContextActionConfiguration(0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v14 = sub_1002160A8(v13);

  v15 = AdamID.isEmpty.getter();

  if (v15)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t sub_1001EDA30(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001EDA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a3;
  v15[4] = a4;
  v6 = sub_10000E680(v15);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_100004428(v15, v13);
  sub_100168088(&qword_1005748C0, qword_1004060D0);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCast())
  {
    sub_100004428(v15, v12);
    sub_100168088(&unk_10057BBF0, &unk_100403D50);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v9, v13);
      sub_1000044A0(v13, v14);
      v7 = dispatch thunk of CustomPreviewActionModel.previewAction.getter();
      sub_100004590(v13);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      sub_100009104(&v9, &qword_100576940, &unk_100409190);
    }

    sub_100004428(v15, v12);
    sub_100168088(&qword_10057BC00, &unk_100403D20);
    if (swift_dynamicCast())
    {
      sub_1000109E4(&v9, v13);
      sub_1000044A0(v13, v14);
      dispatch thunk of ClickableModel.clickAction.getter();
      if (v12[3])
      {
        sub_100168088(&unk_10057BB70, &qword_100401CB0);
        type metadata accessor for Action();
        if (swift_dynamicCast())
        {
          v7 = v9;
          sub_100004590(v13);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100009104(v12, &qword_100578C20, &unk_100403D30);
      }

      sub_100004590(v13);
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
      sub_100009104(&v9, &qword_100576928, &unk_1004091A0);
    }

    v7 = 0;
    goto LABEL_15;
  }

  v7 = v12[0];
LABEL_15:
  sub_100004590(v15);
  return v7;
}

uint64_t sub_1001EDD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v31 = a2;
  v29[0] = a3;
  v29[1] = a1;
  v12 = type metadata accessor for InteractionContext();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v29 - v16;
  sub_100168088(&unk_10057BB90, &unk_100402D60);
  __chkstk_darwin();
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = v29 - v20;
  v34[3] = a8;
  v34[4] = a9;
  v22 = sub_10000E680(v34);
  (*(*(a8 - 8) + 32))(v22, a5, a8);
  type metadata accessor for CategoryContextActionConfiguration(0);
  v23 = swift_allocObject();
  if (a4)
  {

    (*(v13 + 8))(v30, v12);
    sub_100009104(v31, &unk_10057BB90, &unk_100402D60);
    sub_100004590(v34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v23 + qword_100576858) = v29[0];
    sub_100010430(v31, v21, &unk_10057BB90, &unk_100402D60);
    sub_100004428(v34, v33);
    v25 = *(v13 + 16);
    v26 = v30;
    v25(v17, v30, v12);
    sub_100010430(v21, v19, &unk_10057BB90, &unk_100402D60);
    sub_100010430(v33, v32, &qword_100576490, &qword_100403D40);
    v25(v15, v17, v12);
    v27 = ContextActionsConfiguration.init(asPartOf:presentationSource:previewModel:context:)();
    v28 = *(v13 + 8);
    v28(v26, v12);
    sub_100009104(v31, &unk_10057BB90, &unk_100402D60);
    v28(v17, v12);
    sub_100009104(v33, &qword_100576490, &qword_100403D40);
    sub_100009104(v21, &unk_10057BB90, &unk_100402D60);
    sub_100004590(v34);
    return v27;
  }
}

char *sub_1001EE144(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  if (a2)
  {
    sub_100168088(&qword_100574690, &unk_100401BA0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100400790;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    objc_allocWithZone(type metadata accessor for NetworkMediaManifest(0));
    v9 = 0;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    objc_allocWithZone(type metadata accessor for NetworkMediaManifest(0));
    v10 = _swiftEmptyArrayStorage;
    v9 = a1;
    v11 = a1;
  }

  v12 = sub_1001EE5D4(v9, 0, v10, v11, 0, a3, a4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

char *sub_1001EE5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v47 = a6;
  v48 = a7;
  v44 = a5;
  v39 = a4;
  v45 = a2;
  v46 = a3;
  v38 = a1;
  v43 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v43 - 8);
  __chkstk_darwin();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount] = 1;
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_episodeFetchLimit] = 5;
  v42 = OBJC_IVAR___MTNetworkMediaManifest_manifestWorkQueue;
  v11 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v40 = " info, fetching items";
  v41 = v11;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1001F6DC8(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0, &unk_1003FEB50);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0, &unk_1003FEB50, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
  v12 = v44;
  *&v7[v42] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = OBJC_IVAR___MTNetworkMediaManifest_mediaRequestController;
  *&v7[v13] = [objc_allocWithZone(type metadata accessor for MediaRequestController()) init];
  v14 = OBJC_IVAR___MTNetworkMediaManifest_initialIds;
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_initialIds] = 0;
  v7[OBJC_IVAR___MTNetworkMediaManifest_hasOnlyPaidEpisodesWithoutSubscription] = 0;
  v7[OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress] = 0;
  *&v7[OBJC_IVAR___MTNetworkMediaManifest_inProgressRefreshHandlers] = _swiftEmptyArrayStorage;
  if (v12)
  {

    sub_100168088(&qword_100574690, &unk_100401BA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100400790;
    *(v15 + 32) = v39;
    *(v15 + 40) = v12;
    *&v7[v14] = v15;

    v16 = &enum case for MediaRequest.ContentType.podcastStation(_:);
  }

  else
  {
    v17 = v38;
    v18 = v46;
    if (v46)
    {

      *&v7[v14] = v18;

      v16 = &enum case for MediaRequest.ContentType.podcastEpisode(_:);
    }

    else
    {
      if (v45)
      {
        v19 = v45;
        sub_100168088(&qword_100574690, &unk_100401BA0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100400790;
        *(v20 + 32) = v17;
        *(v20 + 40) = v19;
        *&v7[v14] = v20;
      }

      v16 = &enum case for MediaRequest.ContentType.podcast(_:);
    }
  }

  v21 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  v22 = *v16;
  v23 = type metadata accessor for MediaRequest.ContentType();
  (*(*(v23 - 8) + 104))(&v7[v21], v22, v23);
  v24 = type metadata accessor for NetworkMediaManifest(0);
  v59.receiver = v7;
  v59.super_class = v24;
  v25 = objc_msgSendSuper2(&v59, "init");
  sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
  v26 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v26 setItems:isa];

  if (v48)
  {
    aBlock = v47;
    v54 = v48;
    v51 = 10;
    v52 = 0xE100000000000000;
    v49 = 28252;
    v50 = 0xE200000000000000;
    sub_10019FA64();
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v30 = v29;
  }

  else
  {
    v30 = 0;
    v28 = v47;
  }

  v31 = *&v26[OBJC_IVAR___MTNetworkMediaManifest_manifestWorkQueue];
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v28;
  v32[4] = v30;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1001F6FA8;
  *(v33 + 24) = v32;
  v57 = sub_10002D7F8;
  v58 = v33;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10002D904;
  v56 = &unk_1004E4428;
  v34 = _Block_copy(&aBlock);
  v35 = v26;
  v36 = v31;

  dispatch_sync(v36, v34);

  _Block_release(v34);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if ((v36 & 1) == 0)
  {
    return v35;
  }

  __break(1u);
  return result;
}

void sub_1001EEC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v4 = type metadata accessor for MediaRequest.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v37 - v7;
  __chkstk_darwin();
  v45 = &v37 - v8;
  __chkstk_darwin();
  v10 = &v37 - v9;
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  swift_beginAccess();
  v14 = v5[2];
  v48 = a1;
  v42 = v13;
  v40 = v14;
  v14(v12, a1 + v13, v4);
  v43 = v5[13];
  v44 = v5 + 13;
  v43(v10, enum case for MediaRequest.ContentType.podcastStation(_:), v4);
  sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v49 == v50)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v39 = v5;
  v16 = v5[1];
  v16(v10, v4);
  v16(v12, v4);

  if (v15)
  {
    sub_1001F2190(v46, v47);
    return;
  }

  v17 = v48;
  v18 = v42;
  v40(v45, v48 + v42, v4);
  v19 = v41;
  v43(v41, enum case for MediaRequest.ContentType.podcastEpisode(_:), v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v49 == v50)
  {
    v16(v19, v4);
    v16(v45, v4);
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v16(v19, v4);
    v16(v45, v4);

    if ((v20 & 1) == 0)
    {
      sub_1001F2BCC(v46, v47);
      return;
    }
  }

  v21 = v17;
  v22 = sub_1001F260C(v46, v47);
  if (v22 >> 62)
  {
    v35 = v22;
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v35;
    v23 = v39;
    if (!v36)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v23 = v39;
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:

      return;
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    v24 = *(v22 + 32);
  }

  v25 = v24;

  v26 = dispatch thunk of ServerPodcastEpisode.relationships.getter();

  if (!v26)
  {
    return;
  }

  v27 = PodcastEpisodeRelationships.podcast.getter();

  if (!v27)
  {
    return;
  }

  v21 = PodcastRelationshipContainer.data.getter();

  if (v21 >> 62)
  {
    goto LABEL_28;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v21 + 32);
LABEL_21:
    v29 = v28;

    v30 = ServerPodcastBase.id.getter();
    v32 = v31;

    v33 = v38;
    v43(v38, enum case for MediaRequest.ContentType.podcast(_:), v4);
    swift_beginAccess();
    (v23[5])(v17 + v18, v33, v4);
    swift_endAccess();
    sub_100168088(&qword_100574690, &unk_100401BA0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100400790;
    *(v34 + 32) = v30;
    *(v34 + 40) = v32;
    *(v17 + OBJC_IVAR___MTNetworkMediaManifest_initialIds) = v34;
    goto LABEL_29;
  }

  __break(1u);
  __break(1u);
}

id sub_1001EF2E4(uint64_t (*a1)(id), uint64_t a2)
{
  result = [v2 items];
  if (result)
  {
    v6 = result;
    sub_100009F1C(0, &qword_10057A130, off_1004D1B30);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      if (a1)
      {
        return a1(result);
      }
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
      v9 = static OS_os_log.default.getter();
      v10 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("NetworkMediaManifest: No items loaded from asset info, fetching items", 69, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);

      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      *(v11 + 24) = a2;
      sub_100013CB4(a1, a2);
      sub_1001F62C0(sub_1001C1294, v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001EF530(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, unint64_t a7, char a8, void (*a9)(void, void, __n128), uint64_t a10)
{
  v246 = a5;
  v252 = a4;
  v230 = a3;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v226 = &v191 - v14;
  sub_100168088(&unk_100581300, &qword_100403DF8);
  __chkstk_darwin();
  v225 = &v191 - v15;
  sub_100168088(&qword_100576A08, &qword_100403E00);
  __chkstk_darwin();
  v224 = &v191 - v16;
  sub_100168088(&unk_100581310, &qword_100403E08);
  __chkstk_darwin();
  v236 = &v191 - v17;
  sub_100168088(&unk_100581320, &unk_100403E10);
  __chkstk_darwin();
  v235 = &v191 - v18;
  v228 = type metadata accessor for MediaRequest.Params();
  v227 = *(v228 - 8);
  __chkstk_darwin();
  v237 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for MediaRequest.IncludeExtendTypes();
  v242 = *(v238 - 8);
  __chkstk_darwin();
  v220 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v222 = &v191 - v21;
  v22 = type metadata accessor for MediaRequest.RequestType();
  v248 = *(v22 - 8);
  v249 = v22;
  __chkstk_darwin();
  v244 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v247 = &v191 - v24;
  sub_100168088(&qword_100576A10, qword_10040F230);
  __chkstk_darwin();
  v234 = &v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v245 = &v191 - v26;
  v251 = type metadata accessor for MediaRequest.ContentType();
  v27 = *(v251 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v223 = &v191 - v28;
  __chkstk_darwin();
  __chkstk_darwin();
  v233 = &v191 - v29;
  __chkstk_darwin();
  v31 = &v191 - v30;
  __chkstk_darwin();
  v33 = &v191 - v32;
  v39 = __chkstk_darwin();
  v41 = &v191 - v40;
  if (!v36 || *(a2 + 16) > v36)
  {
    if (a7 >> 62)
    {
      v211 = v36;
      v219 = v37;
      v208 = v38;
      v207 = v34;
      v218 = v35;
      v42 = _CocoaArrayWrapper.endIndex.getter();
      v35 = v218;
      v34 = v207;
      v38 = v208;
      v37 = v219;
      v36 = v211;
    }

    else
    {
      v42 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v42 < v246)
    {
      v218 = v35;
      v207 = v34;
      v208 = v38;
      v219 = v37;
      v211 = v36;
      v205 = a9;
      v206 = a10;
      v217 = swift_allocObject();
      *(v217 + 16) = a7;
      v216 = swift_allocObject();
      *(v216 + 16) = a8 & 1;
      v43 = swift_allocObject();
      v215 = v43;
      *(v43 + 16) = _swiftEmptyArrayStorage;
      v221 = (v43 + 16);
      v210 = a2;
      v44 = *(a2 + 16);
      v214 = a6;
      if (!v44)
      {

        goto LABEL_27;
      }

      (*(v27 + 104))(v41, enum case for MediaRequest.ContentType.podcastEpisode(_:), v251);
      sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v45 = v256;
      v46 = v254;
      if (v255 == v253 && v256 == v254)
      {
        (*(v27 + 8))(v41, v251);

        goto LABEL_14;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v27 + 8))(v41, v251);

      if (v47)
      {
LABEL_14:
        v48 = v211;
        v49 = &a6[v211];
        if (__OFADD__(v211, a6))
        {
          __break(1u);
        }

        else
        {
          if (v44 < v49)
          {
            v49 = v44;
          }

          if (v49 >= v211)
          {
            if ((v211 & 0x8000000000000000) == 0)
            {
              if (v44 == (v49 - v211))
              {

LABEL_21:
                sub_1001C3B80(v50);
                goto LABEL_27;
              }

LABEL_89:
              sub_100274FDC(v210, v210 + 32, v48, (2 * v49) | 1);
              goto LABEL_21;
            }

LABEL_88:
            __break(1u);
            goto LABEL_89;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

      if (v44 <= v211)
      {
        __break(1u);
      }

      else
      {
        v51 = v210 + 16 * v211;
        v44 = *(v51 + 32);
        v46 = *(v51 + 40);
        v52 = v221;
        v45 = *v221;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v52 = v45;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_24:
          v55 = *(v45 + 2);
          v54 = *(v45 + 3);
          if (v55 >= v54 >> 1)
          {
            v45 = sub_100243134((v54 > 1), v55 + 1, 1, v45);
          }

          *(v45 + 2) = v55 + 1;
          v56 = &v45[16 * v55];
          *(v56 + 4) = v44;
          *(v56 + 5) = v46;
          *v221 = v45;
LABEL_27:
          v57 = _MTLogCategoryPlayback();
          if (!v57)
          {
            __break(1u);
            return;
          }

          v58 = v57;
          v59 = static os_log_type_t.default.getter();
          sub_100168088(&unk_100574670, &qword_100400AB0);
          v60 = swift_allocObject();
          v243 = xmmword_100400790;
          *(v60 + 16) = xmmword_100400790;
          v61 = *v221;
          *(v60 + 56) = sub_100168088(&qword_10057C9C0, &qword_100403E20);
          *(v60 + 64) = sub_100009FAC(&qword_100576A18, &qword_10057C9C0, &qword_100403E20, &protocol conformance descriptor for [A]);
          *(v60 + 32) = v61;

          os_log(_:dso:log:type:_:)("NetworkMediaManifest: Refreshing episodes for item(s) %@", 56, 2, &_mh_execute_header, v58, v59, v60);

          sub_100009F1C(0, &qword_10057AB20, off_1004D1A70);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v63 = [ObjCClassFromMetadata sharedInstance];
          v64 = [v63 activeDsid];

          if (v64)
          {
          }

          v212 = v64;
          v65 = enum case for MediaRequest.ContentType.podcastEpisode(_:);
          v66 = *(v27 + 104);
          v232 = v27 + 104;
          v250 = v66;
          v66(v33, enum case for MediaRequest.ContentType.podcastEpisode(_:), v251);
          v67 = sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
          dispatch thunk of RawRepresentable.rawValue.getter();
          v239 = v67;
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v255 == v253 && v256 == v254)
          {
            v68 = 1;
          }

          else
          {
            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v69 = v214;
          v70 = v33;
          v71 = v251;
          v241 = *(v27 + 8);
          v241(v70, v251);

          v204 = ObjCClassFromMetadata;
          v240 = v27 + 8;
          if (!v212 || (v68 & 1) != 0)
          {
            v76 = type metadata accessor for MediaRequest.ViewType();
            (*(*(v76 - 8) + 56))(v245, 1, 1, v76);
          }

          else
          {
            v72 = enum case for MediaRequest.ViewType.nextEpisodes(_:);
            v73 = type metadata accessor for MediaRequest.ViewType();
            v74 = *(v73 - 8);
            v75 = v245;
            (*(v74 + 104))(v245, v72, v73);
            (*(v74 + 56))(v75, 0, 1, v73);
          }

          LODWORD(v231) = enum case for MediaRequest.ContentType.podcast(_:);
          v77 = v250;
          (v250)(v31);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v255 == v253 && v256 == v254)
          {
            v241(v31, v71);
          }

          else
          {
            v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v241(v31, v71);

            LODWORD(v209) = 0;
            if ((v78 & 1) == 0)
            {
LABEL_43:
              v77(v233, v65, v71);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              v202 = v65;
              if (v255 == v253 && v256 == v254)
              {
                v241(v233, v71);

                v79 = &enum case for MediaRequest.RequestType.catalog(_:);
              }

              else
              {
                v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v241(v233, v71);

                if ((v80 | v209))
                {
                  v79 = &enum case for MediaRequest.RequestType.catalog(_:);
                }

                else
                {
                  v79 = &enum case for MediaRequest.RequestType.library(_:);
                }
              }

              v81 = v231;
              v82 = *(v248 + 104);
              v82(v247, *v79, v249);
              v250(v218, v81, v71);
              dispatch thunk of RawRepresentable.rawValue.getter();
              dispatch thunk of RawRepresentable.rawValue.getter();
              if (v255 == v253 && v256 == v254)
              {
                v241(v218, v71);
              }

              else
              {
                v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v241(v218, v71);

                if ((v83 & 1) == 0)
                {
                  goto LABEL_55;
                }
              }

              v84 = v244;
              v85 = v249;
              v82(v244, enum case for MediaRequest.RequestType.library(_:), v249);
              v86 = static MediaRequest.RequestType.== infix(_:_:)();
              (*(v248 + 8))(v84, v85);
              if (v86)
              {
                v87 = 0;
LABEL_56:
                v88 = v223;
                v89 = v250;
                v250(v223, v231, v71);
                dispatch thunk of RawRepresentable.rawValue.getter();
                dispatch thunk of RawRepresentable.rawValue.getter();
                v90 = v241;
                v213 = v27;
                LODWORD(v221) = v87;
                v218 = v69;
                if (v255 == v253 && v256 == v254)
                {
                  v241(v88, v71);
                }

                else
                {
                  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v90(v88, v71);

                  if ((v91 & 1) == 0)
                  {
                    v209 = sub_100168088(&qword_100576A20, &qword_100403E28);
                    v122 = v242;
                    v123 = *(v242 + 72);
                    v200 = *(v242 + 80);
                    v124 = (v200 + 32) & ~v200;
                    v125 = swift_allocObject();
                    v233 = v125;
                    *(v125 + 16) = v243;
                    v199 = *(v122 + 104);
                    v203 = v122 + 104;
                    v126 = v89;
                    v199(v125 + v124, enum case for MediaRequest.IncludeExtendTypes.playbackPosition(_:), v238);
                    v197 = sub_100168088(&qword_100576A28, &unk_100403E30);
                    v127 = sub_100168088(&unk_100572EE0, &unk_1003FF380);
                    v128 = *(v127 - 8);
                    v201 = *(v128 + 72);
                    v196 = *(v128 + 80);
                    v129 = (v196 + 32) & ~v196;
                    v223 = 2 * v201;
                    v195 = v129;
                    v130 = swift_allocObject();
                    v194 = v130;
                    *(v130 + 16) = xmmword_1004007E0;
                    v131 = v130 + v129;
                    *&v191 = *(v127 + 48);
                    v192 = v127;
                    (v126)(v130 + v129, enum case for MediaRequest.ContentType.podcastChannel(_:), v71);
                    v198 = v123;
                    v132 = v124;
                    v133 = swift_allocObject();
                    *(v133 + 16) = v243;
                    v134 = v133 + v124;
                    v135 = v238;
                    v136 = v199;
                    v199(v134, enum case for MediaRequest.IncludeExtendTypes.isSubscribed(_:), v238);
                    v193 = v131;
                    *(v131 + v191) = v133;
                    v137 = v131 + v201;
                    *&v191 = *(v127 + 48);
                    (v126)(v131 + v201, v231, v251);
                    v138 = swift_allocObject();
                    *(v138 + 16) = xmmword_1004007C0;
                    v139 = v132;
                    v140 = v136;
                    v136(v138 + v132, enum case for MediaRequest.IncludeExtendTypes.feedUrl(_:), v135);
                    v136(v138 + v132 + v198, enum case for MediaRequest.IncludeExtendTypes.editorialArtwork(_:), v135);
                    *(v137 + v191) = v138;
                    v141 = v193 + v223;
                    v142 = v192;
                    v223 = *(v192 + 48);
                    v250(v141, v202, v251);
                    v143 = swift_allocObject();
                    *(v143 + 16) = v243;
                    v140(v143 + v132, enum case for MediaRequest.IncludeExtendTypes.firstAvailableDates(_:), v135);
                    *(v141 + v223) = v143;
                    v223 = sub_10016A688(v194);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    v144 = v195;
                    v145 = swift_allocObject();
                    *(v145 + 16) = v243;
                    v146 = v145 + v144;
                    v147 = *(v142 + 48);
                    v148 = v251;
                    v250(v146, v231, v251);
                    v116 = v135;
                    v115 = v148;
                    v149 = swift_allocObject();
                    *(v149 + 16) = v243;
                    v199(v149 + v139, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v116);
                    *(v146 + v147) = v149;
                    v231 = sub_10016A688(v145);
                    swift_setDeallocating();
                    v150 = v146;
                    v112 = v233;
                    sub_100009104(v150, &unk_100572EE0, &unk_1003FF380);
                    swift_deallocClassInstance();
                    goto LABEL_65;
                  }
                }

                v92 = sub_100168088(&qword_100576A28, &unk_100403E30);
                v93 = sub_100168088(&unk_100572EE0, &unk_1003FF380);
                v196 = v93;
                v94 = *(v93 - 8);
                v203 = *(v94 + 72);
                v95 = (*(v94 + 80) + 32) & ~*(v94 + 80);
                v192 = *(v94 + 80);
                v194 = v92;
                v96 = swift_allocObject();
                v191 = xmmword_1004007C0;
                v197 = v96;
                *(v96 + 16) = xmmword_1004007C0;
                v193 = v95;
                v233 = (v96 + v95);
                v223 = *(v93 + 48);
                v89();
                v97 = sub_100168088(&qword_100576A20, &qword_100403E28);
                v98 = v242;
                v99 = *(v242 + 72);
                v100 = *(v242 + 80);
                v101 = (v100 + 32) & ~v100;
                v102 = swift_allocObject();
                *(v102 + 16) = v243;
                v103 = *(v98 + 104);
                v104 = v238;
                v103(v102 + v101, enum case for MediaRequest.IncludeExtendTypes.isSubscribed(_:), v238);
                v105 = v233;
                *&v233[v223] = v102;
                v195 = &v105[v203];
                v106 = v196;
                v223 = *(v196 + 48);
                (v250)();
                v201 = v99;
                v198 = v100;
                v107 = v101;
                v199 = v97;
                v108 = swift_allocObject();
                *(v108 + 16) = v243;
                v200 = v103;
                v103(v108 + v101, enum case for MediaRequest.IncludeExtendTypes.editorialArtwork(_:), v104);
                *(v195 + v223) = v108;
                v223 = sub_10016A688(v197);
                swift_setDeallocating();
                swift_arrayDestroy();
                swift_deallocClassInstance();
                if (v209)
                {
                  v109 = v201;
                  v110 = swift_allocObject();
                  *(v110 + 16) = v191;
                  v111 = v110 + v101;
                  v112 = v110;
                  v113 = v238;
                  v114 = v200;
                  (v200)(v110 + v101, enum case for MediaRequest.IncludeExtendTypes.playbackPosition(_:), v238);
                  v114(v111 + v109, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v113);
                  v231 = sub_10016A688(_swiftEmptyArrayStorage);
                  v115 = v251;
                }

                else
                {
                  v117 = v193;
                  v118 = swift_allocObject();
                  *(v118 + 16) = v243;
                  v119 = v118 + v117;
                  v120 = *(v106 + 48);
                  v115 = v251;
                  v250(v119, v231, v251);
                  v121 = swift_allocObject();
                  *(v121 + 16) = v243;
                  v113 = v238;
                  (v200)(v121 + v107, enum case for MediaRequest.IncludeExtendTypes.channel(_:), v238);
                  *(v119 + v120) = v121;
                  v231 = sub_10016A688(v118);
                  swift_setDeallocating();
                  sub_100009104(v119, &unk_100572EE0, &unk_1003FF380);
                  swift_deallocClassInstance();
                  v112 = _swiftEmptyArrayStorage;
                }

                v116 = v113;
LABEL_65:
                v151 = v213;
                if (v212)
                {
                  v152 = v250;
                  if (static Podcasts.areTranscriptsSupportedOnPlatform.getter())
                  {
LABEL_67:
                    v152(v207, v202, v115);
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    if (v255 == v253 && v256 == v254)
                    {
                      v241(v207, v115);

LABEL_77:
                      v158 = v220;
                      (*(v242 + 104))(v220, enum case for MediaRequest.IncludeExtendTypes.transcripts(_:), v116);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v112 = sub_1002437AC(0, *(v112 + 2) + 1, 1, v112);
                      }

                      v160 = *(v112 + 2);
                      v159 = *(v112 + 3);
                      if (v160 >= v159 >> 1)
                      {
                        v112 = sub_1002437AC((v159 > 1), v160 + 1, 1, v112);
                      }

                      v233 = v112;
                      *(v112 + 2) = v160 + 1;
                      (*(v242 + 32))(&v112[((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v160], v158, v116);
                      goto LABEL_83;
                    }

                    v156 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v157 = v241;
                    v241(v207, v115);

                    if (v156)
                    {
                      goto LABEL_77;
                    }

                    v161 = v219;
                    v250(v219, v202, v115);
                    sub_100168088(&qword_100576A20, &qword_100403E28);
                    v233 = v112;
                    v162 = v242;
                    v163 = (*(v242 + 80) + 32) & ~*(v242 + 80);
                    v164 = swift_allocObject();
                    *(v164 + 16) = v243;
                    (*(v162 + 104))(v164 + v163, enum case for MediaRequest.IncludeExtendTypes.transcripts(_:), v116);
                    v165 = v231;
                    v166 = swift_isUniquelyReferenced_nonNull_native();
                    v255 = v165;
                    sub_10025EBA4(v164, v161, v166);
                    v157(v161, v115);
                    v231 = v255;
LABEL_83:
                    (*(v248 + 16))(v244, v247, v249);
                    v167 = *(v151 + 16);
                    v242 = v151 + 16;
                    v250 = v167;
                    v168 = v235;
                    v167(v235, v252, v115);
                    (*(v151 + 56))(v168, 0, 1, v115);
                    sub_100010430(v245, v234, &qword_100576A10, qword_10040F230);
                    v169 = type metadata accessor for MediaRequest.Relationship();
                    (*(*(v169 - 8) + 56))(v236, 1, 1, v169);
                    sub_100168088(&qword_100576A30, &qword_100403E40);
                    v170 = type metadata accessor for MediaRequest.WithTypes();
                    v171 = *(v170 - 8);
                    v172 = (*(v171 + 80) + 32) & ~*(v171 + 80);
                    v173 = swift_allocObject();
                    *(v173 + 16) = v243;
                    (*(v171 + 104))(v173 + v172, enum case for MediaRequest.WithTypes.newsPodcasts(_:), v170);
                    v240 = *(v215 + 16);
                    v174 = type metadata accessor for MediaRequest.URLFragment();
                    (*(*(v174 - 8) + 56))(v224, 1, 1, v174);
                    v175 = type metadata accessor for MediaRequest.PageName();
                    (*(*(v175 - 8) + 56))(v225, 1, 1, v175);
                    v176 = type metadata accessor for URL();
                    (*(*(v176 - 8) + 56))(v226, 1, 1, v176);

                    *&v243 = sub_100359D78(_swiftEmptyArrayStorage);
                    v241 = sub_100359D78(_swiftEmptyArrayStorage);
                    sub_100359F60(_swiftEmptyArrayStorage);
                    sub_10035A148(_swiftEmptyArrayStorage);
                    sub_10035A24C(_swiftEmptyArrayStorage);
                    sub_10035A434(_swiftEmptyArrayStorage);
                    sub_10035A61C(_swiftEmptyArrayStorage);
                    sub_10035A804(_swiftEmptyArrayStorage);
                    MediaRequest.Params.init(requestType:requestContentType:viewType:directFetch:relationshipIncludes:relationshipRelates:relationshipLimit:include:omit:typedIncludes:typedExtends:typedAssociations:fields:typedFields:withTypes:displayKinds:identifiers:fragment:limit:filters:meta:offset:pageName:requestAllPages:hostUrl:countryCode:isImplicitActionRequest:searchTerm:queryContentTypes:triggerBy:includeEntitlementsOverride:languageTag:)();
                    v177 = [v204 sharedInstance];
                    v244 = [v177 activeAccount];

                    v250(v219, v252, v251);
                    v178 = v213;
                    v179 = (*(v213 + 80) + 88) & ~*(v213 + 80);
                    v180 = (v208 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v181 = swift_allocObject();
                    v182 = v205;
                    v183 = v206;
                    *(v181 + 2) = v205;
                    *(v181 + 3) = v183;
                    v184 = v229;
                    *(v181 + 4) = v216;
                    *(v181 + 5) = v184;
                    v185 = v211;
                    *(v181 + 6) = v217;
                    *(v181 + 7) = v185;
                    v186 = v210;
                    *(v181 + 8) = v215;
                    *(v181 + 9) = v186;
                    v187 = v230;
                    *(v181 + 10) = v230;
                    (*(v178 + 32))(&v181[v179], v219, v251);
                    *&v181[v180] = v246;
                    *&v181[(v180 + 15) & 0xFFFFFFFFFFFFFFF8] = v214;

                    sub_100013CB4(v182, v183);

                    v188 = v187;
                    v189 = v237;
                    v190 = v244;
                    dispatch thunk of MediaRequestController.performRecursivelyWithParsing(params:account:callback:)();

                    (*(v227 + 8))(v189, v228);
                    (*(v248 + 8))(v247, v249);
                    sub_100009104(v245, &qword_100576A10, qword_10040F230);

                    return;
                  }
                }

                else
                {
                  (*(v242 + 104))(v222, enum case for MediaRequest.IncludeExtendTypes.episodes(_:), v116);
                  v153 = swift_isUniquelyReferenced_nonNull_native();
                  v152 = v250;
                  if ((v153 & 1) == 0)
                  {
                    v112 = sub_1002437AC(0, *(v112 + 2) + 1, 1, v112);
                  }

                  v155 = *(v112 + 2);
                  v154 = *(v112 + 3);
                  if (v155 >= v154 >> 1)
                  {
                    v112 = sub_1002437AC((v154 > 1), v155 + 1, 1, v112);
                  }

                  *(v112 + 2) = v155 + 1;
                  (*(v242 + 32))(&v112[((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v155], v222, v116);
                  if (static Podcasts.areTranscriptsSupportedOnPlatform.getter())
                  {
                    goto LABEL_67;
                  }
                }

                v233 = v112;
                goto LABEL_83;
              }

LABEL_55:
              v69 = 0;
              v87 = 1;
              goto LABEL_56;
            }
          }

          LODWORD(v209) = *(*v221 + 2) != 0;
          goto LABEL_43;
        }
      }

      v45 = sub_100243134(0, *(v45 + 2) + 1, 1, v45);
      *v221 = v45;
      goto LABEL_24;
    }
  }

  if (a9)
  {
    a9(a7, a8 & 1, v39);
  }
}