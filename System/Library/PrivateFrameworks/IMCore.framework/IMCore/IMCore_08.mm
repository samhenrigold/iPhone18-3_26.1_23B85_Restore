uint64_t sub_1A841D43C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A841E56C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A841D4FC(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_1A841D4A8()
{
  result = qword_1EB2E74C8;
  if (!qword_1EB2E74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74C8);
  }

  return result;
}

uint64_t sub_1A841D4FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A84E674C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A84E602C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A841D734(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1A841D5F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A841D5F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 144 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 144);
      v12 = *v10 == *(v10 - 144) && *(v10 + 8) == *(v10 - 136);
      if (v12 || (result = sub_1A84E67AC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 144;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v24 = *(v10 + 96);
      v25 = *(v10 + 112);
      v26 = *(v10 + 128);
      v20 = *(v10 + 32);
      v21 = *(v10 + 48);
      v22 = *(v10 + 64);
      v23 = *(v10 + 80);
      v18 = *v10;
      v19 = *(v10 + 16);
      v13 = *(v10 - 64);
      *(v10 + 64) = *(v10 - 80);
      *(v10 + 80) = v13;
      v14 = *(v10 - 32);
      *(v10 + 96) = *(v10 - 48);
      *(v10 + 112) = v14;
      *(v10 + 128) = *(v10 - 16);
      v15 = *(v10 - 96);
      *(v10 + 32) = *(v10 - 112);
      *(v10 + 48) = v15;
      v16 = *(v10 - 128);
      *v10 = *v11;
      *(v10 + 16) = v16;
      v10 -= 144;
      v11[4] = v22;
      v11[5] = v23;
      v11[6] = v24;
      v11[7] = v25;
      v11[8] = v26;
      v11[2] = v20;
      v11[3] = v21;
      *v11 = v18;
      v11[1] = v19;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A841D734(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  __dst = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_1A841E100(v9);
      v9 = result;
    }

    v88 = v9 + 16;
    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (1)
      {
        v90 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v91 = &v9[16 * v89];
        v6 = *v91;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1A841DDD4((v90 + 144 * *v91), (v90 + 144 * *v92), (v90 + 144 * v93), __dst);
        if (v5)
        {
        }

        if (v93 < v6)
        {
          goto LABEL_131;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_132;
        }

        *v91 = v6;
        *(v91 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_133;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        v6 = a3;
        if (v89 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 144 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 144 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_1A84E67AC();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 144 * v10 + 152);
        v18 = v17;
        do
        {
          result = v17[17];
          v20 = v18[18];
          v18 += 18;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1A84E67AC();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 144 * v8 - 144;
          v23 = 144 * v10;
          v24 = v10;
          v25 = v8;
          v96 = v24;
          do
          {
            if (v24 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = (v27 + v22);
              v113 = *(v27 + v23 + 96);
              v115 = *(v27 + v23 + 112);
              v117 = *(v27 + v23 + 128);
              v105 = *(v27 + v23 + 32);
              v107 = *(v27 + v23 + 48);
              v109 = *(v27 + v23 + 64);
              v111 = *(v27 + v23 + 80);
              v101 = *(v27 + v23);
              v103 = *(v27 + v23 + 16);
              result = memmove((v27 + v23), (v27 + v22), 0x90uLL);
              v26[6] = v113;
              v26[7] = v115;
              v26[8] = v117;
              v26[2] = v105;
              v26[3] = v107;
              v26[4] = v109;
              v26[5] = v111;
              *v26 = v101;
              v26[1] = v103;
            }

            ++v24;
            v22 -= 144;
            v23 += 144;
          }

          while (v24 < v25);
          v10 = v96;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A83EEF08(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1A83EEF08((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *__dst;
    if (!*__dst)
    {
      goto LABEL_144;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_76:
          if (v50)
          {
            goto LABEL_122;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_125;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_129;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_90:
        if (v68)
        {
          goto LABEL_124;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_127;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_97:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_1A841DDD4((*v6 + 144 * v85), (*v6 + 144 * *&v9[16 * v46 + 32]), (*v6 + 144 * v86), v45);
        if (v5)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A841E100(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_1A841E074(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_120;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_121;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_123;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_126;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_130;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v95 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v95;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 144 * v8;
  v97 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 144);
    v35 = *v33 == *(v33 - 144) && *(v33 + 8) == *(v33 - 136);
    if (v35 || (result = sub_1A84E67AC(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 144;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v97;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v114 = *(v33 + 96);
    v116 = *(v33 + 112);
    v118 = *(v33 + 128);
    v106 = *(v33 + 32);
    v108 = *(v33 + 48);
    v110 = *(v33 + 64);
    v112 = *(v33 + 80);
    v102 = *v33;
    v104 = *(v33 + 16);
    v36 = *(v33 - 64);
    *(v33 + 64) = *(v33 - 80);
    *(v33 + 80) = v36;
    v37 = *(v33 - 32);
    *(v33 + 96) = *(v33 - 48);
    *(v33 + 112) = v37;
    *(v33 + 128) = *(v33 - 16);
    v38 = *(v33 - 96);
    *(v33 + 32) = *(v33 - 112);
    *(v33 + 48) = v38;
    v39 = *(v33 - 128);
    *v33 = *v34;
    *(v33 + 16) = v39;
    v33 -= 144;
    v34[4] = v110;
    v34[5] = v112;
    v34[6] = v114;
    v34[7] = v116;
    v34[8] = v118;
    v34[2] = v106;
    v34[3] = v108;
    *v34 = v102;
    v34[1] = v104;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

uint64_t sub_1A841DDD4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 144;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 144;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[144 * v9] <= __dst)
    {
      memmove(__dst, __src, 144 * v9);
    }

    v12 = &v4[144 * v9];
    if (v8 < 144 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1A84E67AC() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 144;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 144;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 144;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x90uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[144 * v11] <= __dst)
  {
    memmove(__dst, a2, 144 * v11);
  }

  v12 = &v4[144 * v11];
  if (v10 >= 144 && v6 > v7)
  {
    do
    {
      v15 = v6 - 144;
      v5 -= 144;
      v16 = v12;
      while (1)
      {
        v17 = *(v16 - 18);
        v18 = *(v16 - 17);
        v16 -= 144;
        v19 = v17 == *(v6 - 18) && v18 == *(v6 - 17);
        if (!v19 && (sub_1A84E67AC() & 1) != 0)
        {
          break;
        }

        if (v5 + 144 != v12)
        {
          memmove(v5, v16, 0x90uLL);
        }

        v5 -= 144;
        v12 = v16;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      if (v5 + 144 != v6)
      {
        memmove(v5, v6 - 144, 0x90uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 144;
    }

    while (v15 > v7);
    v6 = v15;
  }

LABEL_41:
  v20 = (v12 - v4) / 144;
  if (v6 != v4 || v6 >= &v4[144 * v20])
  {
    memmove(v6, v4, 144 * v20);
  }

  return 1;
}

uint64_t sub_1A841E074(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A841E100(v3);
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

unint64_t sub_1A841E17C()
{
  result = qword_1EB2E74E0;
  if (!qword_1EB2E74E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74E0);
  }

  return result;
}

unint64_t sub_1A841E1D0()
{
  result = qword_1EB2E74E8;
  if (!qword_1EB2E74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74E8);
  }

  return result;
}

unint64_t sub_1A841E224()
{
  result = qword_1EB2E74F0;
  if (!qword_1EB2E74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74F0);
  }

  return result;
}

unint64_t sub_1A841E278()
{
  result = qword_1EB2E7508;
  if (!qword_1EB2E7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7508);
  }

  return result;
}

unint64_t sub_1A841E2CC()
{
  result = qword_1EB2E7510;
  if (!qword_1EB2E7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7510);
  }

  return result;
}

unint64_t sub_1A841E320()
{
  result = qword_1EB2E7520;
  if (!qword_1EB2E7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7520);
  }

  return result;
}

unint64_t sub_1A841E374()
{
  result = qword_1EB2E7528;
  if (!qword_1EB2E7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7528);
  }

  return result;
}

uint64_t sub_1A841E3C8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E74F8, &qword_1A8502960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A841E440()
{
  result = qword_1EB2E7538;
  if (!qword_1EB2E7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7538);
  }

  return result;
}

unint64_t sub_1A841E494()
{
  result = qword_1EB2E7540;
  if (!qword_1EB2E7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7540);
  }

  return result;
}

uint64_t sub_1A841E4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Attachment(0);
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v35 - v8);
  v10 = sub_1A83EA2FC(&qword_1EB2E7748, &qword_1A8503A68);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v35 - v11;
  v12 = type metadata accessor for ImportExport.Conversation(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();

  v13 = MEMORY[0x1E69E7CC0];
  v39 = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
  sub_1A84E595C();

  v14 = sub_1A83EBA20(v13);
  if (*(a1 + 8) != *(a2 + 8) && (sub_1A84E67AC() & 1) == 0 || *a1 != *a2)
  {
    goto LABEL_57;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (v15)
  {
    if (!v16 || (*(a1 + 48) != *(a2 + 48) || v15 != v16) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v16)
  {
    goto LABEL_57;
  }

  v36 = v14;
  if (*(a1 + 40))
  {
    v17 = 0x7564697669646E69;
  }

  else
  {
    v17 = 0x70756F7267;
  }

  if (*(a1 + 40))
  {
    v18 = 0xEA00000000006C61;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  if (*(a2 + 40))
  {
    v19 = 0x7564697669646E69;
  }

  else
  {
    v19 = 0x70756F7267;
  }

  if (*(a2 + 40))
  {
    v20 = 0xEA00000000006C61;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  if (v17 == v19 && v18 == v20)
  {
  }

  else
  {
    v21 = sub_1A84E67AC();

    if ((v21 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if ((*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (sub_1A84E67AC() & 1) == 0 || (sub_1A8414F64(*(a1 + 240), *(a2 + 240)) & 1) == 0)
  {
    goto LABEL_57;
  }

  v22 = *(a1 + 288);
  v23 = *(a2 + 288);
  if (v22)
  {
    if (!v23 || (*(a1 + 280) != *(a2 + 280) || v22 != v23) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v23)
  {
    goto LABEL_57;
  }

  if (*(a1 + 248) != *(a2 + 248) || (sub_1A8436808(*(a1 + 272), *(a2 + 272)) & 1) == 0 || (sub_1A8436A6C(*(a1 + 273), *(a2 + 273)) & 1) == 0)
  {
    goto LABEL_57;
  }

  v24 = *(a1 + 320);
  v25 = *(a2 + 320);
  if (v24)
  {
    if (!v25 || (*(a1 + 312) != *(a2 + 312) || v24 != v25) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v25)
  {
    goto LABEL_57;
  }

  v26 = *(a1 + 72);
  v27 = *(a2 + 72);
  if (v26)
  {
    if (!v27 || (*(a1 + 64) != *(a2 + 64) || v26 != v27) && (sub_1A84E67AC() & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v27)
  {
    goto LABEL_57;
  }

  v28 = *(v12 + 80);
  v29 = *(v10 + 48);
  v30 = v38;
  sub_1A8415BC8(a1 + v28, v38);
  sub_1A8415BC8(a2 + v28, v30 + v29);
  v31 = *(v37 + 48);
  if (v31(v30, 1, v4) == 1)
  {
    if (v31(v30 + v29, 1, v4) != 1)
    {

LABEL_62:
      sub_1A824B2D4(v30, &qword_1EB2E7748, &qword_1A8503A68);
      goto LABEL_58;
    }

    goto LABEL_66;
  }

  sub_1A8415BC8(v30, v9);
  if (v31(v30 + v29, 1, v4) == 1)
  {

    sub_1A84208F8(v9, type metadata accessor for ImportExport.Attachment);
    goto LABEL_62;
  }

  sub_1A8420828(v30 + v29, v6, type metadata accessor for ImportExport.Attachment);
  if (*v9 == *v6 && v9[1] == v6[1])
  {
    sub_1A84208F8(v6, type metadata accessor for ImportExport.Attachment);
    sub_1A84208F8(v9, type metadata accessor for ImportExport.Attachment);
LABEL_66:
    sub_1A824B2D4(v30, &qword_1EB2E6F50, &unk_1A8502920);
LABEL_67:
    v32 = sub_1A84A4AE0(v39, v36);

    return v32 & 1;
  }

  v34 = sub_1A84E67AC();
  sub_1A84208F8(v6, type metadata accessor for ImportExport.Attachment);
  sub_1A84208F8(v9, type metadata accessor for ImportExport.Attachment);
  sub_1A824B2D4(v30, &qword_1EB2E6F50, &unk_1A8502920);
  if (v34)
  {
    goto LABEL_67;
  }

LABEL_57:

LABEL_58:
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_1A841EBAC()
{
  result = qword_1EB2E75A0;
  if (!qword_1EB2E75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75A0);
  }

  return result;
}

unint64_t sub_1A841EC00()
{
  result = qword_1EB2E75A8;
  if (!qword_1EB2E75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75A8);
  }

  return result;
}

unint64_t sub_1A841EC54()
{
  result = qword_1EB2E75B0;
  if (!qword_1EB2E75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75B0);
  }

  return result;
}

unint64_t sub_1A841ECA8()
{
  result = qword_1EB2E75B8;
  if (!qword_1EB2E75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75B8);
  }

  return result;
}

unint64_t sub_1A841ECFC()
{
  result = qword_1EB2E75C0;
  if (!qword_1EB2E75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75C0);
  }

  return result;
}

unint64_t sub_1A841ED50()
{
  result = qword_1EB2E75C8;
  if (!qword_1EB2E75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75C8);
  }

  return result;
}

unint64_t sub_1A841EDA4()
{
  result = qword_1EB2E75D0;
  if (!qword_1EB2E75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75D0);
  }

  return result;
}

unint64_t sub_1A841EDF8()
{
  result = qword_1EB2E75D8;
  if (!qword_1EB2E75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E75D8);
  }

  return result;
}

uint64_t sub_1A841EE4C(void *a1)
{
  a1[1] = sub_1A841EFF0(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  a1[2] = sub_1A841EFF0(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  result = sub_1A841EFF0(&qword_1EB2E7620, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  a1[3] = result;
  return result;
}

unint64_t sub_1A841EEFC()
{
  result = qword_1EB2E7628;
  if (!qword_1EB2E7628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7628);
  }

  return result;
}

unint64_t sub_1A841EF54()
{
  result = qword_1EB2E7630;
  if (!qword_1EB2E7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7630);
  }

  return result;
}

uint64_t sub_1A841EFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A841F060(uint64_t a1)
{
  sub_1A841F1B8(319, &qword_1EB2E73E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A841F1B8(319, &qword_1EB2E7650, &type metadata for ImportExport.Participant, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A841F208(319);
      if (v3 <= 0x3F)
      {
        sub_1A8412BDC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A841F1B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A841F208(uint64_t a1)
{
  if (!qword_1EB2E7658)
  {
    type metadata accessor for ImportExport.Attachment(255);
    v1 = sub_1A84E633C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E7658);
    }
  }
}

uint64_t sub_1A841F28C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A841F2D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s17ConversationErrorO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s17ConversationErrorO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s12ConversationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s12ConversationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A841F63C()
{
  result = qword_1EB2E7660;
  if (!qword_1EB2E7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7660);
  }

  return result;
}

unint64_t sub_1A841F694()
{
  result = qword_1EB2E7668;
  if (!qword_1EB2E7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7668);
  }

  return result;
}

unint64_t sub_1A841F6EC()
{
  result = qword_1EB2E7670;
  if (!qword_1EB2E7670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7670);
  }

  return result;
}

unint64_t sub_1A841F744()
{
  result = qword_1EB2E7678;
  if (!qword_1EB2E7678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7678);
  }

  return result;
}

unint64_t sub_1A841F79C()
{
  result = qword_1EB2E7680;
  if (!qword_1EB2E7680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7680);
  }

  return result;
}

unint64_t sub_1A841F7F4()
{
  result = qword_1EB2E7688;
  if (!qword_1EB2E7688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7688);
  }

  return result;
}

unint64_t sub_1A841F84C()
{
  result = qword_1EB2E7690;
  if (!qword_1EB2E7690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7690);
  }

  return result;
}

unint64_t sub_1A841F8A4()
{
  result = qword_1EB2E7698;
  if (!qword_1EB2E7698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7698);
  }

  return result;
}

unint64_t sub_1A841F8FC()
{
  result = qword_1EB2E76A0;
  if (!qword_1EB2E76A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76A0);
  }

  return result;
}

unint64_t sub_1A841F954()
{
  result = qword_1EB2E76A8;
  if (!qword_1EB2E76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76A8);
  }

  return result;
}

unint64_t sub_1A841F9AC()
{
  result = qword_1EB2E76B0;
  if (!qword_1EB2E76B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76B0);
  }

  return result;
}

unint64_t sub_1A841FA04()
{
  result = qword_1EB2E76B8;
  if (!qword_1EB2E76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76B8);
  }

  return result;
}

unint64_t sub_1A841FA5C()
{
  result = qword_1EB2E76C0;
  if (!qword_1EB2E76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76C0);
  }

  return result;
}

unint64_t sub_1A841FAB4()
{
  result = qword_1EB2E76C8;
  if (!qword_1EB2E76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76C8);
  }

  return result;
}

unint64_t sub_1A841FB0C()
{
  result = qword_1EB2E76D0;
  if (!qword_1EB2E76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76D0);
  }

  return result;
}

unint64_t sub_1A841FB64()
{
  result = qword_1EB2E76D8;
  if (!qword_1EB2E76D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76D8);
  }

  return result;
}

unint64_t sub_1A841FBBC()
{
  result = qword_1EB2E76E0;
  if (!qword_1EB2E76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76E0);
  }

  return result;
}

unint64_t sub_1A841FC14()
{
  result = qword_1EB2E76E8;
  if (!qword_1EB2E76E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76E8);
  }

  return result;
}

unint64_t sub_1A841FC6C()
{
  result = qword_1EB2E76F0;
  if (!qword_1EB2E76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76F0);
  }

  return result;
}

unint64_t sub_1A841FCC4()
{
  result = qword_1EB2E76F8;
  if (!qword_1EB2E76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E76F8);
  }

  return result;
}

unint64_t sub_1A841FD1C()
{
  result = qword_1EB2E7700;
  if (!qword_1EB2E7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7700);
  }

  return result;
}

unint64_t sub_1A841FD74()
{
  result = qword_1EB2E7708;
  if (!qword_1EB2E7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7708);
  }

  return result;
}

unint64_t sub_1A841FDCC()
{
  result = qword_1EB2E7710;
  if (!qword_1EB2E7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7710);
  }

  return result;
}

unint64_t sub_1A841FE24()
{
  result = qword_1EB2E7718;
  if (!qword_1EB2E7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7718);
  }

  return result;
}

unint64_t sub_1A841FE7C()
{
  result = qword_1EB2E7720;
  if (!qword_1EB2E7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7720);
  }

  return result;
}

unint64_t sub_1A841FED4()
{
  result = qword_1EB2E7728;
  if (!qword_1EB2E7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7728);
  }

  return result;
}

unint64_t sub_1A841FF2C()
{
  result = qword_1EB2E7730;
  if (!qword_1EB2E7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7730);
  }

  return result;
}

uint64_t sub_1A841FF80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8530660 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8530680 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85306A0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64656E6E69507369 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85306C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79547265746C6966 && a2 == 0xEA00000000006570 || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85306E0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530700 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x70756F7247736372 && a2 == 0xEB00000000495255 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F685070756F7267 && a2 == 0xEA00000000006F74 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 17;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1A8420534(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x80000001A8530720 == a2;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8530740 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x45444970756F7267 && a2 == 0xEC000000726F7272 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530760 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8530780 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A85307A0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85307C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1A8420780()
{
  result = qword_1EB2E7738;
  if (!qword_1EB2E7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7738);
  }

  return result;
}

unint64_t sub_1A84207D4()
{
  result = qword_1EB2E7740;
  if (!qword_1EB2E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7740);
  }

  return result;
}

uint64_t sub_1A8420828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8420890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84208F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ImportExport.Message.ISO8601String(fromDate:)(uint64_t a1)
{
  v2 = sub_1A84E577C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1A84E56DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8243D74(a1, v8, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A824B2D4(v8, &qword_1EB2E6F48, &unk_1A8501F00);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v14 = objc_opt_self();
    v15 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v16 = sub_1A824431C(v2, qword_1EB2E7FC8);
    swift_beginAccess();
    (*(v3 + 16))(v5, v16, v2);
    v17 = sub_1A84E576C();
    (*(v3 + 8))(v5, v2);
    v18 = [v14 stringFromDate:v15 timeZone:v17 formatOptions:1907];

    v19 = sub_1A84E5DBC();
    (*(v10 + 8))(v12, v9);
    return v19;
  }
}

void *ImportExport.Message.allAttachments.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for ImportExport.Attachment(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v23 - v8;
  v9 = type metadata accessor for ImportExport.MessagePart(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 216);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = *(v10 + 44);
  v16 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v25 = *(v11 + 72);
  v23 = v5;
  v17 = (v5 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v24 = v4;
  do
  {
    sub_1A8429854(v16, v13, type metadata accessor for ImportExport.MessagePart);
    sub_1A8243D74(&v13[v26], v3, &qword_1EB2E6F50, &unk_1A8502920);
    sub_1A84298BC(v13, type metadata accessor for ImportExport.MessagePart);
    if ((*v17)(v3, 1, v4) == 1)
    {
      sub_1A824B2D4(v3, &qword_1EB2E6F50, &unk_1A8502920);
    }

    else
    {
      v19 = v27;
      sub_1A842AD50(v3, v27, type metadata accessor for ImportExport.Attachment);
      sub_1A8429854(v19, v28, type metadata accessor for ImportExport.Attachment);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1A83EF118(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1A83EF118((v20 > 1), v21 + 1, 1, v18);
      }

      sub_1A84298BC(v27, type metadata accessor for ImportExport.Attachment);
      v18[2] = v21 + 1;
      sub_1A842AD50(v28, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, type metadata accessor for ImportExport.Attachment);
      v4 = v24;
    }

    v16 += v25;
    --v15;
  }

  while (v15);
  return v18;
}

uint64_t ImportExport.Message.update(attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v48 = a1;
  v40 = a2;
  v5 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for ImportExport.Attachment(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v39 - v14;
  v57 = type metadata accessor for ImportExport.MessagePart(0);
  v16 = MEMORY[0x1EEE9AC00](v57);
  v58 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v39 - v21;
  v41 = v2;
  v24 = *(v2 + 216);
  v56 = *(v24 + 16);
  if (v56)
  {
    v25 = 0;
    v26 = *(v22 + 80);
    v49 = v15;
    v50 = (v26 + 32) & ~v26;
    v55 = v24 + v50;
    v54 = (v11 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    v51 = v24;
    v52 = v9;
    v28 = v22;
    v43 = v22;
    v44 = v10;
    v53 = &v39 - v21;
    while (1)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
        return result;
      }

      v60 = v27;
      v59 = *(v28 + 72);
      sub_1A8429854(v55 + v59 * v25, v23, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v23[*(v57 + 44)], v9, &qword_1EB2E6F50, &unk_1A8502920);
      v29 = *v54;
      if ((*v54)(v9, 1, v10) == 1)
      {
        break;
      }

      v30 = v49;
      v31 = sub_1A842AD50(v9, v49, type metadata accessor for ImportExport.Attachment);
      MEMORY[0x1EEE9AC00](v31);
      *(&v39 - 2) = v30;
      v32 = v47;
      sub_1A8428194(sub_1A8429618, v48, v47);
      if (v29(v32, 1, v10) == 1)
      {
        sub_1A824B2D4(v32, &qword_1EB2E6F50, &unk_1A8502920);
        sub_1A84298BC(v30, type metadata accessor for ImportExport.Attachment);
        v28 = v43;
        v10 = v44;
        goto LABEL_10;
      }

      v35 = v46;
      sub_1A842AD50(v32, v46, type metadata accessor for ImportExport.Attachment);
      v23 = v53;
      ImportExport.MessagePart.update(attachment:)(v35, v45);
      if (v4)
      {
        sub_1A84298BC(v46, type metadata accessor for ImportExport.Attachment);
        sub_1A84298BC(v23, type metadata accessor for ImportExport.MessagePart);

        return sub_1A84298BC(v49, type metadata accessor for ImportExport.Attachment);
      }

      v27 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1A83EF140(0, v27[2] + 1, 1, v27);
      }

      v28 = v43;
      v36 = v59;
      v38 = v27[2];
      v37 = v27[3];
      v42 = 0;
      if (v38 >= v37 >> 1)
      {
        v27 = sub_1A83EF140((v37 > 1), v38 + 1, 1, v27);
      }

      sub_1A84298BC(v46, type metadata accessor for ImportExport.Attachment);
      sub_1A84298BC(v23, type metadata accessor for ImportExport.MessagePart);
      v27[2] = v38 + 1;
      sub_1A842AD50(v45, v27 + v50 + v38 * v36, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84298BC(v49, type metadata accessor for ImportExport.Attachment);
      v4 = v42;
      v10 = v44;
LABEL_4:
      ++v25;
      v24 = v51;
      v9 = v52;
      if (v56 == v25)
      {
        goto LABEL_21;
      }
    }

    sub_1A824B2D4(v9, &qword_1EB2E6F50, &unk_1A8502920);
LABEL_10:
    v23 = v53;
    sub_1A8429854(v53, v58, type metadata accessor for ImportExport.MessagePart);
    v27 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1A83EF140(0, v27[2] + 1, 1, v27);
    }

    v34 = v27[2];
    v33 = v27[3];
    if (v34 >= v33 >> 1)
    {
      v27 = sub_1A83EF140((v33 > 1), v34 + 1, 1, v27);
    }

    sub_1A84298BC(v23, type metadata accessor for ImportExport.MessagePart);
    v27[2] = v34 + 1;
    result = sub_1A842AD50(v58, v27 + v50 + v34 * v59, type metadata accessor for ImportExport.MessagePart);
    goto LABEL_4;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
  ImportExport.Message.update(messageParts:)(v27, v40);
}

uint64_t ImportExport.Message.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.Message.conversationID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ImportExport.Message.senderID.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ImportExport.Message.account.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ImportExport.Message.destinationCallerID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ImportExport.Message.subject.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t ImportExport.Message.body.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ImportExport.Message.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t ImportExport.Message.dateReceived.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t ImportExport.Message.receivedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + 136))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v7 = sub_1A84E5D8C();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1A84E569C();

      v9 = sub_1A84E56DC();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1A84E56DC();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1A83F8010(v5, a1);
  }

  else
  {
    v10 = sub_1A84E56DC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t ImportExport.Message.dateDelivered.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t ImportExport.Message.deliveredDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + 152))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v7 = sub_1A84E5D8C();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1A84E569C();

      v9 = sub_1A84E56DC();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1A84E56DC();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1A83F8010(v5, a1);
  }

  else
  {
    v10 = sub_1A84E56DC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t ImportExport.Message.dateRead.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ImportExport.Message.readDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (*(v1 + 168))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v7 = sub_1A84E5D8C();
    v8 = [v6 dateFromString_];

    if (v8)
    {
      sub_1A84E569C();

      v9 = sub_1A84E56DC();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_1A84E56DC();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_1A83F8010(v5, a1);
  }

  else
  {
    v10 = sub_1A84E56DC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

uint64_t ImportExport.Message.countryCode.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

uint64_t ImportExport.Message.serviceTypeString.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t ImportExport.Message.messageSummaryInfo.getter()
{
  type metadata accessor for ImportExport.Message(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v1;
}

void *sub_1A8421F60@<X0>(void *a1@<X8>)
{
  type metadata accessor for ImportExport.Message(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A8421FC8(uint64_t *a1)
{
  type metadata accessor for ImportExport.Message(0);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Message.$messageSummaryInfo.getter()
{
  type metadata accessor for ImportExport.Message(0);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Message.fallbackHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.Message(0) + 84));

  return v1;
}

uint64_t ImportExport.Message.rcsMessageID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.Message(0) + 88));

  return v1;
}

uint64_t ImportExport.Message.sender.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ImportExport.Message(0) + 92));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_1A8400E7C(v17, &v16);
}

uint64_t ImportExport.Message.accountParticipant.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ImportExport.Message(0) + 96));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_1A8400E7C(v17, &v16);
}

unint64_t ImportExport.Message.init(id:conversationID:sender:accountParticipant:messageState:subject:dateReceived:dateDelivered:dateRead:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, unsigned __int8 *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int *a25, int *a26, uint64_t a27, uint64_t a28)
{
  v195 = a8;
  v202 = a4;
  v193 = a3;
  v217 = a2;
  v215 = a1;
  v210 = a16;
  v208 = a14;
  v209 = a12;
  v32 = sub_1A84E5C9C();
  v184 = *(v32 - 8);
  v185 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v186 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for ImportExport.MessagePart(0);
  v240 = *(v245 - 1);
  v34 = MEMORY[0x1EEE9AC00](v245);
  v242 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v181 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v213 = &v181 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v218 = &v181 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v243 = &v181 - v43;
  v44 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a5[7];
  v258 = a5[6];
  v259 = v47;
  v260 = a5[8];
  v48 = a5[3];
  v254 = a5[2];
  v255 = v48;
  v49 = a5[5];
  v256 = a5[4];
  v257 = v49;
  v50 = a5[1];
  v252 = *a5;
  v253 = v50;
  v51 = a6[7];
  v267 = a6[6];
  v268 = v51;
  v269 = a6[8];
  v52 = a6[3];
  v263 = a6[2];
  v264 = v52;
  v53 = a6[5];
  v265 = a6[4];
  v266 = v53;
  v54 = a6[1];
  v261 = *a6;
  v262 = v54;
  v55 = *a7;
  v56 = *a19;
  v191 = type metadata accessor for ImportExport.Message(0);
  v57 = *(v191 + 80);
  *&v246[0] = 0;
  sub_1A84E5B8C();
  v58 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v207 = a9;
  v203 = v57;
  v216 = v46;
  v214 = v58;
  sub_1A84E594C();
  if (v208)
  {
    v59 = HIBYTE(v208) & 0xF;
    if ((v208 & 0x2000000000000000) == 0)
    {
      v59 = a13 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      v55 |= 4uLL;
    }
  }

  v190 = a11;
  if (v209)
  {
    v60 = HIBYTE(v209) & 0xF;
    if ((v209 & 0x2000000000000000) == 0)
    {
      v60 = a11 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      v55 |= 8uLL;
    }
  }

  v194 = a13;
  v192 = v56;
  v189 = a15;
  if (v210)
  {
    v61 = HIBYTE(v210) & 0xF;
    if ((v210 & 0x2000000000000000) == 0)
    {
      v61 = a15 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      v55 |= 0x10uLL;
    }
  }

  if ((~v55 & 0x8002) != 0)
  {
    v55 |= 0x8002uLL;
  }

  sub_1A8423270(a20, v246);
  v62 = *&v246[0];
  if ((*&v246[0] & ~v55) == 0)
  {
    v62 = 0;
  }

  v187 = v62;
  v188 = v55;
  v63 = *(a20 + 16);
  v64 = MEMORY[0x1E69E7CC0];
  v211 = a20;
  if (v63)
  {
    *&v246[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v63, 0);
    v64 = *&v246[0];
    v65 = a20 + ((*(v240 + 80) + 32) & ~*(v240 + 80));
    v241 = *(v240 + 72);
    do
    {
      v66 = v243;
      sub_1A8429854(v65, v243, type metadata accessor for ImportExport.MessagePart);
      v67 = (v66 + v245[19]);
      v68 = v67[1];
      v244 = *v67;

      sub_1A84298BC(v66, type metadata accessor for ImportExport.MessagePart);
      *&v246[0] = v64;
      v70 = *(v64 + 16);
      v69 = *(v64 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_1A83EF534((v69 > 1), v70 + 1, 1);
        v64 = *&v246[0];
      }

      *(v64 + 16) = v70 + 1;
      v71 = v64 + 16 * v70;
      *(v71 + 32) = v244;
      *(v71 + 40) = v68;
      v65 += v241;
      --v63;
    }

    while (v63);
  }

  v199 = a27;
  v201 = a26;
  v200 = a24;
  v197 = a22;
  v196 = a18;
  v198 = a10;
  *&v246[0] = v64;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  v205 = sub_1A84E5D6C();
  v206 = v72;

  v73 = *(v211 + 16);
  v74 = v245;
  v75 = v218;
  if (v73)
  {
    v76 = 0;
    v77 = 0;
    v212 = (*(v240 + 80) + 32) & ~*(v240 + 80);
    v78 = MEMORY[0x1E69E7CC0];
    v243 = *(v240 + 72);
    v182 = v211 + v212;
    v183 = v73;
    result = v211 + v212;
    v80 = v73;
    do
    {
      v219 = result;
      v220 = v80;
      sub_1A8429854(result, v75, type metadata accessor for ImportExport.MessagePart);
      v81 = *(v75 + 48);
      v241 = v78;
      if (v81)
      {
        v221 = *(v75 + 40);
        v244 = v81;
      }

      else
      {
        v244 = sub_1A84E5E7C();
        v221 = v77;
      }

      v82 = *(v75 + 56);
      if (v82 < 0)
      {
        v82 = v76;
      }

      v240 = v82;
      v83 = *(v75 + 8);
      v229 = *v75;
      v84 = (v75 + v74[19]);
      v85 = v84[1];
      v231 = *v84;
      v222 = v85;
      v227 = *(v75 + 16);
      v234 = *(v75 + 96);
      v86 = *(v75 + 168);
      v87 = *(v75 + 120);
      v88 = *(v75 + 136);
      v250 = *(v75 + 152);
      v251 = v86;
      v248 = v87;
      v249 = v88;
      v247 = *(v75 + 104);
      v89 = v74[13];
      v90 = (v75 + v74[12]);
      v91 = *v90;
      v225 = v90[1];
      v92 = *(v75 + v89 + 8);
      v239 = *(v75 + v89);
      v237 = v91;
      v238 = v92;
      v93 = (v75 + v74[14]);
      v94 = *v93;
      v95 = v93[1];
      v96 = (v75 + v74[15]);
      v97 = *v96;
      v98 = v96[1];
      v235 = v94;
      v236 = v97;
      v228 = v98;
      v99 = *(v75 + 80);
      v223 = *(v75 + 64);
      v224 = v99;

      sub_1A8243D74(&v247, v246, &qword_1EB2E6F58, &qword_1A8501388);

      v100 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v226 = *&v246[0];
      v101 = v74[17];
      v230 = *(v75 + v74[16]);
      v233 = *(v75 + v101);
      v232 = *(v75 + v74[18]);
      v102 = *(v75 + v74[20]);
      sub_1A8243D74(v75 + v74[11], &v38[v74[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v38 + 6) = 0u;
      *(v38 + 7) = 0u;
      *(v38 + 8) = 0u;
      *(v38 + 9) = 0u;
      *(v38 + 10) = 0u;
      *(v38 + 22) = 0;
      *(v38 + 4) = 0u;
      *(v38 + 5) = 0u;
      v103 = v74[21];
      *&v246[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v38[16] = v227;
      *v38 = v229;
      *(v38 + 1) = v83;
      v104 = v221;
      v105 = v244;
      *(v38 + 5) = v221;
      *(v38 + 6) = v105;
      v106 = &v38[v245[19]];
      v107 = v222;
      *v106 = v231;
      *(v106 + 1) = v107;

      v108 = v224;
      *(v38 + 4) = v223;
      *(v38 + 5) = v108;
      *(v38 + 12) = v234;
      v109 = *(v38 + 120);
      v110 = *(v38 + 152);
      v246[2] = *(v38 + 136);
      v246[3] = v110;
      v246[4] = *(v38 + 168);
      v246[0] = *(v38 + 104);
      v246[1] = v109;
      sub_1A824B2D4(v246, &qword_1EB2E6F58, &qword_1A8501388);
      v111 = v247;
      *(v38 + 120) = v248;
      v112 = v250;
      *(v38 + 136) = v249;
      *(v38 + 152) = v112;
      *(v38 + 168) = v251;
      *(v38 + 104) = v111;
      v113 = &v38[v245[12]];
      v114 = v238;
      v115 = v225;
      *v113 = v237;
      *(v113 + 1) = v115;
      v116 = &v38[v245[13]];
      v117 = v239;
      *v116 = v239;
      *(v116 + 1) = v114;
      v118 = &v38[v245[14]];
      v119 = v236;
      *v118 = v235;
      *(v118 + 1) = v95;
      v120 = &v38[v245[15]];
      v121 = v228;
      *v120 = v119;
      *(v120 + 1) = v121;
      sub_1A83F5918(v117, v114);
      v122 = *(*(v100 - 8) + 8);
      v123 = v100;
      v124 = v240;
      v122(&v38[v103], v123);
      v270 = v226;
      sub_1A84E5B8C();
      v74 = v245;
      sub_1A84E594C();
      v38[v74[16]] = v230;
      v38[v74[17]] = v233;
      v38[v74[18]] = v232;
      *&v38[v74[20]] = v102;
      v125 = v217;
      *(v38 + 3) = v215;
      *(v38 + 4) = v125;
      *(v38 + 7) = v124;
      sub_1A8429854(v38, v242, type metadata accessor for ImportExport.MessagePart);

      v78 = v241;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1A83EF140(0, v78[2] + 1, 1, v78);
      }

      v127 = v78[2];
      v126 = v78[3];
      v128 = v213;
      if (v127 >= v126 >> 1)
      {
        v78 = sub_1A83EF140((v126 > 1), v127 + 1, 1, v78);
      }

      v78[2] = v127 + 1;
      sub_1A842AD50(v242, v78 + v212 + v127 * v243, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84298BC(v38, type metadata accessor for ImportExport.MessagePart);
      v76 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v129 = v104 + v244;
      if (__OFADD__(v104, v244))
      {
        goto LABEL_67;
      }

      v77 = v129 + 1;
      v130 = v220;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_68;
      }

      v75 = v218;
      sub_1A84298BC(v218, type metadata accessor for ImportExport.MessagePart);
      result = v219 + v243;
      v80 = v130 - 1;
    }

    while (v80);
    v131 = 0;
    *&v247 = -1;
    v133 = v204;
    v132 = v205;
    v134 = v206;
    v136 = v182;
    v135 = v183;
    while (v131 < *(v211 + 16))
    {
      sub_1A8429854(v136, v128, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v128, &v247, v132, v134);
      if (v133)
      {
        sub_1A84298BC(v128, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v261);
        sub_1A8400ED8(&v252);

        sub_1A84E5C8C();
        v168 = v133;
        v169 = sub_1A84E5C7C();
        v170 = sub_1A84E619C();

        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *v171 = 138412290;
          v173 = v133;
          v174 = _swift_stdlib_bridgeErrorToNSError();
          *(v171 + 4) = v174;
          *v172 = v174;
          _os_log_impl(&dword_1A823F000, v169, v170, "Failed to create a message with Error: %@", v171, 0xCu);
          sub_1A824B2D4(v172, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v172, -1, -1);
          MEMORY[0x1AC56D3F0](v171, -1, -1);
        }

        (*(v184 + 8))(v186, v185);
        swift_willThrow();
        v175 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        return (*(*(v175 - 8) + 8))(&v207[v203], v175);
      }

      ++v131;
      result = sub_1A84298BC(v128, type metadata accessor for ImportExport.MessagePart);
      v136 += v243;
      if (v135 == v131)
      {
        v137 = v78;
        goto LABEL_46;
      }
    }

LABEL_69:
    __break(1u);
  }

  else
  {
    v137 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v245 = a25;
    v244 = a23;
    v138 = v187 | v188;

    v139 = v207;
    v140 = v217;
    *v207 = v215;
    *(v139 + 1) = v140;
    v141 = v206;
    *(v139 + 14) = v205;
    *(v139 + 15) = v141;
    *(v139 + 2) = a28;
    v142 = v202;
    *(v139 + 4) = v193;
    *(v139 + 5) = v142;
    v143 = v191;
    v144 = &v139[*(v191 + 92)];
    v145 = v255;
    *(v144 + 2) = v254;
    *(v144 + 3) = v145;
    v146 = v260;
    *(v144 + 7) = v259;
    *(v144 + 8) = v146;
    v147 = v258;
    *(v144 + 5) = v257;
    *(v144 + 6) = v147;
    *(v144 + 4) = v256;
    v148 = v253;
    *v144 = v252;
    *(v144 + 1) = v148;
    v149 = &v139[v143[24]];
    v150 = v268;
    *(v149 + 6) = v267;
    *(v149 + 7) = v150;
    *(v149 + 8) = v269;
    v151 = v264;
    *(v149 + 2) = v263;
    *(v149 + 3) = v151;
    v152 = v266;
    *(v149 + 4) = v265;
    *(v149 + 5) = v152;
    v153 = v262;
    *v149 = v261;
    *(v149 + 1) = v153;
    v154 = v197;
    *(v139 + 10) = a21;
    *(v139 + 11) = v154;
    v155 = v198;
    *(v139 + 12) = v195;
    *(v139 + 13) = v155;
    v156 = v209;
    *(v139 + 16) = v190;
    *(v139 + 17) = v156;
    v157 = v208;
    *(v139 + 18) = v194;
    *(v139 + 19) = v157;
    v158 = v210;
    *(v139 + 20) = v189;
    *(v139 + 21) = v158;
    v159 = v196;
    *(v139 + 22) = a17;
    *(v139 + 23) = v159;
    v160 = v192;
    v139[208] = v192;
    *(v139 + 27) = v137;
    sub_1A8400E7C(&v252, v246);
    sub_1A8400E7C(&v261, v246);
    v161 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    (*(*(v161 - 8) + 8))(&v139[v203], v161);
    *&v246[0] = v199;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v162 = &v139[v143[21]];
    v163 = v200;
    *v162 = v244;
    v162[1] = v163;
    v164 = &v139[v143[22]];
    v165 = v201;
    *v164 = v245;
    v164[1] = v165;
    *(v139 + 3) = v138;
    if (v160 > 3)
    {
      if (v160 > 5)
      {
        if (v160 == 6)
        {
          v166 = 0xE300000000000000;
          v167 = 5456722;
        }

        else
        {
          v166 = 0xEC000000534D5365;
          v167 = 0x74696C6C65746153;
        }
      }

      else if (v160 == 4)
      {
        v167 = 5459283;
        v166 = 0xE300000000000000;
      }

      else
      {
        v166 = 0xE800000000000000;
        v167 = 0x656D695465636146;
      }
    }

    else if (v160 > 1)
    {
      if (v160 == 2)
      {
        v166 = 0xE800000000000000;
      }

      else
      {
        v166 = 0xEC0000006574694CLL;
      }

      v167 = 0x6567617373654D69;
    }

    else if (v160)
    {
      v166 = 0xE300000000000000;
      v167 = 7958113;
    }

    else
    {
      v166 = 0xE700000000000000;
      v167 = 0x6E776F6E6B6E75;
    }

    v176 = v207;
    *(v207 + 24) = v167;
    *(v176 + 25) = v166;
    v177 = *(&v254 + 1);
    v178 = v255;

    sub_1A8400ED8(&v252);
    *(v176 + 6) = v177;
    *(v176 + 7) = v178;
    v180 = *(&v263 + 1);
    v179 = v264;

    result = sub_1A8400ED8(&v261);
    *(v176 + 8) = v180;
    *(v176 + 9) = v179;
  }

  return result;
}

uint64_t sub_1A8423270@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ImportExport.MessagePart(0);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_1A8429854(v11, v8, type metadata accessor for ImportExport.MessagePart);
      if (v8[*(v4 + 64)])
      {
        v13 = v10 | 0x4000;
      }

      else
      {
        v13 = v10;
      }

      if (*(v8 + 9))
      {
        v13 |= 0x40uLL;
      }

      if (*(v8 + 15))
      {
        v13 |= 0x80uLL;
      }

      if (v8[*(v4 + 72)])
      {
        v10 = v13 | 0x1000;
      }

      else
      {
        v10 = v13;
      }

      sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      if (v16)
      {
        v14 = *(v16 + 16);

        if (v14)
        {
          v10 |= 0x10000uLL;
        }
      }

      result = sub_1A84298BC(v8, type metadata accessor for ImportExport.MessagePart);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

unint64_t sub_1A842343C(unint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v5 = *(result + 56);
    if (*a2 >= v5)
    {
      sub_1A84E646C();
      MEMORY[0x1AC56A990](0xD00000000000003CLL, 0x80000001A8530980);
      v13 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v13);

      MEMORY[0x1AC56A990](540884512, 0xE400000000000000);
      v14 = sub_1A84E676C();
      MEMORY[0x1AC56A990](v14);

LABEL_12:
      sub_1A842B9CC();
      swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0xE000000000000000;
      *(v29 + 16) = 1;
      return swift_willThrow();
    }

    v6 = *(result + 40);
    v7 = *(result + 48);
    if (__OFADD__(v6, v7))
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      if (sub_1A84E5E7C() < v6 + v7)
      {
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000021, 0x80000001A8530A10);
        v9 = sub_1A84E632C();
        MEMORY[0x1AC56A990](v9);

        MEMORY[0x1AC56A990](544106784, 0xE400000000000000);
        sub_1A84E5E7C();
        v10 = sub_1A84E676C();
        MEMORY[0x1AC56A990](v10);

        v11 = 0x20746E6572617020;
        v12 = 0xEE006874676E656CLL;
LABEL_11:
        MEMORY[0x1AC56A990](v11, v12);
        goto LABEL_12;
      }

      sub_1A840D3B0();

      v15 = sub_1A84E5E6C();

      result = sub_1A84E5E6C();
      if (result >> 14 >= v15 >> 14)
      {
        v16 = sub_1A84E5F5C();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = (v8 + *(type metadata accessor for ImportExport.MessagePart(0) + 76));
        v24 = *v23;
        v25 = v23[1];
        if (sub_1A842991C(v16, v18, v20, v22, *v23, v25))
        {

          *a2 = v5;
          return result;
        }

        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85309C0);
        MEMORY[0x1AC56A990](v24, v25);
        MEMORY[0x1AC56A990](0xD000000000000020, 0x80000001A85309E0);
        v26 = MEMORY[0x1AC56A930](v16, v18, v20, v22);
        v28 = v27;

        MEMORY[0x1AC56A990](v26, v28);

        v11 = 39;
        v12 = 0xE100000000000000;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ImportExport.Message.init(id:conversationID:sender:accountParticipant:messageState:subject:receivedDate:deliveredDate:readDate:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v241 = a3;
  v242 = a8;
  v298 = a7;
  v250 = a4;
  v269 = a1;
  v270 = a2;
  v263 = a9;
  v260 = a13;
  v261 = a12;
  v291 = a16;
  v27 = sub_1A84E5C9C();
  v233 = *(v27 - 8);
  v234 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v236 = &v231 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ImportExport.MessagePart(0);
  v289 = *(v29 - 1);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v297 = &v231 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v295 = &v231 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v231 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v267 = &v231 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v235 = &v231 - v39;
  v40 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v40 - 8);
  v271 = &v231 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_1A84E577C();
  v294 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296);
  v293 = &v231 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v288 = &v231 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v287 = &v231 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v231 - v48;
  v50 = sub_1A84E56DC();
  v51 = MEMORY[0x1EEE9AC00](v50);
  v324 = (&v231 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x1EEE9AC00](v51);
  v290 = &v231 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v231 - v56;
  v58 = a5[7];
  v312 = a5[6];
  v313 = v58;
  v59 = a5[3];
  v308 = a5[2];
  v309 = v59;
  v60 = a5[5];
  v310 = a5[4];
  v311 = v60;
  v61 = a5[1];
  v306 = *a5;
  v307 = v61;
  v62 = a6[6];
  v63 = a6[7];
  v64 = a6[4];
  v320 = a6[5];
  v321 = v62;
  v65 = a6[8];
  v322 = v63;
  v323 = v65;
  v66 = a6[2];
  v67 = a6[3];
  v69 = *a6;
  v68 = a6[1];
  v70 = v55;
  v316 = v68;
  v317 = v66;
  v318 = v67;
  v319 = v64;
  v314 = a5[8];
  v315 = v69;
  v71 = *v298;
  v240 = *v291;
  v251 = a11;
  v73 = v72;
  sub_1A8243D74(a11, v49, &qword_1EB2E6F48, &unk_1A8501F00);
  v298 = *(v73 + 48);
  v74 = (v298)(v49, 1, v70);
  v291 = (v73 + 48);
  v292 = v71;
  v285 = v73;
  v286 = v70;
  if (v74 != 1)
  {
    (*(v73 + 32))(v57, v49, v70);
    v284 = objc_opt_self();
    v76 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_4;
  }

  sub_1A824B2D4(v49, &qword_1EB2E6F48, &unk_1A8501F00);
  v255 = 0;
  v259 = 0;
  for (i = v290; ; i = v290)
  {
    v84 = v287;
    sub_1A8243D74(v261, v287, &qword_1EB2E6F48, &unk_1A8501F00);
    v85 = (v298)(v84, 1, v70);
    v86 = v324;
    if (v85 == 1)
    {
      sub_1A824B2D4(v84, &qword_1EB2E6F48, &unk_1A8501F00);
      v264 = 0;
      v258 = 0;
    }

    else
    {
      (*(v73 + 32))(i, v84, v70);
      v287 = objc_opt_self();
      v87 = sub_1A84E565C();
      v88 = v70;
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v89 = v296;
      v90 = sub_1A824431C(v296, qword_1EB2E7FC8);
      swift_beginAccess();
      v91 = v294;
      v92 = v293;
      (v294[2])(v293, v90, v89);
      v93 = sub_1A84E576C();
      (v91[1])(v92, v89);
      v94 = [v287 stringFromDate:v87 timeZone:v93 formatOptions:1907];

      v264 = sub_1A84E5DBC();
      v258 = v95;

      v73 = v285;
      (*(v285 + 8))(v290, v88);
      v70 = v88;
      v86 = v324;
    }

    v96 = v292;
    v97 = v288;
    sub_1A8243D74(v260, v288, &qword_1EB2E6F48, &unk_1A8501F00);
    if ((v298)(v97, 1, v70) == 1)
    {
      sub_1A824B2D4(v97, &qword_1EB2E6F48, &unk_1A8501F00);
      v254 = 0;
      v257 = 0;
    }

    else
    {
      (*(v73 + 32))(v86, v97, v70);
      v291 = objc_opt_self();
      v298 = sub_1A84E565C();
      v98 = v73;
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v99 = v296;
      v100 = sub_1A824431C(v296, qword_1EB2E7FC8);
      swift_beginAccess();
      v101 = v294;
      v102 = v293;
      (v294[2])(v293, v100, v99);
      v103 = sub_1A84E576C();
      (v101[1])(v102, v99);
      v104 = v298;
      v105 = [v291 stringFromDate:v298 timeZone:v103 formatOptions:1907];

      v254 = sub_1A84E5DBC();
      v257 = v106;

      (*(v98 + 8))(v324, v286);
      v96 = v292;
    }

    v239 = type metadata accessor for ImportExport.Message(0);
    v107 = *(v239 + 80);
    *&v299[0] = 0;
    sub_1A84E5B8C();
    v108 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v249 = v107;
    v268 = v108;
    sub_1A84E594C();
    if (!v258)
    {
      v111 = v259;
      v112 = v257;
      v110 = v264;
      v113 = a17;
      if (!v259)
      {
        goto LABEL_25;
      }

LABEL_21:
      v114 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v114 = v255 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {
        v96 |= 8uLL;
      }

      goto LABEL_25;
    }

    v109 = HIBYTE(v258) & 0xF;
    v110 = v264;
    if ((v258 & 0x2000000000000000) == 0)
    {
      v109 = v264 & 0xFFFFFFFFFFFFLL;
    }

    if (v109)
    {
      v96 |= 4uLL;
    }

    v111 = v259;
    v112 = v257;
    v113 = a17;
    if (v259)
    {
      goto LABEL_21;
    }

LABEL_25:
    if (v112)
    {
      v115 = HIBYTE(v112) & 0xF;
      if ((v112 & 0x2000000000000000) == 0)
      {
        v115 = v254 & 0xFFFFFFFFFFFFLL;
      }

      if (v115)
      {
        v96 |= 0x10uLL;
      }
    }

    v264 = v110;
    if ((~v96 & 0x8002) != 0)
    {
      v116 = v96 | 0x8002;
    }

    else
    {
      v116 = v96;
    }

    sub_1A8423270(v113, v299);
    v117 = *&v299[0];
    if ((*&v299[0] & ~v116) == 0)
    {
      v117 = 0;
    }

    v237 = v117;
    v238 = v116;
    v118 = v113;
    v119 = *(v113 + 16);
    v120 = MEMORY[0x1E69E7CC0];
    v324 = v29;
    v262 = v118;
    if (v119)
    {
      *&v299[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v119, 0);
      v120 = *&v299[0];
      v121 = v118 + ((*(v289 + 80) + 32) & ~*(v289 + 80));
      v296 = *(v289 + 72);
      do
      {
        v122 = v297;
        sub_1A8429854(v121, v297, type metadata accessor for ImportExport.MessagePart);
        v123 = v122 + v29[19];
        v124 = *(v123 + 8);
        v298 = *v123;

        sub_1A84298BC(v122, type metadata accessor for ImportExport.MessagePart);
        *&v299[0] = v120;
        v126 = *(v120 + 16);
        v125 = *(v120 + 24);
        if (v126 >= v125 >> 1)
        {
          sub_1A83EF534((v125 > 1), v126 + 1, 1);
          v120 = *&v299[0];
        }

        *(v120 + 16) = v126 + 1;
        v127 = v120 + 16 * v126;
        *(v127 + 32) = v298;
        *(v127 + 40) = v124;
        v121 += v296;
        --v119;
        v29 = v324;
      }

      while (v119);
    }

    v246 = a24;
    v248 = a23;
    v247 = a21;
    v244 = a19;
    v243 = a15;
    v245 = a10;
    *&v299[0] = v120;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
    v252 = sub_1A84E5D6C();
    v253 = v128;

    v129 = *(v262 + 16);
    if (!v129)
    {
      break;
    }

    v130 = 0;
    v57 = 0;
    v266 = (*(v289 + 80) + 32) & ~*(v289 + 80);
    v76 = MEMORY[0x1E69E7CC0];
    v296 = *(v289 + 72);
    v232 = v262 + v266;
    v131 = v262 + v266;
    v265 = v129;
    v132 = v129;
    v133 = v267;
    do
    {
      v272 = v131;
      v273 = v132;
      sub_1A8429854(v131, v133, type metadata accessor for ImportExport.MessagePart);
      v134 = *(v133 + 48);
      v294 = v76;
      if (v134)
      {
        v298 = *(v133 + 40);
        v297 = v134;
      }

      else
      {
        v297 = sub_1A84E5E7C();
        v298 = v57;
      }

      v135 = *(v133 + 56);
      if (v135 < 0)
      {
        v135 = v130;
      }

      v293 = v135;
      v136 = *(v133 + 8);
      v282 = *v133;
      v137 = v133 + v29[19];
      v138 = *(v137 + 8);
      v284 = *v137;
      v274 = v138;
      v280 = *(v133 + 16);
      v287 = *(v133 + 96);
      v139 = *(v133 + 168);
      v140 = *(v133 + 120);
      v141 = *(v133 + 136);
      v304 = *(v133 + 152);
      v305 = v139;
      v302 = v140;
      v303 = v141;
      v301 = *(v133 + 104);
      v142 = v324[13];
      v143 = (v133 + v324[12]);
      v144 = *v143;
      v277 = v143[1];
      v145 = *(v133 + v142 + 8);
      v292 = *(v133 + v142);
      v290 = v144;
      v291 = v145;
      v146 = v324[15];
      v147 = (v133 + v324[14]);
      v148 = *v147;
      v278 = v147[1];
      v149 = v133 + v146;
      v150 = *(v133 + v146);
      v151 = *(v149 + 8);
      v288 = v148;
      v289 = v150;
      v281 = v151;
      v152 = *(v133 + 80);
      v275 = *(v133 + 64);
      v276 = v152;

      sub_1A8243D74(&v301, v299, &qword_1EB2E6F58, &qword_1A8501388);

      v153 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v279 = *&v299[0];
      v154 = v324[17];
      v283 = *(v133 + v324[16]);
      LODWORD(v286) = *(v133 + v154);
      LODWORD(v285) = *(v133 + v324[18]);
      v155 = *(v133 + v324[20]);
      sub_1A8243D74(v133 + v324[11], &v36[v324[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v36 + 6) = 0u;
      *(v36 + 7) = 0u;
      *(v36 + 8) = 0u;
      *(v36 + 9) = 0u;
      *(v36 + 10) = 0u;
      *(v36 + 22) = 0;
      *(v36 + 4) = 0u;
      *(v36 + 5) = 0u;
      v156 = v324[21];
      *&v299[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v36[16] = v280;
      *v36 = v282;
      *(v36 + 1) = v136;
      v157 = v297;
      *(v36 + 5) = v298;
      *(v36 + 6) = v157;
      v158 = &v36[v324[19]];
      v159 = v274;
      *v158 = v284;
      *(v158 + 1) = v159;

      v160 = v276;
      *(v36 + 4) = v275;
      *(v36 + 5) = v160;
      *(v36 + 12) = v287;
      v161 = *(v36 + 120);
      v162 = *(v36 + 152);
      v299[2] = *(v36 + 136);
      v299[3] = v162;
      v299[4] = *(v36 + 168);
      v299[0] = *(v36 + 104);
      v299[1] = v161;
      sub_1A824B2D4(v299, &qword_1EB2E6F58, &qword_1A8501388);
      v163 = v301;
      *(v36 + 120) = v302;
      v164 = v304;
      *(v36 + 136) = v303;
      *(v36 + 152) = v164;
      v29 = v324;
      *(v36 + 168) = v305;
      *(v36 + 104) = v163;
      v165 = &v36[v29[12]];
      v166 = v291;
      v167 = v277;
      *v165 = v290;
      *(v165 + 1) = v167;
      v168 = &v36[v29[13]];
      v169 = v292;
      *v168 = v292;
      *(v168 + 1) = v166;
      v170 = &v36[v29[14]];
      v171 = v278;
      *v170 = v288;
      *(v170 + 1) = v171;
      v172 = &v36[v29[15]];
      v173 = v281;
      *v172 = v289;
      *(v172 + 1) = v173;
      sub_1A83F5918(v169, v166);
      (*(*(v153 - 8) + 8))(&v36[v156], v153);
      v300 = v279;
      sub_1A84E5B8C();
      v174 = v293;
      sub_1A84E594C();
      v36[v29[16]] = v283;
      v36[v29[17]] = v286;
      v36[v29[18]] = v285;
      *&v36[v29[20]] = v155;
      v175 = v270;
      *(v36 + 3) = v269;
      *(v36 + 4) = v175;
      *(v36 + 7) = v174;
      sub_1A8429854(v36, v295, type metadata accessor for ImportExport.MessagePart);

      v76 = v294;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = sub_1A83EF140(0, v76[2] + 1, 1, v76);
      }

      v57 = v76[2];
      v176 = v76[3];
      v133 = v267;
      if (v57 >= v176 >> 1)
      {
        v76 = sub_1A83EF140((v176 > 1), v57 + 1, 1, v76);
      }

      v76[2] = v57 + 1;
      sub_1A842AD50(v295, v76 + v266 + v57 * v296, type metadata accessor for ImportExport.MessagePart);
      sub_1A84298BC(v36, type metadata accessor for ImportExport.MessagePart);
      v130 = (v174 + 1);
      if (__OFADD__(v174, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v177 = &v298[v297];
      if (__OFADD__(v298, v297))
      {
        goto LABEL_84;
      }

      v57 = (v177 + 1);
      v178 = v273;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_85;
      }

      sub_1A84298BC(v133, type metadata accessor for ImportExport.MessagePart);
      v131 = v272 + v296;
      v132 = v178 - 1;
    }

    while (v132);
    v179 = 0;
    *&v301 = -1;
    v36 = v256;
    v57 = v235;
    v180 = v262;
    v29 = v252;
    v181 = v253;
    v182 = v232;
    while (v179 < *(v180 + 16))
    {
      sub_1A8429854(v182, v57, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v57, &v301, v29, v181);
      if (v36)
      {
        sub_1A84298BC(v57, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v315);
        sub_1A8400ED8(&v306);

        sub_1A84E5C8C();
        v218 = v36;
        v219 = sub_1A84E5C7C();
        v220 = sub_1A84E619C();

        if (os_log_type_enabled(v219, v220))
        {
          v221 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          *v221 = 138412290;
          v223 = v36;
          v224 = _swift_stdlib_bridgeErrorToNSError();
          *(v221 + 4) = v224;
          *v222 = v224;
          _os_log_impl(&dword_1A823F000, v219, v220, "Failed to create a message with Error: %@", v221, 0xCu);
          sub_1A824B2D4(v222, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v222, -1, -1);
          MEMORY[0x1AC56D3F0](v221, -1, -1);
        }

        (*(v233 + 8))(v236, v234);
        swift_willThrow();
        sub_1A824B2D4(v260, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v261, &qword_1EB2E6F48, &unk_1A8501F00);
        sub_1A824B2D4(v251, &qword_1EB2E6F48, &unk_1A8501F00);
        v225 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        return (*(*(v225 - 8) + 8))(&v263[v249], v225);
      }

      ++v179;
      sub_1A84298BC(v57, type metadata accessor for ImportExport.MessagePart);
      v182 += v296;
      if (v265 == v179)
      {
        v256 = 0;
        goto LABEL_63;
      }
    }

LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
LABEL_4:
    v77 = v296;
    v78 = sub_1A824431C(v296, qword_1EB2E7FC8);
    swift_beginAccess();
    v79 = v294;
    v80 = v293;
    (v294[2])(v293, v78, v77);
    v81 = sub_1A84E576C();
    (v79[1])(v80, v77);
    v82 = [v284 stringFromDate:v76 timeZone:v81 formatOptions:1907];

    v255 = sub_1A84E5DBC();
    v259 = v83;

    v73 = v285;
    v70 = v286;
    (*(v285 + 8))(v57, v286);
  }

  v76 = MEMORY[0x1E69E7CC0];
LABEL_63:
  v183 = v237 | v238;

  v184 = v263;
  v185 = v270;
  *v263 = v269;
  *(v184 + 1) = v185;
  v186 = v253;
  *(v184 + 14) = v252;
  *(v184 + 15) = v186;
  *(v184 + 2) = a25;
  v187 = v184;
  v188 = v250;
  v187[4] = v241;
  v187[5] = v188;
  v189 = v239;
  v190 = (v187 + *(v239 + 92));
  v191 = v309;
  v190[2] = v308;
  v190[3] = v191;
  v193 = v314;
  v192 = v315;
  v194 = v312;
  v190[7] = v313;
  v190[8] = v193;
  v195 = v311;
  v190[4] = v310;
  v190[5] = v195;
  v190[6] = v194;
  v196 = v307;
  *v190 = v306;
  v190[1] = v196;
  v197 = (v187 + v189[24]);
  v198 = v320;
  v199 = v322;
  v200 = v323;
  v197[6] = v321;
  v197[7] = v199;
  v197[8] = v200;
  v201 = v316;
  v202 = v318;
  v203 = v319;
  v197[2] = v317;
  v197[3] = v202;
  v197[4] = v203;
  v197[5] = v198;
  *v197 = v192;
  v197[1] = v201;
  v204 = v244;
  v187[10] = a18;
  v187[11] = v204;
  v205 = v245;
  v187[12] = v242;
  v187[13] = v205;
  v206 = v259;
  v187[16] = v255;
  v187[17] = v206;
  v207 = v258;
  v187[18] = v264;
  v187[19] = v207;
  v208 = v257;
  v187[20] = v254;
  v187[21] = v208;
  v209 = v243;
  v187[22] = a14;
  v187[23] = v209;
  v210 = v240;
  *(v187 + 208) = v240;
  v187[27] = v76;
  sub_1A8400E7C(&v306, v299);
  sub_1A8400E7C(&v315, v299);
  v211 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v211 - 8) + 8))(v187 + v249, v211);
  *&v299[0] = v246;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v212 = (v187 + v189[21]);
  v214 = v247;
  v213 = v248;
  *v212 = a20;
  v212[1] = v214;
  v215 = (v187 + v189[22]);
  *v215 = a22;
  v215[1] = v213;
  v187[3] = v183;
  if (v210 > 3)
  {
    if (v210 > 5)
    {
      if (v210 == 6)
      {
        v216 = 0xE300000000000000;
        v217 = 5456722;
      }

      else
      {
        v216 = 0xEC000000534D5365;
        v217 = 0x74696C6C65746153;
      }
    }

    else if (v210 == 4)
    {
      v217 = 5459283;
      v216 = 0xE300000000000000;
    }

    else
    {
      v216 = 0xE800000000000000;
      v217 = 0x656D695465636146;
    }
  }

  else if (v210 > 1)
  {
    if (v210 == 2)
    {
      v216 = 0xE800000000000000;
    }

    else
    {
      v216 = 0xEC0000006574694CLL;
    }

    v217 = 0x6567617373654D69;
  }

  else if (v210)
  {
    v216 = 0xE300000000000000;
    v217 = 7958113;
  }

  else
  {
    v216 = 0xE700000000000000;
    v217 = 0x6E776F6E6B6E75;
  }

  sub_1A824B2D4(v260, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v261, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v251, &qword_1EB2E6F48, &unk_1A8501F00);
  v187[24] = v217;
  v187[25] = v216;
  v227 = *(&v308 + 1);
  v228 = v309;

  sub_1A8400ED8(&v306);
  v187[6] = v227;
  v187[7] = v228;
  v230 = *(&v317 + 1);
  v229 = v318;

  result = sub_1A8400ED8(&v315);
  v187[8] = v230;
  v187[9] = v229;
  return result;
}

unint64_t sub_1A842501C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65636E6575716573;
      break;
    case 2:
      result = 0x536567617373656DLL;
      break;
    case 3:
      result = 0x61737265766E6F63;
      break;
    case 4:
      result = 0x44497265646E6573;
      break;
    case 5:
      result = 0x746E756F636361;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x7463656A627573;
      break;
    case 8:
      result = 2036625250;
      break;
    case 9:
      result = 0x6563655265746164;
      break;
    case 10:
      result = 0x696C654465746164;
      break;
    case 11:
      result = 0x6461655265746164;
      break;
    case 12:
      result = 0x437972746E756F63;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x5465636976726573;
      break;
    case 15:
      result = 0x506567617373656DLL;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x6B6361626C6C6166;
      break;
    case 18:
      result = 0x617373654D736372;
      break;
    case 19:
      result = 0x7265646E6573;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8425290@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8429994(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84252C4(uint64_t a1)
{
  v2 = sub_1A84296BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8425300(uint64_t a1)
{
  v2 = sub_1A84296BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7750, &qword_1A8503A78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A84296BC();
  sub_1A84E68AC();
  LOBYTE(v58[0]) = 0;
  sub_1A84E66CC();
  if (!v2)
  {
    LOBYTE(v58[0]) = 1;
    sub_1A84E673C();
    *&v58[0] = *(v3 + 24);
    LOBYTE(v49) = 2;
    sub_1A8429710();
    sub_1A84E672C();
    LOBYTE(v58[0]) = 3;
    sub_1A84E66CC();
    LOBYTE(v58[0]) = 4;
    sub_1A84E66AC();
    LOBYTE(v58[0]) = 5;
    sub_1A84E66CC();
    LOBYTE(v58[0]) = 6;
    sub_1A84E66AC();
    LOBYTE(v58[0]) = 7;
    sub_1A84E66AC();
    LOBYTE(v58[0]) = 8;
    sub_1A84E66CC();
    LOBYTE(v58[0]) = 9;
    sub_1A84E66AC();
    LOBYTE(v58[0]) = 10;
    sub_1A84E66AC();
    LOBYTE(v58[0]) = 11;
    sub_1A84E66AC();
    LOBYTE(v58[0]) = 12;
    sub_1A84E66CC();
    LOBYTE(v58[0]) = 13;
    sub_1A84E66CC();
    LOBYTE(v58[0]) = *(v3 + 208);
    LOBYTE(v49) = 14;
    sub_1A841E278();
    sub_1A84E672C();
    *&v58[0] = *(v3 + 216);
    LOBYTE(v49) = 15;
    sub_1A83EA2FC(&qword_1EB2E7768, &qword_1A8503A80);
    sub_1A84297B8(&qword_1EB2E7770, &qword_1EB2E7778, &protocol conformance descriptor for ImportExport.MessagePart, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v29 = type metadata accessor for ImportExport.Message(0);
    LOBYTE(v58[0]) = 16;
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A83F0624(&qword_1EB2E7378, &qword_1EB2E6F60, &qword_1A8501F10, MEMORY[0x1E69A66B0]);
    sub_1A84E672C();
    LOBYTE(v58[0]) = 17;
    sub_1A84E66AC();
    v68 = 18;
    sub_1A84E66AC();
    v9 = (v3 + *(v29 + 92));
    v10 = v9[5];
    v11 = v9[7];
    v63 = v9[6];
    v64 = v11;
    v12 = v9[7];
    v65 = v9[8];
    v13 = v9[1];
    v14 = v9[3];
    v59 = v9[2];
    v60 = v14;
    v15 = v9[3];
    v16 = v9[5];
    v61 = v9[4];
    v62 = v16;
    v17 = v9[1];
    v58[0] = *v9;
    v58[1] = v17;
    v55 = v63;
    v56 = v12;
    v57 = v9[8];
    v51 = v59;
    v52 = v15;
    v53 = v61;
    v54 = v10;
    v49 = v58[0];
    v50 = v13;
    v67 = 19;
    sub_1A8400E7C(v58, v41);
    sub_1A841E224();
    sub_1A84E672C();
    v40[6] = v55;
    v40[7] = v56;
    v40[8] = v57;
    v40[2] = v51;
    v40[3] = v52;
    v40[4] = v53;
    v40[5] = v54;
    v40[0] = v49;
    v40[1] = v50;
    sub_1A8400ED8(v40);
    v18 = (v3 + *(v29 + 96));
    v19 = v18[5];
    v20 = v18[7];
    v46 = v18[6];
    v47 = v20;
    v21 = v18[7];
    v48 = v18[8];
    v22 = v18[1];
    v23 = v18[3];
    v42 = v18[2];
    v43 = v23;
    v24 = v18[3];
    v25 = v18[5];
    v44 = v18[4];
    v45 = v25;
    v26 = v18[1];
    v41[0] = *v18;
    v41[1] = v26;
    v37 = v46;
    v38 = v21;
    v39 = v18[8];
    v33 = v42;
    v34 = v24;
    v35 = v44;
    v36 = v19;
    v31 = v41[0];
    v32 = v22;
    v66 = 20;
    sub_1A8400E7C(v41, v30);
    sub_1A84E672C();
    v30[6] = v37;
    v30[7] = v38;
    v30[8] = v39;
    v30[2] = v33;
    v30[3] = v34;
    v30[4] = v35;
    v30[5] = v36;
    v30[0] = v31;
    v30[1] = v32;
    sub_1A8400ED8(v30);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(&v95 + 1) = a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v93[-v5];
  v96 = sub_1A83EA2FC(&qword_1EB2E7780, &qword_1A8503A88);
  v7 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v9 = &v93[-v8];
  v10 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for ImportExport.Message(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v93[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = v12;
  v15 = *(v12 + 80);
  *&v114 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v99 = v15;
  v102 = v14;
  sub_1A84E594C();
  v16 = a1[3];
  v98 = a1;
  sub_1A82471E0(a1, v16);
  sub_1A84296BC();
  sub_1A84E689C();
  if (v2)
  {
    v123 = v2;
    v20 = v102;
    sub_1A8244788(v98);
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_4:
    v24 = v97;
    goto LABEL_5;
  }

  v17 = v7;
  LOBYTE(v114) = 0;
  v18 = v96;
  v19 = sub_1A84E660C();
  v20 = v102;
  *v102 = v19;
  *(v20 + 1) = v31;
  LOBYTE(v114) = 1;
  v32 = sub_1A84E667C();
  v123 = 0;
  *(v20 + 2) = v32;
  LOBYTE(v104) = 2;
  sub_1A8429764();
  v33 = v123;
  sub_1A84E666C();
  if (v33)
  {
    v123 = v33;
    (*(v7 + 8))(v9, v18);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v94 = 0;
    *&v95 = 0;
    DWORD2(v95) = 0;
    LODWORD(v96) = 0;
    goto LABEL_16;
  }

  *(v20 + 3) = v114;
  LOBYTE(v114) = 3;
  *(v20 + 4) = sub_1A84E660C();
  *(v20 + 5) = v40;
  LOBYTE(v114) = 4;
  *(v20 + 6) = sub_1A84E65DC();
  *(v20 + 7) = v41;
  LOBYTE(v114) = 5;
  *(v20 + 8) = sub_1A84E660C();
  *(v20 + 9) = v42;
  LOBYTE(v114) = 6;
  *(v20 + 10) = sub_1A84E65DC();
  *(v20 + 11) = v43;
  LOBYTE(v114) = 7;
  *(v20 + 12) = sub_1A84E65DC();
  *(v20 + 13) = v44;
  LOBYTE(v114) = 8;
  v45 = sub_1A84E660C();
  v123 = 0;
  *(v20 + 14) = v45;
  *(v20 + 15) = v46;
  LOBYTE(v114) = 9;
  v47 = v123;
  v48 = sub_1A84E65DC();
  v123 = v47;
  if (v47)
  {
    (*(v7 + 8))(v9, v96);
    v94 = 0;
    *&v95 = 0;
    DWORD2(v95) = 0;
    LODWORD(v96) = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v20 = v102;
    goto LABEL_16;
  }

  v50 = v102;
  *(v102 + 16) = v48;
  *(v50 + 17) = v49;
  LOBYTE(v114) = 10;
  v51 = v123;
  v52 = sub_1A84E65DC();
  v123 = v51;
  if (v51)
  {
    (*(v7 + 8))(v9, v96);
    *&v95 = 0;
    DWORD2(v95) = 0;
    LODWORD(v96) = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v94 = 1;
    v20 = v102;
    goto LABEL_16;
  }

  v54 = v102;
  *(v102 + 18) = v52;
  *(v54 + 19) = v53;
  LOBYTE(v114) = 11;
  v55 = v123;
  v56 = sub_1A84E65DC();
  v123 = v55;
  if (v55)
  {
    (*(v7 + 8))(v9, v96);
    DWORD2(v95) = 0;
    LODWORD(v96) = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v94 = 1;
    *&v95 = 1;
    v20 = v102;
    goto LABEL_16;
  }

  v58 = v102;
  *(v102 + 20) = v56;
  *(v58 + 21) = v57;
  LOBYTE(v114) = 12;
  v59 = v123;
  v60 = sub_1A84E660C();
  v123 = v59;
  if (v59)
  {
    (*(v7 + 8))(v9, v96);
    LODWORD(v96) = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v94 = 1;
    LODWORD(v95) = 1;
    *(&v95 + 4) = 1;
    v20 = v102;
    goto LABEL_16;
  }

  v62 = v102;
  *(v102 + 22) = v60;
  *(v62 + 23) = v61;
  LOBYTE(v114) = 13;
  v63 = v123;
  v64 = sub_1A84E660C();
  v123 = v63;
  if (v63)
  {
    (*(v7 + 8))(v9, v96);
    LODWORD(v96) = 0;
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v94 = 1;
    *&v95 = 0x100000001;
    DWORD2(v95) = 1;
    v20 = v102;
    goto LABEL_16;
  }

  v66 = v102;
  *(v102 + 24) = v64;
  *(v66 + 25) = v65;
  LOBYTE(v104) = 14;
  sub_1A841E440();
  v67 = v123;
  sub_1A84E666C();
  v123 = v67;
  if (v67)
  {
    (*(v7 + 8))(v9, v96);
    v34 = 1;
    v35 = 1;
    v36 = 1;
    v37 = 1;
    v38 = 1;
    v39 = 1;
    v94 = 1;
    *&v95 = 0x100000001;
    DWORD2(v95) = 1;
    LODWORD(v96) = 1;
    v20 = v102;
LABEL_16:
    sub_1A8244788(v98);

    if (v34)
    {

      v24 = v97;
      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v24 = v97;
      if (!v35)
      {
LABEL_18:
        if (v36)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }
    }

    if (v36)
    {
LABEL_19:

      if ((v37 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v37)
    {
LABEL_20:
      if (v38)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v38)
    {
LABEL_21:

      if ((v39 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v39)
    {
LABEL_22:
      if (v94)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

LABEL_34:

    if (v94)
    {
LABEL_23:

      if ((v95 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v95)
    {
LABEL_24:
      if (DWORD1(v95))
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

LABEL_36:

    if (BYTE4(v95))
    {
LABEL_25:

      if ((BYTE8(v95) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!DWORD2(v95))
    {
LABEL_26:
      if (!v96)
      {
LABEL_28:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        goto LABEL_5;
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_38:

    if ((v96 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v102[208] = v114;
  sub_1A83EA2FC(&qword_1EB2E7768, &qword_1A8503A80);
  LOBYTE(v104) = 15;
  sub_1A84297B8(&qword_1EB2E7790, &qword_1EB2E7798, &protocol conformance descriptor for ImportExport.MessagePart, MEMORY[0x1E69E6330]);
  v68 = v123;
  sub_1A84E666C();
  v69 = v68;
  if (v68)
  {
    (*(v17 + 8))(v9, v96);
    sub_1A8244788(v98);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v123 = v68;
  }

  else
  {
    *(v102 + 27) = v114;
    LOBYTE(v114) = 16;
    sub_1A83F0624(&qword_1EB2E7390, &qword_1EB2E6F60, &qword_1A8501F10, MEMORY[0x1E69A66B8]);
    sub_1A84E666C();
    v123 = 0;
    (*(v100 + 40))(&v102[v99], v6, v101);
    LOBYTE(v114) = 17;
    v70 = v123;
    v71 = sub_1A84E65DC();
    v123 = v70;
    if (v70)
    {
      (*(v17 + 8))(v9, v96);
      sub_1A8244788(v98);
      v21 = 0;
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v73 = &v102[v97[21]];
      *v73 = v71;
      v73[1] = v72;
      LOBYTE(v114) = 18;
      v74 = v123;
      v75 = sub_1A84E65DC();
      v123 = v74;
      if (v74)
      {
        (*(v17 + 8))(v9, v96);
        sub_1A8244788(v98);
        v22 = 0;
        v23 = 0;
        v21 = 1;
      }

      else
      {
        v77 = &v102[v97[22]];
        *v77 = v75;
        v77[1] = v76;
        v113 = 19;
        sub_1A841E374();
        v78 = v123;
        sub_1A84E666C();
        v123 = v78;
        if (v78)
        {
          (*(v17 + 8))(v9, v96);
          sub_1A8244788(v98);
          v23 = 0;
          v21 = 1;
          v22 = 1;
        }

        else
        {
          v79 = &v102[v97[23]];
          v80 = v119;
          v81 = v121;
          v82 = v122;
          *(v79 + 6) = v120;
          *(v79 + 7) = v81;
          *(v79 + 8) = v82;
          v83 = v117;
          *(v79 + 2) = v116;
          *(v79 + 3) = v83;
          *(v79 + 4) = v118;
          *(v79 + 5) = v80;
          v84 = v115;
          *v79 = v114;
          *(v79 + 1) = v84;
          v103 = 20;
          v85 = v123;
          sub_1A84E666C();
          v86 = (v17 + 8);
          v123 = v85;
          if (!v85)
          {
            (*v86)(v9, v96);
            v87 = v102;
            v88 = &v102[v97[24]];
            v89 = v111;
            *(v88 + 6) = v110;
            *(v88 + 7) = v89;
            *(v88 + 8) = v112;
            v90 = v107;
            *(v88 + 2) = v106;
            *(v88 + 3) = v90;
            v91 = v109;
            *(v88 + 4) = v108;
            *(v88 + 5) = v91;
            v92 = v105;
            *v88 = v104;
            *(v88 + 1) = v92;
            sub_1A8429854(v87, *(&v95 + 1), type metadata accessor for ImportExport.Message);
            sub_1A8244788(v98);
            return sub_1A84298BC(v87, type metadata accessor for ImportExport.Message);
          }

          (*v86)(v9, v96);
          sub_1A8244788(v98);
          v21 = 1;
          v22 = 1;
          v23 = 1;
        }
      }
    }
  }

  if (!v69)
  {
    v20 = v102;

    goto LABEL_4;
  }

  v24 = v97;
  v20 = v102;
LABEL_5:
  result = (*(v100 + 8))(&v20[v99], v101);
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_7;
    }

LABEL_10:

    if (!v23)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v22)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v23)
  {
    return result;
  }

LABEL_11:
  v26 = &v20[v24[23]];
  v27 = *(v26 + 7);
  v120 = *(v26 + 6);
  v121 = v27;
  v122 = *(v26 + 8);
  v28 = *(v26 + 3);
  v116 = *(v26 + 2);
  v117 = v28;
  v29 = *(v26 + 5);
  v118 = *(v26 + 4);
  v119 = v29;
  v30 = *(v26 + 1);
  v114 = *v26;
  v115 = v30;
  return sub_1A8400ED8(&v114);
}

uint64_t static ImportExport.Message.date(fromISO8601String:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  if (a2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    v9 = sub_1A84E5D8C();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1A84E569C();

      v11 = sub_1A84E56DC();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v15 = sub_1A84E56DC();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    return sub_1A83F8010(v7, a3);
  }

  else
  {
    v12 = sub_1A84E56DC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t ImportExport.Message.attachmentTotalBytes.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  v24 = type metadata accessor for ImportExport.Attachment(0);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportExport.MessagePart(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 216);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v23 = *(v8 + 44);
    v15 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    v16 = (v4 + 48);
    while (1)
    {
      sub_1A8429854(v15, v11, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v11[v23], v3, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84298BC(v11, type metadata accessor for ImportExport.MessagePart);
      v17 = v24;
      if ((*v16)(v3, 1, v24) == 1)
      {
        sub_1A824B2D4(v3, &qword_1EB2E6F50, &unk_1A8502920);
      }

      else
      {
        sub_1A842AD50(v3, v6, type metadata accessor for ImportExport.Attachment);
        v18 = *&v6[*(v17 + 60)];
        result = sub_1A84298BC(v6, type metadata accessor for ImportExport.Attachment);
        if (v18 < 0)
        {
          __break(1u);
          return result;
        }

        v20 = __CFADD__(v14, v18);
        v14 += v18;
        if (v20)
        {
          __break(1u);
          return 0;
        }
      }

      v15 += v22;
      if (!--v13)
      {
        return v14;
      }
    }
  }

  return 0;
}

uint64_t ImportExport.Message.attachmentCount.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for ImportExport.MessagePart(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 216);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = *(v5 + 44);
    v13 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1A8429854(v13, v8, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(&v8[v12], v3, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84298BC(v8, type metadata accessor for ImportExport.MessagePart);
      v15 = type metadata accessor for ImportExport.Attachment(0);
      v16 = (*(*(v15 - 8) + 48))(v3, 1, v15);
      sub_1A824B2D4(v3, &qword_1EB2E6F50, &unk_1A8502920);
      if (v16 != 1 && __OFADD__(v11++, 1))
      {
        break;
      }

      v13 += v14;
      if (!--v10)
      {
        return v11;
      }
    }

    __break(1u);
  }

  return 0;
}

void ImportExport.Message.reaction.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 216);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
    v6 = (((*(v5 + 80) + 32) & ~*(v5 + 80)) + v3 + 152);
    while (1)
    {
      v7 = *(v6 - 4);
      if (v7)
      {
        break;
      }

      v6 = (v6 + *(v5 + 72));
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v8 = *(v6 - 1);
    *a1 = *(v6 - 3);
    *(a1 + 16) = v7;
    *(a1 + 24) = *(v6 - 24);
    *(a1 + 40) = v8;
    v9 = v6[1];
    *(a1 + 48) = *v6;
    *(a1 + 64) = v9;
  }

  else
  {
LABEL_5:
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

double ImportExport.Message.reply.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = 0;
  v4 = *(v1 + 216);
  v5 = *(v4 + 16);
  do
  {
    if (v5 == v3)
    {
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v6 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
    v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3++;
    v8 = *(v7 + 72);
  }

  while (!v8);
  v9 = *(v7 + 96);
  *a1 = *(v7 + 64);
  *(a1 + 8) = v8;
  *(a1 + 16) = *(v7 + 80);
  *(a1 + 32) = v9;

  return result;
}

uint64_t ImportExport.Message.update(messageParts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v200 = a1;
  v179 = a2;
  v238 = type metadata accessor for ImportExport.MessagePart(0);
  v203 = *(v238 - 1);
  v4 = MEMORY[0x1EEE9AC00](v238);
  v236 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v235 = &v167 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v167 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v209 = &v167 - v11;
  v12 = sub_1A84E5C9C();
  v168 = *(v12 - 8);
  v169 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v180 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v210 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ImportExport.Message(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v199 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2[1];
  v208 = *v2;
  v212 = v19;
  v198 = v2[5];
  v20 = (v2 + v17[23]);
  v21 = v20[7];
  v251 = v20[6];
  v252 = v21;
  v253 = v20[8];
  v22 = v20[3];
  v247 = v20[2];
  v248 = v22;
  v23 = v20[5];
  v249 = v20[4];
  v250 = v23;
  v24 = v20[1];
  v245 = *v20;
  v246 = v24;
  v25 = (v2 + v17[24]);
  v26 = v25[8];
  v261 = v25[7];
  v262 = v26;
  v27 = v25[6];
  v28 = v25[3];
  v256 = v25[2];
  v257 = v28;
  v29 = v25[4];
  v259 = v25[5];
  v260 = v27;
  v258 = v29;
  v30 = v25[1];
  v254 = *v25;
  v255 = v30;
  v31 = v2[3];
  v171 = v2[4];
  v32 = v2[12];
  v33 = v2[13];
  v34 = v2[16];
  v35 = v2[17];
  v36 = v3[19];
  v193 = v3[18];
  v194 = v34;
  v196 = v36;
  v37 = v3[21];
  v192 = v3[20];
  v201 = v37;
  v38 = v3[23];
  v173 = v3[22];
  v174 = v32;
  v177 = *(v3 + 208);
  v39 = v3[11];
  v172 = v3[10];
  v40 = v17[21];
  v237 = v17[20];
  v41 = (v3 + v40);
  v42 = *v41;
  v43 = v41[1];
  v44 = (v3 + v17[22]);
  v45 = v44[1];
  v175 = *v44;
  v176 = v42;
  v186 = v45;

  v183 = v38;

  v184 = v33;

  v197 = v35;

  v46 = v196;

  v182 = v39;

  v185 = v43;

  v211 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v181 = *&v239[0];
  v170 = v3[2];
  v178 = v16;
  v47 = *(v16 + 80);
  *&v239[0] = 0;
  sub_1A84E5B8C();
  v48 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v187 = v47;
  v207 = v48;
  sub_1A84E594C();
  if (v46)
  {
    v49 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v49 = v193 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v31 |= 4uLL;
    }
  }

  if (v197)
  {
    v50 = HIBYTE(v197) & 0xF;
    if ((v197 & 0x2000000000000000) == 0)
    {
      v50 = v194 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v31 |= 8uLL;
    }
  }

  if (v201)
  {
    v51 = HIBYTE(v201) & 0xF;
    if ((v201 & 0x2000000000000000) == 0)
    {
      v51 = v192 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      v31 |= 0x10uLL;
    }
  }

  if ((~v31 & 0x8002) != 0)
  {
    v52 = v31 | 0x8002;
  }

  else
  {
    v52 = v31;
  }

  v53 = v200;
  sub_1A8423270(v200, v239);
  v54 = *&v239[0];
  if ((*&v239[0] & ~v52) == 0)
  {
    v54 = 0;
  }

  v189 = v54;
  v190 = v52;
  v55 = *(v53 + 16);
  v56 = MEMORY[0x1E69E7CC0];
  v195 = v55;
  if (v55)
  {
    *&v239[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v55, 0);
    v56 = *&v239[0];
    v57 = v53 + ((*(v203 + 80) + 32) & ~*(v203 + 80));
    v234 = *(v203 + 72);
    do
    {
      v58 = v236;
      sub_1A8429854(v57, v236, type metadata accessor for ImportExport.MessagePart);
      v59 = (v58 + v238[19]);
      v60 = v59[1];
      v237 = *v59;

      sub_1A84298BC(v58, type metadata accessor for ImportExport.MessagePart);
      *&v239[0] = v56;
      v62 = *(v56 + 16);
      v61 = *(v56 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_1A83EF534((v61 > 1), v62 + 1, 1);
        v56 = *&v239[0];
      }

      *(v56 + 16) = v62 + 1;
      v63 = v56 + 16 * v62;
      *(v63 + 32) = v237;
      *(v63 + 40) = v60;
      v57 += v234;
      --v55;
    }

    while (v55);
    v55 = v195;
  }

  *&v239[0] = v56;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  v202 = sub_1A84E5D6C();
  v188 = v64;

  if (v55)
  {
    v65 = 0;
    v66 = 0;
    v67 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v68 = v200 + v67;
    v205 = *(v203 + 72);
    v206 = v67;
    v204 = v211 - 8;
    v69 = MEMORY[0x1E69E7CC0];
    v70 = v55;
    v71 = v238;
    v72 = v209;
    while (1)
    {
      v213 = v68;
      v214 = v70;
      sub_1A8429854(v68, v72, type metadata accessor for ImportExport.MessagePart);
      v73 = *(v72 + 48);
      v234 = v69;
      if (v73)
      {
        v215 = *(v72 + 40);
        v236 = v73;
      }

      else
      {
        v236 = sub_1A84E5E7C();
        v215 = v66;
      }

      v74 = *(v72 + 56);
      if (v74 < 0)
      {
        v74 = v65;
      }

      v237 = v74;
      v75 = *(v72 + 8);
      v76 = (v72 + v71[19]);
      v77 = *v76;
      v78 = v76[1];
      v223 = *v72;
      v224 = v77;
      v216 = v78;
      v220 = *(v72 + 16);
      v228 = *(v72 + 96);
      v79 = *(v72 + 168);
      v80 = *(v72 + 120);
      v81 = *(v72 + 136);
      v243 = *(v72 + 152);
      v244 = v79;
      v241 = v80;
      v242 = v81;
      v240 = *(v72 + 104);
      v82 = v71[13];
      v83 = (v72 + v71[12]);
      v84 = v83[1];
      v231 = *v83;
      v219 = v84;
      v85 = *(v72 + v82 + 8);
      v233 = *(v72 + v82);
      v232 = v85;
      v86 = v71[15];
      v87 = (v72 + v71[14]);
      v88 = v87[1];
      v229 = *v87;
      v89 = *(v72 + v86 + 8);
      v230 = *(v72 + v86);
      v222 = v89;
      v90 = *(v72 + 80);
      v217 = *(v72 + 64);
      v218 = v90;

      sub_1A8243D74(&v240, v239, &qword_1EB2E6F58, &qword_1A8501388);

      v91 = v211;
      sub_1A84E595C();
      v221 = *&v239[0];
      v92 = v238[17];
      v225 = *(v72 + v238[16]);
      v227 = *(v72 + v92);
      v226 = *(v72 + v238[18]);
      v93 = *(v72 + v238[20]);
      sub_1A8243D74(v72 + v238[11], &v10[v238[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v10 + 6) = 0u;
      *(v10 + 7) = 0u;
      *(v10 + 8) = 0u;
      *(v10 + 9) = 0u;
      *(v10 + 10) = 0u;
      *(v10 + 22) = 0;
      *(v10 + 4) = 0u;
      *(v10 + 5) = 0u;
      v94 = v238[21];
      *&v239[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v10[16] = v220;
      v95 = v224;
      *v10 = v223;
      *(v10 + 1) = v75;
      v96 = v215;
      v97 = v236;
      *(v10 + 5) = v215;
      *(v10 + 6) = v97;
      v98 = &v10[v238[19]];
      v99 = v216;
      *v98 = v95;
      *(v98 + 1) = v99;

      v100 = v218;
      *(v10 + 4) = v217;
      *(v10 + 5) = v100;
      *(v10 + 12) = v228;
      v101 = *(v10 + 120);
      v102 = *(v10 + 152);
      v239[2] = *(v10 + 136);
      v239[3] = v102;
      v239[4] = *(v10 + 168);
      v239[0] = *(v10 + 104);
      v239[1] = v101;
      sub_1A824B2D4(v239, &qword_1EB2E6F58, &qword_1A8501388);
      v103 = v240;
      *(v10 + 120) = v241;
      v104 = v243;
      *(v10 + 136) = v242;
      *(v10 + 152) = v104;
      *(v10 + 168) = v244;
      *(v10 + 104) = v103;
      v105 = &v10[v238[12]];
      v106 = v219;
      *v105 = v231;
      *(v105 + 1) = v106;
      v107 = &v10[v238[13]];
      v108 = v233;
      v109 = v232;
      *v107 = v233;
      *(v107 + 1) = v109;
      v110 = &v10[v238[14]];
      *v110 = v229;
      *(v110 + 1) = v88;
      v111 = &v10[v238[15]];
      v112 = v222;
      *v111 = v230;
      *(v111 + 1) = v112;
      sub_1A83F5918(v108, v109);
      v113 = *(*(v91 - 8) + 8);
      v114 = v91;
      v71 = v238;
      v113(&v10[v94], v114);
      v263 = v221;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v10[v71[16]] = v225;
      v10[v71[17]] = v227;
      v10[v71[18]] = v226;
      *&v10[v71[20]] = v93;
      v115 = v212;
      *(v10 + 3) = v208;
      *(v10 + 4) = v115;
      *(v10 + 7) = v237;
      sub_1A8429854(v10, v235, type metadata accessor for ImportExport.MessagePart);

      v69 = v234;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_1A83EF140(0, v69[2] + 1, 1, v69);
      }

      v116 = v205;
      v118 = v69[2];
      v117 = v69[3];
      v72 = v209;
      if (v118 >= v117 >> 1)
      {
        v69 = sub_1A83EF140((v117 > 1), v118 + 1, 1, v69);
      }

      v69[2] = v118 + 1;
      sub_1A842AD50(v235, v69 + v206 + v118 * v116, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84298BC(v10, type metadata accessor for ImportExport.MessagePart);
      v65 = v237 + 1;
      if (__OFADD__(v237, 1))
      {
        break;
      }

      v120 = v96 + v236;
      if (__OFADD__(v96, v236))
      {
        goto LABEL_68;
      }

      v66 = v120 + 1;
      v121 = v214;
      if (__OFADD__(v120, 1))
      {
        goto LABEL_69;
      }

      sub_1A84298BC(v72, type metadata accessor for ImportExport.MessagePart);
      v68 = v213 + v116;
      v70 = v121 - 1;
      if (!v70)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v122 = 0;
    v123 = v189 | v190;
    *&v240 = -1;
    v124 = v191;
    v125 = v200;
    v126 = v195;
    v127 = v188;
    while (v126 != v122)
    {
      v128 = v122 + 1;
      sub_1A842343C(v125 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v122, &v240, v202, v127);
      v122 = v128;
      if (v124)
      {

        sub_1A84E5C8C();
        v129 = v124;
        v130 = sub_1A84E5C7C();
        v131 = sub_1A84E619C();

        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v132 = 138412290;
          v134 = v124;
          v135 = _swift_stdlib_bridgeErrorToNSError();
          *(v132 + 4) = v135;
          *v133 = v135;
          _os_log_impl(&dword_1A823F000, v130, v131, "Failed to create a message with Error: %@", v132, 0xCu);
          sub_1A824B2D4(v133, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v133, -1, -1);
          MEMORY[0x1AC56D3F0](v132, -1, -1);
        }

        (*(v168 + 8))(v180, v169);
        swift_willThrow();
        return (*(*(v211 - 8) + 8))(&v199[v187]);
      }
    }

    v136 = v199;
    v137 = v212;
    *v199 = v208;
    v136[1] = v137;
    v136[14] = v202;
    v136[15] = v127;
    v138 = v171;
    v136[2] = v170;
    v139 = v198;
    v136[4] = v138;
    v136[5] = v139;
    v140 = v178;
    v141 = (v136 + v178[23]);
    v142 = v248;
    v141[2] = v247;
    v141[3] = v142;
    v143 = v253;
    v141[7] = v252;
    v141[8] = v143;
    v144 = v251;
    v141[5] = v250;
    v141[6] = v144;
    v141[4] = v249;
    v145 = v246;
    *v141 = v245;
    v141[1] = v145;
    v146 = (v136 + v140[24]);
    v147 = v261;
    v146[6] = v260;
    v146[7] = v147;
    v146[8] = v262;
    v148 = v257;
    v146[2] = v256;
    v146[3] = v148;
    v149 = v259;
    v146[4] = v258;
    v146[5] = v149;
    v150 = v255;
    *v146 = v254;
    v146[1] = v150;
    v151 = v182;
    v136[10] = v172;
    v136[11] = v151;
    v152 = v184;
    v136[12] = v174;
    v136[13] = v152;
    v153 = v197;
    v136[16] = v194;
    v136[17] = v153;
    v154 = v196;
    v136[18] = v193;
    v136[19] = v154;
    v155 = v201;
    v136[20] = v192;
    v136[21] = v155;
    v156 = v183;
    v136[22] = v173;
    v136[23] = v156;
    v157 = v177;
    *(v136 + 208) = v177;
    v136[27] = v69;
    sub_1A8400E7C(&v245, v239);
    sub_1A8400E7C(&v254, v239);
    (*(*(v211 - 8) + 8))(v136 + v187);
    *&v239[0] = v181;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v158 = (v136 + v140[21]);
    v159 = v185;
    *v158 = v176;
    v158[1] = v159;
    v160 = (v136 + v140[22]);
    v161 = v186;
    *v160 = v175;
    v160[1] = v161;
    v136[3] = v123;
    if (v157 > 3)
    {
      if (v157 > 5)
      {
        if (v157 == 6)
        {
          v162 = 0xE300000000000000;
          v163 = 5456722;
        }

        else
        {
          v162 = 0xEC000000534D5365;
          v163 = 0x74696C6C65746153;
        }
      }

      else if (v157 == 4)
      {
        v163 = 5459283;
        v162 = 0xE300000000000000;
      }

      else
      {
        v162 = 0xE800000000000000;
        v163 = 0x656D695465636146;
      }
    }

    else if (v157 > 1)
    {
      if (v157 == 2)
      {
        v162 = 0xE800000000000000;
      }

      else
      {
        v162 = 0xEC0000006574694CLL;
      }

      v163 = 0x6567617373654D69;
    }

    else if (v157)
    {
      v162 = 0xE300000000000000;
      v163 = 7958113;
    }

    else
    {
      v162 = 0xE700000000000000;
      v163 = 0x6E776F6E6B6E75;
    }

    v164 = v199;
    *(v199 + 24) = v163;
    *(v164 + 25) = v162;
    v165 = v248;
    *(v164 + 6) = *(&v247 + 1);
    *(v164 + 7) = v165;
    v166 = v257;
    *(v164 + 8) = *(&v256 + 1);
    *(v164 + 9) = v166;
    sub_1A842AD50(v164, v179, type metadata accessor for ImportExport.Message);
  }

  return result;
}

uint64_t sub_1A8428194@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for ImportExport.Attachment(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1A8429854(v12, v10, type metadata accessor for ImportExport.Attachment);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1A84298BC(v10, type metadata accessor for ImportExport.Attachment);
      }

      if (v14)
      {
        break;
      }

      sub_1A84298BC(v10, type metadata accessor for ImportExport.Attachment);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1A842AD50(v10, v18, type metadata accessor for ImportExport.Attachment);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t ImportExport.Message.description.getter()
{
  v1 = v0;
  v2 = 7104878;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x6567617373654DLL, 0xE700000000000000);
  MEMORY[0x1AC56A990](0x203A6469203ALL, 0xE600000000000000);
  MEMORY[0x1AC56A990](*v1, v1[1]);
  MEMORY[0x1AC56A990](0x6E6575716573202CLL, 0xEE00203A44496563);
  v3 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8530800);
  MEMORY[0x1AC56A990](v1[4], v1[5]);
  MEMORY[0x1AC56A990](0x7265646E6573202CLL, 0xEA0000000000203ALL);
  v4 = type metadata accessor for ImportExport.Message(0);
  v5 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85304C0);
  v6 = (v0 + *(v4 + 96));
  v40 = v6[2];
  v41 = v6[3];
  v42 = v6[4];
  v38 = *v6;
  v39 = v6[1];
  v7 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](0x72746E756F63202CLL, 0xEF203A65646F4379);
  MEMORY[0x1AC56A990](v1[22], v1[23]);
  MEMORY[0x1AC56A990](0xD000000000000037, 0x80000001A8530820);
  if (*(v0 + 136))
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x1AC56A990](v8, v9);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530860);
  if (*(v0 + 152))
  {
    v10 = *(v0 + 144);
    v11 = *(v0 + 152);
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1AC56A990](v10, v11);

  MEMORY[0x1AC56A990](0x655265746164202CLL, 0xEC000000203A6461);
  if (*(v0 + 168))
  {
    v12 = *(v0 + 160);
    v13 = *(v0 + 168);
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1AC56A990](v12, v13);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8530880);
  v14 = 0xE700000000000000;
  v15 = 0x6E776F6E6B6E75;
  v16 = *(v0 + 208);
  v17 = 0xE300000000000000;
  v18 = 5456722;
  if (v16 != 6)
  {
    v18 = 0x74696C6C65746153;
    v17 = 0xEC000000534D5365;
  }

  v19 = 5459283;
  v20 = 0xE300000000000000;
  if (v16 != 4)
  {
    v19 = 0x656D695465636146;
    v20 = 0xE800000000000000;
  }

  if (*(v0 + 208) <= 5u)
  {
    v18 = v19;
    v17 = v20;
  }

  v21 = 0xE800000000000000;
  if (v16 != 2)
  {
    v21 = 0xEC0000006574694CLL;
  }

  if (*(v0 + 208))
  {
    v15 = 7958113;
    v14 = 0xE300000000000000;
  }

  if (*(v0 + 208) > 1u)
  {
    v15 = 0x6567617373654D69;
    v14 = v21;
  }

  if (*(v0 + 208) <= 3u)
  {
    v22 = v15;
  }

  else
  {
    v22 = v18;
  }

  if (*(v0 + 208) <= 3u)
  {
    v23 = v14;
  }

  else
  {
    v23 = v17;
  }

  MEMORY[0x1AC56A990](v22, v23);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85308A0);
  v24 = (v0 + *(v4 + 84));
  if (v24[1])
  {
    v2 = *v24;
    v25 = v24[1];
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  MEMORY[0x1AC56A990](v2, v25);

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85308C0);
  *&v38 = *(v0 + 24);
  ImportExport.MessageState.description.getter();
  MEMORY[0x1AC56A990](v26, v27, v28, v29, v30, v31, v32, v33, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, *(&v41 + 1), v42, *(&v42 + 1));

  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85308E0);
  v34 = *(v0 + 216);
  v35 = type metadata accessor for ImportExport.MessagePart(0);
  v36 = MEMORY[0x1AC56AB00](v34, v35);
  MEMORY[0x1AC56A990](v36);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

uint64_t static ImportExport.Message.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t ImportExport.Message.hashValue.getter()
{
  sub_1A84E684C();
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

unint64_t sub_1A8428910()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4D64696C61766E69;
  }
}

uint64_t sub_1A842897C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A842B8A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84289A4(uint64_t a1)
{
  v2 = sub_1A842ADB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84289E0(uint64_t a1)
{
  v2 = sub_1A842ADB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8428A1C(uint64_t a1)
{
  v2 = sub_1A842AEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8428A58(uint64_t a1)
{
  v2 = sub_1A842AEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8428A94(uint64_t a1)
{
  v2 = sub_1A842AE60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8428AD0(uint64_t a1)
{
  v2 = sub_1A842AE60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8428B0C(uint64_t a1)
{
  v2 = sub_1A842AE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8428B48(uint64_t a1)
{
  v2 = sub_1A842AE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessageError.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E77A0, &qword_1A8503A90);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v24 - v4;
  v5 = sub_1A83EA2FC(&qword_1EB2E77A8, &qword_1A8503A98);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = sub_1A83EA2FC(&qword_1EB2E77B0, &qword_1A8503AA0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v34 = sub_1A83EA2FC(&qword_1EB2E77B8, &qword_1A8503AA8);
  v11 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v24 - v12;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  v15 = *(v1 + 16);
  sub_1A82471E0(a1, a1[3]);
  sub_1A842ADB8();
  sub_1A84E68AC();
  v16 = (v11 + 8);
  if (v15)
  {
    if (v15 == 1)
    {
      v36 = 1;
      sub_1A842AE60();
      v17 = v34;
      sub_1A84E669C();
      v18 = v28;
      sub_1A84E66CC();
      (*(v27 + 8))(v7, v18);
    }

    else
    {
      v37 = 2;
      sub_1A842AE0C();
      v22 = v29;
      v17 = v34;
      sub_1A84E669C();
      v23 = v31;
      sub_1A84E66CC();
      (*(v30 + 8))(v22, v23);
    }

    return (*v16)(v13, v17);
  }

  else
  {
    v35 = 0;
    sub_1A842AEB4();
    v19 = v34;
    sub_1A84E669C();
    v20 = v26;
    sub_1A84E66CC();
    (*(v25 + 8))(v10, v20);
    return (*v16)(v13, v19);
  }
}

uint64_t ImportExport.MessageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = sub_1A83EA2FC(&qword_1EB2E77E0, &qword_1A8503AB0);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - v3;
  v42 = sub_1A83EA2FC(&qword_1EB2E77E8, &qword_1A8503AB8);
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v40 - v4;
  v6 = sub_1A83EA2FC(&qword_1EB2E77F0, &qword_1A8503AC0);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = sub_1A83EA2FC(&qword_1EB2E77F8, &unk_1A8503AC8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v13 = a1[3];
  v49 = a1;
  sub_1A82471E0(a1, v13);
  sub_1A842ADB8();
  v14 = v48;
  sub_1A84E689C();
  if (!v14)
  {
    v40 = 0;
    v15 = v45;
    v16 = v46;
    v48 = v10;
    v17 = v47;
    v18 = sub_1A84E668C();
    v19 = (2 * *(v18 + 16)) | 1;
    v50 = v18;
    v51 = v18 + 32;
    v52 = 0;
    v53 = v19;
    v20 = sub_1A8400920();
    if (v20 == 3 || v52 != v53 >> 1)
    {
      v23 = sub_1A84E64BC();
      swift_allocError();
      v24 = v12;
      v26 = v25;
      sub_1A83EA2FC(&qword_1EB2E7110, &qword_1A8502A20);
      *v26 = &type metadata for ImportExport.MessageError;
      sub_1A84E65CC();
      sub_1A84E64AC();
      (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v48 + 8))(v24, v9);
    }

    else
    {
      v54 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v55 = 1;
          sub_1A842AE60();
          v21 = v40;
          sub_1A84E65BC();
          if (!v21)
          {
            v22 = v42;
            v34 = sub_1A84E660C();
            v36 = v35;
            (*(v44 + 1))(v5, v22);
            v37 = v48;
LABEL_16:
            (*(v37 + 8))(v12, v9);
            swift_unknownObjectRelease();
            goto LABEL_17;
          }
        }

        else
        {
          v55 = 2;
          sub_1A842AE0C();
          v31 = v40;
          sub_1A84E65BC();
          if (!v31)
          {
            v44 = v12;
            v32 = v16;
            v33 = sub_1A84E660C();
            v37 = v48;
            v38 = v33;
            v36 = v39;
            (*(v43 + 8))(v15, v32);
            v12 = v44;
            v34 = v38;
            goto LABEL_16;
          }
        }
      }

      else
      {
        v55 = 0;
        sub_1A842AEB4();
        v28 = v8;
        v29 = v40;
        sub_1A84E65BC();
        if (!v29)
        {
          v34 = sub_1A84E660C();
          v36 = v30;
          (*(v41 + 8))(v28, v6);
          (*(v48 + 8))(v12, v9);
          swift_unknownObjectRelease();
LABEL_17:
          *v17 = v34;
          *(v17 + 8) = v36;
          *(v17 + 16) = v54;
          return sub_1A8244788(v49);
        }
      }

      (*(v48 + 8))(v12, v9);
    }

    swift_unknownObjectRelease();
  }

  return sub_1A8244788(v49);
}

uint64_t sub_1A8429618(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC() & 1;
  }
}

uint64_t type metadata accessor for ImportExport.Message(uint64_t a1)
{
  result = qword_1EB2E7818;
  if (!qword_1EB2E7818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A84296BC()
{
  result = qword_1EB2E7758;
  if (!qword_1EB2E7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7758);
  }

  return result;
}

unint64_t sub_1A8429710()
{
  result = qword_1EB2E7760;
  if (!qword_1EB2E7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7760);
  }

  return result;
}

unint64_t sub_1A8429764()
{
  result = qword_1EB2E7788;
  if (!qword_1EB2E7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7788);
  }

  return result;
}

uint64_t sub_1A84297B8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7768, &qword_1A8503A80);
    sub_1A842AFFC(a2, type metadata accessor for ImportExport.MessagePart, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8429854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84298BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A842991C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1A84E675C() & 1;
  }
}

uint64_t sub_1A8429994(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536567617373656DLL && a2 == 0xEC00000065746174 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8530900 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6563655265746164 && a2 == 0xEC00000064657669 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x696C654465746164 && a2 == 0xED00006465726576 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6461655265746164 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85306C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x5465636976726573 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x506567617373656DLL && a2 == 0xEC00000073747261 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530920 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000068736148 || (sub_1A84E67AC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x617373654D736372 && a2 == 0xEC00000044496567 || (sub_1A84E67AC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7265646E6573 && a2 == 0xE600000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85306A0 == a2)
  {

    return 20;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

uint64_t sub_1A842A03C(uint64_t a1)
{
  v122[1] = *MEMORY[0x1E69E9840];
  v101 = sub_1A84E5C9C();
  v2 = *(v101 - 8);
  v3 = MEMORY[0x1EEE9AC00](v101);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v86 - v6;
  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v86 - v12;
  v117 = sub_1A84E558C();
  v14 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v106 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v110 = &v86 - v17;
  v121 = type metadata accessor for ImportExport.Attachment(0);
  v18 = *(v121 - 8);
  v19 = MEMORY[0x1EEE9AC00](v121);
  v108 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v115 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v86 - v23;
  v92 = type metadata accessor for ImportExport.MessagePart(0);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v113 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ImportExport.Message(0) - 8;
  result = MEMORY[0x1EEE9AC00](v25);
  v97 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(a1 + 16);
  if (v96)
  {
    v30 = 0;
    v95 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v111 = (v18 + 48);
    v118 = (v14 + 48);
    v105 = (v14 + 32);
    v109 = (v14 + 8);
    v100 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
    v99 = "invalidParticipant";
    v98 = (v2 + 8);
    v94 = *(v27 + 72);
    *&v28 = 136315138;
    v88 = v28;
    v112 = v13;
    v31 = v110;
    v32 = v97;
    v90 = v5;
    v89 = v7;
    v104 = v11;
    v107 = v18;
    while (1)
    {
      v103 = v30;
      sub_1A8429854(v95 + v94 * v30, v32, type metadata accessor for ImportExport.Message);
      v33 = *(v32 + 216);
      v34 = *(v33 + 16);
      if (v34)
      {
        v120 = *(v92 + 44);
        v35 = v33 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
        v36 = *(v91 + 72);
        v119 = MEMORY[0x1E69E7CC0];
        do
        {
          v37 = v113;
          sub_1A8429854(v35, v113, type metadata accessor for ImportExport.MessagePart);
          sub_1A8243D74(v37 + v120, v31, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84298BC(v37, type metadata accessor for ImportExport.MessagePart);
          if ((*v111)(v31, 1, v121) == 1)
          {
            sub_1A824B2D4(v31, &qword_1EB2E6F50, &unk_1A8502920);
          }

          else
          {
            v38 = v114;
            sub_1A842AD50(v31, v114, type metadata accessor for ImportExport.Attachment);
            sub_1A8429854(v38, v115, type metadata accessor for ImportExport.Attachment);
            v39 = v119;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_1A83EF118(0, v39[2] + 1, 1, v39);
            }

            v40 = v39;
            v41 = v39[2];
            v119 = v40;
            v42 = v40[3];
            if (v41 >= v42 >> 1)
            {
              v119 = sub_1A83EF118((v42 > 1), v41 + 1, 1, v119);
            }

            sub_1A84298BC(v114, type metadata accessor for ImportExport.Attachment);
            v43 = v119;
            v119[2] = v41 + 1;
            sub_1A842AD50(v115, v43 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v41, type metadata accessor for ImportExport.Attachment);
          }

          v35 += v36;
          --v34;
        }

        while (v34);
      }

      else
      {
        v119 = MEMORY[0x1E69E7CC0];
      }

      v44 = v119[2];
      if (v44)
      {
        break;
      }

LABEL_3:

      v30 = v103 + 1;
      v32 = v97;
      result = sub_1A84298BC(v97, type metadata accessor for ImportExport.Message);
      if (v30 == v96)
      {
        return result;
      }
    }

    v45 = v108;
    v46 = v119 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v116 = *(v107 + 72);
    v47 = v117;
    while (1)
    {
      v120 = v44;
      sub_1A8429854(v46, v45, type metadata accessor for ImportExport.Attachment);
      v48 = *(v121 + 40);
      sub_1A8243D74(v45 + v48, v13, &qword_1EB2E7068, &unk_1A8501EB0);
      v49 = *v118;
      if ((*v118)(v13, 1, v47) == 1)
      {
        break;
      }

      v50 = v106;
      (*v105)(v106, v13, v47);
      v51 = objc_opt_self();
      v52 = [v51 defaultManager];
      v53 = v47;
      sub_1A84E555C();
      v54 = sub_1A84E5D8C();

      v55 = [v52 fileExistsAtPath_];

      v56 = *v109;
      v57 = v50;
      v45 = v108;
      v58 = v53;
      v31 = v110;
      (*v109)(v57, v58);
      if ((v55 & 1) == 0 || *(v45 + *(v121 + 52)) != 1)
      {
        goto LABEL_32;
      }

      v59 = v104;
      sub_1A8243D74(v45 + v48, v104, &qword_1EB2E7068, &unk_1A8501EB0);
      v47 = v117;
      if (v49(v59, 1, v117) != 1)
      {
        v60 = v47;
        v61 = sub_1A84E555C();
        v63 = v62;
        v56(v59, v60);
        v64 = [v51 defaultManager];
        v102 = v61;
        v65 = sub_1A84E5D8C();
        v122[0] = 0;
        v66 = [v64 removeItemAtPath:v65 error:v122];

        if (v66)
        {
          v67 = v122[0];
          v68 = v89;
          sub_1A84E5C8C();

          v69 = sub_1A84E5C7C();
          v70 = sub_1A84E617C();

          v71 = os_log_type_enabled(v69, v70);
          v31 = v110;
          if (v71)
          {
            v72 = swift_slowAlloc();
            v87 = v69;
            v73 = v72;
            v74 = swift_slowAlloc();
            v122[0] = v74;
            *v73 = v88;
            v75 = sub_1A82446BC(v102, v63, v122);

            *(v73 + 4) = v75;
            v76 = v87;
            _os_log_impl(&dword_1A823F000, v87, v70, "deleted downloaded attachment at path: %s", v73, 0xCu);
            sub_1A8244788(v74);
            MEMORY[0x1AC56D3F0](v74, -1, -1);
            MEMORY[0x1AC56D3F0](v73, -1, -1);
            goto LABEL_28;
          }

LABEL_30:
        }

        else
        {
          v77 = v122[0];
          v78 = sub_1A84E548C();

          swift_willThrow();
          v93 = 0;
          v68 = v90;
          sub_1A84E5C8C();

          v69 = sub_1A84E5C7C();
          v79 = sub_1A84E619C();

          v80 = os_log_type_enabled(v69, v79);
          v31 = v110;
          if (!v80)
          {

            goto LABEL_30;
          }

          v81 = swift_slowAlloc();
          v86 = v69;
          v82 = v81;
          v83 = swift_slowAlloc();
          v87 = v78;
          v84 = v83;
          v122[0] = v83;
          *v82 = v88;
          v85 = sub_1A82446BC(v102, v63, v122);

          *(v82 + 4) = v85;
          v76 = v86;
          _os_log_impl(&dword_1A823F000, v86, v79, "failed to deleted downloaded attachment at path: %s", v82, 0xCu);
          sub_1A8244788(v84);
          MEMORY[0x1AC56D3F0](v84, -1, -1);
          MEMORY[0x1AC56D3F0](v82, -1, -1);

LABEL_28:
        }

        (*v98)(v68, v101);
LABEL_32:
        sub_1A84298BC(v45, type metadata accessor for ImportExport.Attachment);
        v47 = v117;
        goto LABEL_33;
      }

      sub_1A84298BC(v45, type metadata accessor for ImportExport.Attachment);
      sub_1A824B2D4(v59, &qword_1EB2E7068, &unk_1A8501EB0);
      v31 = v110;
LABEL_33:
      v46 += v116;
      v44 = v120 - 1;
      v13 = v112;
      if (v120 == 1)
      {
        goto LABEL_3;
      }
    }

    sub_1A824B2D4(v13, &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_1A842AD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A842ADB8()
{
  result = qword_1EB2E77C0;
  if (!qword_1EB2E77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77C0);
  }

  return result;
}

unint64_t sub_1A842AE0C()
{
  result = qword_1EB2E77C8;
  if (!qword_1EB2E77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77C8);
  }

  return result;
}

unint64_t sub_1A842AE60()
{
  result = qword_1EB2E77D0;
  if (!qword_1EB2E77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77D0);
  }

  return result;
}

unint64_t sub_1A842AEB4()
{
  result = qword_1EB2E77D8;
  if (!qword_1EB2E77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E77D8);
  }

  return result;
}

uint64_t sub_1A842AF08(void *a1)
{
  a1[1] = sub_1A842AFFC(&qword_1EB2E7198, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
  a1[2] = sub_1A842AFFC(&qword_1EB2E7800, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
  result = sub_1A842AFFC(&qword_1EB2E7808, type metadata accessor for ImportExport.Message, &protocol conformance descriptor for ImportExport.Message);
  a1[3] = result;
  return result;
}

uint64_t sub_1A842AFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A842B06C(uint64_t a1)
{
  sub_1A8412B38();
  if (v1 <= 0x3F)
  {
    sub_1A842B174(319);
    if (v2 <= 0x3F)
    {
      sub_1A8412BDC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A842B174(uint64_t a1)
{
  if (!qword_1EB2E7828)
  {
    type metadata accessor for ImportExport.MessagePart(255);
    v1 = sub_1A84E604C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E7828);
    }
  }
}

uint64_t _s7MessageV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7MessageV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A842B37C()
{
  result = qword_1EB2E7830;
  if (!qword_1EB2E7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7830);
  }

  return result;
}

unint64_t sub_1A842B3D4()
{
  result = qword_1EB2E7838;
  if (!qword_1EB2E7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7838);
  }

  return result;
}

unint64_t sub_1A842B42C()
{
  result = qword_1EB2E7840;
  if (!qword_1EB2E7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7840);
  }

  return result;
}

unint64_t sub_1A842B484()
{
  result = qword_1EB2E7848;
  if (!qword_1EB2E7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7848);
  }

  return result;
}

unint64_t sub_1A842B4DC()
{
  result = qword_1EB2E7850;
  if (!qword_1EB2E7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7850);
  }

  return result;
}

unint64_t sub_1A842B534()
{
  result = qword_1EB2E7858;
  if (!qword_1EB2E7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7858);
  }

  return result;
}

unint64_t sub_1A842B58C()
{
  result = qword_1EB2E7860;
  if (!qword_1EB2E7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7860);
  }

  return result;
}

unint64_t sub_1A842B5E4()
{
  result = qword_1EB2E7868;
  if (!qword_1EB2E7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7868);
  }

  return result;
}

unint64_t sub_1A842B63C()
{
  result = qword_1EB2E7870;
  if (!qword_1EB2E7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7870);
  }

  return result;
}

unint64_t sub_1A842B694()
{
  result = qword_1EB2E7878;
  if (!qword_1EB2E7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7878);
  }

  return result;
}

unint64_t sub_1A842B6EC()
{
  result = qword_1EB2E7880;
  if (!qword_1EB2E7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7880);
  }

  return result;
}

unint64_t sub_1A842B744()
{
  result = qword_1EB2E7888;
  if (!qword_1EB2E7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7888);
  }

  return result;
}

unint64_t sub_1A842B79C()
{
  result = qword_1EB2E7890;
  if (!qword_1EB2E7890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7890);
  }

  return result;
}

unint64_t sub_1A842B7F4()
{
  result = qword_1EB2E7898;
  if (!qword_1EB2E7898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7898);
  }

  return result;
}

unint64_t sub_1A842B84C()
{
  result = qword_1EB2E78A0;
  if (!qword_1EB2E78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78A0);
  }

  return result;
}

uint64_t sub_1A842B8A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D64696C61766E69 && a2 == 0xEE00656761737365;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530940 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530960 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1A842B9CC()
{
  result = qword_1EB2E78A8;
  if (!qword_1EB2E78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78A8);
  }

  return result;
}

uint64_t sub_1A842BA20()
{
  sub_1A841263C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);

  return swift_deallocClassInstance();
}

uint64_t _s27AttachmentDownloadingResultCMa(uint64_t a1)
{
  result = qword_1EB2E78B0;
  if (!qword_1EB2E78B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A842BAFC(uint64_t a1)
{
  result = type metadata accessor for ImportExport.Attachment(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A842BBA4(uint64_t a1, double a2)
{
  *(v3 + 176) = v2;
  *(v3 + 168) = a2;
  *(v3 + 160) = a1;
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for ImportExport.Attachment(0);
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  *(v3 + 248) = v4;
  *(v3 + 256) = *(v4 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = sub_1A83EA2FC(&qword_1EB2E78D8, &qword_1A85043F8);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  v5 = sub_1A84E5C0C();
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  *(v3 + 328) = swift_task_alloc();
  v6 = sub_1A84E5C9C();
  *(v3 + 336) = v6;
  *(v3 + 344) = *(v6 - 8);
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  sub_1A84E609C();
  *(v3 + 392) = sub_1A84E608C();
  v8 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A842BE94, v8, v7);
}

void sub_1A842BE94()
{
  v191 = v0;
  v1 = *(v0 + 176);
  strcpy(v190, "ImportExport.");
  HIWORD(v190[1]) = -4864;
  sub_1A842EDF4();
  v2 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v2);

  sub_1A84E5C8C();
  v3 = v1;
  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E617C();
  if (!os_log_type_enabled(v4, v5))
  {
    v21 = *(v0 + 384);
    v22 = *(v0 + 336);
    v23 = *(v0 + 344);

    v180 = *(v23 + 8);
    v180(v21, v22);
    goto LABEL_9;
  }

  v6 = *(v0 + 176);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v190[0] = v8;
  *v7 = 136315650;
  v9 = [v6 guid];
  v10 = *(v0 + 176);
  if (!v9)
  {

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v9;
  v12 = sub_1A84E5DBC();
  v14 = v13;

  v15 = sub_1A82446BC(v12, v14, v190);

  *(v7 + 4) = v15;
  *(v7 + 12) = 2080;
  v16 = [v10 messageGUID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1A84E5DBC();
    v20 = v19;
  }

  else
  {
    v20 = 0xE300000000000000;
    v18 = 7104878;
  }

  v181 = v8;
  v24 = *(v0 + 176);
  v25 = sub_1A82446BC(v18, v20, v190);

  *(v7 + 14) = v25;
  *(v7 + 22) = 2080;
  v26 = [v24 localPath];

  if (!v26)
  {
    goto LABEL_39;
  }

  v27 = *(v0 + 384);
  v29 = *(v0 + 336);
  v28 = *(v0 + 344);
  v30 = sub_1A84E5DBC();
  v32 = v31;

  v33 = sub_1A82446BC(v30, v32, v190);

  *(v7 + 24) = v33;
  _os_log_impl(&dword_1A823F000, v4, v5, "Starting downloading attachment %s for message %s to path %s", v7, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1AC56D3F0](v181, -1, -1);
  MEMORY[0x1AC56D3F0](v7, -1, -1);

  v180 = *(v28 + 8);
  v180(v27, v29);
LABEL_9:
  v34 = *(v0 + 176);
  [v34 _setSandboxTokenForExportDownload];
  [v34 _setTransferState_];
  strcpy(v190, "ImportExport.");
  HIWORD(v190[1]) = -4864;
  v35 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v35);

  sub_1A84E5C8C();
  sub_1A84E5BCC();
  objc_allocWithZone(_s21DownloadEventListenerCMa());
  v36 = sub_1A842E52C(v34);
  v37 = [objc_opt_self() sharedInstance];
  if (!v37)
  {
    sub_1A84E653C();
    return;
  }

  v38 = v37;
  v39 = *(v0 + 296);
  v40 = *(v0 + 304);
  v41 = *(v0 + 280);
  v43 = *(v0 + 248);
  v42 = *(v0 + 256);
  v44 = *(v0 + 176);
  v45 = *(v0 + 168);
  [v37 registerNewFileTransfer_];
  v46 = [v44 guid];
  [v38 acceptTransfer_];

  sub_1A842D4EC(v40 + *(v41 + 48), v45);
  *v40 = v47;
  sub_1A84E5BEC();
  sub_1A842EE40(v40, v39);

  v173 = v41;
  v48 = *(v41 + 48);
  if ((*(v42 + 48))(v39 + v48, 1, v43) == 1)
  {
    v49 = *(v0 + 176);
    sub_1A824B2D4(v39 + v48, &qword_1EB2E7348, &qword_1A8504400);
    v50 = [objc_opt_self() defaultManager];
    v51 = &selRef_isGroupTypingMessage;
    v52 = [v49 localPath];
    if (v52)
    {
      v53 = v52;
      v54 = [v50 fileExistsAtPath_];

      if (!v54)
      {
        v111 = *(v0 + 200);
        v112 = *(v0 + 176);
        v113 = *(v0 + 160);

        strcpy(v190, "ImportExport.");
        HIWORD(v190[1]) = -4864;
        v114 = sub_1A84E69AC();
        MEMORY[0x1AC56A990](v114);

        sub_1A84E5C8C();
        sub_1A841269C(v113, v111, type metadata accessor for ImportExport.Attachment);
        v115 = v112;
        v116 = sub_1A84E5C7C();
        v117 = sub_1A84E619C();
        if (os_log_type_enabled(v116, v117))
        {
          v176 = v38;
          v179 = v36;
          v118 = *(v0 + 200);
          v119 = *(v0 + 176);
          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v190[0] = v122;
          *v120 = 136315906;
          v123 = *v118;
          v124 = v118[1];

          sub_1A841263C(v118, type metadata accessor for ImportExport.Attachment);
          v125 = sub_1A82446BC(v123, v124, v190);

          *(v120 + 4) = v125;
          *(v120 + 12) = 2080;
          v126 = [v119 localPath];

          if (!v126)
          {
LABEL_44:
            __break(1u);
            return;
          }

          v127 = sub_1A84E5DBC();
          v129 = v128;

          v130 = sub_1A82446BC(v127, v129, v190);

          *(v120 + 14) = v130;
          *(v120 + 22) = 2112;
          if (qword_1EB2E5A28 != -1)
          {
            swift_once();
          }

          v188 = *(v0 + 352);
          v184 = *(v0 + 336);
          v131 = sub_1A824431C(*(v0 + 248), qword_1EB2E8F78);
          sub_1A842EEB0();
          swift_allocError();
          sub_1A841269C(v131, v132, type metadata accessor for ImportExport.AttachmentDownloadError);
          v133 = _swift_stdlib_bridgeErrorToNSError();
          *(v120 + 24) = v133;
          *v121 = v133;
          *(v120 + 32) = 2080;
          swift_beginAccess();
          v134 = sub_1A84E5BDC();
          v136 = sub_1A82446BC(v134, v135, v190);

          *(v120 + 34) = v136;
          _os_log_impl(&dword_1A823F000, v116, v117, "Failed downloading attachment: %s: to path: %s with error: %@ in %s", v120, 0x2Au);
          sub_1A824B2D4(v121, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v121, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x1AC56D3F0](v122, -1, -1);
          MEMORY[0x1AC56D3F0](v120, -1, -1);

          v180(v188, v184);
          v38 = v176;
          v36 = v179;
        }

        else
        {
          v152 = *(v0 + 352);
          v153 = *(v0 + 336);
          v154 = *(v0 + 200);
          v155 = *(v0 + 176);

          sub_1A841263C(v154, type metadata accessor for ImportExport.Attachment);
          v180(v152, v153);
        }

        if (qword_1EB2E5A28 != -1)
        {
          swift_once();
        }

        v110 = (v0 + 192);
        v156 = *(v0 + 192);
        v157 = sub_1A824431C(*(v0 + 248), qword_1EB2E8F78);
        ImportExport.Attachment.update(downloadError:)(v157, v156);
        v158 = *(v0 + 288);
        sub_1A842EE40(*(v0 + 304), v158);
        v189 = *v158;
        v185 = v158 + *(v173 + 48);
        swift_beginAccess();
        sub_1A84E5BFC();
        v140 = v159;

        goto LABEL_35;
      }

      v55 = *(v0 + 224);
      v56 = *(v0 + 176);
      v57 = *(v0 + 160);
      strcpy(v190, "ImportExport.");
      HIWORD(v190[1]) = -4864;
      v58 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v58);

      sub_1A84E5C8C();
      sub_1A841269C(v57, v55, type metadata accessor for ImportExport.Attachment);
      v59 = v56;
      v60 = sub_1A84E5C7C();
      v61 = sub_1A84E617C();
      if (os_log_type_enabled(v60, v61))
      {
        v174 = v38;
        v177 = v36;
        v62 = *(v0 + 224);
        v63 = *(v0 + 176);
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v190[0] = v65;
        *v64 = 136315650;
        v66 = *v62;
        v67 = v62[1];

        sub_1A841263C(v62, type metadata accessor for ImportExport.Attachment);
        v68 = sub_1A82446BC(v66, v67, v190);

        *(v64 + 4) = v68;
        *(v64 + 12) = 2080;
        v69 = [v63 &selRef_nonBaseCharacterSet];

        if (!v69)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v186 = *(v0 + 360);
        v182 = *(v0 + 336);
        v70 = sub_1A84E5DBC();
        v72 = v71;

        v73 = sub_1A82446BC(v70, v72, v190);

        *(v64 + 14) = v73;
        *(v64 + 22) = 2080;
        swift_beginAccess();
        v74 = sub_1A84E5BDC();
        v76 = sub_1A82446BC(v74, v75, v190);

        *(v64 + 24) = v76;
        _os_log_impl(&dword_1A823F000, v60, v61, "Finished downloading attachment: %s: to path: %s in %s", v64, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v65, -1, -1);
        MEMORY[0x1AC56D3F0](v64, -1, -1);

        v180(v186, v182);
        v38 = v174;
        v36 = v177;
        v51 = &selRef_isGroupTypingMessage;
      }

      else
      {
        v143 = *(v0 + 360);
        v144 = *(v0 + 336);
        v145 = *(v0 + 224);
        v146 = *(v0 + 176);

        sub_1A841263C(v145, type metadata accessor for ImportExport.Attachment);
        v180(v143, v144);
      }

      v147 = [*(v0 + 176) v51[270]];
      if (v147)
      {
        v148 = v147;
        v149 = *(v0 + 216);
        v150 = *(v0 + 184);

        sub_1A84E5DBC();

        sub_1A84E54FC();

        v151 = sub_1A84E558C();
        (*(*(v151 - 8) + 56))(v150, 0, 1, v151);
        v190[0] = 0;
        ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v150, 0, 1, v190, v149);
        v110 = (v0 + 208);
        v160 = *(v0 + 208);
        v161 = *(v0 + 304);
        v162 = *(v0 + 288);
        v163 = *(v0 + 216);
        sub_1A824B2D4(*(v0 + 184), &qword_1EB2E7068, &unk_1A8501EB0);
        sub_1A841269C(v163, v160, type metadata accessor for ImportExport.Attachment);
        sub_1A842EE40(v161, v162);
        v189 = *v162;
        v185 = v162 + *(v173 + 48);
        swift_beginAccess();
        sub_1A84E5BFC();
        v140 = v164;

        v142 = v163;
        v141 = type metadata accessor for ImportExport.Attachment;
        goto LABEL_34;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v175 = v38;
  v178 = v36;
  v78 = *(v0 + 264);
  v77 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 176);
  v81 = *(v0 + 160);

  sub_1A842EF08(v39 + v48, v77, type metadata accessor for ImportExport.AttachmentDownloadError);
  strcpy(v190, "ImportExport.");
  HIWORD(v190[1]) = -4864;
  v82 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v82);

  sub_1A84E5C8C();
  sub_1A841269C(v81, v79, type metadata accessor for ImportExport.Attachment);
  sub_1A841269C(v77, v78, type metadata accessor for ImportExport.AttachmentDownloadError);
  v83 = v80;
  v84 = sub_1A84E5C7C();
  v85 = sub_1A84E619C();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = *(v0 + 240);
    v87 = *(v0 + 176);
    v88 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v190[0] = v187;
    *v88 = 136315906;
    v90 = *v86;
    v89 = v86[1];

    sub_1A841263C(v86, type metadata accessor for ImportExport.Attachment);
    v91 = sub_1A82446BC(v90, v89, v190);

    *(v88 + 4) = v91;
    *(v88 + 12) = 2080;
    v92 = [v87 localPath];

    if (!v92)
    {
LABEL_41:
      sub_1A841263C(*(v0 + 264), type metadata accessor for ImportExport.AttachmentDownloadError);
      __break(1u);
      goto LABEL_42;
    }

    v171 = *(v0 + 336);
    v172 = *(v0 + 368);
    v93 = *(v0 + 264);
    v94 = sub_1A84E5DBC();
    v96 = v95;

    v97 = sub_1A82446BC(v94, v96, v190);

    *(v88 + 14) = v97;
    *(v88 + 22) = 2112;
    sub_1A842EEB0();
    swift_allocError();
    sub_1A841269C(v93, v98, type metadata accessor for ImportExport.AttachmentDownloadError);
    v99 = _swift_stdlib_bridgeErrorToNSError();
    sub_1A841263C(v93, type metadata accessor for ImportExport.AttachmentDownloadError);
    *(v88 + 24) = v99;
    *v183 = v99;
    *(v88 + 32) = 2080;
    swift_beginAccess();
    v100 = sub_1A84E5BDC();
    v102 = sub_1A82446BC(v100, v101, v190);

    *(v88 + 34) = v102;
    _os_log_impl(&dword_1A823F000, v84, v85, "Failed downloading attachment: %s: to path: %s with error: %@ in %s", v88, 0x2Au);
    sub_1A824B2D4(v183, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v183, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v187, -1, -1);
    MEMORY[0x1AC56D3F0](v88, -1, -1);

    v103 = v171;
    v104 = v172;
  }

  else
  {
    v105 = *(v0 + 368);
    v106 = *(v0 + 336);
    v107 = *(v0 + 264);
    v108 = *(v0 + 240);
    v109 = *(v0 + 176);

    sub_1A841263C(v107, type metadata accessor for ImportExport.AttachmentDownloadError);
    sub_1A841263C(v108, type metadata accessor for ImportExport.Attachment);
    v104 = v105;
    v103 = v106;
  }

  v180(v104, v103);
  v110 = (v0 + 232);
  ImportExport.Attachment.update(downloadError:)(*(v0 + 272), *(v0 + 232));
  v137 = *(v0 + 288);
  v138 = *(v0 + 272);
  sub_1A842EE40(*(v0 + 304), v137);
  v189 = *v137;
  v185 = v137 + *(v173 + 48);
  swift_beginAccess();
  sub_1A84E5BFC();
  v140 = v139;

  v141 = type metadata accessor for ImportExport.AttachmentDownloadError;
  v142 = v138;
LABEL_34:
  sub_1A841263C(v142, v141);
LABEL_35:
  v165 = *v110;
  v166 = *(v0 + 320);
  v167 = *(v0 + 328);
  v168 = *(v0 + 312);
  sub_1A824B2D4(*(v0 + 304), &qword_1EB2E78D8, &qword_1A85043F8);
  _s27AttachmentDownloadingResultCMa(0);
  v169 = swift_allocObject();
  sub_1A842EF08(v165, v169 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);
  *(v169 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_downloadInterval) = v140;
  *(v169 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_fileTransfer) = v189;
  sub_1A824B2D4(v185, &qword_1EB2E7348, &qword_1A8504400);
  (*(v166 + 8))(v167, v168);

  v170 = *(v0 + 8);

  v170(v169);
}

void sub_1A842D4EC(uint64_t a1, double a2)
{
  v3 = v2;
  v138 = a1;
  v5 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v136 = *(v5 - 8);
  v137 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v131 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v127 = v124 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v132 = v124 - v10;
  v11 = sub_1A84E558C();
  v134 = *(v11 - 8);
  v135 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v126 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v133 = v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v130 = v124 - v16;
  v17 = sub_1A84E5C9C();
  v139 = *(v17 - 8);
  v140 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v129 = v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v125 = v124 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v128 = v124 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v141 = v124 - v24;
  v25 = sub_1A84E56DC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E562C();
  v30 = v29 + a2;
  v31 = OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_isWaiting;
  v32 = (v26 + 8);
  while (v3[v31] == 1)
  {
    v33 = [objc_opt_self() mainRunLoop];
    sub_1A84E567C();
    v34 = sub_1A84E565C();
    (*v32)(v28, v25);
    [v33 runUntilDate_];

    sub_1A84E562C();
    if (v30 < v35)
    {
      strcpy(v142, "ImportExport.");
      HIWORD(v142[1]) = -4864;
      sub_1A842EDF4();
      v36 = sub_1A84E69AC();
      MEMORY[0x1AC56A990](v36);

      v37 = v129;
      sub_1A84E5C8C();
      v38 = sub_1A84E5C7C();
      v39 = sub_1A84E617C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1A823F000, v38, v39, "download timedout", v40, 2u);
        MEMORY[0x1AC56D3F0](v40, -1, -1);
      }

      (*(v139 + 8))(v37, v140);
      v41 = qword_1EB2E5A30;
      *&v3[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer];
      v42 = v41 == -1;
      v44 = v137;
      v43 = v138;
      if (!v42)
      {
        swift_once();
      }

      v45 = sub_1A824431C(v44, qword_1EB2E8F90);
      sub_1A841269C(v45, v43, type metadata accessor for ImportExport.AttachmentDownloadError);
      (*(v136 + 56))(v43, 0, 1, v44);
      return;
    }
  }

  strcpy(v142, "ImportExport.");
  HIWORD(v142[1]) = -4864;
  v46 = sub_1A842EDF4();
  v47 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v47);

  v48 = v141;
  sub_1A84E5C8C();
  v49 = v3;
  v50 = sub_1A84E5C7C();
  v51 = sub_1A84E617C();
  v52 = &OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate;
  if (os_log_type_enabled(v50, v51))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v142[0] = v54;
    *v53 = 136315138;
    v55 = [*&v49[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] guid];

    if (!v55)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v56 = sub_1A84E5DBC();
    v58 = v57;

    v59 = sub_1A82446BC(v56, v58, v142);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_1A823F000, v50, v51, "finished waiting for IMFileTransfer: %s", v53, 0xCu);
    sub_1A8244788(v54);
    MEMORY[0x1AC56D3F0](v54, -1, -1);
    MEMORY[0x1AC56D3F0](v53, -1, -1);

    v60 = *(v139 + 8);
    v60(v141, v140);
    v52 = &OBJC_IVAR___IMCloudKitSyncState__lastFullPartialSyncDate;
  }

  else
  {

    v60 = *(v139 + 8);
    v60(v48, v140);
  }

  v124[1] = v46;
  v61 = 7104878;
  v141 = *&v49[v52[281]];
  v62 = [v141 localURL];
  v63 = v134;
  v129 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
  if (!v62)
  {
    v66 = *(v134 + 56);
    v74 = v130;
    v66(v130, 1, 1, v135);
    sub_1A824B2D4(v74, &qword_1EB2E7068, &unk_1A8501EB0);
    v73 = 0xE300000000000000;
    v71 = 7104878;
    goto LABEL_17;
  }

  v64 = v130;
  v65 = v62;
  sub_1A84E554C();

  v66 = *(v63 + 56);
  v67 = v135;
  v66(v64, 0, 1, v135);
  sub_1A824B2D4(v64, &qword_1EB2E7068, &unk_1A8501EB0);
  v68 = [v141 localURL];
  if (!v68)
  {
    __break(1u);
    goto LABEL_46;
  }

  v69 = v68;
  v70 = v126;
  sub_1A84E554C();

  v71 = sub_1A84E555C();
  v73 = v72;
  (*(v63 + 8))(v70, v67);
LABEL_17:
  v142[0] = 0;
  v142[1] = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A8530C60);
  v75 = [v141 guid];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1A84E5DBC();
    v79 = v78;
  }

  else
  {
    v79 = 0xE300000000000000;
    v77 = 7104878;
  }

  MEMORY[0x1AC56A990](v77, v79);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8530C90);
  v80 = [v141 messageGUID];
  if (v80)
  {
    v81 = v80;
    v61 = sub_1A84E5DBC();
    v83 = v82;
  }

  else
  {
    v83 = 0xE300000000000000;
  }

  MEMORY[0x1AC56A990](v61, v83);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8530CB0);
  MEMORY[0x1AC56A990](v71, v73);

  v85 = v142[0];
  v84 = v142[1];
  if ([v141 error] == -1)
  {
    strcpy(v142, "ImportExport.");
    HIWORD(v142[1]) = -4864;
    v91 = sub_1A84E69AC();
    MEMORY[0x1AC56A990](v91);

    v92 = v125;
    sub_1A84E5C8C();

    v93 = sub_1A84E5C7C();
    v94 = sub_1A84E617C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v142[0] = v96;
      *v95 = 136315138;
      v97 = sub_1A82446BC(v85, v84, v142);

      *(v95 + 4) = v97;
      _os_log_impl(&dword_1A823F000, v93, v94, "%s finished ok!", v95, 0xCu);
      sub_1A8244788(v96);
      MEMORY[0x1AC56D3F0](v96, -1, -1);
      MEMORY[0x1AC56D3F0](v95, -1, -1);
    }

    else
    {
    }

    v60(v92, v140);
    (*(v136 + 56))(v138, 1, 1, v137);
  }

  else
  {
    v86 = [v141 errorDescription];
    if (v86)
    {
      v87 = v86;
      v88 = sub_1A84E5DBC();
      v90 = v89;
    }

    else
    {
      v88 = 0;
      v90 = 0xE000000000000000;
    }

    v130 = v60;
    v98 = [v141 localURL];
    if (v98)
    {
      v99 = v133;
      v100 = v98;
      sub_1A84E554C();

      v101 = v99;
      v102 = 0;
    }

    else
    {
      v102 = 1;
      v101 = v133;
    }

    v66(v101, v102, 1, v135);
    v103 = [v141 error];
    v104 = IMFileTransferErrorReason.name.getter([v141 error]);
    v106 = v105;
    *v131 = 1;
    v107 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v107 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (!v107)
    {
      v88 = v104;

      v104 = v88;
      v90 = v106;
    }

    v109 = v137;
    v108 = v138;
    v110 = v131;
    *(v131 + 1) = v88;
    v110[2] = v90;
    v110[3] = v103;
    v110[4] = v104;
    v110[5] = v106;
    sub_1A83FB148(v133, v110 + *(v109 + 32));
    *(v110 + *(v109 + 36)) = 0;
    v111 = v127;
    sub_1A842EF08(v110, v127, type metadata accessor for ImportExport.AttachmentDownloadError);
    sub_1A842EF08(v111, v132, type metadata accessor for ImportExport.AttachmentDownloadError);
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    sub_1A84E646C();

    v142[0] = v85;
    v142[1] = v84;
    MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8530CD0);
    v112 = ImportExport.AttachmentDownloadError.description.getter();
    MEMORY[0x1AC56A990](v112);

    v114 = v142[0];
    v113 = v142[1];
    strcpy(v142, "ImportExport.");
    HIWORD(v142[1]) = -4864;
    v115 = sub_1A84E69AC();
    MEMORY[0x1AC56A990](v115);

    v116 = v128;
    sub_1A84E5C8C();

    v117 = sub_1A84E5C7C();
    v118 = sub_1A84E619C();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v142[0] = v120;
      *v119 = 136315138;
      v121 = sub_1A82446BC(v114, v113, v142);

      *(v119 + 4) = v121;
      _os_log_impl(&dword_1A823F000, v117, v118, "%s", v119, 0xCu);
      sub_1A8244788(v120);
      MEMORY[0x1AC56D3F0](v120, -1, -1);
      MEMORY[0x1AC56D3F0](v119, -1, -1);
    }

    else
    {
    }

    (v130)(v116, v140);
    sub_1A842EF08(v132, v108, type metadata accessor for ImportExport.AttachmentDownloadError);
    (*(v136 + 56))(v108, 0, 1, v109);
  }

  v122 = v141;

  v123 = v122;
}

id sub_1A842E404()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A842E52C(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_isWaiting] = 1;
  *&v1[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_downloadFinishedWithNotification_ name:@"__kIMFileTransferFinishedNotification" object:v4];

  v9 = [v6 defaultCenter];
  [v9 addObserver:v7 selector:sel_downloadedRemovedWithNotification_ name:@"__kIMFileTransferRemovedNotification" object:v4];

  v10 = [v6 defaultCenter];
  [v10 addObserver:v7 selector:sel_downloadRejectedWithNotification_ name:@"__kIMFileTransferRejectedNotification" object:v4];

  v11 = [v6 defaultCenter];
  [v11 addObserver:v7 selector:sel_downloadUpdatedWithNotification_ name:@"__kIMFileTransferUpdatedNotification" object:v4];

  v12 = [v6 defaultCenter];
  [v12 addObserver:v7 selector:sel_downloadCreatedWithNotification_ name:@"__kIMFileTransferCreatedNotification" object:v4];

  return v7;
}

uint64_t sub_1A842E760(void *a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(char *, const char *), ...)
{
  v8 = sub_1A84E535C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E533C();
  v12 = a1;
  a5(v11, a4);

  return (*(v9 + 8))(v11, v8);
}

void sub_1A842E860(uint64_t a1, const char *a2)
{
  v4 = sub_1A84E5C9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v21, "ImportExport.");
  HIWORD(v21[1]) = -4864;
  sub_1A842EDF4();
  v8 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v8);

  sub_1A84E5C8C();
  v9 = v2;
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();
  if (!os_log_type_enabled(v10, v11))
  {

    (*(v5 + 8))(v7, v4);
    goto LABEL_5;
  }

  v19 = a2;
  v20 = v4;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21[0] = v13;
  *v12 = 136315138;
  v14 = [*&v9[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] guid];

  if (v14)
  {
    v15 = sub_1A84E5DBC();
    v17 = v16;

    v18 = sub_1A82446BC(v15, v17, v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1A823F000, v10, v11, v19, v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);

    (*(v5 + 8))(v7, v20);
LABEL_5:
    v9[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_isWaiting] = 0;
    return;
  }

  __break(1u);
}

void sub_1A842EB1C(uint64_t a1, const char *a2)
{
  v4 = sub_1A84E5C9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v21, "ImportExport.");
  HIWORD(v21[1]) = -4864;
  sub_1A842EDF4();
  v8 = sub_1A84E69AC();
  MEMORY[0x1AC56A990](v8);

  sub_1A84E5C8C();
  v9 = v2;
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E617C();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_5;
  }

  v20 = a2;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21[0] = v13;
  *v12 = 136315138;
  v14 = [*&v9[OBJC_IVAR____TtCE6IMCoreCSo14IMFileTransferP33_D2BE23A46B245655B3A1B91A9919D56721DownloadEventListener_fileTransfer] guid];

  if (v14)
  {
    v15 = sub_1A84E5DBC();
    v17 = v16;

    v18 = sub_1A82446BC(v15, v17, v21);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1A823F000, v10, v11, v20, v12, 0xCu);
    sub_1A8244788(v13);
    MEMORY[0x1AC56D3F0](v13, -1, -1);
    MEMORY[0x1AC56D3F0](v12, -1, -1);

LABEL_5:
    (*(v5 + 8))(v7, v4);
    return;
  }

  __break(1u);
}

unint64_t sub_1A842EDF4()
{
  result = qword_1EB2E78D0;
  if (!qword_1EB2E78D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E78D0);
  }

  return result;
}

uint64_t sub_1A842EE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E78D8, &qword_1A85043F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A842EEB0()
{
  result = qword_1EB2E78E0;
  if (!qword_1EB2E78E0)
  {
    type metadata accessor for ImportExport.AttachmentDownloadError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78E0);
  }

  return result;
}

uint64_t sub_1A842EF08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A842EF70()
{
  v0 = *MEMORY[0x1E69A6E00];
  v1 = *MEMORY[0x1E69A6D10];
  v2 = v0;
  v3 = IMGetDomainBoolForKeyWithDefaultValue();

  byte_1EB2FF250 = v3;
}

uint64_t sub_1A842EFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = v6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 32) = a2;
  *(v7 + 24) = a6;
  *(v7 + 16) = a1;
  type metadata accessor for ImportExport.Attachment(0);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A842F130, 0, 0);
}

uint64_t sub_1A842F130()
{
  if (ImportExport.Attachment.existsOnDisk.getter())
  {
    v1 = v0[9];
    sub_1A84300A8(v0[8], v1);
LABEL_3:
    _s27AttachmentDownloadingResultCMa(0);
    v2 = swift_allocObject();
    sub_1A8430040(v1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);
    *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_downloadInterval) = 0;
    *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_fileTransfer) = 0;

    v3 = v0[1];

    return v3(v2);
  }

  if (qword_1EB2E5960 != -1)
  {
    swift_once();
  }

  if (byte_1EB2FF250 != 1)
  {
    v12 = v0[15];
    v11 = v0[16];
    v13 = v0[14];
    v14 = v0[12];
    v15 = v0[10];
    v16 = sub_1A84E558C();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    *v12 = 3;
    v17 = 0xD000000000000025;
    if (("\n   failed with error: " & 0xF00000000000000) != 0)
    {
      v18 = 0xD000000000000025;
    }

    else
    {
      v18 = 0;
    }

    if (("\n   failed with error: " & 0xF00000000000000) != 0)
    {
      v19 = 0x80000001A8530CF0;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    if (("\n   failed with error: " & 0x2000000000000000) != 0)
    {
      v17 = v18;
      v20 = v19;
    }

    else
    {
      v20 = 0x80000001A8530CF0;
    }

    *(v12 + 8) = v17;
    *(v12 + 16) = v20;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    sub_1A83FB148(v14, v12 + *(v13 + 32));
    *(v12 + *(v13 + 36)) = 128;
    sub_1A8430040(v12, v11, type metadata accessor for ImportExport.AttachmentDownloadError);
    ImportExport.Attachment.update(downloadError:)(v11, v15);
    sub_1A83F0040(v11);
    v1 = v0[10];
    goto LABEL_3;
  }

  v5 = v0[8];
  v7 = *v5;
  v6 = v5[1];
  v8 = sub_1A84E5D8C();
  v9 = IMDAttachmentRecordCopyAttachmentForGUID();

  if (v9)
  {
    v0[19] = [objc_allocWithZone(MEMORY[0x1E69A5D98]) initWithRecordRef_];

    v10 = sub_1A842FDD4();
    v0[20] = 0;
    v0[21] = v23;
    v0[22] = v10;
    v0[23] = sub_1A842EDF4();
    v0[24] = sub_1A84E609C();
    v0[25] = sub_1A84E608C();
    v24 = sub_1A84E605C();

    return MEMORY[0x1EEE6DFA0](sub_1A842F59C, v24, v25);
  }

  else
  {
    sub_1A8412484();
    swift_allocError();
    *v21 = v7;
    *(v21 + 8) = v6;
    *(v21 + 16) = 0;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1A842F59C()
{
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[4];
  v6 = v0[5];

  v0[26] = sub_1A846D468(v3, v7, v6, v5, v4, v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1A842F664, 0, 0);
}

uint64_t sub_1A842F664()
{
  *(v0 + 216) = sub_1A84E608C();
  v2 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A842F6F0, v2, v1);
}

uint64_t sub_1A842F6F0()
{
  v1 = *(v0 + 208);

  *(v0 + 248) = [v1 isDownloadExpired];

  return MEMORY[0x1EEE6DFA0](sub_1A842F76C, 0, 0);
}

uint64_t sub_1A842F76C()
{
  if (*(v0 + 248))
  {
    v1 = *(v0 + 160);
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = sub_1A84E558C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    *v3 = 3;
    v8 = 0xD000000000000014;
    if (("enabled during export" & 0xF00000000000000) != 0)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0;
    }

    if (("enabled during export" & 0xF00000000000000) != 0)
    {
      v10 = 0x80000001A8530D20;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    if (("enabled during export" & 0x2000000000000000) != 0)
    {
      v8 = v9;
      v11 = v10;
    }

    else
    {
      v11 = 0x80000001A8530D20;
    }

    *(v3 + 8) = v8;
    *(v3 + 16) = v11;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    sub_1A83FB148(v4, v3 + *(v5 + 32));
    *(v3 + *(v5 + 36)) = 256;
    sub_1A8430040(v3, v2, type metadata accessor for ImportExport.AttachmentDownloadError);
    ImportExport.Attachment.update(downloadError:)(v2, v6);
    sub_1A83F0040(v2);
    v12 = *(v0 + 208);
    v13 = *(v0 + 152);
    if (v1)
    {

      v14 = *(v0 + 8);

      return v14();
    }

    else
    {
      v19 = *(v0 + 88);

      _s27AttachmentDownloadingResultCMa(0);
      v20 = swift_allocObject();
      sub_1A8430040(v19, v20 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_attachment, type metadata accessor for ImportExport.Attachment);
      *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_downloadInterval) = 0;
      *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport27AttachmentDownloadingResult_fileTransfer) = 0;

      v21 = *(v0 + 8);

      return v21(v20);
    }
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 224) = v16;
    *v16 = v0;
    v16[1] = sub_1A842FADC;
    v17 = *(v0 + 64);
    v18 = *(v0 + 24);

    return sub_1A842BBA4(v17, v18);
  }
}

uint64_t sub_1A842FADC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1A842FCF0;
  }

  else
  {
    *(v4 + 240) = a1;
    v5 = sub_1A842FC04;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A842FC04()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A842FCF0()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A842FDD4()
{
  v0 = sub_1A84E570C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A84E558C();
  v4 = *(v18 - 8);
  v5 = MEMORY[0x1EEE9AC00](v18);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  sub_1A84E56FC();
  sub_1A84E56EC();
  (*(v1 + 8))(v3, v0);
  sub_1A84E552C();

  v10 = v9;
  v11 = v17[1];
  sub_1A8462834();
  if (v11)
  {
    (*(v4 + 8))(v9, v18);
  }

  else
  {
    v12 = [v17[0] transferName];
    sub_1A84E5DBC();

    sub_1A84E552C();

    v10 = sub_1A84E555C();
    v13 = *(v4 + 8);
    v14 = v7;
    v15 = v18;
    v13(v14, v18);
    v13(v9, v15);
  }

  return v10;
}

uint64_t sub_1A8430040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84300A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Attachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.Message.Reply.threadOriginatorMessageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ImportExport.Message.Reply.init(threadOriginatorMessageID:rangeInOriginatingMessagePart:threadOriginatorMessagePartIndex:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ImportExport.Message.Reply.init(threadOriginatorMessage:messagePartIndex:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0 || (v5 = a1[27], *(v5 + 16) <= a2))
  {
    sub_1A84E646C();

    v14 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v14);

    sub_1A842B9CC();
    swift_allocError();
    *v15 = 0xD00000000000001BLL;
    *(v15 + 8) = 0x80000001A8530D40;
    *(v15 + 16) = 1;
    swift_willThrow();
    return sub_1A84302EC(a1);
  }

  else
  {
    v7 = *(type metadata accessor for ImportExport.MessagePart(0) - 8);
    v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2;
    v10 = *a1;
    v9 = a1[1];
    v11 = *(v8 + 40);
    v12 = *(v8 + 48);

    result = sub_1A84302EC(a1);
    *a3 = v10;
    a3[1] = v9;
    a3[2] = v11;
    a3[3] = v12;
    a3[4] = a2;
  }

  return result;
}

uint64_t sub_1A84302EC(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A8430348()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1A84303A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A8430D04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A84303C8(uint64_t a1)
{
  v2 = sub_1A843062C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8430404(uint64_t a1)
{
  v2 = sub_1A843062C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.Reply.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E78E8, &qword_1A8504410);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = v1[2];
  v11 = v1[3];
  v12 = v7;
  v10 = v1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A843062C();
  sub_1A84E68AC();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_1A84E66CC();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    type metadata accessor for _NSRange(0);
    sub_1A84308D0(&qword_1EB2E78F8, MEMORY[0x1E6969F98]);
    sub_1A84E672C();
    LOBYTE(v14) = 2;
    sub_1A84E670C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A843062C()
{
  result = qword_1EB2E78F0;
  if (!qword_1EB2E78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E78F0);
  }

  return result;
}

uint64_t ImportExport.Message.Reply.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7900, &qword_1A8504418);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A843062C();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_1A84E660C();
  v11 = v10;
  v12 = v9;
  type metadata accessor for _NSRange(0);
  v20 = 1;
  sub_1A84308D0(&qword_1EB2E7908, MEMORY[0x1E6969FA8]);
  sub_1A84E666C();
  v16 = v19;
  v17 = v18;
  LOBYTE(v18) = 2;
  v14 = sub_1A84E664C();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v15 = v16;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v14;

  sub_1A8244788(a1);
}

uint64_t sub_1A84308D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _NSRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ImportExport.Message.Reply.init(replyingToMessageID:replyingToMessageThreadOriginator:replyingToMessageLength:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{

  *a5 = a2;
  a5[1] = a3;
  a5[2] = 0;
  a5[3] = a4;
  a5[4] = 0;
  return result;
}

uint64_t ImportExport.Message.Reply.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x796C706552, 0xE500000000000000);
  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8530D60);
  MEMORY[0x1AC56A990](v1, v2);
  MEMORY[0x1AC56A990](0xD000000000000024, 0x80000001A8530D80);
  v3 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](0xD000000000000021, 0x80000001A8530DB0);
  v4 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v4);

  MEMORY[0x1AC56A990](58, 0xE100000000000000);
  v5 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

__n128 sub_1A8430B38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A8430B4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1A8430B94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8430C00()
{
  result = qword_1EB2E7910;
  if (!qword_1EB2E7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7910);
  }

  return result;
}

unint64_t sub_1A8430C58()
{
  result = qword_1EB2E7918;
  if (!qword_1EB2E7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7918);
  }

  return result;
}

unint64_t sub_1A8430CB0()
{
  result = qword_1EB2E7920;
  if (!qword_1EB2E7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7920);
  }

  return result;
}

uint64_t sub_1A8430D04(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x80000001A8530DE0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A8530E00 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001A8530E20 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A8430E50(unsigned __int8 a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t ImportExport.MessagePart.init(id:body:messageType:reply:reaction:balloonBundleID:payloadData:expressiveSendStyleID:expressiveSendPlayedTime:dataDetectorsInfo:isExpirable:expireState:wasDetonated:links:attachment:parentMessageID:rangeInParent:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, char *a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v31 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v31 - 8);
  LOBYTE(a5) = *a5;
  v32 = *(a6 + 32);
  v52 = *a19;
  v33 = type metadata accessor for ImportExport.MessagePart(0);
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0;
  v34 = v33[21];
  *&v53[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a9 + 16) = a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a25;
  *(a9 + 48) = a26;
  v35 = (a9 + v33[19]);
  *v35 = a3;
  v35[1] = a4;

  v36 = *(a6 + 16);
  *(a9 + 64) = *a6;
  *(a9 + 80) = v36;
  *(a9 + 96) = v32;
  v37 = *(a9 + 120);
  v38 = *(a9 + 152);
  v53[2] = *(a9 + 136);
  v53[3] = v38;
  v53[4] = *(a9 + 168);
  v53[0] = *(a9 + 104);
  v53[1] = v37;
  sub_1A824B2D4(v53, &qword_1EB2E6F58, &qword_1A8501388);
  v39 = *a7;
  *(a9 + 120) = a7[1];
  v40 = a7[3];
  *(a9 + 136) = a7[2];
  *(a9 + 152) = v40;
  *(a9 + 168) = a7[4];
  *(a9 + 104) = v39;
  v41 = (a9 + v33[12]);
  *v41 = a8;
  v41[1] = a10;
  v42 = (a9 + v33[13]);
  *v42 = a11;
  v42[1] = a12;
  v43 = (a9 + v33[14]);
  *v43 = a13;
  v43[1] = a14;
  v44 = (a9 + v33[15]);
  *v44 = a15;
  v44[1] = a16;
  sub_1A83F5918(a11, a12);
  v45 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v45 - 8) + 8))(a9 + v34, v45);
  v54 = a17;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A83F5980(a11, a12);
  *(a9 + v33[16]) = a18;
  *(a9 + v33[17]) = v52;
  *(a9 + v33[18]) = a20;
  result = sub_1A8412580(a22, a9 + v33[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + v33[20]) = a21;
  *(a9 + 24) = a23;
  *(a9 + 32) = a24;
  *(a9 + 56) = a27;
  return result;
}

uint64_t type metadata accessor for ImportExport.MessagePart(uint64_t a1)
{
  result = qword_1EB2E79D8;
  if (!qword_1EB2E79D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.MessagePart.update(parentMessageID:rangeInParent:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v9 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = v6[1];
  v44 = *v6;
  v11 = type metadata accessor for ImportExport.MessagePart(0);
  v12 = (v6 + v11[19]);
  v43 = *v12;
  v34 = v12[1];
  v38 = *(v6 + 16);
  v45 = v6[12];
  v13 = *(v6 + 21);
  v14 = *(v6 + 15);
  v15 = *(v6 + 17);
  v59 = *(v6 + 19);
  v60 = v13;
  v57 = v14;
  v58 = v15;
  v56 = *(v6 + 13);
  v16 = v11[13];
  v17 = (v6 + v11[12]);
  v48 = *v17;
  v37 = v17[1];
  v50 = *(v6 + v16);
  v49 = *(v6 + v16 + 8);
  v18 = v11[15];
  v19 = (v6 + v11[14]);
  v20 = v19[1];
  v46 = *v19;
  v47 = *(v6 + v18);
  v39 = *(v6 + v18 + 8);
  v36 = *(v6 + 5);
  v35 = *(v6 + 4);

  sub_1A8243D74(&v56, v61, &qword_1EB2E6F58, &qword_1A8501388);

  v21 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v40 = *(v6 + v11[16]);
  v42 = *(v6 + v11[17]);
  v41 = *(v6 + v11[18]);
  v22 = *(v6 + v11[20]);
  sub_1A8243D74(v7 + v11[11], a6 + v11[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0;
  v23 = v11[21];
  *&v61[0] = 0;

  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a6 + 16) = v38;
  *a6 = v44;
  *(a6 + 8) = v10;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  v24 = (a6 + v11[19]);
  *v24 = v43;
  v24[1] = v34;

  *(a6 + 64) = v35;
  *(a6 + 80) = v36;
  *(a6 + 96) = v45;
  v25 = *(a6 + 136);
  v61[1] = *(a6 + 120);
  v61[2] = v25;
  v26 = *(a6 + 168);
  v61[3] = *(a6 + 152);
  v61[4] = v26;
  v61[0] = *(a6 + 104);
  sub_1A824B2D4(v61, &qword_1EB2E6F58, &qword_1A8501388);
  v27 = v56;
  *(a6 + 120) = v57;
  v28 = v59;
  *(a6 + 136) = v58;
  *(a6 + 152) = v28;
  *(a6 + 168) = v60;
  *(a6 + 104) = v27;
  v29 = (a6 + v11[12]);
  *v29 = v48;
  v29[1] = v37;
  v30 = (a6 + v11[13]);
  *v30 = v50;
  v30[1] = v49;
  v31 = (a6 + v11[14]);
  *v31 = v46;
  v31[1] = v20;
  v32 = (a6 + v11[15]);
  *v32 = v47;
  v32[1] = v39;
  sub_1A83F5918(v50, v49);
  (*(*(v21 - 8) + 8))(a6 + v23, v21);
  sub_1A84E5B8C();
  sub_1A84E594C();
  *(a6 + v11[16]) = v40;
  *(a6 + v11[17]) = v42;
  *(a6 + v11[18]) = v41;
  *(a6 + v11[20]) = v22;
  *(a6 + 24) = a1;
  *(a6 + 32) = a2;
  *(a6 + 56) = a5;
}

uint64_t ImportExport.MessagePart.update(attachment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v48 = *v2;
  v33 = v2[1];
  v6 = type metadata accessor for ImportExport.MessagePart(0);
  v7 = (v2 + v6[19]);
  v47 = *v7;
  v34 = v7[1];
  v42 = *(v2 + 16);
  v49 = v2[12];
  v8 = *(v2 + 21);
  v9 = *(v2 + 15);
  v10 = *(v2 + 17);
  v58 = *(v2 + 19);
  v59 = v8;
  v56 = v9;
  v57 = v10;
  v55 = *(v2 + 13);
  v11 = v6[13];
  v12 = (v2 + v6[12]);
  v52 = *v12;
  v40 = v12[1];
  v54 = *(v2 + v11);
  v53 = *(v2 + v11 + 8);
  v13 = v6[15];
  v14 = (v2 + v6[14]);
  v50 = *v14;
  v41 = v14[1];
  v51 = *(v2 + v13);
  v43 = *(v2 + v13 + 8);
  v39 = *(v2 + 5);
  v38 = *(v2 + 4);

  sub_1A8243D74(&v55, v60, &qword_1EB2E6F58, &qword_1A8501388);

  v15 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v44 = *(v2 + v6[16]);
  v46 = *(v2 + v6[17]);
  v45 = *(v2 + v6[18]);
  v32 = *(v2 + v6[20]);
  v16 = v6[11];
  sub_1A84340BC(a1, a2 + v16, type metadata accessor for ImportExport.Attachment);
  v17 = type metadata accessor for ImportExport.Attachment(0);
  (*(*(v17 - 8) + 56))(a2 + v16, 0, 1, v17);
  v18 = v2[4];
  v37 = v2[3];
  v20 = v2[5];
  v19 = v2[6];
  v35 = v3[7];
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0;
  v21 = v6[21];
  *&v60[0] = 0;

  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a2 + 16) = v42;
  *a2 = v48;
  *(a2 + 8) = v33;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  v22 = (a2 + v6[19]);
  *v22 = v47;
  v22[1] = v34;

  *(a2 + 64) = v38;
  *(a2 + 80) = v39;
  *(a2 + 96) = v49;
  v23 = *(a2 + 136);
  v60[1] = *(a2 + 120);
  v60[2] = v23;
  v24 = *(a2 + 168);
  v60[3] = *(a2 + 152);
  v60[4] = v24;
  v60[0] = *(a2 + 104);
  sub_1A824B2D4(v60, &qword_1EB2E6F58, &qword_1A8501388);
  v25 = v55;
  *(a2 + 120) = v56;
  v26 = v58;
  *(a2 + 136) = v57;
  *(a2 + 152) = v26;
  *(a2 + 168) = v59;
  *(a2 + 104) = v25;
  v27 = (a2 + v6[12]);
  *v27 = v52;
  v27[1] = v40;
  v28 = (a2 + v6[13]);
  *v28 = v54;
  v28[1] = v53;
  v29 = (a2 + v6[14]);
  *v29 = v50;
  v29[1] = v41;
  v30 = (a2 + v6[15]);
  *v30 = v51;
  v30[1] = v43;
  sub_1A83F5918(v54, v53);
  (*(*(v15 - 8) + 8))(a2 + v21, v15);
  sub_1A84E5B8C();
  result = sub_1A84E594C();
  *(a2 + v6[16]) = v44;
  *(a2 + v6[17]) = v46;
  *(a2 + v6[18]) = v45;
  *(a2 + v6[20]) = v32;
  *(a2 + 24) = v37;
  *(a2 + 32) = v18;
  *(a2 + 56) = v35;
  return result;
}