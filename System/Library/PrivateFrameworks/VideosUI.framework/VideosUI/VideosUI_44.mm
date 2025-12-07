id sub_1E39A1E5C(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1E42062A4();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() predicateMatchingPredicates_];

  return v2;
}

uint64_t sub_1E39A1ED8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  OUTLINED_FUNCTION_27_10();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E42A1E20;
  v3 = [objc_opt_self() vui:a1 homeVideosQueryWithMediaLibrary:?];
  *(v2 + 32) = v3;
  v4 = OUTLINED_FUNCTION_13_0(v3, sel_vui_moviesQueryWithMediaLibrary_);
  *(v2 + 40) = v4;
  v5 = OUTLINED_FUNCTION_13_0(v4, sel_vui_movieRentalsQueryWithMediaLibrary_);
  *(v2 + 48) = v5;
  *(v2 + 56) = OUTLINED_FUNCTION_13_0(v5, sel_vui_tvShowsQueryWithMediaLibrary_);
  v6 = sub_1E32AE9B0(v2);
  if (!v6)
  {
LABEL_10:
    type metadata accessor for ComposedMediaQuery();
    OUTLINED_FUNCTION_27_10();
    v16 = swift_allocObject();
    sub_1E399D3C8(v2, 1);
    return v16;
  }

  v7 = v6;
  result = sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E6911E60](i, v2);
      }

      else
      {
        v10 = *(v2 + 8 * i + 32);
      }

      v13 = v10;
      sub_1E39A12C4(v10, v11, v12);
      if (v14)
      {
        v15 = v14;
        [v13 addFilterPredicate_];
      }

      [v13 setIgnoreSystemFilterPredicates_];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1E39A2078(uint64_t a1)
{
  sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
  v26[3] = MEMORY[0x1E69E7360];
  v26[0] = a1;
  v2 = sub_1E4205F14();
  v4 = sub_1E39A0840(v26, v2, v3, 0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_14_65(inited, xmmword_1E4298880);
  if (sub_1E32AE9B0(v7))
  {
    v8 = v4;
    v9 = sub_1E39A4920(inited, &qword_1ECF2FBB8, &qword_1E42CE270, &unk_1EE23B2B0, 0x1E6970608);
  }

  else
  {
    swift_setDeallocating();
    v10 = v4;
    sub_1E377D458();
    v9 = MEMORY[0x1E69E7CD0];
  }

  v11 = objc_allocWithZone(MEMORY[0x1E6970618]);
  v12 = sub_1E39A26C0(v9);
  [v12 setIgnoreRestrictionsPredicates_];
  [v12 setEntityLimit_];
  v13 = OUTLINED_FUNCTION_24_3(v5);
  OUTLINED_FUNCTION_89_1(v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *(v23 + 32) = v12;
  type metadata accessor for ComposedMediaQuery();
  OUTLINED_FUNCTION_27_10();
  swift_allocObject();
  v24 = OUTLINED_FUNCTION_38();
  sub_1E399D46C(v24, 1, 0);

  return v12;
}

id sub_1E39A2208()
{
  v0 = [objc_opt_self() defaultMediaLibrary];
  v1 = [swift_getObjCClassFromMetadata() vui:v0 movieRentalsQueryWithMediaLibrary:?];
  v2 = [v1 _countOfItems];

  return v2;
}

uint64_t sub_1E39A2290()
{
  v0 = [objc_opt_self() defaultMediaLibrary];
  sub_1E3280A90(0, &qword_1EE23B3A0, 0x1E6970618);
  v1 = sub_1E39A1ED8(v0);
  OUTLINED_FUNCTION_14_0(v1 + 24, v2);
  *(v1 + 24) = 1;
  sub_1E399D4C4();
  v4 = v3;

  return v4 & 1;
}

void sub_1E39A232C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC0, &unk_1E42AF640);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    swift_dynamicCast();
    v10 = sub_1E42073F4();
    v11 = -1 << *(v2 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) == 0)
    {
      v15 = 0;
      v16 = (63 - v11) >> 6;
      while (++v13 != v16 || (v15 & 1) == 0)
      {
        v17 = v13 == v16;
        if (v13 == v16)
        {
          v13 = 0;
        }

        v15 |= v17;
        v18 = *(v7 + 8 * v13);
        if (v18 != -1)
        {
          v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v7 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v5 &= v5 - 1;
    v19 = *(v2 + 48) + 40 * v14;
    *(v19 + 32) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1E39A2554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_1E4205ED4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_1E4206614();

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() predicateWithProperty:v4 values:v5];

  return v6;
}

uint64_t sub_1E39A2600()
{
  result = sub_1E4205F14();
  qword_1EE28B7E8 = result;
  unk_1EE28B7F0 = v1;
  return result;
}

uint64_t sub_1E39A2630()
{
  result = sub_1E4205F14();
  qword_1EE28B800 = result;
  *algn_1EE28B808 = v1;
  return result;
}

uint64_t sub_1E39A2660()
{
  result = sub_1E4205F14();
  qword_1EE28B818 = result;
  unk_1EE28B820 = v1;
  return result;
}

uint64_t sub_1E39A2690()
{
  result = sub_1E4205F14();
  qword_1EE28B830 = result;
  *algn_1EE28B838 = v1;
  return result;
}

id sub_1E39A26C0(uint64_t a1)
{
  if (a1)
  {
    sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
    sub_1E3940E4C(&qword_1EE23B2A8, &unk_1EE23B2B0, 0x1E6970608);
    v2 = sub_1E4206614();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithFilterPredicates_];

  return v3;
}

uint64_t sub_1E39A2770(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1E39A27DC(uint64_t *a1, id *a2)
{
  v5 = a1[1];
  swift_retain_n();
  v6 = sub_1E4207914();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_1E39A2770(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    sub_1E39A2EB0(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1E39A2A08(0, v5, 1, a1, a2);
  }
}

uint64_t sub_1E39A2908(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E38CE044(v7 / 2);
    v12[0] = v11;
    v12[1] = v7 / 2;
    result = sub_1E39A39B0(v12, v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    return sub_1E39A2D18(0, v7, 1, a1, a2, a3);
  }

  return result;
}

void sub_1E39A2A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
  }

  else
  {
    v7 = a3;
    v27 = v5;
    v32 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
    while (2)
    {
      swift_beginAccess();
      swift_beginAccess();
      v30 = v8;
      v31 = v7;
      v10 = *(v32 + 8 * v7);
      v29 = v9;
      v11 = v9;
      while (1)
      {
        v12 = *v8;
        v13 = v10;
        v14 = v12;
        v37 = [v13 representativeItem];
        if (!v37)
        {
          v37 = v13;
        }

        v15 = [v14 representativeItem];
        if (!v15)
        {
          v15 = v14;
        }

        v16 = v15;

        v17 = sub_1E4205ED4();

        v18 = [v37 valueForProperty_];

        if (!v18)
        {

          goto LABEL_23;
        }

        v33 = v14;
        sub_1E4207264();
        swift_unknownObjectRelease();
        sub_1E329504C(v35, v36);

        v19 = sub_1E4205ED4();

        v20 = [v16 valueForProperty_];

        if (!v20)
        {
          break;
        }

        sub_1E4207264();
        swift_unknownObjectRelease();
        sub_1E329504C(&v34, v35);
        sub_1E399F56C();
        v22 = v21;

        __swift_destroy_boxed_opaque_existential_1(v35);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v23 = *(a5 + 56);

        v24 = v23 == 1 && v22 == 1;
        if (!v24 && (v23 != 2 || v22 != -1))
        {
          if (!v32)
          {
            __break(1u);
            return;
          }

          v25 = *v8;
          v10 = *(v8 + 8);
          *v8 = v10;
          *(v8 + 8) = v25;
          v8 -= 8;
          if (!__CFADD__(v11++, 1))
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      __swift_destroy_boxed_opaque_existential_1(v36);

LABEL_23:
      v7 = v31 + 1;
      v8 = v30 + 8;
      v9 = v29 - 1;
      if (v31 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1E39A2D18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
    while (2)
    {
      v23 = v7;
      v24 = a3;
      v9 = *(v25 + 8 * a3);
      v22 = v8;
      do
      {
        v10 = *v7;
        v11 = *(*v9 + 1208);

        v13 = v11(v12);
        (*(*v10 + 1208))(v13);
        sub_1E399FA2C();
        v15 = v14;

        v17 = a6 == 1 && v15 == -1;
        v18 = v15 == 1 && a6 == -1;
        if (v18 || v17)
        {
          break;
        }

        if (!v25)
        {
          __break(1u);
          return result;
        }

        v19 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v19;
        --v7;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v24 + 1;
      v7 = v23 + 1;
      v8 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1E39A2EB0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, id *a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_retain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_127:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_171;
    }

    swift_retain_n();
    v10 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_165:
      v10 = sub_1E37FFF5C(v10);
    }

    v109 = (v10 + 16);
    v110 = *(v10 + 16);
    for (i = v10; ; v10 = i)
    {
      if (v110 < 2)
      {

        return;
      }

      v111 = *a3;
      if (!*a3)
      {
        goto LABEL_168;
      }

      v112 = (v10 + 16 * v110);
      v113 = *v112;
      v114 = v109;
      v115 = &v109[2 * v110];
      v10 = v115[1];
      v116 = (v111 + 8 * *v112);
      v117 = (v111 + 8 * *v115);
      v139 = (v111 + 8 * v10);

      sub_1E39A4270(v116, v117, v139, __dst, a5);
      if (v127)
      {
        break;
      }

      if (v10 < v113)
      {
        goto LABEL_156;
      }

      if (v110 - 2 >= *v114)
      {
        goto LABEL_157;
      }

      v109 = v114;
      *v112 = v113;
      v112[1] = v10;
      v118 = *v114 - v110;
      if (*v114 < v110)
      {
        goto LABEL_158;
      }

      v110 = *v114 - 1;
      memmove(v115, v115 + 2, 16 * v118);
      *v114 = v110;
    }

LABEL_139:

    return;
  }

  swift_retain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_processPendingChanges;
  v139 = a5;
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_40;
    }

    v12 = v7;
    v13 = *a3;
    *&v138[0] = *(*a3 + 8 * v11);
    *&v137[0] = *(v13 + 8 * v7);
    v14 = *&v137[0];
    v15 = *&v138[0];
    v16 = v14;
    v132 = sub_1E399F390(v138, v137, a5);
    if (v127)
    {

      goto LABEL_139;
    }

    swift_beginAccess();
    swift_beginAccess();
    v17 = v13 + 8 * v12;
    v120 = v12;
    v10 = 8 * v12;
    v18 = (v17 + 16);
    v9 = &selRef_processPendingChanges;
    v130 = v6;
    while (1)
    {
      if (v11 + 1 >= v6)
      {
        goto LABEL_30;
      }

      v19 = *(v18 - 1);
      __dst = v18;
      v20 = *v18;
      v21 = v19;
      v22 = [v20 v9[323]];
      if (!v22)
      {
        v22 = v20;
      }

      v23 = [v21 v9[323]];
      if (!v23)
      {
        v23 = v21;
      }

      v24 = sub_1E4205ED4();

      v25 = [v22 valueForProperty_];

      if (!v25)
      {
        goto LABEL_26;
      }

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E329504C(v137, v138);

      v26 = sub_1E4205ED4();

      v27 = [v23 valueForProperty_];

      if (!v27)
      {
        __swift_destroy_boxed_opaque_existential_1(v138);
LABEL_26:

        goto LABEL_27;
      }

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E329504C(v136, v137);
      sub_1E399F56C();
      a5 = v139;
      v29 = v28;

      __swift_destroy_boxed_opaque_existential_1(v137);
      __swift_destroy_boxed_opaque_existential_1(v138);
      v30 = a5[7];

      if (v30 != 1 || v29 != 1)
      {
        break;
      }

LABEL_27:
      v6 = v130;
      if (v132)
      {
        v6 = v11 + 1;
        v9 = &selRef_processPendingChanges;
        goto LABEL_31;
      }

LABEL_28:
      v18 = __dst + 1;
      ++v11;
      v9 = &selRef_processPendingChanges;
    }

    v33 = v30 != 2 || v29 != -1;
    v6 = v130;
    if (v132 == v33)
    {
      goto LABEL_28;
    }

    v6 = v11 + 1;
    v9 = &selRef_processPendingChanges;
LABEL_30:
    if (!v132)
    {
LABEL_38:
      v11 = v6;
      v10 = v120;
      goto LABEL_40;
    }

LABEL_31:
    v34 = v120;
    if (v6 < v120)
    {
      goto LABEL_162;
    }

    if (v120 < v6)
    {
      v35 = 8 * v6 - 8;
      v36 = v6;
      do
      {
        if (v34 != --v36)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_169;
          }

          v38 = *(v37 + v10);
          *(v37 + v10) = *(v37 + v35);
          *(v37 + v35) = v38;
        }

        ++v34;
        v35 -= 8;
        v10 += 8;
      }

      while (v34 < v36);
      goto LABEL_38;
    }

    v11 = v6;
    v10 = v120;
LABEL_40:
    v39 = a3[1];
    if (v11 >= v39)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_161;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_73;
    }

    v40 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_163;
    }

    if (v40 >= v39)
    {
      v40 = a3[1];
    }

    if (v40 < v10)
    {
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (v11 == v40)
    {
      goto LABEL_73;
    }

    v131 = *a3;
    v121 = v10;
    v41 = v10 - v11;
    v42 = *a3 + 8 * v11 - 8;
    v123 = v40;
LABEL_49:
    swift_beginAccess();
    swift_beginAccess();
    v128 = v11;
    v43 = *(v131 + 8 * v11);
    v44 = v41;
    v124 = v42;
    v133 = v41;
LABEL_50:
    v45 = *v42;
    v46 = v43;
    v47 = v45;
    v48 = [v46 v9[323]];
    if (!v48)
    {
      v48 = v46;
    }

    __dst = v46;
    v49 = [v47 v9[323]];
    if (!v49)
    {
      v49 = v47;
    }

    v50 = v47;

    v51 = sub_1E4205ED4();

    v52 = [v48 valueForProperty_];

    if (!v52)
    {
      goto LABEL_69;
    }

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E329504C(v137, v138);

    v53 = sub_1E4205ED4();

    v54 = [v49 valueForProperty_];

    if (!v54)
    {
      __swift_destroy_boxed_opaque_existential_1(v138);
LABEL_69:

      v9 = &selRef_processPendingChanges;
      v59 = v133;
      goto LABEL_71;
    }

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E329504C(v136, v137);
    sub_1E399F56C();
    a5 = v139;
    v56 = v55;

    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v57 = a5[7];

    v58 = v57 == 1 && v56 == 1;
    v59 = v133;
    if (!v58)
    {
      break;
    }

    v9 = &selRef_processPendingChanges;
LABEL_71:
    v11 = v128 + 1;
    v42 = v124 + 8;
    v41 = v59 - 1;
    if (v128 + 1 != v123)
    {
      goto LABEL_49;
    }

    v11 = v123;
    v10 = v121;
LABEL_73:
    if (v11 < v10)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E37FFF70(0, *(v8 + 2) + 1, 1, v8);
    }

    v63 = *(v8 + 2);
    v62 = *(v8 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v8 = sub_1E37FFF70((v62 > 1), v63 + 1, 1, v8);
    }

    *(v8 + 2) = v64;
    v65 = v8 + 32;
    v66 = &v8[16 * v63 + 32];
    *v66 = v10;
    v66[1] = v11;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    v129 = v11;
    if (v63)
    {
      v134 = v8 + 32;
      while (1)
      {
        v67 = v64 - 1;
        v68 = &v65[16 * v64 - 16];
        v69 = &v8[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v8 + 4);
          v71 = *(v8 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_94:
          if (v73)
          {
            goto LABEL_147;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_150;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_153;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_155;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v64 < 2)
        {
          goto LABEL_149;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_109:
        if (v88)
        {
          goto LABEL_152;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_154;
        }

        if (v95 < v87)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v67 - 1 >= v64)
        {
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
          goto LABEL_164;
        }

        v99 = *a3;
        if (!*a3)
        {
          goto LABEL_167;
        }

        v10 = v8;
        v100 = &v65[16 * v67 - 16];
        v101 = *v100;
        v102 = v67;
        v103 = &v65[16 * v67];
        v104 = *(v103 + 1);
        v105 = (v99 + 8 * *v100);
        v106 = (v99 + 8 * *v103);
        v107 = (v99 + 8 * v104);
        a5 = v139;

        sub_1E39A4270(v105, v106, v107, __dst, a5);
        if (v127)
        {

          goto LABEL_139;
        }

        if (v104 < v101)
        {
          goto LABEL_142;
        }

        v108 = *(v10 + 16);
        if (v102 > v108)
        {
          goto LABEL_143;
        }

        *v100 = v101;
        *(v100 + 1) = v104;
        if (v102 >= v108)
        {
          goto LABEL_144;
        }

        v64 = v108 - 1;
        memmove(v103, v103 + 16, 16 * (v108 - 1 - v102));
        v8 = v10;
        *(v10 + 16) = v108 - 1;
        v9 = &selRef_processPendingChanges;
        v65 = v134;
        if (v108 <= 2)
        {
          goto LABEL_123;
        }
      }

      v74 = &v65[16 * v64];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_145;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_146;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_148;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_151;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_159;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v6 = a3[1];
    v7 = v129;
    a5 = v139;
    if (v129 >= v6)
    {
      goto LABEL_127;
    }
  }

  if (v57 == 2)
  {
    v9 = &selRef_processPendingChanges;
    if (v56 == -1)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v9 = &selRef_processPendingChanges;
  }

  if (v131)
  {
    v60 = *v42;
    v43 = *(v42 + 8);
    *v42 = v43;
    *(v42 + 8) = v60;
    v42 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_167:

  __break(1u);
LABEL_168:

  __break(1u);
LABEL_169:

  __break(1u);
LABEL_170:

  __break(1u);
LABEL_171:

  __break(1u);
}

uint64_t sub_1E39A39B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v110 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v120 = *v110;
    if (!*v110)
    {
      goto LABEL_163;
    }

    v7 = v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_123:
      v100 = v10 + 2;
      v101 = v10[2];
      while (v101 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_160;
        }

        v102 = v10;
        v103 = &v10[2 * v101];
        v104 = *v103;
        v10 = &v100[2 * v101];
        v105 = v10[1];
        sub_1E39A4570((*a3 + 8 * *v103), (*a3 + 8 * *v10), (*a3 + 8 * v105), v120, a5, a6);
        if (v7)
        {
          break;
        }

        if (v105 < v104)
        {
          goto LABEL_148;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_149;
        }

        *v103 = v104;
        v103[1] = v105;
        v106 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_150;
        }

        v101 = *v100 - 1;
        result = memmove(v10, v10 + 2, 16 * v106);
        *v100 = v101;
        v10 = v102;
      }
    }

LABEL_157:
    result = sub_1E37FFF5C(v10);
    v10 = result;
    goto LABEL_123;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v108 = v10;
      v120 = v6;
      v12 = *a3;
      v7 = *(*a3 + 8 * v11);
      v13 = *(**(*a3 + 8 * v9) + 1208);
      v14 = v11;
      v114 = v8;

      v16 = v13(v15);
      (*(*v7 + 1208))(v16);
      v10 = v17;
      sub_1E399FA2C();
      v19 = v18;

      v21 = a6 == 1 && v19 == -1;
      if (a6 == -1 && v19 == 1)
      {
        v21 = 1;
      }

      v112 = v21;
      v23 = v114;
      v24 = v12 + 8 * v14 + 16;
      for (i = 8 * v14 + 8; ; i += 8)
      {
        v117 = v9++;
        if (v9 >= v23)
        {
          break;
        }

        v10 = *(v24 - 8);
        v26 = *(**v24 + 1208);

        v28 = v26(v27);
        v7 = v29;
        (*(*v10 + 1208))(v28);
        sub_1E399FA2C();
        v31 = v30;

        if (a6 == -1 && v31 == 1)
        {
          v23 = v114;
          if (!v112)
          {
            goto LABEL_30;
          }
        }

        else if (a6 == 1)
        {
          v23 = v114;
          if (((v112 ^ (v31 != -1)) & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v23 = v114;
          if (v112)
          {
            v9 = v117 + 1;
            goto LABEL_40;
          }
        }

        v24 += 8;
      }

      if (v112)
      {
LABEL_40:
        v6 = v120;
        v10 = v108;
        v11 = v14;
        goto LABEL_41;
      }

LABEL_30:
      v33 = v117;
      v9 = v117 + 1;
      v11 = v14;
      if (v117 + 1 < v14)
      {
        goto LABEL_154;
      }

      if (v14 >= v9)
      {
        v6 = v120;
        v10 = v108;
      }

      else
      {
        v34 = v14;
        v6 = v120;
        v10 = v108;
        v35 = 8 * v14;
        do
        {
          if (v34 != v33)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_161;
            }

            v37 = *(v36 + v35);
            *(v36 + v35) = *(v36 + i);
            *(v36 + i) = v37;
          }

          ++v34;
          i -= 8;
          v35 += 8;
          v38 = v34 < v33--;
        }

        while (v38);
      }
    }

LABEL_41:
    v39 = a3[1];
    if (v9 < v39)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_153;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_68:
    if (v9 < v11)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v120 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v57 = v10[2];
    v56 = v10[3];
    v7 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v10);
      v10 = result;
    }

    v10[2] = v7;
    v58 = v10 + 4;
    v59 = &v10[2 * v57 + 4];
    *v59 = v11;
    v59[1] = v9;
    v119 = *v110;
    if (!*v110)
    {
      goto LABEL_162;
    }

    if (v57)
    {
      while (1)
      {
        v60 = v7 - 1;
        v61 = &v58[2 * v7 - 2];
        v62 = &v10[2 * v7];
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v63 = v10[4];
          v64 = v10[5];
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_88:
          if (v66)
          {
            goto LABEL_139;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_142;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_147;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v7 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        if (v7 < 2)
        {
          goto LABEL_141;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_103:
        if (v81)
        {
          goto LABEL_144;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_146;
        }

        if (v88 < v80)
        {
          goto LABEL_117;
        }

LABEL_110:
        if (v60 - 1 >= v7)
        {
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
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_159;
        }

        v92 = v9;
        v93 = &v58[2 * v60 - 2];
        v94 = *v93;
        v95 = v58;
        v7 = v60;
        v96 = &v58[2 * v60];
        v97 = v96[1];
        sub_1E39A4570((*a3 + 8 * *v93), (*a3 + 8 * *v96), (*a3 + 8 * v97), v119, a5, a6);
        if (v120)
        {
        }

        if (v97 < v94)
        {
          goto LABEL_134;
        }

        v98 = v10;
        v10 = v10[2];
        if (v7 > v10)
        {
          goto LABEL_135;
        }

        *v93 = v94;
        v93[1] = v97;
        if (v7 >= v10)
        {
          goto LABEL_136;
        }

        v99 = v7;
        v120 = 0;
        v7 = v10 - 1;
        result = memmove(v96, v96 + 2, 16 * (v10 - v99 - 1));
        v98[2] = v10 - 1;
        v38 = v10 > 2;
        v10 = v98;
        v9 = v92;
        v58 = v95;
        if (!v38)
        {
          goto LABEL_117;
        }
      }

      v67 = &v58[2 * v7];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_137;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_138;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_140;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_143;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_151;
        }

        if (v65 < v91)
        {
          v60 = v7 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_88;
    }

LABEL_117:
    v8 = a3[1];
    v6 = v120;
    if (v9 >= v8)
    {
      goto LABEL_121;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_155;
  }

  if (v11 + a4 >= v39)
  {
    v40 = a3[1];
  }

  else
  {
    v40 = v11 + a4;
  }

  if (v40 < v11)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v9 == v40)
  {
    goto LABEL_68;
  }

  v109 = v11;
  v120 = v6;
  v41 = v9;
  v42 = *a3;
  v43 = (*a3 + 8 * v41 - 8);
  v44 = v11 - v41;
  v111 = v40;
LABEL_51:
  v118 = v41;
  v7 = *(v42 + 8 * v41);
  v113 = v44;
  v115 = v43;
  while (1)
  {
    v45 = *v43;
    v46 = *(*v7 + 1208);

    v48 = v46(v47);
    (*(*v45 + 1208))(v48);
    sub_1E399FA2C();
    v50 = v49;

    v52 = a6 == 1 && v50 == -1;
    v53 = v50 == 1 && a6 == -1;
    if (v53 || v52)
    {
LABEL_66:
      v41 = v118 + 1;
      v43 = v115 + 1;
      v44 = v113 - 1;
      if (v118 + 1 == v111)
      {
        v9 = v111;
        v6 = v120;
        v11 = v109;
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    if (!v42)
    {
      break;
    }

    v54 = *v43;
    v7 = v43[1];
    *v43 = v7;
    v43[1] = v54;
    --v43;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_66;
    }
  }

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
  return result;
}

uint64_t sub_1E39A4270(void **__src, id *a2, id *a3, void **__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      memmove(__dst, __src, 8 * v9);
    }

    v12 = &v5[v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_40;
      }

      v14 = v12;
      v15 = v8;
      v56 = *v7;
      v16 = v5;
      v55 = *v5;
      v17 = v55;
      v18 = v56;
      v19 = v17;
      v20 = sub_1E399F390(&v56, &v55, a5);
      if (v54)
      {

        v45 = v16;
        v46 = v14 - v16;
        v47 = v15 < v16 || v15 >= &v16[v46];
        if (v47 || v15 != v16)
        {
          v43 = 8 * v46;
          v44 = v15;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v21 = v20;

      v12 = v14;
      if (!v21)
      {
        break;
      }

      v22 = v7;
      v23 = v15;
      v24 = v15 == v7++;
      v5 = v16;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v8 = (v23 + 1);
    }

    v22 = v16;
    v5 = v16 + 1;
    v23 = v15;
    if (v15 == v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v23 = *v22;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[v10] <= __dst)
  {
    memmove(__dst, a2, 8 * v10);
  }

  v12 = &v5[v10];
  v26 = -v5;
  __srca = v5;
LABEL_26:
  v27 = v7 - 1;
  --v6;
  v28 = v12 + v26;
  v51 = v7;
  while (1)
  {
    if (v12 <= v5 || v7 <= v8)
    {
LABEL_40:
      v41 = v12 - v5;
      v42 = v7 < v5 || v7 >= &v5[v41];
      if (v42 || v7 != v5)
      {
        v43 = 8 * v41;
        v44 = v7;
        v45 = v5;
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v52 = v28;
    v30 = v26;
    v31 = v8;
    v32 = v12;
    v33 = *--v12;
    v56 = v33;
    v34 = v27;
    v55 = *v27;
    v35 = v55;
    v36 = v33;
    v37 = v35;
    v38 = sub_1E399F390(&v56, &v55, a5);
    if (v54)
    {
      break;
    }

    v39 = v38;

    v40 = v6 + 1;
    if (v39)
    {
      v5 = __srca;
      v8 = v31;
      v26 = v30;
      v7 = v34;
      v12 = v32;
      if (v40 != v51)
      {
        *v6 = *v34;
        v7 = v34;
      }

      goto LABEL_26;
    }

    v5 = __srca;
    v8 = v31;
    v26 = v30;
    v27 = v34;
    if (v32 != v40)
    {
      *v6 = *v12;
    }

    --v6;
    v7 = v51;
    v28 = (v52 - 8);
  }

  v44 = v51;
  v45 = __srca;
  v48 = v51 < __srca || v51 >= &__srca[v52 / 8];
  if (v48 || v51 != __srca)
  {
    v43 = 8 * (v52 / 8);
LABEL_58:
    memmove(v44, v45, v43);
  }

LABEL_59:

  return 1;
}

uint64_t sub_1E39A4570(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = (__dst - __src) / 8;
  v11 = (a3 - __dst) / 8;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v13 = &v6[8 * v10];
    v43 = v7;
    for (i = v13; ; v13 = i)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_58;
      }

      v15 = *v6;
      v16 = *(**v8 + 1208);

      v18 = v16(v17);
      (*(*v15 + 1208))(v18);
      sub_1E399FA2C();
      v20 = v19;

      v21 = a6 == 1 && v20 == -1;
      v22 = v21;
      v23 = v20 == 1 && a6 == -1;
      if (v23 || v22)
      {
        break;
      }

      v24 = v8;
      v21 = v9 == v8;
      v8 += 8;
      if (!v21)
      {
        goto LABEL_27;
      }

LABEL_28:
      v9 += 8;
      v7 = v43;
    }

    v24 = v6;
    v21 = v9 == v6;
    v6 += 8;
    if (v21)
    {
      goto LABEL_28;
    }

LABEL_27:
    *v9 = *v24;
    goto LABEL_28;
  }

  if (a4 != __dst || &__dst[8 * v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v13 = &v6[8 * v11];
  v41 = v9;
  v42 = v6;
LABEL_35:
  v26 = v8 - 8;
  v7 -= 8;
  v44 = v8 - 8;
  while (v13 > v6 && v8 > v9)
  {
    v47 = v13;
    v28 = v13 - 8;
    v29 = *v26;
    v30 = *(**(v13 - 1) + 1208);

    v32 = v30(v31);
    (*(*v29 + 1208))(v32);
    sub_1E399FA2C();
    v34 = v33;

    v36 = a6 == 1 && v34 == -1;
    v37 = v34 == 1 && a6 == -1;
    if (!v37 && !v36)
    {
      v21 = v7 + 8 == v8;
      v6 = v42;
      v8 -= 8;
      v9 = v41;
      v13 = v47;
      if (!v21)
      {
        *v7 = *v44;
        v8 = v44;
      }

      goto LABEL_35;
    }

    if (v47 != v7 + 8)
    {
      *v7 = *v28;
    }

    v7 -= 8;
    v13 = v28;
    v9 = v41;
    v6 = v42;
    v26 = v8 - 8;
  }

LABEL_58:
  v38 = (v13 - v6) / 8;
  if (v8 != v6 || v8 >= &v6[8 * v38])
  {
    memmove(v8, v6, 8 * v38);
  }

  return 1;
}

uint64_t sub_1E39A4920(unint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v8 = a1;
  if (sub_1E32AE9B0(a1))
  {
    v9 = OUTLINED_FUNCTION_41_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, a3);
    v10 = sub_1E4207464();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  v29 = sub_1E32AE9B0(v8);
  if (v29)
  {
    v11 = 0;
    v12 = v10 + 56;
    v27 = v8;
    v28 = v8 & 0xC000000000000001;
    v26 = v8 + 32;
    while (1)
    {
      sub_1E34AF4E4(v11, v28 == 0, v8);
      if (v28)
      {
        v13 = OUTLINED_FUNCTION_102_3();
        result = MEMORY[0x1E6911E60](v13);
      }

      else
      {
        result = *(v26 + 8 * v11);
      }

      v15 = result;
      v16 = __OFADD__(v11++, 1);
      if (v16)
      {
        break;
      }

      result = sub_1E4206F54();
      v17 = ~(-1 << *(v10 + 32));
      while (1)
      {
        v18 = result & v17;
        v19 = (result & v17) >> 6;
        v20 = *(v12 + 8 * v19);
        v21 = 1 << (result & v17);
        if ((v21 & v20) == 0)
        {
          break;
        }

        sub_1E3280A90(0, a4, a5);
        v22 = *(*(v10 + 48) + 8 * v18);
        v23 = sub_1E4206F64();

        if (v23)
        {

          goto LABEL_17;
        }

        result = v18 + 1;
      }

      *(v12 + 8 * v19) = v21 | v20;
      *(*(v10 + 48) + 8 * v18) = v15;
      v24 = *(v10 + 16);
      v16 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v16)
      {
        goto LABEL_20;
      }

      *(v10 + 16) = v25;
LABEL_17:
      v8 = v27;
      if (v11 == v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v10;
  }

  return result;
}

uint64_t sub_1E39A4AD4(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1E3280A90(0, a3, a4);
  v8 = sub_1E42062B4();

  return v8;
}

void sub_1E39A4B48(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 _setOrderingProperties_];
}

void sub_1E39A4BB8(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 _setOrderingDirectionMappings_];
}

uint64_t sub_1E39A4C38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3940E4C(&qword_1EE23ADC8, &qword_1EE23ADD0, 0x1E696AD98);
  v9 = sub_1E4206614();

  v10 = [a5 videosWithDownloadStates:a1 entitlementTypes:v9 sortDescriptors:a3 useMainThreadContext:a4 & 1];

  if (!v10)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
  v11 = sub_1E42062B4();

  return v11;
}

uint64_t sub_1E39A4D40(void *a1)
{
  v1 = [a1 filterPredicates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
  sub_1E3940E4C(&qword_1EE23B2A8, &unk_1EE23B2B0, 0x1E6970608);
  v3 = sub_1E4206624();

  return v3;
}

uint64_t sub_1E39A4DDC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_32_0();
}

void (*sub_1E39A4E38(void *a1, unint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_1E34AF588(a3);
  sub_1E34AF4E4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1E6911E60](a2, a3);
  }

  *a1 = v7;
  return sub_1E39A5778;
}

uint64_t sub_1E39A4EC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23B108, 0x1E69705E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3827828(&qword_1EE23B480, &qword_1ECF2FB98, &unk_1E42AF580);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB98, &unk_1E42AF580);
          v9 = sub_1E39A4E38(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39A506C()
{
  result = sub_1E39A4DDC(*(v0 + 16), &selRef_adamID);
  if (v2)
  {
    v3 = v2;
    v4 = HIBYTE(v2) & 0xF;
    v5 = result & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v8 = sub_1E37801A4(result, v3, 10);
        v24 = v25;
LABEL_71:

        if ((v24 & 1) == 0)
        {
          return sub_1E3897544(v26, v8);
        }

        return result;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        v26[0] = result;
        v26[1] = v3 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v4)
          {
            if (v4 != 1)
            {
              OUTLINED_FUNCTION_42_26();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v10 & v9)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_95();
                if (!v10)
                {
                  break;
                }

                v8 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v10)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_82:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v4)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_0_95();
              if (!v10)
              {
                break;
              }

              v8 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v10)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            OUTLINED_FUNCTION_42_26();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_0_95();
              if (!v10)
              {
                break;
              }

              v8 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v10)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1E4207524();
        }

        v7 = *result;
        if (v7 == 43)
        {
          if (v5 >= 1)
          {
            if (v5 != 1)
            {
              v8 = 0;
              if (result)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_1_4();
                  if (!v10 & v9)
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_0_95();
                  if (!v10)
                  {
                    goto LABEL_69;
                  }

                  v8 = v17 + v16;
                  if (__OFADD__(v17, v16))
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_132();
                  if (v10)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_69;
          }

          goto LABEL_81;
        }

        if (v7 != 45)
        {
          if (v5)
          {
            v8 = 0;
            if (result)
            {
              while (1)
              {
                v20 = *result - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_69;
                }

                v8 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++result;
                if (!--v5)
                {
                  goto LABEL_60;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_69:
          v8 = 0;
          v13 = 1;
          goto LABEL_70;
        }

        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v10 & v9)
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_0_95();
                if (!v10)
                {
                  goto LABEL_69;
                }

                v8 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_132();
                if (v10)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_60:
            v13 = 0;
LABEL_70:
            v27 = v13;
            v24 = v13;
            goto LABEL_71;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  return result;
}

unint64_t sub_1E39A5300(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1E39A53A0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1E39A5410(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1E39A53A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1E3780B3C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E39A5410(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1E4207524();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

void sub_1E39A551C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E6911D00](a1, a2, v7);
      sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
    if (sub_1E4207364() == *(a4 + 36))
    {
      sub_1E4207374();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1E4206F54();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1E4206F64();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

void type metadata accessor for MPMediaOrderingDirection()
{
  if (!qword_1ECF2FBB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF2FBB0);
    }
  }
}

BOOL sub_1E39A577C()
{
  result = 0;
  if ((sub_1E39A69F8() & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    if (!(*(v1 + 256))())
    {
      return 1;
    }

    OUTLINED_FUNCTION_30();
    v3 = (*(v2 + 1912))();

    if (v3 == 3)
    {
      return 1;
    }

    sub_1E39ABD54(v4, v5, v6);
    if ((sub_1E4205E84() & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E39A5938(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0(v3 + *a2, v9);
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E39A59D8()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth, v3);
  return *v1;
}

uint64_t sub_1E39A5A1C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth;
  result = OUTLINED_FUNCTION_3_0(v5, v7);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E39A5AC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E39A5AF4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout;
  result = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout, v5);
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E39A5B88(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_badgeView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A5BD0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5C4C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_titleImageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A5C94()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E39A5D10(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E39A5D90(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentTitleView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A5DD8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5E54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentSubtitleView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A5E9C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5F18(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_episodeInfoTextView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A5F60()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5FDC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_promoTextView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A6024()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A60A0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_askToBuyPromptView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A60E8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A6164(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_descriptionTextView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A61AC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A6228(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_genresAndProviderTagsView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A6270()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A62EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_metadataAndBadgesTagsView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E39A6334(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_29_31(a1, a2, a3, a4, a5, a6, a7, a8, v15);
  v12 = *&v9[v11];
  *&v9[v11] = v10;
  v13 = *v8;
  v14 = v10;
  OUTLINED_FUNCTION_5_0(&v9[v13], v16);
  [v9 vui:*&v9[v13] addSubview:v12 oldView:?];
  [v9 vui_setNeedsLayout];
}

uint64_t sub_1E39A63BC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E39A6444(uint64_t a1)
{
  v7 = &qword_1ECF2F000;
  v8 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews], v53);
  v9 = *&v1[v8];
  v52 = v1;
  *&v1[v8] = a1;
  if (v9)
  {
    v10 = sub_1E32AE9B0(v9);
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10 == v11)
      {
        v7 = &qword_1ECF2F000;
        goto LABEL_16;
      }

      if (v12)
      {
        v15 = v9;
        v16 = MEMORY[0x1E6911E60](v11, v9);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_33;
        }

        v15 = v9;
        v16 = *(v9 + 8 * v11 + 32);
      }

      v17 = v16;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v16 frame];
      OUTLINED_FUNCTION_3();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_27();
        v14 = sub_1E39ABB54(v21, v22, v23, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1E39ABB54((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[32 * v19];
      *(v20 + 4) = v2;
      *(v20 + 5) = v3;
      *(v20 + 6) = v4;
      *(v20 + 7) = v5;
      [v17 removeFromSuperview];

      ++v11;
      v9 = v15;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v24 = v7[392];
    OUTLINED_FUNCTION_5_0(&v52[v24], v54);
    v25 = *&v52[v24];
    if (v25)
    {
      v49 = v9;
      v26 = sub_1E32AE9B0(v25);
      v27 = v25 & 0xC000000000000001;
      v28 = v25 & 0xFFFFFFFFFFFFFF8;

      v29 = 0;
      v30 = (v14 + 56);
      v31 = 0.0;
      v32 = &selRef_textLayout;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      v50 = v25 & 0xFFFFFFFFFFFFFF8;
      v51 = v25;
      while (v26 != v29)
      {
        if (v27)
        {
          v36 = MEMORY[0x1E6911E60](v29, v25);
        }

        else
        {
          if (v29 >= *(v28 + 16))
          {
            goto LABEL_35;
          }

          v36 = *(v25 + 8 * v29 + 32);
        }

        v37 = v36;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_34;
        }

        [v36 frame];
        OUTLINED_FUNCTION_16_50();
        v57.size.width = 0.0;
        v57.size.height = 0.0;
        if (CGRectEqualToRect(v55, v57))
        {
          v38 = v26;
          v39 = v27;
          v40 = v32;
          if (v29 >= *(v14 + 2))
          {
            v56.origin.x = v31;
            v56.origin.y = v33;
            v56.size.width = v34;
            v56.size.height = v35;
            MaxY = CGRectGetMaxY(v56);
            [v37 frame];
            v43 = &selRef_setDelayContentsChangeOperation_;
            [v37 setFrame_];
            [v37 frame];
          }

          else
          {
            v41 = *(v30 - 3);
            v42 = *(v30 - 2);
            v34 = *(v30 - 1);
            v35 = *v30;
            v43 = &selRef_setDelayContentsChangeOperation_;
          }

          [v37 v43[228]];
          v32 = v40;
          v27 = v39;
          v26 = v38;
          v28 = v50;
          v25 = v51;
        }

        [v37 frame];
        v31 = v45;
        v33 = v46;
        v34 = v47;
        v35 = v48;
        [v52 v32[466]];

        ++v29;
        v30 += 4;
      }
    }

    [v52 vui_setNeedsLayout];
  }
}

uint64_t sub_1E39A67A4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E39A680C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E39A6444(v4);
  }

  else
  {
    sub_1E39A6444(v3);
  }

  free(v2);
}

void *sub_1E39A6870(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_disclaimerTextView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A68B8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A6934(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_availabilityTextView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E39A697C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E39A69F8()
{
  OUTLINED_FUNCTION_21();
  v2 = COERCE_DOUBLE((*(v1 + 304))());
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  v5 = [v0 vuiTraitCollection];
  v6 = sub_1E39A6A94(v5, v4);

  return v6 & 1;
}

uint64_t sub_1E39A6A94(void *a1, double a2)
{
  v3 = [a1 isAXEnabled];
  type metadata accessor for BannerUberBackgroundViewLayout();
  return (sub_1E3DF1808(a2) | v3) & 1;
}

void sub_1E39A6B8C()
{
  OUTLINED_FUNCTION_41_5();
  v461 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v452 = &v402 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v402 - v11;
  type metadata accessor for CGSize(0);
  v430 = v13;
  v492 = v13;
  *v491 = v6;
  v491[1] = v4;
  v14 = sub_1E3294FA4(v491);
  v16 = v15;
  v492 = MEMORY[0x1E69E6370];
  v454 = v2;
  LOBYTE(v491[0]) = v2;
  v17 = sub_1E3294FA4(v491);
  v19 = v18;
  v20 = sub_1E324FBDC();
  v21 = *(v8 + 16);
  v450 = v20;
  v451 = v8 + 16;
  v449 = v21;
  (v21)(v12);

  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  v24 = os_log_type_enabled(v22, v23);
  v456 = v8;
  v457 = v7;
  if (v24)
  {
    v25 = v17;
    v26 = swift_slowAlloc();
    v491[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = sub_1E3270FC8(v14, v16, v491);

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    v28 = sub_1E3270FC8(v25, v19, v491);

    *(v26 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v22, v23, "CanonicalBannerInfoView:: vuiLayoutSubviews: %s, computationOnly: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v453 = *(v456 + 8);
    v453(v12, v457);
  }

  else
  {

    v453 = *(v8 + 8);
    v453(v12, v7);
  }

  v479 = v6;
  v480 = 0;
  v477 = 0u;
  v478 = 0u;
  v475 = 0u;
  v476 = 0u;
  v474 = MEMORY[0x1E69E7CC0];
  v472 = 0u;
  v473 = 0u;
  v470 = 0u;
  v471 = 0u;
  v29 = v461;
  v464 = [v461 vuiIsRTL];
  v469 = 0;
  v468 = 0.0;
  if (sub_1E39A69F8())
  {
    v30 = [v29 vuiTraitCollection];
    v22 = [v30 isAXLargeEnabled];

    LODWORD(v463) = v22 ^ 1;
  }

  else
  {
    LODWORD(v463) = 0;
  }

  v31 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v32 += 44;
  v33 = *v32;
  v444 = v32;
  v445 = v33;
  v34 = v33();
  v35 = v34;
  v36 = v34 == 0;
  v446 = 0.0;
  if (v34)
  {
    v37 = (*((*v31 & *v29) + 0x100))([v34 vui:v6 sizeThatFits:1.79769313e308]);
    if (!v37 || (v22 = v37, OUTLINED_FUNCTION_26_0(), v39 = (*(v38 + 2536))(), , !v39) || (OUTLINED_FUNCTION_8(), (*(v40 + 152))(v481), v41 = *v481, v42 = *&v481[2], , (v482 & 1) != 0))
    {
      v41 = *MEMORY[0x1E69DDCE0];
      v42 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    VUIRoundValue();
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    v43.n128_f64[0] = OUTLINED_FUNCTION_12_59();
    OUTLINED_FUNCTION_47_18(v43, v44, v45, v46);
    v442 = v48;
    v443 = v47;
    v440 = v50;
    v441 = v49;
    v494.origin.x = OUTLINED_FUNCTION_12_59();
    CGRectGetMaxY(v494);
    VUIRoundValue();
    v52 = v51;

    v469 = v52;
    v53 = v41;
    v468 = v42;
  }

  else
  {
    v53 = 0.0;
    v442 = 0.0;
    v443 = 0.0;
    v440 = 0.0;
    v441 = 0.0;
  }

  OUTLINED_FUNCTION_8_9();
  v54 += 53;
  v55 = *v54;
  v438 = v54;
  v439 = v55;
  v56 = v55();
  v460 = v4;
  if (v56)
  {
    v22 = v56;
    OUTLINED_FUNCTION_8_9();
    v57 += 32;
    v58 = *v57;
    if ((*v57)())
    {
      OUTLINED_FUNCTION_30();
      v60 = (*(v59 + 1984))();

      *&v62 = COERCE_DOUBLE((*(*v60 + 248))(v61));
      v64 = v63;

      if (v64)
      {
        v65 = OUTLINED_FUNCTION_63_12();
      }

      else
      {
        v65 = *&v62;
      }

      v31 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v65 = OUTLINED_FUNCTION_63_12();
    }

    if (v65 >= v6)
    {
      v66 = v6;
    }

    else
    {
      v66 = v65;
    }

    v67 = v22;
    sub_1E3C8B764(0, v66, 0.0);
    v69 = v68;

    if (!v58() || (OUTLINED_FUNCTION_30(), (*(v70 + 1984))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), (*(v71 + 152))(v483), v72 = *v483, v73 = *&v483[2], , (v484 & 1) != 0))
    {
      v72 = *MEMORY[0x1E69DDCE0];
      v73 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    VUIRoundValue();
    OUTLINED_FUNCTION_55_1(v6 - v69);
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    v74.n128_f64[0] = OUTLINED_FUNCTION_12_59();
    OUTLINED_FUNCTION_46_20(v74, v75, v76, v77);
    v446 = v78;
    v424 = v80;
    v425 = v79;
    v423 = v81;
    v495.origin.x = OUTLINED_FUNCTION_12_59();
    CGRectGetMaxY(v495);
    VUIRoundValue();
    v83 = v82;

    v36 = 0;
    v469 = v83;
    if (!v35)
    {
      v53 = v72;
    }

    v468 = v73;
  }

  else
  {
    v424 = 0;
    v425 = 0;
    v423 = 0;
  }

  v84 = v461;
  OUTLINED_FUNCTION_0_96();
  v85 += 56;
  v86 = *v85;
  v436 = v85;
  v437 = v86;
  v87 = v86();
  if (v87)
  {
    v88 = v87;
    OUTLINED_FUNCTION_0_96();
    v89 += 32;
    v90 = *v89;
    if (!(*v89)() || (OUTLINED_FUNCTION_30(), (*(v91 + 2056))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), (*(v92 + 152))(v485), v93 = *v485, v94 = *&v485[2], , (v486 & 1) != 0))
    {
      v93 = *MEMORY[0x1E69DDCE0];
      v94 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v95 = VUIRoundValue();
    v97 = v96;
    if ((v90)(v95) && (OUTLINED_FUNCTION_30(), (*(v98 + 2056))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), *&v100 = COERCE_DOUBLE((*(v99 + 248))()), v102 = v101, , (v102 & 1) == 0))
    {
      v103 = *&v100;
    }

    else
    {
      v103 = OUTLINED_FUNCTION_63_12();
    }

    if (v103 >= v6)
    {
      v103 = v6;
    }

    [v88 sizeThatFits_];
    v105 = v104;
    v107 = v106;
    OUTLINED_FUNCTION_16_50();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v421 = v109;
    v422 = v108;
    v419 = v111;
    v420 = v110;
    v496.origin.x = 0.0;
    v496.origin.y = v97;
    v496.size.width = v105;
    v496.size.height = v107;
    CGRectGetMaxY(v496);
    VUIRoundValue();
    v113 = v112;

    v469 = v113;
    if (v36)
    {
      v53 = v93;
    }

    v468 = v94;
    v36 = 0;
    v31 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v421 = 0;
    v422 = 0;
    v419 = 0;
    v420 = 0;
  }

  OUTLINED_FUNCTION_0_96();
  v114 += 47;
  v115 = *v114;
  v434 = v114;
  v435 = v115;
  v116 = v115();
  if (v116 && (v116, OUTLINED_FUNCTION_0_96(), ((*(v117 + 328))() & 1) != 0))
  {
    OUTLINED_FUNCTION_0_96();
    if ((*(v118 + 256))())
    {
      OUTLINED_FUNCTION_26_0();
      v120 = (*(v119 + 1936))();

      OUTLINED_FUNCTION_8();
      v122 = *(v121 + 248);

      *&v124 = COERCE_DOUBLE(v122(v123));
      v126 = v125;

      v127 = *&v124;
      if (v126)
      {
        v127 = 1.79769313e308;
      }

      if (v127 >= v6)
      {
        v127 = v6;
      }

      v128 = v127;
      v129 = *(*v120 + 256);

      v129(*&v128, 0);

      OUTLINED_FUNCTION_8();
      v131 = *(v130 + 152);

      v131(v487, v132);

      v22 = *(*v120 + 2288);

      (v22)(v133);
    }

    v418 = 0;
    VUIRoundValue();
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_50_14();
    OUTLINED_FUNCTION_46_20(v157, v158, v159, v160);
    v417 = v161;
    v412 = v163;
    v413 = v162;
    v411 = v164;
    OUTLINED_FUNCTION_50_14();
    CGRectGetMaxY(v498);
    VUIRoundValue();

    v415 = OUTLINED_FUNCTION_31_30();
    v416 = v415;
    v414 = v415;
  }

  else
  {
    OUTLINED_FUNCTION_0_96();
    v135 = (*(v134 + 400))();
    if (!v135)
    {
      v417 = 0;
      v418 = 0;
      v415 = 0;
      v416 = 0;
      v413 = 0;
      v414 = 0;
      v411 = 0;
      v412 = 0;
      goto LABEL_68;
    }

    v136 = v135;
    OUTLINED_FUNCTION_0_96();
    v137 += 32;
    v138 = *v137;
    v139 = (*v137)();
    if (v139)
    {
      OUTLINED_FUNCTION_30();
      (*(v140 + 1960))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v141 + 152))(v487);
    }

    if ((v138)(v139) && (OUTLINED_FUNCTION_30(), (*(v142 + 1960))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), *&v144 = COERCE_DOUBLE((*(v143 + 248))()), v146 = v145, , (v146 & 1) == 0))
    {
      v147 = *&v144;
    }

    else
    {
      v147 = OUTLINED_FUNCTION_63_12();
    }

    if (v147 >= v6)
    {
      v147 = v6;
    }

    [v136 sizeThatFits_];
    v31 = MEMORY[0x1E69E7D40];
    if (v463)
    {
      OUTLINED_FUNCTION_55_1(v6 - v148);
    }

    VUIRoundValue();
    VUICeilValue();
    v417 = 0;
    OUTLINED_FUNCTION_16_50();
    v149.n128_f64[0] = OUTLINED_FUNCTION_60_10();
    OUTLINED_FUNCTION_46_20(v149, v150, v151, v152);
    v418 = v153;
    v415 = v155;
    v416 = v154;
    v414 = v156;
    v497.origin.x = OUTLINED_FUNCTION_60_10();
    CGRectGetMaxY(v497);
    VUIRoundValue();

    v412 = OUTLINED_FUNCTION_31_30();
    v413 = v412;
    v411 = v412;
  }

  v36 = 0;
LABEL_68:
  OUTLINED_FUNCTION_0_96();
  v165 += 68;
  v166 = *v165;
  v432 = v165;
  v433 = v166;
  v167 = v166();
  if (v167)
  {
    v168 = v167;
    if ((*((*v31 & *v84) + 0x100))([v167 vui:v6 sizeThatFits:0.0]))
    {
      OUTLINED_FUNCTION_30();
      (*(v169 + 2368))();
      OUTLINED_FUNCTION_30_6();
      [v22 margin];
      v171 = v170;
      v173 = v172;
    }

    else
    {
      v171 = *MEMORY[0x1E69DDCE0];
      v173 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    VUIRoundValue();
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_54_13();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v409 = v175;
    v410 = v174;
    v407 = v177;
    v408 = v176;
    v499.origin.x = OUTLINED_FUNCTION_54_13();
    CGRectGetMaxY(v499);
    VUIRoundValue();
    v179 = v178;

    v469 = v179;
    if (v36)
    {
      v53 = v171;
    }

    v468 = v173;
    v36 = 0;
  }

  else
  {
    v409 = 0;
    v410 = 0;
    v407 = 0;
    v408 = 0;
  }

  OUTLINED_FUNCTION_0_96();
  v180 += 77;
  v181 = *v180;
  v428 = v180;
  v429 = v181;
  v182 = v181();
  if (!v182)
  {
    v462 = 0.0;
    v455 = 1;
    goto LABEL_91;
  }

  v183 = v182;
  v184 = v36;
  OUTLINED_FUNCTION_0_96();
  v186 = *(v185 + 256);
  v187 = v183;
  if (v186())
  {
    OUTLINED_FUNCTION_30();
    v189 = (*(v188 + 2152))();
  }

  else
  {
    v189 = 0;
  }

  v462 = COERCE_DOUBLE(sub_1E39A90FC(v183, v189));
  v191 = v190;

  objc_opt_self();
  v192 = swift_dynamicCastObjCClass();
  v455 = (v192 != 0) | v191;
  if (!v192)
  {
    goto LABEL_89;
  }

  v31 = MEMORY[0x1E69E7D40];
  if ((v191 & 1) == 0)
  {
    v193 = v192;
    if (v462 > v6)
    {
      [v192 setNumberOfLines_];
      v455 = 0;
      goto LABEL_90;
    }

    v194 = v187;
    if (v186())
    {
      OUTLINED_FUNCTION_30();
      v196 = (*(v195 + 2152))();
    }

    else
    {
      v196 = 0;
    }

    sub_1E39A8FB0(v196);
    v198 = v197;

    [v193 setNumberOfLines_];

    v455 = 0;
LABEL_89:
    v31 = MEMORY[0x1E69E7D40];
  }

LABEL_90:

  v84 = v461;
  v36 = v184;
LABEL_91:
  OUTLINED_FUNCTION_0_96();
  v199 += 80;
  v200 = *v199;
  v426 = v199;
  v427 = v200;
  v201 = v200();
  v458 = v53;
  v459 = v36;
  if (v201)
  {
    v202 = v201;
    OUTLINED_FUNCTION_8_9();
    v204 = *(v203 + 256);
    v205 = v202;
    if (v204())
    {
      OUTLINED_FUNCTION_30();
      v207 = (*(v206 + 2176))();
    }

    else
    {
      v207 = 0;
    }

    v208 = COERCE_DOUBLE(sub_1E39A90FC(v202, v207));
    v210 = v209;

    objc_opt_self();
    v211 = swift_dynamicCastObjCClass();
    if (v211)
    {
      v31 = MEMORY[0x1E69E7D40];
      if (v210)
      {
LABEL_105:

        v84 = v461;
        goto LABEL_106;
      }

      v212 = v211;
      if (v208 > v6)
      {
        [v211 setNumberOfLines_];
        goto LABEL_105;
      }

      v213 = v205;
      if (v204())
      {
        OUTLINED_FUNCTION_30();
        v215 = (*(v214 + 2176))();
      }

      else
      {
        v215 = 0;
      }

      sub_1E39A8FB0(v215);
      v217 = v216;

      [v212 setNumberOfLines_];
    }

    v31 = MEMORY[0x1E69E7D40];
    goto LABEL_105;
  }

LABEL_106:
  if (!sub_1E39A577C())
  {
    OUTLINED_FUNCTION_43_20();
    v218 = v463;
    sub_1E39A8C28(v219, v220, v221, v463, v222, v223, v224, v225, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
    OUTLINED_FUNCTION_42_27();
    sub_1E39A8DEC(v226, v227, v228, v229, v230, v231, v232, v233, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
    OUTLINED_FUNCTION_19_49();
    sub_1E39A979C(v218, v234, v235, v236, v237, v238, *&v462, v239, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423);
  }

  OUTLINED_FUNCTION_0_96();
  v240 += 65;
  v241 = *v240;
  v447 = v240;
  v448 = v241;
  v242 = v241();
  if (!v242)
  {
    v254 = 0.0;
    v255 = 0;
    v256 = 0;
    v431 = 0.0;
    goto LABEL_138;
  }

  v243 = v242;
  OUTLINED_FUNCTION_0_96();
  if ((*(v244 + 256))())
  {
    OUTLINED_FUNCTION_30();
    v246 = (*(v245 + 2224))();

    OUTLINED_FUNCTION_30_1();
    v248 = *(v247 + 248);

    *&v250 = COERCE_DOUBLE(v248(v249));
    v252 = v251;

    if ((v252 & 1) == 0)
    {
      v253 = *&v250;
      goto LABEL_115;
    }
  }

  else
  {
    v246 = 0;
  }

  v253 = 1.79769313e308;
LABEL_115:
  if (sub_1E39A69F8())
  {
    v253 = 1.79769313e308;
  }

  OUTLINED_FUNCTION_15_57();
  if ((*(v257 + 328))())
  {
    v258 = v253;
  }

  else
  {
    v258 = 1.79769313e308;
  }

  if (v258 <= v6)
  {
    v259 = v258;
  }

  else
  {
    v259 = v6;
  }

  [v243 vui:v259 sizeThatFits:0.0];
  if (v246)
  {
    OUTLINED_FUNCTION_30_1();
    v261 = *(v260 + 152);

    v261(v488, v262);
  }

  VUIRoundValue();
  VUICeilValue();
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_47_18(v263, v264, v265, v266);
  v254 = v267;
  v255 = v268;
  v256 = v269;
  v431 = v270;
  OUTLINED_FUNCTION_50_14();
  CGRectGetMaxY(v500);
  VUIRoundValue();
  v469 = v271;
  if (v459)
  {
    if (v246)
    {
      OUTLINED_FUNCTION_30_1();
      (*(v272 + 152))(v489);
      v273 = v489[0];
      if (v490)
      {
        v273 = 0.0;
      }

      v458 = v273;
      goto LABEL_131;
    }

    v458 = 0.0;
  }

  else
  {
    if (v246)
    {
LABEL_131:
      OUTLINED_FUNCTION_30_1();
      v275 = *(v274 + 152);

      v275(v491, v276);

      if (v493)
      {
        v277 = 0.0;
      }

      else
      {
        v277 = *&v491[2];
      }

      goto LABEL_137;
    }
  }

  v277 = 0.0;
LABEL_137:
  v459 = 0;
  v468 = v277;
  v31 = MEMORY[0x1E69E7D40];
LABEL_138:
  OUTLINED_FUNCTION_8_9();
  v278 = v31;
  v279 += 71;
  v280 = *v279;
  v281 = (*v279)();
  if (v281)
  {
    v282 = v281;
    v402 = v256;
    v403 = v255;
    v283 = v254;
    v284 = [v281 vui:v6 sizeThatFits:0.0];
    v286 = v285;
    if ((*((*v278 & *v84) + 0x100))(v284))
    {
      OUTLINED_FUNCTION_30();
      v288 = (*(v287 + 2344))();

      [v288 margin];
      v290 = v289;
      v292 = v291;
    }

    else
    {
      v290 = *MEMORY[0x1E69DDCE0];
      v292 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v294 = v454;
    VUIRoundValue();
    v296 = v295;
    VUICeilValue();
    v298 = v297;
    OUTLINED_FUNCTION_16_50();
    v299.n128_f64[0] = v296;
    v300.n128_f64[0] = v286;
    v301.n128_f64[0] = v298;
    OUTLINED_FUNCTION_47_18(v302, v299, v300, v301);
    v405 = v304;
    v406 = v303;
    v293 = v305;
    v404 = v306;
    v501.origin.x = 0.0;
    v501.origin.y = v296;
    v501.size.width = v286;
    v501.size.height = v298;
    CGRectGetMaxY(v501);
    VUIRoundValue();
    v308 = v307;

    v469 = v308;
    v309 = v458;
    if (v459)
    {
      v309 = v290;
    }

    v458 = v309;
    v468 = v292;
    v459 = 0;
    v254 = v283;
    v256 = v402;
    v255 = v403;
  }

  else
  {
    v405 = 0;
    v406 = 0;
    v293 = 0.0;
    v404 = 0;
    v294 = v454;
  }

  if (sub_1E39A577C())
  {
    OUTLINED_FUNCTION_43_20();
    v310 = v463;
    sub_1E39A8C28(v311, v312, v313, v463, v314, v315, v316, v317, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    OUTLINED_FUNCTION_42_27();
    sub_1E39A8DEC(v318, v319, v320, v321, v322, v323, v324, v325, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427);
    OUTLINED_FUNCTION_19_49();
    sub_1E39A979C(v310, v326, v327, v328, v329, v330, *&v462, v331, v404, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425);
  }

  v332 = v469;
  v333 = v457;
  if (v294)
  {
    goto LABEL_188;
  }

  v334 = v445();
  [v334 setFrame_];

  if (v439())
  {
    OUTLINED_FUNCTION_26_6();
    [v335 v336];
  }

  if (v437())
  {
    OUTLINED_FUNCTION_26_6();
    [v337 v338];
  }

  if (v435())
  {
    OUTLINED_FUNCTION_26_6();
    [v339 v340];
  }

  OUTLINED_FUNCTION_15_57();
  if ((*(v341 + 400))())
  {
    OUTLINED_FUNCTION_26_6();
    [v342 v343];
  }

  if (v433())
  {
    OUTLINED_FUNCTION_26_6();
    [v344 v345];
  }

  if (v280())
  {
    OUTLINED_FUNCTION_26_6();
    [v346 v347];
  }

  v448();
  OUTLINED_FUNCTION_26_6();
  [v348 v349];

  v350 = (*((*MEMORY[0x1E69E7D40] & *v84) + 0x1D8))();
  if (v350)
  {
    v351 = v350;
    [v350 setFrame_];
  }

  OUTLINED_FUNCTION_15_57();
  v353 = (*(v352 + 496))();
  if (v353)
  {
    v354 = v353;
    [v353 setFrame_];
  }

  OUTLINED_FUNCTION_15_57();
  v356 = (*(v355 + 592))();
  if (!v356)
  {
LABEL_175:
    v367 = v429();
    if (v367)
    {
      v368 = v367;
      OUTLINED_FUNCTION_53_18();
      OUTLINED_FUNCTION_16_50();
      [v368 setFrame_];
    }

    v373 = v427();
    if (v373)
    {
      v374 = v373;
      OUTLINED_FUNCTION_52_15();
      OUTLINED_FUNCTION_16_50();
      [v374 setFrame_];
    }

    v379 = (v448)();
    if (v379)
    {
      v380 = v379;
      objc_opt_self();
      v381 = swift_dynamicCastObjCClass();
      if (v381)
      {
        v382 = v381;
        OUTLINED_FUNCTION_15_57();
        if (*(v383 + 256))() && (OUTLINED_FUNCTION_30(), v385 = (*(v384 + 1912))(), v386 = , v385 != 3) && (LOBYTE(v467[0]) = v385, LOBYTE(v465) = 2, sub_1E39ABD54(v386, v387, v388), (sub_1E4205E84()))
        {
          v389 = 1;
        }

        else
        {
          v390 = [v84 vuiTraitCollection];
          v389 = [v390 isAXEnabled];
        }

        [v382 setShowMoreForTruncation_];
      }
    }

LABEL_188:
    v391 = v452;
    v449(v452, v450, v333);
    v392 = v479;
    v393 = sub_1E41FFC94();
    v394 = sub_1E4206814();
    if (os_log_type_enabled(v393, v394))
    {
      v395 = swift_slowAlloc();
      v396 = swift_slowAlloc();
      v465 = v396;
      *v395 = 136315138;
      v467[3] = v430;
      *v467 = v392;
      v467[1] = v332;
      v397 = sub_1E3294FA4(v467);
      v399 = sub_1E3270FC8(v397, v398, &v465);

      *(v395 + 4) = v399;
      _os_log_impl(&dword_1E323F000, v393, v394, "CanonicalBannerInfoView:: preferredSize: %s", v395, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v396);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v400 = v391;
      v401 = v457;
    }

    else
    {

      v400 = v391;
      v401 = v333;
    }

    v453(v400, v401);
    if (sub_1E39A577C())
    {
      v502.origin.x = OUTLINED_FUNCTION_53_18();
      CGRectGetMaxY(v502);
      v503.origin.x = OUTLINED_FUNCTION_52_15();
      CGRectGetMaxY(v503);
    }

    OUTLINED_FUNCTION_42();
    return;
  }

  v357 = v356;
  v358 = sub_1E32AE9B0(v356);
  v359 = 0;
  *&v462 = v357 & 0xFFFFFFFFFFFFFF8;
  v463 = v357 & 0xC000000000000001;
  v360 = v474;
  while (1)
  {
    if (v358 == v359)
    {

      v84 = v461;
      v333 = v457;
      goto LABEL_175;
    }

    if (v463)
    {
      v361 = MEMORY[0x1E6911E60](v359, v357);
    }

    else
    {
      if (v359 >= *(*&v462 + 16))
      {
        goto LABEL_195;
      }

      v361 = *(v357 + 8 * v359 + 32);
    }

    v362 = v361;
    if (__OFADD__(v359, 1))
    {
      break;
    }

    v467[5] = v360;
    v465 = v359;
    v466 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C410, &unk_1E42A6E10);
    sub_1E3827828(&unk_1ECF2FC60, &unk_1ECF2C410, &unk_1E42A6E10);
    sub_1E38D2054(&v465, v467);
    OUTLINED_FUNCTION_16_50();
    [v362 setFrame_];

    ++v359;
  }

  __break(1u);
LABEL_195:
  __break(1u);
}

void sub_1E39A8C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_69_9();
  a31 = v36;
  a32 = v39;
  OUTLINED_FUNCTION_24_32();
  v40 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v42 = (*(v41 + 472))();
  if (v42)
  {
    v43 = v42;
    [v33 vuiIsRTL];
    if (!(*((*v40 & *v33) + 0x100))([v43 sizeThatFits_]) || (OUTLINED_FUNCTION_30(), v45 = (*(v44 + 2080))(), v46 = , (*(*v45 + 152))(&a10, v46), v47 = a12, , (a14 & 1) != 0))
    {
      v47 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_36_24(v48, v49, v50, v51);
    *v35 = v54;
    CGRectGetMaxY(v54);
    VUIRoundValue();
    v53 = v52;

    *v34 = v53;
    *v32 = v47;
  }

  OUTLINED_FUNCTION_68_8();
}

void sub_1E39A8DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_69_9();
  a31 = v36;
  a32 = v39;
  OUTLINED_FUNCTION_24_32();
  v40 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v42 = (*(v41 + 496))();
  if (v42)
  {
    v43 = v42;
    [v33 vuiIsRTL];
    [v43 sizeThatFits_];
    sub_1E39A69F8();
    if (!(*((*v40 & *v33) + 0x100))() || (OUTLINED_FUNCTION_30(), v45 = (*(v44 + 2104))(), v46 = , (*(*v45 + 152))(&a10, v46), v47 = a12, , (a14 & 1) != 0))
    {
      v47 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_36_24(v48, v49, v50, v51);
    *v35 = v54;
    CGRectGetMaxY(v54);
    VUIRoundValue();
    v53 = v52;

    *v34 = v53;
    *v32 = v47;
  }

  OUTLINED_FUNCTION_68_8();
}

void sub_1E39A8FB0(uint64_t a1)
{
  v2 = v1;
  if (a1 && (OUTLINED_FUNCTION_8(), v5 = (*(v4 + 2048))(), (v6 & 1) == 0))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 vuiTraitCollection];
  v9 = [v8 isAXLargeEnabled];

  if (a1)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_8();
      v11 = (*(v10 + 2096))();
      if ((v12 & 1) == 0)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          return;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }
  }

  v13 = [v2 vuiTraitCollection];
  v14 = [v13 isAXSmallEnabled];

  if (a1 && v14)
  {
    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 2072))();
    if ((v17 & 1) == 0)
    {
      v7 = v16;
    }
  }

  if (v7 < 0)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1E39A90FC(void *a1, uint64_t a2)
{
  if (a1 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = a1;
    sub_1E39A8FB0(a2);
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v9 setNumberOfLines_];
      v14 = v13;
      [v9 sizeToFit];
      [v9 frame];
      OUTLINED_FUNCTION_3();

      v19.origin.x = v2;
      v19.origin.y = v3;
      v19.size.width = v4;
      v19.size.height = v5;
      CGRectGetWidth(v19);
      VUICeilValue();
      v16 = v15;
      [v9 setNumberOfLines_];
      while (v12 < [v9 numberOfLinesRequiredForTextWidth_])
      {
        v16 = v16 + 5.0;
      }

      v17 = v16;
      [v9 setNumberOfLines_];
    }

    else
    {
      v17 = 0.0;
    }
  }

  else
  {
    v17 = 0.0;
  }

  return *&v17;
}

uint64_t sub_1E39A926C()
{
  v12 = 2;
  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 776))(v13, &v12, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v13[3])
  {
    sub_1E329505C(v13);
    return 0;
  }

  if (!OUTLINED_FUNCTION_13_14(v2, v3, v4, MEMORY[0x1E69E6370], v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], v12, v13[0]) || (v12 & 1) == 0)
  {
    return 0;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x268))();
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1E39A9364()
{
  v12 = 3;
  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 776))(v13, &v12, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v13[3])
  {
    sub_1E329505C(v13);
    return 0;
  }

  if (!OUTLINED_FUNCTION_13_14(v2, v3, v4, MEMORY[0x1E69E6370], v5, v6, v7, v8, v10, *v11, *&v11[4], v11[6], v12, v13[0]) || (v12 & 1) == 0)
  {
    return 0;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x280))();
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_1E39A945C()
{
  OUTLINED_FUNCTION_44_24();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v7 = (*(v6 + 616))();
  if (v7)
  {
    v8 = v7;
    [v7 vui:v4 sizeThatFits:0.0];
    v10 = v9;
    v12 = v11;
    v13 = [v1 vuiTraitCollection];
    v14 = [v13 isAXLargeEnabled];

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v4;
    }

    *(v0 + 16) = v15;
    *(v0 + 24) = v12;
    if ((*((*v5 & *v1) + 0x100))())
    {
      OUTLINED_FUNCTION_30();
      (*(v16 + 2152))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v17 + 152))(v27);

      OUTLINED_FUNCTION_56_15(v18, v19, v20, v21, v22, v23, v24, v25, v26, *v27);
    }

    else
    {
    }

    *v0 = v2;
    *(v0 + 8) = v3 + 0.0;
  }
}

void sub_1E39A95FC()
{
  OUTLINED_FUNCTION_44_24();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v7 = (*(v6 + 640))();
  if (v7)
  {
    v8 = v7;
    [v7 vui:v4 sizeThatFits:0.0];
    v10 = v9;
    v12 = v11;
    v13 = [v1 vuiTraitCollection];
    v14 = [v13 isAXLargeEnabled];

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v4;
    }

    *(v0 + 16) = v15;
    *(v0 + 24) = v12;
    if ((*((*v5 & *v1) + 0x100))())
    {
      OUTLINED_FUNCTION_30();
      (*(v16 + 2176))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v17 + 152))(v27);

      OUTLINED_FUNCTION_56_15(v18, v19, v20, v21, v22, v23, v24, v25, v26, *v27);
    }

    else
    {
    }

    *v0 = v2;
    *(v0 + 8) = v3 + 0.0;
  }
}

void sub_1E39A979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  OUTLINED_FUNCTION_41_5();
  LODWORD(v457) = v31;
  v33 = v32;
  v431 = v34;
  v36 = v35;
  v38 = v37;
  v443 = v39;
  v454 = v40;
  v42 = v41;
  HIDWORD(v436) = v43;
  v45 = v44;
  v47 = v46;
  v48 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  *&v460 = COERCE_DOUBLE((*(v49 + 592))());
  if (*&v460 == 0.0)
  {
    goto LABEL_351;
  }

  v432 = v38;
  v433 = v36;
  v50 = [v30 vuiTraitCollection];
  v458 = [v50 isAXEnabled];

  v420 = *((*v48 & *v30) + 0x100);
  v421 = (*v48 & *v30) + 256;
  if (!v420())
  {
    v429 = 0;
    v55 = 0.0;
LABEL_9:
    v57 = *MEMORY[0x1E69DDCE0];
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_30();
  v52 = (*(v51 + 2248))();

  v53 = *(*v52 + 152);

  v53(v475, v54);

  if (v476)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *&v475[1];
  }

  v53(v477, v56);
  v57 = v477[0];
  v429 = v52;

  if (v478)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v57 < v45)
  {
    *&v58 = v45;
  }

  else
  {
    *&v58 = v57;
  }

  v59 = *v454;
  v422 = v58;
  v60 = VUIRoundValue();
  v62 = v61;
  rect = *((*v48 & *v30) + 0x118);
  rect_8 = (*v48 & *v30) + 280;
  v63 = (*&rect)(v60);
  v64 = 0.0;
  v462 = v30;
  if (v63)
  {
    v65 = v63;
    rect_24 = v33;
    v66 = sub_1E32AE9B0(v63);
    for (i = 0; ; ++i)
    {
      if (v66 == i)
      {

        v74 = 1;
        v75 = 1;
        goto LABEL_34;
      }

      if ((v65 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x1E6911E60](i, v65);
        v68 = v69;
      }

      else
      {
        if (i >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_365;
        }

        v68 = *(v65 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_364;
      }

      LOWORD(v480[0]) = *(v68 + 98);
      LOWORD(v479) = 65;
      sub_1E3742F1C(v69, v70, v71);
      sub_1E4206254();
      sub_1E4206254();
      if (v483 == *&v481 && v484 == v482)
      {
        break;
      }

      v73 = sub_1E42079A4();

      if (v73)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    sub_1E3841D9C(v68, v65);
    v77 = v76;
    v79 = v78;

    if ((v79 & 1) != 0 || (v481 = *&v460, v483 = v77, LOBYTE(v484) = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720), sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80, &qword_1E42B7720), v80 = OUTLINED_FUNCTION_10_57(), sub_1E38D2054(v80, v81), (v82 = v480[0]) == 0))
    {

      v75 = 0;
      v74 = 1;
    }

    else
    {
      v74 = v77 > 2;
      [v480[0] vui:v47 sizeThatFits:0.0];
      v64 = v83;

      v75 = 0;
    }
  }

  else
  {
    v74 = 1;
    v75 = 1;
  }

LABEL_34:
  v84 = sub_1E32AE9B0(v460);
  v85 = sub_1E39A69F8();
  if ((v75 & 1) != 0 || (v85 & 1) == 0 || v84 <= 2)
  {
    LODWORD(v438) = 0;
    HIDWORD(v418) = 0;
    v104 = v460;
    OUTLINED_FUNCTION_38_18();
    goto LABEL_123;
  }

  v455 = v84;
  v86 = v62;
  v87 = sub_1E32AE9B0(v460);
  v88 = 0;
  v89.n128_f64[0] = OUTLINED_FUNCTION_38_18();
  v90 = 0.0;
  while (v87 != v88)
  {
    if (rect_24)
    {
      v91 = MEMORY[0x1E6911E60](v88, v460, v89);
    }

    else
    {
      if (v88 >= *(rect_16 + 16))
      {
        goto LABEL_362;
      }

      v91 = *(v460 + 8 * v88 + 32);
    }

    v92 = v91;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_361;
    }

    v93 = (*&rect)();
    if (!v93)
    {
      goto LABEL_68;
    }

    if ((v93 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v88, v93);
    }

    else
    {
      if (v88 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_363;
      }
    }

    v94 = sub_1E39A926C();
    v95 = sub_1E39A9364();
    objc_opt_self();
    v96 = swift_dynamicCastObjCClass();
    if (v96)
    {
      v97 = v96;
      v98 = v92;
      if ([v97 buttonType] == 3)
      {
        [v97 setMinWidth_];
      }
    }

    [v92 vui:v47 sizeThatFits:0.0];
    v100 = v99;
    if ((v94 & 1) != 0 && (LOBYTE(v457) & 1) == 0)
    {
      v101 = *&v451;
LABEL_57:
      if (v100 > v101)
      {
        v101 = v100;
      }

      if (v101 <= v47)
      {
        v100 = v101;
      }

      else
      {
        v100 = v47;
      }

      goto LABEL_62;
    }

    if ((v95 & 1) != 0 && (a30 & 1) == 0)
    {
      v101 = v449;
      goto LABEL_57;
    }

LABEL_62:
    objc_opt_self();
    v102 = swift_dynamicCastObjCClass();
    if (v102)
    {
      v103 = [v102 onlyHasImage];

      if (v103)
      {
        goto LABEL_69;
      }

      if (v90 <= v100)
      {
        v90 = v100;
      }

      ++v88;
    }

    else
    {

LABEL_68:

LABEL_69:
      ++v88;
    }
  }

  if (v87)
  {
    v104 = v460;
    if (v87 < 1)
    {
      goto LABEL_372;
    }

    v105 = 0;
    v106 = MEMORY[0x1E69E7CC0];
    do
    {
      if (rect_24)
      {
        v107 = MEMORY[0x1E6911E60](v105, v460, v89);
      }

      else
      {
        v107 = *(v460 + 8 * v105 + 32);
      }

      v108 = v107;
      objc_opt_self();
      v109 = swift_dynamicCastObjCClass();
      v110 = v90;
      if (v109)
      {
        v111 = v109;
        v110 = v90;
        if ([v109 onlyHasImage])
        {
          [v111 vui:v47 sizeThatFits:0.0];
          v110 = v112;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = OUTLINED_FUNCTION_27();
        v106 = sub_1E39ABC54(v116, v117, v118, v106);
      }

      v114 = *(v106 + 2);
      v113 = *(v106 + 3);
      v115 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        v106 = sub_1E39ABC54((v113 > 1), v114 + 1, 1, v106);
      }

      ++v105;

      *(v106 + 2) = v115;
      *&v106[8 * v114 + 32] = v110;
    }

    while (v87 != v105);
LABEL_89:
    v119 = 0.0;
    v120 = 32;
    do
    {
      if (--v115)
      {
        v119 = v55 + v119 + *&v106[v120];
      }

      else
      {
        v119 = v119 + *&v106[v120];
      }

      v120 += 8;
    }

    while (v115);

    v62 = v86;
    if (v119 > v47)
    {
      if (v87)
      {
        for (j = 0; j != v87; ++j)
        {
          if (rect_24)
          {
            v122 = MEMORY[0x1E6911E60](j, v104);
          }

          else
          {
            v122 = *(v104 + 8 * j + 32);
          }

          v123 = v122;
          objc_opt_self();
          v124 = swift_dynamicCastObjCClass();
          if (v124)
          {
            v125 = v124;
            if ([v124 buttonType] == 3)
            {
              [v125 setMinWidth_];
            }
          }
        }
      }

      goto LABEL_106;
    }

LABEL_107:
    if ((v458 | v74))
    {
LABEL_108:
      LODWORD(v438) = 0;
      HIDWORD(v418) = 0;
    }

    else
    {
      if (v87)
      {
        v126 = 0;
        do
        {
          if (rect_24)
          {
            v127 = MEMORY[0x1E6911E60](v126, v104);
          }

          else
          {
            if (v126 >= *(rect_16 + 16))
            {
              goto LABEL_370;
            }

            v127 = *(v104 + 8 * v126 + 32);
          }

          v128 = v127;
          v129 = v126 + 1;
          if (__OFADD__(v126, 1))
          {
            goto LABEL_366;
          }

          objc_opt_self();
          v130 = swift_dynamicCastObjCClass();
          if (v130)
          {
            v131 = [v130 numberOfLinesRequiredForLabelWithButtonWidth_];

            if (v131 > 1)
            {
              goto LABEL_108;
            }
          }

          else
          {
          }

          ++v126;
        }

        while (v129 != v87);
      }

      LODWORD(v438) = 0;
      HIDWORD(v418) = 1;
    }
  }

  else
  {
    v106 = MEMORY[0x1E69E7CC0];
    v115 = *(MEMORY[0x1E69E7CC0] + 16);
    v104 = v460;
    if (v115)
    {
      goto LABEL_89;
    }

    v62 = v86;
    if (v47 >= 0.0)
    {
      goto LABEL_107;
    }

LABEL_106:
    HIDWORD(v418) = 0;
    LODWORD(v438) = 1;
  }

  v84 = v455;
LABEL_123:
  sub_1E32AE9B0(v104);
  v437 = 0;
  LODWORD(v445) = 0;
  v132 = 0;
  v133 = 0;
  v416 = *&v64;
  v417 = OUTLINED_FUNCTION_55_1(v47 - v64 - (v55 + v55));
  v435 = v84 - 1;
  v135 = __OFSUB__(v84, 1);
  HIDWORD(v428) = v135;
  v136 = v104 + 32;
  v137 = -v134;
  v430 = v47 + v42;
  v440 = 0.0;
  *&v441 = v47;
  MaxX = 0.0;
  v138 = v42;
  *&v419 = v59;
  v456 = MEMORY[0x1E69E7CC0];
  v459 = MEMORY[0x1E69E7CC0];
  v426 = -v134;
  v427 = v104 + 32;
LABEL_127:
  v139 = 0;
  v140 = v136 + 8 * v133;
  v141 = v137 + v133;
  while (1)
  {
    if (!(v141 + v139))
    {
      if ((sub_1E39A69F8() & 1) == 0)
      {
        goto LABEL_346;
      }

      v229 = (*&rect)();
      if (!v229)
      {
        goto LABEL_346;
      }

      v230 = v229;
      v231 = COERCE_DOUBLE(sub_1E39AB6F8(v459));
      LODWORD(v434) = v232;
      *v454 = *&v419;
      v233 = *v443;
      v450 = v230;
      v448 = *(*v443 + 16);
      if (!v448)
      {

        v339 = MEMORY[0x1E69E7CC0];
        v439 = v419;
        goto LABEL_301;
      }

      *&rect_24a = 0.0;
      *&v435 = 0.0;
      *&v234 = 0.0;
      v235 = v456;
      v236 = *(v456 + 2);
      v445 = v230 & 0xC000000000000001;
      v446 = v233 + 32;
      *&v430 = v230 + 32;
      v237 = v456 + 32;
      *&v426 = v231;
      *&v427 = OUTLINED_FUNCTION_55_1(v47 - v231);
      v452 = MEMORY[0x1E69E7CC0];
      HIDWORD(v428) = v437;
      v238 = 0.0;
      LODWORD(v457) = 1;
      v239 = 0.0;
      v240 = 0.0;
      v241 = *&v419;
      v444 = v233;
      while (1)
      {
        sub_1E39ABF00(v234, 1, v233);
        v242 = (v446 + 32 * v234);
        v244 = *v242;
        v243 = v242[1];
        v246 = v242[2];
        v245 = v242[3];
        sub_1E34AF4E4(v234, v445 == 0, v230);
        if (*&v445 == 0.0)
        {
        }

        else
        {
          MEMORY[0x1E6911E60](v234, v230);
        }

        v247 = rect_24a;
        v481 = *&v460;
        v483 = v234;
        LOBYTE(v484) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
        sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80, &qword_1E42B7720);
        v248 = OUTLINED_FUNCTION_10_57();
        sub_1E38D2054(v248, v249);
        v250 = v480[0];
        if (v480[0])
        {
          objc_opt_self();
          v251 = swift_dynamicCastObjCClass();
          if (v251)
          {
            v252 = v251;
            goto LABEL_234;
          }
        }

        v252 = 0;
LABEL_234:
        v253 = (v234 + 1);
        LODWORD(rect_8) = sub_1E39A926C();
        LODWORD(rect) = sub_1E39A9364();
        v254 = 0;
        do
        {
          if (v236 == v254)
          {
            goto LABEL_247;
          }

          if (v254 >= *(v235 + 2))
          {
            __break(1u);
LABEL_354:

            goto LABEL_356;
          }

          v255 = v254 + 1;
          v256 = *&v237[8 * v254++];
        }

        while (v256 < v234);
        v257 = v435 + 1;
        v258 = v238 + v239;
        v259 = LODWORD(v457);
        if (LOBYTE(v457))
        {
          v258 = v239;
        }

        if (v257 != v255)
        {
          v238 = 0.0;
          v259 = 1;
        }

        LODWORD(v457) = v259;
        if (v257 == v255)
        {
          v247 = v435;
        }

        else
        {
          v247 = v255 - 1;
        }

        if (v257 != v255)
        {
          v239 = v258;
          v240 = 0.0;
        }

LABEL_247:
        v480[0] = v459;
        rect_24a = v247;
        v481 = *&v247;
        LOBYTE(v482) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
        sub_1E3827828(&unk_1ECF31EB0, &unk_1ECF2FC90, &unk_1E42A75C0);
        v260 = v480;
        sub_1E38D2054(&v481, &v483);
        if (v484)
        {

          v233 = v444;
          v261 = v234 + 1;
          goto LABEL_296;
        }

        v449 = v238;
        v262 = v241;
        v263 = v240;
        v264 = *&v483;
        v494.origin.x = v244;
        v494.origin.y = v243;
        v494.size.width = v246;
        v494.size.height = v245;
        MinY = CGRectGetMinY(v494);
        v274 = v245;
        v275 = MinY;
        v233 = v444;
        v261 = v234 + 1;
        rect_16a = v246;
        if (v434)
        {
          v276 = v244;
          v277 = v243;
          v278 = v246;
          v279 = v274;
          v280 = (*&v441 - v264) * 0.5 + CGRectGetMinX(*(&v274 - 3));
          v240 = v263;
          v281 = v252;
          v282 = v239;
          goto LABEL_265;
        }

        v279 = v274;
        *&v442 = v239;
        v438 = v262;
        v281 = v252;
        if ((v436 & 0x100000000) == 0)
        {
          v284 = 0.0;
          v283 = v263;
          if (v263 > 0.0)
          {
LABEL_257:
            v280 = v284 + v283 + OUTLINED_FUNCTION_28_31(v265, v266, v267, v268, v269, v270, v271, v272, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v438, *&v440, v441, v442, v443, v444, v445, v446, v448, *&v449, v450, v452, v454, v456, *&v457, v459, v460, v462, *&rect, rect_8, *&rect_16a);
            v262 = v438;
            v282 = *&v442;
            v240 = v283;
            goto LABEL_265;
          }

          v285 = *&v426 - v264;
          v287 = 0.0;
          if (v285 > 0.0)
          {
            goto LABEL_259;
          }

LABEL_255:
          v280 = v287 + OUTLINED_FUNCTION_28_31(v265, v266, v267, v268, v269, v270, v271, v272, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v438, *&v440, v441, v442, v443, v444, v445, v446, v448, *&v449, v450, v452, v454, v456, *&v457, v459, v460, v462, *&rect, rect_8, *&rect_16a);
          goto LABEL_262;
        }

        v283 = v263;
        v284 = *&v427;
        if (v263 > 0.0)
        {
          goto LABEL_257;
        }

        v285 = *&v426 - v264;
        v286 = *&v426 - v264 <= 0.0;
        v287 = *&v427;
        if (v286)
        {
          goto LABEL_255;
        }

LABEL_259:
        if (!v252)
        {
          goto LABEL_264;
        }

        v260 = v252;
        v288 = [v260 onlyHasImage];
        if (!v288)
        {

LABEL_264:
          v495.size.width = rect_16a;
          v495.origin.x = v244;
          v495.origin.y = v243;
          v495.size.height = v279;
          v280 = v287 + CGRectGetMinX(v495);
          rect_16a = rect_16a + v285;
          v435 = rect_24a;
          v240 = v285;
          v262 = v438;
          v282 = *&v442;
          goto LABEL_265;
        }

        v296 = OUTLINED_FUNCTION_28_31(v288, v289, v290, v291, v292, v293, v294, v295, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v438, *&v440, v441, v442, v443, v444, v445, v446, v448, *&v449, v450, v452, v454, v456, *&v457, v459, v460, v462, *&rect, rect_8, *&rect_16a);

        v280 = v287 + v296;
LABEL_262:
        v262 = v438;
        v282 = *&v442;
        v240 = v263;
LABEL_265:
        v239 = v282;
        v297 = v282 + v275;
        if (*&v234 == 0.0)
        {
          v299 = v279;
          if (v437)
          {
            v301 = v452;
            HIDWORD(v428) = 1;
            v300 = rect_16a;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_290;
            }
          }

          else
          {
            v298 = rect_8;
            v260 = LODWORD(rect);
            v300 = rect_16a;
            if ((rect_8 | LODWORD(rect)))
            {
              HIDWORD(v428) = 0;
              goto LABEL_273;
            }

            v301 = v452;
            HIDWORD(v428) = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_290;
            }
          }

LABEL_270:
          v302 = OUTLINED_FUNCTION_27();
          v301 = sub_1E39ABB54(v302, v303, v304, v301);
          goto LABEL_290;
        }

        v298 = rect_8;
        v260 = LODWORD(rect);
        v299 = v279;
        v300 = rect_16a;
        if (((rect_8 | LODWORD(rect)) & 1) == 0)
        {
          v301 = v452;
          goto LABEL_289;
        }

LABEL_273:
        *&rect_8 = v240;
        v496.origin.x = OUTLINED_FUNCTION_33_29();
        v496.size.height = v299;
        MinX = CGRectGetMinX(v496);
        v497.origin.x = OUTLINED_FUNCTION_33_29();
        rect = v299;
        v497.size.height = v299;
        MaxY = CGRectGetMaxY(v497);
        if (v298)
        {
          *&v442 = v239;
          v307 = v300;
          v308 = v262;
          v498.origin.x = OUTLINED_FUNCTION_39_19();
          Height = CGRectGetHeight(v498);
          OUTLINED_FUNCTION_22_33();
          sub_1E39A945C();
          v318 = OUTLINED_FUNCTION_35_25() - Height;
          v438 = v239;
          if ((LOBYTE(v457) & 1) == 0)
          {
            OUTLINED_FUNCTION_70_10(v310, v311, v312, v318, v313, v314, v315, v316, v317, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v239, *&v440, v441, *&v239, v443, v444, v445, v446, v448, *&v449);
            OUTLINED_FUNCTION_58_14();
            max<A>(_:_:)();
            v318 = v481;
          }

          v449 = v318;
          v301 = v452;
          v262 = v308;
          v260 = v462;
          v239 = *&v442;
          v300 = rect_16a;
          if (sub_1E39A577C())
          {
            LODWORD(v457) = 0;
            goto LABEL_288;
          }

LABEL_286:
          v500.origin.x = v307;
          v500.origin.y = v438;
          v500.size.width = MaxY;
          v500.size.height = MinX;
          CGRectGetMaxY(v500);
          VUIRoundValue();
          LODWORD(v457) = 0;
          if (v330 > v262)
          {
            v262 = v330;
          }

LABEL_288:
          v299 = rect;
          v240 = *&rect_8;
        }

        else
        {
          v301 = v452;
          if ((v260 & 1) == 0)
          {
            goto LABEL_288;
          }

          *&v442 = v239;
          v307 = v300;
          v319 = v262;
          v499.origin.x = OUTLINED_FUNCTION_39_19();
          v320 = CGRectGetHeight(v499);
          OUTLINED_FUNCTION_22_33();
          sub_1E39A95FC();
          v329 = OUTLINED_FUNCTION_35_25() - v320;
          if ((LOBYTE(v457) & 1) == 0)
          {
            OUTLINED_FUNCTION_70_10(v321, v322, v323, v329, v324, v325, v326, v327, v328, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v438, *&v440, v441, *&v239, v443, v444, v445, v446, v448, *&v449);
            OUTLINED_FUNCTION_58_14();
            max<A>(_:_:)();
            v329 = v481;
          }

          v449 = v329;
          v260 = v462;
          v262 = v319;
          if (!sub_1E39A577C())
          {
            v438 = v239;
            v239 = *&v442;
            v300 = rect_16a;
            goto LABEL_286;
          }

          LODWORD(v457) = 0;
          v239 = *&v442;
          v299 = rect;
          v240 = *&rect_8;
          v300 = rect_16a;
        }

LABEL_289:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_270;
        }

LABEL_290:
        v331 = *(v301 + 2);
        OUTLINED_FUNCTION_40_27();
        if (v180)
        {
          v336 = OUTLINED_FUNCTION_1_12(v332);
          v301 = sub_1E39ABB54(v336, v337, v338, v301);
        }

        *(v301 + 2) = v260;
        v452 = v301;
        v333 = &v301[32 * v331];
        *(v333 + 4) = v280;
        *(v333 + 5) = v297;
        *(v333 + 6) = v300;
        *(v333 + 7) = v299;
        v501.origin.x = OUTLINED_FUNCTION_33_29();
        v501.size.height = v299;
        CGRectGetMaxY(v501);
        VUIRoundValue();
        v335 = v334;

        if (v335 > v262)
        {
          v241 = v335;
        }

        else
        {
          v241 = v262;
        }

        v235 = v456;
        *v454 = v241;
        v238 = v449;
LABEL_296:
        v234 = v261;
        v230 = v450;
        if (v261 == v448)
        {
          v439 = *&v241;

          LODWORD(v437) = HIDWORD(v428);
          v339 = v452;
LABEL_301:

          *v443 = v339;
          if ((v437 & 0x100000000) != 0)
          {
            v340 = v456;
            if (v437)
            {
              rect_24b = *(v339 + 16);
              if (rect_24b)
              {
                v341 = 0;
                v342 = 0;
                v343 = *(v456 + 2);
                v453 = v339;
                rect_8a = 0;
                rect_16b = v339 + 32;
                v253 = MEMORY[0x1E69E7CC0];
                LODWORD(rect) = 1;
                v344 = 0.0;
                v461 = 0.0;
                v345 = 0.0;
                while (1)
                {
                  if (v341 >= *(v453 + 16))
                  {
                    goto LABEL_367;
                  }

                  v346 = 0;
                  v347 = rect_16b + 32 * v341;
                  v348 = *(v347 + 16);
                  v349 = *(v347 + 24);
                  v350 = v341 + 1;
                  while (v343 != v346)
                  {
                    if (v346 >= *(v340 + 2))
                    {
                      goto LABEL_360;
                    }

                    v351 = v346 + 1;
                    v352 = *&v456[8 * v346++ + 32];
                    if (v352 >= v341)
                    {
                      rect_8a = v351 - 1;
                      if (v342 + 1 == v351)
                      {
                        v353 = v345;
                      }

                      else
                      {
                        v353 = v344;
                      }

                      v354 = 0.0;
                      if (v342 + 1 != v351)
                      {
                        v354 = v345;
                      }

                      if ((LOBYTE(rect) & 1) == 0)
                      {
                        v344 = v353;
                        v345 = v354;
                      }

                      break;
                    }
                  }

                  v474[1] = v230;
                  v472 = v341;
                  v473 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
                  sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
                  sub_1E38D2054(&v472, v474);
                  if (v474[0])
                  {
                    break;
                  }

LABEL_344:
                  ++v341;
                  v230 = v450;
                  if (v350 == rect_24b)
                  {
                    goto LABEL_354;
                  }
                }

                v355 = v345;
                v356 = sub_1E39A926C();
                v357 = sub_1E39A9364();
                v502.origin.x = OUTLINED_FUNCTION_2_79();
                v358 = CGRectGetMinX(v502);
                v503.origin.x = OUTLINED_FUNCTION_2_79();
                v359 = CGRectGetMinY(v503);
                if (v341)
                {
                  v360 = v344 + v461 + v359;
                  v504.origin.x = OUTLINED_FUNCTION_11_65();
                  CGRectGetMinX(v504);
                  v505.origin.x = OUTLINED_FUNCTION_11_65();
                  CGRectGetMaxY(v505);
                  v506.origin.x = OUTLINED_FUNCTION_11_65();
                  CGRectGetMaxY(v506);
                  v361 = VUIRoundValue();
                  OUTLINED_FUNCTION_30_30(v369, v370, v371, v372, v373, v374, v375, v376, v361, v362, v363, v364, v365, v366, v367, v368, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v439, *&v440, v441, v442, v443, v444, v445, v446, v448, *&v449, v450, v453, v454);
                  if (v356)
                  {
                    OUTLINED_FUNCTION_41_24();
                    sub_1E39A945C();
                    v342 = rect_8a + 1;
                    if (__OFADD__(rect_8a, 1))
                    {
                      goto LABEL_373;
                    }

                    OUTLINED_FUNCTION_34_30();
                    if (v420())
                    {
                      OUTLINED_FUNCTION_30();
                      (*(v377 + 2152))();
                      OUTLINED_FUNCTION_4_9();
                      OUTLINED_FUNCTION_47_0();
                      (*(v378 + 152))(&v481);
                    }

                    goto LABEL_330;
                  }

                  if (v357)
                  {
                    OUTLINED_FUNCTION_41_24();
                    sub_1E39A95FC();
                    v342 = rect_8a + 1;
                    if (__OFADD__(rect_8a, 1))
                    {
                      goto LABEL_374;
                    }

                    OUTLINED_FUNCTION_34_30();
                    if (v420())
                    {
                      OUTLINED_FUNCTION_30();
                      (*(v381 + 2176))();
                      OUTLINED_FUNCTION_4_9();
                      OUTLINED_FUNCTION_47_0();
                      (*(v382 + 152))(&v483);
                    }

LABEL_330:
                    VUIRoundValue();
                    v384 = v383;
                    v509.origin.x = OUTLINED_FUNCTION_11_65();
                    v345 = v384 - CGRectGetMaxY(v509);
                    v357 = v462;
                    if (sub_1E39A577C())
                    {
                      LODWORD(rect) = 0;
                    }

                    else
                    {
                      v515.origin.x = rect;
                      v515.origin.y = v457;
                      v515.size.width = v355;
                      v515.size.height = v449;
                      CGRectGetMaxY(v515);
                      v389 = VUIRoundValue();
                      LODWORD(rect) = 0;
                      OUTLINED_FUNCTION_30_30(v397, v398, v399, v400, v401, v402, v403, v404, v389, v390, v391, v392, v393, v394, v395, v396, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, *&v430, v431, v432, v433, v434, v435, v436, v437, *&v439, *&v440, v441, v442, v443, v444, v445, v446, v448, *&v449, v450, v453, v454);
                    }

LABEL_339:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v408 = OUTLINED_FUNCTION_27();
                      v253 = sub_1E39ABB54(v408, v409, v410, v253);
                    }

                    v405 = *(v253 + 2);
                    OUTLINED_FUNCTION_40_27();
                    if (v180)
                    {
                      v411 = OUTLINED_FUNCTION_1_12(v406);
                      v253 = sub_1E39ABB54(v411, v412, v413, v253);
                    }

                    *(v253 + 2) = v357;
                    v407 = &v253[32 * v405];
                    *(v407 + 4) = v358;
                    *(v407 + 5) = v360;
                    *(v407 + 6) = v348;
                    *(v407 + 7) = v349;

                    v340 = v456;
                    goto LABEL_344;
                  }

LABEL_337:
                  v345 = v355;
                  goto LABEL_339;
                }

                if (v356)
                {
                  v507.origin.x = OUTLINED_FUNCTION_2_79();
                  CGRectGetWidth(v507);
                  OUTLINED_FUNCTION_61_9();
                  sub_1E39A945C();
                  v508.origin.x = OUTLINED_FUNCTION_39_19();
                  CGRectGetMaxY(v508);
                  if (v420())
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v379 + 2152))();
                    OUTLINED_FUNCTION_4_9();
                    OUTLINED_FUNCTION_47_0();
                    v357 = v356;
                    (*(v380 + 152))(&v479);
                  }

                  goto LABEL_335;
                }

                if (v357)
                {
                  v510.origin.x = OUTLINED_FUNCTION_2_79();
                  CGRectGetWidth(v510);
                  OUTLINED_FUNCTION_61_9();
                  sub_1E39A95FC();
                  v511.origin.x = OUTLINED_FUNCTION_39_19();
                  CGRectGetMaxY(v511);
                  if (v420())
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v385 + 2176))();
                    OUTLINED_FUNCTION_4_9();
                    OUTLINED_FUNCTION_47_0();
                    v357 = v356;
                    (*(v386 + 152))(v480);
                  }

LABEL_335:
                  VUIRoundValue();
                  v359 = v387;
                }

                v512.origin.x = OUTLINED_FUNCTION_2_79();
                v388 = v359 - CGRectGetMinY(v512);
                v513.origin.x = OUTLINED_FUNCTION_2_79();
                v358 = CGRectGetMinX(v513);
                v514.origin.x = OUTLINED_FUNCTION_2_79();
                v461 = v388;
                v360 = v388 + CGRectGetMinY(v514);
                goto LABEL_337;
              }

              v253 = MEMORY[0x1E69E7CC0];
LABEL_356:

              *v443 = v253;
LABEL_347:
              if (v440 > 0.0)
              {
                v414 = *v431;
                if (*v431 <= v440)
                {
                  v414 = v440;
                }

                *v431 = v414;
              }

LABEL_351:
              OUTLINED_FUNCTION_42();
              return;
            }
          }

LABEL_346:

          goto LABEL_347;
        }
      }
    }

    v142 = v133 + v139;
    if (rect_24)
    {
      v143 = MEMORY[0x1E6911E60](v133 + v139, v460);
    }

    else
    {
      if (v142 >= *(rect_16 + 16))
      {
        goto LABEL_358;
      }

      v143 = *(v140 + 8 * v139);
    }

    v144 = v143;
    v145 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
      break;
    }

    if (__OFADD__(v132 + v139, 1))
    {
      goto LABEL_359;
    }

    *&v146 = COERCE_DOUBLE((*&rect)());
    if (*&v146 != 0.0)
    {
      v147 = v146;
      v444 = v132 + v139;
      if ((v146 & 0xC000000000000001) != 0)
      {
        v148 = MEMORY[0x1E6911E60]();
        goto LABEL_140;
      }

      if ((v132 + v139) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_368;
      }

      v148 = *(v146 + 8 * v132 + 8 * v139 + 32);

LABEL_140:
      v149 = sub_1E39A926C();
      v425 = v148;
      v150 = sub_1E39A9364();
      LODWORD(v148) = v150;
      v151 = v132 + v139;
      v152 = v444 == 0;
      v153 = v152 | HIDWORD(v437);
      LODWORD(v446) = v152 | v445;
      HIDWORD(v424) = v149;
      if (!v444 && (v149 & 1) == 0)
      {
        v153 = v150 | HIDWORD(v437);
        LODWORD(v446) = v150 | v445;
      }

      v154 = v153;
      [v144 vui:v47 sizeThatFits:*&v434];
      v156 = v155;
      *&v442 = v42;
      *&v423 = v55;
      if (LODWORD(v438))
      {
        if (!v444)
        {
          LODWORD(v418) = v148;
          v481 = *&v460;
          v483 = 1;
          LOBYTE(v484) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80, &qword_1E42B7720);
          sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80, &qword_1E42B7720);
          v158 = OUTLINED_FUNCTION_10_57();
          sub_1E38D2054(v158, v159);
          v160 = v480[0];
          if (v480[0])
          {
            [v480[0] vui:v47 sizeThatFits:*&v434];
          }

          v151 = v132 + v139;
        }
      }

      else if (HIDWORD(v418))
      {
        objc_opt_self();
        v157 = swift_dynamicCastObjCClass();
        if (v157)
        {
          [v157 onlyHasImage];
        }
      }

      nullsub_1();
      x = v485.origin.x;
      y = v485.origin.y;
      width = v485.size.width;
      v164 = v485.size.height;
      if (v430 >= CGRectGetMaxX(v485))
      {
        if (!LODWORD(v438) || v151 != 1)
        {

          v171 = v154;
          v156 = v164;
          v168 = v433;
          v172 = BYTE4(v424);
          goto LABEL_173;
        }

        LODWORD(v418) = v148;
LABEL_162:
        v168 = v433;

        goto LABEL_163;
      }

      LODWORD(v418) = v148;
      if (v151 < 2)
      {
        goto LABEL_162;
      }

      v481 = *&v147;
      v483 = v132 + v139 - 1;
      LOBYTE(v484) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
      v165 = OUTLINED_FUNCTION_10_57();
      sub_1E38D2054(v165, v166);
      v167 = v480[0];

      v168 = v433;
      if (!v167)
      {
        goto LABEL_157;
      }

      v169 = sub_1E39A926C();
      v170 = sub_1E39A9364();
      if (v169)
      {
        CGRectGetHeight(*v432);

LABEL_157:
        v151 = v132 + v139;
      }

      else
      {
        v151 = v132 + v139;
        if (v170)
        {
          CGRectGetHeight(*v433);
        }
      }

LABEL_163:
      VUIRoundValue();
      v62 = v173;
      v486.origin.x = x;
      v486.origin.y = y;
      v486.size.width = width;
      v486.size.height = v164;
      v174 = CGRectGetWidth(v486);
      v175 = v151 - 1;
      if (__OFSUB__(v151, 1))
      {
        goto LABEL_371;
      }

      width = v174;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v202 = OUTLINED_FUNCTION_27();
        v456 = sub_1E3997AA8(v202, v203, v204, v205);
      }

      x = *&v442;
      v177 = *(v456 + 2);
      v176 = *(v456 + 3);
      v178 = v177 + 1;
      if (v177 >= v176 >> 1)
      {
        v206 = OUTLINED_FUNCTION_1_12(v176);
        v456 = sub_1E3997AA8(v206, v207, v208, v456);
      }

      *(v456 + 2) = v178;
      *&v456[8 * v177 + 32] = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v209 = OUTLINED_FUNCTION_27();
        v459 = sub_1E39ABC54(v209, v210, v211, v212);
      }

      v172 = BYTE4(v424);
      v148 = *(v459 + 2);
      OUTLINED_FUNCTION_40_27();
      if (v180)
      {
        v213 = OUTLINED_FUNCTION_1_12(v179);
        v459 = sub_1E39ABC54(v213, v214, v215, v459);
      }

      LODWORD(v437) = v446;
      *(v459 + 2) = v178;
      *&v459[8 * v148 + 32] = MaxX - *&v442;
      v171 = v446;
      v138 = *&v442;
      y = v62;
      LOBYTE(v148) = v418;
LABEL_173:
      HIDWORD(v437) = v171;
      *&v445 = v138;
      if ((v172 & 1) != 0 && (LOBYTE(v457) & 1) == 0)
      {
        v181 = v62;
        v182 = *&v451;
        goto LABEL_179;
      }

      if (v148 & 1) == 0 || (a30)
      {
        v181 = v62;
      }

      else
      {
        v181 = v62;
        v182 = v449;
LABEL_179:
        if (width > v182)
        {
          v182 = width;
        }

        if (v182 <= *&v441)
        {
          width = v182;
        }

        else
        {
          width = *&v441;
        }
      }

      v487.origin.x = OUTLINED_FUNCTION_4_82();
      CGRectGetMinX(v487);
      v488.origin.x = OUTLINED_FUNCTION_4_82();
      CGRectGetMaxY(v488);
      if ((sub_1E39A69F8() & 1) == 0 || (sub_1E39A69F8() & 1) != 0 && v444 >= 1)
      {
        if (v172)
        {
          OUTLINED_FUNCTION_22_33();
          sub_1E39A945C();
          if (!sub_1E39A577C())
          {
            v489.origin.x = OUTLINED_FUNCTION_39_19();
            CGRectGetMaxY(v489);
            VUIRoundValue();
            if (v183 > v59)
            {
              v59 = v183;
            }
          }
        }

        if (v148)
        {
          OUTLINED_FUNCTION_22_33();
          sub_1E39A95FC();
          if (!sub_1E39A577C())
          {
            CGRectGetMaxY(*v168);
            VUIRoundValue();
            if (v184 > v59)
            {
              v59 = v184;
            }
          }
        }
      }

      v62 = v181;
      v185 = *v443;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v199 = OUTLINED_FUNCTION_27();
        v185 = sub_1E39ABB54(v199, v200, v201, v185);
      }

      v187 = *(v185 + 2);
      v186 = *(v185 + 3);
      if (v187 >= v186 >> 1)
      {
        v185 = sub_1E39ABB54((v186 > 1), v187 + 1, 1, v185);
      }

      *(v185 + 2) = v187 + 1;
      v188 = &v185[32 * v187];
      *(v188 + 4) = x;
      *(v188 + 5) = y;
      *(v188 + 6) = width;
      *(v188 + 7) = v156;
      *v443 = v185;
      v490.origin.x = OUTLINED_FUNCTION_4_82();
      MaxX = CGRectGetMaxX(v490);
      v491.origin.x = OUTLINED_FUNCTION_4_82();
      v189 = CGRectGetWidth(v491);
      v492.origin.x = OUTLINED_FUNCTION_4_82();
      v190 = CGRectGetMaxX(v492);
      v191 = v440;
      if (v440 <= v190)
      {
        v191 = v190;
      }

      v440 = v191;
      v493.origin.x = OUTLINED_FUNCTION_4_82();
      CGRectGetMaxY(v493);
      VUIRoundValue();
      if (v192 > v59)
      {
        v59 = v192;
      }

      *v454 = v59;
      if ((v428 & 0x100000000) != 0)
      {
        goto LABEL_369;
      }

      if (v435 - v132 == v139)
      {
        v193 = v456;
        v47 = *&v441;
        v42 = *&v442;
        v55 = *&v423;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v216 = OUTLINED_FUNCTION_27();
          v193 = sub_1E3997AA8(v216, v217, v218, v456);
        }

        v194 = v193;
        v195 = *(v193 + 2);
        v456 = v194;
        OUTLINED_FUNCTION_40_27();
        if (v180)
        {
          v219 = OUTLINED_FUNCTION_1_12(v196);
          v456 = sub_1E3997AA8(v219, v220, v221, v456);
        }

        *(v456 + 2) = v185;
        *&v456[8 * v195 + 32] = *&v435;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v222 = OUTLINED_FUNCTION_27();
          v459 = sub_1E39ABC54(v222, v223, v224, v225);
        }

        v197 = *(v459 + 2);
        OUTLINED_FUNCTION_40_27();
        if (v180)
        {
          v226 = OUTLINED_FUNCTION_1_12(v198);
          v459 = sub_1E39ABC54(v226, v227, v228, v459);
        }

        *(v459 + 2) = v185;
        *&v459[8 * v197 + 32] = MaxX - *&v442;
      }

      else
      {
        v47 = *&v441;
        v42 = *&v442;
        v55 = *&v423;
      }

      v138 = *&v445 + v55 + v189;

      LODWORD(v445) = v446;
      v132 += v139 + 1;
      v133 = v145;
      v137 = v426;
      v136 = v427;
      goto LABEL_127;
    }

    ++v139;
  }

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
  __break(1u);
LABEL_374:
  __break(1u);
}

uint64_t sub_1E39AB6F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

id sub_1E39AB73C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_debugLineRects) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_bannerLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViewModels) = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth);
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_titleImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentSubtitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_episodeInfoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_promoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_askToBuyPromptView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_descriptionTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_genresAndProviderTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_metadataAndBadgesTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_disclaimerTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_availabilityTextView) = 0;
  v6 = type metadata accessor for CanonicalBannerInfoView();
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E39AB88C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_debugLineRects] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_bannerLayout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViewModels] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth);
  v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout] = v3;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_badgeView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_titleImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentTitleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentSubtitleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_episodeInfoTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_promoTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_askToBuyPromptView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_descriptionTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_genresAndProviderTagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_metadataAndBadgesTagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_disclaimerTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_availabilityTextView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CanonicalBannerInfoView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E39AB9F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalBannerInfoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E39ABB54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10, &unk_1E42AF708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_1E39ABC54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0, &qword_1E42A1AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

unint64_t sub_1E39ABD54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE268AF8[0];
  if (!qword_1EE268AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE268AF8);
  }

  return result;
}

unint64_t sub_1E39ABDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2FC78;
  if (!qword_1ECF2FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CanonicalBannerInfoView.CanonicalBannerButtonsLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E39ABF00(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

double OUTLINED_FUNCTION_48_20(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{

  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  return result;
}

unint64_t OUTLINED_FUNCTION_70_10(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *(v42 - 192) = a42;
  *(v42 - 184) = 0;
  *&STACK[0x200] = a4;

  return sub_1E3793CAC(a1, a2, a3);
}

void *sub_1E39ABFE8(void *a1, char a2)
{
  v2 = 0;
  if (a2 != 3)
  {
    v2 = a1;
  }

  v3 = a1;
  return v2;
}

uint64_t sub_1E39AC06C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E39AC108(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E39AC158(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B95C;
}

uint64_t sub_1E39AC1DC()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1E39AC21C(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation;
  OUTLINED_FUNCTION_37(a1);
  v1[v3] = v2;
  return [v1 setNeedsUpdateOfSupportedInterfaceOrientations];
}

id (*sub_1E39AC26C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E39AC2D0;
}

id sub_1E39AC2D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

BOOL sub_1E39AC34C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) == 3;
  }

  return !v1;
}

id sub_1E39AC400(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) > 2u)
  {
    return 0;
  }

  else
  {
    return [*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent) *a1];
  }
}

id sub_1E39AC444()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton);
  }

  else
  {
    v4 = sub_1E39AC4A8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E39AC4A8(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE00, &qword_1E42AF888);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-1] - v9;
  v11 = *(a1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_fullscreenButtonLayout);
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = sub_1E3B1F31C();
  v14 = OUTLINED_FUNCTION_18();
  sub_1E3B1F350(0xD000000000000022, 0x80000001E426A320, v11, v14 & 1, sub_1E39B4358, v12, v29, v13);

  sub_1E4203DA4();
  v15 = sub_1E4200D94();
  (*(*v11 + 152))(v30, v15);
  if (v31)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v30[2];
    v19.n128_u64[0] = v30[3];
    v16.n128_u64[0] = v30[0];
    v17.n128_u64[0] = v30[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202734();
  v29[104] = 0;
  memcpy(v27, v29, 0x68uLL);
  LOBYTE(v27[13]) = v20;
  *&v27[14] = v13;
  v27[15] = v1;
  v27[16] = v2;
  v27[17] = v3;
  LOBYTE(v27[18]) = 0;
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  v21 = OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  sub_1E39B43F4();
  sub_1E4202EA4();

  memcpy(v28, v27, 0x91uLL);
  sub_1E325F6F0(v28, &qword_1ECF2FE08, &qword_1E42AF890);
  sub_1E39B450C(v10, v7, &qword_1ECF2FE00);
  v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE20, &unk_1E42AF8A0));
  v24 = sub_1E4201214();
  sub_1E325F6F0(v10, &qword_1ECF2FE00, &qword_1E42AF888);
  return v24;
}

void sub_1E39AC7A4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1E39AC824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v3 = sub_1E41FF1E4();

    return v3 & 1;
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 isNetworkReachable];

    return v6;
  }
}

id sub_1E39AC8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {
    sub_1E41FF204();
    return sub_1E41FF1F4();
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];

    return v4;
  }
}

id sub_1E39AC924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(12, a2, a3))
  {

    return sub_1E4206AC4();
  }

  else
  {
    v4 = *MEMORY[0x1E69DF878];

    return v4;
  }
}

char *sub_1E39AC978()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = &v51 - v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v58 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v51 - v6;
  v7 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v15 = v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  *v15 = 0;
  *(v15 + 8) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController) = 0;
  v16 = (v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_lastPlayerSize);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation) = 0;
  v17 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_fullscreenButtonLayout;
  type metadata accessor for PlaybackFullscreenButtonLayout();
  *(v1 + v17) = sub_1E3B628A8();
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v18 = type metadata accessor for PlaybackContainerViewController();
  v66 = v1;
  v67 = v18;
  OUTLINED_FUNCTION_25();
  v21 = objc_msgSendSuper2(v19, v20);
  [v21 setModalPresentationStyle_];
  [v21 setModalPresentationCapturesStatusBarAppearance_];
  result = [v21 view];
  if (result)
  {
    v23 = result;
    [result setAccessibilityIgnoresInvertColors_];

    v24 = objc_opt_self();
    v63 = v24;
    v25 = [v24 defaultCenter];
    v28 = sub_1E39AC924(v25, v26, v27);
    sub_1E39AC8B4(v28, v29, v30);
    sub_1E4206C14();

    swift_unknownObjectRelease();
    v61 = sub_1E37907F0(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1E4200844();
    v64 = *(v9 + 8);
    v64(v13, v7);
    v51 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_cancellables;
    swift_beginAccess();
    sub_1E42004C4();
    swift_endAccess();

    v31 = [v24 defaultCenter];
    v32 = *sub_1E37E1340();
    sub_1E4206C14();

    v33 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v59 = v9 + 8;
    v56 = v33;
    v34 = sub_1E4206A04();
    v65 = v34;
    v62 = sub_1E42069A4();
    v35 = v52;
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v62);
    v60 = sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v35, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v64(v13, v7);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
    v57 = v21;
    sub_1E4200844();

    v58 = *(v58 + 8);
    v36 = OUTLINED_FUNCTION_35_5();
    v37(v36);
    OUTLINED_FUNCTION_32_35();
    sub_1E42004C4();
    swift_endAccess();

    v38 = [v63 defaultCenter];
    v39 = *sub_1E37E13C8();
    sub_1E4206C14();

    v40 = sub_1E4206A04();
    OUTLINED_FUNCTION_26_38(v40);
    sub_1E325F6F0(v35, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v41 = OUTLINED_FUNCTION_47_19();
    v42(v41);
    OUTLINED_FUNCTION_4_0();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4200844();

    v44 = OUTLINED_FUNCTION_35_5();
    (v58)(v44);
    OUTLINED_FUNCTION_32_35();
    sub_1E42004C4();
    swift_endAccess();

    v45 = [v63 defaultCenter];
    sub_1E4206C14();

    v46 = sub_1E4206A04();
    OUTLINED_FUNCTION_26_38(v46);
    sub_1E325F6F0(v35, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v47 = OUTLINED_FUNCTION_47_19();
    v48(v47);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    v49 = v57;
    swift_unknownObjectWeakInit();

    sub_1E4200844();

    v50 = OUTLINED_FUNCTION_35_5();
    (v58)(v50);
    OUTLINED_FUNCTION_32_35();
    sub_1E42004C4();
    swift_endAccess();

    return v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E39AD110(uint64_t a1, double a2)
{
  v2 = sub_1E41FDF24();
  if (v2)
  {
    v5 = v2;
    v12 = sub_1E41FF234();
    sub_1E4207414();
    sub_1E375D7E8(v5, &v14, v13);

    sub_1E375D84C(v13);
    if (v15)
    {
      if (swift_dynamicCast())
      {
        v6 = v12;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1E325F6F0(&v14, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  if (TVAppFeature.isEnabled.getter(12, v3, v4))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v6 = sub_1E41FF1E4();
  }

  else
  {
    v7 = [objc_opt_self() sharedInstance];
    v6 = [v7 isNetworkReachable];
  }

LABEL_9:
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = [v9 isPostPlayActive];

  if (v10)
  {
    if ((v6 & 1) == 0)
    {
      v11 = [v8 sharedInstance];
      [v11 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
    }
  }
}

void sub_1E39AD2EC()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  *v3 = 0;
  *(v3 + 8) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController) = 0;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_lastPlayerSize);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_fullscreenButtonLayout;
  type metadata accessor for PlaybackFullscreenButtonLayout();
  *(v1 + v5) = sub_1E3B628A8();
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1E42076B4();
  __break(1u);
}

id sub_1E39AD420(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for PlaybackContainerViewController();
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
  sub_1E39AC7A4();
  [v2 setFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  v4 = [v2 layer];
  [v4 setMasksToBounds_];

  v5 = sub_1E39AC444();
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton;
  [v2 addSubview_];
  objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  OUTLINED_FUNCTION_10_9();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E429DCC0;
  v8 = [*&v1[v6] topAnchor];
  v9 = [v2 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [*&v1[v6] leadingAnchor];
  v12 = [v2 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v14 = sub_1E42062A4();

  v15 = OUTLINED_FUNCTION_33_14();
  [v15 v16];

  return [*&v1[v6] setAlpha_];
}

void *sub_1E39AD6C4(uint64_t a1)
{
  v2 = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaybackContainerViewController();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, v2 & 1);
  OUTLINED_FUNCTION_21();
  result = (*(v3 + 168))();
  if (result)
  {
    [result playbackContainerViewControllerDidDisappear_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E39AD7A8(uint64_t a1, double a2, double a3)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E324FBDC();
  (*(v9 + 16))(v13, v14, v7);
  v15 = v3;
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  v18 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (os_log_type_enabled(v16, v17))
  {
    v36 = a1;
    v19 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v19 = 136315394;
    OUTLINED_FUNCTION_6_12();
    v20 = sub_1E4206E54();
    v22 = sub_1E3270FC8(v20, v21, v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = sub_1E4206E54();
    v25 = sub_1E3270FC8(v23, v24, v37);
    v18 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_1E323F000, v16, v17, "PlaybackContainerViewController:: viewWillTransition to size: %s, lastPlayerSize: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    a1 = v36;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v13, v7);
  v26 = type metadata accessor for PlaybackContainerViewController();
  v37[1] = v15;
  v37[2] = v26;
  v27 = OUTLINED_FUNCTION_6_12();
  v30 = objc_msgSendSuper2(v28, v29, a1, v27);
  v31 = (v15 + v18[107]);
  *v31 = a2;
  v31[1] = a3;
  result = (*((*MEMORY[0x1E69E7D40] & *v15) + 0xA8))(v30);
  if (result)
  {
    v33 = OUTLINED_FUNCTION_6_12();
    [v34 v35];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E39ADAB4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PlaybackContainerViewController();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  v2 = sub_1E39ABFE8(*&v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent], v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8]);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = [v2 view];

  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = OUTLINED_FUNCTION_27_25();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v4, sel_setFrame_);
LABEL_5:
  if (v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed] == 1)
  {
    v7 = *&v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
    if (([v7 isHidden] & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      v9 = (*(v8 + 168))();
      if (v9)
      {
        [v9 playbackContainerViewControllerPiPFrameForCurrentPlayback_];
        OUTLINED_FUNCTION_3();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_18_28(v7, sel_setFrame_);
      }
    }
  }

  OUTLINED_FUNCTION_25_29();
}

void sub_1E39ADD10(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
  v7 = MEMORY[0x1E69E7D40];
  if (v2[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8] == 1)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & **v6) + 0x148);
    v9 = *v6;
    v46 = v8();
    v10 = [v3 unembedMultiPlayerViewController];
  }

  else
  {
    v46 = *&v2[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController];
    v11 = v46;
  }

  [v3 _setIgnoreAppSupportedOrientations_];
  [v3 setNeedsUpdateOfSupportedInterfaceOrientations];
  v12 = [a1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = OUTLINED_FUNCTION_58_15();
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  [v14 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v13, sel_setFrame_);
  [v3 addChildViewController_];
  v16 = OUTLINED_FUNCTION_58_15();
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16;
  v18 = [a1 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  [v17 addSubview_];

  [a1 didMoveToParentViewController_];
  type metadata accessor for CatchUpToLiveViewController();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *v6;
    *v6 = v20;
    v6[8] = 2;
    v45 = a1;

    if (a2)
    {
      if (v46)
      {
        v23 = *&v3[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
        v24 = a2;
        [v23 setHidden_];
        [v23 setAlpha_];
        v25 = OUTLINED_FUNCTION_58_15();
        if (v25)
        {
          v26 = v25;
          [v25 bounds];
          OUTLINED_FUNCTION_3();

          v27 = OUTLINED_FUNCTION_18_28(v23, sel_setFrame_);
          v28 = (*((*v7 & *v21) + 0x1E8))(v27);
          v29 = v28;
          if (v28)
          {
            [v28 setAlpha_];
          }

          v30 = *(v21 + OBJC_IVAR____TtC8VideosUI27CatchUpToLiveViewController_mediaController);
          sub_1E3C4D0C0();
          OUTLINED_FUNCTION_25();
          sub_1E3C4D0C8(v31, v32, v33, v34, 0, 0, v35);

          [v46 setCanPausePlaybackWhenExitingFullScreen_];
          OUTLINED_FUNCTION_4_0();
          v36 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v37 = swift_allocObject();
          v37[2] = v36;
          v37[3] = v46;
          v37[4] = v21;
          v37[5] = v24;
          v37[6] = v29;
          aBlock[4] = sub_1E39B37D8;
          aBlock[5] = v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E329EEC4;
          aBlock[3] = &block_descriptor_36;
          v38 = _Block_copy(aBlock);
          v39 = v45;
          v40 = v24;
          v41 = v46;
          v42 = v29;

          [v41 dismissViewControllerAnimated:1 completion:v38];

          _Block_release(v38);
          OUTLINED_FUNCTION_63_13();
          return;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_63_13();
}

void sub_1E39AE220()
{
  v1 = &v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
  if (v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8] == 2)
  {
    v2 = v0;
    v6 = *v1;
    [v6 removeFromParentViewController];
    v3 = [v6 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      VUIViewController.didMove(toParent:)(0);
      v5 = *v1;
      *v1 = 0;
      *(v1 + 8) = 3;

      [v2 _setIgnoreAppSupportedOrientations_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E39AE354()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 224) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  v4 = sub_1E41FFCB4();
  *(v1 + 160) = v4;
  OUTLINED_FUNCTION_8_0(v4);
  *(v1 + 168) = v5;
  *(v1 + 176) = swift_task_alloc();
  sub_1E4206434();
  *(v1 + 184) = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 192) = v6;
  *(v1 + 200) = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39AE430()
{
  v1 = *(v0 + 144);
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_22_34();
  v3(v2);
  v4 = v1;
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v7;
    v11 = v8;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
    sub_1E325F6F0(v10, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v8 = *(v0 + 144);
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 144);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  v19 = *(v17 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController);
  *(v17 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController) = v8;
  v20 = v18;

  [v20 setModalPresentationStyle_];
  v21 = *(v17 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
  *(v0 + 208) = v21;
  v22 = [v21 superview];
  v23 = &selRef__shouldShowRenewalOption;
  if (!v22)
  {
    v24 = [*(v0 + 152) view];
    if (!v24)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = v24;
    [v24 addSubview_];
  }

  v25 = *(v0 + 224);

  if ((v25 & 1) == 0)
  {
    v24 = [*(v0 + 152) view];
    if (!v24)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v26 = v24;
    [v24 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_18_28(v21, sel_setFrame_);
  }

  v27 = *(v0 + 152) + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  v28 = *(v27 + 8);
  if (v28 != 1)
  {
    goto LABEL_16;
  }

  v29 = *(v0 + 144);
  v30 = *v27;
  v24 = [v29 view];
  if (!v24)
  {
    goto LABEL_30;
  }

  v31 = v24;
  v32 = [v24 snapshotViewAfterScreenUpdates_];

  if (v32)
  {
    (*((*MEMORY[0x1E69E7D40] & *v30) + 0x480))(*(v0 + 144));
    OUTLINED_FUNCTION_3();
    v33 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView;
    [*(v30 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView) frame];
    [*(v30 + v33) frame];
    OUTLINED_FUNCTION_18_28(v32, sel_setFrame_);
    OUTLINED_FUNCTION_18_28(v21, sel_setFrame_);
    v24 = [v30 view];
    if (v24)
    {
      v34 = v24;
      [v24 addSubview_];
LABEL_23:

      v30 = v34;
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v28 = *(v27 + 8);
  v23 = 0x1FAB99000;
LABEL_16:
  if (v28 == 2)
  {
    v35 = *(v0 + 144);
    v30 = *v27;
    v24 = [v35 view];
    if (v24)
    {
      v36 = v24;
      v32 = [v24 snapshotViewAfterScreenUpdates_];

      if (!v32)
      {
LABEL_24:

        goto LABEL_26;
      }

      v24 = [*(v0 + 152) view];
      if (v24)
      {
        v37 = v24;
        v38 = *(v0 + 152);
        [v24 frame];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v32, sel_setFrame_);
        v24 = [v38 view];
        if (v24)
        {
          v39 = v24;
          [v24 frame];
          OUTLINED_FUNCTION_3();

          OUTLINED_FUNCTION_18_28(v21, sel_setFrame_);
          v24 = [v30 view];
          if (v24)
          {
            v34 = v24;
            [v24 v23 + 2040];
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v24);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v32 = 0;
LABEL_26:
  *(v0 + 216) = v32;
  v40 = *(v0 + 144);
  [v40 removeFromParentViewController];
  v41 = [v40 view];
  [v41 removeFromSuperview];

  [v40 didMoveToParentViewController_];
  [v40 _setIgnoreAppSupportedOrientations_];
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1E39AE9F8;
  swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FCB0, &unk_1E42AF720);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_16_51();
  v42 = OUTLINED_FUNCTION_33_14();
  [v42 v43];
  v24 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1E39AE9F8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v1 = v0;
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E39AEAF4, v4, v3);
}

id sub_1E39AEAF4()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[26];
  v2 = v0[18];
  sub_1E39AC7A4();
  [v1 setFrame_];
  [v2 setShowsPlaybackControls_];
  v3 = [v2 view];
  [v3 setUserInteractionEnabled_];

  result = OUTLINED_FUNCTION_27_25();
  if (result)
  {
    v5 = result;
    v6 = v0[27];
    v7 = v0[18];

    v8 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];

    [v6 removeFromSuperview];
    sub_1E39AEC40(v7);

    OUTLINED_FUNCTION_54();

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E39AEC40(void *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  result = [a1 view];
  if (result)
  {
    v11 = result;
    [result bounds];
    v13 = v12;
    v15 = v14;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v16(v9);
    v17 = v1;
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    v20 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = sub_1E4206E54();
      v24 = sub_1E3270FC8(v22, v23, &v30);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = sub_1E4206E54();
      v27 = sub_1E3270FC8(v25, v26, &v30);
      v20 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;

      *(v21 + 14) = v27;
      _os_log_impl(&dword_1E323F000, v18, v19, "PlaybackContainerViewController:: updatePlayerSizeIfNeeded, size: %s, lastPlayerSize: %s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    result = (*(v5 + 8))(v9, v3);
    v28 = (v17 + v20[107]);
    if (v13 != *v28 || v15 != v28[1])
    {
      *v28 = v13;
      v28[1] = v15;
      result = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xA8))(result);
      if (result)
      {
        [result playbackContainerViewControllerWillTransitionToSize_];
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E39AEF84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_1E4206434();
  *(v4 + 40) = sub_1E4206424();
  v6 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39AF024, v6, v5);
}

uint64_t sub_1E39AF024()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E39AF0E8;

  return sub_1E39AE354();
}

uint64_t sub_1E39AF0E8()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[4];
  v7 = v4[2];
  v8 = *v0;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  if (v5)
  {
    v10 = *(v2 + 48);
    v11 = OUTLINED_FUNCTION_101();
    v12(v11);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_54();

  return v13();
}

id sub_1E39AF284(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackContainerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E39AF344()
{
  OUTLINED_FUNCTION_24();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_1E41FFCB4();
  v1[20] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[21] = v4;
  v1[22] = swift_task_alloc();
  sub_1E4206434();
  v1[23] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v1[24] = v5;
  v1[25] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39AF41C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = *(v0 + 144);

  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  v13 = [v10 view];
  if (!v13)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 snapshotViewAfterScreenUpdates_];
  *(v0 + 208) = v15;

  if (v15)
  {
    v16 = *(v0 + 152);
    [*(v16 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView) frame];
    [v15 setFrame_];
    if (*(v16 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) == 1)
    {
      v17 = *(v16 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent);
      v13 = [v17 view];
      if (!v13)
      {
LABEL_16:
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v13);
      }

      v18 = v13;
      [v13 addSubview_];
    }
  }

  v13 = [*(v0 + 144) view];
  if (!v13)
  {
    goto LABEL_14;
  }

  v19 = v13;
  v20 = *(v0 + 144);
  [v13 removeFromSuperview];

  [v20 removeFromParentViewController];
  [v20 didMoveToParentViewController_];
  v13 = [v20 vuiView];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v13;
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  [v13 setAccessibilityElementsHidden_];

  v24 = *(v23 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1E39AF710;
  swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FCB0, &unk_1E42AF720);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_16_51();
  [v22 showFullScreenPresentationFromView:v24 completion:v0 + 80];
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1E39AF710()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v1 = v0;
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E39AF80C, v4, v3);
}

id sub_1E39AF80C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 144);
  [v1 setShowsPlaybackControls_];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);

    [v3 setUserInteractionEnabled_];

    [v4 removeFromSuperview];
    sub_1E39AEC40(v5);

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_62_1();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E39AF8EC(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = OUTLINED_FUNCTION_27_25();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v4, sel_setFrame_);
  [v1 addChildViewController_];
  v7 = OUTLINED_FUNCTION_27_25();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [a1 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  [v8 addSubview_];

  [a1 didMoveToParentViewController_];
  type metadata accessor for MultiPlayerViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = &v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
    *v12 = v11;
    v12[8] = 1;
    v13 = a1;
    OUTLINED_FUNCTION_25_29();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
  }
}

id sub_1E39AFACC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) != 1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  result = [v3 view];
  if (result)
  {
    v5 = result;
    [result removeFromSuperview];

    [v3 removeFromParentViewController];
    [v3 didMoveToParentViewController_];
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1E39AFBB8(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_101();
  v12(v11);
  swift_unknownObjectRetain();
  v13 = sub_1E41FFC94();
  v14 = sub_1E42067E4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v77 = v16;
    *v15 = 136315138;
    ObjectType = swift_getObjectType();
    aBlock = a1;
    swift_unknownObjectRetain();
    v17 = sub_1E3294FA4(&aBlock);
    v19 = sub_1E3270FC8(v17, v18, &v77);

    *(v15 + 4) = v19;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_21_0();

    (*(v6 + 8))(v10, v4);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v76 = v2;
  [v2 removePostPlayViewController];
  v25 = swift_getObjectType();
  v26 = MEMORY[0x1E69E6158];
  sub_1E4123588(v25, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_14_66();
  v75 = v79;
  sub_1E4123588(v25, v26);
  OUTLINED_FUNCTION_14_66();
  v27 = v79;
  sub_1E4123588(v25, v26);
  OUTLINED_FUNCTION_14_66();
  v28 = v79;
  v29 = *MEMORY[0x1E69D5D30];
  v30 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E4123588(v25, v30);
  v31 = sub_1E4123590(v29, v30, &aBlock);
  v32 = aBlock;
  if ((sub_1E39AC824(v31, v33, v34) & 1) == 0 || (v35 = [objc_opt_self() sharedInstance], v36 = objc_msgSend(v35, sel_appController), v35, !v36) || (v37 = objc_msgSend(v36, sel_appContext), v36, (v74 = v37) == 0))
  {

    v70 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_1E39B4100;
    v83 = v71;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = sub_1E39B134C;
    ObjectType = &block_descriptor_123;
    v72 = _Block_copy(&aBlock);

    [v70 fetchPostPlayItemForCurrentMediaItem:a1 completion:v72];
    _Block_release(v72);

    return;
  }

  v38 = [objc_allocWithZone(VUIDocumentPreFetchedDataPlaybackUpNext) init];
  if (v75)
  {
    v39 = sub_1E4205ED4();
    [v38 setProductID_];
  }

  if (v27)
  {
    v40 = sub_1E4205ED4();
    [v38 setShowID_];
  }

  v41 = v37;
  if (v28)
  {
    v42 = sub_1E4205ED4();
    [v38 setAdamID_];
  }

  if (v32)
  {
    [v38 setSeasonNumber_];
  }

  [v38 setIsPostPlay_];
  [v38 setIsLiveStream_];
  sub_1E3280A90(0, &qword_1EE23B0D0, off_1E87282E8);
  sub_1E4205F14();
  v43 = sub_1E38A1F34();
  v44 = sub_1E4205F14();
  sub_1E37FB7F0(v44, v45, v43, &selRef_setDocumentType_);
  v46 = sub_1E4205F14();
  sub_1E37FB7F0(v46, v47, v43, &selRef_setControllerRef_);
  [v43 setShouldLoadPageImmediately_];
  [v43 setPrefetchData_];
  v48 = [objc_opt_self() sharedInstance];
  v49 = [v48 viewControllerWithDocumentDataSource:v43 appContext:v74];

  if (!v49)
  {
    goto LABEL_26;
  }

  aBlock = &unk_1F5F34B18;
  v50 = swift_dynamicCastObjCProtocolConditional();
  v51 = v49;
  if (!v50)
  {
LABEL_25:

LABEL_26:

    return;
  }

  v52 = v50;
  v73 = v51;
  [v50 setPlaybackUpNextDelegate_];
  v53 = [v38 jsonData];
  if (v53)
  {
    v54 = v53;
    sub_1E4205C64();

    v55 = sub_1E4205C44();

    [v52 setPlaybackUpNextContextData_];
  }

  v56 = [v52 view];
  if (!v56)
  {
    __break(1u);
    goto LABEL_29;
  }

  v57 = v56;
  v58 = [v2 view];
  if (!v58)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v59 = v2;
  v60 = v58;
  [v58 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v57, sel_setFrame_);
  [v59 addChildViewController_];
  v61 = [v59 view];
  if (!v61)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62 = v61;
  v63 = [v52 view];
  if (v63)
  {
    v64 = v63;
    [v62 addSubview_];

    [v52 didMoveToParentViewController_];
    v65 = [v52 view];
    if (v65)
    {
      v66 = v65;
      [v65 setHidden_];

      v67 = &v76[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
      v68 = *&v76[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
      *v67 = v52;
      v67[8] = 0;
      v69 = v52;

      v51 = v43;
      v43 = v38;
      v38 = v73;
      v41 = v74;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1E39B0448(void *a1, void *a2, uint64_t a3)
{
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v146 = v6;
  v147 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v144 = v8 - v7;
  v145 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v143 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v142 = v12 - v11;
  v13 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v132 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v132 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v132 - v26;
  if (a2 && a1)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    v29 = a1;
    v30 = v29;
    if (Strong)
    {
      v140 = v29;
      v141 = Strong;
      ObjectType = swift_getObjectType();
      sub_1E4123588(ObjectType, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_13_68();
      if ((v150 & 1) == 0)
      {
        v32 = v149;
        v33 = OUTLINED_FUNCTION_39_0();
        sub_1E4123588(v33, v34);
        OUTLINED_FUNCTION_13_68();
        if ((v150 & 1) == 0)
        {
          *&v139 = v149;
          v35 = OUTLINED_FUNCTION_39_0();
          sub_1E4123588(v35, v36);
          OUTLINED_FUNCTION_13_68();
          v37 = v150;
          if (v150)
          {
            v138 = v32;
            *&v135 = v149;
            v38 = *MEMORY[0x1E69D5DC0];
            v39 = MEMORY[0x1E69E6158];
            sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
            sub_1E4123590(v38, v39, &v149);
            v40 = v150;
            if (v150)
            {
              v137 = v37;
              v41 = v149;
              v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
              v151 = v42;
              v149 = MEMORY[0x1E69E7CC8];
              v43 = sub_1E3A7C9B4(19, &v149, 0);
              __swift_destroy_boxed_opaque_existential_1(&v149);
              if (v43)
              {
                v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
                v136 = v42;
                v133 = v44;
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1E4297BD0;
                *(inited + 32) = 0x656C746974;
                *(inited + 40) = 0xE500000000000000;
                *(inited + 48) = v41;
                *(inited + 56) = v40;
                *(inited + 72) = MEMORY[0x1E69E6158];
                strcpy((inited + 80), "seasonNumber");
                *(inited + 93) = 0;
                *(inited + 94) = -5120;
                *(inited + 96) = v139;
                v46 = MEMORY[0x1E69E6530];
                *(inited + 120) = MEMORY[0x1E69E6530];
                strcpy((inited + 128), "episodeNumber");
                *(inited + 168) = v46;
                *(inited + 142) = -4864;
                *(inited + 144) = v138;
                v47 = sub_1E4205CB4();
                v48 = swift_initStackObject();
                v139 = xmmword_1E4297BE0;
                *(v48 + 16) = xmmword_1E4297BE0;
                ViewModelKeys.rawValue.getter(20);
                *(v48 + 32) = v49;
                *(v48 + 40) = v50;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
                v51 = swift_initStackObject();
                v134 = v43;
                v52 = v51;
                *(v51 + 16) = v139;
                sub_1E3C7DE74(6);
                v52[4] = v53;
                v52[5] = v54;
                v52[6] = v47;
                v55 = sub_1E4205CB4();
                *(v48 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0, &qword_1E42AF870);
                *(v48 + 48) = v55;
                v138 = sub_1E4205CB4();
                v56 = v133;
                v57 = swift_initStackObject();
                *(v57 + 16) = v139;
                sub_1E3854D1C(2);
                *(v57 + 32) = v58;
                *(v57 + 40) = v59;
                v60 = sub_1E3CCDEC4(0);
                *(v57 + 72) = MEMORY[0x1E69E6158];
                *(v57 + 48) = v60;
                *(v57 + 56) = v61;
                v62 = sub_1E4205CB4();
                v63 = swift_initStackObject();
                OUTLINED_FUNCTION_38_19(v63);
                ViewModelKeys.rawValue.getter(11);
                v56[4] = v64;
                v56[5] = v65;
                v66 = v136;
                v56[9] = v136;
                v56[6] = v62;
                v67 = sub_1E4205CB4();
                sub_1E384EE08(226);
                v151 = v66;
                v149 = v67;
                v68 = v134;
                swift_retain_n();
                v69 = OUTLINED_FUNCTION_39_0();
                v72 = sub_1E3A7CD30(v69, v70, v71, v68);

                __swift_destroy_boxed_opaque_existential_1(&v149);
                if (v72)
                {
                  v73 = type metadata accessor for ViewModel();

                  v74 = v138;
                  v138 = v73;
                  v75 = sub_1E39BED80(224, v74, v72);
                  v76 = v137;
                  if (v75)
                  {
                    v77 = v75;
                    v136 = v72;
                    type metadata accessor for TextViewModel();
                    v151 = MEMORY[0x1E69E6158];
                    v149 = v135;
                    v150 = v76;
                    v78 = v77;

                    v79 = sub_1E3C27638(23, &v149, v77, 0, 0);
                    if (v79)
                    {
                      v80 = v79;
                      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
                      OUTLINED_FUNCTION_5_10();
                      v81 = swift_allocObject();
                      v135 = xmmword_1E4298880;
                      *(v81 + 16) = xmmword_1E4298880;
                      *(v81 + 32) = v80;
                      v82 = *(*v77 + 472);
                      v133 = v80;
                      swift_retain_n();
                      v82(v81);
                      v132[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF8, &unk_1E42AF878);
                      v83 = swift_initStackObject();
                      OUTLINED_FUNCTION_38_19(v83);
                      *(v84 + 32) = 23;
                      *(v84 + 40) = v80;
                      v132[3] = sub_1E37414E0(v84, v85, v86);
                      v87 = sub_1E4205CB4();
                      (*(*v78 + 496))(v87);
                      OUTLINED_FUNCTION_10_9();
                      v88 = swift_allocObject();
                      v89 = v136;
                      *(v88 + 16) = xmmword_1E429DCC0;
                      *(v88 + 32) = v89;
                      *(v88 + 40) = v78;
                      v90 = *(*v89 + 472);

                      v90(v88);
                      v91 = v134;
                      v92 = swift_initStackObject();
                      OUTLINED_FUNCTION_38_19(v92);
                      *(v93 + 32) = 224;
                      v132[1] = v78;
                      *(v93 + 40) = v78;

                      v94 = sub_1E4205CB4();
                      (*(*v89 + 496))(v94);
                      OUTLINED_FUNCTION_5_10();
                      v95 = swift_allocObject();
                      *(v95 + 16) = v135;
                      *(v95 + 32) = v89;
                      v96 = (*v91 + 472);
                      v97 = *v96;

                      v97(v95);

                      v98 = swift_getObjectType();
                      v99 = [a2 hasTrait_];
                      if (v99 & 1) != 0 || (sub_1E39AC824(v99, v100, v101))
                      {
                        v102 = sub_1E3280A90(0, &qword_1EE23B340, 0x1E69DF730);
                        sub_1E4123588(v98, v102);
                        sub_1E4123590(@"VUIMediaItemMetadataPostPlayVUIImageProxy", v102, v148);
                        v103 = v148[0];
                        v104 = v140;
                        if (v148[0])
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
                          OUTLINED_FUNCTION_5_10();
                          v105 = swift_allocObject();
                          *(v105 + 16) = v135;
                          *(v105 + 32) = v103;
                          sub_1E39B407C(v105, v104);
                        }

                        sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
                        *&v139 = sub_1E4206A04();
                        OUTLINED_FUNCTION_4_0();
                        v106 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        OUTLINED_FUNCTION_5_10();
                        v107 = swift_allocObject();
                        v108 = v134;
                        v107[2] = v106;
                        v107[3] = v108;
                        v107[4] = v104;
                        v148[4] = sub_1E39B4108;
                        v148[5] = v107;
                        v148[0] = MEMORY[0x1E69E9820];
                        v148[1] = 1107296256;
                        OUTLINED_FUNCTION_14_1();
                        v148[2] = v109;
                        v148[3] = &block_descriptor_130;
                        v110 = _Block_copy(v148);
                        v140 = v104;

                        v111 = v142;
                        sub_1E4203FE4();
                        v148[0] = MEMORY[0x1E69E7CC0];
                        sub_1E37907F0(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
                        sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
                        v112 = v144;
                        v113 = v147;
                        sub_1E42072E4();
                        v114 = v139;
                        MEMORY[0x1E6911380](0, v111, v112, v110);
                        _Block_release(v110);

                        swift_unknownObjectRelease();

                        (*(v146 + 8))(v112, v113);
                        return (*(v143 + 8))(v111, v145);
                      }

                      else
                      {
                        sub_1E324FBDC();
                        OUTLINED_FUNCTION_0_11();
                        v128(v21);
                        v129 = sub_1E41FFC94();
                        sub_1E42067F4();
                        OUTLINED_FUNCTION_41_15();
                        if (os_log_type_enabled(v129, v130))
                        {
                          v131 = OUTLINED_FUNCTION_125_0();
                          *v131 = 0;
                          _os_log_impl(&dword_1E323F000, v129, v96, "PlaybackContainerViewController:: ignoring non-local media item with no network connection", v131, 2u);
                          OUTLINED_FUNCTION_55();

                          swift_unknownObjectRelease();
                        }

                        else
                        {

                          swift_unknownObjectRelease();
                        }

                        return (*(v15 + 8))(v21, v13);
                      }
                    }
                  }

                  else
                  {
                  }

                  goto LABEL_28;
                }
              }

              else
              {
              }
            }
          }
        }
      }

LABEL_28:
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v124(v24);
      v125 = sub_1E41FFC94();
      v126 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_104(v126))
      {
        v127 = OUTLINED_FUNCTION_125_0();
        *v127 = 0;
        _os_log_impl(&dword_1E323F000, v125, v126, "PlaybackContainerViewController:: Failed to create template view model", v127, 2u);
        OUTLINED_FUNCTION_55();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v15 + 8))(v24, v13);
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v120(v27);
    v121 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v123);
      OUTLINED_FUNCTION_21_0();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v15 + 8))(v27, v13);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v116(v18);
    v117 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v119);
      _os_log_impl(&dword_1E323F000, v117, v24, "PlaybackContainerViewController:: No media item for post play", v21, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    return (*(v15 + 8))(v18, v13);
  }
}

uint64_t sub_1E39B134C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v12 = *(a1 + 32);
  if (a4)
  {
    v13 = sub_1E4205C64();
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a7)
  {
LABEL_3:
    v7 = sub_1E4205C64();
  }

LABEL_4:

  v14 = a2;
  swift_unknownObjectRetain();
  v15 = a5;
  v12(a2, a3, v13, a5, a6, v7);

  swift_unknownObjectRelease();
}

void sub_1E39B1478()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8))
  {
    v2 = *v1;
    [v2 removeFromParentViewController];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      v5 = *v1;
      *v1 = 0;
      *(v1 + 8) = 3;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E39B1574()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_101();
  v10(v9);
  v11 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v13);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  (*(v4 + 8))(v8, v2);
  v19 = *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController);
  if (v19)
  {
    v20 = v19;
    v21 = [v1 _setIgnoreAppSupportedOrientations_];
    if (!*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8))
    {
      v22 = *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent);
      v23 = [v22 view];
      if (!v23)
      {
        goto LABEL_15;
      }

      v24 = v23;
      [v23 setHidden_];
    }

    v25 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v21);
    if (v25)
    {
      [v25 playbackContainerViewControllerPiPFrameForCurrentPlayback_];
      OUTLINED_FUNCTION_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_18_28(*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView), sel_setFrame_);
    }

    [v20 setShowsPlaybackControls_];
    [v20 setCanPausePlaybackWhenExitingFullScreen_];
    *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed) = 1;
    *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP) = 1;
    v26 = *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
    [v26 setHidden_];
    [v26 setAlpha_];
    v27 = v20;
    v28 = [v27 parentViewController];
    v29 = v27;
    if (!v28)
    {
      goto LABEL_12;
    }

    [v27 removeFromParentViewController];
    v29 = [v27 view];

    if (v29)
    {
      [v29 removeFromSuperview];
LABEL_12:

      sub_1E39B188C(v27);
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

double sub_1E39B188C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4206434();

  v7 = a1;
  v8 = sub_1E4206424();
  OUTLINED_FUNCTION_10_9();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;

  sub_1E376FE58(0, 0, v4, &unk_1E42AF858, v9);

  return result;
}

uint64_t sub_1E39B1A10()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  sub_1E4206434();
  v1[6] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v1[7] = v4;
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E39B1AE8()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = v0[2];

  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  v13 = *(v10 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController);
  v0[9] = v13;
  if (v13 && (v14 = v0[2], v15 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed, v0[10] = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed, *(v14 + v15) == 1))
  {
    v13;
    v16 = sub_1E39AC444();
    [v16 setAlpha_];

    v17 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP;
    v0[11] = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP;
    *(v14 + v17) = 1;
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_1E39B1CAC;
    OUTLINED_FUNCTION_62_1();

    return sub_1E39AF344();
  }

  else
  {

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_62_1();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_1E39B1CAC()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E39B1DC0, v5, v4);
}

void sub_1E39B1DC0()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = sub_1E39ABFE8(*(v0[2] + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent), *(v0[2] + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8));
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setHidden_];
  }

  else
  {
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[2];
  v8 = *&v7[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
  sub_1E39AC7A4();
  [v8 setFrame_];
  v7[v5] = 0;
  v7[v4] = 0;
  [v7 _setIgnoreAppSupportedOrientations_];

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_62_1();

  v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1E39B1F5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E4206434();
  v2[4] = sub_1E4206424();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39B1FF4, v4, v3);
}

uint64_t sub_1E39B1FF4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E39B20A0;

  return sub_1E39B1A10();
}

uint64_t sub_1E39B20A0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 24);
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v5)
  {
    v9 = *(v2 + 40);
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    _Block_release(v9);
  }

  OUTLINED_FUNCTION_54();

  return v12();
}

void sub_1E39B21CC(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v18 = sub_1E39B3AE8;
  v19 = v6;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E378AEA4;
  v17 = &block_descriptor_16;
  v7 = _Block_copy(&v14);
  v8 = v2;

  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v18 = sub_1E39B3B08;
  v19 = v10;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E37EB82C;
  v17 = &block_descriptor_23_0;
  v11 = _Block_copy(&v14);
  v12 = OUTLINED_FUNCTION_35_5();
  sub_1E37FAED4(v12, v13);

  [v5 animateWithDuration:v7 animations:v11 completion:0.25];
  _Block_release(v11);
  _Block_release(v7);
}

uint64_t sub_1E39B2434()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[12] = v2;
  v3 = sub_1E41FFCB4();
  v0[13] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[14] = v4;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = sub_1E4206434();
  v0[18] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v0[19] = v5;
  v0[20] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39B251C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = [Strong presentedViewController];
    v0[22] = v2;
    if (v2)
    {
      v3 = v2;
      sub_1E324FBDC();
      v4 = OUTLINED_FUNCTION_33_14();
      v5(v4);
      v6 = v3;
      v7 = sub_1E41FFC94();
      v8 = sub_1E42067E4();

      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[16];
      v12 = v0[13];
      v11 = v0[14];
      if (v9)
      {
        v36 = v0[13];
        v13 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v13 = 136315138;
        v14 = v6;
        v15 = [v14 description];
        sub_1E4205F14();
        v35 = v10;

        v16 = OUTLINED_FUNCTION_35_5();
        v19 = sub_1E3270FC8(v16, v17, v18);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_1E323F000, v7, v8, "PlaybackContainerViewController:: dismissing %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();

        (*(v11 + 8))(v35, v36);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
      }

      v33 = sub_1E4206424();
      v0[23] = v33;
      v34 = swift_task_alloc();
      v0[24] = v34;
      *(v34 + 16) = v6;
      v25 = swift_task_alloc();
      v0[25] = v25;
      *v25 = v0;
      v25[1] = sub_1E39B289C;
      v27 = MEMORY[0x1E69E85E0];
      v30 = sub_1E39B3F40;
      v29 = 0x80000001E426A280;
      v32 = MEMORY[0x1E69E7CA8] + 8;
      v26 = v33;
      v28 = 0xD000000000000026;
      v31 = v34;
    }

    else
    {
      v22 = v0[12];
      v0[26] = sub_1E4206424();
      v23 = swift_task_alloc();
      v0[27] = v23;
      *(v23 + 16) = v22;
      v24 = swift_task_alloc();
      v0[28] = v24;
      *v24 = v0;
      OUTLINED_FUNCTION_15_58(v24);
      OUTLINED_FUNCTION_6_64();
    }

    return MEMORY[0x1EEE6DDE0](v25, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v20();
  }
}

uint64_t sub_1E39B289C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E39B29F0, v5, v4);
}