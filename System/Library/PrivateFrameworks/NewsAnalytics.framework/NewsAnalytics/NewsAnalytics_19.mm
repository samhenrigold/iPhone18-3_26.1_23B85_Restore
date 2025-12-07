uint64_t sub_217C76924(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_217D89CEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_217D8970C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_217C76AEC(v7, v8, a1, v4);
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
    return sub_217C76A1C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217C76A1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_217D89D4C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217C76AEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_217C7737C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_217C770C8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_217D89D4C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_217D89D4C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217B5B528(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_217B5B528((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_217C770C8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_217C7737C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_217C772F0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_217D89D4C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_217C770C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_217D89D4C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_217D89D4C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_217C772F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_217C7737C(v3);
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

char *sub_217C77390(char *result, int64_t a2, char a3, char *a4)
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
    sub_217A536AC(0, &qword_27CBA0320, sub_217B5B718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

NewsAnalytics::BannerAdPlacementType_optional __swiftcall BannerAdPlacementType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BannerAdPlacementType.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 1684366694;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217C77568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v8 = 1684366694;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217C7765C()
{
  result = qword_27CBA2FB8;
  if (!qword_27CBA2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FB8);
  }

  return result;
}

uint64_t sub_217C776B0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C7774C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C777D4(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C77878(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C6369747261;
  if (v2 != 1)
  {
    v5 = 1684366694;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217C77990()
{
  result = qword_27CBA2FC0;
  if (!qword_27CBA2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FC0);
  }

  return result;
}

NewsAnalytics::StartMethod_optional __swiftcall StartMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t StartMethod.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x6163696669746F6ELL;
    v8 = 0x636573726170;
    if (v1 != 10)
    {
      v8 = 0x6553697261666173;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000020;
    v10 = 0x6867696C746F7073;
    if (v1 != 7)
    {
      v10 = 0x66666F646E6168;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD000000000000011;
    v4 = 0x6465725069726973;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6469577961646F74;
    if (v1 != 1)
    {
      v5 = 0x6C616E7265747865;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_217C77BF8()
{
  started = StartMethod.rawValue.getter();
  v2 = v1;
  if (started == StartMethod.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217C77C98()
{
  result = qword_27CBA2FC8;
  if (!qword_27CBA2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2FC8);
  }

  return result;
}

uint64_t sub_217C77CEC()
{
  sub_217D89E1C();
  StartMethod.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C77D54(uint64_t a1)
{
  StartMethod.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217C77DB8(uint64_t a1)
{
  sub_217D89E1C();
  StartMethod.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217C77E28@<X0>(unint64_t *a1@<X8>)
{
  result = StartMethod.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217C77F10()
{
  result = qword_2811C7B80[0];
  if (!qword_2811C7B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C7B80);
  }

  return result;
}

uint64_t sub_217C7802C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3000);
  __swift_project_value_buffer(v0, qword_27CBA3000);
  return sub_217D8866C();
}

uint64_t FeedLoadFailureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedLoadFailureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 20);
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.feedConfigData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 24);
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.feedConfigData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 24);
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 28);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 32);
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 32);
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 36);
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedLoadFailureEvent.errorData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedLoadFailureEvent(0) + 36);
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedLoadFailureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  FailureEvent = type metadata accessor for FeedLoadFailureEvent(0);
  v5 = FailureEvent[5];
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = FailureEvent[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = FailureEvent[7];
  sub_217A608E0(0);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = FailureEvent[8];
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = FailureEvent[9];
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t FeedLoadFailureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedLoadFailureEvent.Model.feedConfigData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_217C78CA8(v4, v5);
}

uint64_t sub_217C78CA8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_217C78CE8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 28);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedLoadFailureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedLoadFailureEvent.Model.errorData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedLoadFailureEvent.Model(0) + 36);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
}

__n128 FeedLoadFailureEvent.Model.init(eventData:feedData:feedConfigData:timedData:viewData:errorData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *(a3 + 4);
  v14 = *(a3 + 5);
  v15 = a5[1];
  v16 = *(a5 + 8);
  v30 = a6[1];
  v31 = *a6;
  v28 = *a5;
  v29 = *(a6 + 4);
  v17 = sub_217D8899C();
  v26 = a3[1];
  v27 = *a3;
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  v19 = a7 + Failure[5];
  *v19 = v10;
  *(v19 + 8) = v12;
  *(v19 + 16) = v11;
  v20 = a7 + Failure[6];
  *v20 = v27;
  *(v20 + 16) = v26;
  *(v20 + 32) = v13;
  *(v20 + 40) = v14;
  v21 = Failure[7];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a7 + v21, a4, v22);
  v23 = a7 + Failure[8];
  *v23 = v28;
  *(v23 + 8) = v15;
  *(v23 + 16) = v16;
  v24 = a7 + Failure[9];
  result = v30;
  *v24 = v31;
  *(v24 + 16) = v30;
  *(v24 + 32) = v29;
  return result;
}

uint64_t sub_217C78F84()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x74614464656D6974;
  v4 = 0x6174614477656976;
  if (v1 != 4)
  {
    v4 = 0x746144726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614464656566;
  if (v1 != 1)
  {
    v5 = 0x666E6F4364656566;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217C79048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C7A31C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C79070(uint64_t a1)
{
  v2 = sub_217C794EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C790AC(uint64_t a1)
{
  v2 = sub_217C794EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedLoadFailureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C79BF8(0, &qword_27CBA3018, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C794EC();
  sub_217D89E7C();
  LOBYTE(v28) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
    v11 = v3 + Failure[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v28) = *v11;
    *&v29 = v12;
    *(&v29 + 1) = v13;
    v33 = 1;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + Failure[6]);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    v28 = *v14;
    *&v29 = v15;
    *(&v29 + 1) = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = 2;
    sub_217C78CA8(v28, v15);
    sub_217A6088C();
    sub_217D89C3C();
    sub_217C79540(v28, v29);
    LOBYTE(v28) = 3;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v21 = v3 + Failure[8];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOWORD(v21) = *(v21 + 16);
    v28 = v22;
    *&v29 = v23;
    WORD4(v29) = v21;
    v33 = 4;
    sub_217A5E790();

    sub_217D89CAC();

    v24 = v3 + Failure[9];
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);
    v28 = *v24;
    v29 = *(v24 + 8);
    v30 = v25;
    v31 = v26;
    v33 = 5;
    sub_217A60BE4();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C794EC()
{
  result = qword_27CBA3020;
  if (!qword_27CBA3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3020);
  }

  return result;
}

uint64_t sub_217C79540(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t FeedLoadFailureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_217D889CC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C79BF8(0, &qword_27CBA3028, MEMORY[0x277D844C8]);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  MEMORY[0x28223BE20](Failure);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C794EC();
  v37 = v10;
  v14 = v38;
  sub_217D89E5C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v5;
  v39[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v33 + 32))(v13, v36, v6);
  v41 = 1;
  sub_217A5B978();
  sub_217D89BCC();
  v29 = v6;
  v16 = &v13[Failure[5]];
  *v16 = v39[0];
  *(v16 + 8) = *&v39[8];
  v41 = 2;
  sub_217A60838();
  v38 = 0;
  sub_217D89B5C();
  v17 = v34;
  v18 = &v13[Failure[6]];
  v19 = *&v39[16];
  *v18 = *v39;
  *(v18 + 1) = v19;
  *(v18 + 2) = v40;
  v39[0] = 3;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v20 = v32;
  sub_217D89BCC();
  (*(v31 + 32))(&v13[Failure[7]], v15, v20);
  v41 = 4;
  sub_217A5E738();
  v21 = v35;
  sub_217D89BCC();
  v22 = *&v39[8];
  v23 = *&v39[16];
  v24 = &v13[Failure[8]];
  *v24 = *v39;
  *(v24 + 1) = v22;
  *(v24 + 8) = v23;
  v41 = 5;
  sub_217A60B90();
  sub_217D89BCC();
  (*(v17 + 8))(v37, v21);
  v25 = v40;
  v26 = &v13[Failure[9]];
  v27 = *&v39[16];
  *v26 = *v39;
  *(v26 + 1) = v27;
  *(v26 + 4) = v25;
  sub_217C79C5C(v13, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C79CC0(v13);
}

void sub_217C79BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C794EC();
    v7 = a3(a1, &type metadata for FeedLoadFailureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C79C5C(uint64_t a1, uint64_t a2)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 16))(a2, a1, Failure);
  return a2;
}

uint64_t sub_217C79CC0(uint64_t a1)
{
  Failure = type metadata accessor for FeedLoadFailureEvent.Model(0);
  (*(*(Failure - 8) + 8))(a1, Failure);
  return a1;
}

uint64_t sub_217C79DF4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A60648(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217A60648(0, &qword_2811C8728, sub_217A60838, sub_217A6088C, &type metadata for FeedConfigData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217A608E0(0);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217A60648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217A60648(0, &qword_2811C84D0, sub_217A60B90, sub_217A60BE4, &type metadata for ErrorData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217C7A0F8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217C7A1B4();
    if (v2 <= 0x3F)
    {
      sub_217D889CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C7A1B4()
{
  if (!qword_27CBA3040)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3040);
    }
  }
}

unint64_t sub_217C7A218()
{
  result = qword_27CBA3048;
  if (!qword_27CBA3048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3048);
  }

  return result;
}

unint64_t sub_217C7A270()
{
  result = qword_27CBA3050;
  if (!qword_27CBA3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3050);
  }

  return result;
}

unint64_t sub_217C7A2C8()
{
  result = qword_27CBA3058;
  if (!qword_27CBA3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3058);
  }

  return result;
}

uint64_t sub_217C7A31C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E6F4364656566 && a2 == 0xEE00617461446769 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144726F727265 && a2 == 0xE900000000000061)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217C7A5F8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C1460);
  __swift_project_value_buffer(v0, qword_2811C1460);
  return sub_217D8866C();
}

uint64_t FeedGapExpansionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedGapExpansionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 24);
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGapExpansionEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 24);
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 28);
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGapExpansionEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 28);
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.feedJournalEntryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 32);
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8, &type metadata for FeedJournalEntryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedGapExpansionEvent.feedJournalEntryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedGapExpansionEvent(0) + 32);
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8, &type metadata for FeedJournalEntryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedGapExpansionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedGapExpansionEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8, &type metadata for FeedJournalEntryData);
  v14 = *(*(v13 - 8) + 104);

  return v14(a1 + v11, v12, v13);
}

uint64_t sub_217C7AFC8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedGapExpansionEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedGapExpansionEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedGapExpansionEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedGapExpansionEvent.Model(0) + 28));
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
  return sub_217AF7618(v17, &v16);
}

uint64_t FeedGapExpansionEvent.Model.feedJournalEntryData.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for FeedGapExpansionEvent.Model(0) + 32));
}

__n128 FeedGapExpansionEvent.Model.init(eventData:timedData:feedData:groupData:feedJournalEntryData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = *a5;
  v14 = a5[1];
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  v17 = v16[5];
  v18 = sub_217D889CC();
  (*(*(v18 - 8) + 32))(a6 + v17, a2, v18);
  v19 = a6 + v16[6];
  *v19 = v10;
  *(v19 + 8) = v11;
  *(v19 + 16) = v12;
  v20 = a6 + v16[7];
  v21 = *(a4 + 112);
  *(v20 + 96) = *(a4 + 96);
  *(v20 + 112) = v21;
  *(v20 + 128) = *(a4 + 128);
  v22 = *(a4 + 48);
  *(v20 + 32) = *(a4 + 32);
  *(v20 + 48) = v22;
  v23 = *(a4 + 80);
  *(v20 + 64) = *(a4 + 64);
  *(v20 + 80) = v23;
  result = *(a4 + 16);
  *v20 = *a4;
  *(v20 + 16) = result;
  v25 = (a6 + v16[8]);
  *v25 = v13;
  v25[1] = v14;
  return result;
}

uint64_t sub_217C7B2CC()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6174614464656566;
  v4 = 0x74614470756F7267;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217C7B368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C7C748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C7B390(uint64_t a1)
{
  v2 = sub_217C7B7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7B3CC(uint64_t a1)
{
  v2 = sub_217C7B7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedGapExpansionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C7BF38(0, &qword_27CBA3060, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7B7F0();
  sub_217D89E7C();
  LOBYTE(v38) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedGapExpansionEvent.Model(0);
    LOBYTE(v38) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + v10[6];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v48[0] = *v11;
    v49 = v12;
    v50 = v13;
    v47 = 2;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[7]);
    v15 = v14[6];
    v16 = v14[4];
    v43 = v14[5];
    v44 = v15;
    v17 = v14[6];
    v18 = v14[8];
    v45 = v14[7];
    v46 = v18;
    v19 = v14[2];
    v20 = *v14;
    v39 = v14[1];
    v40 = v19;
    v21 = v14[2];
    v22 = v14[4];
    v41 = v14[3];
    v42 = v22;
    v23 = *v14;
    v35 = v17;
    v36 = v45;
    v37 = v14[8];
    v38 = v23;
    v31 = v21;
    v32 = v41;
    v33 = v16;
    v34 = v43;
    v29 = v20;
    v30 = v39;
    v28 = 3;
    sub_217AF7618(&v38, v27);
    sub_217A5D3B4();
    sub_217D89CAC();
    v27[7] = v36;
    v27[8] = v37;
    v27[2] = v31;
    v27[3] = v32;
    v27[5] = v34;
    v27[6] = v35;
    v27[4] = v33;
    v27[0] = v29;
    v27[1] = v30;
    sub_217AF8104(v27);
    v26 = *(v3 + v10[8]);
    v25[15] = 4;
    sub_217B8C7E8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C7B7F0()
{
  result = qword_27CBA3068;
  if (!qword_27CBA3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3068);
  }

  return result;
}

uint64_t FeedGapExpansionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = sub_217D889CC();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v34 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_217C7BF38(0, &qword_27CBA3070, MEMORY[0x277D844C8]);
  v35 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7B7F0();
  v33 = v9;
  v13 = v47;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v12;
  v16 = v32;
  v17 = v30;
  v39[0] = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v18 = *(v29 + 32);
  v47 = v5;
  v18(v15, v34, v5);
  v39[0] = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  v19 = v31;
  v34 = v10;
  (*(v16 + 32))(v15 + *(v10 + 20), v14, v17);
  LOBYTE(v37) = 2;
  sub_217A5B978();
  sub_217D89BCC();
  v20 = v15 + v34[6];
  *v20 = v39[0];
  *(v20 + 8) = *&v39[8];
  v38 = 3;
  sub_217A5D308();
  sub_217D89BCC();
  v21 = (v15 + v34[7]);
  v22 = v45;
  v21[6] = v44;
  v21[7] = v22;
  v21[8] = v46;
  v23 = v41;
  v21[2] = v40;
  v21[3] = v23;
  v24 = v43;
  v21[4] = v42;
  v21[5] = v24;
  v25 = *&v39[16];
  *v21 = *v39;
  v21[1] = v25;
  v36 = 4;
  sub_217B8C790();
  sub_217D89B5C();
  (*(v19 + 8))(v33, v35);
  *(v15 + v34[8]) = v37;
  sub_217C7BF9C(v15, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C7C000(v15);
}

void sub_217C7BF38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7B7F0();
    v7 = a3(a1, &type metadata for FeedGapExpansionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C7BF9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C7C000(uint64_t a1)
{
  v2 = type metadata accessor for FeedGapExpansionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C7C134@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A606C4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A606C4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217A606C4(0, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8, &type metadata for FeedJournalEntryData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a2 + v12, v13, v14);
}

void sub_217C7C390(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217A606C4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A606C4(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A606C4(319, &qword_2811C85E8, sub_217B8C790, sub_217B8C7E8, &type metadata for FeedJournalEntryData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_217C7C52C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217C7C5E0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C7C5E0()
{
  if (!qword_27CBA3088)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA3088);
    }
  }
}

unint64_t sub_217C7C644()
{
  result = qword_27CBA3090;
  if (!qword_27CBA3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3090);
  }

  return result;
}

unint64_t sub_217C7C69C()
{
  result = qword_27CBA3098;
  if (!qword_27CBA3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3098);
  }

  return result;
}

unint64_t sub_217C7C6F4()
{
  result = qword_27CBA30A0;
  if (!qword_27CBA30A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30A0);
  }

  return result;
}

uint64_t sub_217C7C748(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD16E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t AudioUpsellVariantData.preferredUpsellVariantID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AudioUpsellVariantData.preferredUpsellVariantID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C7C9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x8000000217DD1700 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217C7CA58(uint64_t a1)
{
  v2 = sub_217C7CC1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7CA94(uint64_t a1)
{
  v2 = sub_217C7CC1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioUpsellVariantData.encode(to:)(void *a1)
{
  sub_217C7CDF4(0, &qword_27CBA30A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7CC1C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C7CC1C()
{
  result = qword_27CBA30B0;
  if (!qword_27CBA30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30B0);
  }

  return result;
}

uint64_t AudioUpsellVariantData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C7CDF4(0, &qword_27CBA30B8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7CC1C();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7CDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7CC1C();
    v7 = a3(a1, &type metadata for AudioUpsellVariantData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C7CE5C()
{
  result = qword_27CBA30C0;
  if (!qword_27CBA30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30C0);
  }

  return result;
}

unint64_t sub_217C7CEB4()
{
  result = qword_27CBA30C8;
  if (!qword_27CBA30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30C8);
  }

  return result;
}

uint64_t sub_217C7CF20(void *a1)
{
  sub_217C7CDF4(0, &qword_27CBA30A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7CC1C();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C7D090()
{
  result = qword_27CBA30D0;
  if (!qword_27CBA30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30D0);
  }

  return result;
}

unint64_t sub_217C7D0E8()
{
  result = qword_27CBA30D8;
  if (!qword_27CBA30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30D8);
  }

  return result;
}

unint64_t sub_217C7D140()
{
  result = qword_27CBA30E0;
  if (!qword_27CBA30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30E0);
  }

  return result;
}

void __swiftcall ArticleExposureContextData.init(surfacedByTopicID:surfacedByChannelID:surfacedByArticleListIDs:)(NewsAnalytics::ArticleExposureContextData *__return_ptr retstr, Swift::String_optional surfacedByTopicID, Swift::String_optional surfacedByChannelID, Swift::OpaquePointer_optional surfacedByArticleListIDs)
{
  retstr->surfacedByTopicID = surfacedByTopicID;
  retstr->surfacedByChannelID = surfacedByChannelID;
  retstr->surfacedByArticleListIDs.value._rawValue = surfacedByArticleListIDs.value._rawValue;
}

uint64_t ArticleExposureContextData.surfacedByTopicID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleExposureContextData.surfacedByTopicID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArticleExposureContextData.surfacedByChannelID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArticleExposureContextData.surfacedByChannelID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArticleExposureContextData.surfacedByArticleListIDs.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t sub_217C7D310()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_217C7D368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C7DB1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C7D390(uint64_t a1)
{
  v2 = sub_217C7D608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7D3CC(uint64_t a1)
{
  v2 = sub_217C7D608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleExposureContextData.encode(to:)(void *a1)
{
  sub_217C7D90C(0, &qword_2811BC598, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = v1[2];
  v14 = v1[3];
  v15 = v8;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7D608();
  sub_217D89E7C();
  v20 = 0;
  v9 = v16;
  sub_217D89C0C();
  if (!v9)
  {
    v10 = v13;
    v19 = 1;
    sub_217D89C0C();
    v17 = v10;
    v18 = 2;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C7D608()
{
  result = qword_2811BF148;
  if (!qword_2811BF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF148);
  }

  return result;
}

uint64_t ArticleExposureContextData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C7D90C(0, &qword_2811BC950, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7D608();
  sub_217D89E5C();
  if (!v2)
  {
    v24 = 0;
    v10 = sub_217D89B2C();
    v13 = v12;
    v20 = v10;
    v23 = 1;
    v14 = sub_217D89B2C();
    v16 = v15;
    v19 = v14;
    sub_217A55F8C();
    v22 = 2;
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89B5C();
    (*(v7 + 8))(v9, v6);
    v17 = v21;
    *a2 = v20;
    a2[1] = v13;
    a2[2] = v19;
    a2[3] = v16;
    a2[4] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7D90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7D608();
    v7 = a3(a1, &type metadata for ArticleExposureContextData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C7D9A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

unint64_t sub_217C7DA18()
{
  result = qword_27CBA30E8;
  if (!qword_27CBA30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30E8);
  }

  return result;
}

unint64_t sub_217C7DA70()
{
  result = qword_2811BF138;
  if (!qword_2811BF138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF138);
  }

  return result;
}

unint64_t sub_217C7DAC8()
{
  result = qword_2811BF140;
  if (!qword_2811BF140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF140);
  }

  return result;
}

uint64_t sub_217C7DB1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000217DD1720 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCFC40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DD1740 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_217D89D4C();

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

NewsAnalytics::BadgeOriginationType_optional __swiftcall BadgeOriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeOriginationType.rawValue.getter()
{
  v1 = 1937204590;
  if (*v0 != 1)
  {
    v1 = 0x7972756372656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217C7DD10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1937204590;
  if (v2 != 1)
  {
    v4 = 0x7972756372656DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1937204590;
  if (*a2 != 1)
  {
    v8 = 0x7972756372656DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217C7DE08()
{
  result = qword_27CBA30F0;
  if (!qword_27CBA30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30F0);
  }

  return result;
}

uint64_t sub_217C7DE5C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C7DEF8(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C7DF80(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t WindowData.frame.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WindowData.frame.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C7E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D617266 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C7E1C4(uint64_t a1)
{
  v2 = sub_217C7E388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7E200(uint64_t a1)
{
  v2 = sub_217C7E388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WindowData.encode(to:)(void *a1)
{
  sub_217C7E560(0, &qword_2811BC878, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7E388();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C7E388()
{
  result = qword_2811C7E60;
  if (!qword_2811C7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E60);
  }

  return result;
}

uint64_t WindowData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C7E560(0, &qword_2811BCB58, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7E388();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7E560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7E388();
    v7 = a3(a1, &type metadata for WindowData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C7E5DC(void *a1)
{
  sub_217C7E560(0, &qword_2811BC878, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7E388();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C7E74C()
{
  result = qword_27CBA30F8;
  if (!qword_27CBA30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA30F8);
  }

  return result;
}

unint64_t sub_217C7E7A4()
{
  result = qword_2811C7E50;
  if (!qword_2811C7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E50);
  }

  return result;
}

unint64_t sub_217C7E7FC()
{
  result = qword_2811C7E58;
  if (!qword_2811C7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E58);
  }

  return result;
}

uint64_t MediaEngagementCompletedData.init(mediaTimePlayed:mediaPlayLocation:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_217C7E8D0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6D6954616964656DLL;
  }
}

uint64_t sub_217C7E91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1760 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217C7EA08(uint64_t a1)
{
  v2 = sub_217C7EC18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7EA44(uint64_t a1)
{
  v2 = sub_217C7EC18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementCompletedData.encode(to:)(void *a1)
{
  sub_217C7EE8C(0, &qword_27CBA3100, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7EC18();
  sub_217D89E7C();
  v14 = 0;
  sub_217D89CCC();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_217C7EC6C();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C7EC18()
{
  result = qword_27CBA3108;
  if (!qword_27CBA3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3108);
  }

  return result;
}

unint64_t sub_217C7EC6C()
{
  result = qword_27CBA3110;
  if (!qword_27CBA3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3110);
  }

  return result;
}

uint64_t MediaEngagementCompletedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C7EE8C(0, &qword_27CBA3118, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7EC18();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_217D89BEC();
    v14 = 1;
    sub_217C7EEF0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C7EE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7EC18();
    v7 = a3(a1, &type metadata for MediaEngagementCompletedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C7EEF0()
{
  result = qword_27CBA3120;
  if (!qword_27CBA3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaEngagementCompletedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEngagementCompletedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217C7F028()
{
  result = qword_27CBA3128;
  if (!qword_27CBA3128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3128);
  }

  return result;
}

unint64_t sub_217C7F080()
{
  result = qword_27CBA3130;
  if (!qword_27CBA3130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3130);
  }

  return result;
}

unint64_t sub_217C7F0D8()
{
  result = qword_27CBA3138;
  if (!qword_27CBA3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3138);
  }

  return result;
}

uint64_t sub_217C7F1F4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3170);
  __swift_project_value_buffer(v0, qword_27CBA3170);
  return sub_217D8866C();
}

uint64_t ReportAConcernEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReportAConcernEvent.concernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C, &type metadata for ConcernData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C7F3F8()
{
  result = qword_27CBA3190;
  if (!qword_27CBA3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3190);
  }

  return result;
}

unint64_t sub_217C7F44C()
{
  result = qword_27CBA3198;
  if (!qword_27CBA3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3198);
  }

  return result;
}

uint64_t ReportAConcernEvent.concernData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C, &type metadata for ConcernData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAConcernEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C7F650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ReportAConcernEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReportAConcernEvent(0) + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReportAConcernEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ReportAConcernEvent(0);
  v5 = *(v4 + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C, &type metadata for ConcernData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t ReportAConcernEvent.Model.concernData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReportAConcernEvent.Model(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t ReportAConcernEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReportAConcernEvent.Model(0) + 24);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

__n128 ReportAConcernEvent.Model.init(eventData:concernData:articleData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = sub_217D8899C();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  v11 = type metadata accessor for ReportAConcernEvent.Model(0);
  v12 = a4 + *(v11 + 20);
  *v12 = v7;
  *(v12 + 8) = v8;
  *(v12 + 16) = v9;
  v13 = a4 + *(v11 + 24);
  v14 = *(a3 + 112);
  *(v13 + 96) = *(a3 + 96);
  *(v13 + 112) = v14;
  *(v13 + 127) = *(a3 + 127);
  v15 = *(a3 + 48);
  *(v13 + 32) = *(a3 + 32);
  *(v13 + 48) = v15;
  v16 = *(a3 + 80);
  *(v13 + 64) = *(a3 + 64);
  *(v13 + 80) = v16;
  result = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = result;
  return result;
}

uint64_t sub_217C7FB30()
{
  v1 = 0x446E7265636E6F63;
  if (*v0 != 1)
  {
    v1 = 0x44656C6369747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217C7FBA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C80A14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C7FBC8(uint64_t a1)
{
  v2 = sub_217C7FF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C7FC04(uint64_t a1)
{
  v2 = sub_217C7FF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportAConcernEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C803B0(0, &qword_27CBA31A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7FF1C();
  sub_217D89E7C();
  LOBYTE(v35[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ReportAConcernEvent.Model(0);
    v11 = v3 + *(v10 + 20);
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v43[0] = *v11;
    v44 = v12;
    v45 = v13;
    v42 = 1;
    sub_217C7F44C();

    sub_217D89CAC();

    v14 = v3 + *(v10 + 24);
    v15 = *(v14 + 80);
    v16 = *(v14 + 112);
    v40 = *(v14 + 96);
    *v41 = v16;
    v17 = *(v14 + 16);
    v18 = *(v14 + 48);
    v36 = *(v14 + 32);
    v37 = v18;
    v19 = *(v14 + 48);
    v20 = *(v14 + 80);
    v38 = *(v14 + 64);
    v39 = v20;
    v21 = *(v14 + 16);
    v35[0] = *v14;
    v35[1] = v21;
    v22 = *(v14 + 112);
    v33 = v40;
    v34[0] = v22;
    v29 = v36;
    v30 = v19;
    v31 = v38;
    v32 = v15;
    *&v41[15] = *(v14 + 127);
    *(v34 + 15) = *(v14 + 127);
    v27 = v35[0];
    v28 = v17;
    v26 = 2;
    sub_217AD1630(v35, v24);
    sub_217ACF52C();
    sub_217D89CAC();
    v24[6] = v33;
    *v25 = v34[0];
    *&v25[15] = *(v34 + 15);
    v24[2] = v29;
    v24[3] = v30;
    v24[4] = v31;
    v24[5] = v32;
    v24[0] = v27;
    v24[1] = v28;
    sub_217AD2864(v24);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C7FF1C()
{
  result = qword_27CBA31A8;
  if (!qword_27CBA31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31A8);
  }

  return result;
}

uint64_t ReportAConcernEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_217D8899C();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C803B0(0, &qword_27CBA31B0, MEMORY[0x277D844C8]);
  v30 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ReportAConcernEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C7FF1C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v28;
  v25 = v9;
  v26 = v11;
  v13 = v29;
  v32[0] = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v30;
  sub_217D89BCC();
  (*(v13 + 32))(v26, v5, v31);
  v39 = 1;
  sub_217C7F3F8();
  sub_217D89BCC();
  v15 = v25;
  v16 = &v26[*(v25 + 20)];
  *v16 = v32[0];
  *(v16 + 8) = *&v32[8];
  v39 = 2;
  sub_217ACF4D8();
  sub_217D89BCC();
  (*(v12 + 8))(v8, v14);
  v17 = v26;
  v18 = &v26[*(v15 + 24)];
  v19 = v38[0];
  *(v18 + 6) = v37;
  *(v18 + 7) = v19;
  *(v18 + 127) = *(v38 + 15);
  v20 = v34;
  *(v18 + 2) = v33;
  *(v18 + 3) = v20;
  v21 = v36;
  *(v18 + 4) = v35;
  *(v18 + 5) = v21;
  v22 = *&v32[16];
  *v18 = *v32;
  *(v18 + 1) = v22;
  sub_217C80414(v17, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C80478(v17);
}

void sub_217C803B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C7FF1C();
    v7 = a3(a1, &type metadata for ReportAConcernEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C80414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportAConcernEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C80478(uint64_t a1)
{
  v2 = type metadata accessor for ReportAConcernEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C805AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217C7F650(0, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C, &type metadata for ConcernData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217C7F650(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C80744(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C7F650(319, &qword_27CBA3188, sub_217C7F3F8, sub_217C7F44C, &type metadata for ConcernData);
    if (v2 <= 0x3F)
    {
      sub_217C7F650(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C80878(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C80910()
{
  result = qword_27CBA31D8;
  if (!qword_27CBA31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31D8);
  }

  return result;
}

unint64_t sub_217C80968()
{
  result = qword_27CBA31E0;
  if (!qword_27CBA31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31E0);
  }

  return result;
}

unint64_t sub_217C809C0()
{
  result = qword_27CBA31E8;
  if (!qword_27CBA31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31E8);
  }

  return result;
}

uint64_t sub_217C80A14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x446E7265636E6F63 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t sub_217C80B8C(uint64_t a1)
{
  v2 = sub_217C80D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C80BC8(uint64_t a1)
{
  v2 = sub_217C80D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailShareUserActionData.encode(to:)(void *a1)
{
  sub_217C80FA0(0, &qword_27CBA31F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C80D60();
  sub_217D89E7C();
  v11 = v8;
  sub_217C80DB4();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C80D60()
{
  result = qword_27CBA31F8;
  if (!qword_27CBA31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA31F8);
  }

  return result;
}

unint64_t sub_217C80DB4()
{
  result = qword_27CBA3200;
  if (!qword_27CBA3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3200);
  }

  return result;
}

uint64_t EmailShareUserActionData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C80FA0(0, &qword_27CBA3208, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C80D60();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C81004();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C80FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C80D60();
    v7 = a3(a1, &type metadata for EmailShareUserActionData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C81004()
{
  result = qword_27CBA3210;
  if (!qword_27CBA3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3210);
  }

  return result;
}

unint64_t sub_217C8105C()
{
  result = qword_27CBA3218;
  if (!qword_27CBA3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3218);
  }

  return result;
}

unint64_t sub_217C810B4()
{
  result = qword_27CBA3220;
  if (!qword_27CBA3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3220);
  }

  return result;
}

unint64_t sub_217C8115C()
{
  result = qword_27CBA3228;
  if (!qword_27CBA3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3228);
  }

  return result;
}

unint64_t sub_217C811B4()
{
  result = qword_27CBA3230;
  if (!qword_27CBA3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3230);
  }

  return result;
}

unint64_t sub_217C8120C()
{
  result = qword_27CBA3238;
  if (!qword_27CBA3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3238);
  }

  return result;
}

uint64_t RecipeScienceData.rapidUpdatePersonalizationData.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RecipeScienceData.rapidUpdatePersonalizationData.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::RecipeScienceData __swiftcall RecipeScienceData.init(personalizationScore:rapidUpdatePersonalizationData:)(Swift::Double personalizationScore, Swift::String_optional rapidUpdatePersonalizationData)
{
  *v2 = personalizationScore;
  *(v2 + 8) = rapidUpdatePersonalizationData;
  result.rapidUpdatePersonalizationData = rapidUpdatePersonalizationData;
  result.personalizationScore = personalizationScore;
  return result;
}

unint64_t sub_217C8132C()
{
  if (*v0)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_217C8136C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD1780 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217C81450(uint64_t a1)
{
  v2 = sub_217C81650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8148C(uint64_t a1)
{
  v2 = sub_217C81650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeScienceData.encode(to:)(void *a1)
{
  sub_217C81880(0, &qword_2811BC6E8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v10 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C81650();
  sub_217D89E7C();
  v12 = 0;
  sub_217D89C8C();
  if (!v2)
  {
    v11 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C81650()
{
  result = qword_2811C4388[0];
  if (!qword_2811C4388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4388);
  }

  return result;
}

uint64_t RecipeScienceData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217C81880(0, &qword_27CBA3240, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C81650();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16[15] = 0;
  sub_217D89BAC();
  v11 = v10;
  v16[14] = 1;
  v12 = sub_217D89B2C();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C81880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C81650();
    v7 = a3(a1, &type metadata for RecipeScienceData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C818E8()
{
  result = qword_2811C4368;
  if (!qword_2811C4368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4368);
  }

  return result;
}

unint64_t sub_217C81940()
{
  result = qword_2811C4370;
  if (!qword_2811C4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4370);
  }

  return result;
}

unint64_t sub_217C819E8()
{
  result = qword_27CBA3248;
  if (!qword_27CBA3248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3248);
  }

  return result;
}

unint64_t sub_217C81A40()
{
  result = qword_2811C4378;
  if (!qword_2811C4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4378);
  }

  return result;
}

unint64_t sub_217C81A98()
{
  result = qword_2811C4380;
  if (!qword_2811C4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4380);
  }

  return result;
}

NewsAnalytics::SubscriptionOrigin_optional __swiftcall SubscriptionOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubscriptionOrigin.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x65726F7473707061;
  if (*v0 != 2)
  {
    v2 = 6448503;
  }

  if (*v0)
  {
    v1 = 1937204590;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217C81BC4()
{
  result = qword_27CBA3250;
  if (!qword_27CBA3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3250);
  }

  return result;
}

uint64_t sub_217C81C18()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C81CCC(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C81D6C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C81E28(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x65726F7473707061;
  if (*v1 != 2)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  if (*v1)
  {
    v3 = 1937204590;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217C81F58()
{
  result = qword_2811C2E30;
  if (!qword_2811C2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E30);
  }

  return result;
}

char *sub_217C81FC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v48 = a4;
  v49 = a8;
  v51 = a5;
  v47 = a3;
  v54 = sub_217D87A4C();
  v11 = *(v54 - 8);
  v12 = MEMORY[0x28223BE20](v54);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v45 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v50 = &v45 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - v21;
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v52 = a1;
  v55 = v24;
  v56 = v23;

  MEMORY[0x21CEACC70](a6, a7);
  sub_217D8959C();

  sub_217D87A1C();

  v25 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_217B5ABE8((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v29 = *(v11 + 32);
  v28 = v11 + 32;
  v30 = (*(v28 + 48) + 32) & ~*(v28 + 48);
  v31 = *(v28 + 40);
  v32 = &v25[v30 + v31 * v27];
  v33 = v22;
  v34 = v29;
  v35 = v54;
  v29(v32, v33, v54);
  sub_217D87A1C();
  v37 = *(v25 + 2);
  v36 = *(v25 + 3);
  if (v37 >= v36 >> 1)
  {
    v25 = sub_217B5ABE8((v36 > 1), v37 + 1, 1, v25);
  }

  *(v25 + 2) = v37 + 1;
  v34(&v25[v30 + v37 * v31], v20, v35);
  if (v51 == 1)
  {
    v38 = v53;
  }

  else
  {
    v49(v47, v48);
    v38 = v53;
    if (v39)
    {
      sub_217D87A1C();

      v41 = *(v25 + 2);
      v40 = *(v25 + 3);
      if (v41 >= v40 >> 1)
      {
        v25 = sub_217B5ABE8((v40 > 1), v41 + 1, 1, v25);
      }

      *(v25 + 2) = v41 + 1;
      v34(&v25[v30 + v41 * v31], v50, v35);
    }
  }

  if (*(v52 + 32))
  {
    if (*(v52 + 32) == 1)
    {
      v38 = v46;
    }

    sub_217D87A1C();
    v43 = *(v25 + 2);
    v42 = *(v25 + 3);
    if (v43 >= v42 >> 1)
    {
      v25 = sub_217B5ABE8((v42 > 1), v43 + 1, 1, v25);
    }

    *(v25 + 2) = v43 + 1;
    v34(&v25[v30 + v43 * v31], v38, v35);
  }

  return v25;
}

void sub_217C8241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a3;
  v46 = a2;
  v45 = sub_217D87A4C();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArticleViewEvent.Model(0);
  MEMORY[0x28223BE20](v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C82A54(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217D881AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  sub_217BCC640(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if (v21)
  {
    v22(v11, 0, 1, v17);
    (*(v18 + 32))(v20, v11, v17);
    v23 = sub_217D8816C();
    v24 = v55;
    v25 = sub_217D887BC();
    if (v24)
    {
      (*(v18 + 8))(v20, v17);
    }

    else
    {
      v27 = v25;
      v28 = v26;

      sub_217D8796C();
      swift_allocObject();
      sub_217D8795C();
      sub_217C82AAC(&qword_2811C59B8, type metadata accessor for ArticleViewEvent.Model, &protocol conformance descriptor for ArticleViewEvent.Model);
      sub_217D8794C();
      v55 = v28;

      sub_217D87A1C();
      v29 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
      v31 = v29[2];
      v30 = v29[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v43 = v31 + 1;
        v42 = sub_217B5ABE8((v30 > 1), v31 + 1, 1, v29);
        v32 = v43;
        v29 = v42;
      }

      v29[2] = v32;
      (*(v44 + 32))(v29 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31, v48, v45);
      v50 = v29;
      v33 = v49;
      v34 = &v49[v7[7]];
      *(v52 + 15) = *(v34 + 127);
      v35 = *(v34 + 7);
      v51[6] = *(v34 + 6);
      v52[0] = v35;
      v36 = *(v34 + 5);
      v51[4] = *(v34 + 4);
      v51[5] = v36;
      v37 = *(v34 + 3);
      v51[2] = *(v34 + 2);
      v51[3] = v37;
      v38 = *v34;
      v51[1] = *(v34 + 1);
      v51[0] = v38;
      v39 = &v49[v7[20]];
      v40 = *(v39 + 1);
      v53[0] = *v39;
      v53[1] = v40;
      v54 = *(v39 + 4);
      v41 = sub_217C81FC4(v51, v53, *&v49[v7[10]], *&v49[v7[10] + 8], *&v49[v7[10] + 16], v46, v47, sub_217C3294C);
      sub_217B0E7A0(v41);
      sub_217AE010C(v27, v55);
      sub_217C82AF4(v33, type metadata accessor for ArticleViewEvent.Model);
      (*(v18 + 8))(v20, v17);
    }
  }

  else
  {
    v22(v11, 1, 1, v17);
    sub_217C82AF4(v11, sub_217C82A54);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_217C82A54(uint64_t a1)
{
  if (!qword_2811C88F8)
  {
    sub_217BCC640(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2811C88F8);
    }
  }
}

uint64_t sub_217C82AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217C82AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217C82BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6570795464656566 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C82C54(uint64_t a1)
{
  v2 = sub_217C82E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C82C90(uint64_t a1)
{
  v2 = sub_217C82E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdFeedData.encode(to:)(void *a1)
{
  sub_217C83014(0, &qword_2811BC8B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C82E28();
  sub_217D89E7C();
  v11 = v8;
  sub_217B72604();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C82E28()
{
  result = qword_2811C8040;
  if (!qword_2811C8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8040);
  }

  return result;
}

uint64_t AdFeedData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C83014(0, &qword_27CBA3258, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C82E28();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217B728A4();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C83014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C82E28();
    v7 = a3(a1, &type metadata for AdFeedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FeedType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C831FC()
{
  result = qword_27CBA3260;
  if (!qword_27CBA3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3260);
  }

  return result;
}

unint64_t sub_217C83254()
{
  result = qword_2811C8030;
  if (!qword_2811C8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8030);
  }

  return result;
}

unint64_t sub_217C832AC()
{
  result = qword_2811C8038;
  if (!qword_2811C8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C8038);
  }

  return result;
}

uint64_t ANFComponentData.metadata.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ANFComponentData.metadata.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ANFComponentData.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ANFComponentData.type.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ANFComponentData.id.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ANFComponentData.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ANFComponentData.role.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ANFComponentData.role.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall ANFComponentData.init(metadata:type:id:role:)(NewsAnalytics::ANFComponentData *__return_ptr retstr, Swift::String metadata, Swift::String type, Swift::String id, Swift::String role)
{
  retstr->metadata = metadata;
  retstr->type = type;
  retstr->id = id;
  retstr->role = role;
}

uint64_t sub_217C8353C()
{
  v1 = 0x617461646174656DLL;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 1701605234;
  }

  if (*v0)
  {
    v1 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217C83598@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C83D9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C835C0(uint64_t a1)
{
  v2 = sub_217C83818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C835FC(uint64_t a1)
{
  v2 = sub_217C83818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ANFComponentData.encode(to:)(void *a1)
{
  sub_217C83B70(0, &qword_2811BC728, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = v1[2];
  v13[5] = v1[3];
  v13[6] = v8;
  v9 = v1[4];
  v13[3] = v1[5];
  v13[4] = v9;
  v10 = v1[6];
  v13[1] = v1[7];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C83818();
  sub_217D89E7C();
  v17 = 0;
  v11 = v13[7];
  sub_217D89C6C();
  if (!v11)
  {
    v16 = 1;
    sub_217D89C6C();
    v15 = 2;
    sub_217D89C6C();
    v14 = 3;
    sub_217D89C6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C83818()
{
  result = qword_2811C5E68[0];
  if (!qword_2811C5E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C5E68);
  }

  return result;
}

uint64_t ANFComponentData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C83B70(0, &qword_27CBA3268, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C83818();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v10 = sub_217D89B8C();
  v28 = v11;
  LOBYTE(v33[0]) = 1;
  v12 = sub_217D89B8C();
  v27 = v13;
  v25 = v12;
  LOBYTE(v33[0]) = 2;
  v24 = sub_217D89B8C();
  v26 = v14;
  v34 = 3;
  v15 = sub_217D89B8C();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v18 = v28;
  *&v29 = v10;
  *(&v29 + 1) = v28;
  v20 = v25;
  v19 = v26;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  *&v32 = v15;
  *(&v32 + 1) = v17;
  v21 = v30;
  *a2 = v29;
  a2[1] = v21;
  v22 = v32;
  a2[2] = v31;
  a2[3] = v22;
  sub_217C83BD4(&v29, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v10;
  v33[1] = v18;
  v33[2] = v20;
  v33[3] = v27;
  v33[4] = v24;
  v33[5] = v19;
  v33[6] = v15;
  v33[7] = v17;
  return sub_217C83C0C(v33);
}

void sub_217C83B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C83818();
    v7 = a3(a1, &type metadata for ANFComponentData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C83C98()
{
  result = qword_27CBA3270;
  if (!qword_27CBA3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3270);
  }

  return result;
}

unint64_t sub_217C83CF0()
{
  result = qword_2811C5E58;
  if (!qword_2811C5E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E58);
  }

  return result;
}

unint64_t sub_217C83D48()
{
  result = qword_2811C5E60;
  if (!qword_2811C5E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5E60);
  }

  return result;
}

uint64_t sub_217C83D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217C83EF8()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA3278);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3278);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217C83FE4()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA3290);
  v1 = __swift_project_value_buffer(v0, qword_27CBA3290);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217C840A4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA32A8);
  __swift_project_value_buffer(v0, qword_27CBA32A8);
  return sub_217D8866C();
}

uint64_t InterstitialAdImpressionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t InterstitialAdImpressionEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 24);
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 28);
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InterstitialAdImpressionEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 32);
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.adFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 36);
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C848A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t InterstitialAdImpressionEvent.adFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InterstitialAdImpressionEvent(0) + 36);
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InterstitialAdImpressionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for InterstitialAdImpressionEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v13, v14, v15);
}

uint64_t sub_217C84D18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t InterstitialAdImpressionEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 24));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t InterstitialAdImpressionEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InterstitialAdImpressionEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InterstitialAdImpressionEvent.Model.adFeedData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 InterstitialAdImpressionEvent.Model.init(eventData:timedData:adUserData:userBundleSubscriptionContextData:adPlacementData:adFeedData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = *a5;
  v14 = a5[1];
  v15 = *a6;
  v16 = sub_217D8899C();
  (*(*(v16 - 8) + 32))(a7, a1, v16);
  v17 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  v18 = v17[5];
  v19 = sub_217D889CC();
  (*(*(v19 - 8) + 32))(a7 + v18, a2, v19);
  v20 = (a7 + v17[6]);
  *v20 = v11;
  v20[1] = v12;
  v21 = a7 + v17[7];
  v22 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v22;
  result = *(a4 + 32);
  *(v21 + 32) = result;
  *(v21 + 48) = *(a4 + 48);
  v24 = (a7 + v17[8]);
  *v24 = v13;
  v24[1] = v14;
  *(a7 + v17[9]) = v15;
  return result;
}

unint64_t sub_217C85010()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0x6D6563616C506461;
  if (v1 != 4)
  {
    v4 = 0x6144646565466461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614464656D6974;
  if (v1 != 1)
  {
    v5 = 0x6144726573556461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217C850E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C86598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C8510C(uint64_t a1)
{
  v2 = sub_217C855AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C85148(uint64_t a1)
{
  v2 = sub_217C855AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InterstitialAdImpressionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C85CBC(0, &qword_27CBA32C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C855AC();
  sub_217D89E7C();
  LOBYTE(v31[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
    LOBYTE(v31[0]) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v34 = *v11;
    v35 = v12;
    v33 = 2;
    sub_217A586D4();

    sub_217D89CAC();

    v13 = (v3 + v10[7]);
    v14 = v13[1];
    v31[0] = *v13;
    v31[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v31[2] = v13[2];
    v32 = *(v13 + 48);
    v27 = v16;
    v28 = v15;
    v29 = v13[2];
    v30 = *(v13 + 48);
    v26 = 3;
    sub_217ACC004(v31, v24);
    sub_217A55B98();
    sub_217D89CAC();
    v24[0] = v27;
    v24[1] = v28;
    v24[2] = v29;
    v25 = v30;
    sub_217ACC69C(v24);
    v17 = (v3 + v10[8]);
    v18 = v17[1];
    v22 = *v17;
    v23 = v18;
    v21 = 4;
    sub_217B3CE84();

    sub_217D89CAC();

    LOBYTE(v22) = *(v3 + v10[9]);
    v21 = 5;
    sub_217A5BFF4();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C855AC()
{
  result = qword_27CBA32C8;
  if (!qword_27CBA32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA32C8);
  }

  return result;
}

uint64_t InterstitialAdImpressionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_217D889CC();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C85CBC(0, &qword_27CBA32D0, MEMORY[0x277D844C8]);
  v34 = v7;
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C855AC();
  v33 = v9;
  v13 = v35;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v15 = v30;
  LOBYTE(v38) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v16 = *(v29 + 32);
  v35 = v5;
  v16(v12, v32, v5);
  LOBYTE(v38) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  sub_217D89BCC();
  (*(v28 + 32))(&v12[v10[5]], v14, v15);
  LOBYTE(v36) = 2;
  sub_217A5867C();
  v32 = 0;
  sub_217D89BCC();
  v17 = a1;
  v18 = *(&v38 + 1);
  v19 = &v12[v10[6]];
  *v19 = v38;
  *(v19 + 1) = v18;
  v43 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v20 = v31;
  v21 = &v12[v10[7]];
  v22 = v39;
  *v21 = v38;
  *(v21 + 1) = v22;
  *(v21 + 2) = v40;
  v21[48] = v41;
  v42 = 4;
  sub_217B3CE30();
  sub_217D89BCC();
  v23 = v37;
  v24 = &v12[v10[8]];
  *v24 = v36;
  *(v24 + 1) = v23;
  v42 = 5;
  sub_217A5BD70();
  sub_217D89B5C();
  (*(v20 + 8))(v33, v34);
  v12[v10[9]] = v36;
  sub_217C85D20(v12, v27);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_217C85D84(v12);
}

void sub_217C85CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C855AC();
    v7 = a3(a1, &type metadata for InterstitialAdImpressionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C85D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C85D84(uint64_t a1)
{
  v2 = type metadata accessor for InterstitialAdImpressionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C85EB8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C848A8(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C848A8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C848A8(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217C848A8(0, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v14, v15, v16);
}

void sub_217C8618C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217C848A8(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
      if (v3 <= 0x3F)
      {
        sub_217C848A8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217C848A8(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
          if (v5 <= 0x3F)
          {
            sub_217C848A8(319, &qword_2811C8840, sub_217A5BD70, sub_217A5BFF4, &type metadata for AdFeedData);
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

void sub_217C86378(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217C86430();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_217C86430()
{
  if (!qword_27CB9FD68)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB9FD68);
    }
  }
}

unint64_t sub_217C86494()
{
  result = qword_27CBA32F8;
  if (!qword_27CBA32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA32F8);
  }

  return result;
}

unint64_t sub_217C864EC()
{
  result = qword_27CBA3300;
  if (!qword_27CBA3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3300);
  }

  return result;
}

unint64_t sub_217C86544()
{
  result = qword_27CBA3308;
  if (!qword_27CBA3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3308);
  }

  return result;
}

uint64_t sub_217C86598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144646565466461 && a2 == 0xEA00000000006174)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217C86828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614C656C7A7A7570 && a2 == 0xEC00000074756F79)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C868B4(uint64_t a1)
{
  v2 = sub_217C86A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C868F0(uint64_t a1)
{
  v2 = sub_217C86A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PuzzleLayoutData.encode(to:)(void *a1)
{
  sub_217C86CC8(0, &qword_27CBA3310, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C86A88();
  sub_217D89E7C();
  v11 = v8;
  sub_217C86ADC();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C86A88()
{
  result = qword_27CBA3318;
  if (!qword_27CBA3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3318);
  }

  return result;
}

unint64_t sub_217C86ADC()
{
  result = qword_27CBA3320;
  if (!qword_27CBA3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3320);
  }

  return result;
}

uint64_t PuzzleLayoutData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C86CC8(0, &qword_27CBA3328, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C86A88();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C86D2C();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C86CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C86A88();
    v7 = a3(a1, &type metadata for PuzzleLayoutData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C86D2C()
{
  result = qword_27CBA3330;
  if (!qword_27CBA3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3330);
  }

  return result;
}

unint64_t sub_217C86DDC()
{
  result = qword_27CBA3338;
  if (!qword_27CBA3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3338);
  }

  return result;
}

unint64_t sub_217C86E34()
{
  result = qword_27CBA3340;
  if (!qword_27CBA3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3340);
  }

  return result;
}

unint64_t sub_217C86E8C()
{
  result = qword_27CBA3348;
  if (!qword_27CBA3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3348);
  }

  return result;
}

NewsAnalytics::NewsletterSubscriptionType_optional __swiftcall NewsletterSubscriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NewsletterSubscriptionType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x7474656C7377656ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 1701736302;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_217C86FC8()
{
  result = qword_27CBA3350;
  if (!qword_27CBA3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3350);
  }

  return result;
}

uint64_t sub_217C8701C()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C870E0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C87190(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C8725C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007265;
  v5 = 0x7474656C7377656ELL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000217DCB9E0;
  }

  if (*v1)
  {
    v3 = 1701736302;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217C8739C()
{
  result = qword_2811BEFB0;
  if (!qword_2811BEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEFB0);
  }

  return result;
}

uint64_t sub_217C87404()
{
  if (qword_2811C8C28 != -1)
  {
    swift_once();
  }

  sub_217C87724();
  sub_217D87DCC();
  if (v19 > 2u)
  {
    v1 = 0.5;
    v3 = 0.75;
    if (v19 != 4)
    {
      v3 = 1.0;
    }

    v2 = v19 == 3;
  }

  else
  {
    if (!v19)
    {
      v15 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
      if ([v15 respondsToSelector_])
      {
        v16 = [v15 sportsPrivacyConfiguration];
        swift_unknownObjectRelease();
        [v16 syncEventSamplingRate];
        v18 = v17;

        v4 = v18;
      }

      else
      {
        swift_unknownObjectRelease();
        v4 = 0.95;
      }

      goto LABEL_12;
    }

    v1 = 0.0;
    v2 = v19 == 1;
    v3 = 0.25;
  }

  if (v2)
  {
    v4 = v1;
  }

  else
  {
    v4 = v3;
  }

LABEL_12:
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  v5 = sub_217CFD498(0, 0, v4);
  sub_217A535B4();
  v6 = sub_217D898DC();
  v7 = sub_217D897FC();
  sub_217A67100(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_217D9CB60;
  v9 = v5 & 1;
  if (v9)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x21CEACC70](v10, v11);

  v12 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v13 = sub_217A62448();
  *(v8 + 64) = v13;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_217D8972C();
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xE000000000000000;
  sub_217D88E5C("Privacy sampler evinced result=%{public}@ for sampling rate: %{public}@", 71, 2, &dword_217A45000, v6, v7, v8);

  return v9;
}

uint64_t sub_217C876BC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_217C87724()
{
  result = qword_2811BE298[0];
  if (!qword_2811BE298[0])
  {
    type metadata accessor for SportsSyncEventPrivacySampler();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BE298);
  }

  return result;
}

uint64_t sub_217C87840()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3358);
  __swift_project_value_buffer(v0, qword_27CBA3358);
  return sub_217D8866C();
}

uint64_t IssueExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 20);
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 20);
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 28);
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 28);
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 32);
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 32);
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.issueScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 36);
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.issueScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 36);
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 40);
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 40);
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 44);
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 44);
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.issueExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 48);
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.issueExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 48);
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 52);
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 52);
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 56);
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 56);
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 60);
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C88A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t IssueExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueExposureEvent(0) + 60);
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueExposureEvent(0);
  v5 = v4[5];
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A608E0(0);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v10, v21);
  v22 = v4[13];
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v2, v27);
}

uint64_t IssueExposureEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t sub_217C89234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t IssueExposureEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t IssueExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 32));
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
  return sub_217AD87FC(v17, &v16);
}

uint64_t IssueExposureEvent.Model.issueScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for IssueExposureEvent.Model(0) + 36);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t IssueExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t IssueExposureEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IssueExposureEvent.Model(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t IssueExposureEvent.Model.issueExposureContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IssueExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueExposureEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

uint64_t IssueExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for IssueExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t IssueExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IssueExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

__n128 IssueExposureEvent.Model.init(eventData:issueData:timedData:feedData:groupData:issueScienceData:channelData:userChannelContextData:issueExposureContextData:userBundleSubscriptionContextData:feedPositionData:offlineModeData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, const void *a6@<X5>, uint64_t *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, int *a12, char *a13)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  v19 = *(a2 + 17);
  v20 = a2[3];
  v39 = *a4;
  v21 = *(a4 + 2);
  v46 = *a7;
  v45 = a7[1];
  v44 = *(a7 + 16);
  v43 = *(a7 + 17);
  v42 = a7[3];
  v41 = a7[4];
  v49 = *a8;
  v48 = a8[1];
  v47 = *(a8 + 1);
  v50 = a10[1];
  v51 = *a10;
  v53 = *a12;
  v54 = *a13;
  v22 = sub_217D8899C();
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for IssueExposureEvent.Model(0);
  v24 = a9 + v23[5];
  *v24 = v16;
  *(v24 + 8) = v17;
  *(v24 + 16) = v18;
  *(v24 + 17) = v19;
  *(v24 + 24) = v20;
  v25 = v23[6];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a3, v26);
  v27 = a9 + v23[7];
  *v27 = v39;
  *(v27 + 16) = v21;
  v28 = (a9 + v23[8]);
  v29 = a5[7];
  v28[6] = a5[6];
  v28[7] = v29;
  v28[8] = a5[8];
  v30 = a5[3];
  v28[2] = a5[2];
  v28[3] = v30;
  v31 = a5[5];
  v28[4] = a5[4];
  v28[5] = v31;
  v32 = a5[1];
  *v28 = *a5;
  v28[1] = v32;
  memcpy((a9 + v23[9]), a6, 0x111uLL);
  v33 = a9 + v23[10];
  *v33 = v46;
  *(v33 + 8) = v45;
  *(v33 + 16) = v44;
  *(v33 + 17) = v43;
  *(v33 + 24) = v42;
  *(v33 + 32) = v41;
  v34 = a9 + v23[11];
  *v34 = v49;
  *(v34 + 1) = v48;
  *(v34 + 2) = v47;
  v35 = (a9 + v23[12]);
  *v35 = v51;
  v35[1] = v50;
  v36 = a9 + v23[13];
  v37 = *(a11 + 16);
  *v36 = *a11;
  *(v36 + 16) = v37;
  result = *(a11 + 32);
  *(v36 + 32) = result;
  *(v36 + 48) = *(a11 + 48);
  *(a9 + v23[14]) = v53;
  *(a9 + v23[15]) = v54;
  return result;
}

unint64_t sub_217C89828(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000021;
    v7 = 0x4D656E696C66666FLL;
    if (a1 == 10)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000018;
    if (a1 == 7)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 == 6)
    {
      v8 = 0x446C656E6E616863;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6174614464656566;
    v3 = 0x74614470756F7267;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7461446575737369;
    if (a1 != 1)
    {
      v4 = 0x74614464656D6974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217C899C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C8BB60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C899EC(uint64_t a1)
{
  v2 = sub_217C8A23C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C89A28(uint64_t a1)
{
  v2 = sub_217C8A23C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C8AD98(0, &qword_27CBA3370, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8A23C();
  sub_217D89E7C();
  LOBYTE(v64[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v80 = type metadata accessor for IssueExposureEvent.Model(0);
    v10 = v3 + v80[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 17);
    v14 = *(v10 + 24);
    v64[0] = *v10;
    v64[1] = v11;
    LOBYTE(v64[2]) = v12;
    BYTE1(v64[2]) = v13;
    v64[3] = v14;
    v62[0] = 1;
    sub_217ACFF94();

    sub_217D89CAC();

    LOBYTE(v64[0]) = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v15 = (v3 + v80[7]);
    v16 = v15[1];
    v17 = v15[2];
    v77 = *v15;
    v78 = v16;
    v79 = v17;
    v76 = 3;
    sub_217AD1A68(v77, v16, v17);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v77, v78, v79);
    v18 = (v3 + v80[8]);
    v19 = v18[4];
    v75[5] = v18[5];
    v20 = v18[5];
    v75[6] = v18[6];
    v21 = v18[6];
    v75[7] = v18[7];
    v22 = v18[7];
    v75[8] = v18[8];
    v23 = *v18;
    v75[1] = v18[1];
    v24 = v18[1];
    v75[2] = v18[2];
    v25 = v18[2];
    v75[3] = v18[3];
    v26 = v18[3];
    v75[4] = v18[4];
    v75[0] = *v18;
    v71 = v20;
    v72 = v21;
    v73 = v22;
    v74 = v18[8];
    v67 = v24;
    v68 = v25;
    v69 = v26;
    v70 = v19;
    v66 = v23;
    v65 = 4;
    sub_217AD87FC(v75, v64);
    sub_217A5D3B4();
    sub_217D89C3C();
    v63[6] = v72;
    v63[7] = v73;
    v63[8] = v74;
    v63[2] = v68;
    v63[3] = v69;
    v63[4] = v70;
    v63[5] = v71;
    v63[0] = v66;
    v63[1] = v67;
    sub_217AD96E8(v63);
    v27 = v80[9];
    memcpy(v64, (v3 + v27), 0x111uLL);
    memcpy(v62, (v3 + v27), sizeof(v62));
    v61[279] = 5;
    sub_217AD1744(v64, v61);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v61, v62, 0x111uLL);
    sub_217AD28B8(v61);
    v29 = v3 + v80[10];
    v30 = *(v29 + 8);
    v31 = *(v29 + 16);
    v32 = *(v29 + 17);
    v33 = *(v29 + 24);
    v34 = *(v29 + 32);
    *&v54 = *v29;
    *(&v54 + 1) = v30;
    LOBYTE(v55) = v31;
    BYTE1(v55) = v32;
    *(&v55 + 1) = v33;
    *&v56 = v34;
    LOBYTE(v50) = 6;
    sub_217AD084C();

    sub_217D89CAC();

    v35 = (v3 + v80[11]);
    v36 = *v35;
    v37 = v35[1];
    LOWORD(v35) = *(v35 + 1);
    LOBYTE(v54) = v36;
    BYTE1(v54) = v37;
    WORD1(v54) = v35;
    LOBYTE(v50) = 7;
    sub_217ACFB8C();
    sub_217D89CAC();
    v38 = (v3 + v80[12]);
    v39 = v38[1];
    v59 = *v38;
    v60 = v39;
    v58 = 8;
    sub_217AD0444();

    sub_217D89C3C();

    v40 = (v3 + v80[13]);
    v41 = v40[1];
    v54 = *v40;
    v55 = v41;
    v43 = *v40;
    v42 = v40[1];
    v56 = v40[2];
    v57 = *(v40 + 48);
    v50 = v43;
    v51 = v42;
    v52 = v40[2];
    v53 = *(v40 + 48);
    v49 = 9;
    sub_217ACC004(&v54, v47);
    sub_217A55B98();
    sub_217D89CAC();
    v47[0] = v50;
    v47[1] = v51;
    v47[2] = v52;
    v48 = v53;
    sub_217ACC69C(v47);
    v46 = *(v3 + v80[14]);
    v45 = 10;
    sub_217AD7710();
    sub_217D89CAC();
    LOBYTE(v46) = *(v3 + v80[15]);
    v45 = 11;
    sub_217ACA390();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C8A23C()
{
  result = qword_2811C32C8;
  if (!qword_2811C32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C32C8);
  }

  return result;
}

uint64_t IssueExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_217D889CC();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C8AD98(0, &qword_2811BCA28, MEMORY[0x277D844C8]);
  v57 = v8;
  v55 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v49 - v9;
  v11 = type metadata accessor for IssueExposureEvent.Model(0);
  MEMORY[0x28223BE20](v11);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_217C8A23C();
  v58 = v10;
  v15 = v59;
  sub_217D89E5C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v16 = v5;
  v17 = v55;
  v50 = v11;
  v59 = v13;
  LOBYTE(v78[0]) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  v18 = v56;
  sub_217D89BCC();
  v19 = v6;
  v20 = *(v54 + 32);
  v21 = v59;
  v56 = v19;
  v20(v59, v18);
  LOBYTE(v69) = 1;
  sub_217ACFF40();
  sub_217D89BCC();
  v49[1] = 0;
  v22 = *(&v78[0] + 1);
  v23 = v78[1];
  v24 = BYTE1(v78[1]);
  v25 = *(&v78[1] + 1);
  v26 = &v21[v50[5]];
  *v26 = *&v78[0];
  *(v26 + 1) = v22;
  v26[16] = v23;
  v26[17] = v24;
  *(v26 + 3) = v25;
  LOBYTE(v78[0]) = 2;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v27 = v53;
  sub_217D89BCC();
  (*(v52 + 32))(&v21[v50[6]], v16, v27);
  LOBYTE(v69) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v28 = *&v78[1];
  v29 = &v21[v50[7]];
  *v29 = v78[0];
  *(v29 + 2) = v28;
  v68 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v30 = &v21[v50[8]];
  v31 = v76;
  *(v30 + 6) = v75;
  *(v30 + 7) = v31;
  *(v30 + 8) = v77;
  v32 = v72;
  *(v30 + 2) = v71;
  *(v30 + 3) = v32;
  v33 = v74;
  *(v30 + 4) = v73;
  *(v30 + 5) = v33;
  v34 = v70;
  *v30 = v69;
  *(v30 + 1) = v34;
  v67 = 5;
  sub_217ACF8E0();
  sub_217D89BCC();
  memcpy(&v21[v50[9]], v78, 0x111uLL);
  LOBYTE(v61) = 6;
  sub_217AD07F8();
  sub_217D89BCC();
  v35 = *(&v63 + 1);
  v36 = v64;
  v37 = BYTE1(v64);
  v38 = *(&v64 + 1);
  v39 = v65;
  v40 = &v21[v50[10]];
  *v40 = v63;
  *(v40 + 1) = v35;
  v40[16] = v36;
  v40[17] = v37;
  *(v40 + 3) = v38;
  *(v40 + 4) = v39;
  LOBYTE(v61) = 7;
  sub_217ACFB38();
  sub_217D89BCC();
  v41 = BYTE1(v63);
  v42 = WORD1(v63);
  v43 = &v21[v50[11]];
  *v43 = v63;
  v43[1] = v41;
  *(v43 + 1) = v42;
  LOBYTE(v61) = 8;
  sub_217AD03F0();
  sub_217D89B5C();
  *&v59[v50[12]] = v63;
  v62 = 9;
  sub_217A54D08();
  sub_217D89BCC();
  v44 = &v59[v50[13]];
  v45 = v64;
  *v44 = v63;
  *(v44 + 1) = v45;
  *(v44 + 2) = v65;
  v44[48] = v66;
  v60 = 10;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v59[v50[14]] = v61;
  v60 = 11;
  sub_217ACA338();
  sub_217D89BCC();
  (*(v17 + 8))(v58, v57);
  v46 = v51;
  v47 = v59;
  v59[v50[15]] = v61;
  sub_217C8ADFC(v47, v46);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return sub_217C8AE60(v47);
}

void sub_217C8AD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8A23C();
    v7 = a3(a1, &type metadata for IssueExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C8ADFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C8AE60(uint64_t a1)
{
  v2 = type metadata accessor for IssueExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C8AF94@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C88A64(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A608E0(0);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217C88A64(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217C88A64(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217C88A64(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C88A64(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C88A64(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217C88A64(0, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v11, v22);
  v23 = a1[13];
  sub_217C88A64(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C88A64(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217C88A64(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v29 = *(*(v28 - 8) + 104);

  return v29(a2 + v27, v4, v28);
}

void sub_217C8B540(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C88A64(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        sub_217C88A64(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217C88A64(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217C88A64(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
            if (v6 <= 0x3F)
            {
              sub_217C88A64(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
              if (v7 <= 0x3F)
              {
                sub_217C88A64(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                if (v8 <= 0x3F)
                {
                  sub_217C88A64(319, &qword_2811C8598, sub_217AD03F0, sub_217AD0444, &type metadata for IssueExposureContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C88A64(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C88A64(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C88A64(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

void sub_217C8B90C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BF960, &type metadata for IssueExposureContextData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217C8BA5C()
{
  result = qword_27CBA3378;
  if (!qword_27CBA3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3378);
  }

  return result;
}

unint64_t sub_217C8BAB4()
{
  result = qword_2811C32B8;
  if (!qword_2811C32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C32B8);
  }

  return result;
}

unint64_t sub_217C8BB0C()
{
  result = qword_2811C32C0;
  if (!qword_2811C32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C32C0);
  }

  return result;
}

uint64_t sub_217C8BB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1880 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCCCE0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t PurchaseRestoreData.purchaseID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurchaseRestoreData.purchaseID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::PurchaseRestoreData __swiftcall PurchaseRestoreData.init(purchaseID:isNewsAppPurchase:)(NewsAnalytics::PurchaseRestoreData purchaseID, Swift::Bool isNewsAppPurchase)
{
  *v2 = purchaseID.purchaseID;
  *(v2 + 16) = isNewsAppPurchase;
  purchaseID.isNewsAppPurchase = isNewsAppPurchase;
  return purchaseID;
}

uint64_t sub_217C8C008()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_217C8C04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616863727570 && a2 == 0xEA00000000004449;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD18A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217C8C138(uint64_t a1)
{
  v2 = sub_217C8C330();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8C174(uint64_t a1)
{
  v2 = sub_217C8C330();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PurchaseRestoreData.encode(to:)(void *a1)
{
  sub_217C8C574(0, &qword_27CBA3380, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8C330();
  sub_217D89E7C();
  v13 = 0;
  v8 = v10[1];
  sub_217D89C6C();
  if (!v8)
  {
    v12 = 1;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C8C330()
{
  result = qword_27CBA3388;
  if (!qword_27CBA3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3388);
  }

  return result;
}

uint64_t PurchaseRestoreData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C8C574(0, &qword_27CBA3390, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8C330();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17 = 1;
  v14 = sub_217D89B9C();
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8C574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8C330();
    v7 = a3(a1, &type metadata for PurchaseRestoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8C634()
{
  result = qword_27CBA3398;
  if (!qword_27CBA3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3398);
  }

  return result;
}

unint64_t sub_217C8C68C()
{
  result = qword_27CBA33A0;
  if (!qword_27CBA33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA33A0);
  }

  return result;
}

unint64_t sub_217C8C6E4()
{
  result = qword_27CBA33A8;
  if (!qword_27CBA33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA33A8);
  }

  return result;
}

uint64_t sub_217C8C800()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA33E0);
  __swift_project_value_buffer(v0, qword_27CBA33E0);
  return sub_217D8866C();
}

uint64_t AppReviewPromptRequestEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppReviewPromptRequestEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppReviewPromptRequestEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  sub_217B8A2C8(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppReviewPromptRequestEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for AppReviewPromptRequestEvent(0) + 20);
  sub_217B8A2C8(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t AppReviewPromptRequestEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

__n128 AppReviewPromptRequestEvent.Model.init(eventData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217D8899C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  result = *(a2 + 32);
  *(v7 + 32) = result;
  *(v7 + 48) = *(a2 + 48);
  return result;
}

uint64_t sub_217C8CC88(uint64_t a1)
{
  v2 = sub_217C8CF30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8CCC4(uint64_t a1)
{
  v2 = sub_217C8CF30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppReviewPromptRequestEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C8D2F0(0, &qword_27CBA33F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8CF30();
  sub_217D89E7C();
  v26 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for AppReviewPromptRequestEvent.Model(0) + 20));
    v11 = v10[2];
    v12 = *v10;
    v13 = *v10;
    v22 = v10[1];
    v23 = v11;
    v21 = v12;
    v24 = *(v10 + 48);
    v17 = v13;
    v18 = v22;
    v19 = v10[2];
    v20 = *(v10 + 48);
    v25 = 1;
    sub_217ACC004(&v21, v15);
    sub_217A55B98();
    sub_217D89CAC();
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v16 = v20;
    sub_217ACC69C(v15);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C8CF30()
{
  result = qword_27CBA3400;
  if (!qword_27CBA3400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3400);
  }

  return result;
}

uint64_t AppReviewPromptRequestEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_217D8899C();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C8D2F0(0, &qword_27CBA3408, MEMORY[0x277D844C8]);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8CF30();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v27;
  v16 = v25;
  sub_217D89BCC();
  (*(v14 + 32))(v13, v5, v15);
  v32 = 1;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v26 + 8))(v9, v16);
  v17 = v23;
  v18 = v13 + *(v22 + 20);
  v19 = v29;
  *v18 = v28;
  *(v18 + 16) = v19;
  *(v18 + 32) = v30;
  *(v18 + 48) = v31;
  sub_217C8D354(v13, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C8D3B8(v13);
}

void sub_217C8D2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8CF30();
    v7 = a3(a1, &type metadata for AppReviewPromptRequestEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C8D354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C8D3B8(uint64_t a1)
{
  v2 = type metadata accessor for AppReviewPromptRequestEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217C8D550()
{
  result = qword_27CBA3430;
  if (!qword_27CBA3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3430);
  }

  return result;
}

unint64_t sub_217C8D5A8()
{
  result = qword_27CBA3438;
  if (!qword_27CBA3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3438);
  }

  return result;
}

unint64_t sub_217C8D600()
{
  result = qword_27CBA3440;
  if (!qword_27CBA3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3440);
  }

  return result;
}

uint64_t sub_217C8D6E8(uint64_t a1)
{
  v2 = sub_217C8D8BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8D724(uint64_t a1)
{
  v2 = sub_217C8D8BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementPlacementOriginationData.encode(to:)(void *a1)
{
  sub_217C8DAFC(0, &qword_2811BC538, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8D8BC();
  sub_217D89E7C();
  v11 = v8;
  sub_217C8D910();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C8D8BC()
{
  result = qword_2811BDCC8;
  if (!qword_2811BDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCC8);
  }

  return result;
}

unint64_t sub_217C8D910()
{
  result = qword_2811BDCA0;
  if (!qword_2811BDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCA0);
  }

  return result;
}

uint64_t EngagementPlacementOriginationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C8DAFC(0, &qword_27CBA3448, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8D8BC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C8DB60();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8DAFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8D8BC();
    v7 = a3(a1, &type metadata for EngagementPlacementOriginationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8DB60()
{
  result = qword_27CBA3450;
  if (!qword_27CBA3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3450);
  }

  return result;
}

unint64_t sub_217C8DC10()
{
  result = qword_27CBA3458;
  if (!qword_27CBA3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3458);
  }

  return result;
}

unint64_t sub_217C8DC68()
{
  result = qword_2811BDCB8;
  if (!qword_2811BDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCB8);
  }

  return result;
}

unint64_t sub_217C8DCC0()
{
  result = qword_2811BDCC0;
  if (!qword_2811BDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BDCC0);
  }

  return result;
}

uint64_t ConcernData.subconcernContentType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ConcernData.subconcernContentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

NewsAnalytics::ConcernData __swiftcall ConcernData.init(concernContentType:subconcernContentType:)(NewsAnalytics::ArticleConcernContentType concernContentType, Swift::String_optional subconcernContentType)
{
  *v2 = *concernContentType;
  *(v2 + 8) = subconcernContentType;
  result.subconcernContentType = subconcernContentType;
  result.concernContentType = concernContentType;
  return result;
}

unint64_t sub_217C8DDEC()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_217C8DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DD1970 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD1990 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_217D89D4C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_217C8DF0C(uint64_t a1)
{
  v2 = sub_217C8E114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8DF48(uint64_t a1)
{
  v2 = sub_217C8E114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConcernData.encode(to:)(void *a1)
{
  sub_217C8E3A4(0, &qword_27CBA3460, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v12[0] = *(v1 + 2);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8E114();
  sub_217D89E7C();
  v15 = v9;
  v14 = 0;
  sub_217C8E168();
  sub_217D89CAC();
  if (!v2)
  {
    v13 = 1;
    sub_217D89C0C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217C8E114()
{
  result = qword_27CBA3468;
  if (!qword_27CBA3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3468);
  }

  return result;
}

unint64_t sub_217C8E168()
{
  result = qword_27CBA3470;
  if (!qword_27CBA3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3470);
  }

  return result;
}

uint64_t ConcernData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C8E3A4(0, &qword_27CBA3478, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8E114();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_217C8E408();
  sub_217D89BCC();
  v10 = v18;
  v16 = 1;
  v11 = sub_217D89B2C();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8E3A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8E114();
    v7 = a3(a1, &type metadata for ConcernData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8E408()
{
  result = qword_27CBA3480;
  if (!qword_27CBA3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3480);
  }

  return result;
}

unint64_t sub_217C8E4B8()
{
  result = qword_27CBA3488;
  if (!qword_27CBA3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3488);
  }

  return result;
}

unint64_t sub_217C8E510()
{
  result = qword_27CBA3490;
  if (!qword_27CBA3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3490);
  }

  return result;
}

unint64_t sub_217C8E568()
{
  result = qword_27CBA3498;
  if (!qword_27CBA3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3498);
  }

  return result;
}

uint64_t NotificationSettingsData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

NewsAnalytics::NotificationSettingsData __swiftcall NotificationSettingsData.init(tagIDs:isNewIssueNotificationEnabled:isMarketingNotificationEnabled:isDailyBriefingNotificationEnabled:isEmailNewsletterSwitchEnabled:isIssuesNewsletterOptinEnabled:isDigestModeEnabled:isPuzzlesNotificationEnabled:isSmartNotificationsEnabled:)(Swift::OpaquePointer tagIDs, Swift::Bool isNewIssueNotificationEnabled, Swift::Bool isMarketingNotificationEnabled, Swift::Bool isDailyBriefingNotificationEnabled, Swift::Bool isEmailNewsletterSwitchEnabled, Swift::Bool isIssuesNewsletterOptinEnabled, Swift::Bool_optional isDigestModeEnabled, Swift::Bool_optional isPuzzlesNotificationEnabled, Swift::Bool isSmartNotificationsEnabled)
{
  *v9 = tagIDs;
  *(v9 + 8) = isNewIssueNotificationEnabled;
  *(v9 + 9) = isMarketingNotificationEnabled;
  *(v9 + 10) = isDailyBriefingNotificationEnabled;
  *(v9 + 11) = isEmailNewsletterSwitchEnabled;
  *(v9 + 12) = isIssuesNewsletterOptinEnabled;
  *(v9 + 13) = isDigestModeEnabled;
  *(v9 + 14) = isPuzzlesNotificationEnabled;
  *(v9 + 15) = isSmartNotificationsEnabled;
  result.tagIDs = tagIDs;
  result.isNewIssueNotificationEnabled = isNewIssueNotificationEnabled;
  return result;
}

uint64_t sub_217C8E7C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C8ECD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C8E7EC(uint64_t a1)
{
  v2 = sub_217A55ACC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8E828(uint64_t a1)
{
  v2 = sub_217A55ACC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSettingsData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217A548F0(0, &qword_2811BC978, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A55ACC();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_217A55F8C();
  LOBYTE(v27) = 0;
  sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217D89BCC();
  v10 = v28;
  LOBYTE(v28) = 1;
  v11 = sub_217D89B9C();
  LOBYTE(v28) = 2;
  v37 = sub_217D89B9C();
  LOBYTE(v28) = 3;
  v26 = sub_217D89B9C();
  LOBYTE(v28) = 4;
  v25 = sub_217D89B9C();
  LOBYTE(v28) = 5;
  v24 = sub_217D89B9C();
  LOBYTE(v28) = 6;
  v23 = sub_217D89B3C();
  LOBYTE(v28) = 7;
  v22 = sub_217D89B3C();
  v38 = 8;
  v12 = sub_217D89B9C();
  v37 &= 1u;
  HIDWORD(v20) = v26 & 1;
  v21 = v11 & 1;
  v13 = v25 & 1;
  v26 = v25 & 1;
  LOBYTE(v24) = v24 & 1;
  v24 = v24;
  (*(v7 + 8))(v9, v6);
  v25 = v12 & 1;
  *&v27 = v10;
  v14 = BYTE4(v20);
  v15 = v21;
  BYTE8(v27) = v21;
  BYTE9(v27) = v37;
  BYTE10(v27) = BYTE4(v20);
  BYTE11(v27) = v13;
  v17 = v23;
  v16 = v24;
  BYTE12(v27) = v24;
  BYTE13(v27) = v23;
  v18 = v22;
  BYTE14(v27) = v22;
  HIBYTE(v27) = v25;
  *a2 = v27;
  sub_217A55A60(&v27, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28 = v10;
  v29 = v15;
  v30 = v37;
  v31 = v14;
  v32 = v26;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v25;
  return sub_217B9F32C(&v28);
}

unint64_t sub_217C8EC84()
{
  result = qword_27CBA34A0;
  if (!qword_27CBA34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34A0);
  }

  return result;
}

uint64_t sub_217C8ECD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x734449676174 && a2 == 0xE600000000000000;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD19B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD19D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217DD19F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD1A20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217DD1A40 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1A60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DD1A80 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD1AA0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t SearchData.searchString.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchData.searchString.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SearchData.filteredTagIds.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void __swiftcall SearchData.init(searchString:origination:filteredTagIds:)(NewsAnalytics::SearchData *__return_ptr retstr, Swift::String searchString, NewsAnalytics::SearchOriginationType origination, Swift::OpaquePointer_optional filteredTagIds)
{
  v4 = *origination;
  retstr->searchString = searchString;
  retstr->origination = v4;
  *(&retstr->filteredTagIds.value._rawValue + 7) = filteredTagIds.value._rawValue;
}

uint64_t sub_217C8F0E0()
{
  v1 = 0x74616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x64657265746C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7453686372616573;
  }
}

uint64_t sub_217C8F158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C8F968(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C8F180(uint64_t a1)
{
  v2 = sub_217C8F410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8F1BC(uint64_t a1)
{
  v2 = sub_217C8F410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchData.encode(to:)(void *a1)
{
  sub_217C8F750(0, &qword_27CBA34A8, MEMORY[0x277D84538]);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - v6;
  v15 = *(v1 + 16);
  v14[0] = *(v1 + 24);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_217C8F410();
  sub_217D89E7C();
  v19 = 0;
  sub_217D89C6C();
  if (!v2)
  {
    v12 = v14[0];
    v18 = v15;
    v17 = 1;
    sub_217C8F464();
    sub_217D89CAC();
    v14[1] = v12;
    v16 = 2;
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD48, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_217D89C3C();
  }

  return (*(v5 + 8))(v7, v11);
}

unint64_t sub_217C8F410()
{
  result = qword_27CBA34B0;
  if (!qword_27CBA34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34B0);
  }

  return result;
}

unint64_t sub_217C8F464()
{
  result = qword_27CBA34B8;
  if (!qword_27CBA34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34B8);
  }

  return result;
}

uint64_t SearchData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217C8F750(0, &qword_27CBA34C0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8F410();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v19 = 1;
  sub_217C8F7B4();
  sub_217D89BCC();
  v17 = v20;
  sub_217A55F8C();
  v18 = 2;
  sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_217D89B5C();
  (*(v7 + 8))(v9, v6);
  v15 = v16[1];
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8F750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8F410();
    v7 = a3(a1, &type metadata for SearchData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C8F7B4()
{
  result = qword_27CBA34C8;
  if (!qword_27CBA34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34C8);
  }

  return result;
}

unint64_t sub_217C8F864()
{
  result = qword_27CBA34D0;
  if (!qword_27CBA34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34D0);
  }

  return result;
}

unint64_t sub_217C8F8BC()
{
  result = qword_27CBA34D8;
  if (!qword_27CBA34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34D8);
  }

  return result;
}

unint64_t sub_217C8F914()
{
  result = qword_27CBA34E0;
  if (!qword_27CBA34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34E0);
  }

  return result;
}

uint64_t sub_217C8F968(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E696769726FLL && a2 == 0xEB000000006E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657265746C6966 && a2 == 0xEE00736449676154)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

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

uint64_t TagData.tagID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TagData.tagID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217C8FB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449676174 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217C8FBC0(uint64_t a1)
{
  v2 = sub_217C8FD84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C8FBFC(uint64_t a1)
{
  v2 = sub_217C8FD84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagData.encode(to:)(void *a1)
{
  sub_217C8FF5C(0, &qword_2811BC510, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8FD84();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C8FD84()
{
  result = qword_2811BD388;
  if (!qword_2811BD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD388);
  }

  return result;
}

uint64_t TagData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C8FF5C(0, &qword_2811BC900, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8FD84();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C8FF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C8FD84();
    v7 = a3(a1, &type metadata for TagData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C8FFE0(void *a1)
{
  sub_217C8FF5C(0, &qword_2811BC510, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C8FD84();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C90150()
{
  result = qword_27CBA34E8;
  if (!qword_27CBA34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34E8);
  }

  return result;
}

unint64_t sub_217C901A8()
{
  result = qword_2811BD378;
  if (!qword_2811BD378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD378);
  }

  return result;
}

unint64_t sub_217C90200()
{
  result = qword_2811BD380;
  if (!qword_2811BD380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD380);
  }

  return result;
}

uint64_t sub_217C902B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DD1AC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217C90344(uint64_t a1)
{
  v2 = sub_217C90504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C90380(uint64_t a1)
{
  v2 = sub_217C90504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppStateRestoreData.encode(to:)(void *a1)
{
  sub_217C906DC(0, &qword_2811BC698, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C90504();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C90504()
{
  result = qword_2811C2C58[0];
  if (!qword_2811C2C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C2C58);
  }

  return result;
}

uint64_t AppStateRestoreData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C906DC(0, &qword_2811BCA08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C90504();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B9C();
    (*(v7 + 8))(v9, v6);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C906DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C90504();
    v7 = a3(a1, &type metadata for AppStateRestoreData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C90760(void *a1)
{
  sub_217C906DC(0, &qword_2811BC698, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C90504();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217C908CC()
{
  result = qword_27CBA34F0;
  if (!qword_27CBA34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34F0);
  }

  return result;
}

unint64_t sub_217C90924()
{
  result = qword_2811C2C48;
  if (!qword_2811C2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C48);
  }

  return result;
}

unint64_t sub_217C9097C()
{
  result = qword_2811C2C50;
  if (!qword_2811C2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2C50);
  }

  return result;
}

uint64_t AutoSubscribedTagListData.tagIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217C90A34(uint64_t a1)
{
  v2 = sub_217A689C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C90A70(uint64_t a1)
{
  v2 = sub_217A689C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSubscribedTagListData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217A6894C(0, &qword_2811BC968, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A689C8();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A55F8C();
    sub_217A55FDC(&qword_2811BCD38, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217C90C74()
{
  result = qword_2811BF2C0;
  if (!qword_2811BF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF2C0);
  }

  return result;
}

unint64_t sub_217C90D08()
{
  result = qword_27CBA34F8;
  if (!qword_27CBA34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA34F8);
  }

  return result;
}

uint64_t sub_217C90D5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a4;
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  *(v11 + 48) = a5;
  *(v11 + 56) = a3;

  v12 = v9;
  v13 = a2;
  sub_217D8833C();
}

uint64_t sub_217C90E5C(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t, uint64_t), int a4, char *a5, int a6, uint64_t a7)
{
  v95 = a7;
  LODWORD(v93) = a6;
  v90 = a5;
  v89 = a4;
  v92 = a3;
  v99 = a2;
  v100 = a1;
  sub_217AE03C8(0);
  v97 = *(v7 - 8);
  v98 = v7;
  MEMORY[0x28223BE20](v7);
  v96 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x277D83D88];
  sub_217C91C04(0, &qword_2811C8C68, MEMORY[0x277CC9698], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v79[-v11];
  v84 = sub_217D87D4C();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = sub_217D87D6C();
  v86 = *(v87 - 8);
  v13 = MEMORY[0x28223BE20](v87);
  v85 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v79[-v15];
  sub_217C91C04(0, &unk_2811C8C70, MEMORY[0x277CC9640], v9);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v79[-v18];
  v20 = sub_217D87C9C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v79[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_217D87D9C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v79[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = type metadata accessor for SessionData(0);
  v28 = MEMORY[0x28223BE20](v94);
  v91 = &v79[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v31 = &v79[-v30];
  sub_217D87D8C();
  sub_217D87C8C();
  v32 = sub_217D87D7C();
  (*(v21 + 8))(v23, v20);
  result = (*(v25 + 8))(v27, v24);
  if (v32 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v81 = v32;
  sub_217D87D2C();
  v34 = v82;
  sub_217D87D5C();
  v35 = *(v86 + 8);
  v36 = v87;
  v35(v16, v87);
  sub_217D87D3C();
  (*(v83 + 1))(v34, v84);
  v37 = sub_217D87CEC();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v19, 1, v37) == 1)
  {
    sub_217C91B44(v19, &unk_2811C8C70, MEMORY[0x277CC9640]);
    v86 = 0;
    v84 = 0;
  }

  else
  {
    v86 = sub_217D87CDC();
    v84 = v39;
    (*(v38 + 8))(v19, v37);
  }

  v40 = v85;
  sub_217D87D2C();
  v41 = v88;
  sub_217D87D1C();
  v35(v40, v36);
  v42 = sub_217D87D0C();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_217C91B44(v41, &qword_2811C8C68, MEMORY[0x277CC9698]);
    v87 = 0;
    v85 = 0;
  }

  else
  {
    v87 = sub_217D87CDC();
    v85 = v44;
    (*(v43 + 8))(v41, v42);
  }

  v45 = [objc_opt_self() sharedAccount];
  v46 = [v45 isUserSignedInToiCloud];

  if (v46)
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

  LODWORD(v88) = v47;
  v48 = *(v99 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_cloudContext);
  v49 = v99;
  v50 = [v48 appConfigurationManager];
  swift_getObjectType();
  v83 = FCNewsAppConfigurationManager.treatmentIDs.getter();
  swift_unknownObjectRelease();
  v51 = [v48 appConfigurationManager];
  swift_getObjectType();
  v82 = FCNewsAppConfigurationManager.segmentSetIDs.getter();
  swift_unknownObjectRelease();
  v80 = NFStoreDemoMode();
  v52 = (v89 - 3) < 2;
  LOBYTE(v48) = sub_217D8853C();
  v53 = [v90 authorizationStatus] == 2;
  v54 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
  v55 = [v54 personalizedAds];

  v56 = (v49 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider);
  v58 = *(v49 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider + 24);
  v57 = *(v49 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_aggregateStateModeProvider + 32);
  __swift_project_boxed_opaque_existential_1(v56, v58);
  (*(v57 + 8))(v102, v58, v57);
  LOBYTE(v57) = v102[0];
  v59 = v94;
  v60 = *(v94 + 64);
  LOBYTE(v101[0]) = 2;
  sub_217D886EC();
  v61 = *(v59 + 72);
  v31[v61] = 3;
  *v31 = v81;
  v62 = v84;
  *(v31 + 1) = v86;
  *(v31 + 2) = v62;
  v63 = v85;
  *(v31 + 3) = v87;
  *(v31 + 4) = v63;
  v31[40] = v88;
  strcpy(v31 + 48, "com.apple.news");
  v31[63] = -18;
  v64 = v82;
  *(v31 + 8) = v83;
  *(v31 + 9) = v64;
  *(v31 + 10) = v92;
  v31[88] = v80;
  v31[89] = v52;
  v31[90] = v48 & 1;
  v31[91] = v53;
  sub_217C91BB4();
  v66 = v65;
  v67 = *(*(v65 - 8) + 8);

  v67(&v31[v60], v66);
  LOBYTE(v101[0]) = v55;
  sub_217D886EC();
  v31[*(v59 + 68)] = v93 & 1;
  v31[v61] = v57;
  sub_217A4C040(v99 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, v102);
  v68 = v103;
  if (v103)
  {
    v69 = v104;
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v101[3] = v59;
    v101[4] = sub_217C91AEC();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
    sub_217AE04C0(v31, boxed_opaque_existential_1);
    (*(v69 + 8))(v101, v68, v69);
    __swift_destroy_boxed_opaque_existential_1(v101);
    __swift_destroy_boxed_opaque_existential_1(v102);
  }

  else
  {
    sub_217C91B44(v102, &qword_2811BD5A0, sub_217A4E60C);
  }

  sub_217C91C04(0, &qword_2811BC490, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v99 = v71;
  v72 = sub_217D882DC();
  v73 = *(v72 - 8);
  v94 = *(v73 + 72);
  v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v75 = swift_allocObject();
  v93 = xmmword_217D8D8F0;
  *(v75 + 16) = xmmword_217D8D8F0;
  v76 = *MEMORY[0x277CEAD10];
  v92 = *(v73 + 104);
  v92(v75 + v74, v76, v72);
  v90 = "v16@?0@NSArray8";
  sub_217C91AEC();
  sub_217D8890C();

  sub_217AE04C0(v31, v91);
  v77 = v96;
  sub_217D880EC();
  v78 = swift_allocObject();
  *(v78 + 16) = v93;
  v92(v78 + v74, v76, v72);
  sub_217D8854C();

  (*(v97 + 8))(v77, v98);
  return sub_217AE0524(v31);
}

unint64_t sub_217C91AEC()
{
  result = qword_2811C7C60;
  if (!qword_2811C7C60)
  {
    type metadata accessor for SessionData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7C60);
  }

  return result;
}

uint64_t sub_217C91B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_217C91C04(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_217C91BB4()
{
  if (!qword_2811C8438)
  {
    v0 = sub_217D8872C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C8438);
    }
  }
}

void sub_217C91C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_217C91D34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_217D883AC();
  *(swift_allocObject() + 16) = a1;
  v8 = a1;
  sub_217D888EC();

  sub_217A4C040(v6 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, v14);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v10 = v14[1];
  *(v9 + 32) = v14[0];
  *(v9 + 48) = v10;
  *(v9 + 64) = v15;
  v11 = v8;
  v12 = v6;
  sub_217D8833C();
}

void sub_217C91E80(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a1;
  sub_217D883AC();
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  sub_217D888EC();

  sub_217A4C040(v10 + OBJC_IVAR____TtC13NewsAnalytics15SessionObserver_appExtensionCommunicator, v16);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  v13 = v16[1];
  *(v12 + 32) = v16[0];
  *(v12 + 48) = v13;
  *(v12 + 64) = v17;
  v14 = v11;
  v15 = v10;
  sub_217D8833C();
}

uint64_t sub_217C92098()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3590);
  __swift_project_value_buffer(v0, qword_27CBA3590);
  return sub_217D8866C();
}

uint64_t IssueShareEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t IssueShareEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 20);
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 20);
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 24);
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 24);
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 28);
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 28);
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 32);
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 32);
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.shareContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 36);
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.shareContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 36);
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 40);
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 40);
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 44);
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 44);
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 48);
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 48);
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 52);
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IssueShareEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 52);
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 56);
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C931CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}