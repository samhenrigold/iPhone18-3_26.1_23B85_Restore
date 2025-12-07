uint64_t type metadata accessor for InterventionScreenModel(uint64_t a1)
{
  result = qword_1EBCE31A8;
  if (!qword_1EBCE31A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BC66FD54@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *a1;
  v9 = sub_1BC6F39FC();
  if (v10)
  {
    v9 = 2;
  }

  result = sub_1BC670408(v9, v4, v5, v8, v6, v7);
  *a2 = result;
  return result;
}

uint64_t sub_1BC66FDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC66FE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BC66FEA0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v10 = *(sub_1BC759FE0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1BC759FE0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1BC670078(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1BC66FEA0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1BC759FE0();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BC6701A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC67022C(a1, a2, a3, *v3, &qword_1EBCDC1F8, &qword_1BC761170, MEMORY[0x1E697B5B0]);
  *v3 = result;
  return result;
}

void *sub_1BC6701E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC67022C(a1, a2, a3, *v3, &qword_1EBCDC210, &qword_1BC761190, MEMORY[0x1E697B460]);
  *v3 = result;
  return result;
}

void *sub_1BC67022C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1BC670408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6)
{
  v579 = a6;
  LODWORD(v596) = a5;
  v595 = a2;
  v9 = sub_1BC759FC0();
  v10 = *(v9 - 8);
  v574 = v9;
  v575 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v576 = &v572 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v578 = &v572 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BC759D00();
  v15 = *(v14 - 8);
  v592 = v14;
  v593 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v589 = &v572 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC759FE0();
  v590 = *(v17 - 8);
  v591 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v577 = &v572 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v573 = &v572 - v20;
  v594 = type metadata accessor for InterventionConfig.Layout(0);
  v21 = MEMORY[0x1EEE9AC00](v594);
  v585 = &v572 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v584 = &v572 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v583 = (&v572 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v588 = (&v572 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v580 = (&v572 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v587 = (&v572 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v582 = &v572 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v581 = &v572 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v572 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v586 = (&v572 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC208, &qword_1BC761188);
  v42 = (v41 - 8);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v572 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v572 - v46;
  *(&v572 - v46) = a1;
  v48 = v42[14];
  sub_1BC66FDD8(v595, &v572 + v48 - v46, type metadata accessor for InterventionConfig.Layout);
  v49 = v42[18];
  v595 = a3;
  *&v47[v49] = a3;
  v47[v42[22]] = a4;
  v50 = v596;
  v47[v42[26]] = v596;
  v51 = &v45[v42[14]];
  sub_1BC66FDD8(&v47[v48], v51, type metadata accessor for InterventionConfig.Layout);
  if (a1 == 2)
  {
    goto LABEL_103;
  }

  if (a1 == 1)
  {
    if (a4)
    {
      v52 = v595;
      if (a4 == 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              if (v52 == 1)
              {
                v136._countAndFlagsBits = 0xD000000000000034;
                v136._object = 0x80000001BC7708F0;
                SCLocalizedStringKey.init(stringLiteral:)(v136);
                v137 = v657;
                v138 = v658;
                v139 = type metadata accessor for InterventionScreenModel.Bullet();
                v140 = objc_allocWithZone(v139);
                v141 = &v140[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v141 = v137;
                v141[1] = v138;
                v142 = &v140[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                strcpy(&v140[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
                v142[15] = -18;
                v143 = &v140[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
                *v143 = 0;
                *(v143 + 1) = 0;
                v654.receiver = v140;
                v654.super_class = v139;
                v62 = objc_msgSendSuper2(&v654, sel_init);
                goto LABEL_235;
              }

              if (!v52)
              {
                v280._countAndFlagsBits = 0xD000000000000033;
                v280._object = 0x80000001BC770930;
                SCLocalizedStringKey.init(stringLiteral:)(v280);
                v281 = v657;
                v282 = v658;
                v283 = type metadata accessor for InterventionScreenModel.Bullet();
                v284 = objc_allocWithZone(v283);
                v285 = &v284[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v285 = v281;
                v285[1] = v282;
                v286 = &v284[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                *v286 = 0xD000000000000015;
                *(v286 + 1) = 0x80000001BC770970;
                v287 = &v284[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
                *v287 = 0;
                *(v287 + 1) = 0;
                v653.receiver = v284;
                v653.super_class = v283;
                v62 = objc_msgSendSuper2(&v653, sel_init);
                goto LABEL_235;
              }

              goto LABEL_254;
            }

            if (EnumCaseMultiPayload == 3)
            {
              if (v52 == 1)
              {
                v54._countAndFlagsBits = 0xD000000000000038;
                v54._object = 0x80000001BC770870;
                SCLocalizedStringKey.init(stringLiteral:)(v54);
                v55 = v657;
                v56 = v658;
                v57 = type metadata accessor for InterventionScreenModel.Bullet();
                v58 = objc_allocWithZone(v57);
                v59 = &v58[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v59 = v55;
                v59[1] = v56;
                v60 = &v58[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                strcpy(&v58[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
                v60[15] = -18;
                v61 = &v58[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
                *v61 = 0;
                *(v61 + 1) = 0;
                v656.receiver = v58;
                v656.super_class = v57;
                v62 = objc_msgSendSuper2(&v656, sel_init);
LABEL_235:
                v457 = v62;
                sub_1BC66008C(v47, &qword_1EBCDC208, &qword_1BC761188);
                goto LABEL_236;
              }

              if (!v52)
              {
                v313._countAndFlagsBits = 0xD000000000000037;
                v313._object = 0x80000001BC7708B0;
                SCLocalizedStringKey.init(stringLiteral:)(v313);
                v314 = v657;
                v315 = v658;
                v316 = type metadata accessor for InterventionScreenModel.Bullet();
                v317 = objc_allocWithZone(v316);
                v318 = &v317[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v318 = v314;
                v318[1] = v315;
                v319 = &v317[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                *v319 = 0x732D74656C6C7562;
                *(v319 + 1) = 0xEA00000000006461;
                *&v317[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
                v655.receiver = v317;
                v655.super_class = v316;
                v62 = objc_msgSendSuper2(&v655, sel_init);
                goto LABEL_235;
              }

              goto LABEL_254;
            }

            v162 = v585;
            sub_1BC66FDD8(v51, v585, type metadata accessor for InterventionConfig.Layout);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

            (*(v593 + 1))(v162, v592);
            if (v52 != 1)
            {
              if (v52)
              {
                goto LABEL_254;
              }

              goto LABEL_117;
            }

            goto LABEL_124;
          }

          if (!EnumCaseMultiPayload)
          {
            if (v52 == 1)
            {
LABEL_71:
              sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
              v92._countAndFlagsBits = 0xD000000000000026;
              v92._object = 0x80000001BC770AB0;
              SCLocalizedStringKey.init(stringLiteral:)(v92);
              v93 = v657;
              v94 = v658;
              v95 = type metadata accessor for InterventionScreenModel.Bullet();
              v96 = objc_allocWithZone(v95);
              v97 = &v96[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
              *v97 = v93;
              v97[1] = v94;
              v98 = &v96[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
              *v98 = 0xD00000000000001CLL;
              *(v98 + 1) = 0x80000001BC770A60;
              *&v96[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761030;
              v645.receiver = v96;
              v645.super_class = v95;
              v99 = objc_msgSendSuper2(&v645, sel_init);
LABEL_231:
              v457 = v99;
              v496 = v47;
LABEL_232:
              sub_1BC66008C(v496, &qword_1EBCDC208, &qword_1BC761188);
              return v457;
            }

            if (v52)
            {
              goto LABEL_254;
            }

            goto LABEL_186;
          }

          if (!v52)
          {
LABEL_122:
            sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
            v170._countAndFlagsBits = 0xD000000000000028;
            v170._object = 0x80000001BC770A80;
            SCLocalizedStringKey.init(stringLiteral:)(v170);
            v171 = v657;
            v172 = v658;
            v173 = type metadata accessor for InterventionScreenModel.Bullet();
            v174 = objc_allocWithZone(v173);
            v175 = &v174[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v175 = v171;
            v175[1] = v172;
            v176 = &v174[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v176 = 0xD000000000000015;
            *(v176 + 1) = 0x80000001BC770970;
            v177 = &v174[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v177 = 0;
            *(v177 + 1) = 0;
            v646.receiver = v174;
            v646.super_class = v173;
            v99 = objc_msgSendSuper2(&v646, sel_init);
            goto LABEL_231;
          }

          if (v52 != 1)
          {
            goto LABEL_254;
          }

          goto LABEL_188;
        }

        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            v100 = v584;
            sub_1BC66FDD8(v51, v584, type metadata accessor for InterventionConfig.Layout);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

            (*(v593 + 1))(v100, v592);
            if (!v52)
            {
LABEL_117:
              sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
              v163._countAndFlagsBits = 0xD00000000000002ELL;
              v163._object = 0x80000001BC7709C0;
              SCLocalizedStringKey.init(stringLiteral:)(v163);
              v164 = v657;
              v165 = v658;
              v166 = type metadata accessor for InterventionScreenModel.Bullet();
              v167 = objc_allocWithZone(v166);
              v168 = &v167[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
              *v168 = v164;
              v168[1] = v165;
              v169 = &v167[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
              *v169 = 0x732D74656C6C7562;
              *(v169 + 1) = 0xEA00000000006461;
              *&v167[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
              v651.receiver = v167;
              v651.super_class = v166;
              v99 = objc_msgSendSuper2(&v651, sel_init);
              goto LABEL_231;
            }

            if (v52 != 1)
            {
              goto LABEL_254;
            }
          }

          else if (v52 != 1)
          {
            if (!v52)
            {
              v335._countAndFlagsBits = 0xD00000000000003ALL;
              v335._object = 0x80000001BC7709F0;
              SCLocalizedStringKey.init(stringLiteral:)(v335);
              v336 = v657;
              v337 = v658;
              v338 = type metadata accessor for InterventionScreenModel.Bullet();
              v339 = objc_allocWithZone(v338);
              v340 = &v339[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
              *v340 = v336;
              v340[1] = v337;
              v341 = &v339[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
              *v341 = 0x732D74656C6C7562;
              *(v341 + 1) = 0xEA00000000006461;
              *&v339[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
              v648.receiver = v339;
              v648.super_class = v338;
              v62 = objc_msgSendSuper2(&v648, sel_init);
              goto LABEL_235;
            }

            goto LABEL_254;
          }

LABEL_124:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v178._countAndFlagsBits = 0xD00000000000002FLL;
          v178._object = 0x80000001BC770990;
          SCLocalizedStringKey.init(stringLiteral:)(v178);
          v179 = v657;
          v180 = v658;
          v181 = type metadata accessor for InterventionScreenModel.Bullet();
          v182 = objc_allocWithZone(v181);
          v183 = &v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v183 = v179;
          v183[1] = v180;
          v184 = &v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          strcpy(&v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-bubble");
          *(v184 + 7) = -4864;
          *&v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761020;
          v652.receiver = v182;
          v652.super_class = v181;
          v99 = objc_msgSendSuper2(&v652, sel_init);
          goto LABEL_231;
        }

        if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 8)
          {
            if (v52)
            {
              if (v52 != 1)
              {
                goto LABEL_254;
              }

              goto LABEL_71;
            }

LABEL_186:
            sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
            v320._countAndFlagsBits = 0xD000000000000025;
            v320._object = 0x80000001BC770AE0;
            SCLocalizedStringKey.init(stringLiteral:)(v320);
            v321 = v657;
            v322 = v658;
            v323 = type metadata accessor for InterventionScreenModel.Bullet();
            v324 = objc_allocWithZone(v323);
            v325 = &v324[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v325 = v321;
            v325[1] = v322;
            v326 = &v324[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v326 = 0xD000000000000015;
            *(v326 + 1) = 0x80000001BC770970;
            v327 = &v324[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v327 = 0;
            *(v327 + 1) = 0;
            v644.receiver = v324;
            v644.super_class = v323;
            v99 = objc_msgSendSuper2(&v644, sel_init);
            goto LABEL_231;
          }

          if (v52 != 1)
          {
            if (v52)
            {
              goto LABEL_254;
            }

            goto LABEL_122;
          }

LABEL_188:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v328._countAndFlagsBits = 0xD000000000000029;
          v328._object = 0x80000001BC770A30;
          SCLocalizedStringKey.init(stringLiteral:)(v328);
          v329 = v657;
          v330 = v658;
          v331 = type metadata accessor for InterventionScreenModel.Bullet();
          v332 = objc_allocWithZone(v331);
          v333 = &v332[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v333 = v329;
          v333[1] = v330;
          v334 = &v332[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v334 = 0xD00000000000001CLL;
          *(v334 + 1) = 0x80000001BC770A60;
          *&v332[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761030;
          v647.receiver = v332;
          v647.super_class = v331;
          v99 = objc_msgSendSuper2(&v647, sel_init);
          goto LABEL_231;
        }

        v144 = v583;
        sub_1BC66FDD8(v51, v583, type metadata accessor for InterventionConfig.Layout);
        v145 = *v144;

        if (v52 == 1)
        {

          goto LABEL_124;
        }

        if (!v52)
        {
          v288 = sub_1BC66DFB8(v145);

          if (v288)
          {
            v289._countAndFlagsBits = 0xD00000000000003ALL;
            v289._object = 0x80000001BC7709F0;
            SCLocalizedStringKey.init(stringLiteral:)(v289);
            v290 = v657;
            v291 = v658;
            v292 = type metadata accessor for InterventionScreenModel.Bullet();
            v293 = objc_allocWithZone(v292);
            v294 = &v293[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v294 = v290;
            v294[1] = v291;
            v295 = &v293[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v295 = 0x732D74656C6C7562;
            *(v295 + 1) = 0xEA00000000006461;
            *&v293[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
            v649.receiver = v293;
            v649.super_class = v292;
            v62 = objc_msgSendSuper2(&v649, sel_init);
          }

          else
          {
            v497._countAndFlagsBits = 0xD00000000000002ELL;
            v497._object = 0x80000001BC7709C0;
            SCLocalizedStringKey.init(stringLiteral:)(v497);
            v498 = v657;
            v499 = v658;
            v500 = type metadata accessor for InterventionScreenModel.Bullet();
            v501 = objc_allocWithZone(v500);
            v502 = &v501[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v502 = v498;
            v502[1] = v499;
            v503 = &v501[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v503 = 0x732D74656C6C7562;
            *(v503 + 1) = 0xEA00000000006461;
            *&v501[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
            v650.receiver = v501;
            v650.super_class = v500;
            v62 = objc_msgSendSuper2(&v650, sel_init);
          }

          goto LABEL_235;
        }

LABEL_253:

        goto LABEL_254;
      }

      sub_1BC66008C(v47, &qword_1EBCDC208, &qword_1BC761188);
      swift_getEnumCaseMultiPayload();
      goto LABEL_104;
    }

    v73 = swift_getEnumCaseMultiPayload();
    if (v73 <= 4)
    {
      v74 = v595;
      if (v73 > 1)
      {
        if (v73 == 2)
        {
          if (v595 == 1)
          {
            v146._countAndFlagsBits = 0xD000000000000034;
            v146._object = 0x80000001BC770BB0;
            SCLocalizedStringKey.init(stringLiteral:)(v146);
            v147 = v657;
            v148 = v658;
            v149 = type metadata accessor for InterventionScreenModel.Bullet();
            v150 = objc_allocWithZone(v149);
            v151 = &v150[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v151 = v147;
            v151[1] = v148;
            v152 = &v150[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v152 = 0x6E2D74656C6C7562;
            *(v152 + 1) = 0xEF7972746E652D6FLL;
            *&v150[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v641.receiver = v150;
            v641.super_class = v149;
            v62 = objc_msgSendSuper2(&v641, sel_init);
            goto LABEL_235;
          }

          if (!v595)
          {
            v296._countAndFlagsBits = 0xD000000000000033;
            v296._object = 0x80000001BC770BF0;
            SCLocalizedStringKey.init(stringLiteral:)(v296);
            v297 = v657;
            v298 = v658;
            v299 = type metadata accessor for InterventionScreenModel.Bullet();
            v300 = objc_allocWithZone(v299);
            v301 = &v300[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v301 = v297;
            v301[1] = v298;
            v302 = &v300[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v302 = 0xD000000000000014;
            *(v302 + 1) = 0x80000001BC770C30;
            v303 = &v300[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v303 = 0;
            *(v303 + 1) = 0;
            v640.receiver = v300;
            v640.super_class = v299;
            v62 = objc_msgSendSuper2(&v640, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        if (v73 == 3)
        {
          if (v595 == 1)
          {
            v75._countAndFlagsBits = 0xD000000000000038;
            v75._object = 0x80000001BC770B10;
            SCLocalizedStringKey.init(stringLiteral:)(v75);
            v76 = v657;
            v77 = v658;
            v78 = type metadata accessor for InterventionScreenModel.Bullet();
            v79 = objc_allocWithZone(v78);
            v80 = &v79[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v80 = v76;
            v80[1] = v77;
            v81 = &v79[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v81 = 0x6E2D74656C6C7562;
            *(v81 + 1) = 0xEF7972746E652D6FLL;
            *&v79[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v643.receiver = v79;
            v643.super_class = v78;
            v62 = objc_msgSendSuper2(&v643, sel_init);
            goto LABEL_235;
          }

          if (!v595)
          {
            v342._countAndFlagsBits = 0xD000000000000037;
            v342._object = 0x80000001BC770B50;
            SCLocalizedStringKey.init(stringLiteral:)(v342);
            v343 = v657;
            v344 = v658;
            v345 = type metadata accessor for InterventionScreenModel.Bullet();
            v346 = objc_allocWithZone(v345);
            v347 = &v346[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v347 = v343;
            v347[1] = v344;
            v348 = &v346[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v348 = 0xD000000000000013;
            *(v348 + 1) = 0x80000001BC770B90;
            v349 = &v346[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v349 = 0;
            *(v349 + 1) = 0;
            v642.receiver = v346;
            v642.super_class = v345;
            v62 = objc_msgSendSuper2(&v642, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        v108 = v587;
        sub_1BC66FDD8(v51, v587, type metadata accessor for InterventionConfig.Layout);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

        if (v74 == 1)
        {
          (*(v593 + 1))(v108, v592);
LABEL_133:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v192._countAndFlagsBits = 0xD00000000000002FLL;
          v192._object = 0x80000001BC770D30;
          SCLocalizedStringKey.init(stringLiteral:)(v192);
          v193 = v657;
          v194 = v658;
          v195 = type metadata accessor for InterventionScreenModel.Bullet();
          v196 = objc_allocWithZone(v195);
          v197 = &v196[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v197 = v193;
          v197[1] = v194;
          v198 = &v196[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v198 = 0xD000000000000010;
          *(v198 + 1) = 0x80000001BC770C90;
          *&v196[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
          v635.receiver = v196;
          v635.super_class = v195;
          v99 = objc_msgSendSuper2(&v635, sel_init);
          goto LABEL_231;
        }

        if (!v74)
        {
          v350._countAndFlagsBits = 0xD00000000000002ELL;
          v350._object = 0x80000001BC770D60;
          SCLocalizedStringKey.init(stringLiteral:)(v350);
          v351 = v657;
          v352 = v658;
          v353 = type metadata accessor for InterventionScreenModel.Bullet();
          v354 = objc_allocWithZone(v353);
          v355 = &v354[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v355 = v351;
          v355[1] = v352;
          v356 = &v354[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v356 = 0xD000000000000013;
          *(v356 + 1) = 0x80000001BC770B90;
          v357 = &v354[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v357 = 0;
          *(v357 + 1) = 0;
          v634.receiver = v354;
          v634.super_class = v353;
          v358 = objc_msgSendSuper2(&v634, sel_init);
LABEL_221:
          v457 = v358;
          sub_1BC66008C(v47, &qword_1EBCDC208, &qword_1BC761188);
          (*(v593 + 1))(v108, v592);
LABEL_236:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          return v457;
        }

        goto LABEL_252;
      }

      if (!v73)
      {
        if (v595 == 1)
        {
LABEL_78:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v101._countAndFlagsBits = 0xD000000000000026;
          v101._object = 0x80000001BC770E30;
          SCLocalizedStringKey.init(stringLiteral:)(v101);
          v102 = v657;
          v103 = v658;
          v104 = type metadata accessor for InterventionScreenModel.Bullet();
          v105 = objc_allocWithZone(v104);
          v106 = &v105[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v106 = v102;
          v106[1] = v103;
          v107 = &v105[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          strcpy(&v105[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-dancers");
          v107[15] = -18;
          *&v105[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761060;
          v630.receiver = v105;
          v630.super_class = v104;
          v99 = objc_msgSendSuper2(&v630, sel_init);
          goto LABEL_231;
        }

        if (v595)
        {
          goto LABEL_254;
        }

        goto LABEL_196;
      }

      if (!v595)
      {
LABEL_131:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v185._countAndFlagsBits = 0xD000000000000028;
        v185._object = 0x80000001BC770E00;
        SCLocalizedStringKey.init(stringLiteral:)(v185);
        v186 = v657;
        v187 = v658;
        v188 = type metadata accessor for InterventionScreenModel.Bullet();
        v189 = objc_allocWithZone(v188);
        v190 = &v189[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v190 = v186;
        v190[1] = v187;
        v191 = &v189[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v191 = 0xD000000000000014;
        *(v191 + 1) = 0x80000001BC770C30;
        *&v189[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761070;
        v631.receiver = v189;
        v631.super_class = v188;
        v99 = objc_msgSendSuper2(&v631, sel_init);
        goto LABEL_231;
      }

      if (v595 != 1)
      {
        goto LABEL_254;
      }

      goto LABEL_200;
    }

    if (v73 <= 6)
    {
      if (v73 != 5)
      {
        if (v595 != 1)
        {
          if (!v595)
          {
            v381._countAndFlagsBits = 0xD00000000000003ALL;
            v381._object = 0x80000001BC770D90;
            SCLocalizedStringKey.init(stringLiteral:)(v381);
            v382 = v657;
            v383 = v658;
            v384 = type metadata accessor for InterventionScreenModel.Bullet();
            v385 = objc_allocWithZone(v384);
            v386 = &v385[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v386 = v382;
            v386[1] = v383;
            v387 = &v385[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v387 = 0xD000000000000013;
            *(v387 + 1) = 0x80000001BC770B90;
            v388 = &v385[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v388 = 0;
            *(v388 + 1) = 0;
            v633.receiver = v385;
            v633.super_class = v384;
            v62 = objc_msgSendSuper2(&v633, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        goto LABEL_133;
      }

      v108 = v588;
      sub_1BC66FDD8(v51, v588, type metadata accessor for InterventionConfig.Layout);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      if (v595 != 1)
      {
        if (!v595)
        {
          v366._countAndFlagsBits = 0xD000000000000031;
          v366._object = 0x80000001BC770CB0;
          SCLocalizedStringKey.init(stringLiteral:)(v366);
          v367 = v657;
          v368 = v658;
          v369 = type metadata accessor for InterventionScreenModel.Bullet();
          v370 = objc_allocWithZone(v369);
          v371 = &v370[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v371 = v367;
          v371[1] = v368;
          v372 = &v370[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v372 = 0xD000000000000013;
          *(v372 + 1) = 0x80000001BC770B90;
          v373 = &v370[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v373 = 0;
          *(v373 + 1) = 0;
          v638.receiver = v370;
          v638.super_class = v369;
          v358 = objc_msgSendSuper2(&v638, sel_init);
          goto LABEL_221;
        }

LABEL_252:
        (*(v593 + 1))(v108, v592);
        goto LABEL_254;
      }

      (*(v593 + 1))(v108, v592);
    }

    else
    {
      if (v73 != 7)
      {
        if (v73 == 8)
        {
          if (v595)
          {
            if (v595 != 1)
            {
              goto LABEL_254;
            }

            goto LABEL_78;
          }

LABEL_196:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v359._countAndFlagsBits = 0xD000000000000025;
          v359._object = 0x80000001BC770E60;
          SCLocalizedStringKey.init(stringLiteral:)(v359);
          v360 = v657;
          v361 = v658;
          v362 = type metadata accessor for InterventionScreenModel.Bullet();
          v363 = objc_allocWithZone(v362);
          v364 = &v363[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v364 = v360;
          v364[1] = v361;
          v365 = &v363[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v365 = 0xD000000000000014;
          *(v365 + 1) = 0x80000001BC770C30;
          *&v363[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761070;
          v629.receiver = v363;
          v629.super_class = v362;
          v99 = objc_msgSendSuper2(&v629, sel_init);
          goto LABEL_231;
        }

        if (v595 != 1)
        {
          if (v595)
          {
            goto LABEL_254;
          }

          goto LABEL_131;
        }

LABEL_200:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v374._countAndFlagsBits = 0xD000000000000029;
        v374._object = 0x80000001BC770DD0;
        SCLocalizedStringKey.init(stringLiteral:)(v374);
        v375 = v657;
        v376 = v658;
        v377 = type metadata accessor for InterventionScreenModel.Bullet();
        v378 = objc_allocWithZone(v377);
        v379 = &v378[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v379 = v375;
        v379[1] = v376;
        v380 = &v378[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v378[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-dancers");
        v380[15] = -18;
        *&v378[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761060;
        v632.receiver = v378;
        v632.super_class = v377;
        v99 = objc_msgSendSuper2(&v632, sel_init);
        goto LABEL_231;
      }

      v153 = v580;
      sub_1BC66FDD8(v51, v580, type metadata accessor for InterventionConfig.Layout);
      v154 = *v153;

      if (v595 != 1)
      {
        if (!v595)
        {
          v304 = sub_1BC66DFB8(v154);

          if (v304)
          {
            v305._countAndFlagsBits = 0xD00000000000003CLL;
            v305._object = 0x80000001BC770CF0;
            SCLocalizedStringKey.init(stringLiteral:)(v305);
            v306 = v657;
            v307 = v658;
            v308 = type metadata accessor for InterventionScreenModel.Bullet();
            v309 = objc_allocWithZone(v308);
            v310 = &v309[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v310 = v306;
            v310[1] = v307;
            v311 = &v309[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v311 = 0xD000000000000013;
            *(v311 + 1) = 0x80000001BC770B90;
            v312 = &v309[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v312 = 0;
            *(v312 + 1) = 0;
            v636.receiver = v309;
            v636.super_class = v308;
            v62 = objc_msgSendSuper2(&v636, sel_init);
          }

          else
          {
            v504._countAndFlagsBits = 0xD000000000000031;
            v504._object = 0x80000001BC770CB0;
            SCLocalizedStringKey.init(stringLiteral:)(v504);
            v505 = v657;
            v506 = v658;
            v507 = type metadata accessor for InterventionScreenModel.Bullet();
            v508 = objc_allocWithZone(v507);
            v509 = &v508[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v509 = v505;
            v509[1] = v506;
            v510 = &v508[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v510 = 0xD000000000000013;
            *(v510 + 1) = 0x80000001BC770B90;
            v511 = &v508[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v511 = 0;
            *(v511 + 1) = 0;
            v637.receiver = v508;
            v637.super_class = v507;
            v62 = objc_msgSendSuper2(&v637, sel_init);
          }

          goto LABEL_235;
        }

        goto LABEL_253;
      }
    }

    sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
    v155._countAndFlagsBits = 0xD000000000000032;
    v155._object = 0x80000001BC770C50;
    SCLocalizedStringKey.init(stringLiteral:)(v155);
    v156 = v657;
    v157 = v658;
    v158 = type metadata accessor for InterventionScreenModel.Bullet();
    v159 = objc_allocWithZone(v158);
    v160 = &v159[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v160 = v156;
    v160[1] = v157;
    v161 = &v159[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v161 = 0xD000000000000010;
    *(v161 + 1) = 0x80000001BC770C90;
    *&v159[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
    v639.receiver = v159;
    v639.super_class = v158;
    v99 = objc_msgSendSuper2(&v639, sel_init);
    goto LABEL_231;
  }

  v63 = v595;
  if (a1)
  {
    goto LABEL_254;
  }

  if (!a4)
  {
    v82 = swift_getEnumCaseMultiPayload();
    if (v82 <= 4)
    {
      if (v82 > 1)
      {
        if (v82 == 2)
        {
          if (v63 == 1)
          {
            v207._countAndFlagsBits = 0xD00000000000002CLL;
            v207._object = 0x80000001BC771260;
            SCLocalizedStringKey.init(stringLiteral:)(v207);
            v208 = v657;
            v209 = v658;
            v210 = type metadata accessor for InterventionScreenModel.Bullet();
            v211 = objc_allocWithZone(v210);
            v212 = &v211[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v212 = v208;
            v212[1] = v209;
            v213 = &v211[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v213 = 0x6E2D74656C6C7562;
            *(v213 + 1) = 0xEF7972746E652D6FLL;
            *&v211[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v607.receiver = v211;
            v607.super_class = v210;
            v62 = objc_msgSendSuper2(&v607, sel_init);
            goto LABEL_235;
          }

          if (!v63)
          {
            v397._countAndFlagsBits = 0xD00000000000002BLL;
            v397._object = 0x80000001BC771290;
            SCLocalizedStringKey.init(stringLiteral:)(v397);
            v398 = v657;
            v399 = v658;
            v400 = type metadata accessor for InterventionScreenModel.Bullet();
            v401 = objc_allocWithZone(v400);
            v402 = &v401[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v402 = v398;
            v402[1] = v399;
            v403 = &v401[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v403 = 0xD000000000000014;
            *(v403 + 1) = 0x80000001BC770C30;
            v404 = &v401[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v404 = 0;
            *(v404 + 1) = 0;
            v606.receiver = v401;
            v606.super_class = v400;
            v62 = objc_msgSendSuper2(&v606, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        if (v82 == 3)
        {
          if (v63 == 1)
          {
            v83._countAndFlagsBits = 0xD000000000000030;
            v83._object = 0x80000001BC7711F0;
            SCLocalizedStringKey.init(stringLiteral:)(v83);
            v84 = v657;
            v85 = v658;
            v86 = type metadata accessor for InterventionScreenModel.Bullet();
            v87 = objc_allocWithZone(v86);
            v88 = &v87[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v88 = v84;
            v88[1] = v85;
            v89 = &v87[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v89 = 0x6E2D74656C6C7562;
            *(v89 + 1) = 0xEF7972746E652D6FLL;
            *&v87[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v609.receiver = v87;
            v609.super_class = v86;
            v62 = objc_msgSendSuper2(&v609, sel_init);
            goto LABEL_235;
          }

          if (!v63)
          {
            v441._countAndFlagsBits = 0xD00000000000002FLL;
            v441._object = 0x80000001BC771230;
            SCLocalizedStringKey.init(stringLiteral:)(v441);
            v442 = v657;
            v443 = v658;
            v444 = type metadata accessor for InterventionScreenModel.Bullet();
            v445 = objc_allocWithZone(v444);
            v446 = &v445[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v446 = v442;
            v446[1] = v443;
            v447 = &v445[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v447 = 0xD000000000000013;
            *(v447 + 1) = 0x80000001BC770B90;
            v448 = &v445[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v448 = 0;
            *(v448 + 1) = 0;
            v608.receiver = v445;
            v608.super_class = v444;
            v62 = objc_msgSendSuper2(&v608, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        v108 = v586;
        sub_1BC66FDD8(v51, v586, type metadata accessor for InterventionConfig.Layout);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

        if (v63 != 1)
        {
          if (!v63)
          {
            v449._countAndFlagsBits = 0xD000000000000026;
            v449._object = 0x80000001BC771350;
            SCLocalizedStringKey.init(stringLiteral:)(v449);
            v450 = v657;
            v451 = v658;
            v452 = type metadata accessor for InterventionScreenModel.Bullet();
            v453 = objc_allocWithZone(v452);
            v454 = &v453[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v454 = v450;
            v454[1] = v451;
            v455 = &v453[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v455 = 0xD000000000000013;
            *(v455 + 1) = 0x80000001BC770B90;
            v456 = &v453[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v456 = 0;
            *(v456 + 1) = 0;
            v602.receiver = v453;
            v602.super_class = v452;
            v358 = objc_msgSendSuper2(&v602, sel_init);
            goto LABEL_221;
          }

          goto LABEL_252;
        }

        (*(v593 + 1))(v108, v592);
LABEL_161:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v252._countAndFlagsBits = 0xD000000000000027;
        v252._object = 0x80000001BC771320;
        SCLocalizedStringKey.init(stringLiteral:)(v252);
        v253 = v657;
        v254 = v658;
        v255 = type metadata accessor for InterventionScreenModel.Bullet();
        v256 = objc_allocWithZone(v255);
        v257 = &v256[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v257 = v253;
        v257[1] = v254;
        v258 = &v256[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v258 = 0xD000000000000010;
        *(v258 + 1) = 0x80000001BC770C90;
        *&v256[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
        v603.receiver = v256;
        v603.super_class = v255;
        v99 = objc_msgSendSuper2(&v603, sel_init);
        goto LABEL_231;
      }

      if (!v82)
      {
        if (v63 == 1)
        {
LABEL_90:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v118._countAndFlagsBits = 0xD00000000000001ELL;
          v118._object = 0x80000001BC771440;
          SCLocalizedStringKey.init(stringLiteral:)(v118);
          v119 = v657;
          v120 = v658;
          v121 = type metadata accessor for InterventionScreenModel.Bullet();
          v122 = objc_allocWithZone(v121);
          v123 = &v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v123 = v119;
          v123[1] = v120;
          v124 = &v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          strcpy(&v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-family");
          *(v124 + 7) = -4864;
          v125 = &v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v125 = 0x1000000000000019;
          *(v125 + 1) = 0x80000001BC7713F0;
          v598.receiver = v122;
          v598.super_class = v121;
          v99 = objc_msgSendSuper2(&v598, sel_init);
          goto LABEL_231;
        }

        if (v63)
        {
          goto LABEL_254;
        }

        goto LABEL_223;
      }

      if (!v63)
      {
LABEL_159:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v244._countAndFlagsBits = 0xD000000000000020;
        v244._object = 0x80000001BC771410;
        SCLocalizedStringKey.init(stringLiteral:)(v244);
        v245 = v657;
        v246 = v658;
        v247 = type metadata accessor for InterventionScreenModel.Bullet();
        v248 = objc_allocWithZone(v247);
        v249 = &v248[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v249 = v245;
        v249[1] = v246;
        v250 = &v248[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v250 = 0xD000000000000013;
        *(v250 + 1) = 0x80000001BC770B90;
        v251 = &v248[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v251 = 0;
        *(v251 + 1) = 0;
        v599.receiver = v248;
        v599.super_class = v247;
        v99 = objc_msgSendSuper2(&v599, sel_init);
        goto LABEL_231;
      }

      if (v63 != 1)
      {
        goto LABEL_254;
      }

      goto LABEL_225;
    }

    if (v82 <= 6)
    {
      if (v82 != 5)
      {
        if (v63 != 1)
        {
          if (!v63)
          {
            v474._countAndFlagsBits = 0xD000000000000032;
            v474._object = 0x80000001BC771380;
            SCLocalizedStringKey.init(stringLiteral:)(v474);
            v475 = v657;
            v476 = v658;
            v477 = type metadata accessor for InterventionScreenModel.Bullet();
            v478 = objc_allocWithZone(v477);
            v479 = &v478[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v479 = v475;
            v479[1] = v476;
            v480 = &v478[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v480 = 0xD000000000000013;
            *(v480 + 1) = 0x80000001BC770B90;
            v481 = &v478[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v481 = 0;
            *(v481 + 1) = 0;
            v601.receiver = v478;
            v601.super_class = v477;
            v62 = objc_msgSendSuper2(&v601, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        goto LABEL_161;
      }

      sub_1BC66FDD8(v51, v39, type metadata accessor for InterventionConfig.Layout);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      (*(v593 + 1))(v39, v592);
      if (v63 != 1)
      {
        if (v63)
        {
          goto LABEL_254;
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (v82 != 7)
      {
        if (v82 == 8)
        {
          if (v63)
          {
            if (v63 != 1)
            {
              goto LABEL_254;
            }

            goto LABEL_90;
          }

LABEL_223:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v458._countAndFlagsBits = 0xD00000000000001DLL;
          v458._object = 0x80000001BC771460;
          SCLocalizedStringKey.init(stringLiteral:)(v458);
          v459 = v657;
          v460 = v658;
          v461 = type metadata accessor for InterventionScreenModel.Bullet();
          v462 = objc_allocWithZone(v461);
          v463 = &v462[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v463 = v459;
          v463[1] = v460;
          v464 = &v462[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v464 = 0xD000000000000013;
          *(v464 + 1) = 0x80000001BC770B90;
          v465 = &v462[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v465 = 0;
          *(v465 + 1) = 0;
          v597.receiver = v462;
          v597.super_class = v461;
          v99 = objc_msgSendSuper2(&v597, sel_init);
          goto LABEL_231;
        }

        if (v63 != 1)
        {
          if (v63)
          {
            goto LABEL_254;
          }

          goto LABEL_159;
        }

LABEL_225:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v466._countAndFlagsBits = 0xD000000000000021;
        v466._object = 0x80000001BC7713C0;
        SCLocalizedStringKey.init(stringLiteral:)(v466);
        v467 = v657;
        v468 = v658;
        v469 = type metadata accessor for InterventionScreenModel.Bullet();
        v470 = objc_allocWithZone(v469);
        v471 = &v470[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v471 = v467;
        v471[1] = v468;
        v472 = &v470[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v470[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-family");
        *(v472 + 7) = -4864;
        v473 = &v470[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v473 = 0x1000000000000019;
        *(v473 + 1) = 0x80000001BC7713F0;
        v600.receiver = v470;
        v600.super_class = v469;
        v99 = objc_msgSendSuper2(&v600, sel_init);
        goto LABEL_231;
      }

      if (!v63)
      {
LABEL_142:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v214._countAndFlagsBits = 0xD000000000000029;
        v214._object = 0x80000001BC7712F0;
        SCLocalizedStringKey.init(stringLiteral:)(v214);
        v215 = v657;
        v216 = v658;
        v217 = type metadata accessor for InterventionScreenModel.Bullet();
        v218 = objc_allocWithZone(v217);
        v219 = &v218[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v219 = v215;
        v219[1] = v216;
        v220 = &v218[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v220 = 0xD000000000000013;
        *(v220 + 1) = 0x80000001BC770B90;
        v221 = &v218[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v221 = 0;
        *(v221 + 1) = 0;
        v604.receiver = v218;
        v604.super_class = v217;
        v99 = objc_msgSendSuper2(&v604, sel_init);
        goto LABEL_231;
      }

      if (v63 != 1)
      {
        goto LABEL_254;
      }
    }

    sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
    v405._countAndFlagsBits = 0xD00000000000002ALL;
    v405._object = 0x80000001BC7712C0;
    SCLocalizedStringKey.init(stringLiteral:)(v405);
    v406 = v657;
    v407 = v658;
    v408 = type metadata accessor for InterventionScreenModel.Bullet();
    v409 = objc_allocWithZone(v408);
    v410 = &v409[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v410 = v406;
    v410[1] = v407;
    v411 = &v409[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v411 = 0xD000000000000010;
    *(v411 + 1) = 0x80000001BC770C90;
    *&v409[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
    v605.receiver = v409;
    v605.super_class = v408;
    v99 = objc_msgSendSuper2(&v605, sel_init);
    goto LABEL_231;
  }

  if (a4 != 1)
  {
    if (v595 != 1)
    {
      if (!v595)
      {
        v90 = swift_getEnumCaseMultiPayload();
        if (v90 <= 1)
        {
          if (!v90)
          {
            sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
            goto LABEL_172;
          }

          if (v90 == 1)
          {
            sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
            goto LABEL_102;
          }
        }

        else if (v90 != 2)
        {
          if (v90 != 8)
          {
            if (v90 != 9)
            {
              goto LABEL_103;
            }

LABEL_102:
            v127._countAndFlagsBits = 0xD000000000000020;
            v127._object = 0x80000001BC770F90;
            SCLocalizedStringKey.init(stringLiteral:)(v127);
            v128 = v657;
            v129 = v658;
            v130 = type metadata accessor for InterventionScreenModel.Bullet();
            v131 = objc_allocWithZone(v130);
            v132 = &v131[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v132 = v128;
            v132[1] = v129;
            v133 = &v131[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v133 = 0xD000000000000015;
            *(v133 + 1) = 0x80000001BC770970;
            v134 = &v131[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v134 = 0;
            *(v134 + 1) = 0;
            v622.receiver = v131;
            v622.super_class = v130;
            v99 = objc_msgSendSuper2(&v622, sel_init);
            goto LABEL_231;
          }

LABEL_172:
          v272._countAndFlagsBits = 0xD00000000000001DLL;
          v272._object = 0x80000001BC770FC0;
          SCLocalizedStringKey.init(stringLiteral:)(v272);
          v273 = v657;
          v274 = v658;
          v275 = type metadata accessor for InterventionScreenModel.Bullet();
          v276 = objc_allocWithZone(v275);
          v277 = &v276[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v277 = v273;
          v277[1] = v274;
          v278 = &v276[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v278 = 0xD000000000000015;
          *(v278 + 1) = 0x80000001BC770970;
          v279 = &v276[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v279 = 0;
          *(v279 + 1) = 0;
          v621.receiver = v276;
          v621.super_class = v275;
          v99 = objc_msgSendSuper2(&v621, sel_init);
          goto LABEL_231;
        }
      }

LABEL_103:
      sub_1BC66008C(v47, &qword_1EBCDC208, &qword_1BC761188);
      goto LABEL_104;
    }

    if ((v50 & 1) == 0)
    {
      sub_1BC66008C(v47, &qword_1EBCDC208, &qword_1BC761188);
      v126 = swift_getEnumCaseMultiPayload();
      if (v126 <= 5 && (v126 == 4 || v126 == 5))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

        (*(v593 + 1))(v51, v592);
        return 0;
      }

LABEL_104:
      sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
      return 0;
    }

    v91 = swift_getEnumCaseMultiPayload();
    if (v91 <= 5)
    {
      if (v91 == 4 || v91 == 5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

        (*(v593 + 1))(v51, v592);
LABEL_230:
        v489._countAndFlagsBits = 0xD00000000000001BLL;
        v489._object = 0x80000001BC770F70;
        SCLocalizedStringKey.init(stringLiteral:)(v489);
        v490 = v657;
        v491 = v658;
        v492 = type metadata accessor for InterventionScreenModel.Bullet();
        v493 = objc_allocWithZone(v492);
        v494 = &v493[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v494 = v490;
        v494[1] = v491;
        v495 = &v493[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v495 = 0x6C2D74656C6C7562;
        *(v495 + 1) = 0xEB000000006B636FLL;
        *&v493[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
        v623.receiver = v493;
        v623.super_class = v492;
        v99 = objc_msgSendSuper2(&v623, sel_init);
        goto LABEL_231;
      }

      goto LABEL_228;
    }

    if (v91 == 6)
    {
      sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
      goto LABEL_230;
    }

    if (v91 != 7)
    {
LABEL_228:
      v482._countAndFlagsBits = 0xD00000000000001ELL;
      v482._object = 0x80000001BC770E90;
      SCLocalizedStringKey.init(stringLiteral:)(v482);
      v483 = v657;
      v484 = v658;
      v485 = type metadata accessor for InterventionScreenModel.Bullet();
      v486 = objc_allocWithZone(v485);
      v487 = &v486[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v487 = v483;
      v487[1] = v484;
      v488 = &v486[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v488 = 0x6C2D74656C6C7562;
      *(v488 + 1) = 0xEB000000006B636FLL;
      *&v486[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
      v628.receiver = v486;
      v628.super_class = v485;
      v62 = objc_msgSendSuper2(&v628, sel_init);
      goto LABEL_235;
    }

    v260 = *v51;
    v259 = *(v51 + 1);
    v261 = *(*v51 + 16);
    if (v261)
    {
      v588 = *(v51 + 1);
      v594 = v47;
      v657 = MEMORY[0x1E69E7CC0];
      sub_1BC6701A4(0, v261, 0);
      v262 = v657;
      v263 = *(v593 + 2);
      v264 = *(v593 + 80);
      v587 = v260;
      v265 = &v260[(v264 + 32) & ~v264];
      v595 = *(v593 + 9);
      v596 = v263;
      v593 = (v593 + 16);
      v266 = (v593 - 8);
      v267 = v573;
      do
      {
        v268 = v589;
        v269 = v592;
        v596(v589, v265, v592);
        sub_1BC759CC0();
        (*v266)(v268, v269);
        v657 = v262;
        v271 = *(v262 + 16);
        v270 = *(v262 + 24);
        if (v271 >= v270 >> 1)
        {
          sub_1BC6701A4((v270 > 1), v271 + 1, 1);
          v262 = v657;
        }

        *(v262 + 16) = v271 + 1;
        (*(v590 + 32))(v262 + ((*(v590 + 80) + 32) & ~*(v590 + 80)) + *(v590 + 72) * v271, v267, v591);
        v265 += v595;
        --v261;
      }

      while (v261);

      v47 = v594;
      v259 = v588;
    }

    else
    {

      v262 = MEMORY[0x1E69E7CC0];
    }

    v657 = v262;
    sub_1BC670078(v259);
    v512 = v657;
    v513 = *(v657 + 16);
    v108 = v579;
    v515 = v576;
    v514 = v577;
    v516 = v591;
    if (!v513)
    {

      v558._countAndFlagsBits = 0xD000000000000022;
      v558._object = 0x80000001BC770F40;
      SCLocalizedStringKey.init(stringLiteral:)(v558);
      v559 = v657;
      v560 = v658;
      v561 = type metadata accessor for InterventionScreenModel.Bullet();
      v562 = objc_allocWithZone(v561);
      v563 = &v562[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v563 = v559;
      v563[1] = v560;
      v564 = &v562[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v564 = 0x6C2D74656C6C7562;
      *(v564 + 1) = 0xEB000000006B636FLL;
      *&v562[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
      v624.receiver = v562;
      v624.super_class = v561;
      v99 = objc_msgSendSuper2(&v624, sel_init);
      goto LABEL_231;
    }

    if (v513 == 1)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v541._countAndFlagsBits = 0xD000000000000022;
      v541._object = 0x80000001BC770F10;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v541);
      v542 = v574;
      v543 = v575;
      if (*(v512 + 16))
      {
        v544 = v590;
        v545 = v577;
        (*(v590 + 16))(v577, v512 + ((*(v544 + 80) + 32) & ~*(v544 + 80)), v591);

        (*(v543 + 104))(v515, *MEMORY[0x1E697B5A0], v542);
        v546 = sub_1BC75A0F0();
        v548 = v547;
        (*(v543 + 8))(v515, v542);
        (*(v544 + 8))(v545, v591);
        v549._countAndFlagsBits = v546;
        v549._object = v548;
        v550 = v578;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v549);

        v551._countAndFlagsBits = 0;
        v551._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v551);
        SCLocalizedStringKey.init(stringInterpolation:)(v550, &v657);
        v552 = v657;
        v553 = v658;
        v554 = type metadata accessor for InterventionScreenModel.Bullet();
        v555 = objc_allocWithZone(v554);
        v556 = &v555[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v556 = v552;
        v556[1] = v553;
        v557 = &v555[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v557 = 0x6C2D74656C6C7562;
        *(v557 + 1) = 0xEB000000006B636FLL;
        *&v555[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
        v625.receiver = v555;
        v625.super_class = v554;
        v99 = objc_msgSendSuper2(&v625, sel_init);
        goto LABEL_231;
      }

      __break(1u);
    }

    else
    {
      v517 = v575;
      if (v513 != 2)
      {

        v565._countAndFlagsBits = 0xD000000000000022;
        v565._object = 0x80000001BC770EB0;
        SCLocalizedStringKey.init(stringLiteral:)(v565);
        v566 = v657;
        v567 = v658;
        v568 = type metadata accessor for InterventionScreenModel.Bullet();
        v569 = objc_allocWithZone(v568);
        v570 = &v569[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v570 = v566;
        v570[1] = v567;
        v571 = &v569[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v571 = 0x6C2D74656C6C7562;
        *(v571 + 1) = 0xEB000000006B636FLL;
        *&v569[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
        v627.receiver = v569;
        v627.super_class = v568;
        v99 = objc_msgSendSuper2(&v627, sel_init);
        goto LABEL_231;
      }

      v594 = v47;
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v518._countAndFlagsBits = 0xD000000000000022;
      v518._object = 0x80000001BC770EE0;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v518);
      if (*(v512 + 16))
      {
        v108 = v590;
        v519 = *(v590 + 16);
        v588 = (v512 + ((*(v108 + 80) + 32) & ~*(v108 + 80)));
        v596 = (v590 + 16);
        v593 = v519;
        v519(v514);
        v520 = *(v517 + 104);
        LODWORD(v592) = *MEMORY[0x1E697B5A8];
        v521 = v574;
        v595 = v517 + 104;
        v589 = v520;
        (v520)(v515);
        v522 = sub_1BC75A0F0();
        v524 = v523;
        v587 = *(v517 + 8);
        (v587)(v515, v521);
        v586 = v108[1];
        (v586)(v514, v516);
        v525._countAndFlagsBits = v522;
        v525._object = v524;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v525);

        v526._countAndFlagsBits = 32;
        v526._object = 0xE100000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v526);
        if (*(v512 + 16) >= 2uLL)
        {
          v527 = v591;
          (v593)(v514, v588 + v108[9], v591);

          v528 = v574;
          (v589)(v515, v592, v574);
          v529 = sub_1BC75A0F0();
          v531 = v530;
          (v587)(v515, v528);
          (v586)(v514, v527);
          v532._countAndFlagsBits = v529;
          v532._object = v531;
          v533 = v578;
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v532);

          v534._countAndFlagsBits = 0;
          v534._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v534);
          SCLocalizedStringKey.init(stringInterpolation:)(v533, &v657);
          v535 = v657;
          v536 = v658;
          v537 = type metadata accessor for InterventionScreenModel.Bullet();
          v538 = objc_allocWithZone(v537);
          v539 = &v538[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v539 = v535;
          v539[1] = v536;
          v540 = &v538[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v540 = 0x6C2D74656C6C7562;
          *(v540 + 1) = 0xEB000000006B636FLL;
          *&v538[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
          v626.receiver = v538;
          v626.super_class = v537;
          v457 = objc_msgSendSuper2(&v626, sel_init);
          v496 = v594;
          goto LABEL_232;
        }

        goto LABEL_251;
      }
    }

    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v64 = swift_getEnumCaseMultiPayload();
  if (v64 > 4)
  {
    if (v64 <= 6)
    {
      if (v64 != 5)
      {
        if (v63 != 1)
        {
          if (!v63)
          {
            v434._countAndFlagsBits = 0xD000000000000032;
            v434._object = 0x80000001BC771110;
            SCLocalizedStringKey.init(stringLiteral:)(v434);
            v435 = v657;
            v436 = v658;
            v437 = type metadata accessor for InterventionScreenModel.Bullet();
            v438 = objc_allocWithZone(v437);
            v439 = &v438[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v439 = v435;
            v439[1] = v436;
            v440 = &v438[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v440 = 0x732D74656C6C7562;
            *(v440 + 1) = 0xEA00000000006461;
            *&v438[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
            v614.receiver = v438;
            v614.super_class = v437;
            v62 = objc_msgSendSuper2(&v614, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        goto LABEL_152;
      }

      v117 = v581;
      sub_1BC66FDD8(v51, v581, type metadata accessor for InterventionConfig.Layout);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

      (*(v593 + 1))(v117, v592);
      if (v63)
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (v64 != 7)
      {
        if (v64 == 8)
        {
          if (v63)
          {
            if (v63 != 1)
            {
              goto LABEL_254;
            }

            goto LABEL_84;
          }

LABEL_212:
          sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
          v419._countAndFlagsBits = 0xD00000000000001DLL;
          v419._object = 0x80000001BC7711D0;
          SCLocalizedStringKey.init(stringLiteral:)(v419);
          v420 = v657;
          v421 = v658;
          v422 = type metadata accessor for InterventionScreenModel.Bullet();
          v423 = objc_allocWithZone(v422);
          v424 = &v423[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v424 = v420;
          v424[1] = v421;
          v425 = &v423[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v425 = 0x732D74656C6C7562;
          *(v425 + 1) = 0xEA00000000006461;
          *&v423[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
          v610.receiver = v423;
          v610.super_class = v422;
          v99 = objc_msgSendSuper2(&v610, sel_init);
          goto LABEL_231;
        }

        if (v63 != 1)
        {
          if (v63)
          {
            goto LABEL_254;
          }

          goto LABEL_150;
        }

LABEL_214:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v426._countAndFlagsBits = 0xD000000000000021;
        v426._object = 0x80000001BC771150;
        SCLocalizedStringKey.init(stringLiteral:)(v426);
        v427 = v657;
        v428 = v658;
        v429 = type metadata accessor for InterventionScreenModel.Bullet();
        v430 = objc_allocWithZone(v429);
        v431 = &v430[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v431 = v427;
        v431[1] = v428;
        v432 = &v430[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v430[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
        v432[15] = -18;
        v433 = &v430[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v433 = 0;
        *(v433 + 1) = 0;
        v613.receiver = v430;
        v613.super_class = v429;
        v99 = objc_msgSendSuper2(&v613, sel_init);
        goto LABEL_231;
      }

      if (v63)
      {
LABEL_137:
        if (v63 != 1)
        {
          goto LABEL_254;
        }

        goto LABEL_152;
      }
    }

LABEL_145:
    sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
    v223._countAndFlagsBits = 0xD000000000000026;
    v223._object = 0x80000001BC7710E0;
    SCLocalizedStringKey.init(stringLiteral:)(v223);
    v224 = v657;
    v225 = v658;
    v226 = type metadata accessor for InterventionScreenModel.Bullet();
    v227 = objc_allocWithZone(v226);
    v228 = &v227[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v228 = v224;
    v228[1] = v225;
    v229 = &v227[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v229 = 0x732D74656C6C7562;
    *(v229 + 1) = 0xEA00000000006461;
    *&v227[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
    v615.receiver = v227;
    v615.super_class = v226;
    v99 = objc_msgSendSuper2(&v615, sel_init);
    goto LABEL_231;
  }

  if (v64 <= 1)
  {
    if (!v64)
    {
      if (v63 == 1)
      {
LABEL_84:
        sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
        v109._countAndFlagsBits = 0xD00000000000001ELL;
        v109._object = 0x80000001BC7711B0;
        SCLocalizedStringKey.init(stringLiteral:)(v109);
        v110 = v657;
        v111 = v658;
        v112 = type metadata accessor for InterventionScreenModel.Bullet();
        v113 = objc_allocWithZone(v112);
        v114 = &v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v114 = v110;
        v114[1] = v111;
        v115 = &v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
        v115[15] = -18;
        v116 = &v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v116 = 0;
        *(v116 + 1) = 0;
        v611.receiver = v113;
        v611.super_class = v112;
        v99 = objc_msgSendSuper2(&v611, sel_init);
        goto LABEL_231;
      }

      if (v63)
      {
        goto LABEL_254;
      }

      goto LABEL_212;
    }

    if (!v63)
    {
LABEL_150:
      sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
      v230._countAndFlagsBits = 0xD000000000000020;
      v230._object = 0x80000001BC771180;
      SCLocalizedStringKey.init(stringLiteral:)(v230);
      v231 = v657;
      v232 = v658;
      v233 = type metadata accessor for InterventionScreenModel.Bullet();
      v234 = objc_allocWithZone(v233);
      v235 = &v234[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v235 = v231;
      v235[1] = v232;
      v236 = &v234[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v236 = 0x732D74656C6C7562;
      *(v236 + 1) = 0xEA00000000006461;
      *&v234[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
      v612.receiver = v234;
      v612.super_class = v233;
      v99 = objc_msgSendSuper2(&v612, sel_init);
      goto LABEL_231;
    }

    if (v63 != 1)
    {
      goto LABEL_254;
    }

    goto LABEL_214;
  }

  if (v64 == 2)
  {
    if (v63 == 1)
    {
      v199._countAndFlagsBits = 0xD00000000000002CLL;
      v199._object = 0x80000001BC771050;
      SCLocalizedStringKey.init(stringLiteral:)(v199);
      v200 = v657;
      v201 = v658;
      v202 = type metadata accessor for InterventionScreenModel.Bullet();
      v203 = objc_allocWithZone(v202);
      v204 = &v203[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v204 = v200;
      v204[1] = v201;
      v205 = &v203[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      strcpy(&v203[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
      v205[15] = -18;
      v206 = &v203[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
      *v206 = 0;
      *(v206 + 1) = 0;
      v618.receiver = v203;
      v618.super_class = v202;
      v62 = objc_msgSendSuper2(&v618, sel_init);
      goto LABEL_235;
    }

    if (!v63)
    {
      v389._countAndFlagsBits = 0xD00000000000002BLL;
      v389._object = 0x80000001BC771080;
      SCLocalizedStringKey.init(stringLiteral:)(v389);
      v390 = v657;
      v391 = v658;
      v392 = type metadata accessor for InterventionScreenModel.Bullet();
      v393 = objc_allocWithZone(v392);
      v394 = &v393[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v394 = v390;
      v394[1] = v391;
      v395 = &v393[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v395 = 0xD000000000000015;
      *(v395 + 1) = 0x80000001BC770970;
      v396 = &v393[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
      *v396 = 0;
      *(v396 + 1) = 0;
      v617.receiver = v393;
      v617.super_class = v392;
      v62 = objc_msgSendSuper2(&v617, sel_init);
      goto LABEL_235;
    }

    goto LABEL_254;
  }

  if (v64 != 3)
  {
    v222 = v582;
    sub_1BC66FDD8(v51, v582, type metadata accessor for InterventionConfig.Layout);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);

    (*(v593 + 1))(v222, v592);
    if (v63 != 1)
    {
      if (v63)
      {
        goto LABEL_254;
      }

      goto LABEL_145;
    }

LABEL_152:
    sub_1BC66FE40(v51, type metadata accessor for InterventionConfig.Layout);
    v237._countAndFlagsBits = 0xD000000000000027;
    v237._object = 0x80000001BC7710B0;
    SCLocalizedStringKey.init(stringLiteral:)(v237);
    v238 = v657;
    v239 = v658;
    v240 = type metadata accessor for InterventionScreenModel.Bullet();
    v241 = objc_allocWithZone(v240);
    v242 = &v241[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v242 = v238;
    v242[1] = v239;
    v243 = &v241[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    strcpy(&v241[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-bubble");
    *(v243 + 7) = -4864;
    *&v241[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761020;
    v616.receiver = v241;
    v616.super_class = v240;
    v99 = objc_msgSendSuper2(&v616, sel_init);
    goto LABEL_231;
  }

  if (v63 == 1)
  {
    v65._countAndFlagsBits = 0xD000000000000030;
    v65._object = 0x80000001BC770FE0;
    SCLocalizedStringKey.init(stringLiteral:)(v65);
    v66 = v657;
    v67 = v658;
    v68 = type metadata accessor for InterventionScreenModel.Bullet();
    v69 = objc_allocWithZone(v68);
    v70 = &v69[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v70 = v66;
    v70[1] = v67;
    v71 = &v69[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    strcpy(&v69[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
    v71[15] = -18;
    v72 = &v69[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
    *v72 = 0;
    *(v72 + 1) = 0;
    v620.receiver = v69;
    v620.super_class = v68;
    v62 = objc_msgSendSuper2(&v620, sel_init);
    goto LABEL_235;
  }

  if (!v63)
  {
    v412._countAndFlagsBits = 0xD00000000000002FLL;
    v412._object = 0x80000001BC771020;
    SCLocalizedStringKey.init(stringLiteral:)(v412);
    v413 = v657;
    v414 = v658;
    v415 = type metadata accessor for InterventionScreenModel.Bullet();
    v416 = objc_allocWithZone(v415);
    v417 = &v416[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v417 = v413;
    v417[1] = v414;
    v418 = &v416[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v418 = 0x732D74656C6C7562;
    *(v418 + 1) = 0xEA00000000006461;
    *&v416[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
    v619.receiver = v416;
    v619.super_class = v415;
    v62 = objc_msgSendSuper2(&v619, sel_init);
    goto LABEL_235;
  }

LABEL_254:
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

id _sSo34SCUIInterventionScreenModelFactoryC26SensitiveContentAnalysisUIE5model3for8workflow4type7optionsSo0abC8Protocol_pSo0afB0V_So0A8WorkflowVSo0A4TypeVSo0A7OptionsVtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InterventionScreenModel(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v18[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v18[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC6E53B4(a3);
  v19 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1BC6E3EAC(a2, 0, v13, a4, v10, v16);
  sub_1BC66FCA4(v16, &v18[OBJC_IVAR___SCUIInterventionScreenModel_config]);
  sub_1BC75A110();
  *&v18[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v21.receiver = v18;
  v21.super_class = v17;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_1BC673F08(uint64_t a1)
{
  result = type metadata accessor for InterventionConfig(319);
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

unint64_t sub_1BC6741B0()
{
  result = qword_1EBCDBF78;
  if (!qword_1EBCDBF78)
  {
    sub_1BC759C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBF78);
  }

  return result;
}

unint64_t sub_1BC674230()
{
  result = qword_1EBCDC228;
  if (!qword_1EBCDC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC230, qword_1BC761230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC228);
  }

  return result;
}

unint64_t sub_1BC674298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE32D0[0];
  if (!qword_1EBCE32D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE32D0);
  }

  return result;
}

uint64_t sub_1BC6742F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC674314, 0, 0);
}

uint64_t sub_1BC674314()
{
  v18 = v0;
  if (SBSGetScreenLockStatus())
  {
    if (qword_1EBCE33E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1BC75A4E0();
    v0[4] = __swift_project_value_buffer(v1, qword_1EBCF4478);
    v2 = sub_1BC75A4C0();
    v3 = sub_1BC75BF40();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BC630000, v2, v3, "Requesting screen unlock", v4, 2u);
      MEMORY[0x1BFB27EF0](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1BC674618;
    v6 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 6, 0, 0, 0xD00000000000002BLL, 0x80000001BC7718F0, sub_1BC674914, 0, v6);
  }

  else
  {
    if (qword_1EBCE33E0 != -1)
    {
      swift_once();
    }

    v7 = sub_1BC75A4E0();
    __swift_project_value_buffer(v7, qword_1EBCF4478);
    v8 = sub_1BC75A4C0();
    v9 = sub_1BC75BF50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = sub_1BC75C2C0();
      v14 = sub_1BC674BD8(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1BC630000, v8, v9, "%s: Screen is not locked, continuing...", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1BFB27EF0](v11, -1, -1);
      MEMORY[0x1BFB27EF0](v10, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1BC674618()
{

  return MEMORY[0x1EEE6DFA0](sub_1BC674714, 0, 0);
}

uint64_t sub_1BC674714(uint64_t a1)
{
  v15 = v1;
  v2 = *(v1 + 48);
  v3 = sub_1BC75A4C0();
  if (v2 == 1)
  {
    v4 = sub_1BC75BF40();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BC630000, v3, v4, "Unlocked screen.", v5, 2u);
      MEMORY[0x1BFB27EF0](v5, -1, -1);
    }

    v6 = *(v1 + 8);
  }

  else
  {
    v7 = sub_1BC75BF50();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v10 = sub_1BC75C2C0();
      v12 = sub_1BC674BD8(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1BC630000, v3, v7, "%s: User didn't unlock", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1BFB27EF0](v9, -1, -1);
      MEMORY[0x1BFB27EF0](v8, -1, -1);
    }

    sub_1BC75BDB0();
    sub_1BC674B80();
    swift_allocError();
    sub_1BC75BA20();
    swift_willThrow();
    v6 = *(v1 + 8);
  }

  return v6();
}

void sub_1BC674914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  aBlock[4] = sub_1BC675180;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BC674AAC;
  aBlock[3] = &block_descriptor;
  v8 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v8);
}

uint64_t sub_1BC674AAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);
}

uint64_t sub_1BC674B04()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4478);
  __swift_project_value_buffer(v0, qword_1EBCF4478);
  return sub_1BC75A4D0();
}

unint64_t sub_1BC674B80()
{
  result = qword_1EBCDC238;
  if (!qword_1EBCDC238)
  {
    sub_1BC75BDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC238);
  }

  return result;
}

unint64_t sub_1BC674BD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BC674CA4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BC65F494(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BC674CA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BC674DB0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BC75C310();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1BC674DB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BC674DFC(a1, a2);
  sub_1BC674F2C(&unk_1F3B28860);
  return v3;
}

void *sub_1BC674DFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BC675018(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BC75C310();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BC75BC10();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BC675018(v10, 0);
        result = sub_1BC75C260();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BC674F2C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BC67508C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1BC675018(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE50, &unk_1BC76CB40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BC67508C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE50, &unk_1BC76CB40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BC675180(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  return sub_1BC75BDA0();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AXIdentifiers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXIdentifiers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXIdentifiers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AXIdentifiers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXIdentifiers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t static AXIdentifiers.interventionScreen(_:)(uint64_t a1)
{
  v1 = 0xD000000000000022;
  if (a1 == 1)
  {
    v1 = 0xD000000000000021;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

id sub_1BC6755E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a3, a2);
  if (v4)
  {
    v5 = sub_1BC75BB30();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _s26SensitiveContentAnalysisUI13AXIdentifiersC24interventionScreenActionySSSgSo016SCUIInterventiongH2IdVFZ_0(uint64_t a1)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0x754253497478656ELL;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return 0x497373696D736964;
      }

      return 0x426E776F6E6B6E75;
    }

    return result;
  }

  if (a1 <= 5)
  {
    if (a1 != 4)
    {
      return 0x426567617373656DLL;
    }

    v3 = 0x646564656568;
    return v3 & 0xFFFFFFFFFFFFLL | 0x5349000000000000;
  }

  if (a1 == 6)
  {
    v3 = 0x737361707962;
    return v3 & 0xFFFFFFFFFFFFLL | 0x5349000000000000;
  }

  if (a1 != 7)
  {
    return 0x426E776F6E6B6E75;
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI13AXIdentifiersC14helpMenuActionySSSgSo012SCUIMoreHelpgH2IDVFZ_0(uint64_t a1)
{
  result = 0;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          return 0xD000000000000013;
        case 9:
          return 0x74747542776F6873;
        case 10:
          return 0xD000000000000011;
      }

      return 0x426E776F6E6B6E75;
    }

    if (a1 != 6)
    {
      return 0x7542435365646968;
    }
  }

  else if (a1 > 2)
  {
    if ((a1 - 4) < 2)
    {
      return 0xD000000000000012;
    }

    if (a1 != 3)
    {
      return 0x426E776F6E6B6E75;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return 0x426567617373656DLL;
    }

    if (a1 == 2)
    {
      return 0xD000000000000013;
    }

    return 0x426E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_1BC675998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  v4 = type metadata accessor for InterventionConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(v0 + OBJC_IVAR___SCUIInterventionViewController__config, v12);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v9(v3, 0, 1, v4);
    sub_1BC66FCA4(v3, v7);
    v10 = *&v7[*(v4 + 28)];

    sub_1BC67876C(v7, type metadata accessor for InterventionConfig);
    return v10;
  }

  else
  {
    v9(v3, 1, 1, v4);
    sub_1BC66008C(v3, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC675BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  v4 = type metadata accessor for InterventionConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(v0 + OBJC_IVAR___SCUIInterventionViewController__config, v12);
  v8 = swift_dynamicCast();
  v9 = *(v5 + 56);
  if (v8)
  {
    v9(v3, 0, 1, v4);
    sub_1BC66FCA4(v3, v7);
    v10 = *&v7[*(v4 + 24)];
    sub_1BC67876C(v7, type metadata accessor for InterventionConfig);
    return v10;
  }

  else
  {
    v9(v3, 1, 1, v4);
    sub_1BC66008C(v3, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC675E34(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(v1 + OBJC_IVAR___SCUIInterventionViewController__config, v15);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    v12 = sub_1BC66FCA4(v5, v9);
    v13 = a1(v12);
    sub_1BC67876C(v9, type metadata accessor for InterventionConfig);
    return v13;
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_1BC66008C(v5, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

void sub_1BC676124()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___SCUIInterventionViewController_remoteController;
  v10 = *&v1[OBJC_IVAR___SCUIInterventionViewController_remoteController];
  if (v10)
  {
    v11 = v10;
    [v11 didMoveToParentViewController_];
    v12 = [v11 view];
    if (!v12)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v13 = v12;
    [v12 removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  sub_1BC65F494(&v1[OBJC_IVAR___SCUIInterventionViewController__config], v21);
  if (swift_dynamicCast())
  {
    type metadata accessor for RemoteInterventionViewController();
    v14 = *(v6 + 56);
    v6 += 56;
    v14(v4, 0, 1, v5);
    sub_1BC66FCA4(v4, v8);
    v15 = swift_unknownObjectRetain();
    v16 = sub_1BC6E9EA0(v15, v8);
    v5 = *&v1[v9];
    *&v1[v9] = v16;
    v17 = v16;

    v4 = v17;
    [v1 addChildViewController_];
    v18 = [v1 view];
    if (v18)
    {
      v5 = v18;
      [v18 setTranslatesAutoresizingMaskIntoConstraints_];

      v19 = [v1 view];
      if (v19)
      {
        v5 = v19;
        v20 = [v4 view];

        if (v20)
        {
          [v5 addSubview_];

          [v4 didMoveToParentViewController_];
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_1BC66008C(v4, &qword_1EBCDC250, &qword_1BC761340);
  sub_1BC75C3D0();
  __break(1u);
}

id sub_1BC676488(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BC75BA30();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow:a1 contextDictionary:v3];

  return v4;
}

id sub_1BC6765B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BC75BA30();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow:a1 contextDictionary:v5 options:a3];

  return v6;
}

id sub_1BC676950(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - v9;
  v11 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InterventionConfig(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v26 - v18;
  sub_1BC6E53B4(a4);
  if (a2)
  {

    v20 = sub_1BC75BA30();
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() getAnalyticsUIContextWith_];

  if (v21)
  {
    (*((*MEMORY[0x1E69E7D40] & *v21) + 0x58))();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v23 - 8) + 56))(v10, v22, 1, v23);
  sub_1BC6E3EAC(a1, a2, v13, a3 | 1, v10, v19);
  sub_1BC678AE4(v19, v17, type metadata accessor for InterventionConfig);
  v24 = [v26[1] initWithTypeErasedConfig_];
  swift_unknownObjectRelease();
  sub_1BC67876C(v19, type metadata accessor for InterventionConfig);
  return v24;
}

id SCUIInterventionViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SCUIInterventionViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SCUIInterventionViewController_remoteController) = 0;
  sub_1BC75C3D0();
  __break(1u);
}

id SCUIInterventionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1BC75BB30();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id sub_1BC677130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;

  sub_1BC75A060();
  sub_1BC75A070();

  if (v3)
  {

LABEL_5:
    v19 = v28;
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v19;
  }

  v27 = a3;
  sub_1BC759EC0();
  sub_1BC759E50();
  sub_1BC75C100();
  v16 = *(v10 + 8);
  v16(v13, v9);
  sub_1BC66008C(v8, &unk_1EBCDBD90, &unk_1BC75F850);
  v17 = sub_1BC67E9F0();
  if (v18)
  {

    type metadata accessor for SCAError(0);
    v29 = 20;
    sub_1BC678250(MEMORY[0x1E69E7CC0]);
    sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
    sub_1BC759700();
    swift_willThrow();
    v16(v15, v9);
    goto LABEL_5;
  }

  v21 = v17;
  v22 = sub_1BC67EDF4(v27);
  v24 = (v23 & 1) == 0 && v22;
  v26 = v16;
  if (a2)
  {
    v25 = sub_1BC75BA30();
  }

  else
  {
    v25 = 0;
  }

  v19 = [v28 initWithWorkflow:v24 contextDictionary:v25 options:v27 type:{v21, v26}];

  v26(v15, v9);
  return v19;
}

void SCUIInterventionViewController.dismissInterventionFacade(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1BC67768C;
    v4[3] = &block_descriptor_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_1BC67768C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id SCUIInterventionViewController.init(kind:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for InterventionConfig(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - v11;
  sub_1BC759EC0();
  sub_1BC6779F4(a1, v6, v12);
  if (v2)
  {
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
    sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1BC678AE4(v12, v10, type metadata accessor for InterventionConfig);
    v1 = [v13 initWithTypeErasedConfig_];
    swift_unknownObjectRelease();
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
    sub_1BC67876C(v12, type metadata accessor for InterventionConfig);
  }

  return v1;
}

uint64_t sub_1BC6779F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v22 = a2;
  v21 = a1;
  v5 = type metadata accessor for SCUIInterventionKind(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v20 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  sub_1BC75A060();
  sub_1BC75A070();

  if (!v3)
  {
    v20 = a3;
    sub_1BC759E50();
    sub_1BC75C100();
    v19 = *(v9 + 8);
    v19(v15, v8);
    sub_1BC678AE4(v21, v7, type metadata accessor for SCUIInterventionKind);
    (*(v9 + 16))(v12, v17, v8);
    InterventionConfig.init(kind:policy:options:)(v7, v12, 1, v20);
    return (v19)(v17, v8);
  }

  return result;
}

id SCUIInterventionViewController.init(kind:policy:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  sub_1BC6779F4(a1, a2, &v14 - v10);
  if (v3)
  {
    sub_1BC66008C(a2, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
  }

  else
  {
    v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1BC678AE4(v11, v9, type metadata accessor for InterventionConfig);
    v2 = [v12 initWithTypeErasedConfig_];
    swift_unknownObjectRelease();
    sub_1BC66008C(a2, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
    sub_1BC67876C(v11, type metadata accessor for InterventionConfig);
  }

  return v2;
}

uint64_t sub_1BC677E04(uint64_t a1)
{
  v2 = sub_1BC67870C(&qword_1EBCDC318, type metadata accessor for SCAError, &unk_1BC761474);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BC677E70(uint64_t a1)
{
  v2 = sub_1BC67870C(&qword_1EBCDC318, type metadata accessor for SCAError, &unk_1BC761474);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BC677EE0(uint64_t a1)
{
  v2 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BC677F64(uint64_t a1)
{
  v2 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BC677FD0(uint64_t a1)
{
  v2 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BC67803C(void *a1, uint64_t a2)
{
  v4 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BC6780F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BC67816C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC75C700();
  sub_1BC75BA70();
  return sub_1BC75C720();
}

uint64_t sub_1BC6781CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1BC678250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC350, &unk_1BC764270);
    v3 = sub_1BC75C420();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BC678B4C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BC65B77C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BC678BBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1BC678360(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1BC759EE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = sub_1BC75A060();
  sub_1BC75A070();

  if (!v2)
  {
    v29 = v8;
    sub_1BC759EC0();
    sub_1BC759E50();
    sub_1BC75C100();
    v16 = *(v9 + 8);
    v17 = v12;
    v18 = v29;
    v16(v17, v29);
    sub_1BC66008C(v7, &unk_1EBCDBD90, &unk_1BC75F850);
    v19 = sub_1BC67E9F0();
    if (v20)
    {
      type metadata accessor for SCAError(0);
      v15 = v21;
      v30 = 20;
      sub_1BC678250(MEMORY[0x1E69E7CC0]);
      sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
      sub_1BC759700();
      swift_willThrow();
      v16(v14, v18);
    }

    else
    {
      v23 = v19;
      v24 = sub_1BC67EDF4(a2);
      v26 = (v25 & 1) == 0 && v24;
      if (a1)
      {
        v27 = sub_1BC75BA30();
      }

      else
      {
        v27 = 0;
      }

      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow:v26 contextDictionary:v27 options:a2 type:v23];

      v16(v14, v29);
    }
  }

  return v15;
}

unint64_t sub_1BC678690()
{
  result = qword_1EBCDC280;
  if (!qword_1EBCDC280)
  {
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC280);
  }

  return result;
}

uint64_t sub_1BC67870C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC67876C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6789F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC340;
  if (!qword_1EBCDC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC340);
  }

  return result;
}

uint64_t sub_1BC678AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC678B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC358, &unk_1BC7615C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BC678BBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t VideoCallOverlayBackground.Kind.localizedText.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759FE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67D594(v2, v13, type metadata accessor for VideoCallOverlayBackground.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1BC67D8E0(v13, type metadata accessor for VideoCallOverlayBackground.Kind);
      v29._object = 0x80000001BC771DD0;
      v29._countAndFlagsBits = 0xD000000000000016;
      result = SCLocalizedStringKey.init(stringLiteral:)(v29).localized._countAndFlagsBits;
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30);

    (*(v8 + 32))(v10, v13, v7);
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    v20._countAndFlagsBits = sub_1BC759F80();
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    v22._countAndFlagsBits = sub_1BC759F80();
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

    v17 = "AUDIO_VIDEO_PAUSED_YOU";
    v18 = 0xD00000000000002BLL;
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30);

    (*(v8 + 32))(v10, v13, v7);
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    v24._countAndFlagsBits = sub_1BC759F80();
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v24);

    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
    v26._countAndFlagsBits = sub_1BC759F80();
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v26);

    v17 = "SED_OTHER_JOINED_YOU_SHARED";
    v18 = 0xD000000000000020;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30);

    (*(v8 + 32))(v10, v13, v7);
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
    v16._countAndFlagsBits = sub_1BC759F80();
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

    v17 = "SED_OTHER_JOINED";
    v18 = 0xD000000000000019;
  }

  v27 = v17 | 0x8000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v18);
  SCLocalizedStringKey.init(stringInterpolation:)(v6, v31);
  result = (*(v8 + 8))(v10, v7);
LABEL_9:
  v30 = v31[1];
  *a1 = v31[0];
  a1[1] = v30;
  return result;
}

BOOL VideoCallOverlayBackground.Kind.isGroupCall.getter()
{
  v1 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67D594(v0, v3, type metadata accessor for VideoCallOverlayBackground.Kind);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v8 = *(*v3 + 16);

    return v8 > 1;
  }

  else
  {
    v4 = *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48)];
    v5 = sub_1BC759FE0();
    (*(*(v5 - 8) + 8))(v3, v5);
    v6 = *(v4 + 16);

    return v6 != 0;
  }
}

uint64_t sub_1BC679138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1BC67D898(&qword_1EDDCE6E0, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C8]);
    v21 = sub_1BC75BAB0();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t VideoCallOverlayBackground.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BC75B810();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3D0, &qword_1BC7616B0);
  return sub_1BC67939C(v1, a1 + *(v4 + 44));
}

uint64_t sub_1BC67939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC568, &qword_1BC761CF0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  nullsub_1();
  v10 = sub_1BC75A980();
  v11 = sub_1BC75B000();
  *v9 = sub_1BC75ACD0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC570, &qword_1BC761CF8);
  sub_1BC679504(a1, &v9[*(v12 + 44)]);
  sub_1BC660024(v9, v7, &qword_1EBCDC568, &qword_1BC761CF0);
  *a2 = v10;
  *(a2 + 8) = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC578, &qword_1BC761D00);
  sub_1BC660024(v7, a2 + *(v13 + 48), &qword_1EBCDC568, &qword_1BC761CF0);
  sub_1BC66008C(v9, &qword_1EBCDC568, &qword_1BC761CF0);
  return sub_1BC66008C(v7, &qword_1EBCDC568, &qword_1BC761CF0);
}

uint64_t sub_1BC679504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = type metadata accessor for FollowUpButtons(0);
  v3 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC580, &qword_1BC761D08);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v70 - v7;
  v9 = sub_1BC75B5D0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC588, &unk_1BC761D10);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  sub_1BC75B5C0();
  (*(v10 + 104))(v12, *MEMORY[0x1E6981630], v9);
  v19 = sub_1BC75B610();

  (*(v10 + 8))(v12, v9);
  v20 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
  sub_1BC75ACF0();
  v22 = sub_1BC75AD00();
  (*(*(v22 - 8) + 56))(v20 + v21, 0, 1, v22);
  *v20 = swift_getKeyPath();
  *v18 = v19;
  *(v18 + 1) = 0;
  *(v18 + 8) = 1;
  v23 = sub_1BC75B530();
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10) + 36)] = v23;
  v24 = sub_1BC75B0A0();
  v25 = *(*(v24 - 8) + 56);
  v25(v8, 1, 1, v24);
  v26 = sub_1BC75B0B0();
  sub_1BC66008C(v8, &qword_1EBCDC580, &qword_1BC761D08);
  KeyPath = swift_getKeyPath();
  v28 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A8, &qword_1BC761D60) + 36)];
  *v28 = KeyPath;
  v28[1] = v26;
  sub_1BC75B810();
  sub_1BC75A810();
  v29 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B0, &qword_1BC761D68) + 36)];
  v30 = v123[1];
  *v29 = v123[0];
  *(v29 + 1) = v30;
  *(v29 + 2) = v123[2];
  v31 = sub_1BC75B000();
  v32 = &v18[*(v14 + 44)];
  *v32 = v31;
  *(v32 + 8) = 0u;
  *(v32 + 24) = 0u;
  v32[40] = 1;
  VideoCallOverlayBackground.Kind.localizedText.getter(&v89);
  v81 = v89;
  v75 = sub_1BC651E78(&v81, v33, v34);
  v78 = v35;
  v79 = v36;
  LOBYTE(v26) = v37;
  v77 = swift_getKeyPath();
  v25(v8, 1, 1, v24);
  *(&v70 + 1) = sub_1BC75B0B0();
  sub_1BC66008C(v8, &qword_1EBCDC580, &qword_1BC761D08);
  *&v70 = swift_getKeyPath();
  v38 = v26 & 1;
  LOBYTE(v89) = v26 & 1;
  v76 = sub_1BC75B530();
  sub_1BC75B810();
  sub_1BC75AA00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BC7615F0;
  LOBYTE(v8) = sub_1BC75B030();
  *(v39 + 32) = v8;
  v40 = sub_1BC75B050();
  *(v39 + 33) = v40;
  v41 = sub_1BC75B020();
  *(v39 + 34) = v41;
  v42 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v8)
  {
    v42 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v40)
  {
    v42 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v41)
  {
    v42 = sub_1BC75B040();
  }

  sub_1BC75A670();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v121 = 0;
  v51 = VideoCallOverlayBackground.Kind.isGroupCall.getter();
  v52 = type metadata accessor for VideoCallOverlayBackground(0);
  v53 = v72;
  sub_1BC660024(a1 + *(v52 + 20), &v72[*(v71 + 20)], &qword_1EBCDBC50, &qword_1BC762D70);
  *v53 = v51;
  v54 = v80;
  sub_1BC660024(v18, v80, &qword_1EBCDC588, &unk_1BC761D10);
  v55 = v74;
  sub_1BC67D594(v53, v74, type metadata accessor for FollowUpButtons);
  v56 = v54;
  v57 = v73;
  sub_1BC660024(v56, v73, &qword_1EBCDC588, &unk_1BC761D10);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5C0, &qword_1BC761DA8);
  v59 = *(v58 + 48);
  *(&v85[6] + 8) = v118;
  *(&v85[3] + 8) = v115;
  *(&v85[4] + 8) = v116;
  *(&v85[5] + 8) = v117;
  *(v85 + 8) = v112;
  v60 = v57 + v59;
  *&v81 = v75;
  *(&v81 + 1) = v78;
  LOBYTE(v82) = v38;
  LODWORD(v71) = v38;
  *(&v82 + 1) = *v120;
  DWORD1(v82) = *&v120[3];
  *(&v82 + 1) = v79;
  *&v83 = v77;
  BYTE8(v83) = 1;
  *(&v83 + 9) = *v119;
  HIDWORD(v83) = *&v119[3];
  v61 = v70;
  v84 = v70;
  *&v85[0] = v76;
  *(&v85[1] + 8) = v113;
  *(&v85[2] + 8) = v114;
  BYTE8(v85[7]) = v42;
  *(&v85[7] + 9) = *v122;
  HIDWORD(v85[7]) = *&v122[3];
  *&v86 = v44;
  *(&v86 + 1) = v46;
  *&v87 = v48;
  *(&v87 + 1) = v50;
  v88 = 0;
  *(v60 + 224) = 0;
  v62 = v82;
  *v60 = v81;
  *(v60 + 16) = v62;
  v63 = v85[1];
  *(v60 + 64) = v85[0];
  *(v60 + 80) = v63;
  v64 = v84;
  *(v60 + 32) = v83;
  *(v60 + 48) = v64;
  v65 = v85[5];
  *(v60 + 128) = v85[4];
  *(v60 + 144) = v65;
  v66 = v85[3];
  *(v60 + 96) = v85[2];
  *(v60 + 112) = v66;
  v67 = v85[7];
  *(v60 + 160) = v85[6];
  *(v60 + 176) = v67;
  v68 = v87;
  *(v60 + 192) = v86;
  *(v60 + 208) = v68;
  sub_1BC67D594(v55, v57 + *(v58 + 64), type metadata accessor for FollowUpButtons);
  sub_1BC660024(&v81, &v89, &qword_1EBCDC5C8, &unk_1BC761DB0);
  sub_1BC67D8E0(v53, type metadata accessor for FollowUpButtons);
  sub_1BC66008C(v18, &qword_1EBCDC588, &unk_1BC761D10);
  sub_1BC67D8E0(v55, type metadata accessor for FollowUpButtons);
  v101 = v115;
  v102 = v116;
  v103 = v117;
  v104 = v118;
  v98 = v112;
  v99 = v113;
  *&v89 = v75;
  *(&v89 + 1) = v78;
  v90 = v71;
  *v91 = *v120;
  *&v91[3] = *&v120[3];
  v92 = v79;
  v93 = v77;
  v94 = 1;
  *v95 = *v119;
  *&v95[3] = *&v119[3];
  v96 = v61;
  v97 = v76;
  v100 = v114;
  v105 = v42;
  *&v106[3] = *&v122[3];
  *v106 = *v122;
  v107 = v44;
  v108 = v46;
  v109 = v48;
  v110 = v50;
  v111 = 0;
  sub_1BC66008C(&v89, &qword_1EBCDC5C8, &unk_1BC761DB0);
  return sub_1BC66008C(v80, &qword_1EBCDC588, &unk_1BC761D10);
}

uint64_t sub_1BC679E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BC67D5FC(a1, a3, type metadata accessor for VideoCallOverlayBackground.Kind);
  v5 = type metadata accessor for VideoCallOverlayBackground(0);
  return sub_1BC65FFBC(a2, a3 + *(v5 + 20), &qword_1EBCDBC50, &qword_1BC762D70);
}

uint64_t sub_1BC679ECC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BC75B810();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3D0, &qword_1BC7616B0);
  return sub_1BC67939C(v1, a1 + *(v4 + 44));
}

uint64_t sub_1BC679F1C@<X0>(uint64_t *a1@<X8>)
{
  v32 = _s6LayoutV4ModeOMa(0);
  MEMORY[0x1EEE9AC00](v32);
  v31 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1BC759CA0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759FE0();
  v28 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67E5EC(&unk_1F3B28998);
  sub_1BC67E754(&unk_1F3B289B8);
  sub_1BC759F70();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC548, &qword_1BC761CE0);
  a1[3] = v30;
  a1[4] = sub_1BC67E8D4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
  v14 = *(v9 + 16);
  v14(boxed_opaque_existential_1, v11, v8);
  *(boxed_opaque_existential_1 + v13) = MEMORY[0x1E69E7CC0];
  type metadata accessor for VideoCallOverlayBackground.Kind(0);
  swift_storeEnumTagMultiPayload();
  v15 = *(type metadata accessor for VideoCallOverlayBackground(0) + 20);
  v16 = v7;
  sub_1BC759EB0();
  v17 = v29;
  sub_1BC759BC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BC761600;
  v20 = v19 + v18;
  v21 = v28;
  v14(v20, v11, v28);
  v22 = v31;
  *v31 = v19;
  swift_storeEnumTagMultiPayload();
  sub_1BC663D18(v16, v17, &unk_1F3B289C8, v22, boxed_opaque_existential_1 + v15);
  v23 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v23 - 8) + 56))(boxed_opaque_existential_1 + v15, 0, 1, v23);
  v24 = sub_1BC75B510();
  LOBYTE(v16) = sub_1BC75B000();
  result = (*(v9 + 8))(v11, v21);
  v26 = boxed_opaque_existential_1 + *(v30 + 36);
  *v26 = v24;
  v26[8] = v16;
  return result;
}

uint64_t sub_1BC67A340@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for VideoStreamFollowUpButton(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = *(type metadata accessor for FollowUpButtons(0) + 20);
  sub_1BC660024(&a1[v16], &v15[*(v4 + 32)], &qword_1EBCDBC50, &qword_1BC762D70);
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  v15[16] = 0;
  *(v15 + 3) = swift_getKeyPath();
  *(v15 + 4) = 0;
  v15[40] = 0;
  v15[*(v4 + 36)] = 2;
  v17 = *a1;
  sub_1BC660024(&a1[v16], &v13[*(v4 + 32)], &qword_1EBCDBC50, &qword_1BC762D70);
  *v13 = swift_getKeyPath();
  *(v13 + 1) = 0;
  v13[16] = 0;
  *(v13 + 3) = swift_getKeyPath();
  *(v13 + 4) = 0;
  v13[40] = 0;
  v13[*(v4 + 36)] = v17;
  sub_1BC67D594(v15, v10, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D594(v13, v7, type metadata accessor for VideoStreamFollowUpButton);
  v18 = v22;
  sub_1BC67D594(v10, v22, type metadata accessor for VideoStreamFollowUpButton);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC540, &qword_1BC761CD8);
  sub_1BC67D594(v7, v18 + *(v19 + 48), type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D8E0(v13, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D8E0(v15, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D8E0(v7, type metadata accessor for VideoStreamFollowUpButton);
  return sub_1BC67D8E0(v10, type metadata accessor for VideoStreamFollowUpButton);
}

uint64_t sub_1BC67A5BC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BC75ACD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3D8, &qword_1BC7616B8);
  return sub_1BC67A340(v1, a1 + *(v3 + 44));
}

uint64_t VideoStreamFollowUpButton.Kind.localizedTitle.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 == 2)
  {
    v4 = 0x80000001BC770500;
    v5 = 0xD000000000000012;
  }

  else if (v3)
  {
    v5 = 0x41435F455641454CLL;
    v4 = 0xEA00000000004C4CLL;
  }

  else
  {
    v5 = 0x4C4C41435F444E45;
    v4 = 0xE800000000000000;
  }

  result = SCLocalizedStringKey.init(stringLiteral:)(*&v5).localized._countAndFlagsBits;
  *a1 = v7;
  a1[1] = v8;
  return result;
}

unint64_t VideoStreamFollowUpButton.Kind.axIdentifier.getter()
{
  if (*v0 == 2)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000024;
  }
}

BOOL static VideoStreamFollowUpButton.Kind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_1BC67A728(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

double VideoStreamFollowUpButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v55 = type metadata accessor for VideoStreamFollowUpButton.Style(0);
  MEMORY[0x1EEE9AC00](v55);
  v4 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for VideoStreamFollowUpButton(0);
  v6 = v5 - 8;
  v45 = *(v5 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3E0, &qword_1BC761728);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3E8, &qword_1BC761730);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3F0, &qword_1BC761738);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v45 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3F8, &qword_1BC761740);
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v45 - v17;
  v18 = *(v6 + 36);
  v19 = *(v2 + v18);
  v49 = v13;
  if (v19 == 2)
  {
    v20 = 0x80000001BC770500;
    v21 = 0xD000000000000012;
  }

  else if (v19)
  {
    v21 = 0x41435F455641454CLL;
    v20 = 0xEA00000000004C4CLL;
  }

  else
  {
    v21 = 0x4C4C41435F444E45;
    v20 = 0xE800000000000000;
  }

  SCLocalizedStringKey.init(stringLiteral:)(*&v21);
  sub_1BC67D594(v2, &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VideoStreamFollowUpButton);
  v22 = v2;
  v23 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v24 = swift_allocObject();
  sub_1BC67D5FC(&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC651F0C(v58, sub_1BC67D664, v24);
  sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
  v25 = v47;
  sub_1BC75B330();

  (*(v46 + 8))(v9, v25);
  v26 = sub_1BC75B0F0();
  KeyPath = swift_getKeyPath();
  sub_1BC65FFBC(v12, v15, &qword_1EBCDC3E0, &qword_1BC761728);
  v28 = v49;
  v29 = &v15[*(v49 + 36)];
  *v29 = KeyPath;
  v29[1] = v26;
  v30 = sub_1BC67D6C0();
  v31 = v51;
  sub_1BC75B370();
  sub_1BC66008C(v15, &qword_1EBCDC3E8, &qword_1BC761730);
  v32 = *(v22 + v18);
  v33 = swift_getKeyPath();
  v34 = v55;
  *(v4 + *(v55 + 20)) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC428, &qword_1BC7617B0);
  swift_storeEnumTagMultiPayload();
  if (qword_1EBCE3898 != -1)
  {
    swift_once();
  }

  v35 = unk_1EBCF4560;
  v58[2] = xmmword_1EBCF4550;
  v58[3] = unk_1EBCF4560;
  v36 = xmmword_1EBCF4570;
  v58[4] = xmmword_1EBCF4570;
  v38 = xmmword_1EBCF4530;
  v37 = unk_1EBCF4540;
  v58[0] = xmmword_1EBCF4530;
  v58[1] = unk_1EBCF4540;
  v4[2] = xmmword_1EBCF4550;
  v4[3] = v35;
  v4[4] = v36;
  *v4 = v38;
  v4[1] = v37;
  *(v4 + *(v34 + 24)) = v32;
  sub_1BC67D860(v58, v57);
  v57[0] = v28;
  v57[1] = v30;
  swift_getOpaqueTypeConformance2();
  sub_1BC67D898(&qword_1EBCDC430, type metadata accessor for VideoStreamFollowUpButton.Style, &unk_1BC7619B0);
  v39 = v48;
  v40 = v54;
  sub_1BC75B200();
  sub_1BC67D8E0(v4, type metadata accessor for VideoStreamFollowUpButton.Style);
  (*(v53 + 8))(v31, v40);
  v41 = sub_1BC75B020();
  v42 = v56;
  (*(v50 + 32))(v56, v39, v52);
  v43 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC438, &qword_1BC7617B8) + 36);
  *v43 = v41;
  result = 0.0;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  *(v43 + 40) = 1;
  return result;
}

uint64_t sub_1BC67AF00()
{
  v1 = type metadata accessor for VideoStreamFollowUpButton(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_1BC75ABB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  if (*(v0 + *(v1 + 28)) == 2)
  {
    v14 = sub_1BC75BE10();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_1BC67D594(v0, v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VideoStreamFollowUpButton);
    sub_1BC75BDE0();
    v15 = sub_1BC75BDD0();
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_1BC67D5FC(v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for VideoStreamFollowUpButton);
    sub_1BC67B7C8(0, 0, v6, &unk_1BC761CD0, v17);
  }

  sub_1BC660024(v0 + *(v1 + 24), v13, &qword_1EBCDBC50, &qword_1BC762D70);
  v20 = type metadata accessor for AnalyticsUIContext(0);
  if ((*(*(v20 - 8) + 48))(v13, 1, v20) == 1)
  {
    sub_1BC66008C(v13, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  else
  {
    AnalyticsUIContext.collectContentInteractionEvent(state:)(1);
    sub_1BC67D8E0(v13, type metadata accessor for AnalyticsUIContext);
  }

  v21 = *(v0 + 24);
  v22 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1BC75BF70();
    v23 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC67D564(v21, v22, 0, sub_1BC635480);
    result = (*(v8 + 8))(v10, v7);
    v21 = v24[0];
    v22 = v24[1];
    if (v24[0] == 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = sub_1BC63302C(*(v0 + 24), *(v0 + 32));
  if (v21 != 1)
  {
LABEL_10:
    sub_1BC71CC90(v21);
    return sub_1BC635468(v21, v22);
  }

  return result;
}

uint64_t sub_1BC67B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1BC75ABB0();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1BC75BDE0();
  v4[9] = sub_1BC75BDD0();
  v6 = swift_task_alloc();
  v4[10] = v6;
  *v6 = v4;
  v6[1] = sub_1BC67B480;

  return sub_1BC6742F0("followUpButtonTapped()", 22, 2);
}

uint64_t sub_1BC67B480()
{
  *(*v1 + 88) = v0;

  v3 = sub_1BC75BD80();
  if (v0)
  {
    v4 = sub_1BC67B758;
  }

  else
  {
    v4 = sub_1BC67B5DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BC67B5DC()
{
  v1 = v0[4];

  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16) != 1)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC67D564(v3, v2, 0, sub_1BC635480);
    (*(v5 + 8))(v4, v6);
    v3 = v0[2];
    if (v3 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v0[2] = v3;
  v0[3] = v2;
  sub_1BC63302C(v3, v2);
  if (v3 != 1)
  {
LABEL_5:
    v10 = v0[3];
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v3, v10);
  }

LABEL_6:

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BC67B758()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC67B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1BC660024(a3, v22 - v9, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v11 = sub_1BC75BE10();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BC66008C(v10, &qword_1EBCDBB20, &qword_1BC75F0D0);
  }

  else
  {
    sub_1BC75BE00();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1BC75BD80();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1BC75BBC0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_1BC67BA78()
{
  sub_1BC75B530();
  v0 = sub_1BC75B550();

  qword_1EBCF4490 = 0x4028000000000000;
  *algn_1EBCF4498 = v0;
  xmmword_1EBCF44A0 = xmmword_1BC761610;
  unk_1EBCF44B0 = xmmword_1BC761620;
  result = 16.0;
  xmmword_1EBCF44C0 = xmmword_1BC761630;
  unk_1EBCF44D0 = xmmword_1BC761640;
  return result;
}

double sub_1BC67BAEC()
{
  sub_1BC75B530();
  v0 = sub_1BC75B550();

  *&xmmword_1EBCF44E0 = 0x4028000000000000;
  *(&xmmword_1EBCF44E0 + 1) = v0;
  xmmword_1EBCF44F0 = xmmword_1BC761650;
  xmmword_1EBCF4500 = xmmword_1BC761660;
  result = 28.0;
  xmmword_1EBCF4510 = xmmword_1BC761670;
  xmmword_1EBCF4520 = xmmword_1BC761640;
  return result;
}

uint64_t sub_1BC67BB60()
{
  if (qword_1EBCE3880 != -1)
  {
    swift_once();
  }

  if (qword_1EBCE3888 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EBCF4500;
  v2[3] = xmmword_1EBCF4510;
  v2[4] = xmmword_1EBCF4520;
  v2[0] = xmmword_1EBCF44E0;
  v2[1] = xmmword_1EBCF44F0;
  xmmword_1EBCF4550 = xmmword_1EBCF4500;
  unk_1EBCF4560 = xmmword_1EBCF4510;
  xmmword_1EBCF4570 = xmmword_1EBCF4520;
  xmmword_1EBCF4530 = xmmword_1EBCF44E0;
  unk_1EBCF4540 = xmmword_1EBCF44F0;
  return sub_1BC67D860(v2, &v1);
}

double sub_1BC67BC6C()
{
  v16 = sub_1BC75ABB0();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC428, &qword_1BC7617B0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1BC75ACC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VideoStreamFollowUpButton.Style(0);
  sub_1BC660024(v0 + *(v11 + 20), v6, &qword_1EBCDC428, &qword_1BC7617B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_1BC75BF70();
    v12 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 == *MEMORY[0x1E697F650])
  {
    return 1.14;
  }

  if (v13 == *MEMORY[0x1E697F660])
  {
    return 1.27;
  }

  if (v13 == *MEMORY[0x1E697F630])
  {
    return 1.45;
  }

  if (v13 == *MEMORY[0x1E697F670])
  {
    return 1.82;
  }

  if (v13 == *MEMORY[0x1E697F668])
  {
    return 2.27;
  }

  result = 2.82;
  if (v13 != *MEMORY[0x1E697F678] && v13 != *MEMORY[0x1E697F640] && v13 != *MEMORY[0x1E697F648])
  {
    (*(v8 + 8))(v10, v7, 2.82);
    return 1.0;
  }

  return result;
}

double sub_1BC67BFF0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1BC75B810();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC448, &qword_1BC7617C8);
  sub_1BC67C200(v2, a1, a2 + *(v6 + 44));
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC450, &unk_1BC7617D0) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC458, &qword_1BC762B00) + 28);
  v9 = *MEMORY[0x1E697DBB8];
  v10 = sub_1BC75A710();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  v11 = *(v2 + 48);
  v12 = v11 * sub_1BC67BC6C();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC460, &unk_1BC761810) + 36));
  v14 = *(sub_1BC75A9C0() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1BC75AC90();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  v13[1] = v12;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC468, &qword_1BC76D0D0) + 36)) = 256;
  sub_1BC67BC6C();
  sub_1BC67BC6C();
  sub_1BC75B810();
  sub_1BC75A810();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC470, &qword_1BC761820) + 36));
  *v17 = v19;
  v17[1] = v20;
  result = *&v21;
  v17[2] = v21;
  return result;
}

uint64_t sub_1BC67C200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v42 = a3;
  v4 = sub_1BC75AEF0();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC520, &qword_1BC761C70);
  v6 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC528, &qword_1BC761C78);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v35 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v22 = *(a1 + *(type metadata accessor for VideoStreamFollowUpButton.Style(0) + 24));
  if (v22 == 2)
  {
    v23 = sub_1BC75B530();
  }

  else
  {
    v23 = sub_1BC75B4E0();
  }

  v24 = v23;
  KeyPath = swift_getKeyPath();
  v26 = v19 + *(v13 + 36);
  sub_1BC75B7D0();
  v27 = sub_1BC75B000();
  v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC530, &qword_1BC761CB0) + 36)] = v27;
  *v19 = KeyPath;
  v19[1] = v24;
  sub_1BC65FFBC(v19, v21, &qword_1EBCDC528, &qword_1BC761C78);
  v28 = v38;
  sub_1BC75AF00();
  if (v22 == 2)
  {
    v29 = sub_1BC75B510();
  }

  else
  {
    v29 = sub_1BC75B530();
  }

  v30 = v29;
  (*(v39 + 32))(v10, v28, v40);
  *&v10[*(v36 + 36)] = v30;
  sub_1BC65FFBC(v10, v12, &qword_1EBCDC520, &qword_1BC761C70);
  sub_1BC660024(v21, v16, &qword_1EBCDC528, &qword_1BC761C78);
  v31 = v41;
  sub_1BC660024(v12, v41, &qword_1EBCDC520, &qword_1BC761C70);
  v32 = v42;
  sub_1BC660024(v16, v42, &qword_1EBCDC528, &qword_1BC761C78);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC538, &unk_1BC761CB8);
  sub_1BC660024(v31, v32 + *(v33 + 48), &qword_1EBCDC520, &qword_1BC761C70);
  sub_1BC66008C(v12, &qword_1EBCDC520, &qword_1BC761C70);
  sub_1BC66008C(v21, &qword_1EBCDC528, &qword_1BC761C78);
  sub_1BC66008C(v31, &qword_1EBCDC520, &qword_1BC761C70);
  return sub_1BC66008C(v16, &qword_1EBCDC528, &qword_1BC761C78);
}

uint64_t sub_1BC67C5C0@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v46 = type metadata accessor for FollowUpButtons(0) - 8;
  v1 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v48 = &v39 - v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v47 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v39 - v7;
  v44 = _s6LayoutV4ModeOMa(0);
  MEMORY[0x1EEE9AC00](v44);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1BC759CA0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC759EE0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AnalyticsUIContext(0);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC759FE0();
  v43 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67E5EC(&unk_1F3B289F0);
  sub_1BC67E754(&unk_1F3B28A10);
  v42 = v20;
  sub_1BC759F70();
  sub_1BC759EB0();
  v21 = v39;
  sub_1BC759BC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BC761600;
  (*(v18 + 16))(v23 + v22, v20, v17);
  *v9 = v23;
  swift_storeEnumTagMultiPayload();
  v24 = v40;
  sub_1BC663D18(v14, v21, &unk_1F3B28A20, v9, v40);
  v26 = v45;
  v25 = v46;
  v27 = *(v46 + 28);
  sub_1BC67D594(v24, &v45[v27], type metadata accessor for AnalyticsUIContext);
  v28 = *(v15 + 56);
  v29 = v41;
  v28(&v26[v27], 0, 1, v41);
  *v26 = 1;
  v30 = *(v25 + 28);
  v31 = v47;
  sub_1BC67D594(v24, &v47[v30], type metadata accessor for AnalyticsUIContext);
  v28(&v31[v30], 0, 1, v29);
  *v31 = 0;
  v32 = v48;
  sub_1BC67D594(v26, v48, type metadata accessor for FollowUpButtons);
  v33 = v49;
  sub_1BC67D594(v31, v49, type metadata accessor for FollowUpButtons);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC500, &qword_1BC761C58);
  v35 = v50;
  *(v50 + 24) = v34;
  v35[4] = sub_1BC633C54(&qword_1EBCDC508, &qword_1EBCDC500, &qword_1BC761C58, MEMORY[0x1E6981F48]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  sub_1BC67D594(v32, boxed_opaque_existential_1, type metadata accessor for FollowUpButtons);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC510, &unk_1BC761C60);
  sub_1BC67D594(v33, boxed_opaque_existential_1 + *(v37 + 48), type metadata accessor for FollowUpButtons);
  sub_1BC67D8E0(v31, type metadata accessor for FollowUpButtons);
  sub_1BC67D8E0(v26, type metadata accessor for FollowUpButtons);
  sub_1BC67D8E0(v24, type metadata accessor for AnalyticsUIContext);
  (*(v18 + 8))(v42, v43);
  sub_1BC67D8E0(v33, type metadata accessor for FollowUpButtons);
  return sub_1BC67D8E0(v32, type metadata accessor for FollowUpButtons);
}

uint64_t sub_1BC67CBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D0, &unk_1BC761EE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BC660024(a1, &v5 - v3, &qword_1EBCDC5D0, &unk_1BC761EE0);
  return sub_1BC75AAE0();
}

uint64_t sub_1BC67CC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75AB10();
  *a1 = result;
  return result;
}

uint64_t sub_1BC67CCD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC75AAF0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC67CD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BC67CE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75AA70();
  *a1 = result;
  return result;
}

uint64_t _s26SensitiveContentAnalysisUI26VideoCallOverlayBackgroundV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v61 - v10;
  v11 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v61 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D8, &unk_1BC761DC0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v61 - v25;
  v27 = (&v61 + *(v24 + 56) - v25);
  sub_1BC67D594(a1, &v61 - v25, type metadata accessor for VideoCallOverlayBackground.Kind);
  sub_1BC67D594(a2, v27, type metadata accessor for VideoCallOverlayBackground.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC67D594(v26, v17, type metadata accessor for VideoCallOverlayBackground.Kind);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
      v34 = *&v17[v33];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        (*(v66 + 8))(v17, v65);
        goto LABEL_18;
      }

      v35 = *(v27 + v33);
      v36 = v66;
      v37 = v64;
      v38 = v27;
      v39 = v65;
      (*(v66 + 32))(v64, v38, v65);
      v40 = MEMORY[0x1BFB24B70](v17, v37);
      v41 = *(v36 + 8);
      v41(v17, v39);
      if (v40)
      {
        v42 = sub_1BC679138(v34, v35);

        v43 = v37;
LABEL_21:
        v41(v43, v39);
        goto LABEL_22;
      }

      v59 = v37;
      goto LABEL_26;
    }

    sub_1BC67D594(v26, v14, type metadata accessor for VideoCallOverlayBackground.Kind);
    v54 = *v14;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_18;
    }

    v42 = sub_1BC679138(v54, *v27);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BC67D594(v26, v22, type metadata accessor for VideoCallOverlayBackground.Kind);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
      v30 = *&v22[v29];
      v31 = swift_getEnumCaseMultiPayload();
      v32 = v66;
      if (v31)
      {

        (*(v32 + 8))(v22, v65);
LABEL_18:
        sub_1BC66008C(v26, &qword_1EBCDC5D8, &unk_1BC761DC0);
LABEL_28:
        v42 = 0;
        return v42 & 1;
      }

      v55 = *(v27 + v29);
      v56 = v62;
      v57 = v27;
      v39 = v65;
      (*(v66 + 32))(v62, v57, v65);
      v58 = MEMORY[0x1BFB24B70](v22, v56);
      v41 = *(v32 + 8);
      v41(v22, v39);
      if (v58)
      {
        v42 = sub_1BC679138(v30, v55);

        v43 = v56;
        goto LABEL_21;
      }

      v59 = v56;
LABEL_26:
      v41(v59, v39);
      goto LABEL_27;
    }

    sub_1BC67D594(v26, v20, type metadata accessor for VideoCallOverlayBackground.Kind);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
    v45 = *&v20[v44];
    v46 = swift_getEnumCaseMultiPayload();
    v47 = v66;
    if (v46 != 1)
    {

      (*(v47 + 8))(v20, v65);
      goto LABEL_18;
    }

    v48 = *(v27 + v44);
    v49 = v63;
    v50 = v27;
    v51 = v65;
    (*(v66 + 32))(v63, v50, v65);
    v52 = MEMORY[0x1BFB24B70](v20, v49);
    v53 = *(v47 + 8);
    v53(v20, v51);
    if ((v52 & 1) == 0)
    {
      v53(v49, v51);
LABEL_27:

      sub_1BC67D8E0(v26, type metadata accessor for VideoCallOverlayBackground.Kind);
      goto LABEL_28;
    }

    v42 = sub_1BC679138(v45, v48);

    v53(v49, v51);
  }

LABEL_22:
  sub_1BC67D8E0(v26, type metadata accessor for VideoCallOverlayBackground.Kind);
  return v42 & 1;
}

uint64_t sub_1BC67D564(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1BC67D594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC67D5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC67D6C0()
{
  result = qword_1EBCDC408;
  if (!qword_1EBCDC408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3E8, &qword_1BC761730);
    sub_1BC67D778();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC408);
  }

  return result;
}

unint64_t sub_1BC67D778()
{
  result = qword_1EBCDC410;
  if (!qword_1EBCDC410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3E0, &qword_1BC761728);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
    sub_1BC67D898(&qword_1EDDCE000, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC410);
  }

  return result;
}

uint64_t sub_1BC67D898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC67D8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC67D9D8(uint64_t a1)
{
  type metadata accessor for VideoCallOverlayBackground.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_1BC67E134(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC67DADC(uint64_t a1)
{
  sub_1BC67DB54(319);
  if (v1 <= 0x3F)
  {
    sub_1BC67DBD4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BC67DB54(uint64_t a1)
{
  if (!qword_1EDDCEE60)
  {
    sub_1BC759FE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCEE60);
    }
  }
}

void sub_1BC67DBD4()
{
  if (!qword_1EDDCDFE0)
  {
    sub_1BC67E134(0, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCDFE0);
    }
  }
}

void sub_1BC67DC84(uint64_t a1)
{
  sub_1BC67E134(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BC67DD58(uint64_t a1)
{
  sub_1BC67DE5C(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50);
  if (v1 <= 0x3F)
  {
    sub_1BC67DE5C(319, &qword_1EBCDC488, &qword_1EBCDC490, &unk_1BC764690);
    if (v2 <= 0x3F)
    {
      sub_1BC67E134(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC67DE5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BC75A720();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VideoStreamFollowUpButton.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoStreamFollowUpButton.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BC67E014(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BC67E030(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1BC67E080(uint64_t a1)
{
  sub_1BC67E134(319, &qword_1EBCDC498, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BC67E134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BC67E1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BC67E1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BC67E270()
{
  result = qword_1EBCDC4C0;
  if (!qword_1EBCDC4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC438, &qword_1BC7617B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3F0, &qword_1BC761738);
    type metadata accessor for VideoStreamFollowUpButton.Style(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3E8, &qword_1BC761730);
    sub_1BC67D6C0();
    swift_getOpaqueTypeConformance2();
    sub_1BC67D898(&qword_1EBCDC430, type metadata accessor for VideoStreamFollowUpButton.Style, &unk_1BC7619B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4C0);
  }

  return result;
}

unint64_t sub_1BC67E3C4()
{
  result = qword_1EBCDC4C8;
  if (!qword_1EBCDC4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC470, &qword_1BC761820);
    sub_1BC67E450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4C8);
  }

  return result;
}

unint64_t sub_1BC67E450()
{
  result = qword_1EBCDC4D0;
  if (!qword_1EBCDC4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC460, &unk_1BC761810);
    sub_1BC67E508();
    sub_1BC633C54(&qword_1EBCDC4F8, &qword_1EBCDC468, &qword_1BC76D0D0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4D0);
  }

  return result;
}

unint64_t sub_1BC67E508()
{
  result = qword_1EBCDC4D8;
  if (!qword_1EBCDC4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC450, &unk_1BC7617D0);
    sub_1BC633C54(&qword_1EBCDC4E0, &qword_1EBCDC4E8, &unk_1BC761C48, MEMORY[0x1E6981880]);
    sub_1BC633C54(&qword_1EBCDC4F0, &qword_1EBCDC458, &qword_1BC762B00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4D8);
  }

  return result;
}

uint64_t sub_1BC67E5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
    v3 = sub_1BC75C250();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1BC75C700();

      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1BC75C5E0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BC67E80C()
{
  v2 = *(type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC67B364(v4, v5, v6, v0 + v3);
}

unint64_t sub_1BC67E8D4()
{
  result = qword_1EBCDC550;
  if (!qword_1EBCDC550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC548, &qword_1BC761CE0);
    sub_1BC67D898(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground, &protocol conformance descriptor for VideoCallOverlayBackground);
    sub_1BC633C54(&qword_1EBCDC558, &qword_1EBCDC560, &qword_1BC761CE8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC550);
  }

  return result;
}

uint64_t sub_1BC67E9F0()
{
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759DF0();
  sub_1BC67F9D0(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
  v4 = sub_1BC75C170();
  v5 = *(v1 + 8);
  v5(v3, v0);
  result = 0;
  if (v4)
  {
    sub_1BC759E50();
    v7 = sub_1BC75C170();
    v5(v3, v0);
    if (v7)
    {
      sub_1BC759E90();
      v8 = sub_1BC75C170();
      v5(v3, v0);
      return ~v8 & 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

id sub_1BC67EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = sub_1BC75A060();
  sub_1BC75A070();

  if (!v3)
  {
    v30 = a1;
    v31 = v9;
    v17 = v32;
    sub_1BC759EC0();
    sub_1BC759E50();
    sub_1BC75C100();
    v18 = *(v10 + 8);
    v19 = v13;
    v20 = v31;
    v18(v19, v31);
    sub_1BC67F968(v8);
    v21 = sub_1BC67E9F0();
    if (v22)
    {
      type metadata accessor for SCAError(0);
      v16 = v23;
      v33 = 20;
      sub_1BC678250(MEMORY[0x1E69E7CC0]);
      sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
      sub_1BC759700();
      swift_willThrow();
      v18(v15, v20);
    }

    else
    {
      v25 = v21;
      v29 = v18;
      if (a2)
      {
        v26 = sub_1BC75BA30();
      }

      else
      {
        v26 = 0;
      }

      v27 = v29;
      v16 = [objc_allocWithZone(SCUIInterventionAlertController) initWithWorkflow:v30 contextDictionary:v26 options:v17 type:v25];

      v27(v15, v31);
    }
  }

  return v16;
}

id sub_1BC67F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = sub_1BC759EE0();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v38 = &v34 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - v18;
  v20 = sub_1BC759CA0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75BFE0();
  v24 = sub_1BC759BD0();
  (*(v21 + 8))(v23, v20);
  if (v24)
  {
    sub_1BC75A060();
    sub_1BC75A070();

    if (!v3)
    {
      sub_1BC759EC0();
      sub_1BC759DF0();
      sub_1BC75C100();
      v26 = *(v39 + 8);
      v27 = v17;
      v28 = v40;
      v26(v27, v40);
      sub_1BC67F968(v8);
      v26(v19, v28);
      v29 = v37;
      sub_1BC759EC0();
      sub_1BC759DF0();
      v30 = v38;
      sub_1BC75C100();
      v26(v12, v28);
      sub_1BC67F968(v29);
      v31 = sub_1BC67E9F0();
      if (v32)
      {
        type metadata accessor for SCAError(0);
        v41 = 20;
        sub_1BC678250(MEMORY[0x1E69E7CC0]);
        sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
        sub_1BC759700();
        swift_willThrow();
        return (v26)(v30, v28);
      }

      else
      {
        v33 = [objc_opt_self() menuWithDelegate:v35 additionalOptions:v36 interventionType:v31];
        v26(v30, v28);
        return v33;
      }
    }
  }

  else
  {
    type metadata accessor for SCAError(0);
    v41 = 20;
    sub_1BC678250(MEMORY[0x1E69E7CC0]);
    sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
    sub_1BC759700();
    return swift_willThrow();
  }

  return result;
}

id sub_1BC67F5CC(uint64_t a1)
{
  v27 = a1;
  v2 = sub_1BC7599C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v14;
  sub_1BC75A060();
  sub_1BC75A070();

  if (!v1)
  {
    v25 = v2;
    v26 = v3;
    sub_1BC759EC0();
    sub_1BC759DF0();
    sub_1BC75C100();
    v16 = v9;
    v17 = *(v10 + 8);
    v17(v13, v16);
    sub_1BC67F968(v8);
    v18 = sub_1BC67E9F0();
    if (v19)
    {
      type metadata accessor for SCAError(0);
      v29 = 20;
      sub_1BC678250(MEMORY[0x1E69E7CC0]);
      sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
      sub_1BC759700();
      swift_willThrow();
      return (v17)(v28, v16);
    }

    else
    {
      v20 = v18;
      sub_1BC7599B0();
      v21 = sub_1BC759950();
      v22 = [objc_opt_self() modelWithOptions:v27 interventionType:v20 locale:v21 menuType:2];

      (*(v26 + 8))(v5, v25);
      v23 = [objc_opt_self() menuWithModel_];

      v17(v28, v16);
      return v23;
    }
  }

  return result;
}

uint64_t sub_1BC67F968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC67F9D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double SensitiveContentTipViewStyle.makeBody(configuration:)@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BC75ABF0();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E0, &qword_1BC761DD0);
  sub_1BC67FAB0(a2 + *(v3 + 44));
  v4 = sub_1BC75B000();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E8, &qword_1BC761DD8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_1BC67FAB0@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC608, &qword_1BC761E48);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v18 = sub_1BC75ABF0();
  v20 = 1;
  sub_1BC67FE0C(&v32);
  v25 = *&v33[48];
  v26 = *&v33[64];
  v27[0] = *&v33[80];
  *(v27 + 9) = *&v33[89];
  v21 = v32;
  v22 = *v33;
  v23 = *&v33[16];
  v24 = *&v33[32];
  v28[0] = v32;
  v28[1] = *v33;
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[5] = *&v33[64];
  v29[0] = *&v33[80];
  *(v29 + 9) = *&v33[89];
  sub_1BC660024(&v21, &v30, &qword_1EBCDC610, &qword_1BC761E50);
  sub_1BC66008C(v28, &qword_1EBCDC610, &qword_1BC761E50);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v9 = v20;
  *v8 = sub_1BC75ACE0();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC618, &qword_1BC761E58);
  sub_1BC680108(&v8[*(v10 + 44)]);
  sub_1BC660024(v8, v6, &qword_1EBCDC608, &qword_1BC761E48);
  v11 = v18;
  v30 = v18;
  v31[0] = v9;
  *&v31[81] = v19[5];
  *&v31[65] = v19[4];
  *&v31[1] = v19[0];
  *&v31[17] = v19[1];
  *&v31[97] = v19[6];
  *&v31[113] = v19[7];
  *&v31[33] = v19[2];
  *&v31[49] = v19[3];
  v12 = *&v31[96];
  *(a2 + 96) = *&v31[80];
  *(a2 + 112) = v12;
  *(a2 + 128) = *&v31[112];
  *(a2 + 144) = v31[128];
  v13 = *&v31[32];
  *(a2 + 32) = *&v31[16];
  *(a2 + 48) = v13;
  v14 = *&v31[64];
  *(a2 + 64) = *&v31[48];
  *(a2 + 80) = v14;
  v15 = *v31;
  *a2 = v30;
  *(a2 + 16) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC620, &qword_1BC761E60);
  sub_1BC660024(v6, a2 + *(v16 + 48), &qword_1EBCDC608, &qword_1BC761E48);
  sub_1BC660024(&v30, &v32, &qword_1EBCDC628, &qword_1BC761E68);
  sub_1BC66008C(v8, &qword_1EBCDC608, &qword_1BC761E48);
  sub_1BC66008C(v6, &qword_1EBCDC608, &qword_1BC761E48);
  *&v33[65] = v19[4];
  *&v33[81] = v19[5];
  *&v33[97] = v19[6];
  v34 = v19[7];
  *&v33[1] = v19[0];
  *&v33[17] = v19[1];
  *&v33[33] = v19[2];
  v32 = v11;
  v33[0] = v9;
  *&v33[49] = v19[3];
  return sub_1BC66008C(&v32, &qword_1EBCDC628, &qword_1BC761E68);
}

double sub_1BC67FE0C@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D0, &unk_1BC761EE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22[-1] - v3;
  v5 = sub_1BC75B5D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BC75A510())
  {
    (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
    sub_1BC75B610();

    (*(v6 + 8))(v8, v5);
    sub_1BC75ACF0();
    v9 = sub_1BC75AD00();
    (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    v10 = sub_1BC75B5E0();

    sub_1BC66008C(v4, &qword_1EBCDC5D0, &unk_1BC761EE0);
    v11 = sub_1BC75B560();
    sub_1BC75B810();
    sub_1BC75A810();
    v26 = 1;
    *&v25[6] = v28;
    *&v25[22] = v29;
    *&v25[38] = v30;
    v12 = sub_1BC75B010();
    sub_1BC75A670();
    *(v22 + 10) = *v25;
    *(&v22[1] + 10) = *&v25[16];
    v27 = 0;
    *&v21 = v10;
    *(&v21 + 1) = v11;
    *&v22[0] = 0;
    WORD4(v22[0]) = 1;
    *(&v22[2] + 10) = *&v25[32];
    *(&v22[3] + 1) = *&v25[46];
    LOBYTE(v23) = v12;
    *(&v23 + 1) = v13;
    *v24 = v14;
    *&v24[8] = v15;
    *&v24[16] = v16;
    v24[24] = 0;
    nullsub_1();
    v35 = v22[3];
    v36 = v23;
    v37[0] = *v24;
    *(v37 + 9) = *&v24[9];
    v31 = v21;
    v32 = v22[0];
    v33 = v22[1];
    v34 = v22[2];
  }

  else
  {
    sub_1BC681050(&v31);
  }

  v17 = v36;
  a1[4] = v35;
  a1[5] = v17;
  a1[6] = v37[0];
  *(a1 + 105) = *(v37 + 9);
  v18 = v32;
  *a1 = v31;
  a1[1] = v18;
  result = *&v33;
  v20 = v34;
  a1[2] = v33;
  a1[3] = v20;
  return result;
}

uint64_t sub_1BC680108@<X0>(uint64_t a2@<X8>)
{
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC630, &qword_1BC761E70);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v29 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC638, &qword_1BC761E78);
  v9 = v8 - 8;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  *v13 = sub_1BC75ABF0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC640, &qword_1BC761E80);
  sub_1BC680498(&v13[*(v14 + 44)]);
  v15 = sub_1BC75B060();
  sub_1BC75A670();
  v16 = &v13[*(v9 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v32 = sub_1BC75A520();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC648, &qword_1BC761E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC650, &qword_1BC761E90);
  sub_1BC633C54(&qword_1EBCDC658, &qword_1EBCDC648, &qword_1BC761E88, MEMORY[0x1E69E6338]);
  sub_1BC633C54(&qword_1EBCDC660, &qword_1EBCDC650, &qword_1BC761E90, MEMORY[0x1E6981F48]);
  sub_1BC680CA0();
  sub_1BC75B780();
  v21 = v31;
  sub_1BC660024(v13, v31, &qword_1EBCDC638, &qword_1BC761E78);
  v22 = *(v3 + 16);
  v23 = v29;
  v22(v29, v7, v2);
  v24 = v21;
  v25 = v30;
  sub_1BC660024(v24, v30, &qword_1EBCDC638, &qword_1BC761E78);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC670, &qword_1BC761E98);
  v22((v25 + *(v26 + 48)), v23, v2);
  v27 = *(v3 + 8);
  v27(v7, v2);
  sub_1BC66008C(v13, &qword_1EBCDC638, &qword_1BC761E78);
  v27(v23, v2);
  return sub_1BC66008C(v31, &qword_1EBCDC638, &qword_1BC761E78);
}

uint64_t sub_1BC680498@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC690, &qword_1BC761EB8);
  v36 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - v5;
  v6 = sub_1BC75A530();
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_1BC75B080();
    v12 = v10 & 1;
    v39 = v10 & 1;
    v13 = sub_1BC75B190();
    v33 = v14;
    v16 = v15;

    sub_1BC680E6C(v6, v8, v12);

    v38 = sub_1BC75AEE0();
    v17 = v33;
    v6 = sub_1BC75B160();
    v8 = v18;
    v20 = v19;
    v35 = v21;
    sub_1BC680E6C(v13, v17, v16 & 1);

    v10 = v20 & 1;
  }

  else
  {
    v35 = 0;
  }

  v33 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC698, &unk_1BC761EC0);
  sub_1BC680E7C();
  v22 = v34;
  sub_1BC75B680();
  v24 = v36;
  v23 = v37;
  v25 = *(v36 + 16);
  v25(v37, v22, v2);
  *a1 = v6;
  *(a1 + 8) = v8;
  v26 = v6;
  v27 = v35;
  *(a1 + 16) = v10;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6C8, &qword_1BC761ED8);
  v25((a1 + *(v28 + 64)), v23, v2);
  v29 = v33;
  sub_1BC680FB8(v26, v33, v10, v27);
  v30 = *(v24 + 8);
  v30(v22, v2);
  v30(v23, v2);
  return sub_1BC68100C(v26, v29, v10, v27);
}

uint64_t sub_1BC68079C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75B5C0();
  result = sub_1BC75B560();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BC6807E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC678, &qword_1BC761EA0);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC680, &qword_1BC761EA8);
  v12 = v11 - 8;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27[-v16];
  sub_1BC75B770();
  sub_1BC75B810();
  sub_1BC75A810();
  v18 = &v17[*(v12 + 44)];
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v18[2] = v31;
  sub_1BC75A5E0();
  v28 = a1;
  sub_1BC75B680();
  LOBYTE(a1) = sub_1BC75B060();
  sub_1BC75A670();
  v20 = &v10[*(v5 + 44)];
  *v20 = a1;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1BC660024(v17, v15, &qword_1EBCDC680, &qword_1BC761EA8);
  sub_1BC660024(v10, v8, &qword_1EBCDC678, &qword_1BC761EA0);
  sub_1BC660024(v15, a2, &qword_1EBCDC680, &qword_1BC761EA8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC688, &qword_1BC761EB0);
  sub_1BC660024(v8, a2 + *(v25 + 48), &qword_1EBCDC678, &qword_1BC761EA0);
  sub_1BC66008C(v10, &qword_1EBCDC678, &qword_1BC761EA0);
  sub_1BC66008C(v17, &qword_1EBCDC680, &qword_1BC761EA8);
  sub_1BC66008C(v8, &qword_1EBCDC678, &qword_1BC761EA0);
  return sub_1BC66008C(v15, &qword_1EBCDC680, &qword_1BC761EA8);
}

double sub_1BC680A80@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BC75ABF0();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E0, &qword_1BC761DD0);
  sub_1BC67FAB0(a2 + *(v3 + 44));
  v4 = sub_1BC75B000();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E8, &qword_1BC761DD8) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContentTipViewStyle(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SensitiveContentTipViewStyle(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1BC680BE4()
{
  result = qword_1EBCDC5F0;
  if (!qword_1EBCDC5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC5E8, &qword_1BC761DD8);
    sub_1BC633C54(&qword_1EBCDC5F8, &qword_1EBCDC600, &qword_1BC761E40, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC5F0);
  }

  return result;
}

unint64_t sub_1BC680CA0()
{
  result = qword_1EBCDC668;
  if (!qword_1EBCDC668)
  {
    sub_1BC75A5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC668);
  }

  return result;
}

uint64_t sub_1BC680CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75A5D0();
  v3 = v2();
  v5 = v4;
  v7 = v6;

  v8 = sub_1BC75A5B0();
  v10 = v9;
  v11 = sub_1BC729328();
  v12 = *v11 == v8 && v11[1] == v10;
  if (v12 || (sub_1BC75C5E0() & 1) != 0)
  {

    sub_1BC75B4E0();
  }

  else
  {
    v13 = sub_1BC72931C();
    if (*v13 != v8 || v13[1] != v10)
    {
      sub_1BC75C5E0();
    }

    sub_1BC75B4F0();
  }

  v14 = sub_1BC75B160();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1BC680E6C(v3, v5, v7 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_1BC680E6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1BC680E7C()
{
  result = qword_1EBCDC6A0;
  if (!qword_1EBCDC6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC698, &unk_1BC761EC0);
    sub_1BC680F34();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC6A0);
  }

  return result;
}

unint64_t sub_1BC680F34()
{
  result = qword_1EBCDC6A8;
  if (!qword_1EBCDC6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC6A8);
  }

  return result;
}

uint64_t sub_1BC680FB8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680FFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BC680FFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BC68100C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680E6C(result, a2, a3 & 1);
  }

  return result;
}

double sub_1BC681050(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BC68106C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v10, type metadata accessor for Report.Authority);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v11._countAndFlagsBits = 0x454C505041;
    v11._object = 0xE500000000000000;
    result = SCLocalizedStringKey.init(stringLiteral:)(v11).localized._countAndFlagsBits;
    v14 = v15[0];
    v13 = v15[1];
  }

  else
  {
    sub_1BC684D3C(v10, v7, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    v14 = *v7;
    v13 = v7[1];

    result = sub_1BC68164C(v7, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  }

  *a1 = v14;
  a1[1] = v13;
  return result;
}

uint64_t sub_1BC681254@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v13, type metadata accessor for Report.Authority);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_1BC7597E0();
    v14 = sub_1BC759800();
    v15 = *(v14 - 8);
    result = (*(v15 + 48))(v6, 1, v14);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v15 + 32))(a1, v6, v14);
    }
  }

  else
  {
    sub_1BC684D3C(v13, v10, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    v17 = *(v7 + 28);
    v18 = sub_1BC759800();
    (*(*(v18 - 8) + 16))(a1, &v10[v17], v18);
    return sub_1BC68164C(v10, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  }

  return result;
}

uint64_t sub_1BC6814FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v6, type metadata accessor for Report.Authority);
  v7 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    v8._countAndFlagsBits = 0x525F54494D425553;
    v8._object = 0xED000054524F5045;
    result = SCLocalizedStringKey.init(stringLiteral:)(v8).localized._countAndFlagsBits;
  }

  else
  {
    v10._countAndFlagsBits = 0x5F554F595F455241;
    v10._object = 0xEC00000045525553;
    SCLocalizedStringKey.init(stringLiteral:)(v10);
    result = sub_1BC68164C(v6, type metadata accessor for Report.Authority);
  }

  v11 = v12[1];
  *a1 = v12[0];
  a1[1] = v11;
  return result;
}

uint64_t sub_1BC68164C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6816AC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v13, type metadata accessor for Report.Authority);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v14._countAndFlagsBits = 0xD000000000000019;
    v14._object = 0x80000001BC772070;
    result = SCLocalizedStringKey.init(stringLiteral:)(v14).localized._countAndFlagsBits;
  }

  else
  {
    sub_1BC684D3C(v13, v10, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._object = 0x80000001BC772090;
    v16._countAndFlagsBits = 0xD000000000000011;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
    v17 = v10[1];
    v21 = *v10;
    v22 = v17;

    v18.localized._countAndFlagsBits = &v21;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);

    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    SCLocalizedStringKey.init(stringInterpolation:)(v6, &v21);
    result = sub_1BC68164C(v10, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  }

  v20 = v22;
  *a1 = v21;
  a1[1] = v20;
  return result;
}

uint64_t sub_1BC681900@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1BC759F50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Report.TestingOptions(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v50 - v17;
  v18 = type metadata accessor for Report.Authority(0);
  v58 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x20) != 0)
  {
    v51 = v20;
    v52 = v18;
    v56 = a1;
    v53 = a3;
    v23 = sub_1BC7012B4();
    swift_beginAccess();
    sub_1BC686D0C(v23, v12, type metadata accessor for Report.TestingOptions);
    sub_1BC660024(&v12[*(v10 + 24)], v16, &qword_1EBCDBC10, &qword_1BC75F180);
    sub_1BC68164C(v12, type metadata accessor for Report.TestingOptions);
    v24 = sub_1BC759990();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v16, 1, v24) == 1)
    {
      v27 = v57;
      sub_1BC7599A0();
      if (v26(v16, 1, v24) != 1)
      {
        sub_1BC66008C(v16, &qword_1EBCDBC10, &qword_1BC75F180);
      }
    }

    else
    {
      v27 = v57;
      (*(v25 + 32))(v57, v16, v24);
      (*(v25 + 56))(v27, 0, 1, v24);
    }

    v28 = *(v7 + 104);
    v28(v9, *MEMORY[0x1E697B580], v6);
    v29 = sub_1BC759F40();
    v30 = *(v7 + 8);
    v30(v9, v6);
    if (v29 & 1) == 0 && (v28(v9, *MEMORY[0x1E697B568], v6), v31 = sub_1BC759F40(), v30(v9, v6), (v31) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7C0, &qword_1BC762A28), v32 = *(v54 + 72), v33 = (*(v54 + 80) + 32) & ~*(v54 + 80), v34 = swift_allocObject(), *(v34 + 16) = xmmword_1BC75F0C0, v35 = v34 + v33, sub_1BC759980(), v36 = *(v25 + 56), v36(v35, 0, 1, v24), sub_1BC759980(), v36(v35 + v32, 0, 1, v24), v37 = sub_1BC6820B8(v27, v34), swift_setDeallocating(), swift_arrayDestroy(), swift_deallocClassInstance(), (v37))
    {
      v38 = [objc_opt_self() isiMessageLoggedIn];
      v18 = v52;
      a3 = v53;
      v39 = v56;
      if (v38)
      {
        v40 = sub_1BC7599C0();
        (*(*(v40 - 8) + 8))(v39, v40);
        sub_1BC66008C(v27, &qword_1EBCDBC10, &qword_1BC75F180);
        v41 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
        v42 = v51;
        (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
        sub_1BC684D3C(v42, a3, type metadata accessor for Report.Authority);
        v22 = 0;
      }

      else
      {
        if (qword_1EBCE3CA0 != -1)
        {
          swift_once();
        }

        v45 = sub_1BC75A4E0();
        __swift_project_value_buffer(v45, qword_1EBCF4580);
        v46 = sub_1BC75A4C0();
        v47 = sub_1BC75BF40();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1BC630000, v46, v47, "iMessage is not logged in, cannot report to Apple", v48, 2u);
          MEMORY[0x1BFB27EF0](v48, -1, -1);
        }

        v49 = sub_1BC7599C0();
        (*(*(v49 - 8) + 8))(v39, v49);
        sub_1BC66008C(v27, &qword_1EBCDBC10, &qword_1BC75F180);
        v22 = 1;
      }
    }

    else
    {
      v43 = sub_1BC7599C0();
      (*(*(v43 - 8) + 8))(v56, v43);
      sub_1BC66008C(v27, &qword_1EBCDBC10, &qword_1BC75F180);
      v22 = 1;
      v18 = v52;
      a3 = v53;
    }
  }

  else
  {
    v21 = sub_1BC7599C0();
    (*(*(v21 - 8) + 8))(a1, v21);
    v22 = 1;
  }

  return (*(v58 + 56))(a3, v22, 1, v18);
}

uint64_t sub_1BC6820B8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = sub_1BC759990();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v23 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7C8, &qword_1BC762A30);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_1BC660024(v13, v10, &qword_1EBCDBC10, &qword_1BC75F180);
    sub_1BC660024(v29, &v10[v16], &qword_1EBCDBC10, &qword_1BC75F180);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_1BC660024(v10, v30, &qword_1EBCDBC10, &qword_1BC75F180);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1BC68616C(&qword_1EBCDC7D0, MEMORY[0x1E6969680], MEMORY[0x1E6969698]);
    v26 = sub_1BC75BAB0();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_1BC66008C(v10, &qword_1EBCDBC10, &qword_1BC75F180);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_1BC66008C(v10, &qword_1EBCDC7C8, &qword_1BC762A30);
    goto LABEL_5;
  }

  sub_1BC66008C(v10, &qword_1EBCDBC10, &qword_1BC75F180);
  return 1;
}

uint64_t Report.Authority.DirectAuthorityDetails.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC684A00(a1, a2, a3);
  sub_1BC75BA70();
  sub_1BC75C050();
  sub_1BC75BA70();
  type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC75BA70();
  return sub_1BC75BA70();
}

uint64_t Report.Authority.DirectAuthorityDetails.hashValue.getter()
{
  v0 = sub_1BC75C700();
  sub_1BC684A00(v0, v1, v2);
  sub_1BC75BA70();
  sub_1BC75C050();
  sub_1BC75BA70();
  type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC75BA70();
  sub_1BC75BA70();
  return sub_1BC75C720();
}

uint64_t sub_1BC6826B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC684A00(a1, a2, a3);
  sub_1BC75BA70();
  sub_1BC75C050();
  sub_1BC75BA70();
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC75BA70();
  return sub_1BC75BA70();
}

uint64_t sub_1BC6827C0(uint64_t a1)
{
  v1 = sub_1BC75C700();
  sub_1BC684A00(v1, v2, v3);
  sub_1BC75BA70();
  sub_1BC75C050();
  sub_1BC75BA70();
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC75BA70();
  sub_1BC75BA70();
  return sub_1BC75C720();
}

uint64_t Report.Authority.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v9, type metadata accessor for Report.Authority);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x1BFB272F0](1);
  }

  sub_1BC684D3C(v9, v6, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  v11 = MEMORY[0x1BFB272F0](0);
  v12 = v6[1];
  v16 = *v6;
  v17 = v12;
  sub_1BC684A00(v11, v13, v14);
  sub_1BC75BA70();
  sub_1BC75C050();
  v15 = v6[4];
  v16 = v6[3];
  v17 = v15;
  sub_1BC75BA70();
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BC75BA70();
  sub_1BC75BA70();
  return sub_1BC68164C(v6, type metadata accessor for Report.Authority.DirectAuthorityDetails);
}

uint64_t Report.Authority.hashValue.getter()
{
  sub_1BC75C700();
  Report.Authority.hash(into:)(v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC682B74()
{
  sub_1BC75C700();
  Report.Authority.hash(into:)(v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC682BB8(uint64_t a1)
{
  sub_1BC75C700();
  Report.Authority.hash(into:)(v2);
  return sub_1BC75C720();
}

unint64_t Report.AuthorityWrapper.Kind.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1BC682C0C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1BC682D24()
{
  v1 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v0 + OBJC_IVAR___SCUIReportAuthority_authority, v3, type metadata accessor for Report.Authority);
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v5 = 1;
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) != 1)
  {
    sub_1BC68164C(v3, type metadata accessor for Report.Authority);
    return 0;
  }

  return v5;
}

id sub_1BC682E1C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Report.Authority(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(v1);
  sub_1BC660024(a1, v5, &qword_1EBCDC6E8, &qword_1BC761EF8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BC66008C(a1, &qword_1EBCDC6E8, &qword_1BC761EF8);
    sub_1BC66008C(v5, &qword_1EBCDC6E8, &qword_1BC761EF8);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1BC684D3C(v5, v9, type metadata accessor for Report.Authority);
    sub_1BC684D3C(v9, v10 + OBJC_IVAR___SCUIReportAuthority_authority, type metadata accessor for Report.Authority);
    v13.receiver = v10;
    v13.super_class = v1;
    v12 = objc_msgSendSuper2(&v13, sel_init);
    sub_1BC66008C(a1, &qword_1EBCDC6E8, &qword_1BC761EF8);
    return v12;
  }
}

uint64_t Report.AuthorityWrapper.__allocating_init(locale:moreHelpMenuOptions:interventionType:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1BC7599C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(v9, a1, v6);
  sub_1BC681900(v9, a2, v12);
  v14 = (*(ObjectType + 96))(v12);
  (*(v7 + 8))(a1, v6);
  swift_deallocPartialClassInstance();
  return v14;
}

uint64_t Report.AuthorityWrapper.init(locale:moreHelpMenuOptions:interventionType:)(uint64_t a1, char a2)
{
  v4 = sub_1BC7599C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v7, a1, v4);
  sub_1BC681900(v7, a2, v10);
  v12 = (*(ObjectType + 96))(v10);
  (*(v5 + 8))(a1, v4);
  swift_deallocPartialClassInstance();
  return v12;
}

id Report.AuthorityWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Report.AuthorityWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Report.AuthorityWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC6836F4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = 0xD000000000000012;
        v2 = 0x80000001BC772110;
      }

      else
      {
        v1 = 0x616C736E65657551;
        v2 = 0xEA0000000000646ELL;
      }
    }

    else if (a1)
    {
      v1 = 0x74756F532077654ELL;
      v2 = 0xEF73656C61572068;
    }

    else
    {
      v1 = 0xD00000000000001CLL;
      v2 = 0x80000001BC772130;
    }

    return SCLocalizedStringKey.init(stringLiteral:)(*&v1).localized._countAndFlagsBits;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v1 = 0x7541206874756F53;
      v2 = 0xEF61696C61727473;
    }

    else
    {
      v2 = 0x80000001BC7720F0;
      v1 = 0xD000000000000011;
    }

    return SCLocalizedStringKey.init(stringLiteral:)(*&v1).localized._countAndFlagsBits;
  }

  if (a1 == 6)
  {
    v4 = 0x726F74636956;
  }

  else
  {
    v4 = 0x6E616D736154;
  }

  v5._countAndFlagsBits = v4 & 0xFFFFFFFFFFFFLL | 0x6169000000000000;
  v5._object = 0xE800000000000000;
  return SCLocalizedStringKey.init(stringLiteral:)(v5).localized._countAndFlagsBits;
}

uint64_t sub_1BC683814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6853F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6853F0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

unint64_t sub_1BC68388C()
{
  v1 = *v0;
  v2 = 0x6874756F5377656ELL;
  v3 = 0x6169726F74636976;
  if (v1 != 6)
  {
    v3 = 0x61696E616D736174;
  }

  v4 = 0x7375416874756F73;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x616C736E65657571;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC6839AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BC685444(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BC6839D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC685150(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC685150(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC68539C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC68539C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC685348(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC685348(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6852F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6852F4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6852A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6852A0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6851A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6851A4(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6851F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6851F8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC68524C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC683D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC68524C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC683D94(void *a1, int a2)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6F0, &qword_1BC761F00);
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6F8, &qword_1BC761F08);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC700, &qword_1BC761F10);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC708, &qword_1BC761F18);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC710, &qword_1BC761F20);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC718, &qword_1BC761F28);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC720, &qword_1BC761F30);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC728, &qword_1BC761F38);
  v37 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC730, &qword_1BC761F40);
  v21 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v23 = &v37 - v22;
  v24 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC685150(v24, v25, v26);
  v27 = sub_1BC75C740();
  v30 = (v21 + 8);
  if (v57 > 3u)
  {
    if (v57 > 5u)
    {
      if (v57 == 6)
      {
        v65 = 6;
        sub_1BC6851F8(v27, v28, v29);
        v33 = v51;
        v34 = v58;
        sub_1BC75C4E0();
        v36 = v52;
        v35 = v53;
      }

      else
      {
        v66 = 7;
        sub_1BC6851A4(v27, v28, v29);
        v33 = v54;
        v34 = v58;
        sub_1BC75C4E0();
        v36 = v55;
        v35 = v56;
      }
    }

    else if (v57 == 4)
    {
      v63 = 4;
      sub_1BC6852A0(v27, v28, v29);
      v33 = v45;
      v34 = v58;
      sub_1BC75C4E0();
      v36 = v46;
      v35 = v47;
    }

    else
    {
      v64 = 5;
      sub_1BC68524C(v27, v28, v29);
      v33 = v48;
      v34 = v58;
      sub_1BC75C4E0();
      v36 = v49;
      v35 = v50;
    }

    goto LABEL_16;
  }

  if (v57 > 1u)
  {
    if (v57 == 2)
    {
      v61 = 2;
      sub_1BC685348(v27, v28, v29);
      v34 = v58;
      sub_1BC75C4E0();
      (*(v40 + 8))(v15, v41);
      return (*v30)(v23, v34);
    }

    v62 = 3;
    sub_1BC6852F4(v27, v28, v29);
    v33 = v42;
    v34 = v58;
    sub_1BC75C4E0();
    v36 = v43;
    v35 = v44;
LABEL_16:
    (*(v36 + 8))(v33, v35);
    return (*v30)(v23, v34);
  }

  if (!v57)
  {
    v59 = 0;
    sub_1BC6853F0(v27, v28, v29);
    v31 = v58;
    sub_1BC75C4E0();
    (*(v37 + 8))(v20, v18);
    return (*v30)(v23, v31);
  }

  v60 = 1;
  sub_1BC68539C(v27, v28, v29);
  v34 = v58;
  sub_1BC75C4E0();
  (*(v38 + 8))(v17, v39);
  return (*v30)(v23, v34);
}

uint64_t sub_1BC684530(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1BC6836F4(*a1);
  v3 = sub_1BC6836F4(v2);
  sub_1BC652378(v3, v4, v5);
  v6 = sub_1BC75BAB0();

  return v6 & 1;
}

uint64_t sub_1BC6845A8()
{
  v1 = *v0;
  sub_1BC75C700();
  v2 = sub_1BC6836F4(v1);
  sub_1BC684A00(v2, v3, v4);
  sub_1BC75BA70();

  return sub_1BC75C720();
}

uint64_t sub_1BC684614(uint64_t a1)
{
  v2 = sub_1BC6836F4(*v1);
  sub_1BC684A00(v2, v3, v4);
  sub_1BC75BA70();
}

uint64_t sub_1BC68466C(uint64_t a1)
{
  v2 = *v1;
  sub_1BC75C700();
  v3 = sub_1BC6836F4(v2);
  sub_1BC684A00(v3, v4, v5);
  sub_1BC75BA70();

  return sub_1BC75C720();
}

uint64_t sub_1BC6846D4@<X0>(_BYTE *a1@<X8>, uint64_t *a2@<X0>)
{
  result = sub_1BC684DC4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1BC684728@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1BC685704(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BC684770@<X0>(void *a1@<X8>)
{
  result = sub_1BC6836F4(*v1);
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t sub_1BC6847AC()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4580);
  __swift_project_value_buffer(v0, qword_1EBCF4580);
  return sub_1BC75A4D0();
}

uint64_t _s26SensitiveContentAnalysisUI6ReportC9AuthorityO06DirectF7DetailsV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1BC686D74(a1, a2, a3);
  sub_1BC75BC70();
  sub_1BC75BC70();
  if (v8 == v7)
  {
  }

  else
  {
    v3 = sub_1BC75C5E0();

    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
  if ((sub_1BC75C040() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1BC75BC70();
  sub_1BC75BC70();
  if (v8 == v7)
  {

    goto LABEL_8;
  }

  v4 = sub_1BC75C5E0();

  if ((v4 & 1) == 0)
  {
LABEL_10:
    v5 = 0;
    return v5 & 1;
  }

LABEL_8:
  type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((sub_1BC7597B0() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = sub_1BC7597B0();
  return v5 & 1;
}

unint64_t sub_1BC684A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC6D8;
  if (!qword_1EBCDC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC6D8);
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI6ReportC9AuthorityO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7D8, &qword_1BC762A38);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1BC686D0C(a1, &v20 - v13, type metadata accessor for Report.Authority);
  sub_1BC686D0C(a2, &v14[v15], type metadata accessor for Report.Authority);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1BC686D0C(v14, v10, type metadata accessor for Report.Authority);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1BC684D3C(&v14[v15], v7, type metadata accessor for Report.Authority.DirectAuthorityDetails);
      v17 = _s26SensitiveContentAnalysisUI6ReportC9AuthorityO06DirectF7DetailsV2eeoiySbAG_AGtFZ_0(v10, v7, v18);
      sub_1BC68164C(v7, type metadata accessor for Report.Authority.DirectAuthorityDetails);
      sub_1BC68164C(v10, type metadata accessor for Report.Authority.DirectAuthorityDetails);
      sub_1BC68164C(v14, type metadata accessor for Report.Authority);
      return v17 & 1;
    }

    sub_1BC68164C(v10, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BC66008C(v14, &qword_1EBCDC7D8, &qword_1BC762A38);
    v17 = 0;
    return v17 & 1;
  }

  sub_1BC68164C(v14, type metadata accessor for Report.Authority);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_1BC684D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC684DC4(uint64_t *a1)
{
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v1._object = 0x80000001BC772130;
  v2 = SCLocalizedStringKey.init(stringLiteral:)(v1);
  sub_1BC652378(v2.localized._countAndFlagsBits, v2.localized._object, v3);
  v4 = sub_1BC75BAB0();

  if (v4)
  {

    return 0;
  }

  else
  {
    v6._countAndFlagsBits = 0x74756F532077654ELL;
    v6._object = 0xEF73656C61572068;
    SCLocalizedStringKey.init(stringLiteral:)(v6);
    v7 = sub_1BC75BAB0();

    if (v7)
    {

      return 1;
    }

    else
    {
      v8._countAndFlagsBits = 0xD000000000000012;
      v8._object = 0x80000001BC772110;
      SCLocalizedStringKey.init(stringLiteral:)(v8);
      v9 = sub_1BC75BAB0();

      if (v9)
      {

        return 2;
      }

      else
      {
        v10._countAndFlagsBits = 0x616C736E65657551;
        v10._object = 0xEA0000000000646ELL;
        SCLocalizedStringKey.init(stringLiteral:)(v10);
        v11 = sub_1BC75BAB0();

        if (v11)
        {

          return 3;
        }

        else
        {
          v12._countAndFlagsBits = 0x7541206874756F53;
          v12._object = 0xEF61696C61727473;
          SCLocalizedStringKey.init(stringLiteral:)(v12);
          v13 = sub_1BC75BAB0();

          if (v13)
          {

            return 4;
          }

          else
          {
            v14._object = 0x80000001BC7720F0;
            v14._countAndFlagsBits = 0xD000000000000011;
            SCLocalizedStringKey.init(stringLiteral:)(v14);
            v15 = sub_1BC75BAB0();

            if (v15)
            {

              return 5;
            }

            else
            {
              v16._countAndFlagsBits = 0x6169726F74636956;
              v16._object = 0xE800000000000000;
              SCLocalizedStringKey.init(stringLiteral:)(v16);
              v17 = sub_1BC75BAB0();

              if (v17)
              {

                return 6;
              }

              else
              {
                v18._countAndFlagsBits = 0x61696E616D736154;
                v18._object = 0xE800000000000000;
                SCLocalizedStringKey.init(stringLiteral:)(v18);
                v19 = sub_1BC75BAB0();

                if (v19)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BC685150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CA8;
  if (!qword_1EBCE3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CA8);
  }

  return result;
}

unint64_t sub_1BC6851A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CB0;
  if (!qword_1EBCE3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CB0);
  }

  return result;
}

unint64_t sub_1BC6851F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CB8;
  if (!qword_1EBCE3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CB8);
  }

  return result;
}

unint64_t sub_1BC68524C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CC0;
  if (!qword_1EBCE3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CC0);
  }

  return result;
}

unint64_t sub_1BC6852A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CC8;
  if (!qword_1EBCE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CC8);
  }

  return result;
}

unint64_t sub_1BC6852F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CD0;
  if (!qword_1EBCE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CD0);
  }

  return result;
}

unint64_t sub_1BC685348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CD8;
  if (!qword_1EBCE3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CD8);
  }

  return result;
}

unint64_t sub_1BC68539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CE0;
  if (!qword_1EBCE3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CE0);
  }

  return result;
}

unint64_t sub_1BC6853F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE3CE8[0];
  if (!qword_1EBCE3CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE3CE8);
  }

  return result;
}

uint64_t sub_1BC685444(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001BC7721A0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874756F5377656ELL && a2 == 0xED000073656C6157 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC7721C0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C736E65657571 && a2 == 0xEA0000000000646ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7375416874756F73 && a2 == 0xEE0061696C617274 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC7721E0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6169726F74636976 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61696E616D736174 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BC685704(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC778, &qword_1BC7629E0);
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v56[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC780, &qword_1BC7629E8);
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v56[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC788, &qword_1BC7629F0);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v56[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC790, &qword_1BC7629F8);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v56[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC798, &qword_1BC762A00);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v56[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7A0, &qword_1BC762A08);
  v15 = *(v14 - 8);
  v64 = v14;
  v65 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v56[-v16];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7A8, &qword_1BC762A10);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v18 = &v56[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7B0, &qword_1BC762A18);
  v61 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7B8, &qword_1BC762A20);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v56[-v24];
  v26 = a1[3];
  v83 = a1;
  v27 = __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1BC685150(v27, v28, v29);
  v30 = v82;
  sub_1BC75C730();
  if (v30)
  {
    goto LABEL_9;
  }

  v58 = v19;
  v32 = v80;
  v31 = v81;
  v82 = v23;
  v60 = v22;
  v59 = v25;
  v33 = sub_1BC75C4D0();
  if (*(v33 + 16) != 1 || (v36 = *(v33 + 32), v36 == 8))
  {
    v40 = sub_1BC75C300();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0);
    *v42 = &type metadata for AustralianState;
    v43 = v60;
    v44 = v59;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    (*(v82 + 8))(v44, v43);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v83);
    return 0;
  }

  v57 = *(v33 + 32);
  if (v36 > 3)
  {
    v38 = v60;
    v39 = v59;
    if (v36 > 5)
    {
      v37 = v82;
      if (v36 != 6)
      {
        v91 = 7;
        sub_1BC6851A4(v33, v34, v35);
        v55 = v79;
        sub_1BC75C450();
        (*(v74 + 8))(v55, v75);
        goto LABEL_20;
      }

      v90 = 6;
      sub_1BC6851F8(v33, v34, v35);
      sub_1BC75C450();
      v52 = v72;
      v51 = v73;
    }

    else
    {
      v37 = v82;
      if (v36 == 4)
      {
        v88 = 4;
        sub_1BC6852A0(v33, v34, v35);
        sub_1BC75C450();
        (*(v69 + 8))(v32, v68);
        goto LABEL_20;
      }

      v89 = 5;
      sub_1BC68524C(v33, v34, v35);
      v31 = v78;
      sub_1BC75C450();
      v52 = v70;
      v51 = v71;
    }

    (*(v52 + 8))(v31, v51);
    goto LABEL_20;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v86 = 2;
      sub_1BC685348(v33, v34, v35);
      v46 = v77;
      v47 = v60;
      v48 = v59;
      sub_1BC75C450();
      v49 = v64;
      v50 = v65;
    }

    else
    {
      v87 = 3;
      sub_1BC6852F4(v33, v34, v35);
      v46 = v76;
      v47 = v60;
      v48 = v59;
      sub_1BC75C450();
      v49 = v66;
      v50 = v67;
    }

    (*(v50 + 8))(v46, v49);
    (*(v82 + 8))(v48, v47);
    goto LABEL_24;
  }

  v37 = v82;
  if (!v36)
  {
    v84 = 0;
    sub_1BC6853F0(v33, v34, v35);
    v38 = v60;
    v39 = v59;
    sub_1BC75C450();
    (*(v61 + 8))(v21, v58);
LABEL_20:
    (*(v37 + 8))(v39, v38);
    goto LABEL_24;
  }

  v85 = 1;
  sub_1BC68539C(v33, v34, v35);
  v53 = v60;
  v54 = v59;
  sub_1BC75C450();
  (*(v63 + 8))(v18, v62);
  (*(v37 + 8))(v54, v53);
LABEL_24:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v83);
  return v57;
}

uint64_t sub_1BC68616C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC686200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC748;
  if (!qword_1EBCDC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC748);
  }

  return result;
}

unint64_t sub_1BC686258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC750;
  if (!qword_1EBCDC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC750);
  }

  return result;
}

unint64_t sub_1BC6862AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC686258(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_1BC6862DC(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BC6862DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC758;
  if (!qword_1EBCDC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC758);
  }

  return result;
}

unint64_t sub_1BC686334()
{
  result = qword_1EBCDC760;
  if (!qword_1EBCDC760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC768, &qword_1BC762178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC760);
  }

  return result;
}

uint64_t sub_1BC6863CC(uint64_t a1)
{
  v1 = type metadata accessor for Report.Authority.DirectAuthorityDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1BC68644C(uint64_t a1)
{
  result = sub_1BC65F664(319, &qword_1EBCDC770, 0x1E69DCAB8);
  if (v2 <= 0x3F)
  {
    result = sub_1BC759800();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC6864F8(uint64_t a1)
{
  result = type metadata accessor for Report.Authority(319);
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

unint64_t sub_1BC686688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4DA0[0];
  if (!qword_1EBCE4DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4DA0);
  }

  return result;
}

unint64_t sub_1BC6866E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4EB0;
  if (!qword_1EBCE4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE4EB0);
  }

  return result;
}

unint64_t sub_1BC686738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4EB8[0];
  if (!qword_1EBCE4EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4EB8);
  }

  return result;
}

unint64_t sub_1BC686790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4F40;
  if (!qword_1EBCE4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE4F40);
  }

  return result;
}

unint64_t sub_1BC6867E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4F48[0];
  if (!qword_1EBCE4F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4F48);
  }

  return result;
}

unint64_t sub_1BC686840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4FD0;
  if (!qword_1EBCE4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE4FD0);
  }

  return result;
}

unint64_t sub_1BC686898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE4FD8[0];
  if (!qword_1EBCE4FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4FD8);
  }

  return result;
}

unint64_t sub_1BC6868F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5060;
  if (!qword_1EBCE5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5060);
  }

  return result;
}

unint64_t sub_1BC686948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5068[0];
  if (!qword_1EBCE5068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5068);
  }

  return result;
}

unint64_t sub_1BC6869A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE50F0;
  if (!qword_1EBCE50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE50F0);
  }

  return result;
}

unint64_t sub_1BC6869F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE50F8[0];
  if (!qword_1EBCE50F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE50F8);
  }

  return result;
}

unint64_t sub_1BC686A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5180;
  if (!qword_1EBCE5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5180);
  }

  return result;
}

unint64_t sub_1BC686AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5188[0];
  if (!qword_1EBCE5188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5188);
  }

  return result;
}

unint64_t sub_1BC686B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5210;
  if (!qword_1EBCE5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5210);
  }

  return result;
}

unint64_t sub_1BC686B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5218[0];
  if (!qword_1EBCE5218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5218);
  }

  return result;
}

unint64_t sub_1BC686BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE52A0;
  if (!qword_1EBCE52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE52A0);
  }

  return result;
}

unint64_t sub_1BC686C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE52A8[0];
  if (!qword_1EBCE52A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE52A8);
  }

  return result;
}

unint64_t sub_1BC686C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5330;
  if (!qword_1EBCE5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5330);
  }

  return result;
}

unint64_t sub_1BC686CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5338[0];
  if (!qword_1EBCE5338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5338);
  }

  return result;
}

uint64_t sub_1BC686D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC686D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC7E0;
  if (!qword_1EBCDC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC7E0);
  }

  return result;
}

uint64_t ShowContentButton.init(isShowingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift_getKeyPath();
  *(a4 + 24) = result;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = a1;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t ShowContentButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_1BC75ACB0();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7E8, &qword_1BC762AA8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7F0, &qword_1BC762AB0);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7F8, &qword_1BC762AB8);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v33 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC800, &unk_1BC762AC0);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v33 - v13;
  v15 = v1[3];
  v48 = v1[2];
  v49 = v15;
  v50 = *(v1 + 64);
  v16 = v1[1];
  v46 = *v1;
  v47 = v16;
  v43 = v1[3];
  v44 = *(v1 + 64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC808, &qword_1BC763F60);
  MEMORY[0x1BFB262E0](&v45, v17);
  if (v45 == 1)
  {
    v18 = "HIDE_BUTTON_TITLE";
  }

  else
  {
    v18 = "SHOW_BUTTON_TITLE";
  }

  v19._object = ((v18 - 32) | 0x8000000000000000);
  v19._countAndFlagsBits = 0xD000000000000011;
  SCLocalizedStringKey.init(stringLiteral:)(v19);
  v45 = v43;
  v20 = swift_allocObject();
  v21 = v49;
  *(v20 + 48) = v48;
  *(v20 + 64) = v21;
  *(v20 + 80) = v50;
  v22 = v47;
  *(v20 + 16) = v46;
  *(v20 + 32) = v22;
  sub_1BC6877B8(&v46, &v43);
  sub_1BC651F0C(&v45, sub_1BC6877B0, v20);
  KeyPath = swift_getKeyPath();
  v24 = &v8[*(v6 + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC458, &qword_1BC762B00) + 28);
  v26 = *MEMORY[0x1E697DBA8];
  v27 = sub_1BC75A710();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  (*(v3 + 32))(v8, v5, v35);
  v28 = &v10[*(v36 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC810, &qword_1BC762B08);
  sub_1BC75AA20();
  *v28 = swift_getKeyPath();
  sub_1BC687940(v8, v10);
  v29 = v39;
  sub_1BC75ACA0();
  sub_1BC6879B0();
  sub_1BC687E5C(&qword_1EBCDC830, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v30 = v41;
  sub_1BC75B1F0();
  (*(v40 + 8))(v29, v30);
  sub_1BC66008C(v10, &qword_1EBCDC7F0, &qword_1BC762AB0);
  v31 = sub_1BC75B530();
  (*(v37 + 32))(v14, v12, v38);
  *&v14[*(v34 + 36)] = v31;
  sub_1BC687B4C();
  sub_1BC75B330();
  return sub_1BC63B004(v14);
}

uint64_t sub_1BC68744C(__int128 *a1)
{
  v2 = sub_1BC75ABB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  v8 = *(a1 + 64);
  *&v23 = v7;
  *(&v23 + 1) = v6;
  v24 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC808, &qword_1BC763F60);
  MEMORY[0x1BFB262E0](&v20);
  if (v20 != 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 40);
    v12 = v23;
    if (v24 == 1)
    {
      v17 = v23;
      sub_1BC687EA4(&v23, &v20);
      if (v12 == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1BC687EA4(&v23, &v20);
      sub_1BC75BF70();
      v14 = sub_1BC75AFC0();
      sub_1BC75A4B0();

      sub_1BC75ABA0();
      swift_getAtKeyPath();
      sub_1BC66008C(&v23, &qword_1EBCDC850, &qword_1BC762D20);
      (*(v3 + 8))(v5, v2);
      v12 = v17;
      if (v17 == 1)
      {
        goto LABEL_12;
      }
    }

    v20 = v12;
    v21 = *(&v17 + 1);
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v20, v21);
    goto LABEL_12;
  }

  v23 = *a1;
  v24 = *(a1 + 16);
  v10 = v23;
  if (v24 == 1)
  {
    v11 = *(&v23 + 1);
    sub_1BC63302C(v23, *(&v23 + 1));
    if (v10 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_1BC75BF70();
  v13 = sub_1BC75AFC0();
  sub_1BC75A4B0();

  sub_1BC75ABA0();
  swift_getAtKeyPath();
  sub_1BC66008C(&v23, &qword_1EBCDC858, &qword_1BC762D28);
  (*(v3 + 8))(v5, v2);
  v10 = v20;
  v11 = v21;
  if (v20 != 1)
  {
LABEL_9:
    sub_1BC7119C8(v10);
    sub_1BC635468(v10, v11);
  }

LABEL_12:
  v25 = v7;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  sub_1BC687F14(&v25, &v17);

  MEMORY[0x1BFB262E0](&v19, v9);
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v18 = v8;
  v16[15] = (v19 & 1) == 0;
  sub_1BC75B710();
  sub_1BC687F70(&v25);
}

uint64_t sub_1BC6877A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    return a4(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1BC687870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BC687940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7E8, &qword_1BC762AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6879B0()
{
  result = qword_1EBCDC818;
  if (!qword_1EBCDC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC7F0, &qword_1BC762AB0);
    sub_1BC687A68();
    sub_1BC633C54(&qword_1EBCDC828, &qword_1EBCDC810, &qword_1BC762B08, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC818);
  }

  return result;
}

unint64_t sub_1BC687A68()
{
  result = qword_1EBCDC820;
  if (!qword_1EBCDC820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC7E8, &qword_1BC762AA8);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720, MEMORY[0x1E697D680]);
    sub_1BC633C54(&qword_1EBCDC4F0, &qword_1EBCDC458, &qword_1BC762B00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC820);
  }

  return result;
}

unint64_t sub_1BC687B4C()
{
  result = qword_1EBCDC838;
  if (!qword_1EBCDC838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC800, &unk_1BC762AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC7F0, &qword_1BC762AB0);
    sub_1BC75ACB0();
    sub_1BC6879B0();
    sub_1BC687E5C(&qword_1EBCDC830, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC838);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI06OnHideB8CallbackVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
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

uint64_t sub_1BC687CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC687D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BC687DA0()
{
  result = qword_1EBCDC840;
  if (!qword_1EBCDC840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC848, &qword_1BC762D18);
    sub_1BC687B4C();
    sub_1BC687E5C(&qword_1EDDCE000, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC840);
  }

  return result;
}

uint64_t sub_1BC687E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC687EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC850, &qword_1BC762D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC687FCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1BC75B5F0();
  }
}

uint64_t sub_1BC688180()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI31OutgoingCallInterventionHandler___observationRegistrar;
  v2 = sub_1BC759A90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC68821C()
{
  v0 = swift_allocObject();
  sub_1BC759A80();
  return v0;
}

uint64_t EnvironmentValues.intervenableAction.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC6355AC(a1, a2, a3);

  return sub_1BC75ABC0();
}

uint64_t EnvironmentValues.intervenableAction.setter(uint64_t a1)
{
  v2 = type metadata accessor for IntervenableAction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1BC68B6C8(a1, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntervenableAction);
  sub_1BC6355AC(v4, v5, v6);
  sub_1BC75ABD0();
  return sub_1BC68C880(a1, type metadata accessor for IntervenableAction);
}

void (*EnvironmentValues.intervenableAction.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for IntervenableAction(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1BC6355AC(v7, v8, v9);
  sub_1BC75ABC0();
  return sub_1BC68847C;
}

void sub_1BC68847C(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1BC68B6C8((*a1)[3], (*a1)[2], type metadata accessor for IntervenableAction);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_1BC68B6C8(v3[2], v3[1], type metadata accessor for IntervenableAction);
    sub_1BC75ABD0();
    sub_1BC68C880(v6, type metadata accessor for IntervenableAction);
  }

  else
  {
    sub_1BC75ABD0();
  }

  sub_1BC68C880(v4, type metadata accessor for IntervenableAction);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

BOOL static IntervenableAction.ButtonTreatment.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v3 = sub_1BC75B5F0();

      return v3 & 1;
    }

    return 0;
  }

  return !v2;
}

BOOL sub_1BC688614(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v3 = sub_1BC75B5F0();

      return v3 & 1;
    }

    return 0;
  }

  return !v2;
}

BOOL sub_1BC688698()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1BC75A160();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 17) != 1)
  {
    return 0;
  }

  v8 = type metadata accessor for IntervenableAction(0);
  sub_1BC660024(v0 + *(v8 + 28), v3, &qword_1EBCDC868, &qword_1BC762D30);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BC66008C(v3, &qword_1EBCDC868, &qword_1BC762D30);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = sub_1BC75A150();
    (*(v5 + 8))(v7, v4);
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v0 + 16) <= 1u)
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (*(v0 + 16) != 2)
    {
      return 0;
    }

    v10 = MEMORY[0x1E69E7CC0];
  }

  return (sub_1BC638C30(v10, *(v0 + 8)) & 1) == 0;
}

uint64_t IntervenableAction.performOrIntervene(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (v2[17] != 1)
  {
    return (a1)();
  }

  result = (*(**v2 + 88))();
  if (result)
  {
    return result;
  }

  v6 = type metadata accessor for IntervenableAction(0);
  v7 = &v2[*(v6 + 32)];
  v8 = *v7;
  if (!*v7)
  {
    return a1(v6);
  }

  v9 = *(v7 + 1);

  if (!sub_1BC688698())
  {
    v6 = sub_1BC635484(v8, v9);
    return a1(v6);
  }

  v8(a1, a2);

  return sub_1BC635484(v8, v9);
}

uint64_t IntervenableAction.ButtonImageKind.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t IntervenableAction.buttonImage(_:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1BC75A160();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 17) != 1)
  {
    return 0;
  }

  v9 = type metadata accessor for IntervenableAction(0);
  sub_1BC660024(v1 + *(v9 + 28), v4, &qword_1EBCDC868, &qword_1BC762D30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BC66008C(v4, &qword_1EBCDC868, &qword_1BC762D30);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_1BC75A150();
    (*(v6 + 8))(v8, v5);
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(v1 + 8);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return 0;
    }

    if ((sub_1BC638C30(MEMORY[0x1E69E7CC0], v11) & 1) == 0)
    {
      return sub_1BC75B5C0();
    }

    return 0;
  }

  if (sub_1BC638C30(MEMORY[0x1E69E7CC0], v11))
  {
    return 0;
  }

  return sub_1BC75B5C0();
}

uint64_t sub_1BC688CB0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1BC688CF0(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BC688D34@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntervenableAction.BoolBox();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  v3 = type metadata accessor for IntervenableAction(0);
  v4 = *(v3 + 28);
  v5 = sub_1BC75A160();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = (a1 + *(v3 + 32));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1BC688DDC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (*(v0 + 9) == 1)
  {
    sub_1BC6354C8(*v0, *(v0 + 8));
  }

  else
  {

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v5;
}