uint64_t ArrayCombineOperator.combine(_:_:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4)
  {
    v5 = a1;
    a1 = a2;
    a2 = v5;
  }

  return MEMORY[0x2821FC290](a1, a2, *(a4 + 16));
}

uint64_t ArrayCombineOperator.currentValue(_:restricts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_20E4C65E0();
  swift_getWitnessTable();
  return sub_20E4C65A0() & 1;
}

uint64_t sub_20E47ABEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ArrayCombineOperator.combine(_:_:scope:)(*a1, *a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_20E47AC1C(uint64_t a1, char **a2)
{
  v13 = *a2;
  v4 = *(a1 + 16);

  v5 = v13;
  if (v4)
  {
    v6 = (a1 + 64);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v12[0] = *(v6 - 4);
      v12[1] = v9;
      v12[2] = v10;
      v12[3] = v8;
      v12[4] = v7;

      sub_20E47AD28(&v13, v12);

      v6 += 5;
      --v4;
    }

    while (v4);
    v5 = v13;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_20E47AD28(char **a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[3];
  v25 = a2[2];
  v27 = a2[4];
  v6 = *a1;
  v7 = *(*a1 + 2);
  v8 = 64;
  while (v7 != v2)
  {
    v9 = v2;
    v10 = v8;
    v11 = &v6[v8];
    v12 = *&v6[v8 - 24];
    if (*&v6[v8 - 32] == v4 && v12 == v3)
    {
      goto LABEL_9;
    }

    ++v2;
    v14 = sub_20E4C6910();
    v8 = v10 + 40;
    if (v14)
    {
      v15 = &v6[v8];
      v4 = *(v15 - 9);
      v12 = *(v15 - 8);
LABEL_9:
      v5 = *(v11 - 1);
      v25 = *(v11 - 2);
      v7 = *v11;
      v28 = *v11;
      v16 = v12;

      swift_bridgeObjectRetain_n();

      v3 = &v28;
      sub_20E48A684(v17);
      v18 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_20E48A77C(v6);
      }

      if (v9 < *(v6 + 2))
      {
        v19 = &v6[v10];
        *(v19 - 4) = v4;
        *(v19 - 3) = v16;
        *(v19 - 2) = v25;
        *(v19 - 1) = v5;
        *v19 = v18;

        v21 = a1;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v18 = v27;

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_14;
  }

LABEL_19:
  result = sub_20E450928(0, v7 + 1, 1, v6);
  v6 = result;
LABEL_14:
  v21 = a1;
  v23 = *(v6 + 2);
  v22 = *(v6 + 3);
  if (v23 >= v22 >> 1)
  {
    result = sub_20E450928((v22 > 1), v23 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v23 + 1;
  v24 = &v6[40 * v23];
  *(v24 + 4) = v4;
  *(v24 + 5) = v3;
  *(v24 + 6) = v25;
  *(v24 + 7) = v5;
  *(v24 + 8) = v18;
LABEL_17:
  *v21 = v6;
  return result;
}

uint64_t ArrayCombineOperator<>.currentValue(_:restricts:)(uint64_t a1, Swift::String_optional *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    countAndFlagsBits = a2->value._countAndFlagsBits;
    object = a2->value._object;
    v17 = a2[1];
    v6 = a1 + 32;
    v7 = a2[2].value._countAndFlagsBits;
    v16 = a1 + 32;
    while (2)
    {
      v8 = *(v6 + 40 * v3++ + 32);
      v9 = *(v8 + 16);

      v11 = (v8 + 64);
      v12 = -1;
      while (v12 - v9 != -1)
      {
        if (++v12 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = v11 + 5;
        v14 = *v11;
        v15 = *(v11 - 3);
        *&v18.children.is_nil = *(v11 - 4);
        v19 = v15;
        v20 = *(v11 - 1);
        v21 = v14;
        v18.title._countAndFlagsBits = countAndFlagsBits;
        v18.title._object = object;
        v18.url = v17;
        v18.children.value._rawValue = v7;
        result = Bookmark.contains(_:)(&v18);
        v11 = v13;
        if (result)
        {

          return 1;
        }
      }

      v6 = v16;
      if (v3 != v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t ComparableDictionaryCombineOperator.currentValue(_:for:causes:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19[1] = a3;
  v5 = a4[3];
  v6 = sub_20E4C6780();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  sub_20E4C6400();
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v15 = 0;
  }

  else
  {
    (*(v11 + 32))(v13, v10, v5);
    v16 = (v11 + 8);
    if (v14)
    {
      v17 = sub_20E4C6460();
    }

    else
    {
      v17 = sub_20E4C6450();
    }

    v15 = v17;
    (*v16)(v13, v5);
  }

  return v15 & 1;
}

uint64_t sub_20E47B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_20E4C69C0();
  a4(v6);
  return sub_20E4C69F0();
}

uint64_t sub_20E47B2D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ComparableDictionaryCombineOperator.combine(_:_:scope:)(*a1, *a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t ActivityCategoryPolicyCombineOperator.currentValue(_:restricts:including:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v28[1] = a4;
  v6 = *(a4 + 16);
  v7 = sub_20E4C6780();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v28 - v13;
  v15 = *(v6 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v28 - v19;
  v29 = *a1;
  v21 = *(a1 + 16);
  v22 = a2[1];
  v31[0] = *a2;
  v31[1] = v22;
  v31[2] = a2[2];
  if (v21)
  {
    if (v21 != 1)
    {
      v24 = 0;
      return v24 & 1;
    }

    (*(v8 + 16))(v11, v30, v7);
    if ((*(v15 + 48))(v11, 1, v6) != 1)
    {
      (*(v15 + 32))(v18, v11, v6);
      v25 = sub_20E4C6670();
      (*(v15 + 8))(v18, v6);
      v24 = v25 ^ 1;
      return v24 & 1;
    }

    (*(v8 + 8))(v11, v7);
    goto LABEL_9;
  }

  (*(v8 + 16))(v14, v30, v7);
  if ((*(v15 + 48))(v14, 1, v6) == 1)
  {
    (*(v8 + 8))(v14, v7);
    if (qword_27C8CEC78 != -1)
    {
      swift_once();
    }

    v32 = xmmword_27C8CF368;
    v33 = xmmword_27C8CF378;
    v34 = xmmword_27C8CF388;
    v23 = v29;
    if ((sub_20E478BD0(&v32, v29) & 1) == 0)
    {
      v24 = sub_20E478BD0(v31, v23);
      return v24 & 1;
    }

LABEL_9:
    v24 = 1;
    return v24 & 1;
  }

  (*(v15 + 32))(v20, v14, v6);
  if (qword_27C8CEC78 != -1)
  {
    swift_once();
  }

  v32 = xmmword_27C8CF368;
  v33 = xmmword_27C8CF378;
  v34 = xmmword_27C8CF388;
  v26 = v29;
  if (sub_20E478BD0(&v32, v29) & 1) != 0 || (sub_20E478BD0(v31, v26))
  {
    v24 = sub_20E4C6670() ^ 1;
  }

  else
  {
    v24 = 0;
  }

  (*(v15 + 8))(v20, v6);
  return v24 & 1;
}

uint64_t ActivityCategoryPolicyCombineOperator.hashValue.getter()
{
  sub_20E4C69C0();
  MEMORY[0x20F32F300](0);
  return sub_20E4C69F0();
}

uint64_t ActivityCategoryPolicyCombineOperator<>.currentValue(_:restricts:including:shouldUsePatternMatching:)(uint64_t a1, _OWORD *a2, uint64_t *a3, char a4)
{
  v232 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = a2[1];
  v228[0] = *a2;
  v228[1] = v8;
  v228[2] = a2[2];
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v220 = a3[3];
  v221 = v10;
  v12 = a3[4];
  v218 = a3[5];
  if (!v7)
  {
    if (v10 == 1)
    {
      if (qword_27C8CEC78 != -1)
      {
        swift_once();
      }

      __s1 = xmmword_27C8CF368;
      v230 = xmmword_27C8CF378;
      v231 = xmmword_27C8CF388;
      if ((sub_20E478BD0(&__s1, v5) & 1) == 0)
      {
        v184 = sub_20E478BD0(v228, v5);
        return v184 & 1;
      }

LABEL_156:
      v184 = 1;
      return v184 & 1;
    }

    v206 = v6 + 56;
    v214 = v6;
    v215 = *a3;
    v14 = 1 << *(v6 + 32);
    v81 = -1;
    if (v14 < 64)
    {
      v81 = ~(-1 << v14);
    }

    v82 = v81 & *(v6 + 56);
    sub_20E48C360(v9, v10, v11, v220, v12, v218);
    v208 = (v14 + 63) >> 6;
    __n = v220 >> 62;
    if (v11)
    {
      v83 = 0;
    }

    else
    {
      v83 = v220 == 0xC000000000000000;
    }

    v84 = !v83;
    v203 = v84;
    v194 = HIDWORD(v11);
    v85 = __OFSUB__(HIDWORD(v11), v11);
    v200 = v85;
    v209 = v11;
    v196 = v11;
    v198 = HIDWORD(v11) - v11;
    v190 = (v11 >> 32) - v11;
    v192 = v11 >> 32;

    v86 = 0;
    v210 = v12;
    v212 = v5;
    while (1)
    {
      if (v82)
      {
        v22 = v221;
        goto LABEL_177;
      }

      v22 = v221;
      do
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_348;
        }

        if (v87 >= v208)
        {

          v184 = 1;
          goto LABEL_338;
        }

        v82 = *(v206 + 8 * v87);
        ++v86;
      }

      while (!v82);
      v86 = v87;
LABEL_177:
      v88 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v89 = (*(v214 + 48) + 48 * (v88 | (v86 << 6)));
      v14 = v89[1];
      v91 = v89[2];
      v90 = v89[3];
      v92 = v89[4];
      v93 = v89[5];
      v217 = v90;
      if (!v14)
      {
        v94 = 0;
        if (v22)
        {
          sub_20E41B8A8(v91, v90);

          v14 = 0;
          goto LABEL_252;
        }

        goto LABEL_187;
      }

      if (!v22)
      {
        break;
      }

      v94 = v89[1];
      if (*v89 != v215 || v14 != v22)
      {
        v4 = v89[5];
        v96 = v89[4];
        v97 = sub_20E4C6910();
        v92 = v96;
        v90 = v217;
        if ((v97 & 1) == 0)
        {

          v14 = v94;
          sub_20E41B8A8(v91, v217);

          goto LABEL_252;
        }
      }

LABEL_187:
      if (v90 >> 60 == 15)
      {
        v98 = v220;
        v14 = v94;
        if (v220 >> 60 == 15)
        {
          v188 = v92;
          v99 = v90;

          sub_20E41B8A8(v91, v99);

          sub_20E41B8A8(v91, v99);
          sub_20E41B8A8(v209, v220);
          goto LABEL_242;
        }

LABEL_192:
        v4 = v12;
        v101 = v90;

        sub_20E41B8A8(v91, v101);

        sub_20E41B8A8(v91, v101);
        sub_20E41B8A8(v209, v98);
        v102 = v101;
        v12 = v4;
        sub_20E4167F8(v91, v102);
        sub_20E4167F8(v209, v98);
        v22 = v221;
        v5 = v212;
        goto LABEL_252;
      }

      v98 = v220;
      v14 = v94;
      if (v220 >> 60 == 15)
      {
        goto LABEL_192;
      }

      v103 = v90 >> 62;
      if (v90 >> 62 == 3)
      {
        if (v91)
        {
          v104 = 0;
        }

        else
        {
          v104 = v90 == 0xC000000000000000;
        }

        v105 = v220 >> 62;
        v107 = !v104 || v220 >> 62 != 3;
        if (((v107 | v203) & 1) == 0)
        {
          v188 = v92;
          v99 = v90;

          sub_20E41B8A8(0, 0xC000000000000000);

          sub_20E41B8A8(0, 0xC000000000000000);
          sub_20E41B8A8(0, 0xC000000000000000);
          v108 = 0;
          v109 = 0xC000000000000000;
LABEL_241:
          sub_20E4167F8(v108, v109);
LABEL_242:
          v5 = v212;
          goto LABEL_243;
        }

LABEL_213:
        v110 = 0;
        goto LABEL_214;
      }

      v105 = v220 >> 62;
      if (v103 > 1)
      {
        if (v103 != 2)
        {
          goto LABEL_213;
        }

        v112 = *(v91 + 16);
        v111 = *(v91 + 24);
        v44 = __OFSUB__(v111, v112);
        v110 = v111 - v112;
        if (v44)
        {
          goto LABEL_358;
        }

LABEL_214:
        if (v105 > 1)
        {
          goto LABEL_220;
        }

        goto LABEL_215;
      }

      if (v103)
      {
        LODWORD(v110) = HIDWORD(v91) - v91;
        if (__OFSUB__(HIDWORD(v91), v91))
        {
          goto LABEL_359;
        }

        v110 = v110;
        if (__n > 1)
        {
          goto LABEL_220;
        }

LABEL_215:
        v113 = BYTE6(v220);
        if (v105)
        {
          v113 = v198;
          if (v200)
          {
            goto LABEL_354;
          }
        }

        goto LABEL_222;
      }

      v110 = BYTE6(v90);
      if (__n <= 1)
      {
        goto LABEL_215;
      }

LABEL_220:
      if (v105 != 2)
      {
        if (!v110)
        {
LABEL_240:
          v188 = v92;

          v99 = v217;
          sub_20E41B8A8(v91, v217);

          sub_20E41B8A8(v91, v217);
          sub_20E41B8A8(v209, v220);
          v108 = v209;
          v109 = v220;
          goto LABEL_241;
        }

LABEL_238:

        v99 = v217;
        sub_20E41B8A8(v91, v217);

        sub_20E41B8A8(v91, v217);
        sub_20E41B8A8(v209, v220);
        sub_20E4167F8(v209, v220);
        v5 = v212;
        goto LABEL_239;
      }

      v115 = *(v209 + 16);
      v114 = *(v209 + 24);
      v44 = __OFSUB__(v114, v115);
      v113 = v114 - v115;
      if (v44)
      {
        goto LABEL_355;
      }

LABEL_222:
      if (v110 != v113)
      {
        goto LABEL_238;
      }

      if (v110 < 1)
      {
        goto LABEL_240;
      }

      v187 = v93;
      v188 = v92;
      v189 = v94;
      if (v103 > 1)
      {
        if (v103 == 2)
        {
          v131 = *(v91 + 16);
          v130 = *(v91 + 24);

          v99 = v217;
          sub_20E41B8A8(v91, v217);

          sub_20E41B8A8(v91, v217);
          sub_20E41B8A8(v209, v220);
          v132 = sub_20E4C5FC0();
          v133 = v91;
          if (v132)
          {
            v134 = v131;
            v135 = v130;
            v136 = v132;
            v137 = sub_20E4C5FE0();
            if (__OFSUB__(v134, v137))
            {
              goto LABEL_365;
            }

            v138 = v134 - v137 + v136;
            v99 = v217;
            v130 = v135;
          }

          else
          {
            v138 = 0;
            v134 = v131;
          }

          if (__OFSUB__(v130, v134))
          {
            goto LABEL_363;
          }

          sub_20E4C5FD0();
          v4 = 0;
          sub_20E47FDB4(v138, v209, v220, &__s1);
          sub_20E4167F8(v209, v220);
          v5 = v212;
          v91 = v133;
          v14 = v189;
          if (__s1)
          {
            goto LABEL_243;
          }

LABEL_239:
          sub_20E4167F8(v91, v99);
          v22 = v221;
          v12 = v210;
          goto LABEL_252;
        }

        *(&__s1 + 6) = 0;
        *&__s1 = 0;
        v5 = v212;
        v186 = v91;
        if (!v105)
        {
          __s2 = v209;
          v223 = v194;
          v224 = *(&v209 + 5);
          v225 = HIBYTE(v209);
          v226 = v220;
          v227 = WORD2(v220);
          v14 = v94;

          v99 = v217;
          sub_20E41B8A8(v91, v217);

          sub_20E41B8A8(v91, v217);
          sub_20E41B8A8(v209, v220);
          v155 = memcmp(&__s1, &__s2, BYTE6(v220));
          sub_20E4167F8(v209, v220);
          if (!v155)
          {
            goto LABEL_243;
          }

          goto LABEL_239;
        }

        if (v105 == 2)
        {
          v145 = *(v209 + 16);
          v144 = *(v209 + 24);

          sub_20E41B8A8(v91, v217);

          sub_20E41B8A8(v91, v217);
          v146 = v209;
          sub_20E41B8A8(v209, v220);
          v4 = sub_20E4C5FC0();
          if (v4)
          {
            v147 = sub_20E4C5FE0();
            if (__OFSUB__(v145, v147))
            {
              goto LABEL_384;
            }

            v4 += v145 - v147;
          }

          v44 = __OFSUB__(v144, v145);
          v148 = v144 - v145;
          if (v44)
          {
            goto LABEL_374;
          }

          v149 = v220;
          result = sub_20E4C5FD0();
          if (v4)
          {
            goto LABEL_295;
          }

          goto LABEL_404;
        }

        if (v192 < v196)
        {
          goto LABEL_371;
        }

        sub_20E41B8A8(v91, v217);

        sub_20E41B8A8(v91, v217);
        v139 = v209;
        v161 = v220;
        sub_20E41B8A8(v209, v220);
        v162 = sub_20E4C5FC0();
        if (!v162)
        {
          goto LABEL_389;
        }

        v163 = v162;
        v164 = sub_20E4C5FE0();
        if (__OFSUB__(v196, v164))
        {
          goto LABEL_379;
        }

        v165 = (v196 - v164 + v163);
        v166 = sub_20E4C5FD0();
        if (!v165)
        {
LABEL_390:
          __break(1u);
          goto LABEL_391;
        }

        if (v166 >= v190)
        {
          v167 = v190;
        }

        else
        {
          v167 = v166;
        }

        p_s1 = &__s1;
        v169 = v165;
LABEL_312:
        v160 = memcmp(p_s1, v169, v167);
        sub_20E4167F8(v139, v161);
        goto LABEL_313;
      }

      if (!v103)
      {
        *&__s1 = v91;
        v99 = v217;
        DWORD2(__s1) = v217;
        WORD6(__s1) = WORD2(v217);
        if (!v105)
        {
          __s2 = v209;
          v223 = v194;
          v224 = *(&v209 + 5);
          v225 = HIBYTE(v209);
          v226 = v220;
          v227 = WORD2(v220);

          sub_20E41B8A8(v91, v217);

          sub_20E41B8A8(v91, v217);
          sub_20E41B8A8(v209, v220);
          v154 = memcmp(&__s1, &__s2, BYTE6(v220));
          v14 = v94;
          sub_20E4167F8(v209, v220);
          v5 = v212;
          if (!v154)
          {
            goto LABEL_243;
          }

          goto LABEL_239;
        }

        v5 = v212;
        v186 = v91;
        if (v105 == 1)
        {
          if (v192 >= v196)
          {
            v116 = v91;
            v117 = v14;

            sub_20E41B8A8(v116, v217);

            sub_20E41B8A8(v116, v217);
            sub_20E41B8A8(v209, v220);
            v118 = sub_20E4C5FC0();
            if (v118)
            {
              v119 = v118;
              v120 = sub_20E4C5FE0();
              if (!__OFSUB__(v196, v120))
              {
                v121 = (v196 - v120 + v119);
                v122 = sub_20E4C5FD0();
                if (v121)
                {
                  if (v122 >= v190)
                  {
                    v123 = v190;
                  }

                  else
                  {
                    v123 = v122;
                  }

                  v124 = memcmp(&__s1, v121, v123);
                  sub_20E4167F8(v209, v220);
                  v99 = v217;
                  v14 = v117;
                  v91 = v186;
                  if (!v124)
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_239;
                }

LABEL_392:
                __break(1u);
LABEL_393:
                result = sub_20E4C5FD0();
LABEL_394:
                __break(1u);
LABEL_395:
                __break(1u);
LABEL_396:
                __break(1u);
                goto LABEL_397;
              }

LABEL_378:
              __break(1u);
LABEL_379:
              __break(1u);
LABEL_380:
              __break(1u);
LABEL_381:
              __break(1u);
LABEL_382:
              __break(1u);
LABEL_383:
              __break(1u);
LABEL_384:
              __break(1u);
LABEL_385:
              __break(1u);
LABEL_386:
              __break(1u);
LABEL_387:
              __break(1u);
LABEL_388:
              sub_20E4C5FD0();
              __break(1u);
LABEL_389:
              sub_20E4C5FD0();
              goto LABEL_390;
            }

LABEL_391:
            sub_20E4C5FD0();
            goto LABEL_392;
          }

LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          __break(1u);
          goto LABEL_378;
        }

        v157 = *(v209 + 16);
        v156 = *(v209 + 24);

        sub_20E41B8A8(v91, v217);

        sub_20E41B8A8(v91, v217);
        v146 = v209;
        sub_20E41B8A8(v209, v220);
        v4 = sub_20E4C5FC0();
        if (v4)
        {
          v158 = sub_20E4C5FE0();
          if (__OFSUB__(v157, v158))
          {
            goto LABEL_385;
          }

          v4 += v157 - v158;
        }

        v44 = __OFSUB__(v156, v157);
        v148 = v156 - v157;
        if (v44)
        {
          goto LABEL_375;
        }

        v149 = v220;
        result = sub_20E4C5FD0();
        if (v4)
        {
LABEL_295:
          if (result >= v148)
          {
            v159 = v148;
          }

          else
          {
            v159 = result;
          }

          v160 = memcmp(&__s1, v4, v159);
          sub_20E4167F8(v146, v149);
          v5 = v212;
LABEL_313:
          v91 = v186;
          v93 = v187;
          v99 = v217;
          v14 = v189;
          if (!v160)
          {
            goto LABEL_243;
          }

          goto LABEL_239;
        }

LABEL_400:
        __break(1u);
LABEL_401:
        __break(1u);
LABEL_402:
        __break(1u);
LABEL_403:
        __break(1u);
LABEL_404:
        __break(1u);
        return result;
      }

      v139 = v209;
      v4 = v91;
      if (v91 > v91 >> 32)
      {
        goto LABEL_361;
      }

      sub_20E41B8A8(v91, v217);

      v186 = v91;
      sub_20E41B8A8(v91, v217);
      sub_20E41B8A8(v209, v220);
      v140 = sub_20E4C5FC0();
      if (v140)
      {
        v141 = v140;
        v142 = sub_20E4C5FE0();
        if (__OFSUB__(v91, v142))
        {
          goto LABEL_367;
        }

        v143 = (v91 - v142 + v141);
      }

      else
      {
        v143 = 0;
      }

      v5 = v212;
      result = sub_20E4C5FD0();
      if (__n == 2)
      {
        v170 = *(v209 + 16);
        v185 = *(v209 + 24);
        v171 = sub_20E4C5FC0();
        if (v171)
        {
          v4 = v171;
          v172 = sub_20E4C5FE0();
          if (__OFSUB__(v170, v172))
          {
            goto LABEL_386;
          }

          v173 = v170 - v172 + v4;
        }

        else
        {
          v173 = 0;
        }

        v174 = v173;
        v44 = __OFSUB__(v185, v170);
        v175 = v185 - v170;
        if (v44)
        {
          goto LABEL_381;
        }

        result = sub_20E4C5FD0();
        if (result >= v175)
        {
          v176 = v175;
        }

        else
        {
          v176 = result;
        }

        if (v143)
        {
          if (v174)
          {
            v5 = v212;
            v177 = v174;
            v19 = v143 == v174;
            v14 = v94;
            if (v19)
            {
              sub_20E4167F8(v209, v220);
              v91 = v186;
              v93 = v187;
              v99 = v217;
              goto LABEL_243;
            }

            v178 = memcmp(v143, v177, v176);
            sub_20E4167F8(v209, v220);
            v91 = v186;
            v93 = v187;
            v99 = v217;
            if (v178)
            {
              goto LABEL_239;
            }

            goto LABEL_243;
          }

LABEL_399:
          __break(1u);
          goto LABEL_400;
        }

LABEL_398:
        __break(1u);
        goto LABEL_399;
      }

      if (__n != 1)
      {
        LODWORD(__s1) = v209;
        v161 = v220;
        BYTE4(__s1) = v194;
        *(&__s1 + 5) = *(&v209 + 5);
        BYTE7(__s1) = HIBYTE(v209);
        DWORD2(__s1) = v220;
        WORD6(__s1) = WORD2(v220);
        if (!v143)
        {
          goto LABEL_395;
        }

        v169 = &__s1;
        p_s1 = v143;
        v167 = BYTE6(v220);
        goto LABEL_312;
      }

      if (v192 < v196)
      {
        goto LABEL_380;
      }

      v150 = sub_20E4C5FC0();
      if (v150)
      {
        v151 = v150;
        v152 = sub_20E4C5FE0();
        if (__OFSUB__(v196, v152))
        {
          goto LABEL_387;
        }

        v4 = v143;
        v153 = (v196 - v152 + v151);
      }

      else
      {
        v4 = v143;
        v153 = 0;
      }

      v14 = v189;
      result = sub_20E4C5FD0();
      v179 = v190;
      if (result < v190)
      {
        v179 = result;
      }

      v91 = v186;
      v93 = v187;
      if (!v4)
      {
        goto LABEL_396;
      }

      if (!v153)
      {
LABEL_397:
        __break(1u);
        goto LABEL_398;
      }

      if (v4 == v153)
      {
        sub_20E4167F8(v209, v220);
        v99 = v217;
        goto LABEL_243;
      }

      v180 = memcmp(v4, v153, v179);
      sub_20E4167F8(v209, v220);
      v99 = v217;
      if (v180)
      {
        goto LABEL_239;
      }

LABEL_243:
      sub_20E4167F8(v91, v99);
      if (!v93)
      {
        v22 = v221;
        v12 = v210;
        if (v218)
        {
          goto LABEL_252;
        }

LABEL_350:

        sub_20E4167F8(v91, v217);

        v184 = 0;
LABEL_338:
        if (qword_27C8CEC78 != -1)
        {
          swift_once();
        }

        __s1 = xmmword_27C8CF368;
        v230 = xmmword_27C8CF378;
        v231 = xmmword_27C8CF388;
        if (sub_20E478BD0(&__s1, v5))
        {
          sub_20E48C3C4(v215, v22, v209, v220, v12, v218);
        }

        else
        {
          v181 = sub_20E478BD0(v228, v5);
          v182 = v22;
          v183 = v181;
          sub_20E48C3C4(v215, v182, v209, v220, v12, v218);
          if ((v183 & 1) == 0)
          {
            v184 = 0;
          }
        }

        return v184 & 1;
      }

      v22 = v221;
      v12 = v210;
      if (v218)
      {
        v125 = v188 == v210 && v93 == v218;
        if (v125 || (sub_20E4C6910() & 1) != 0)
        {
          goto LABEL_350;
        }
      }

LABEL_252:
      if ((a4 & 1) != 0 && v22 && v14)
      {
        LOBYTE(__s1) = 0;
        v126 = objc_opt_self();
        v127 = v5;
        v128 = sub_20E4C6490();
        v129 = sub_20E4C6490();
        LOBYTE(v126) = [v126 compareDomain:v128 withDomainPattern:v129 outExactMatch:&__s1];

        sub_20E4167F8(v91, v217);

        v5 = v127;
        v12 = v210;

        if (v126)
        {

          v184 = 0;
          v22 = v221;
          goto LABEL_338;
        }
      }

      else
      {
LABEL_257:

        sub_20E4167F8(v91, v217);
      }
    }

    v100 = v89[3];

    sub_20E41B8A8(v91, v100);

    goto LABEL_257;
  }

  if (v7 != 1)
  {
    v184 = 0;
    return v184 & 1;
  }

  if (v10 == 1)
  {
    goto LABEL_156;
  }

  v13 = v5 + 56;
  v14 = 1 << *(v5 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v5 + 56);
  v215 = *a3;
  sub_20E48C360(v9, v10, v11, v220, v12, v218);
  sub_20E48C804(v5, v6, 1);
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = v220 == 0xC000000000000000;
  }

  v20 = !v19;
  v205 = v20;
  v207 = v220 >> 62;
  v197 = HIDWORD(v11);
  v21 = __OFSUB__(HIDWORD(v11), v11);
  v202 = v21;
  v209 = v11;
  v210 = v12;
  v199 = v11;
  v201 = HIDWORD(v11) - v11;
  v193 = (v11 >> 32) - v11;
  v195 = v11 >> 32;
  v211 = v5;
  while (1)
  {
    if (v16)
    {
      v22 = v221;
      goto LABEL_23;
    }

    v22 = v221;
    do
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_348:
        __break(1u);
        goto LABEL_352;
      }

      if (v23 >= v18)
      {
        sub_20E48C3C4(v215, v221, v209, v220, v12, v218);

        v184 = 1;
        return v184 & 1;
      }

      v16 = *(v13 + 8 * v23);
      ++v17;
    }

    while (!v16);
    v17 = v23;
LABEL_23:
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v25 = (*(v5 + 48) + 48 * (v24 | (v17 << 6)));
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v216 = v25[5];
    v213 = v26;
    if (!v26)
    {
      if (!v22)
      {
        goto LABEL_34;
      }

LABEL_32:
      sub_20E41B8A8(v27, v28);

      if ((a4 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_97;
    }

    if (!v22)
    {

      v31 = v27;
      v32 = v28;
      sub_20E41B8A8(v27, v28);
      v14 = v216;

      goto LABEL_102;
    }

    v30 = *v25 == v215 && v26 == v22;
    if (!v30 && (sub_20E4C6910() & 1) == 0)
    {

      goto LABEL_32;
    }

LABEL_34:
    if (v28 >> 60 != 15)
    {
      break;
    }

    if (v220 >> 60 == 15)
    {
      v191 = v29;

      sub_20E41B8A8(v27, v28);
      v33 = v216;

      sub_20E41B8A8(v27, v28);
      sub_20E41B8A8(v209, v220);
      goto LABEL_87;
    }

LABEL_39:

    sub_20E41B8A8(v27, v28);

    sub_20E41B8A8(v27, v28);
    v4 = v220;
    sub_20E41B8A8(v209, v220);
    sub_20E4167F8(v27, v28);
    v22 = v221;
    sub_20E4167F8(v209, v220);
    if ((a4 & 1) == 0)
    {
LABEL_33:
      v31 = v27;
      v32 = v28;
      v14 = v216;
      goto LABEL_102;
    }

LABEL_97:
    if (!v22)
    {
      v31 = v27;
      v32 = v28;
      v14 = v216;
LABEL_102:

      sub_20E4167F8(v31, v32);
LABEL_103:
      v12 = v210;
      v5 = v211;

      continue;
    }

    if (!v213)
    {

      sub_20E4167F8(v27, v28);
      v14 = v216;
      goto LABEL_103;
    }

    LOBYTE(__s1) = 0;
    v54 = objc_opt_self();
    v55 = sub_20E4C6490();
    v4 = v28;
    v56 = v27;
    v14 = sub_20E4C6490();
    LOBYTE(v54) = [v54 compareDomain:v55 withDomainPattern:v14 outExactMatch:&__s1];

    sub_20E4167F8(v56, v4);

    v12 = v210;
    v5 = v211;

    if (v54)
    {

      sub_20E48C3C4(v215, v221, v209, v220, v210, v218);
      v184 = 0;
      return v184 & 1;
    }
  }

  if (v220 >> 60 == 15)
  {
    goto LABEL_39;
  }

  v34 = v28 >> 62;
  if (v28 >> 62 == 3)
  {
    if (v27)
    {
      v35 = 0;
    }

    else
    {
      v35 = v28 == 0xC000000000000000;
    }

    v36 = v220 >> 62;
    v38 = !v35 || v220 >> 62 != 3;
    if (((v38 | v205) & 1) == 0)
    {
      v191 = v29;

      sub_20E41B8A8(0, 0xC000000000000000);
      v33 = v216;

      sub_20E41B8A8(0, 0xC000000000000000);
      sub_20E41B8A8(0, 0xC000000000000000);
      v39 = 0;
      v40 = 0xC000000000000000;
      goto LABEL_86;
    }

LABEL_61:
    v41 = 0;
    goto LABEL_62;
  }

  v36 = v220 >> 62;
  if (v34 > 1)
  {
    if (v34 != 2)
    {
      goto LABEL_61;
    }

    v43 = *(v27 + 16);
    v42 = *(v27 + 24);
    v44 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (v44)
    {
      goto LABEL_356;
    }

LABEL_62:
    if (v36 > 1)
    {
      goto LABEL_68;
    }

    goto LABEL_63;
  }

  if (v34)
  {
    LODWORD(v41) = HIDWORD(v27) - v27;
    if (__OFSUB__(HIDWORD(v27), v27))
    {
      goto LABEL_357;
    }

    v41 = v41;
    if (v207 > 1)
    {
      goto LABEL_68;
    }

LABEL_63:
    v45 = BYTE6(v220);
    if (v36)
    {
      v45 = v201;
      if (v202)
      {
        __break(1u);
        goto LABEL_353;
      }
    }

LABEL_70:
    if (v41 != v45)
    {
      goto LABEL_82;
    }

    if (v41 < 1)
    {
      goto LABEL_85;
    }

    v191 = v29;
    if (v34 > 1)
    {
      if (v34 != 2)
      {
        *(&__s1 + 6) = 0;
        *&__s1 = 0;
        if (v36)
        {
          if (v36 != 2)
          {
            if (v195 >= v199)
            {

              sub_20E41B8A8(v27, v28);

              sub_20E41B8A8(v27, v28);
              sub_20E41B8A8(v209, v220);
              v74 = sub_20E4C5FC0();
              if (!v74)
              {
                goto LABEL_393;
              }

              v75 = v74;
              v76 = sub_20E4C5FE0();
              if (__OFSUB__(v199, v76))
              {
                goto LABEL_376;
              }

              v51 = (v199 - v76 + v75);
              result = sub_20E4C5FD0();
              if (!v51)
              {
                goto LABEL_394;
              }

LABEL_135:
              if (result >= v193)
              {
                v77 = v193;
              }

              else
              {
                v77 = result;
              }

              v4 = memcmp(&__s1, v51, v77);
              sub_20E4167F8(v209, v220);
              v33 = v216;
              if (!v4)
              {
                goto LABEL_87;
              }

              goto LABEL_83;
            }

            __break(1u);
LABEL_369:
            __break(1u);
            goto LABEL_370;
          }

          v66 = *(v209 + 16);
          v4 = *(v209 + 24);

          sub_20E41B8A8(v27, v28);

          sub_20E41B8A8(v27, v28);
          sub_20E41B8A8(v209, v220);
          v67 = sub_20E4C5FC0();
          if (v67)
          {
            v68 = sub_20E4C5FE0();
            if (__OFSUB__(v66, v68))
            {
              goto LABEL_382;
            }

            v69 = v4;
            v67 += v66 - v68;
          }

          else
          {
            v69 = v4;
          }

          v44 = __OFSUB__(v69, v66);
          v78 = v69 - v66;
          if (v44)
          {
            goto LABEL_372;
          }

          result = sub_20E4C5FD0();
          if (!v67)
          {
            goto LABEL_401;
          }

LABEL_147:
          if (result >= v78)
          {
            v79 = v78;
          }

          else
          {
            v79 = result;
          }

          v80 = memcmp(&__s1, v67, v79);
          sub_20E4167F8(v209, v220);
          v33 = v216;
          if (!v80)
          {
            goto LABEL_87;
          }

LABEL_83:
          sub_20E4167F8(v27, v28);
          v22 = v221;
          if ((a4 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_97;
        }

LABEL_122:
        __s2 = v209;
        v4 = v220;
        v223 = v197;
        v224 = *(&v209 + 5);
        v225 = HIBYTE(v209);
        v226 = v220;
        v227 = WORD2(v220);

        sub_20E41B8A8(v27, v28);
        v33 = v216;

        sub_20E41B8A8(v27, v28);
        sub_20E41B8A8(v209, v220);
        v70 = memcmp(&__s1, &__s2, BYTE6(v220));
        sub_20E4167F8(v209, v220);
        if (!v70)
        {
          goto LABEL_87;
        }

        goto LABEL_83;
      }

      v58 = *(v27 + 16);
      v57 = *(v27 + 24);

      sub_20E41B8A8(v27, v28);

      sub_20E41B8A8(v27, v28);
      sub_20E41B8A8(v209, v220);
      v59 = sub_20E4C5FC0();
      if (v59)
      {
        v60 = sub_20E4C5FE0();
        if (__OFSUB__(v58, v60))
        {
          goto LABEL_364;
        }

        v59 += v58 - v60;
      }

      if (__OFSUB__(v57, v58))
      {
        goto LABEL_362;
      }

      sub_20E4C5FD0();
      v61 = v59;
    }

    else
    {
      if (!v34)
      {
        *&__s1 = v27;
        WORD4(__s1) = v28;
        BYTE10(__s1) = BYTE2(v28);
        BYTE11(__s1) = BYTE3(v28);
        BYTE12(__s1) = BYTE4(v28);
        BYTE13(__s1) = BYTE5(v28);
        if (v36)
        {
          if (v36 == 1)
          {
            if (v195 >= v199)
            {

              sub_20E41B8A8(v27, v28);

              sub_20E41B8A8(v27, v28);
              sub_20E41B8A8(v209, v220);
              v48 = sub_20E4C5FC0();
              if (!v48)
              {
                goto LABEL_388;
              }

              v49 = v48;
              v50 = sub_20E4C5FE0();
              if (__OFSUB__(v199, v50))
              {
                goto LABEL_377;
              }

              v51 = (v199 - v50 + v49);
              result = sub_20E4C5FD0();
              if (!v51)
              {
                goto LABEL_403;
              }

              goto LABEL_135;
            }

            goto LABEL_369;
          }

          v71 = *(v209 + 16);
          v4 = *(v209 + 24);

          sub_20E41B8A8(v27, v28);

          sub_20E41B8A8(v27, v28);
          sub_20E41B8A8(v209, v220);
          v67 = sub_20E4C5FC0();
          if (v67)
          {
            v72 = sub_20E4C5FE0();
            if (__OFSUB__(v71, v72))
            {
              goto LABEL_383;
            }

            v73 = v4;
            v67 += v71 - v72;
          }

          else
          {
            v73 = v4;
          }

          v44 = __OFSUB__(v73, v71);
          v78 = v73 - v71;
          if (v44)
          {
            goto LABEL_373;
          }

          result = sub_20E4C5FD0();
          if (!v67)
          {
            goto LABEL_402;
          }

          goto LABEL_147;
        }

        goto LABEL_122;
      }

      if (v27 >> 32 < v27)
      {
        goto LABEL_360;
      }

      sub_20E41B8A8(v27, v28);

      sub_20E41B8A8(v27, v28);
      sub_20E41B8A8(v209, v220);
      v62 = sub_20E4C5FC0();
      if (v62)
      {
        v63 = v62;
        v64 = sub_20E4C5FE0();
        if (__OFSUB__(v27, v64))
        {
          goto LABEL_366;
        }

        v65 = v27 - v64 + v63;
      }

      else
      {
        v65 = 0;
      }

      sub_20E4C5FD0();
      v61 = v65;
    }

    v4 = 0;
    sub_20E47FDB4(v61, v209, v220, &__s1);
    sub_20E4167F8(v209, v220);
    v33 = v216;
    if (__s1)
    {
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  v41 = BYTE6(v28);
  if (v207 <= 1)
  {
    goto LABEL_63;
  }

LABEL_68:
  if (v36 == 2)
  {
    v47 = *(v209 + 16);
    v46 = *(v209 + 24);
    v44 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v44)
    {
      goto LABEL_70;
    }

LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    __break(1u);
LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
  }

  if (v41)
  {
LABEL_82:

    sub_20E41B8A8(v27, v28);

    sub_20E41B8A8(v27, v28);
    v4 = v220;
    sub_20E41B8A8(v209, v220);
    sub_20E4167F8(v209, v220);
    goto LABEL_83;
  }

LABEL_85:
  v191 = v29;

  sub_20E41B8A8(v27, v28);
  v33 = v216;

  sub_20E41B8A8(v27, v28);
  sub_20E41B8A8(v209, v220);
  v39 = v209;
  v40 = v220;
LABEL_86:
  sub_20E4167F8(v39, v40);
LABEL_87:
  v5 = v27;
  v4 = v28;
  sub_20E4167F8(v27, v28);
  if (v33)
  {
    v22 = v221;
    v14 = v218;
    if (!v218)
    {
      v27 = v5;
      if ((a4 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_97;
    }

    if (v191 != v210 || v216 != v218)
    {
      v27 = v5;
      if (sub_20E4C6910())
      {
        v14 = v218;
        goto LABEL_352;
      }

LABEL_96:
      if ((a4 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_97;
    }
  }

  else
  {
    v22 = v221;
    if (v218)
    {
      goto LABEL_96;
    }

    v14 = 0;
  }

LABEL_352:

  sub_20E48C3C4(v215, v22, v209, v220, v210, v14);

  sub_20E4167F8(v5, v4);

  v184 = 0;
  return v184 & 1;
}

uint64_t UserSafetyScanningPolicyCombineOperator.currentValue(_:causes:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        if (v2)
        {
          v5 = 1852138868;
        }

        else
        {
          v5 = 0x646C696863;
        }

        if (v2)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }

        if (v3)
        {
          v7 = 1852138868;
        }

        else
        {
          v7 = 0x646C696863;
        }

        if (v3)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }

        if (v5 == v7 && v6 == v8)
        {

          v11 = 1;
        }

        else
        {
          v10 = sub_20E4C6910();

          v11 = (v10 & 1) != 0 || (v3 & 1u) >= (v2 & 1);
        }

        return v11 & 1;
      }

      goto LABEL_28;
    }

    v11 = v4 > 1;
    return v11 & 1;
  }

  if (*(a2 + 16))
  {
    v11 = v4 != 1;
    return v11 & 1;
  }

  v12 = a2[1];
  v13 = a1[1];
  if (sub_20E47FB18(*a1, *a2) & 1) != 0 && (sub_20E47FC20(v13, v12))
  {
LABEL_28:
    v11 = 1;
    return v11 & 1;
  }

  v14 = 1;
  v15 = 1 << *(v3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v3 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  while (1)
  {
    v21 = v14;
    if (!v17)
    {
      break;
    }

    v22 = v17;
LABEL_38:
    v14 = 0;
    v17 = (v22 - 1) & v22;
    if (v21)
    {
      v14 = 0;
      if (*(v2 + 16))
      {
        v24 = __clz(__rbit64(v22)) | (v20 << 6);
        v25 = *(*(v3 + 56) + v24);
        result = sub_20E429A8C(*(*(v3 + 48) + v24));
        v14 = 0;
        if (v26)
        {
          v14 = v25 ^ *(*(v2 + 56) + result) ^ 1;
        }
      }
    }
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v23 >= v18)
    {
      break;
    }

    v22 = *(v3 + 64 + 8 * v23);
    ++v20;
    if (v22)
    {
      v20 = v23;
      goto LABEL_38;
    }
  }

  v27 = 1;
  v28 = 1 << *(v12 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v12 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  while (1)
  {
    v33 = v27;
    if (!v30)
    {
      break;
    }

LABEL_51:
    v27 = 0;
    v35 = __clz(__rbit64(v30)) | (v32 << 6);
    v36 = (*(v12 + 48) + 48 * v35);
    v38 = v36[1];
    v37 = v36[2];
    v30 &= v30 - 1;
    v44[0] = *v36;
    v44[1] = v38;
    v44[2] = v37;
    if (v33)
    {
      v27 = 0;
      if (*(v13 + 16))
      {
        v39 = *(*(v12 + 56) + v35);
        sub_20E45CAA4(v44, &v43);
        v40 = sub_20E429A50(v44);
        if (v41)
        {
          v42 = *(*(v13 + 56) + v40);
          result = sub_20E45CB00(v44);
          v27 = v39 ^ v42 ^ 1;
        }

        else
        {
          result = sub_20E45CB00(v44);
          v27 = 0;
        }
      }
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      v11 = v21 & v27;
      return v11 & 1;
    }

    v30 = *(v12 + 64 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_51;
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

BOOL WebContentFilterPolicyCombineOperator.currentValue(_:restricts:shouldUsePatternMatching:)(uint64_t *a1, uint64_t *a2, char a3)
{
  v211[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v203 = *a2;
  v205 = a2[1];
  v5 = a2[3];
  v202 = a2[2];
  v191 = a2[4];
  v192 = a2[5];
  v196 = *a1;
  v197 = v5;
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      return 0;
    }

    v42 = v4 + 56;
    v43 = 1 << *(v4 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v4 + 56);
    v207 = (v43 + 63) >> 6;
    if (v202)
    {
      v46 = 0;
    }

    else
    {
      v46 = v5 == 0xC000000000000000;
    }

    v47 = !v46;
    v185 = v47;
    v188 = v5 >> 62;
    v48 = __OFSUB__(HIDWORD(v202), v202);
    v180 = v48;
    v179 = HIDWORD(v202) - v202;
    v182 = BYTE6(v5);

    v49 = 0;
    while (1)
    {
      while (1)
      {
        if (v45)
        {
          v50 = v205;
        }

        else
        {
          v50 = v205;
          do
          {
            v51 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
LABEL_392:
              __break(1u);
LABEL_393:
              __break(1u);
LABEL_394:
              __break(1u);
LABEL_43:

              sub_20E4167F8(v179, v3);
LABEL_399:

              return 1;
            }

            if (v51 >= v207)
            {
LABEL_387:

              return 1;
            }

            v45 = *(v42 + 8 * v51);
            ++v49;
          }

          while (!v45);
          v49 = v51;
        }

        v52 = __clz(__rbit64(v45));
        v45 &= v45 - 1;
        v53 = (*(v4 + 48) + 48 * (v52 | (v49 << 6)));
        v54 = v53[1];
        v3 = v53[3];
        v199 = v53[2];
        v55 = v53[4];
        v56 = v53[5];
        if (v54)
        {
          if (!v50)
          {

            sub_20E41B8A8(v199, v3);

            goto LABEL_191;
          }

          if (*v53 != v203 || v54 != v50)
          {
            v58 = v50;
            v59 = v53[4];
            v60 = sub_20E4C6910();
            v55 = v59;
            v50 = v58;
            if ((v60 & 1) == 0)
            {

LABEL_130:
              sub_20E41B8A8(v199, v3);

              if ((a3 & 1) == 0)
              {
                goto LABEL_191;
              }

              goto LABEL_161;
            }
          }
        }

        else if (v50)
        {
          goto LABEL_130;
        }

        if (v3 >> 60 != 15)
        {
          break;
        }

        v61 = v197;
        if (v197 >> 60 == 15)
        {
          v194 = v55;
          sub_20E41B8A8(v202, v197);

          sub_20E41B8A8(v199, v3);
          v62 = v56;

          sub_20E41B8A8(v199, v3);
          v4 = v196;
          goto LABEL_135;
        }

LABEL_145:
        sub_20E41B8A8(v202, v61);

        sub_20E41B8A8(v199, v3);

        sub_20E41B8A8(v199, v3);
        sub_20E4167F8(v199, v3);
        sub_20E4167F8(v202, v61);
        v4 = v196;
        if ((a3 & 1) == 0)
        {
          goto LABEL_191;
        }

LABEL_161:
        if (!v50 || !v54)
        {
          goto LABEL_191;
        }

        LOBYTE(v211[0]) = 0;
        v69 = objc_opt_self();
        v70 = v3;
        v3 = v199;
        v71 = sub_20E4C6490();
        v72 = sub_20E4C6490();
        LOBYTE(v69) = [v69 compareDomain:v71 withDomainPattern:v72 outExactMatch:v211];

        sub_20E4167F8(v199, v70);

        v4 = v196;

        if (v69)
        {
LABEL_303:

          return 0;
        }
      }

      v61 = v197;
      if (v197 >> 60 == 15)
      {
        goto LABEL_145;
      }

      v64 = v3 >> 62;
      if (v3 >> 62 == 3)
      {
        break;
      }

      v66 = v188;
      if (v64 > 1)
      {
        if (v64 == 2)
        {
          v75 = *(v199 + 16);
          v74 = *(v199 + 24);
          v36 = __OFSUB__(v74, v75);
          v73 = v74 - v75;
          if (v36)
          {
            goto LABEL_415;
          }

LABEL_175:
          if (v66 <= 1)
          {
            goto LABEL_176;
          }

          goto LABEL_181;
        }

LABEL_174:
        v73 = 0;
        goto LABEL_175;
      }

      if (v64)
      {
        LODWORD(v73) = HIDWORD(v199) - v199;
        if (__OFSUB__(HIDWORD(v199), v199))
        {
          goto LABEL_420;
        }

        v73 = v73;
        if (v188 <= 1)
        {
LABEL_176:
          v76 = v199;
          v77 = v182;
          if (v66)
          {
            v77 = HIDWORD(v202) - v202;
            if (v180)
            {
              goto LABEL_410;
            }
          }

          goto LABEL_183;
        }
      }

      else
      {
        v73 = BYTE6(v3);
        if (v188 <= 1)
        {
          goto LABEL_176;
        }
      }

LABEL_181:
      if (v66 != 2)
      {
        v76 = v199;
        if (v73)
        {
LABEL_189:
          sub_20E41B8A8(v202, v197);

          sub_20E41B8A8(v76, v3);

          sub_20E41B8A8(v76, v3);
          sub_20E4167F8(v202, v197);
          v4 = v196;
          v50 = v205;
LABEL_190:
          sub_20E4167F8(v199, v3);
          if ((a3 & 1) == 0)
          {
            goto LABEL_191;
          }

          goto LABEL_161;
        }

LABEL_192:
        v194 = v55;
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v76, v3);
        v62 = v56;

        sub_20E41B8A8(v76, v3);
        sub_20E4167F8(v202, v197);
        v4 = v196;
        v50 = v205;
        goto LABEL_135;
      }

      v76 = v199;
      v79 = *(v202 + 16);
      v78 = *(v202 + 24);
      v36 = __OFSUB__(v78, v79);
      v77 = v78 - v79;
      if (v36)
      {
        __break(1u);
LABEL_406:
        __break(1u);
        goto LABEL_407;
      }

LABEL_183:
      if (v73 != v77)
      {
        goto LABEL_189;
      }

      if (v73 < 1)
      {
        goto LABEL_192;
      }

      v194 = v55;
      if (v64 > 1)
      {
        if (v64 == 2)
        {
          v83 = v202;
          v171 = *(v199 + 16);
          v175 = *(v199 + 24);
          sub_20E41B8A8(v202, v197);
          sub_20E41B8A8(v202, v197);
          sub_20E41B8A8(v202, v197);

          sub_20E41B8A8(v199, v3);
          v62 = v56;

          sub_20E41B8A8(v199, v3);
          sub_20E41B8A8(v202, v197);
          v84 = v3 & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v171;
          v86 = v175;
          v87 = v202;
          v88 = v197;
          v89 = v197;
          goto LABEL_197;
        }

        memset(v211, 0, 14);
        v80 = v197;
        sub_20E41B8A8(v202, v197);
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v199, v3);
        v62 = v56;

        sub_20E41B8A8(v199, v3);
        v82 = v202;
        sub_20E41B8A8(v202, v197);
        v81 = v202;
      }

      else
      {
        if (v64)
        {
          if (v199 >> 32 < v199)
          {
            goto LABEL_423;
          }

          v83 = v202;
          sub_20E41B8A8(v202, v197);
          sub_20E41B8A8(v202, v197);
          sub_20E41B8A8(v202, v197);

          sub_20E41B8A8(v199, v3);
          v62 = v56;

          sub_20E41B8A8(v199, v3);
          v89 = v197;
          sub_20E41B8A8(v202, v197);
          v84 = v3 & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v199;
          v86 = v199 >> 32;
          v87 = v202;
          v88 = v197;
LABEL_197:
          v176 = sub_20E48A8DC(v85, v86, v84, v87, v88);
          sub_20E4167F8(v83, v89);
          sub_20E4167F8(v83, v89);
          sub_20E424BA4(v83, v89);
          sub_20E424BA4(v83, v89);
          v50 = v205;
          v4 = v196;
          if ((v176 & 1) == 0)
          {
            goto LABEL_190;
          }

          goto LABEL_135;
        }

        v211[0] = v199;
        LOWORD(v211[1]) = v3;
        BYTE2(v211[1]) = BYTE2(v3);
        BYTE3(v211[1]) = BYTE3(v3);
        BYTE4(v211[1]) = BYTE4(v3);
        BYTE5(v211[1]) = BYTE5(v3);
        v80 = v197;
        sub_20E41B8A8(v202, v197);
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v199, v3);
        v62 = v56;

        sub_20E41B8A8(v199, v3);
        sub_20E41B8A8(v202, v197);
        v81 = v202;
        v82 = v202;
      }

      sub_20E47FDB4(v211, v81, v80, &v210);
      sub_20E4167F8(v82, v80);
      sub_20E4167F8(v82, v80);
      sub_20E424BA4(v82, v80);
      v50 = v205;
      v4 = v196;
      if (!v210)
      {
        goto LABEL_190;
      }

LABEL_135:
      sub_20E4167F8(v199, v3);
      if (v62)
      {
        if (v192)
        {
          v63 = v194 == v191 && v56 == v192;
          if (v63 || (sub_20E4C6910() & 1) != 0)
          {
LABEL_400:

            sub_20E4167F8(v199, v3);

            return 0;
          }
        }
      }

      else if (!v192)
      {
        goto LABEL_400;
      }

      if (a3)
      {
        goto LABEL_161;
      }

LABEL_191:

      sub_20E4167F8(v199, v3);
    }

    if (v199)
    {
      v65 = 0;
    }

    else
    {
      v65 = v3 == 0xC000000000000000;
    }

    v66 = v188;
    v68 = !v65 || v188 < 3;
    v4 = v196;
    if (((v68 | v185) & 1) == 0)
    {
      v194 = v55;
      sub_20E41B8A8(0, 0xC000000000000000);

      sub_20E41B8A8(0, 0xC000000000000000);
      v62 = v56;

      sub_20E41B8A8(0, 0xC000000000000000);
      sub_20E4167F8(0, 0xC000000000000000);
      goto LABEL_135;
    }

    goto LABEL_174;
  }

  if (!*(a1 + 16))
  {
    v6 = v4 + 56;
    v7 = 1 << *(v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v4 + 56);
    v10 = (v7 + 63) >> 6;
    if (v202)
    {
      v11 = 0;
    }

    else
    {
      v11 = v5 == 0xC000000000000000;
    }

    v12 = !v11;
    v193 = v12;
    v198 = v5 >> 62;
    v13 = __OFSUB__(HIDWORD(v202), v202);
    v184 = v13;
    v187 = BYTE6(v5);

    v14 = 0;
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v15 = v205;
        }

        else
        {
          v15 = v205;
          do
          {
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_393;
            }

            if (v16 >= v10)
            {
              goto LABEL_303;
            }

            v9 = *(v6 + 8 * v16);
            ++v14;
          }

          while (!v9);
          v14 = v16;
        }

        v17 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v18 = (*(v4 + 48) + 48 * (v17 | (v14 << 6)));
        v19 = v18[1];
        v20 = v18[2];
        v3 = v18[3];
        v21 = v18[4];
        v206 = v18[5];
        if (v19)
        {
          if (!v15)
          {

            sub_20E41B8A8(v20, v3);

            goto LABEL_91;
          }

          v22 = *v18 == v203 && v19 == v15;
          if (!v22 && (sub_20E4C6910() & 1) == 0)
          {

LABEL_31:
            sub_20E41B8A8(v20, v3);

            if ((a3 & 1) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_62;
          }
        }

        else if (v15)
        {
          goto LABEL_31;
        }

        if (v3 >> 60 != 15)
        {
          break;
        }

        v23 = v197;
        if (v197 >> 60 == 15)
        {

          sub_20E41B8A8(v20, v3);

          sub_20E41B8A8(v20, v3);
          sub_20E41B8A8(v202, v197);
          v4 = v196;
          goto LABEL_36;
        }

LABEL_46:

        sub_20E41B8A8(v20, v3);

        sub_20E41B8A8(v20, v3);
        sub_20E41B8A8(v202, v23);
        sub_20E4167F8(v20, v3);
        sub_20E4167F8(v202, v23);
        v4 = v196;
        if ((a3 & 1) == 0)
        {
          goto LABEL_91;
        }

LABEL_62:
        if (!v205 || !v19)
        {
          goto LABEL_91;
        }

        LOBYTE(v211[0]) = 0;
        v30 = objc_opt_self();
        v31 = sub_20E4C6490();
        v32 = sub_20E4C6490();
        LOBYTE(v30) = [v30 compareDomain:v31 withDomainPattern:v32 outExactMatch:v211];

        sub_20E4167F8(v20, v3);

        v4 = v196;

        if (v30)
        {
          goto LABEL_387;
        }
      }

      v23 = v197;
      if (v197 >> 60 == 15)
      {
        goto LABEL_46;
      }

      v25 = v3 >> 62;
      if (v3 >> 62 == 3)
      {
        break;
      }

      v27 = v198;
      if (v25 > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_74;
        }

        v35 = *(v20 + 16);
        v34 = *(v20 + 24);
        v36 = __OFSUB__(v34, v35);
        v33 = v34 - v35;
        if (v36)
        {
          goto LABEL_416;
        }
      }

      else if (v25)
      {
        LODWORD(v33) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_418;
        }

        v33 = v33;
      }

      else
      {
        v33 = BYTE6(v3);
      }

LABEL_77:
      if (v27 > 1)
      {
        if (v27 != 2)
        {
          if (v33)
          {
LABEL_89:

            sub_20E41B8A8(v20, v3);

            sub_20E41B8A8(v20, v3);
            sub_20E41B8A8(v202, v197);
            sub_20E4167F8(v202, v197);
            v4 = v196;
LABEL_90:
            sub_20E4167F8(v20, v3);
            if ((a3 & 1) == 0)
            {
              goto LABEL_91;
            }

            goto LABEL_62;
          }

LABEL_92:

          sub_20E41B8A8(v20, v3);

          sub_20E41B8A8(v20, v3);
          sub_20E41B8A8(v202, v197);
          sub_20E4167F8(v202, v197);
          v4 = v196;
          goto LABEL_36;
        }

        v39 = *(v202 + 16);
        v38 = *(v202 + 24);
        v36 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v36)
        {
          goto LABEL_408;
        }
      }

      else
      {
        v37 = v187;
        if (v27)
        {
          v37 = HIDWORD(v202) - v202;
          if (v184)
          {
            goto LABEL_406;
          }
        }
      }

      if (v33 != v37)
      {
        goto LABEL_89;
      }

      if (v33 < 1)
      {
        goto LABEL_92;
      }

      v178 = v21;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v41 = *(v20 + 16);
          v179 = *(v20 + 24);
          goto LABEL_96;
        }

        memset(v211, 0, 14);
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v20, v3);

        sub_20E41B8A8(v20, v3);
        sub_20E41B8A8(v202, v197);
        sub_20E41B8A8(v202, v197);
        sub_20E47FDB4(v211, v202, v197, &v210);
        sub_20E4167F8(v202, v197);
        sub_20E4167F8(v202, v197);
        sub_20E424BA4(v202, v197);
        v40 = v210;
        v4 = v196;
      }

      else
      {
        if (v25)
        {
          v41 = v20;
          v179 = v20 >> 32;
          if (v20 >> 32 < v20)
          {
            goto LABEL_421;
          }

LABEL_96:
          sub_20E41B8A8(v202, v197);
          sub_20E41B8A8(v202, v197);

          sub_20E41B8A8(v20, v3);

          sub_20E41B8A8(v20, v3);
          sub_20E41B8A8(v202, v197);
          sub_20E41B8A8(v202, v197);
          LODWORD(v179) = sub_20E48A8DC(v41, v179, v3 & 0x3FFFFFFFFFFFFFFFLL, v202, v197);
          sub_20E4167F8(v202, v197);
          sub_20E4167F8(v202, v197);
          sub_20E424BA4(v202, v197);
          sub_20E424BA4(v202, v197);
          v4 = v196;
          v21 = v178;
          if ((v179 & 1) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_36;
        }

        v211[0] = v20;
        LOWORD(v211[1]) = v3;
        BYTE2(v211[1]) = BYTE2(v3);
        BYTE3(v211[1]) = BYTE3(v3);
        BYTE4(v211[1]) = BYTE4(v3);
        BYTE5(v211[1]) = BYTE5(v3);
        v179 = v211 + BYTE6(v3);
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v20, v3);

        sub_20E41B8A8(v20, v3);
        sub_20E41B8A8(v202, v197);
        sub_20E41B8A8(v202, v197);
        sub_20E47FDB4(v211, v202, v197, &v210);
        sub_20E4167F8(v202, v197);
        sub_20E4167F8(v202, v197);
        sub_20E424BA4(v202, v197);
        v40 = v210;
        v4 = v196;
      }

      if (!v40)
      {
        goto LABEL_90;
      }

LABEL_36:
      sub_20E4167F8(v20, v3);
      if (v206)
      {
        if (v192)
        {
          v179 = v20;
          v24 = v21 == v191 && v206 == v192;
          if (v24 || (sub_20E4C6910() & 1) != 0)
          {
            goto LABEL_43;
          }
        }
      }

      else if (!v192)
      {

        sub_20E4167F8(v20, v3);
        goto LABEL_399;
      }

      if (a3)
      {
        goto LABEL_62;
      }

LABEL_91:

      sub_20E4167F8(v20, v3);
    }

    if (v20)
    {
      v26 = 0;
    }

    else
    {
      v26 = v3 == 0xC000000000000000;
    }

    v27 = v198;
    v29 = !v26 || v198 < 3;
    v4 = v196;
    if (((v29 | v193) & 1) == 0)
    {

      sub_20E41B8A8(0, 0xC000000000000000);

      sub_20E41B8A8(0, 0xC000000000000000);
      sub_20E41B8A8(0, 0xC000000000000000);
      sub_20E4167F8(0, 0xC000000000000000);
      goto LABEL_36;
    }

LABEL_74:
    v33 = 0;
    goto LABEL_77;
  }

  v195 = a1[1];
  v90 = v4 + 56;
  v91 = 1 << *(v4 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v4 + 56);
  v208 = (v91 + 63) >> 6;
  if (v202)
  {
    v94 = 0;
  }

  else
  {
    v94 = v5 == 0xC000000000000000;
  }

  v95 = !v94;
  v183 = v95;
  v186 = v5 >> 62;
  v96 = __OFSUB__(HIDWORD(v202), v202);
  LODWORD(v179) = v96;
  v181 = BYTE6(v5);

  v97 = 0;
  while (1)
  {
    if (v93)
    {
      v98 = v205;
      goto LABEL_221;
    }

    v98 = v205;
    do
    {
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_392;
      }

      if (v99 >= v208)
      {

        v190 = 0;
        goto LABEL_305;
      }

      v93 = *(v90 + 8 * v99);
      ++v97;
    }

    while (!v93);
    v97 = v99;
LABEL_221:
    v100 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v101 = (*(v4 + 48) + 48 * (v100 | (v97 << 6)));
    v102 = v101[1];
    v3 = v101[3];
    v200 = v101[2];
    v103 = v101[4];
    v104 = v101[5];
    if (!v102)
    {
      if (!v98)
      {
        goto LABEL_232;
      }

LABEL_230:
      sub_20E41B8A8(v200, v3);

      if ((a3 & 1) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_261;
    }

    if (!v98)
    {

      sub_20E41B8A8(v200, v3);

      goto LABEL_291;
    }

    if (*v101 != v203 || v102 != v98)
    {
      v106 = v98;
      v107 = v101[4];
      v108 = sub_20E4C6910();
      v103 = v107;
      v98 = v106;
      if ((v108 & 1) == 0)
      {

        goto LABEL_230;
      }
    }

LABEL_232:
    if (v3 >> 60 != 15)
    {
      break;
    }

    v109 = v197;
    if (v197 >> 60 == 15)
    {
      v189 = v103;
      sub_20E41B8A8(v202, v197);

      sub_20E41B8A8(v200, v3);
      v110 = v104;

      sub_20E41B8A8(v200, v3);
      v4 = v196;
      goto LABEL_235;
    }

LABEL_245:
    sub_20E41B8A8(v202, v109);

    sub_20E41B8A8(v200, v3);

    sub_20E41B8A8(v200, v3);
    sub_20E4167F8(v200, v3);
    sub_20E4167F8(v202, v109);
    v4 = v196;
    if ((a3 & 1) == 0)
    {
LABEL_291:

      sub_20E4167F8(v200, v3);

      continue;
    }

LABEL_261:
    if (!v98 || !v102)
    {
      goto LABEL_291;
    }

    LOBYTE(v211[0]) = 0;
    v117 = objc_opt_self();
    v118 = v3;
    v3 = v200;
    v119 = sub_20E4C6490();
    v120 = sub_20E4C6490();
    LOBYTE(v117) = [v117 compareDomain:v119 withDomainPattern:v120 outExactMatch:v211];

    sub_20E4167F8(v200, v118);

    v4 = v196;

    if (v117)
    {

      goto LABEL_397;
    }
  }

  v109 = v197;
  if (v197 >> 60 == 15)
  {
    goto LABEL_245;
  }

  v112 = v3 >> 62;
  if (v3 >> 62 == 3)
  {
    if (v200)
    {
      v113 = 0;
    }

    else
    {
      v113 = v3 == 0xC000000000000000;
    }

    v114 = v186;
    v116 = !v113 || v186 < 3;
    v4 = v196;
    if (((v116 | v183) & 1) == 0)
    {
      v189 = v103;
      sub_20E41B8A8(0, 0xC000000000000000);

      sub_20E41B8A8(0, 0xC000000000000000);
      v110 = v104;

      sub_20E41B8A8(0, 0xC000000000000000);
      sub_20E4167F8(0, 0xC000000000000000);
      goto LABEL_235;
    }

LABEL_274:
    v121 = 0;
    goto LABEL_275;
  }

  v114 = v186;
  if (v112 > 1)
  {
    if (v112 != 2)
    {
      goto LABEL_274;
    }

    v123 = *(v200 + 16);
    v122 = *(v200 + 24);
    v36 = __OFSUB__(v122, v123);
    v121 = v122 - v123;
    if (v36)
    {
      goto LABEL_417;
    }

LABEL_275:
    if (v114 > 1)
    {
      goto LABEL_281;
    }

    goto LABEL_276;
  }

  if (v112)
  {
    LODWORD(v121) = HIDWORD(v200) - v200;
    if (__OFSUB__(HIDWORD(v200), v200))
    {
      goto LABEL_419;
    }

    v121 = v121;
    if (v186 > 1)
    {
      goto LABEL_281;
    }

LABEL_276:
    v124 = v200;
    v125 = v181;
    if (v114)
    {
      v125 = HIDWORD(v202) - v202;
      if (v179)
      {
LABEL_407:
        __break(1u);
LABEL_408:
        __break(1u);
        goto LABEL_409;
      }
    }

LABEL_283:
    if (v121 != v125)
    {
      goto LABEL_289;
    }

    if (v121 < 1)
    {
      goto LABEL_292;
    }

    v189 = v103;
    if (v112 > 1)
    {
      if (v112 != 2)
      {
        memset(v211, 0, 14);
        v128 = v197;
        sub_20E41B8A8(v202, v197);
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v200, v3);
        v110 = v104;

        sub_20E41B8A8(v200, v3);
        v130 = v202;
        sub_20E41B8A8(v202, v197);
        v129 = v202;
LABEL_300:
        sub_20E47FDB4(v211, v129, v128, &v210);
        sub_20E4167F8(v130, v128);
        sub_20E4167F8(v130, v128);
        sub_20E424BA4(v130, v128);
        v98 = v205;
        v4 = v196;
        if (v210)
        {
          goto LABEL_235;
        }

LABEL_290:
        sub_20E4167F8(v200, v3);
        if ((a3 & 1) == 0)
        {
          goto LABEL_291;
        }

        goto LABEL_261;
      }

      v131 = v202;
      v170 = *(v200 + 16);
      v172 = *(v200 + 24);
      sub_20E41B8A8(v202, v197);
      sub_20E41B8A8(v202, v197);
      sub_20E41B8A8(v202, v197);

      sub_20E41B8A8(v200, v3);
      v110 = v104;

      sub_20E41B8A8(v200, v3);
      sub_20E41B8A8(v202, v197);
      v132 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v133 = v170;
      v134 = v172;
      v135 = v202;
      v136 = v197;
      v137 = v197;
    }

    else
    {
      if (!v112)
      {
        v211[0] = v200;
        LOWORD(v211[1]) = v3;
        BYTE2(v211[1]) = BYTE2(v3);
        BYTE3(v211[1]) = BYTE3(v3);
        BYTE4(v211[1]) = BYTE4(v3);
        BYTE5(v211[1]) = BYTE5(v3);
        v128 = v197;
        sub_20E41B8A8(v202, v197);
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v200, v3);
        v110 = v104;

        sub_20E41B8A8(v200, v3);
        sub_20E41B8A8(v202, v197);
        v129 = v202;
        v130 = v202;
        goto LABEL_300;
      }

      if (v200 >> 32 < v200)
      {
        goto LABEL_422;
      }

      v131 = v202;
      sub_20E41B8A8(v202, v197);
      sub_20E41B8A8(v202, v197);
      sub_20E41B8A8(v202, v197);

      sub_20E41B8A8(v200, v3);
      v110 = v104;

      sub_20E41B8A8(v200, v3);
      v137 = v197;
      sub_20E41B8A8(v202, v197);
      v132 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v133 = v200;
      v134 = v200 >> 32;
      v135 = v202;
      v136 = v197;
    }

    v173 = sub_20E48A8DC(v133, v134, v132, v135, v136);
    sub_20E4167F8(v131, v137);
    sub_20E4167F8(v131, v137);
    sub_20E424BA4(v131, v137);
    sub_20E424BA4(v131, v137);
    v98 = v205;
    v4 = v196;
    if (v173)
    {
      goto LABEL_235;
    }

    goto LABEL_290;
  }

  v121 = BYTE6(v3);
  if (v186 <= 1)
  {
    goto LABEL_276;
  }

LABEL_281:
  if (v114 == 2)
  {
    v124 = v200;
    v127 = *(v202 + 16);
    v126 = *(v202 + 24);
    v36 = __OFSUB__(v126, v127);
    v125 = v126 - v127;
    if (!v36)
    {
      goto LABEL_283;
    }

LABEL_409:
    __break(1u);
LABEL_410:
    __break(1u);
LABEL_411:
    __break(1u);
LABEL_412:
    __break(1u);
LABEL_413:
    __break(1u);
LABEL_414:
    __break(1u);
LABEL_415:
    __break(1u);
LABEL_416:
    __break(1u);
LABEL_417:
    __break(1u);
LABEL_418:
    __break(1u);
LABEL_419:
    __break(1u);
LABEL_420:
    __break(1u);
LABEL_421:
    __break(1u);
LABEL_422:
    __break(1u);
LABEL_423:
    __break(1u);
  }

  v124 = v200;
  if (v121)
  {
LABEL_289:
    sub_20E41B8A8(v202, v197);

    sub_20E41B8A8(v124, v3);

    sub_20E41B8A8(v124, v3);
    sub_20E4167F8(v202, v197);
    v4 = v196;
    v98 = v205;
    goto LABEL_290;
  }

LABEL_292:
  v189 = v103;
  sub_20E41B8A8(v202, v197);

  sub_20E41B8A8(v124, v3);
  v110 = v104;

  sub_20E41B8A8(v124, v3);
  sub_20E4167F8(v202, v197);
  v4 = v196;
  v98 = v205;
LABEL_235:
  sub_20E4167F8(v200, v3);
  if (v110)
  {
    if (v192)
    {
      v111 = v189 == v191 && v104 == v192;
      if (v111 || (sub_20E4C6910() & 1) != 0)
      {
        goto LABEL_396;
      }
    }

LABEL_260:
    if ((a3 & 1) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_261;
  }

  if (v192)
  {
    goto LABEL_260;
  }

LABEL_396:

  sub_20E4167F8(v200, v3);

LABEL_397:
  v190 = 1;
LABEL_305:
  v139 = 1 << *(v195 + 32);
  v140 = -1;
  if (v139 < 64)
  {
    v140 = ~(-1 << v139);
  }

  v141 = v140 & *(v195 + 56);
  v142 = (v139 + 63) >> 6;

  v143 = 0;
  while (1)
  {
    if (v141)
    {
      v144 = v205;
    }

    else
    {
      v144 = v205;
      do
      {
        v145 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_394;
        }

        if (v145 >= v142)
        {
          goto LABEL_387;
        }

        v141 = *(v195 + 56 + 8 * v145);
        ++v143;
      }

      while (!v141);
      v143 = v145;
    }

    v146 = __clz(__rbit64(v141));
    v141 &= v141 - 1;
    v147 = (*(v195 + 48) + 48 * (v146 | (v143 << 6)));
    v3 = *v147;
    v148 = v147[1];
    v149 = v147[2];
    v209 = v147[3];
    v150 = v147[4];
    v151 = v147[5];
    if (v148)
    {
      if (!v144)
      {

        sub_20E41B8A8(v149, v209);

        goto LABEL_386;
      }

      v152 = v3 == v203 && v148 == v144;
      if (!v152 && (sub_20E4C6910() & 1) == 0)
      {

LABEL_324:
        sub_20E41B8A8(v149, v209);

        if ((a3 & 1) == 0)
        {
          goto LABEL_386;
        }

        goto LABEL_380;
      }
    }

    else if (v144)
    {
      goto LABEL_324;
    }

    v201 = v3;
    if (v209 >> 60 == 15)
    {
      if (v197 >> 60 != 15)
      {
        goto LABEL_331;
      }

      v177 = v150;
      sub_20E41B8A8(v202, v197);

      sub_20E41B8A8(v149, v209);
      v153 = v151;

      sub_20E41B8A8(v149, v209);
      goto LABEL_370;
    }

    if (v197 >> 60 == 15)
    {
LABEL_331:
      sub_20E41B8A8(v202, v197);

      sub_20E41B8A8(v149, v209);

      sub_20E41B8A8(v149, v209);
      sub_20E4167F8(v149, v209);
      v144 = v205;
      sub_20E4167F8(v202, v197);
      if ((a3 & 1) == 0)
      {
        goto LABEL_386;
      }

      goto LABEL_380;
    }

    v154 = v209 >> 62;
    if (v209 >> 62 == 3)
    {
      if (v149)
      {
        v155 = 0;
      }

      else
      {
        v155 = v209 == 0xC000000000000000;
      }

      v156 = v186;
      v158 = !v155 || v186 < 3;
      if (((v158 | v183) & 1) == 0)
      {
        v177 = v150;
        sub_20E41B8A8(0, 0xC000000000000000);

        sub_20E41B8A8(0, 0xC000000000000000);
        v153 = v151;

        sub_20E41B8A8(0, 0xC000000000000000);
        v160 = 0;
        v161 = 0xC000000000000000;
        goto LABEL_369;
      }

      v159 = 0;
    }

    else
    {
      v156 = v186;
      if (v154 == 2)
      {
        v163 = *(v149 + 16);
        v162 = *(v149 + 24);
        v36 = __OFSUB__(v162, v163);
        v159 = v162 - v163;
        if (v36)
        {
          goto LABEL_414;
        }
      }

      else if (v154 == 1)
      {
        LODWORD(v159) = HIDWORD(v149) - v149;
        if (__OFSUB__(HIDWORD(v149), v149))
        {
          goto LABEL_413;
        }

        v159 = v159;
      }

      else
      {
        v159 = BYTE6(v209);
      }
    }

    if (v156 <= 1)
    {
      v164 = v181;
      if (v156)
      {
        v164 = HIDWORD(v202) - v202;
        if (v179)
        {
          goto LABEL_412;
        }
      }

      goto LABEL_360;
    }

    if (v156 != 2)
    {
      if (v159)
      {
LABEL_365:
        sub_20E41B8A8(v202, v197);

        sub_20E41B8A8(v149, v209);

        sub_20E41B8A8(v149, v209);
        sub_20E4167F8(v202, v197);
LABEL_366:
        sub_20E4167F8(v149, v209);
        v3 = v201;
        if ((a3 & 1) == 0)
        {
          goto LABEL_386;
        }

        goto LABEL_380;
      }

LABEL_368:
      v177 = v150;
      sub_20E41B8A8(v202, v197);

      sub_20E41B8A8(v149, v209);
      v153 = v151;

      sub_20E41B8A8(v149, v209);
      v160 = v202;
      v161 = v197;
LABEL_369:
      sub_20E4167F8(v160, v161);
      goto LABEL_370;
    }

    v166 = *(v202 + 16);
    v165 = *(v202 + 24);
    v36 = __OFSUB__(v165, v166);
    v164 = v165 - v166;
    if (v36)
    {
      goto LABEL_411;
    }

LABEL_360:
    if (v159 != v164)
    {
      goto LABEL_365;
    }

    if (v159 < 1)
    {
      goto LABEL_368;
    }

    v177 = v150;
    sub_20E41B8A8(v202, v197);

    sub_20E41B8A8(v149, v209);
    v153 = v151;

    sub_20E41B8A8(v149, v209);
    sub_20E41B8A8(v202, v197);
    v174 = sub_20E47FFE4(v149, v209, v202, v197);
    v144 = v205;
    sub_20E4167F8(v202, v197);
    if ((v174 & 1) == 0)
    {
      goto LABEL_366;
    }

LABEL_370:
    sub_20E4167F8(v149, v209);
    if (!v153)
    {
      v3 = v201;
      v144 = v205;
      if (!v192)
      {
        break;
      }

      goto LABEL_379;
    }

    if (!v192)
    {
      v3 = v201;
      v144 = v205;
      if ((a3 & 1) == 0)
      {
        goto LABEL_386;
      }

      goto LABEL_380;
    }

    v167 = v177 == v191 && v151 == v192;
    v3 = v201;
    if (v167)
    {
      break;
    }

    v144 = v205;
    if (sub_20E4C6910())
    {
      break;
    }

LABEL_379:
    if ((a3 & 1) == 0)
    {
      goto LABEL_386;
    }

LABEL_380:
    if (v144 && v148)
    {
      LOBYTE(v211[0]) = 0;
      v168 = objc_opt_self();
      v169 = sub_20E4C6490();
      v3 = sub_20E4C6490();
      LOBYTE(v168) = [v168 compareDomain:v169 withDomainPattern:v3 outExactMatch:v211];

      sub_20E4167F8(v149, v209);

      if (v168)
      {

        return (v190 & 1) != 0;
      }
    }

    else
    {
LABEL_386:

      sub_20E4167F8(v149, v209);
    }
  }

  sub_20E4167F8(v149, v209);

  return (v190 & 1) != 0;
}

unint64_t sub_20E47FB18(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_20E429A8C(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E47FC20(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v23 = (v4 + 63) >> 6;
  v24 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v26 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v2 << 6);
    v11 = (*(result + 48) + 48 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v17 = v11[4];
    v16 = v11[5];
    v18 = *(*(result + 56) + v10);

    sub_20E41B8A8(v14, v15);

    v19 = v13 == 1;
    if (v13 != 1)
    {
      v27[0] = v12;
      v27[1] = v13;
      v27[2] = v14;
      v27[3] = v15;
      v27[4] = v17;
      v27[5] = v16;
      v20 = sub_20E429A50(v27);
      v22 = v21;
      sub_20E45CB00(v27);
      if (v22)
      {
        result = v24;
        v6 = v26;
        if (v18 == *(*(a2 + 56) + v20))
        {
          continue;
        }
      }
    }

    return v19;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v23)
    {
      return 1;
    }

    v9 = *(v3 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v26 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E47FDB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_20E4C5FC0();
    if (v10)
    {
      v11 = sub_20E4C5FE0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_20E4C5FD0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_20E4C5FC0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_20E4C5FE0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_20E4C5FD0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20E47FFE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_20E48A8DC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_20E424BA4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_20E47FDB4(v13, a3, a4, &v12);
  v10 = v4;
  sub_20E424BA4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void sub_20E480174(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(result + 48) + 48 * (v10 | (v9 << 6)));
      v13 = v11[1];
      v12 = v11[2];
      v19[0] = *v11;
      v19[1] = v13;
      v19[2] = v12;
      sub_20E45CBC4(v19, &v14);
      sub_20E48876C(v19, &v14);
      sub_20E45CC20(v19);
      sub_20E48C3C4(v14, *(&v14 + 1), v15, v16, v17, v18);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20E480298(uint64_t a1, uint64_t a2)
{
  v227 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v2 = a1;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v206 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v219 = a2;
  v212 = (a2 + 56);
  v10 = v222;
  v9 = v223;
  v11 = v224;
  v12 = 0;
  v198 = 0;
  v205 = v8;
  v203 = a1 + 56;

LABEL_8:
  if (v7)
  {
    goto LABEL_14;
  }

  v14 = v12;
  do
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      v222 = v10;
      v223 = v9;
      v224 = v11;
      __break(1u);
      goto LABEL_340;
    }

    if (v15 >= v8)
    {
      v222 = v10;
      v223 = v9;
      v224 = v11;
      sub_20E418D5C(v2);
      return v219;
    }

    v7 = *(v4 + 8 * v15);
    ++v14;
  }

  while (!v7);
  v12 = v15;
LABEL_14:
  v16 = __clz(__rbit64(v7));
  v17 = (v7 - 1) & v7;
  v18 = v2;
  v19 = (*(v2 + 48) + 48 * (v16 | (v12 << 6)));
  v20 = *v19;
  v21 = v19[1];
  v23 = v19[2];
  v22 = v19[3];
  v24 = v19[5];
  v208 = v19[4];
  v225 = v12;
  v226 = v17;
  sub_20E4C69C0();
  v211 = v24;
  v213 = v21;
  sub_20E4C69E0();
  if (v21)
  {

    sub_20E41B8A8(v23, v22);

    sub_20E4C6530();
  }

  else
  {
    sub_20E41B8A8(v23, v22);
  }

  v214 = v22 >> 60;
  sub_20E4C69E0();
  if (v22 >> 60 != 15)
  {
    sub_20E4C6130();
  }

  v215 = v22;
  v216 = v23;
  v210 = v12;
  v209 = v17;
  sub_20E4C69E0();
  if (v211)
  {
    sub_20E4C6530();
  }

  v25 = v213;
  v26 = sub_20E4C69F0();
  v27 = -1 << *(v219 + 32);
  v12 = v26 & ~v27;
  v8 = v12 >> 6;
  v28 = v212;
  v7 = 1 << v12;
  if (((1 << v12) & v212[v12 >> 6]) == 0)
  {

    sub_20E4167F8(v216, v215);
    v2 = v18;
    goto LABEL_7;
  }

  v217 = v20;
  v218 = ~v27;
  v207 = v215 >> 62;
  if (v216)
  {
    v29 = 0;
  }

  else
  {
    v29 = v215 == 0xC000000000000000;
  }

  v30 = !v29;
  LODWORD(v204) = v30;
  v195 = HIDWORD(v216);
  v31 = __OFSUB__(HIDWORD(v216), v216);
  LODWORD(v200) = v31;
  v199 = HIDWORD(v216) - v216;
  v201 = BYTE6(v215);
  v196 = v216;
  v194 = v216 >> 32;
  v193 = (v216 >> 32) - v216;
  while (2)
  {
    v32 = (*(v219 + 48) + 48 * v12);
    v34 = v32[1];
    v33 = v32[2];
    v36 = v32[3];
    v35 = v32[4];
    v4 = v32[5];
    if (!v34)
    {
      if (!v25)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    }

    if (!v25)
    {
      goto LABEL_33;
    }

    v37 = *v32 == v217 && v34 == v25;
    if (!v37 && (sub_20E4C6910() & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_43:
    if (v36 >> 60 == 15)
    {
      if (v214 > 0xE)
      {

        sub_20E41B8A8(v33, v36);

        sub_20E41B8A8(v33, v36);
        sub_20E41B8A8(v216, v215);
        goto LABEL_82;
      }

LABEL_32:
      sub_20E41B8A8(v33, v36);
      sub_20E41B8A8(v216, v215);
      sub_20E4167F8(v33, v36);
      v25 = v213;
      sub_20E4167F8(v216, v215);
LABEL_33:
      v12 = (v12 + 1) & v218;
      v8 = v12 >> 6;
      v7 = 1 << v12;
      if ((v28[v12 >> 6] & (1 << v12)) != 0)
      {
        continue;
      }

      sub_20E4167F8(v216, v215);
      v4 = v203;
      v2 = v202;
LABEL_7:

      v11 = v206;
      v9 = v4;
      v10 = v2;
      v12 = v210;
      v7 = v209;
      v8 = v205;
      goto LABEL_8;
    }

    break;
  }

  if (v214 > 0xE)
  {
    goto LABEL_32;
  }

  v38 = v36 >> 62;
  if (v36 >> 62 != 3)
  {
    v40 = v207;
    if (v38 <= 1)
    {
      if (v38)
      {
        LODWORD(v45) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_344;
        }

        v45 = v45;
        if (v207 > 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v45 = BYTE6(v36);
        if (v207 > 1)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_66;
    }

    if (v38 != 2)
    {
      goto LABEL_69;
    }

    v47 = *(v33 + 16);
    v46 = *(v33 + 24);
    v48 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (v48)
    {
      goto LABEL_343;
    }

    if (v207 <= 1)
    {
      goto LABEL_66;
    }

LABEL_70:
    if (v40 == 2)
    {
      v51 = *(v216 + 16);
      v50 = *(v216 + 24);
      v48 = __OFSUB__(v50, v51);
      v49 = v50 - v51;
      if (v48)
      {
        goto LABEL_342;
      }

      goto LABEL_72;
    }

    if (!v45)
    {
      goto LABEL_80;
    }

LABEL_78:

    sub_20E41B8A8(v33, v36);

    sub_20E41B8A8(v33, v36);
    sub_20E41B8A8(v216, v215);
    v25 = v213;
    sub_20E4167F8(v216, v215);
    goto LABEL_79;
  }

  if (v33)
  {
    v39 = 0;
  }

  else
  {
    v39 = v36 == 0xC000000000000000;
  }

  v40 = v207;
  v42 = !v39 || v207 < 3;
  if (((v42 | v204) & 1) == 0)
  {

    sub_20E41B8A8(0, 0xC000000000000000);

    sub_20E41B8A8(0, 0xC000000000000000);
    sub_20E41B8A8(0, 0xC000000000000000);
    v43 = 0;
    v44 = 0xC000000000000000;
    goto LABEL_81;
  }

LABEL_69:
  v45 = 0;
  if (v40 > 1)
  {
    goto LABEL_70;
  }

LABEL_66:
  v49 = v201;
  if (v40)
  {
    v49 = v199;
    if (v200)
    {
      goto LABEL_341;
    }
  }

LABEL_72:
  if (v45 != v49)
  {
    goto LABEL_78;
  }

  if (v45 < 1)
  {
LABEL_80:

    sub_20E41B8A8(v33, v36);

    sub_20E41B8A8(v33, v36);
    sub_20E41B8A8(v216, v215);
    v43 = v216;
    v25 = v213;
    v44 = v215;
    goto LABEL_81;
  }

  v197 = v35;
  if (v38 <= 1)
  {
    if (!v38)
    {
      __s2[0] = v33;
      LOWORD(__s2[1]) = v36;
      BYTE2(__s2[1]) = BYTE2(v36);
      BYTE3(__s2[1]) = BYTE3(v36);
      BYTE4(__s2[1]) = BYTE4(v36);
      BYTE5(__s2[1]) = BYTE5(v36);
      v192 = __s2 + BYTE6(v36);

      sub_20E41B8A8(v33, v36);

      sub_20E41B8A8(v33, v36);
      v52 = v216;
      v53 = v215;
      sub_20E41B8A8(v216, v215);
      goto LABEL_104;
    }

    v192 = v33;
    if (v33 <= v33 >> 32)
    {

      sub_20E41B8A8(v33, v36);

      sub_20E41B8A8(v33, v36);
      sub_20E41B8A8(v216, v215);
      v59 = sub_20E4C5FC0();
      if (v59)
      {
        v60 = v59;
        v28 = (v36 & 0x3FFFFFFFFFFFFFFFLL);
        v61 = sub_20E4C5FE0();
        if (__OFSUB__(v192, v61))
        {
          goto LABEL_353;
        }

        v192 = &v192[v60 - v61];
      }

      else
      {
        v192 = 0;
      }

      sub_20E4C5FD0();
      v35 = v197;
      if (v207 != 2)
      {
        if (v207 == 1)
        {
          if (v194 < v196)
          {
            goto LABEL_359;
          }

          v64 = sub_20E4C5FC0();
          if (v64)
          {
            v191 = v64;
            v65 = sub_20E4C5FE0();
            if (__OFSUB__(v196, v65))
            {
              goto LABEL_366;
            }

            v35 = &v191[v196 - v65];
          }

          else
          {
            v35 = 0;
          }

          v87 = sub_20E4C5FD0();
          v83 = v193;
          if (v87 < v193)
          {
            v83 = v87;
          }

          v84 = v192;
          if (!v192)
          {
            goto LABEL_379;
          }

          if (!v35)
          {
            goto LABEL_378;
          }

LABEL_161:
          if (v84 == v35)
          {
            sub_20E4167F8(v216, v215);
            v35 = v197;
            goto LABEL_82;
          }

          v88 = memcmp(v84, v35, v83);
          sub_20E4167F8(v216, v215);
          v35 = v197;
          if (!v88)
          {
LABEL_82:
            sub_20E4167F8(v33, v36);
            if (v4)
            {
              v28 = v212;
              if (v211)
              {
                if (v35 == v208 && v4 == v211)
                {
LABEL_170:
                  v222 = v202;
                  v223 = v203;
                  v224 = v206;

                  sub_20E4167F8(v33, v36);

                  sub_20E4167F8(v216, v215);
                }

                else
                {
                  v55 = sub_20E4C6910();

                  sub_20E4167F8(v33, v36);

                  if ((v55 & 1) == 0)
                  {
                    v25 = v213;
                    goto LABEL_33;
                  }

                  v222 = v202;
                  v223 = v203;
                  v224 = v206;

                  sub_20E4167F8(v216, v215);
                }

                v91 = *(v219 + 32);
                v4 = ((1 << v91) + 63) >> 6;
                v13 = 8 * v4;
                if ((v91 & 0x3Fu) > 0xD)
                {
                  goto LABEL_347;
                }

                while (1)
                {
                  v191 = v4;
                  v192 = &v187;
                  MEMORY[0x28223BE20](v90);
                  v93 = &v187 - ((v92 + 15) & 0x3FFFFFFFFFFFFFF0);
                  memcpy(v93, v28, v92);
                  v94 = *(v219 + 16);
                  v95 = *&v93[8 * v8] & ~v7;
                  v194 = v93;
                  *&v93[8 * v8] = v95;
                  v193 = v94 - 1;
LABEL_174:
                  v96 = v203;
                  v12 = v202;
                  v4 = v210;
                  v97 = v209;
                  v98 = v205;
LABEL_175:
                  if (v97)
                  {
                    break;
                  }

                  v99 = v4;
                  while (1)
                  {
                    v100 = v99 + 1;
                    if (__OFADD__(v99, 1))
                    {
                      break;
                    }

                    if (v100 >= v98)
                    {
                      v89 = sub_20E487DBC(v194, v191, v193, v219, &qword_27C8CF298, &qword_20E4C95D8, sub_20E42E740);
                      goto LABEL_337;
                    }

                    v97 = *(v96 + 8 * v100);
                    ++v99;
                    if (v97)
                    {
                      v4 = v100;
                      goto LABEL_181;
                    }
                  }

LABEL_340:
                  __break(1u);
LABEL_341:
                  v222 = v202;
                  v223 = v203;
                  v224 = v206;
                  __break(1u);
LABEL_342:
                  v222 = v202;
                  v223 = v203;
                  v224 = v206;
                  __break(1u);
LABEL_343:
                  v222 = v202;
                  v223 = v203;
                  v224 = v206;
                  __break(1u);
LABEL_344:
                  v222 = v202;
                  v223 = v203;
                  v224 = v206;
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  v185 = v13;

                  v28 = v185;
                  if (!swift_stdlib_isStackAllocationSafe())
                  {
                    goto LABEL_354;
                  }

                  v28 = v212;
                }

LABEL_181:
                v101 = (*(v12 + 48) + 48 * (__clz(__rbit64(v97)) | (v4 << 6)));
                v102 = *v101;
                v7 = v101[1];
                v104 = v101[2];
                v103 = v101[3];
                v105 = v101[4];
                v106 = v101[5];
                v222 = v12;
                v223 = v96;
                v224 = v206;
                v225 = v4;
                v210 = v4;
                v209 = (v97 - 1) & v97;
                v226 = v209;
                v107 = v219;
                v217 = v102;
                v221[0] = v102;
                v221[1] = v7;
                v221[2] = v104;
                v221[3] = v103;
                v208 = v105;
                v221[4] = v105;
                v221[5] = v106;
                sub_20E4C69C0();

                sub_20E41B8A8(v104, v103);
                v214 = v106;

                WebDomain.hash(into:)(__s2);
                v108 = sub_20E4C69F0();
                v109 = -1 << *(v107 + 32);
                v4 = v108 & ~v109;
                v8 = v4 >> 6;
                v28 = v212;
                v110 = 1 << v4;
                v29 = ((1 << v4) & v212[v4 >> 6]) == 0;
                v216 = v103;
                v215 = v104;
                if (v29)
                {
LABEL_173:

                  sub_20E4167F8(v215, v216);

                  goto LABEL_174;
                }

                v218 = ~v109;
                v211 = v103 >> 62;
                if (v104)
                {
                  v111 = 0;
                }

                else
                {
                  v111 = v103 == 0xC000000000000000;
                }

                v112 = !v111;
                LODWORD(v207) = v112;
                v197 = HIDWORD(v104);
                v113 = __OFSUB__(HIDWORD(v104), v104);
                LODWORD(v201) = v113;
                v200 = HIDWORD(v104) - v104;
                v204 = BYTE6(v103);
                v199 = v104;
                v196 = v104 >> 32;
                v195 = (v104 >> 32) - v104;
                while (2)
                {
                  v115 = (*(v219 + 48) + 48 * v4);
                  v116 = v115[1];
                  v12 = v115[2];
                  v25 = v115[3];
                  v117 = v115[4];
                  v118 = v115[5];
                  if (!v116)
                  {
                    if (!v7)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_193;
                  }

                  if (!v7)
                  {
                    goto LABEL_193;
                  }

                  if (*v115 != v217 || v116 != v7)
                  {
                    v120 = v115[3];
                    v121 = v115[2];
                    v122 = v115[5];
                    v123 = v7;
                    v124 = v115[4];
                    v125 = sub_20E4C6910();
                    v117 = v124;
                    v7 = v123;
                    v118 = v122;
                    v12 = v121;
                    v25 = v120;
                    if ((v125 & 1) == 0)
                    {
                      goto LABEL_193;
                    }
                  }

LABEL_203:
                  if (v25 >> 60 == 15)
                  {
                    v126 = v216;
                    if (v216 >> 60 == 15)
                    {
                      v213 = v117;

                      sub_20E41B8A8(v12, v25);

                      sub_20E41B8A8(v12, v25);
                      sub_20E41B8A8(v215, v126);
                      goto LABEL_243;
                    }

LABEL_192:
                    sub_20E41B8A8(v12, v25);
                    v114 = v215;
                    sub_20E41B8A8(v215, v126);
                    sub_20E4167F8(v12, v25);
                    sub_20E4167F8(v114, v126);
LABEL_193:
                    v4 = (v4 + 1) & v218;
                    v8 = v4 >> 6;
                    v110 = 1 << v4;
                    if ((v28[v4 >> 6] & (1 << v4)) == 0)
                    {
                      goto LABEL_173;
                    }

                    continue;
                  }

                  break;
                }

                v126 = v216;
                if (v216 >> 60 == 15)
                {
                  goto LABEL_192;
                }

                v127 = v25 >> 62;
                if (v25 >> 62 == 3)
                {
                  if (v12)
                  {
                    v128 = 0;
                  }

                  else
                  {
                    v128 = v25 == 0xC000000000000000;
                  }

                  v129 = v211;
                  v131 = !v128 || v211 < 3;
                  if (((v131 | v207) & 1) == 0)
                  {
                    v213 = v117;

                    sub_20E41B8A8(0, 0xC000000000000000);

                    sub_20E41B8A8(0, 0xC000000000000000);
                    sub_20E41B8A8(0, 0xC000000000000000);
                    v132 = 0;
                    v133 = 0xC000000000000000;
LABEL_242:
                    sub_20E4167F8(v132, v133);
LABEL_243:
                    sub_20E4167F8(v12, v25);
LABEL_244:
                    if (v118)
                    {
                      v28 = v212;
                      if (v214)
                      {
                        if (v213 == v208 && v118 == v214)
                        {

                          sub_20E4167F8(v12, v25);

                          sub_20E4167F8(v215, v216);
                          goto LABEL_332;
                        }

                        v147 = sub_20E4C6910();

                        sub_20E4167F8(v12, v25);

                        if (v147)
                        {
                          goto LABEL_331;
                        }

                        goto LABEL_251;
                      }

                      sub_20E4167F8(v12, v25);
                    }

                    else
                    {

                      sub_20E4167F8(v12, v25);
                      v28 = v212;
                      if (!v214)
                      {

LABEL_331:

                        sub_20E4167F8(v215, v216);
LABEL_332:

                        v182 = *(v194 + 8 * v8);
                        *(v194 + 8 * v8) = v182 & ~v110;
                        v96 = v203;
                        v12 = v202;
                        v4 = v210;
                        v97 = v209;
                        v98 = v205;
                        if ((v182 & v110) != 0)
                        {
                          v183 = v193 - 1;
                          if (__OFSUB__(v193, 1))
                          {
                            goto LABEL_375;
                          }

                          --v193;
                          if (!v183)
                          {

                            v89 = MEMORY[0x277D84FA0];
                            goto LABEL_337;
                          }
                        }

                        goto LABEL_175;
                      }
                    }

                    goto LABEL_193;
                  }

LABEL_229:
                  v134 = 0;
                  if (v129 > 1)
                  {
                    goto LABEL_230;
                  }

LABEL_226:
                  v137 = v204;
                  if (v129)
                  {
                    v137 = v200;
                    if (v201)
                    {
                      goto LABEL_346;
                    }
                  }

LABEL_232:
                  if (v134 == v137)
                  {
                    if (v134 >= 1)
                    {
                      v213 = v117;
                      if (v127 > 1)
                      {
                        v148 = v215;
                        if (v127 != 2)
                        {
                          memset(__s2, 0, 14);

                          sub_20E41B8A8(v12, v25);

                          sub_20E41B8A8(v12, v25);
                          v156 = v216;
                          sub_20E41B8A8(v148, v216);
                          v157 = v148;
                          v35 = v198;
                          sub_20E47FDB4(__s2, v157, v156, v221);
                          v198 = v35;
                          if (v35)
                          {
                            goto LABEL_395;
                          }

                          v142 = v215;
                          v143 = v156;
                          goto LABEL_270;
                        }

                        v190 = *(v12 + 16);

                        sub_20E41B8A8(v12, v25);

                        sub_20E41B8A8(v12, v25);
                        sub_20E41B8A8(v148, v216);
                        v149 = sub_20E4C5FC0();
                        if (v149)
                        {
                          v150 = v149;
                          v151 = sub_20E4C5FE0();
                          if (__OFSUB__(v190, v151))
                          {
                            goto LABEL_361;
                          }

                          v190 = &v190[v150 - v151];
                        }

                        else
                        {
                          v190 = 0;
                        }

                        sub_20E4C5FD0();
                        if (v211 != 2)
                        {
                          v35 = v216;
                          if (v211 == 1)
                          {
                            if (v196 < v199)
                            {
                              goto LABEL_367;
                            }

                            v35 = sub_20E4C5FC0();
                            if (v35)
                            {
                              v159 = sub_20E4C5FE0();
                              if (__OFSUB__(v199, v159))
                              {
                                goto LABEL_373;
                              }

                              v35 += v199 - v159;
                            }

                            v160 = sub_20E4C5FD0();
                            v161 = v195;
                            if (v160 < v195)
                            {
                              v161 = v160;
                            }

                            v162 = v190;
                            if (!v190)
                            {
                              goto LABEL_393;
                            }

                            if (!v35)
                            {
                              goto LABEL_392;
                            }

                            goto LABEL_295;
                          }

                          v171 = v190;
                          v172 = v215;
                          LODWORD(__s2[0]) = v215;
                          BYTE4(__s2[0]) = v197;
                          *(__s2 + 5) = *(&v215 + 5);
                          HIBYTE(__s2[0]) = HIBYTE(v215);
                          LODWORD(__s2[1]) = v216;
                          WORD2(__s2[1]) = WORD2(v216);
                          if (!v190)
                          {
                            goto LABEL_388;
                          }

                          goto LABEL_306;
                        }

                        v167 = *(v215 + 24);
                        v189 = *(v215 + 16);
                        v188 = v167;
                        v168 = sub_20E4C5FC0();
                        if (v168)
                        {
                          v187 = v168;
                          v169 = sub_20E4C5FE0();
                          v170 = v189;
                          if (__OFSUB__(v189, v169))
                          {
                            goto LABEL_371;
                          }

                          v187 = &v189[v187 - v169];
                        }

                        else
                        {
                          v187 = 0;
                          v170 = v189;
                        }

                        v35 = (v188 - v170);
                        if (__OFSUB__(v188, v170))
                        {
                          goto LABEL_368;
                        }

                        v178 = sub_20E4C5FD0();
                        if (v178 >= v35)
                        {
                          v179 = v35;
                        }

                        else
                        {
                          v179 = v178;
                        }

                        v162 = v190;
                        if (!v190)
                        {
                          goto LABEL_385;
                        }

                        v166 = v187;
                        if (!v187)
                        {
                          goto LABEL_394;
                        }
                      }

                      else
                      {
                        if (!v127)
                        {
                          __s2[0] = v12;
                          LOWORD(__s2[1]) = v25;
                          BYTE2(__s2[1]) = BYTE2(v25);
                          BYTE3(__s2[1]) = BYTE3(v25);
                          BYTE4(__s2[1]) = BYTE4(v25);
                          BYTE5(__s2[1]) = BYTE5(v25);
                          v190 = __s2 + BYTE6(v25);

                          sub_20E41B8A8(v12, v25);

                          sub_20E41B8A8(v12, v25);
                          v140 = v215;
                          sub_20E41B8A8(v215, v126);
                          v141 = v126;
                          v35 = v198;
                          sub_20E47FDB4(__s2, v140, v141, v221);
                          v198 = v35;
                          if (v35)
                          {
                            goto LABEL_395;
                          }

                          v142 = v140;
                          v143 = v216;
LABEL_270:
                          sub_20E4167F8(v142, v143);
                          v158 = v221[0];
                          sub_20E4167F8(v12, v25);
                          if (v158)
                          {
                            goto LABEL_244;
                          }

LABEL_240:

                          sub_20E4167F8(v12, v25);

LABEL_251:
                          v28 = v212;
                          goto LABEL_193;
                        }

                        v190 = v12;
                        v152 = v215;
                        if (v12 > v12 >> 32)
                        {
                          __break(1u);
LABEL_357:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_358:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_359:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_360:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_361:
                          __break(1u);
LABEL_362:
                          __break(1u);
LABEL_363:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_364:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_365:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_366:
                          v222 = v202;
                          v223 = v203;
                          v224 = v206;
                          __break(1u);
LABEL_367:
                          __break(1u);
LABEL_368:
                          __break(1u);
LABEL_369:
                          __break(1u);
LABEL_370:
                          __break(1u);
LABEL_371:
                          __break(1u);
LABEL_372:
                          __break(1u);
LABEL_373:
                          __break(1u);
LABEL_374:
                          __break(1u);
LABEL_375:
                          __break(1u);
                        }

                        sub_20E41B8A8(v12, v25);

                        sub_20E41B8A8(v12, v25);
                        sub_20E41B8A8(v152, v216);
                        v153 = sub_20E4C5FC0();
                        if (v153)
                        {
                          v154 = v153;
                          v155 = sub_20E4C5FE0();
                          if (__OFSUB__(v190, v155))
                          {
                            goto LABEL_362;
                          }

                          v190 = &v190[v154 - v155];
                        }

                        else
                        {
                          v190 = 0;
                        }

                        sub_20E4C5FD0();
                        if (v211 != 2)
                        {
                          v35 = v216;
                          if (v211 == 1)
                          {
                            if (v196 < v199)
                            {
                              goto LABEL_369;
                            }

                            v35 = sub_20E4C5FC0();
                            if (v35)
                            {
                              v163 = sub_20E4C5FE0();
                              if (__OFSUB__(v199, v163))
                              {
                                goto LABEL_374;
                              }

                              v35 += v199 - v163;
                            }

                            v164 = sub_20E4C5FD0();
                            v161 = v195;
                            if (v164 < v195)
                            {
                              v161 = v164;
                            }

                            v162 = v190;
                            if (!v190)
                            {
                              goto LABEL_390;
                            }

                            if (!v35)
                            {
                              goto LABEL_389;
                            }

LABEL_295:
                            if (v162 != v35)
                            {
                              v165 = v161;
                              v166 = v35;
                              goto LABEL_326;
                            }

                            goto LABEL_324;
                          }

                          v171 = v190;
                          v172 = v215;
                          LODWORD(__s2[0]) = v215;
                          BYTE4(__s2[0]) = v197;
                          *(__s2 + 5) = *(&v215 + 5);
                          HIBYTE(__s2[0]) = HIBYTE(v215);
                          LODWORD(__s2[1]) = v216;
                          WORD2(__s2[1]) = WORD2(v216);
                          if (!v190)
                          {
                            goto LABEL_391;
                          }

LABEL_306:
                          LODWORD(v190) = memcmp(v171, __s2, v204);
                          sub_20E4167F8(v172, v35);
                          sub_20E4167F8(v12, v25);
                          if (!v190)
                          {
                            goto LABEL_244;
                          }

                          goto LABEL_240;
                        }

                        v173 = *(v215 + 24);
                        v189 = *(v215 + 16);
                        v188 = v173;
                        v174 = sub_20E4C5FC0();
                        if (v174)
                        {
                          v187 = v174;
                          v175 = sub_20E4C5FE0();
                          v176 = v189;
                          if (__OFSUB__(v189, v175))
                          {
                            goto LABEL_372;
                          }

                          v177 = &v189[v187 - v175];
                        }

                        else
                        {
                          v177 = 0;
                          v176 = v189;
                        }

                        v189 = v177;
                        v35 = (v188 - v176);
                        if (__OFSUB__(v188, v176))
                        {
                          goto LABEL_370;
                        }

                        v180 = sub_20E4C5FD0();
                        if (v180 >= v35)
                        {
                          v179 = v35;
                        }

                        else
                        {
                          v179 = v180;
                        }

                        v162 = v190;
                        if (!v190)
                        {
                          goto LABEL_387;
                        }

                        v166 = v189;
                        if (!v189)
                        {
                          goto LABEL_386;
                        }
                      }

                      if (v162 != v166)
                      {
                        v165 = v179;
LABEL_326:
                        v181 = memcmp(v162, v166, v165);
                        sub_20E4167F8(v215, v216);
                        sub_20E4167F8(v12, v25);
                        if (!v181)
                        {
                          goto LABEL_244;
                        }

                        goto LABEL_240;
                      }

LABEL_324:
                      v132 = v215;
                      v133 = v216;
                      goto LABEL_242;
                    }

LABEL_241:
                    v213 = v117;

                    sub_20E41B8A8(v12, v25);

                    sub_20E41B8A8(v12, v25);
                    v145 = v215;
                    sub_20E41B8A8(v215, v126);
                    v132 = v145;
                    v133 = v126;
                    goto LABEL_242;
                  }
                }

                else
                {
                  v129 = v211;
                  if (v127 <= 1)
                  {
                    if (v127)
                    {
                      LODWORD(v134) = HIDWORD(v12) - v12;
                      if (__OFSUB__(HIDWORD(v12), v12))
                      {
                        __break(1u);
LABEL_350:
                        __break(1u);
                        goto LABEL_351;
                      }

                      v134 = v134;
                      if (v211 > 1)
                      {
                        goto LABEL_230;
                      }
                    }

                    else
                    {
                      v134 = BYTE6(v25);
                      if (v211 > 1)
                      {
                        goto LABEL_230;
                      }
                    }

                    goto LABEL_226;
                  }

                  if (v127 != 2)
                  {
                    goto LABEL_229;
                  }

                  v136 = *(v12 + 16);
                  v135 = *(v12 + 24);
                  v48 = __OFSUB__(v135, v136);
                  v134 = v135 - v136;
                  if (v48)
                  {
                    goto LABEL_350;
                  }

                  if (v211 <= 1)
                  {
                    goto LABEL_226;
                  }

LABEL_230:
                  if (v129 == 2)
                  {
                    v139 = *(v215 + 16);
                    v138 = *(v215 + 24);
                    v48 = __OFSUB__(v138, v139);
                    v137 = v138 - v139;
                    if (v48)
                    {
                      goto LABEL_345;
                    }

                    goto LABEL_232;
                  }

                  if (!v134)
                  {
                    goto LABEL_241;
                  }
                }

                sub_20E41B8A8(v12, v25);

                sub_20E41B8A8(v12, v25);
                v144 = v215;
                sub_20E41B8A8(v215, v126);
                sub_20E4167F8(v144, v126);
                sub_20E4167F8(v12, v25);
                goto LABEL_240;
              }
            }

            else
            {
              v28 = v212;
              if (!v211)
              {
                goto LABEL_170;
              }
            }

            sub_20E4167F8(v33, v36);

            goto LABEL_33;
          }

LABEL_79:
          sub_20E4167F8(v33, v36);

          sub_20E4167F8(v33, v36);

          v28 = v212;
          goto LABEL_33;
        }

        v71 = v192;
        LODWORD(__s2[0]) = v216;
        v72 = v215;
        BYTE4(__s2[0]) = v195;
        *(__s2 + 5) = *(&v216 + 5);
        HIBYTE(__s2[0]) = HIBYTE(v216);
        LODWORD(__s2[1]) = v215;
        WORD2(__s2[1]) = WORD2(v215);
        if (!v192)
        {
          goto LABEL_377;
        }

LABEL_129:
        LODWORD(v192) = memcmp(v71, __s2, v201);
        sub_20E4167F8(v216, v72);
        if (!v192)
        {
          goto LABEL_82;
        }

        goto LABEL_79;
      }

      v73 = *(v216 + 24);
      v191 = *(v216 + 16);
      v190 = v73;
      v74 = sub_20E4C5FC0();
      if (v74)
      {
        v189 = v74;
        v75 = sub_20E4C5FE0();
        v76 = v191;
        if (__OFSUB__(v191, v75))
        {
          goto LABEL_365;
        }

        v77 = &v191[v189 - v75];
      }

      else
      {
        v77 = 0;
        v76 = v191;
      }

      v191 = v77;
      v35 = &v190[-v76];
      if (__OFSUB__(v190, v76))
      {
        goto LABEL_360;
      }

      v85 = sub_20E4C5FD0();
      if (v85 >= v35)
      {
        v79 = v35;
      }

      else
      {
        v79 = v85;
      }

      v80 = v192;
      if (!v192)
      {
        goto LABEL_381;
      }

      v35 = v197;
      v81 = v191;
      if (!v191)
      {
        goto LABEL_380;
      }

      goto LABEL_152;
    }

LABEL_351:
    v222 = v202;
    v223 = v203;
    v224 = v206;
    __break(1u);
LABEL_352:
    v222 = v202;
    v223 = v203;
    v224 = v206;
    __break(1u);
LABEL_353:
    v222 = v202;
    v223 = v203;
    v224 = v206;
    __break(1u);
LABEL_354:
    v25 = swift_slowAlloc();
    memcpy(v25, v212, v28);
    v35 = v198;
    sub_20E4895E4(v25, v4, v219, v12, &v222);
    v89 = v186;

    if (v35)
    {
      goto LABEL_396;
    }

    MEMORY[0x20F32FA80](v25, -1, -1);
    v12 = v222;
    v206 = v224;
LABEL_337:
    sub_20E418D5C(v12);
    return v89;
  }

  if (v38 != 2)
  {
    memset(__s2, 0, 14);

    sub_20E41B8A8(v33, v36);

    sub_20E41B8A8(v33, v36);
    v52 = v216;
    v53 = v215;
    sub_20E41B8A8(v216, v215);
LABEL_104:
    sub_20E47FDB4(__s2, v52, v53, v221);
    sub_20E4167F8(v216, v53);
    v35 = v197;
    if (v221[0])
    {
      goto LABEL_82;
    }

    goto LABEL_79;
  }

  v192 = *(v33 + 16);

  sub_20E41B8A8(v33, v36);

  sub_20E41B8A8(v33, v36);
  sub_20E41B8A8(v216, v215);
  v56 = sub_20E4C5FC0();
  if (v56)
  {
    v57 = v56;
    v28 = (v36 & 0x3FFFFFFFFFFFFFFFLL);
    v58 = sub_20E4C5FE0();
    if (__OFSUB__(v192, v58))
    {
      goto LABEL_352;
    }

    v192 = &v192[v57 - v58];
  }

  else
  {
    v192 = 0;
  }

  sub_20E4C5FD0();
  v35 = v197;
  if (v207 != 2)
  {
    if (v207 == 1)
    {
      if (v194 < v196)
      {
        goto LABEL_357;
      }

      v62 = sub_20E4C5FC0();
      if (v62)
      {
        v191 = v62;
        v63 = sub_20E4C5FE0();
        if (__OFSUB__(v196, v63))
        {
          goto LABEL_364;
        }

        v35 = &v191[v196 - v63];
      }

      else
      {
        v35 = 0;
      }

      v82 = sub_20E4C5FD0();
      v83 = v193;
      if (v82 < v193)
      {
        v83 = v82;
      }

      v84 = v192;
      if (!v192)
      {
        goto LABEL_384;
      }

      if (!v35)
      {
        goto LABEL_383;
      }

      goto LABEL_161;
    }

    v71 = v192;
    LODWORD(__s2[0]) = v216;
    v72 = v215;
    BYTE4(__s2[0]) = v195;
    *(__s2 + 5) = *(&v216 + 5);
    HIBYTE(__s2[0]) = HIBYTE(v216);
    LODWORD(__s2[1]) = v215;
    WORD2(__s2[1]) = WORD2(v215);
    if (!v192)
    {
      goto LABEL_382;
    }

    goto LABEL_129;
  }

  v66 = *(v216 + 24);
  v191 = *(v216 + 16);
  v190 = v66;
  v67 = sub_20E4C5FC0();
  if (v67)
  {
    v189 = v67;
    v68 = sub_20E4C5FE0();
    v69 = v191;
    if (__OFSUB__(v191, v68))
    {
      goto LABEL_363;
    }

    v70 = &v191[v189 - v68];
  }

  else
  {
    v70 = 0;
    v69 = v191;
  }

  v191 = v70;
  v35 = &v190[-v69];
  if (__OFSUB__(v190, v69))
  {
    goto LABEL_358;
  }

  v78 = sub_20E4C5FD0();
  if (v78 >= v35)
  {
    v79 = v35;
  }

  else
  {
    v79 = v78;
  }

  v80 = v192;
  if (!v192)
  {
    goto LABEL_376;
  }

  v35 = v197;
  v81 = v191;
  if (v191)
  {
LABEL_152:
    if (v80 != v81)
    {
      v86 = memcmp(v80, v81, v79);
      sub_20E4167F8(v216, v215);
      if (!v86)
      {
        goto LABEL_82;
      }

      goto LABEL_79;
    }

    v43 = v216;
    v44 = v215;
LABEL_81:
    sub_20E4167F8(v43, v44);
    goto LABEL_82;
  }

  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_376:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_377:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_378:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_379:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_380:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_381:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_382:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_383:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_384:
  v222 = v202;
  v223 = v203;
  v224 = v206;
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
  v222 = v202;
  v223 = v203;
  v224 = v206;
LABEL_395:

  __break(1u);
LABEL_396:

  result = MEMORY[0x20F32FA80](v25, -1, -1);
  __break(1u);
  return result;
}

void *sub_20E482820(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), void (*a4)(uint64_t, unint64_t), uint64_t *a5, uint64_t *a6)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v21 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);
    sub_20E482DEC((v21 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0)), v14, a2, a1, a3, a4, a5, a6, a3);
    v18 = v17;
  }

  else
  {
    v20 = swift_slowAlloc();

    v18 = sub_20E482C88(v20, v14, a2, a1, a3, a4, a5, a6);

    MEMORY[0x20F32FA80](v20, -1, -1);
  }

  return v18;
}

void *sub_20E482A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v16[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v13 = a3(v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v15 = swift_slowAlloc();

    v13 = sub_20E482D54(v15, v10, a2, a1, a4);

    MEMORY[0x20F32FA80](v15, -1, -1);
  }

  return v13;
}

void *sub_20E482C08(uint64_t a1, uint64_t a2)
{

  return sub_20E482A2C(a1, a2, sub_20E486454, sub_20E486454);
}

void *sub_20E482C88(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), void (*a6)(uint64_t, unint64_t), uint64_t *a7, uint64_t *a8)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v11 = a2;
      v12 = a8;
      v13 = a7;
      v14 = a6;
      v15 = a5;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v11;
      a5 = v15;
      a6 = v14;
      a7 = v13;
      a8 = v12;
    }

    sub_20E482DEC(result, a2, a3, a4, a5, a6, a7, a8, a5);
    v17 = v16;

    return v17;
  }

  return result;
}

void *sub_20E482D54(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_20E482DEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), void (*a6)(uint64_t, unint64_t), uint64_t *a7, uint64_t *a8, void (*a9)(uint64_t, unint64_t))
{
  v9 = a4;
  v10 = a3;
  v235 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_173;
  }

  v194 = 0;
  v11 = 0;
  v12 = a4 + 56;
  v13 = 1 << *(a4 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  v16 = (v13 + 63) >> 6;
  v230 = a3 + 56;
  v190 = v16;
  v192 = a4 + 56;
  while (2)
  {
    while (2)
    {
      if (v15)
      {
        v198 = v11;
        v200 = (v15 - 1) & v15;
        v17 = __clz(__rbit64(v15)) | (v11 << 6);
      }

      else
      {
        v18 = v11;
        do
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_350;
          }

          if (v19 >= v16)
          {
LABEL_348:

            sub_20E487DBC(a1, a2, v194, v10, a7, a8, a9);
            return;
          }

          v20 = *(v12 + 8 * v19);
          ++v18;
        }

        while (!v20);
        v198 = v19;
        v200 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) | (v19 << 6);
      }

      v21 = (*(v9 + 48) + 48 * v17);
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v223 = v21[2];
      v25 = v21[5];
      v204 = v21[4];
      sub_20E4C69C0();
      v225 = v22;
      sub_20E4C69E0();
      if (v22)
      {

        a5(v223, v24);

        sub_20E4C6530();
      }

      else
      {
        a5(v223, v24);
      }

      v215 = v24 >> 60;
      sub_20E4C69E0();
      if (v24 >> 60 != 15)
      {
        sub_20E4C6130();
      }

      v208 = v25;
      v218 = v24;
      sub_20E4C69E0();
      if (v25)
      {
        sub_20E4C6530();
      }

      v26 = sub_20E4C69F0();
      v10 = a3;
      v27 = -1 << *(a3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = 1 << v28;
      if (((1 << v28) & *(v230 + 8 * (v28 >> 6))) == 0)
      {
LABEL_6:

        a6(v223, v218);

        v9 = a4;
        v16 = v190;
        v12 = v192;
        v11 = v198;
        v15 = v200;
        continue;
      }

      break;
    }

    v220 = v23;
    v228 = ~v27;
    v202 = v24 >> 62;
    if (v223)
    {
      v31 = 0;
    }

    else
    {
      v31 = v24 == 0xC000000000000000;
    }

    v32 = !v31;
    v196 = v32;
    v33 = __OFSUB__(HIDWORD(v223), v223);
    v188 = v33;
    v178 = (v223 >> 32) - v223;
    v180 = v223 >> 32;
    v34 = v225;
    while (1)
    {
      v35 = (*(v10 + 48) + 48 * v28);
      v37 = v35[1];
      v36 = v35[2];
      v39 = v35[3];
      v38 = v35[4];
      v40 = v35[5];
      if (v37)
      {
        if (!v34)
        {
          goto LABEL_34;
        }

        if (*v35 != v220 || v37 != v34)
        {
          v42 = v35[4];
          v43 = sub_20E4C6910();
          v38 = v42;
          v34 = v225;
          if ((v43 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else if (v34)
      {
        goto LABEL_34;
      }

      if (v39 >> 60 != 15)
      {
        break;
      }

      if (v215 > 0xE)
      {
        v206 = v38;

        a5(v36, v39);

        a5(v36, v39);
        a5(v223, v218);
        v44 = a6;
        goto LABEL_47;
      }

LABEL_32:
      a5(v36, v39);
      a5(v223, v218);
      a6(v36, v39);
      a6(v223, v218);
LABEL_33:
      v34 = v225;
LABEL_34:
      v28 = (v28 + 1) & v228;
      v29 = v28 >> 6;
      v30 = 1 << v28;
      if ((*(v230 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v215 > 0xE)
    {
      goto LABEL_32;
    }

    v47 = v39 >> 62;
    if (v39 >> 62 != 3)
    {
      v52 = a6;
      v49 = v202;
      if (v47 <= 1)
      {
        if (v47)
        {
          LODWORD(v53) = HIDWORD(v36) - v36;
          if (__OFSUB__(HIDWORD(v36), v36))
          {
            goto LABEL_356;
          }

          v53 = v53;
          if (v202 > 1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v53 = BYTE6(v39);
          if (v202 > 1)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_79;
      }

      if (v47 != 2)
      {
        goto LABEL_82;
      }

      v55 = *(v36 + 16);
      v54 = *(v36 + 24);
      v56 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (v56)
      {
        goto LABEL_358;
      }

      if (v202 <= 1)
      {
        goto LABEL_79;
      }

LABEL_83:
      if (v49 == 2)
      {
        v59 = *(v223 + 16);
        v58 = *(v223 + 24);
        v56 = __OFSUB__(v58, v59);
        v57 = v58 - v59;
        if (v56)
        {
          goto LABEL_353;
        }

        goto LABEL_85;
      }

      if (v53)
      {
LABEL_91:

        a5(v36, v39);

        a5(v36, v39);
        a5(v223, v218);
        v52(v223, v218);
        v44 = v52;
LABEL_92:
        v44(v36, v39);

        v44(v36, v39);

        v10 = a3;
        goto LABEL_33;
      }

      goto LABEL_93;
    }

    if (v36)
    {
      v48 = 0;
    }

    else
    {
      v48 = v39 == 0xC000000000000000;
    }

    v49 = v202;
    v51 = !v48 || v202 < 3;
    v52 = a6;
    if (((v51 | v196) & 1) == 0)
    {
      v206 = v38;

      a5(0, 0xC000000000000000);

      a5(0, 0xC000000000000000);
      a5(0, 0xC000000000000000);
      a6(0, 0xC000000000000000);
      v44 = a6;
      a6(v36, v39);
      goto LABEL_48;
    }

LABEL_82:
    v53 = 0;
    if (v49 > 1)
    {
      goto LABEL_83;
    }

LABEL_79:
    v57 = BYTE6(v218);
    if (v49)
    {
      v57 = HIDWORD(v223) - v223;
      if (v188)
      {
        goto LABEL_354;
      }
    }

LABEL_85:
    if (v53 != v57)
    {
      goto LABEL_91;
    }

    if (v53 < 1)
    {
LABEL_93:
      v206 = v38;

      a5(v36, v39);

      a5(v36, v39);
      a5(v223, v218);
      v44 = a6;
      a6(v223, v218);
      a6(v36, v39);
      goto LABEL_48;
    }

    v182 = v40;
    v206 = v38;
    if (v47 > 1)
    {
      if (v47 != 2)
      {
        *&__s2[6] = 0;
        *__s2 = 0;

        a5(v36, v39);

        a5(v36, v39);
        v60 = v223;
        v61 = v218;
        a5(v223, v218);
        goto LABEL_118;
      }

      v62 = *(v36 + 16);

      a5(v36, v39);

      a5(v36, v39);
      a5(v223, v218);
      v63 = sub_20E4C5FC0();
      if (v63)
      {
        v64 = sub_20E4C5FE0();
        if (__OFSUB__(v62, v64))
        {
          goto LABEL_362;
        }

        v63 += v62 - v64;
      }

      sub_20E4C5FD0();
      if (v202 != 2)
      {
        if (v202 == 1)
        {
          if (v180 < v223)
          {
            goto LABEL_366;
          }

          v65 = sub_20E4C5FC0();
          if (v65)
          {
            v210 = v63;
            v66 = v65;
            v67 = sub_20E4C5FE0();
            if (__OFSUB__(v223, v67))
            {
              goto LABEL_375;
            }

            v68 = (v223 - v67 + v66);
            v63 = v210;
          }

          else
          {
            v68 = 0;
          }

          v87 = sub_20E4C5FD0();
          v88 = (v223 >> 32) - v223;
          if (v87 < v178)
          {
            v88 = v87;
          }

          if (!v63)
          {
            goto LABEL_396;
          }

          if (!v68)
          {
            goto LABEL_393;
          }

          goto LABEL_159;
        }

        *__s2 = v223;
        v76 = v218;
        *&__s2[8] = v218;
        *&__s2[12] = WORD2(v218);
        if (!v63)
        {
          goto LABEL_398;
        }

        goto LABEL_130;
      }

      v212 = v63;
      v73 = *(v223 + 16);
      v174 = *(v223 + 24);
      v74 = sub_20E4C5FC0();
      if (v74)
      {
        v170 = v74;
        v75 = sub_20E4C5FE0();
        if (__OFSUB__(v73, v75))
        {
          goto LABEL_373;
        }

        v68 = (v73 - v75 + v170);
      }

      else
      {
        v68 = 0;
      }

      v56 = __OFSUB__(v174, v73);
      v83 = v174 - v73;
      if (v56)
      {
        goto LABEL_367;
      }

      v84 = sub_20E4C5FD0();
      if (v84 >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v84;
      }

      v86 = v212;
      if (!v212)
      {
        goto LABEL_397;
      }

      if (!v68)
      {
        goto LABEL_395;
      }

LABEL_152:
      if (v86 == v68)
      {
        goto LABEL_160;
      }

      v91 = v85;
      goto LABEL_162;
    }

    if (!v47)
    {
      *__s2 = v36;
      *&__s2[8] = v39;
      __s2[10] = BYTE2(v39);
      __s2[11] = BYTE3(v39);
      __s2[12] = BYTE4(v39);
      __s2[13] = BYTE5(v39);

      a5(v36, v39);

      a5(v36, v39);
      v60 = v223;
      v61 = v218;
      a5(v223, v218);
LABEL_118:
      sub_20E47FDB4(__s2, v60, v61, &v233);
      if (v197)
      {
        goto LABEL_400;
      }

      v44 = a6;
      a6(v223, v61);
      v40 = v182;
      if (!v233)
      {
        goto LABEL_92;
      }

LABEL_47:
      v44(v36, v39);
      goto LABEL_48;
    }

    if (v36 > v36 >> 32)
    {
      goto LABEL_359;
    }

    a5(v36, v39);

    a5(v36, v39);
    a5(v223, v218);
    v63 = sub_20E4C5FC0();
    if (v63)
    {
      v69 = sub_20E4C5FE0();
      if (__OFSUB__(v36, v69))
      {
        goto LABEL_363;
      }

      v63 += v36 - v69;
    }

    sub_20E4C5FD0();
    if (v202 == 2)
    {
      v213 = v63;
      v77 = *(v223 + 16);
      v175 = *(v223 + 24);
      v78 = sub_20E4C5FC0();
      if (v78)
      {
        v171 = v78;
        v79 = sub_20E4C5FE0();
        if (__OFSUB__(v77, v79))
        {
          goto LABEL_378;
        }

        v68 = (v77 - v79 + v171);
      }

      else
      {
        v68 = 0;
      }

      v56 = __OFSUB__(v175, v77);
      v89 = v175 - v77;
      if (v56)
      {
        goto LABEL_371;
      }

      v90 = sub_20E4C5FD0();
      if (v90 >= v89)
      {
        v85 = v89;
      }

      else
      {
        v85 = v90;
      }

      v86 = v213;
      if (!v213)
      {
        goto LABEL_390;
      }

      if (!v68)
      {
        goto LABEL_399;
      }

      goto LABEL_152;
    }

    if (v202 != 1)
    {
      *__s2 = v223;
      v76 = v218;
      *&__s2[8] = v218;
      *&__s2[12] = WORD2(v218);
      if (!v63)
      {
        goto LABEL_394;
      }

LABEL_130:
      v80 = memcmp(v63, __s2, BYTE6(v218));
      v81 = v223;
      v82 = v76;
      goto LABEL_163;
    }

    if (v180 < v223)
    {
      goto LABEL_369;
    }

    v70 = sub_20E4C5FC0();
    if (v70)
    {
      v211 = v63;
      v71 = v70;
      v72 = sub_20E4C5FE0();
      if (__OFSUB__(v223, v72))
      {
        goto LABEL_380;
      }

      v68 = (v223 - v72 + v71);
      v63 = v211;
    }

    else
    {
      v68 = 0;
    }

    v92 = sub_20E4C5FD0();
    v88 = (v223 >> 32) - v223;
    if (v92 < v178)
    {
      v88 = v92;
    }

    if (!v63)
    {
      goto LABEL_392;
    }

    if (!v68)
    {
      goto LABEL_391;
    }

LABEL_159:
    if (v63 != v68)
    {
      v91 = v88;
      v86 = v63;
LABEL_162:
      v80 = memcmp(v86, v68, v91);
      v81 = v223;
      v82 = v218;
LABEL_163:
      v44 = a6;
      a6(v81, v82);
      v40 = v182;
      if (v80)
      {
        goto LABEL_92;
      }

      goto LABEL_47;
    }

LABEL_160:
    v44 = a6;
    a6(v223, v218);
    v40 = v182;
    a6(v36, v39);
LABEL_48:
    if (v40)
    {
      v10 = a3;
      if (v208)
      {
        if (v206 == v204 && v40 == v208)
        {

          a6(v36, v39);

          a6(v223, v218);
          goto LABEL_169;
        }

        v46 = sub_20E4C6910();

        a6(v36, v39);

        if (v46)
        {

          a6(v223, v218);

          v10 = a3;
          goto LABEL_170;
        }

        v10 = a3;
      }

      else
      {

        a6(v36, v39);
      }

      goto LABEL_33;
    }

    v44(v36, v39);
    v10 = a3;
    if (v208)
    {

      goto LABEL_33;
    }

    a6(v223, v218);
LABEL_169:

LABEL_170:
    v16 = v190;
    a1[v29] |= v30;
    v12 = v192;
    v56 = __OFADD__(v194++, 1);
    v9 = a4;
    v11 = v198;
    v15 = v200;
    if (!v56)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_173:
  v194 = 0;
  v93 = 0;
  v94 = v10 + 56;
  v95 = 1 << *(v10 + 32);
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  else
  {
    v96 = -1;
  }

  v97 = v96 & *(v10 + 56);
  v98 = (v95 + 63) >> 6;
  v231 = v9 + 56;
  __n = v10 + 56;
  v193 = v98;
  while (1)
  {
LABEL_179:
    if (v97)
    {
      v201 = v93;
      v203 = (v97 - 1) & v97;
      v99 = __clz(__rbit64(v97)) | (v93 << 6);
      goto LABEL_186;
    }

    v100 = v93;
    do
    {
      v101 = v100 + 1;
      if (__OFADD__(v100, 1))
      {
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
      }

      if (v101 >= v98)
      {
        goto LABEL_348;
      }

      v102 = *(v94 + 8 * v101);
      ++v100;
    }

    while (!v102);
    v201 = v101;
    v203 = (v102 - 1) & v102;
    v99 = __clz(__rbit64(v102)) | (v101 << 6);
LABEL_186:
    v103 = (*(v10 + 48) + 48 * v99);
    v105 = *v103;
    v104 = v103[1];
    v106 = v103[3];
    v226 = v103[2];
    v107 = v103[5];
    v207 = v103[4];
    sub_20E4C69C0();
    v216 = v104;
    sub_20E4C69E0();
    if (v104)
    {

      a5(v226, v106);

      sub_20E4C6530();
    }

    else
    {
      a5(v226, v106);
    }

    v219 = v106 >> 60;
    sub_20E4C69E0();
    if (v106 >> 60 != 15)
    {
      sub_20E4C6130();
    }

    v214 = v107;
    v221 = v106;
    sub_20E4C69E0();
    if (v107)
    {
      sub_20E4C6530();
    }

    v108 = v104;
    v109 = sub_20E4C69F0();
    v110 = -1 << *(v9 + 32);
    v111 = v109 & ~v110;
    if (((*(v231 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111) & 1) == 0)
    {

      a6(v226, v106);
      v10 = a3;
      goto LABEL_178;
    }

    v224 = v105;
    v183 = v99;
    v229 = ~v110;
    v205 = v106 >> 62;
    if (v226)
    {
      v112 = 0;
    }

    else
    {
      v112 = v106 == 0xC000000000000000;
    }

    v113 = !v112;
    v199 = v113;
    v114 = __OFSUB__(HIDWORD(v226), v226);
    v191 = v114;
    v179 = (v226 >> 32) - v226;
    v181 = v226 >> 32;
    v10 = a3;
LABEL_206:
    v115 = (*(v9 + 48) + 48 * v111);
    v117 = v115[1];
    v116 = v115[2];
    v118 = v115[3];
    v119 = v115[4];
    v120 = v115[5];
    if (!v117)
    {
      if (!v108)
      {
        goto LABEL_213;
      }

      goto LABEL_205;
    }

    if (!v108)
    {
      goto LABEL_205;
    }

    v121 = *v115 == v224 && v117 == v108;
    if (!v121 && (sub_20E4C6910() & 1) == 0)
    {
      goto LABEL_205;
    }

LABEL_213:
    if (v118 >> 60 != 15)
    {
      break;
    }

    if (v219 > 0xE)
    {
      v209 = v119;

      a5(v116, v118);

      a5(v116, v118);
      a5(v226, v221);
      v122 = a6;
      a6(v116, v118);
      goto LABEL_257;
    }

LABEL_217:
    a5(v116, v118);
    a5(v226, v221);
    a6(v116, v118);
    a6(v226, v221);
LABEL_218:
    v9 = a4;
LABEL_205:
    v111 = (v111 + 1) & v229;
    if ((*(v231 + ((v111 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v111))
    {
      goto LABEL_206;
    }

    a6(v226, v221);
LABEL_178:

    v94 = __n;
    v98 = v193;
    v93 = v201;
    v97 = v203;
  }

  if (v219 > 0xE)
  {
    goto LABEL_217;
  }

  v123 = v118 >> 62;
  if (v118 >> 62 != 3)
  {
    v127 = a6;
    if (v123 <= 1)
    {
      if (v123)
      {
        LODWORD(v130) = HIDWORD(v116) - v116;
        if (__OFSUB__(HIDWORD(v116), v116))
        {
          goto LABEL_355;
        }

        v130 = v130;
        if (v205 > 1)
        {
          goto LABEL_242;
        }
      }

      else
      {
        v130 = BYTE6(v118);
        if (v205 > 1)
        {
          goto LABEL_242;
        }
      }

      goto LABEL_238;
    }

    if (v123 != 2)
    {
      goto LABEL_241;
    }

    v132 = *(v116 + 16);
    v131 = *(v116 + 24);
    v56 = __OFSUB__(v131, v132);
    v130 = v131 - v132;
    if (v56)
    {
      goto LABEL_357;
    }

    if (v205 <= 1)
    {
      goto LABEL_238;
    }

LABEL_242:
    if (v205 == 2)
    {
      v135 = *(v226 + 16);
      v134 = *(v226 + 24);
      v56 = __OFSUB__(v134, v135);
      v133 = v134 - v135;
      if (v56)
      {
        goto LABEL_351;
      }

      goto LABEL_244;
    }

    if (v130)
    {
LABEL_252:

      a5(v116, v118);

      a5(v116, v118);
      a5(v226, v221);
      v127(v226, v221);
      v122 = v127;
      v108 = v216;
LABEL_253:
      v122(v116, v118);

      v122(v116, v118);

      v10 = a3;
      goto LABEL_218;
    }

    goto LABEL_254;
  }

  if (v116)
  {
    v124 = 0;
  }

  else
  {
    v124 = v118 == 0xC000000000000000;
  }

  v126 = !v124 || v205 < 3;
  v127 = a6;
  if (((v126 | v199) & 1) == 0)
  {
    v209 = v119;

    a5(0, 0xC000000000000000);

    a5(0, 0xC000000000000000);
    a5(0, 0xC000000000000000);
    v128 = 0;
    v129 = 0xC000000000000000;
    goto LABEL_255;
  }

LABEL_241:
  v130 = 0;
  if (v205 > 1)
  {
    goto LABEL_242;
  }

LABEL_238:
  v133 = BYTE6(v221);
  if (v205)
  {
    v133 = HIDWORD(v226) - v226;
    if (v191)
    {
      goto LABEL_352;
    }
  }

LABEL_244:
  if (v130 != v133)
  {
    goto LABEL_252;
  }

  if (v130 < 1)
  {
LABEL_254:
    v209 = v119;

    a5(v116, v118);

    a5(v116, v118);
    a5(v226, v221);
    v128 = v226;
    v129 = v221;
LABEL_255:
    v127(v128, v129);
    v122 = v127;
    v108 = v216;
    goto LABEL_256;
  }

  v187 = v120;
  v209 = v119;
  if (v123 <= 1)
  {
    if (!v123)
    {
      *__s2 = v116;
      *&__s2[8] = v118;
      __s2[10] = BYTE2(v118);
      __s2[11] = BYTE3(v118);
      __s2[12] = BYTE4(v118);
      __s2[13] = BYTE5(v118);

      a5(v116, v118);

      a5(v116, v118);
      a5(v226, v221);
      sub_20E47FDB4(__s2, v226, v221, &v233);
      v108 = v216;
      if (v197)
      {
        goto LABEL_400;
      }

      v122 = a6;
      a6(v226, v221);
      if (!v233)
      {
        goto LABEL_253;
      }

      goto LABEL_256;
    }

    v108 = v216;
    if (v116 > v116 >> 32)
    {
      goto LABEL_360;
    }

    a5(v116, v118);

    a5(v116, v118);
    a5(v226, v221);
    v140 = sub_20E4C5FC0();
    if (v140)
    {
      v142 = sub_20E4C5FE0();
      if (__OFSUB__(v116, v142))
      {
        goto LABEL_364;
      }

      v140 += v116 - v142;
    }

    sub_20E4C5FD0();
    if (v205 != 2)
    {
      if (v205 == 1)
      {
        if (v181 < v226)
        {
          goto LABEL_370;
        }

        v143 = sub_20E4C5FC0();
        if (v143)
        {
          v144 = v143;
          v145 = sub_20E4C5FE0();
          if (__OFSUB__(v226, v145))
          {
            goto LABEL_379;
          }

          v146 = (v226 - v145 + v144);
        }

        else
        {
          v146 = 0;
        }

        v169 = sub_20E4C5FD0();
        v166 = (v226 >> 32) - v226;
        if (v169 < v179)
        {
          v166 = v169;
        }

        if (!v140)
        {
          goto LABEL_387;
        }

        if (!v146)
        {
          goto LABEL_386;
        }

        goto LABEL_334;
      }

      *__s2 = v226;
      v154 = v221;
      *&__s2[8] = v221;
      *&__s2[12] = WORD2(v221);
      if (!v140)
      {
        goto LABEL_385;
      }

LABEL_305:
      v159 = memcmp(v140, __s2, BYTE6(v221));
      v160 = v226;
      v161 = v154;
LABEL_338:
      v122 = a6;
      a6(v160, v161);
      v120 = v187;
      if (v159)
      {
        goto LABEL_253;
      }

      goto LABEL_256;
    }

    v173 = v140;
    v155 = *(v226 + 16);
    v177 = *(v226 + 24);
    v156 = sub_20E4C5FC0();
    if (v156)
    {
      v157 = v156;
      v158 = sub_20E4C5FE0();
      if (__OFSUB__(v155, v158))
      {
        goto LABEL_377;
      }

      v146 = (v155 - v158 + v157);
    }

    else
    {
      v146 = 0;
    }

    if (__OFSUB__(v177, v155))
    {
      goto LABEL_372;
    }

    v167 = sub_20E4C5FD0();
    if (v167 >= v177 - v155)
    {
      v163 = v177 - v155;
    }

    else
    {
      v163 = v167;
    }

    v164 = v173;
    if (!v173)
    {
      goto LABEL_389;
    }

    if (!v146)
    {
      goto LABEL_388;
    }

LABEL_327:
    if (v164 != v146)
    {
      v168 = v163;
LABEL_337:
      v159 = memcmp(v164, v146, v168);
      v160 = v226;
      v161 = v221;
      goto LABEL_338;
    }

    goto LABEL_335;
  }

  if (v123 != 2)
  {
    *&__s2[6] = 0;
    *__s2 = 0;

    a5(v116, v118);

    a5(v116, v118);
    a5(v226, v221);
    sub_20E47FDB4(__s2, v226, v221, &v233);
    if (v197)
    {
      goto LABEL_400;
    }

    v127(v226, v221);
    v122 = v127;
    v108 = v216;
    if (!v233)
    {
      goto LABEL_253;
    }

LABEL_256:
    v122(v116, v118);
    goto LABEL_257;
  }

  v139 = *(v116 + 16);

  a5(v116, v118);

  a5(v116, v118);
  a5(v226, v221);
  v140 = sub_20E4C5FC0();
  if (v140)
  {
    v141 = sub_20E4C5FE0();
    v108 = v216;
    if (__OFSUB__(v139, v141))
    {
      goto LABEL_361;
    }

    v140 += v139 - v141;
  }

  else
  {
    v108 = v216;
  }

  sub_20E4C5FD0();
  if (v205 == 2)
  {
    v172 = v140;
    v150 = *(v226 + 16);
    v176 = *(v226 + 24);
    v151 = sub_20E4C5FC0();
    if (v151)
    {
      v152 = v151;
      v153 = sub_20E4C5FE0();
      if (__OFSUB__(v150, v153))
      {
        goto LABEL_374;
      }

      v146 = (v150 - v153 + v152);
    }

    else
    {
      v146 = 0;
    }

    if (__OFSUB__(v176, v150))
    {
      goto LABEL_368;
    }

    v162 = sub_20E4C5FD0();
    if (v162 >= v176 - v150)
    {
      v163 = v176 - v150;
    }

    else
    {
      v163 = v162;
    }

    v164 = v172;
    if (!v172)
    {
      goto LABEL_384;
    }

    if (!v146)
    {
      goto LABEL_383;
    }

    goto LABEL_327;
  }

  if (v205 == 1)
  {
    if (v181 < v226)
    {
      goto LABEL_365;
    }

    v147 = sub_20E4C5FC0();
    if (v147)
    {
      v148 = v147;
      v149 = sub_20E4C5FE0();
      if (__OFSUB__(v226, v149))
      {
        goto LABEL_376;
      }

      v146 = (v226 - v149 + v148);
    }

    else
    {
      v146 = 0;
    }

    v165 = sub_20E4C5FD0();
    v166 = (v226 >> 32) - v226;
    if (v165 < v179)
    {
      v166 = v165;
    }

    if (!v140)
    {
      goto LABEL_382;
    }

    if (!v146)
    {
      goto LABEL_381;
    }

LABEL_334:
    if (v140 != v146)
    {
      v168 = v166;
      v164 = v140;
      goto LABEL_337;
    }

LABEL_335:
    v122 = a6;
    a6(v226, v221);
    v120 = v187;
    a6(v116, v118);
LABEL_257:
    if (v120)
    {
      v9 = a4;
      if (v214)
      {
        if (v209 == v207 && v120 == v214)
        {

          v122(v116, v118);

          v122(v226, v221);
          goto LABEL_344;
        }

        v137 = v122;
        v138 = sub_20E4C6910();

        v137(v116, v118);

        if (v138)
        {

          a6(v226, v221);

          v10 = a3;
          v9 = a4;
          goto LABEL_345;
        }

        v10 = a3;
        v9 = a4;
      }

      else
      {

        v122(v116, v118);

        v10 = a3;
      }

      v108 = v216;
      goto LABEL_205;
    }

    v122(v116, v118);
    v9 = a4;
    if (v214)
    {

      v10 = a3;
      goto LABEL_205;
    }

    v122(v226, v221);
LABEL_344:

    v10 = a3;
LABEL_345:
    v93 = v201;
    v97 = v203;
    *(a1 + ((v183 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v183;
    v94 = __n;
    v56 = __OFADD__(v194++, 1);
    v98 = v193;
    if (v56)
    {
      __break(1u);
      goto LABEL_348;
    }

    goto LABEL_179;
  }

  *__s2 = v226;
  v154 = v221;
  *&__s2[8] = v221;
  *&__s2[12] = WORD2(v221);
  if (v140)
  {
    goto LABEL_305;
  }

  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:

  __break(1u);
}

void sub_20E484AF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v235 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) < *(a3 + 16))
  {
    v211 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v226 = a3 + 56;
    v186 = v11;
    v192 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v209 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            sub_20E4880F8(a1, a2, v211, v5);
            return;
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v209 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_20E4C69C0();
      sub_20E424B50(v17, v16);
      v222 = v17;
      v224 = v16;
      sub_20E4C6130();
      v18 = sub_20E4C69F0();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v226 + 8 * (v20 >> 6))) == 0)
      {
LABEL_6:
        sub_20E424BA4(v222, v224);
        v4 = a4;
        v11 = v186;
        v7 = v192;
        v10 = v209;
        continue;
      }

      v23 = ~v19;
      v24 = v16 >> 62;
      if (v17)
      {
        v25 = 0;
      }

      else
      {
        v25 = v16 == 0xC000000000000000;
      }

      v26 = !v25;
      v219 = v26;
      v203 = HIDWORD(v17);
      v27 = __OFSUB__(HIDWORD(v17), v17);
      v213 = v27;
      v199 = (v17 >> 32) - v17;
      v201 = v17 >> 32;
      v214 = v23;
      v215 = v16 >> 62;
      while (1)
      {
        v28 = (*(v5 + 48) + 16 * v20);
        v30 = *v28;
        v29 = v28[1];
        v31 = v29 >> 62;
        if (v29 >> 62 == 3)
        {
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v29 == 0xC000000000000000;
          }

          v34 = !v32 || v24 < 3;
          if (((v34 | v219) & 1) == 0)
          {
            v87 = 0;
            v88 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v35 = 0;
          if (v24 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v31 > 1)
        {
          if (v31 != 2)
          {
            goto LABEL_49;
          }

          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          v38 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v38)
          {
            goto LABEL_332;
          }

          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v31)
        {
          LODWORD(v35) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_333;
          }

          v35 = v35;
          if (v24 <= 1)
          {
LABEL_46:
            v39 = BYTE6(v224);
            if (v24)
            {
              v39 = HIDWORD(v222) - v222;
              if (v213)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v35 = BYTE6(v29);
          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v24 != 2)
        {
          if (!v35)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v41 = *(v222 + 16);
        v40 = *(v222 + 24);
        v38 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v38)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v35 != v39)
        {
          goto LABEL_26;
        }

        if (v35 < 1)
        {
          goto LABEL_161;
        }

        if (v31 > 1)
        {
          break;
        }

        if (v31)
        {
          if (v30 > v30 >> 32)
          {
            goto LABEL_335;
          }

          sub_20E424B50(v30, v29);
          v51 = sub_20E4C5FC0();
          if (v51)
          {
            v52 = v51;
            v53 = sub_20E4C5FE0();
            if (__OFSUB__(v30, v53))
            {
              goto LABEL_339;
            }

            v195 = (v30 - v53 + v52);
          }

          else
          {
            v195 = 0;
          }

          sub_20E4C5FD0();
          v24 = v215;
          v5 = a3;
          if (v215 == 2)
          {
            v176 = *(v222 + 24);
            v182 = *(v222 + 16);
            v60 = sub_20E4C5FC0();
            if (v60)
            {
              v73 = sub_20E4C5FE0();
              v74 = v182;
              if (__OFSUB__(v182, v73))
              {
                goto LABEL_368;
              }

              v60 += v182 - v73;
            }

            else
            {
              v74 = v182;
            }

            v84 = v176 - v74;
            if (__OFSUB__(v176, v74))
            {
              goto LABEL_358;
            }

            v85 = sub_20E4C5FD0();
            if (v85 >= v84)
            {
              v81 = v84;
            }

            else
            {
              v81 = v85;
            }

            v82 = v195;
            if (!v195)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v60)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v215 != 1)
            {
              v72 = v195;
              *__s1 = v222;
              __s1[4] = v203;
              *&__s1[5] = *(&v222 + 5);
              __s1[7] = HIBYTE(v222);
              *&__s1[8] = v224;
              *&__s1[12] = WORD2(v224);
              if (!v195)
              {
                goto LABEL_378;
              }

LABEL_115:
              v69 = memcmp(v72, __s1, BYTE6(v224));
              sub_20E424BA4(v30, v29);
              v23 = v214;
              goto LABEL_116;
            }

            if (v201 < v222)
            {
              goto LABEL_357;
            }

            v61 = sub_20E4C5FC0();
            if (v61)
            {
              v179 = v61;
              v62 = sub_20E4C5FE0();
              if (__OFSUB__(v222, v62))
              {
                goto LABEL_369;
              }

              v60 = (v222 - v62 + v179);
            }

            else
            {
              v60 = 0;
            }

            v86 = sub_20E4C5FD0();
            v81 = (v222 >> 32) - v222;
            if (v86 < v199)
            {
              v81 = v86;
            }

            v82 = v195;
            if (!v195)
            {
              goto LABEL_396;
            }

            if (!v60)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v30;
        *&__s1[8] = v29;
        __s1[10] = BYTE2(v29);
        __s1[11] = BYTE3(v29);
        __s1[12] = BYTE4(v29);
        __s1[13] = BYTE5(v29);
        if (!v24)
        {
          goto LABEL_79;
        }

        if (v24 == 1)
        {
          if (v201 < v222)
          {
            goto LABEL_350;
          }

          sub_20E424B50(v30, v29);
          v42 = sub_20E4C5FC0();
          if (!v42)
          {
            goto LABEL_388;
          }

          v43 = v42;
          v44 = sub_20E4C5FE0();
          if (__OFSUB__(v222, v44))
          {
            goto LABEL_354;
          }

          v45 = (v222 - v44 + v43);
          v46 = sub_20E4C5FD0();
          if (!v45)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v197 = *(v222 + 16);
        v180 = *(v222 + 24);
        sub_20E424B50(v30, v29);
        v54 = sub_20E4C5FC0();
        if (v54)
        {
          v63 = sub_20E4C5FE0();
          v64 = v197;
          if (__OFSUB__(v197, v63))
          {
            goto LABEL_364;
          }

          v54 = &v197[v54 - v63];
        }

        else
        {
          v64 = v197;
        }

        v75 = v180 - v64;
        if (__OFSUB__(v180, v64))
        {
          goto LABEL_351;
        }

        v76 = sub_20E4C5FD0();
        if (!v54)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v76 >= v75)
        {
          v77 = v75;
        }

        else
        {
          v77 = v76;
        }

        v78 = memcmp(__s1, v54, v77);
        sub_20E424BA4(v30, v29);
        v5 = a3;
LABEL_158:
        v23 = v214;
        v24 = v215;
        if (!v78)
        {
          goto LABEL_161;
        }

LABEL_26:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v226 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v31 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v24)
        {
LABEL_79:
          __s2 = v222;
          v229 = v203;
          v230 = *(&v222 + 5);
          v231 = HIBYTE(v222);
          v232 = v224;
          v233 = WORD2(v224);
          v57 = memcmp(__s1, &__s2, BYTE6(v224));
          v23 = v214;
          if (!v57)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v24 != 2)
        {
          if (v201 < v222)
          {
            goto LABEL_349;
          }

          sub_20E424B50(v30, v29);
          v65 = sub_20E4C5FC0();
          if (!v65)
          {
            goto LABEL_382;
          }

          v66 = v65;
          v67 = sub_20E4C5FE0();
          if (__OFSUB__(v222, v67))
          {
            goto LABEL_355;
          }

          v45 = (v222 - v67 + v66);
          v46 = sub_20E4C5FD0();
          if (!v45)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v46 >= v199)
          {
            v68 = (v222 >> 32) - v222;
          }

          else
          {
            v68 = v46;
          }

          v69 = memcmp(__s1, v45, v68);
          sub_20E424BA4(v30, v29);
          v5 = a3;
          v23 = v214;
          v24 = v215;
LABEL_116:
          if (!v69)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v196 = *(v222 + 16);
        v177 = *(v222 + 24);
        sub_20E424B50(v30, v29);
        v54 = sub_20E4C5FC0();
        if (v54)
        {
          v55 = sub_20E4C5FE0();
          v56 = v196;
          if (__OFSUB__(v196, v55))
          {
            goto LABEL_365;
          }

          v54 = &v196[v54 - v55];
        }

        else
        {
          v56 = v196;
        }

        v75 = v177 - v56;
        if (__OFSUB__(v177, v56))
        {
          goto LABEL_352;
        }

        v76 = sub_20E4C5FD0();
        if (!v54)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v47 = *(v30 + 16);
      sub_20E424B50(v30, v29);
      v48 = sub_20E4C5FC0();
      if (v48)
      {
        v49 = v48;
        v50 = sub_20E4C5FE0();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_338;
        }

        v194 = (v47 - v50 + v49);
      }

      else
      {
        v194 = 0;
      }

      sub_20E4C5FD0();
      v24 = v215;
      v5 = a3;
      if (v215 == 2)
      {
        v175 = *(v222 + 24);
        v181 = *(v222 + 16);
        v60 = sub_20E4C5FC0();
        if (v60)
        {
          v70 = sub_20E4C5FE0();
          v71 = v181;
          if (__OFSUB__(v181, v70))
          {
            goto LABEL_366;
          }

          v60 += v181 - v70;
        }

        else
        {
          v71 = v181;
        }

        v79 = v175 - v71;
        if (__OFSUB__(v175, v71))
        {
          goto LABEL_356;
        }

        v80 = sub_20E4C5FD0();
        if (v80 >= v79)
        {
          v81 = v79;
        }

        else
        {
          v81 = v80;
        }

        v82 = v194;
        if (!v194)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v60)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v215 != 1)
        {
          v72 = v194;
          *__s1 = v222;
          __s1[4] = v203;
          *&__s1[5] = *(&v222 + 5);
          __s1[7] = HIBYTE(v222);
          *&__s1[8] = v224;
          *&__s1[12] = WORD2(v224);
          if (!v194)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v201 < v222)
        {
          goto LABEL_353;
        }

        v58 = sub_20E4C5FC0();
        if (v58)
        {
          v178 = v58;
          v59 = sub_20E4C5FE0();
          if (__OFSUB__(v222, v59))
          {
            goto LABEL_367;
          }

          v60 = (v222 - v59 + v178);
        }

        else
        {
          v60 = 0;
        }

        v83 = sub_20E4C5FD0();
        v81 = (v222 >> 32) - v222;
        if (v83 < v199)
        {
          v81 = v83;
        }

        v82 = v194;
        if (!v194)
        {
          goto LABEL_392;
        }

        if (!v60)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v82 != v60)
      {
        v78 = memcmp(v82, v60, v81);
        sub_20E424BA4(v30, v29);
        goto LABEL_158;
      }

      sub_20E424BA4(v30, v29);
LABEL_161:
      v87 = v222;
      v88 = v224;
LABEL_162:
      sub_20E424BA4(v87, v88);
      a1[v21] |= v22;
      v38 = __OFADD__(v211++, 1);
      v4 = a4;
      v11 = v186;
      v7 = v192;
      v10 = v209;
      if (v38)
      {
        __break(1u);
        break;
      }
    }
  }

  v211 = 0;
  v89 = 0;
  v193 = v5 + 56;
  v90 = 1 << *(v5 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v5 + 56);
  v93 = (v90 + 63) >> 6;
  v200 = v93;
  v94 = v4 + 56;
  v220 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v92)
    {
      v95 = __clz(__rbit64(v92));
      v96 = (v92 - 1) & v92;
      goto LABEL_177;
    }

    v97 = v89;
    do
    {
      v89 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v89 >= v93)
      {
        goto LABEL_323;
      }

      v98 = *(v193 + 8 * v89);
      ++v97;
    }

    while (!v98);
    v95 = __clz(__rbit64(v98));
    v96 = (v98 - 1) & v98;
LABEL_177:
    v99 = v95 | (v89 << 6);
    v212 = v96;
    v100 = (*(v5 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    sub_20E4C69C0();
    sub_20E424B50(v102, v101);
    sub_20E4C6130();
    v103 = sub_20E4C69F0();
    v104 = -1 << *(v4 + 32);
    v105 = v103 & ~v104;
    v106 = v94;
    v227 = v101;
    if ((*(v94 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
    {
      break;
    }

LABEL_169:
    v94 = v106;
    sub_20E424BA4(v102, v227);
    v5 = a3;
    v93 = v200;
    v92 = v212;
  }

  v198 = v99;
  v107 = ~v104;
  v108 = v101 >> 62;
  if (v102)
  {
    v109 = 0;
  }

  else
  {
    v109 = v101 == 0xC000000000000000;
  }

  v110 = !v109;
  v223 = v110;
  v111 = __OFSUB__(HIDWORD(v102), v102);
  v216 = v111;
  v225 = BYTE6(v101);
  v210 = v102 >> 32;
  v202 = (v102 >> 32) - v102;
  __n = v107;
  while (1)
  {
    v112 = (*(v4 + 48) + 16 * v105);
    v113 = *v112;
    v114 = v112[1];
    v115 = v114 >> 62;
    if (v114 >> 62 == 3)
    {
      if (v113)
      {
        v116 = 0;
      }

      else
      {
        v116 = v114 == 0xC000000000000000;
      }

      v118 = !v116 || v108 < 3;
      if (((v118 | v223) & 1) == 0)
      {
        v94 = v106;
        v172 = 0;
        v173 = 0xC000000000000000;
LABEL_318:
        sub_20E424BA4(v172, v173);
        v174 = v211;
        goto LABEL_319;
      }

LABEL_212:
      v119 = 0;
      if (v108 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v115 > 1)
    {
      if (v115 != 2)
      {
        goto LABEL_212;
      }

      v121 = *(v113 + 16);
      v120 = *(v113 + 24);
      v38 = __OFSUB__(v120, v121);
      v119 = v120 - v121;
      if (v38)
      {
        goto LABEL_330;
      }

      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v115)
    {
      LODWORD(v119) = HIDWORD(v113) - v113;
      if (__OFSUB__(HIDWORD(v113), v113))
      {
        goto LABEL_331;
      }

      v119 = v119;
      if (v108 <= 1)
      {
LABEL_209:
        v122 = v225;
        if (v108)
        {
          v122 = HIDWORD(v102) - v102;
          if (v216)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v119 = BYTE6(v114);
      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v108 != 2)
    {
      if (!v119)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v124 = *(v102 + 16);
    v123 = *(v102 + 24);
    v38 = __OFSUB__(v123, v124);
    v122 = v123 - v124;
    if (v38)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v119 != v122)
    {
      goto LABEL_189;
    }

    if (v119 < 1)
    {
      goto LABEL_317;
    }

    if (v115 > 1)
    {
      break;
    }

    if (v115)
    {
      if (v113 > v113 >> 32)
      {
        goto LABEL_334;
      }

      sub_20E424B50(v113, v114);
      v131 = sub_20E4C5FC0();
      if (v131)
      {
        v132 = v131;
        v133 = sub_20E4C5FE0();
        if (__OFSUB__(v113, v133))
        {
          goto LABEL_337;
        }

        v205 = (v113 - v133 + v132);
      }

      else
      {
        v205 = 0;
      }

      sub_20E4C5FD0();
      v4 = a4;
      v107 = __n;
      if (v108 == 2)
      {
        v191 = *(v102 + 16);
        v184 = *(v102 + 24);
        v141 = sub_20E4C5FC0();
        if (v141)
        {
          v157 = sub_20E4C5FE0();
          v158 = v191;
          if (__OFSUB__(v191, v157))
          {
            goto LABEL_362;
          }

          v141 += v191 - v157;
        }

        else
        {
          v158 = v191;
        }

        v168 = v184 - v158;
        if (__OFSUB__(v184, v158))
        {
          goto LABEL_348;
        }

        v169 = sub_20E4C5FD0();
        if (v169 >= v168)
        {
          v165 = v168;
        }

        else
        {
          v165 = v169;
        }

        v166 = v205;
        if (!v205)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v141)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v108 == 1)
      {
        if (v210 < v102)
        {
          goto LABEL_347;
        }

        v142 = sub_20E4C5FC0();
        if (v142)
        {
          v189 = v142;
          v143 = sub_20E4C5FE0();
          if (__OFSUB__(v102, v143))
          {
            goto LABEL_363;
          }

          v141 = (v102 - v143 + v189);
        }

        else
        {
          v141 = 0;
        }

        v170 = sub_20E4C5FD0();
        v165 = (v102 >> 32) - v102;
        if (v170 < v202)
        {
          v165 = v170;
        }

        v166 = v205;
        if (!v205)
        {
          goto LABEL_385;
        }

        if (!v141)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v156 = v205;
      *__s1 = v102;
      *&__s1[8] = v227;
      *&__s1[12] = WORD2(v227);
      if (!v205)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v113;
    *&__s1[8] = v114;
    __s1[10] = BYTE2(v114);
    __s1[11] = BYTE3(v114);
    __s1[12] = BYTE4(v114);
    __s1[13] = BYTE5(v114);
    if (!v108)
    {
      goto LABEL_240;
    }

    if (v108 == 1)
    {
      if (v210 < v102)
      {
        goto LABEL_342;
      }

      sub_20E424B50(v113, v114);
      v125 = sub_20E48C2A8(v102, v210, v227 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v208)
      {
        goto LABEL_399;
      }

      v126 = v125;
      sub_20E424BA4(v113, v114);
    }

    else
    {
      v144 = *(v102 + 16);
      v145 = *(v102 + 24);
      sub_20E424B50(v113, v114);
      v146 = sub_20E48C2A8(v144, v145, v227 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v208)
      {
        goto LABEL_399;
      }

      v126 = v146;
      sub_20E424BA4(v113, v114);
      v4 = a4;
    }

    v106 = v220;
    if (v126)
    {
      goto LABEL_317;
    }

LABEL_189:
    v105 = (v105 + 1) & v107;
    if (((*(v106 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v115 == 2)
  {
    v127 = *(v113 + 16);
    sub_20E424B50(v113, v114);
    v128 = sub_20E4C5FC0();
    if (v128)
    {
      v129 = v128;
      v130 = sub_20E4C5FE0();
      if (__OFSUB__(v127, v130))
      {
        goto LABEL_336;
      }

      v204 = (v127 - v130 + v129);
    }

    else
    {
      v204 = 0;
    }

    sub_20E4C5FD0();
    v4 = a4;
    v107 = __n;
    if (v108 == 2)
    {
      v190 = *(v102 + 16);
      v183 = *(v102 + 24);
      v141 = sub_20E4C5FC0();
      if (v141)
      {
        v154 = sub_20E4C5FE0();
        v155 = v190;
        if (__OFSUB__(v190, v154))
        {
          goto LABEL_360;
        }

        v141 += v190 - v154;
      }

      else
      {
        v155 = v190;
      }

      v163 = v183 - v155;
      if (__OFSUB__(v183, v155))
      {
        goto LABEL_346;
      }

      v164 = sub_20E4C5FD0();
      if (v164 >= v163)
      {
        v165 = v163;
      }

      else
      {
        v165 = v164;
      }

      v166 = v204;
      if (!v204)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v141)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v108 == 1)
    {
      if (v210 < v102)
      {
        goto LABEL_344;
      }

      v139 = sub_20E4C5FC0();
      if (v139)
      {
        v188 = v139;
        v140 = sub_20E4C5FE0();
        if (__OFSUB__(v102, v140))
        {
          goto LABEL_361;
        }

        v141 = (v102 - v140 + v188);
      }

      else
      {
        v141 = 0;
      }

      v167 = sub_20E4C5FD0();
      v165 = (v102 >> 32) - v102;
      if (v167 < v202)
      {
        v165 = v167;
      }

      v166 = v204;
      if (!v204)
      {
        goto LABEL_387;
      }

      if (!v141)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v166 == v141)
      {
        sub_20E424BA4(v113, v114);
        sub_20E424BA4(v102, v227);
        v174 = v211;
        v94 = v220;
LABEL_319:
        v92 = v212;
        *(a1 + ((v198 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v198;
        v211 = v174 + 1;
        v5 = a3;
        v93 = v200;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v171 = memcmp(v166, v141, v165);
      sub_20E424BA4(v113, v114);
      v106 = v220;
      v107 = __n;
      if (!v171)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v156 = v204;
    *__s1 = v102;
    *&__s1[8] = v227;
    *&__s1[12] = WORD2(v227);
    if (!v204)
    {
      goto LABEL_374;
    }

LABEL_277:
    v153 = memcmp(v156, __s1, v225);
    sub_20E424BA4(v113, v114);
LABEL_278:
    v106 = v220;
    if (!v153)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v108)
  {
LABEL_240:
    LOWORD(__s2) = v102;
    BYTE2(__s2) = BYTE2(v102);
    HIBYTE(__s2) = BYTE3(v102);
    v229 = BYTE4(v102);
    LOBYTE(v230) = BYTE5(v102);
    HIBYTE(v230) = BYTE6(v102);
    v231 = HIBYTE(v102);
    v232 = v227;
    v233 = WORD2(v227);
    v137 = v106;
    v138 = memcmp(__s1, &__s2, v225);
    v106 = v137;
    if (!v138)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v108 != 2)
  {
    if (v210 < v102)
    {
      goto LABEL_341;
    }

    sub_20E424B50(v113, v114);
    v147 = sub_20E4C5FC0();
    if (!v147)
    {
      goto LABEL_372;
    }

    v148 = v147;
    v149 = sub_20E4C5FE0();
    if (__OFSUB__(v102, v149))
    {
      goto LABEL_345;
    }

    v150 = (v102 - v149 + v148);
    v151 = sub_20E4C5FD0();
    if (!v150)
    {
      goto LABEL_373;
    }

    if (v151 >= v202)
    {
      v152 = (v102 >> 32) - v102;
    }

    else
    {
      v152 = v151;
    }

    v153 = memcmp(__s1, v150, v152);
    sub_20E424BA4(v113, v114);
    v4 = a4;
    v107 = __n;
    goto LABEL_278;
  }

  v206 = *(v102 + 16);
  v187 = *(v102 + 24);
  sub_20E424B50(v113, v114);
  v134 = sub_20E4C5FC0();
  if (v134)
  {
    v135 = sub_20E4C5FE0();
    v136 = v206;
    if (__OFSUB__(v206, v135))
    {
      goto LABEL_359;
    }

    v134 = &v206[v134 - v135];
  }

  else
  {
    v136 = v206;
  }

  v159 = v187 - v136;
  if (__OFSUB__(v187, v136))
  {
    goto LABEL_343;
  }

  v160 = sub_20E4C5FD0();
  if (v134)
  {
    if (v160 >= v159)
    {
      v161 = v159;
    }

    else
    {
      v161 = v160;
    }

    v162 = memcmp(__s1, v134, v161);
    sub_20E424BA4(v113, v114);
    v4 = a4;
    v106 = v220;
    v107 = __n;
    if (!v162)
    {
LABEL_317:
      v94 = v106;
      v172 = v102;
      v173 = v227;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_20E4C5FD0();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  sub_20E4C5FD0();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  sub_20E4C5FD0();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
}