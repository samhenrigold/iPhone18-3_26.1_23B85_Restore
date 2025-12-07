uint64_t (*sub_1C1E9D680(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  sub_1C1E9CCB8((a1 + 8));
  return sub_1C1E9D6D4;
}

uint64_t sub_1C1E9D6D4(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return sub_1C1E9D27C(v2);
}

uint64_t sub_1C1E9D71C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  v8 = sub_1C1F520E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  CalculateExpression.effectiveLocale.getter(&v44 - v13);
  v15 = (v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_localizedSymbol);
  v16 = &unk_1EDC2F000;
  if (!v15[1])
  {
LABEL_5:
    (*(v9 + 16))(v4, v14, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    v18 = v16[218];
    swift_beginAccess();
    sub_1C1EB0684(v4, v1 + v18);
    swift_endAccess();
    v19 = CalculateExpression.allowsLocalization.getter();
    v20 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization;
    *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization) = v19 & 1;
    v21 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
    v46[0] = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v45 = 9;
    v22 = static CalculateExpression.TokenType.== infix(_:_:)(v46, &v45);
    if (v22)
    {
      v22 = CalculateExpression.engine.getter();
      if (v22 == 1)
      {
        v23 = 0xE300000000000000;
        v24 = 6582125;
        goto LABEL_15;
      }
    }

    if (*(v1 + v20))
    {
      v46[0] = *(v1 + v21);
      v45 = 13;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(v46, &v45) & 1) == 0)
      {
        v46[0] = *(v1 + v21);
        v45 = 12;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(v46, &v45) & 1) == 0)
        {
          v46[0] = *(v1 + v21);
          v45 = 10;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v46, &v45) & 1) == 0)
          {
            v46[0] = *(v1 + v21);
            v45 = 9;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(v46, &v45) & 1) == 0)
            {
              goto LABEL_16;
            }
          }
        }

        v35 = *(*v1 + 232);
        v36 = v35();
        v38 = localizedSymbol(_:locale:)(v36, v37);
        v40 = v39;

        v23 = v40;
        v41 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (v41)
        {
          v24 = v38;
        }

        else
        {

          v24 = (v35)(v43);
        }

        goto LABEL_15;
      }

      v24 = localizedSymbol(_:locale:)(2459016688, 0xA400000000000000);
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
LABEL_15:
        *v15 = v24;
        v15[1] = v23;

        goto LABEL_16;
      }
    }

    v24 = (*(*v1 + 232))(v22);
    goto LABEL_15;
  }

  v17 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_locale;
  swift_beginAccess();
  sub_1C1EB1D18(v1 + v17, v7, &qword_1EBF21168, &unk_1C1F564C0);
  if ((*(v9 + 48))(v7, 1, v8))
  {
    sub_1C1E83580(v7, &qword_1EBF21168, &unk_1C1F564C0);
    sub_1C1F52054();
LABEL_4:

    v16 = &unk_1EDC2F000;
    goto LABEL_5;
  }

  (*(v9 + 16))(v11, v7, v8);
  sub_1C1E83580(v7, &qword_1EBF21168, &unk_1C1F564C0);
  v44 = sub_1C1F52054();
  v30 = v29;
  (*(v9 + 8))(v11, v8);
  v31 = sub_1C1F52054();
  if (!v30)
  {
    goto LABEL_4;
  }

  if (v44 == v31 && v30 == v32)
  {
  }

  else
  {
    v34 = sub_1C1F52C64();

    v16 = &unk_1EDC2F000;
    if ((v34 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v42 = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization);
  v16 = &unk_1EDC2F000;
  if (v42 != (CalculateExpression.allowsLocalization.getter() & 1))
  {
    goto LABEL_5;
  }

LABEL_16:
  if (v15[1])
  {
    v26 = *v15;
  }

  else
  {
    v26 = (*(*v1 + 232))();
  }

  v27 = *(v9 + 8);

  v27(v14, v8);
  return v26;
}

void sub_1C1E9DCB4()
{
  v1 = v0;
  v2 = sub_1C1F520E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CalculateExpression(0);
  v6 = *(*v0 + 232);
  v7 = v6();
  v9 = static CalculateExpression.isHighPrecisionLiteral(_:)(v7, v8);

  if (v9)
  {
    v10 = CalculateExpression.effectiveNumberFormatter.getter();
    [v10 copy];

    sub_1C1F52944();
    swift_unknownObjectRelease();
    sub_1C1E785A4(0, &qword_1EDC2C2D8, 0x1E696ADA0);
    if (swift_dynamicCast())
    {
      v11 = v23[1];
      sub_1C1F52044();
      v12 = sub_1C1F52094();
      (*(v3 + 8))(v5, v2);
      [v11 setLocale_];

      [v11 setUsesGroupingSeparator_];
      v13 = CalculateExpression.engine.getter();
      if (v13 == 1)
      {
        [v11 setMinimumIntegerDigits_];
        [v11 setMinimumFractionDigits_];
        [v11 setMaximumFractionDigits_];
        v13 = [v11 setMaximumSignificantDigits_];
      }

      v14 = (v6)(v13);
      v16 = v15;
      v17 = v11;
      if ([v17 usesSignificantDigits] && CalculateExpression.engine.getter() != 1)
      {
        v20.value = 0;
        *&v19.is_nil = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits);
      }

      else
      {
        v19.is_nil = 0;
        v20.value = 1;
      }

      v21._countAndFlagsBits = v14;
      v21._object = v16;
      v19.value.super.super.isa = v17;
      v20.is_nil = 2;
      v22 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v21, 1, v19, v20, v18);

      (*(*v1 + 240))(v22._countAndFlagsBits, v22._object);
    }
  }
}

uint64_t CalculateExpression.RichToken.deinit()
{
  v1 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1C1E83580(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_locale, &qword_1EBF21168, &unk_1C1F564C0);

  return v0;
}

uint64_t CalculateExpression.RichToken.__deallocating_deinit()
{
  CalculateExpression.RichToken.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1E9E110@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id;
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1E9E1A8()
{
  v0 = sub_1C1EB06F4(&unk_1F418CF50);
  result = swift_arrayDestroy();
  qword_1EBF22750 = v0;
  return result;
}

uint64_t sub_1C1E9E1F4()
{
  v0 = sub_1C1EAFDD0(&unk_1F418D0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21228, &qword_1C1F56928);
  result = swift_arrayDestroy();
  qword_1EBF22758 = v0;
  return result;
}

uint64_t sub_1C1E9E250()
{
  v0 = objc_opt_self();
  v1 = [v0 nonTrigFunctionSet];
  v2 = sub_1C1F527C4();

  v3 = [v0 trigonometricSet];
  v4 = sub_1C1F527C4();

  result = sub_1C1E9E30C(v4, v2);
  qword_1EBF22760 = result;
  return result;
}

uint64_t sub_1C1E9E30C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1C1EACF44(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1C1E9E410()
{
  if (qword_1EBF216C0 != -1)
  {
    swift_once();
  }

  return &qword_1EBF22760;
}

uint64_t sub_1C1E9E460()
{
  v0 = sub_1C1EB06F4(&unk_1F418D260);
  result = swift_arrayDestroy();
  qword_1EBF22768 = v0;
  return result;
}

uint64_t sub_1C1E9E4AC()
{
  result = sub_1C1E91DC4(&unk_1F418D370);
  qword_1EBF22770 = result;
  return result;
}

uint64_t CalculateExpression.RichExpression.BaselineOffset.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result + 1) >= 4)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x3010002u >> (8 * (result + 1));
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1C1E9E534()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F56948[v1]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1E9E5BC(uint64_t a1)
{
  v2 = *v1;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](qword_1C1F56948[v2]);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1E9E660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9E6AC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 184);

  return v2(v3);
}

void (*sub_1C1E9E700(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1C1E9E790;
}

void sub_1C1E9E790(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1C1E9E810@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1C1E9E8A8(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1C1E919D8() & 1;
  return sub_1C1E9E8F4;
}

uint64_t sub_1C1E9E904@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

void *sub_1C1E9EA28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1C1E9EA8C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 280))(&v4);
}

uint64_t sub_1C1E9EAEC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 26) = v2;
  return result;
}

uint64_t sub_1C1E9EB7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1E9EC24(char a1)
{
  result = swift_beginAccess();
  *(v1 + 27) = a1;
  return result;
}

uint64_t sub_1C1E9ECB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9ED08(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1C1E9EDC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9EE14(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 400);

  return v2(v3);
}

uint64_t (*sub_1C1E9EE70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1E9EEC4;
}

uint64_t sub_1C1E9EEC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(a1 + 24) + 28) = 1;
  }

  return result;
}

uint64_t sub_1C1E9EEFC(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = (*v1 + 392);
  v4 = *v3;
  v5 = (*v3)();
  v6 = v5 >> 62 ? sub_1C1F52994() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v6 <= a1)
  {
    return 0;
  }

  result = (v4)(v7);
  if ((result & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1C6911DB0](a1, result);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v9 = *(result + 8 * a1 + 32);

LABEL_8:

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E9F000()
{
  i = *(*v0 + 176);
  v3 = *v0 + 176;
  if ((i)())
  {
    v4 = CalculateExpression.format.getter();

    if (v4 == 2)
    {
      type metadata accessor for CalculateExpression.RichToken(0);
      v5 = (*(*v0 + 384))(v84);
      v82 = i;
      v6 = (i)(v5);
      sub_1C1E8FBEC(48, 0xE100000000000000, v84, v6);
      v7 = *(*v0 + 408);
      v8 = v7(v84);
      v9 = sub_1C1E9FC34();
      v8(v84, 0);
      if (v9)
      {

        v10 = v0;
        v11 = v7(v84);
        v13 = v12;
        MEMORY[0x1C6911980]();
        if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1F526E4();
        }

        sub_1C1F52724();
        v11(v84, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1C1F563C0;

        *(v14 + 32) = sub_1C1E9C29C(v15);
      }

      else
      {
        v10 = v0;
        v14 = MEMORY[0x1E69E7CC0];
      }

      (*(*v10 + 232))(1);
      (*(*v10 + 256))(0);

      goto LABEL_97;
    }
  }

  v16 = (i)();
  if (!v16)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_98;
  }

  v17 = sub_1C1EE3BB0(1);
  v19 = v18;
  v21 = v20;

  v14 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
    goto LABEL_98;
  }

  v22 = (*v17 + 392);
  v23 = *v22;
  v24 = v22;
  v25 = v17;
  v26 = (*v22)(v16);
  v83 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_74:
    __break(1u);
  }

  else
  {
    v25 = v26;
    v80 = v17;
    v27 = v26 & 0xFFFFFFFFFFFFFF8;
    v17 = (v26 >> 62);
    if (!(v26 >> 62))
    {
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19)
      {
        goto LABEL_12;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }
  }

  if (sub_1C1F52994() < v19)
  {
    goto LABEL_76;
  }

LABEL_12:
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v17)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v83;
  if (result < v83)
  {
    goto LABEL_78;
  }

  if (v83 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v82 = i;
  if ((v25 & 0xC000000000000001) == 0)
  {
    goto LABEL_22;
  }

  if (v83 < v19)
  {
    __break(1u);
    goto LABEL_104;
  }

  if (v19 != v83)
  {
    if (v19 >= v83)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      return result;
    }

    type metadata accessor for CalculateExpression.RichToken(0);

    v29 = v19;
    do
    {
      v30 = v29 + 1;
      sub_1C1F52AA4();
      v29 = v30;
    }

    while (v83 != v30);
  }

  else
  {
LABEL_22:
  }

  v79 = v3;

  v81 = v19;
  if (v17)
  {
    i = sub_1C1F52BA4();
    v31 = v33;
    v19 = v34;
    v36 = v35;

    v32 = v36 >> 1;
  }

  else
  {
    i = v25 & 0xFFFFFFFFFFFFFF8;
    v31 = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
    v32 = v83;
  }

  if (v19 <= v32)
  {
    v37 = v32;
  }

  else
  {
    v37 = v19;
  }

  swift_unknownObjectRetain();
  v25 = v37 - v19;
  v38 = (v32 - v19);
  v3 = v31 + 8 * v19;
  v1 = v81;
  do
  {
    v17 = v38;
    if (!v38)
    {
      break;
    }

    if (!v25)
    {
      __break(1u);
      goto LABEL_74;
    }

    v39 = *v3;
    v3 += 8;
    v84[0] = *(v39 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v85[0] = 15;
    v40 = static CalculateExpression.TokenType.== infix(_:_:)(v84, v85);
    --v25;
    v38 = (v17 - 1);
  }

  while ((v40 & 1) == 0);
  v41 = swift_unknownObjectRelease_n();
  v25 = v80;
  v42 = v23(v41);
  i = v42;
  v27 = v42 & 0xFFFFFFFFFFFFFF8;
  v23 = (v42 >> 62);
  if (!(v42 >> 62))
  {
    result = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v83;
    if (result < v81)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (result >= v83)
    {
      goto LABEL_41;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

LABEL_80:
  if (i < 0)
  {
    v25 = i;
  }

  else
  {
    v25 = v27;
  }

  result = sub_1C1F52994();
  v24 = v83;
  if (result < v1)
  {
    goto LABEL_112;
  }

  result = sub_1C1F52994();
  if (result < v83)
  {
    goto LABEL_85;
  }

LABEL_41:
  if ((i & 0xC000000000000001) != 0)
  {
    if (v24 >= v1)
    {
      if (v1 == v24)
      {
        goto LABEL_44;
      }

      if (v1 < v24)
      {
        type metadata accessor for CalculateExpression.RichToken(0);

        v43 = v1;
        do
        {
          v44 = v43 + 1;
          sub_1C1F52AA4();
          v43 = v44;
        }

        while (v24 != v44);
        goto LABEL_48;
      }

      goto LABEL_111;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_44:

LABEL_48:

  if (v23)
  {
    v25 = sub_1C1F52BA4();
    v3 = v45;
    v1 = v46;
    v19 = v47;

    if ((v19 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v25 = i & 0xFFFFFFFFFFFFFF8;
    v3 = (i & 0xFFFFFFFFFFFFFF8) + 32;
    v19 = (2 * v24) | 1;
  }

  sub_1C1F52C74();
  swift_unknownObjectRetain_n();
  v49 = swift_dynamicCastClass();
  if (!v49)
  {
    swift_unknownObjectRelease();
    v49 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v49 + 16);

  if (__OFSUB__(v19 >> 1, v1))
  {
    goto LABEL_108;
  }

  if (v50 != (v19 >> 1) - v1)
  {
    goto LABEL_109;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_59;
  }

  for (i = MEMORY[0x1E69E7CC0]; ; i = v48)
  {
    swift_unknownObjectRelease();
LABEL_59:
    if (i < 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_87:
      v3 = sub_1C1F52994();
      if (!v3)
      {
LABEL_88:

        v14 = MEMORY[0x1E69E7CC0];
        goto LABEL_89;
      }
    }

    else
    {
      v3 = *(i + 16);
      if (!v3)
      {
        goto LABEL_88;
      }
    }

    *v84 = v14;
    v25 = v84;
    sub_1C1F52B14();
    if (v3 < 0)
    {
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    v51 = 0;
    do
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1C6911DB0](v51, i);
      }

      else
      {
        v52 = *(i + 8 * v51 + 32);
      }

      v53 = (*(*v52 + 232))();
      v55 = v54;
      v86[0] = *(v52 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v56 = (*(*v52 + 256))();
      type metadata accessor for CalculateExpression.RichToken(0);
      v1 = swift_allocObject();
      CalculateExpression.RichToken.init(text:type:isImplicit:)(v53, v55, v86, v56 & 1);
      v57 = *(*v52 + 328);

      v59 = v57(v58);
      v60 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
      swift_beginAccess();
      *(v1 + v60) = v59;

      v62 = (*(*v52 + 280))(v61);
      if (v62)
      {
        v63 = v62;
        type metadata accessor for CalculateExpression.RichExpression();
        swift_allocObject();
        v64 = sub_1C1EB0340(v63);

        v65 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left;
        swift_beginAccess();
        *(v1 + v65) = v64;
      }

      v66 = (*(*v52 + 304))(v62);
      if (v66)
      {
        v67 = v66;
        type metadata accessor for CalculateExpression.RichExpression();
        swift_allocObject();
        v68 = sub_1C1EB0340(v67);

        v69 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right;
        swift_beginAccess();
        *(v1 + v69) = v68;
      }

      ++v51;
      sub_1C1F52AF4();
      sub_1C1F52B24();
      sub_1C1F52B34();
      sub_1C1F52B04();
    }

    while (v3 != v51);

    v14 = *v84;
LABEL_89:
    v19 = v80;
    v70 = (*v80 + 408);
    v71 = *v70;
    v72 = (*v70)(v84);
    sub_1C1E98F60(v81, v83);
    v73 = v72(v84, 0);
    v3 = v79;
    if (!v17)
    {
      goto LABEL_94;
    }

    v84[0] = 15;
    type metadata accessor for CalculateExpression.RichToken(0);
    v24 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(40, 0xE100000000000000, v84, 1);
    i = v71(v84);
    v25 = v74;
    if (!(*v74 >> 62))
    {
      v75 = *((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_92;
    }

LABEL_106:
    v75 = sub_1C1F52994();
LABEL_92:
    if (v75 >= v81)
    {
      break;
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    swift_unknownObjectRelease_n();
LABEL_51:
    sub_1C1EAFAA4(v25, v3, v1, v19);
  }

  sub_1C1EB0A48(v81, v81, v24, 0, type metadata accessor for CalculateExpression.RichToken);
  (i)(v84, 0);

  v19 = v80;
LABEL_94:
  if ((*(*v19 + 568))(v73))
  {
    (*(*v19 + 424))();
  }

LABEL_97:
  i = v82;
LABEL_98:
  v76 = (i)(v16);
  if (v76)
  {
    sub_1C1E904FC(0);
  }

  if (!(i)(v76))
  {
  }

  v77 = (i)();
  type metadata accessor for CalculateExpression.RichExpression();
  swift_allocObject();
  v78 = sub_1C1EB0254(v14, v77);

  CalculateExpression.removed.setter(v78);
}

uint64_t sub_1C1E9FC34()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1C1EAFB88();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_1C1F52994();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_1C1E98338(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_1C1E98338(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_1C1F52994();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1C1E9FCC4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1C6911DB0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1C1F52994();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void sub_1C1E9FE54()
{
  if (v0[28] != 1)
  {
    return;
  }

  v0[28] = 0;
  v3 = (*v0 + 392);
  v4 = *v3;
  v5 = (*v3)();
  if (v5 >> 62)
  {
LABEL_92:
    v1 = v5;
    v6 = sub_1C1F52994();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 1)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v8 = (v4)(v7);
  v9 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_98;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

    goto LABEL_8;
  }

  __break(1u);
LABEL_100:
  v2 = MEMORY[0x1C6911DB0](v9, v1);
LABEL_16:

  v16 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v51 = v16;
  v50 = 10;
  v9 += static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50) & 1;
LABEL_17:
  v17 = v4();
  if (v17 >> 62)
  {
    v2 = v17;
    v18 = sub_1C1F52994();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v18)
  {
    goto LABEL_48;
  }

  v20 = (v4)(v19);
  LOBYTE(v1) = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6911DB0](v9, v20);
    goto LABEL_23;
  }

  if (v9 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v20 + 8 * v9 + 32);

LABEL_23:

    v21 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v21;
    v50 = 15;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50))
    {
      v22 = v4();
      if (!(v22 >> 62))
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_26;
      }

      goto LABEL_110;
    }

LABEL_48:
    LOBYTE(v1) = 0;
    ++v9;
LABEL_50:
    v31 = v4();
    if (v31 >> 62)
    {
      v32 = sub_1C1F52994();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 >= v32)
    {
      goto LABEL_58;
    }

    v22 = (v4)(v33);
    v2 = v22;
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_104;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_107:
      __break(1u);
    }

    else if (v9 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v22 + 8 * v9 + 32);

      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  v34 = MEMORY[0x1C6911DB0](v9, v2);
LABEL_57:

  v35 = *(v34 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v51 = v35;
  v50 = 8;
  v36 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50);
  LOBYTE(v1) = (v36 ^ 1) & v1;
  v9 += v36 & 1;
LABEL_58:
  v37 = v4();
  if (v37 >> 62)
  {
    v38 = sub_1C1F52994();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v38)
  {
    goto LABEL_67;
  }

  v22 = (v4)(v39);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x1C6911DB0](v9, v22);
LABEL_65:

    v41 = *(v40 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v41;
    v50 = 7;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50))
    {
      LOBYTE(v1) = 0;
      ++v9;
      v42 = 1;
    }

    else
    {
LABEL_67:
      v42 = 0;
    }

    if ((*(*v0 + 568))() & 1) != 0 || ((*(*v0 + 576))())
    {
      v43 = 0;
    }

    else
    {
      v44 = v4();
      if (v44 >> 62)
      {
        v45 = sub_1C1F52994();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v9 == v45;
    }

    v0[48] = v43;
    v0[49] = v42;
    v0[50] = v1 & 1;
    return;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_107;
  }

  if (v9 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v22 + 8 * v9 + 32);

    goto LABEL_65;
  }

LABEL_109:
  __break(1u);
LABEL_110:
  v2 = v22;
  v23 = sub_1C1F52994();
LABEL_26:

  if (v9 >= v23)
  {
LABEL_49:
    LOBYTE(v1) = 0;
    goto LABEL_50;
  }

  v25 = 0;
  while (1)
  {
    v5 = (v4)(v24);
    if ((v5 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v2 = *(v5 + 8 * v9 + 32);
    }

    v26 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v26;
    v50 = 15;
    v5 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50);
    if (v5)
    {
      v27 = __OFADD__(v25++, 1);
      if (v27)
      {
        goto LABEL_90;
      }

      goto LABEL_41;
    }

    v5 = v4();
    if ((v5 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C6911DB0](v9, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v2 = *(v5 + 8 * v9 + 32);
    }

    v28 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v28;
    v50 = 16;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50))
    {
      v27 = __OFSUB__(v25--, 1);
      if (v27)
      {
        __break(1u);
LABEL_98:
        v10 = MEMORY[0x1C6911DB0](0, v9);
LABEL_8:

        v11 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        v51 = v11;
        v50 = 4;
        v9 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50) & 1;
LABEL_10:
        v12 = v4();
        if (v12 >> 62)
        {
          v2 = v12;
          v13 = sub_1C1F52994();
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9 >= v13)
        {
          goto LABEL_17;
        }

        v15 = (v4)(v14);
        v1 = v15;
        if ((v15 & 0xC000000000000001) != 0)
        {
          goto LABEL_100;
        }

        if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v15 + 8 * v9 + 32);

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_103;
      }

      if (v25 <= 0)
      {
        break;
      }
    }

LABEL_41:
    v29 = v4();
    if (v29 >> 62)
    {
      v2 = v29;
      v30 = sub_1C1F52994();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v9;

    if (v9 >= v30)
    {
      goto LABEL_49;
    }
  }

  v46 = v4();
  if (v46 >> 62)
  {
    v2 = v46;
    v47 = sub_1C1F52994();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v47, 1))
  {
    __break(1u);
    goto LABEL_114;
  }

  if (v47 - 1 != v9)
  {
    LOBYTE(v1) = 0;
    goto LABEL_86;
  }

  v48 = (v4)(v5);
  v47 = v48;
  if ((v48 & 0xC000000000000001) != 0)
  {
LABEL_114:
    v2 = MEMORY[0x1C6911DB0](v9, v47);
LABEL_84:

    v49 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    v51 = v49;
    v50 = 16;
    v5 = static CalculateExpression.TokenType.== infix(_:_:)(&v51, &v50);
    LOBYTE(v1) = v5;
LABEL_86:
    v27 = __OFADD__(v9++, 1);
    if (!v27)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v48 + 8 * v9 + 32);

    goto LABEL_84;
  }

  __break(1u);
}

unint64_t sub_1C1EA06AC()
{
  result = (*(*v0 + 392))();
  v2 = result;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v4 = 0;
LABEL_13:

    return v4;
  }

  result = sub_1C1F52994();
  v3 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6911DB0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      ++v5;
      v7 = (*(*v6 + 352))();

      if (v7 > v4)
      {
        v4 = v7;
      }
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA07E4(char a1)
{
  if ((a1 & 1) != 0 || ((*(*v1 + 496))() & 1) == 0)
  {
    if ((*(*v1 + 528))() & 1) != 0 || ((*(*v1 + 464))())
    {
      v2 = 0;
    }

    else
    {
      v2 = (*(*v1 + 568))() ^ 1;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

BOOL sub_1C1EA08C8()
{
  v1 = (*(*v0 + 392))();
  if (v1 >> 62)
  {
    v2 = sub_1C1F52994();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

unint64_t sub_1C1EA0958(char a1)
{
  v2 = (*v1 + 392);
  v3 = *v2;
  v4 = (*v2)();
  if (v4 >> 62)
  {
    v5 = sub_1C1F52994();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    goto LABEL_9;
  }

  result = (v3)(v6);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:

    v10 = 0;
    return v10 & 1;
  }

  v11 = result;
  v12 = sub_1C1F52994();
  result = v11;
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C6911DB0](0, result);

    v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v14 == 53)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v9 == 53)
    {
LABEL_9:
      v10 = 0;
      return v10 & 1;
    }

LABEL_14:
    sub_1C1E9019C();
    v10 = sub_1C1F52414();
    return v10 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1EA0B04()
{
  v1 = (*v0 + 392);
  v2 = *v1;
  v3 = (*v1)();
  if (v3 >> 62)
  {
    v4 = sub_1C1F52994();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    return 0;
  }

  result = (v2)(v5);
  if (result >> 62)
  {
    v10 = result;
    v11 = sub_1C1F52994();
    result = v10;
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C6911DB0](0);
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);

LABEL_9:

    v9 = (*(*v7 + 376))(v8);

    return v9 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA0C70(uint64_t a1)
{
  v2 = (*(*v1 + 408))(v7);
  v4 = v3;

  MEMORY[0x1C6911980](v5);
  if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  return v2(v7, 0);
}

uint64_t _s9Calculate0A10ExpressionC13GraphableTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v1);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EA0DB8(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v4 = a1;
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  a1 = (*(*a1 + 560))(a2 == 1);
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v17[0] = 15;
  type metadata accessor for CalculateExpression.RichToken(0);
  swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v17, 0);
  v5 = (*(*v2 + 408))(v17);
  v7 = v6;
  MEMORY[0x1C6911980](v5);
  if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C1F526E4();
  }

  sub_1C1F52724();
  a1 = v5(v17, 0);
  v8 = 1;
LABEL_8:
  v9 = (*(*v4 + 392))(a1);
  v10 = (*v3 + 408);
  v11 = *v10;
  v12 = (*v10)(v17);
  sub_1C1E8CECC(v9);
  result = v12(v17, 0);
  if (v8)
  {
    v17[0] = 16;
    type metadata accessor for CalculateExpression.RichToken(0);
    swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v17, 0);
    v14 = v11(v17);
    v16 = v15;
    MEMORY[0x1C6911980]();
    if (*((*v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    return v14(v17, 0);
  }

  return result;
}

void sub_1C1EA1078(_BYTE *a1)
{
  v3 = v1;
  v4 = a1;
  v5 = (*(*a1 + 208))();
  v6 = v5[2];
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if (v7 >= v5[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      v2 = v5[v7 + 4];
      v8 = v2;
      v9 = sub_1C1F51FB4();
      v10 = [v9 code];

      if (v10 == -1012)
      {
        break;
      }

      ++v7;

      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v12 = (*(*v3 + 368))(v11);
    if (v12 == 1 || (LOBYTE(v21[0]) = v4[48], v12 = CalculateExpression.TokenType.isLaTeX.getter(), (v12 & 1) == 0))
    {
      (*(*v4 + 136))(v12);
      v16 = objc_allocWithZone(CalculateError);
      v14 = sub_1C1F52424();

      v15 = [v16 initUnbalancedSymbol_];
    }

    else
    {
      (*(*v4 + 136))(v12);
      v13 = objc_allocWithZone(CalculateError);
      v14 = sub_1C1F52424();

      v15 = [v13 initUnexpectedSymbol_];
    }

    v3 = v15;

    v4 = (*(*v4 + 224))(v21);
    v5 = v17;
    v2 = *v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_18:
      v2 = sub_1C1EAECE0(0, v2[2] + 1, 1, v2);
      *v5 = v2;
    }

    v20 = v2[2];
    v19 = v2[3];
    if (v20 >= v19 >> 1)
    {
      v2 = sub_1C1EAECE0((v19 > 1), v20 + 1, 1, v2);
      *v5 = v2;
    }

    v2[2] = v20 + 1;
    v2[v20 + 4] = v3;
    (v4)(v21, 0);
  }
}

uint64_t CalculateExpression.RichExpression.init(tokens:parent:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1EB0254(a1, a2);

  return v2;
}

uint64_t sub_1C1EA13B8(uint64_t *a1, uint64_t *a2, _BYTE *a3, unint64_t a4)
{
  v8 = v5;
  v10 = a2;
  v11 = a1;
  v12 = *a2;
  v428 = *(*a1 + 264);
  v13 = v428();
  v14 = v13;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if (v12 < 0)
    {
      __break(1u);
    }

    else if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v7 = *(v13 + 8 * v12 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_262;
  }

  v7 = MEMORY[0x1C6911DB0](v12, v13);
LABEL_5:

  v15 = sub_1C1EB078C(v11, v10);
  if (*a4 == 1)
  {
    v6 = *v10;
    v16 = (v428)(v15);
    if (v16 >> 62)
    {
      v4 = v16;
      v17 = sub_1C1F52994();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v17)
    {
      goto LABEL_14;
    }

    v19 = (v428)(v18);
    v20 = v19;
    if ((v19 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v19 + 8 * v6 + 32);

        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_324;
    }

    v21 = MEMORY[0x1C6911DB0](v6, v19);
LABEL_13:

    v4 = *(v21 + 48);

    LOBYTE(v430[0]) = v4;
    LOBYTE(v432[0]) = 22;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
LABEL_14:
      v15 = sub_1C1EB078C(v11, v10);
      *a4 = 0;
      goto LABEL_20;
    }

    *a3 = 1;
    v22 = v428();
    v14 = v22;
    if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v24 = *(v22 + 8 * v6 + 32);

LABEL_19:

        sub_1C1EA1078(v24);

        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_337;
    }

    v24 = MEMORY[0x1C6911DB0](v6, v22);
    goto LABEL_19;
  }

LABEL_20:
  v423 = v8;
  v421 = *(*v8 + 176);
  if (!v421(v15) || (v25 = CalculateExpression.format.getter(), , v25 != 1))
  {
    v31 = 0;
    goto LABEL_31;
  }

  LOBYTE(v430[0]) = v7[48];
  LOBYTE(v432[0]) = 10;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v430, v432) & 1) == 0)
  {
    v31 = 1;
    goto LABEL_31;
  }

  if (qword_1EBF216C8 != -1)
  {
    goto LABEL_333;
  }

  while (1)
  {
    v26 = qword_1EBF22768;
    (*(*v7 + 136))();
    v27 = sub_1C1F52464();
    v29 = v28;

    v30 = sub_1C1EA68E0(v27, v29, v26);

    v31 = 1;
    v8 = v423;
    if (v30)
    {
      *a3 = 1;
      v32 = [objc_allocWithZone(CalculateError) initWithCode:-1008 userInfo:0];
      v33 = (*(*v7 + 224))(v430);
      v35 = v34;
      v36 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_1C1EAECE0(0, v36[2] + 1, 1, v36);
        *v35 = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_1C1EAECE0((v38 > 1), v39 + 1, 1, v36);
        *v35 = v36;
      }

      v36[2] = v39 + 1;
      v36[v39 + 4] = v32;
      v33(v430, 0);
      v31 = 1;
      v8 = v423;
    }

LABEL_31:
    v6 = *v11 + 288;
    v425 = *v6;
    v40 = (*v6)(*v10);
    LOBYTE(v412) = v31;
    if (v40 && (v41 = *(v40 + 48), , v41 != 53) && (LOBYTE(v430[0]) = v41, LOBYTE(v432[0]) = 7, sub_1C1E9019C(), (sub_1C1F52414() & 1) != 0))
    {
      sub_1C1EB078C(v11, v10);
      v42 = sub_1C1EA7EC8(v11, v10, a3, 1);
    }

    else
    {
      v42 = 0;
    }

    v43 = (*(*v7 + 160))();
    if (!v44)
    {
      v43 = (*(*v7 + 136))(v43);
    }

    v45 = v43 == 6778732 && v44 == 0xE300000000000000;
    v46 = v45;
    if (LODWORD(v413) = v46, v427 = v42, v424 = v43, v414 = v12, v422 = v44, v45) || (v47 = v44, (sub_1C1F52C64()) || (v424 == 1885957222 ? (v48 = v47 == 0xE400000000000000) : (v48 = 0), v48 || (sub_1C1F52C64()))
    {
      if (!v42)
      {
        break;
      }
    }

    v49 = *(*v7 + 136);
    if (v49() == 1735355484 && v50 == 0xE400000000000000)
    {

      v4 = v430;
    }

    else
    {
      v52 = sub_1C1F52C64();

      v4 = v430;
      if ((v52 & 1) == 0)
      {
        if ((v49)(v53) == 0x747271735CLL && v54 == 0xE500000000000000)
        {

          v8 = v423;
        }

        else
        {
          v56 = sub_1C1F52C64();

          v8 = v423;
          if ((v56 & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v430[0] = *v10;
        a4 = v430[0];
        v105 = v425(v430[0]);
        if (v105)
        {
          v106 = *(v105 + 48);

          if (v106 != 53)
          {
            LOBYTE(v432[0]) = v106;
            LOBYTE(v431) = 23;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              sub_1C1EB078C(v11, v430);
              v418 = sub_1C1E89704(v11, v430, a3);
              v12 = v430[0];
              v107 = v425(v430[0]);
              if (!v107 || (v108 = *(v107 + 48), , v108 == 53) || (LOBYTE(v432[0]) = v108, LOBYTE(v431) = 24, (sub_1C1F52414() & 1) == 0))
              {
                *a3 = 1;
                v135 = v428();
                v84 = v135;
                if ((v135 & 0xC000000000000001) != 0)
                {
                  goto LABEL_388;
                }

                if ((a4 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
                {
                  v136 = *(v135 + 8 * a4 + 32);

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_391;
              }

              *v10 = v12;
              sub_1C1EB078C(v11, v10);
              goto LABEL_129;
            }
          }
        }

LABEL_128:
        v418 = 0;
        goto LABEL_129;
      }
    }

    v432[0] = *v10;
    v12 = v432[0];
    v63 = v425(v432[0]);
    if (!v63)
    {
      v418 = 0;
      v420 = 0;
      v8 = v423;
      goto LABEL_130;
    }

    v64 = (*(*v63 + 136))();
    v66 = v65;

    v67 = v64 == 95 && v66 == 0xE100000000000000;
    v8 = v423;
    if (v67)
    {
    }

    else
    {
      v68 = sub_1C1F52C64();

      if ((v68 & 1) == 0)
      {
        v418 = 0;
        v420 = 0;
        goto LABEL_130;
      }
    }

    sub_1C1EB078C(v11, v432);
    a4 = v432[0];
    v92 = v425(v432[0]);
    if (v92)
    {
      v93 = *(v92 + 48);

      if (v93 != 53)
      {
        LOBYTE(v430[0]) = v93;
        LOBYTE(v431) = 21;
        sub_1C1E9019C();
        if (sub_1C1F52414())
        {
          sub_1C1EB078C(v11, v432);
          v420 = sub_1C1E89704(v11, v432, a3);
          v12 = v432[0];
          v94 = v425(v432[0]);
          if (!v94 || (v95 = *(v94 + 48), , v95 == 53) || (LOBYTE(v430[0]) = v95, LOBYTE(v431) = 22, (sub_1C1F52414() & 1) == 0))
          {
            *a3 = 1;
            v125 = v428();
            v84 = v125;
            if ((v125 & 0xC000000000000001) != 0)
            {
              goto LABEL_382;
            }

            if ((a4 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
            {
              v126 = *(v125 + 8 * a4 + 32);

              goto LABEL_172;
            }

            __break(1u);
            goto LABEL_385;
          }

          *v10 = v12;
          sub_1C1EB078C(v11, v10);
          v418 = 0;
          goto LABEL_130;
        }
      }
    }

    v96 = v428();
    v20 = v96;
    if ((v96 & 0xC000000000000001) != 0)
    {
      goto LABEL_330;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
    {
      v97 = v7;
      v98 = *(v96 + 8 * v12 + 32);

      goto LABEL_119;
    }

    __break(1u);
LABEL_333:
    swift_once();
  }

  v12 = *v10;
  v4 = v430;
  v432[0] = *v10;
  v57 = v428();
  if (v57 >> 62)
  {
    goto LABEL_319;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_65:

  if (v12 >= v58)
  {
    goto LABEL_80;
  }

  v60 = (v428)(v59);
  v20 = v60;
  if ((v60 & 0xC000000000000001) != 0)
  {
LABEL_324:
    v61 = MEMORY[0x1C6911DB0](v12, v20);
  }

  else
  {
    if (v12 < 0)
    {
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      v97 = v7;
      v98 = MEMORY[0x1C6911DB0](v12, v20);
LABEL_119:

      v99 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
      v100 = (*(*v98 + 224))(v430);
      v102 = v101;
      sub_1C1EAEA50();
      v103 = *(*v102 + 16);
      sub_1C1EAEA9C(v103);
      v104 = *v102;
      *(v104 + 16) = v103 + 1;
      *(v104 + 8 * v103 + 32) = v99;
      v100(v430, 0);

      v418 = 0;
      v420 = 0;
      v7 = v97;
      v8 = v423;
      v4 = v430;
      goto LABEL_130;
    }

    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
    {
      goto LABEL_328;
    }

    v61 = *(v60 + 8 * v12 + 32);
  }

  v62 = *(v61 + 48);

  LOBYTE(v430[0]) = v62;
  LOBYTE(v431) = 4;
  v59 = static CalculateExpression.TokenType.== infix(_:_:)(v430, &v431);
  if (v59)
  {
    v59 = sub_1C1EB078C(v11, v432);
    a4 = 1;
    v12 = *(v4 + 40);
  }

  else
  {
LABEL_80:
    a4 = 0;
  }

  v69 = (v428)(v59);
  if (v69 >> 62)
  {
    v70 = sub_1C1F52994();
  }

  else
  {
    v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 >= v70)
  {
LABEL_103:
    v415 = 0;
    v12 = 0;
LABEL_104:
    v418 = 0;
    v420 = 0;
    goto LABEL_131;
  }

  v72 = (v428)(v71);
  v20 = v72;
  if ((v72 & 0xC000000000000001) != 0)
  {
    v73 = MEMORY[0x1C6911DB0](v12, v72);
  }

  else
  {
    if (v12 < 0)
    {
      goto LABEL_327;
    }

    if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
    {
      goto LABEL_329;
    }

    v73 = *(v72 + 8 * v12 + 32);
  }

  v74 = *(v73 + 48);

  LOBYTE(v430[0]) = v74;
  LOBYTE(v431) = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v430, &v431) & 1) == 0)
  {
    goto LABEL_103;
  }

  *(v4 + 32) = v12;
  v75 = sub_1C1EB078C(v11, &v431);
  v76 = *(v4 + 32);
  v77 = (v428)(v75);
  if (v77 >> 62)
  {
    LODWORD(v420) = a4;
    v78 = sub_1C1F52994();
    a4 = a4;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v76 >= v78)
  {
    goto LABEL_103;
  }

  v80 = (v428)(v79);
  if ((v80 & 0xC000000000000001) != 0)
  {
    v81 = MEMORY[0x1C6911DB0](v76, v80);
  }

  else
  {
    if (v76 < 0)
    {
      __break(1u);
LABEL_360:
      __break(1u);
      goto LABEL_361;
    }

    if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v76)
    {
      goto LABEL_360;
    }

    v81 = *(v80 + 8 * v76 + 32);
  }

  v82 = *(v81 + 48);

  LOBYTE(v430[0]) = v82;
  v429 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v430, &v429) & 1) == 0)
  {
    goto LABEL_103;
  }

  LODWORD(v420) = a4;
  if (a4)
  {
    v83 = v428();
    v84 = v83;
    if ((v83 & 0xC000000000000001) != 0)
    {
LABEL_391:
      a4 = MEMORY[0x1C6911DB0](v12, v84);
      goto LABEL_102;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
    {
      a4 = *(v83 + 8 * v12 + 32);

LABEL_102:

      (*(*v7 + 136))(v85);
      v86 = objc_allocWithZone(CalculateError);
      v87 = sub_1C1F52424();

      v419 = [v86 initInvalidNegativeArgument_];

      v8 = (*(*a4 + 224))(v430);
      v89 = v88;
      sub_1C1EAEA50();
      v90 = *(*v89 + 16);
      sub_1C1EAEA9C(v90);
      v91 = *v89;
      *(v91 + 16) = v90 + 1;
      *(v91 + 8 * v90 + 32) = v419;
      (v8)(v430, 0);
      goto LABEL_202;
    }

    __break(1u);
    goto LABEL_394;
  }

  if (v424 == 1885957222 && v422 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    v137 = v428();
    v84 = v137;
    if ((v137 & 0xC000000000000001) != 0)
    {
LABEL_394:
      v138 = MEMORY[0x1C6911DB0](v12, v84);
      goto LABEL_196;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
      {
        goto LABEL_396;
      }

      v138 = *(v137 + 8 * v12 + 32);

LABEL_196:

      a4 = *(*v138 + 136);
      v8 = (*v138 + 136);
      if ((a4)(v139) != 56 || v140 != 0xE100000000000000)
      {
        v418 = v138;
        v141 = sub_1C1F52C64();

        if (v141)
        {
          goto LABEL_202;
        }

        goto LABEL_236;
      }

      goto LABEL_198;
    }

    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    if ((v424 != 1885957222 || v422 != 0xE400000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      v4 = 1735355484;
      v413 = *v7 + 136;
      v410 = *v413;
      if ((*v413)() != 1735355484 || v263 != 0xE400000000000000)
      {
        v264 = sub_1C1F52C64();

        if (v264)
        {
          goto LABEL_429;
        }

        if ((v410)(v265) == 0x747271735CLL && v282 == 0xE500000000000000)
        {

LABEL_473:

          LOBYTE(v430[0]) = 10;
          type metadata accessor for CalculateExpression.RichToken(0);
          a4 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v430, 0);
          if (v418)
          {

            v285 = (v6)(v284);
            swift_allocObject();
            v286 = sub_1C1E8CC64(v285);

            v287 = (*(*a4 + 288))(v286);
            v288 = *(*a4 + 280);
            v289 = v288(v287);
            if (v289)
            {
              (*(*v289 + 600))(v418, 1);
            }

            v290 = v288(v289);
            if (v290)
            {
              LOBYTE(v430[0]) = 1;
              (*(*v290 + 280))(v430);
            }

LABEL_516:
          }

          v10 = v8[5];
          v254 = (v10 >> 62);
          if (!(v10 >> 62))
          {
            if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
            {
              goto LABEL_519;
            }

LABEL_681:
            *a3 = 1;
            v403 = v428();
            if ((v403 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C6911DB0](v414, v403);
LABEL_685:

              if (v254)
              {
                goto LABEL_695;
              }

              v394 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_687;
            }

            if ((v414 & 0x8000000000000000) == 0)
            {
              if (*((v403 & 0xFFFFFFFFFFFFFF8) + 0x10) > v414)
              {
                v11 = *(v403 + 8 * v414 + 32);

                goto LABEL_685;
              }

LABEL_694:
              __break(1u);
LABEL_695:
              v404 = sub_1C1F52994();
              if (v404 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_697;
              }

              v394 = v404;
LABEL_687:
              if (v394 > 0x7FFFFFFF)
              {
LABEL_697:
                __break(1u);
                goto LABEL_698;
              }

              (*(*a4 + 232))(v404);
LABEL_669:
              v395 = objc_allocWithZone(CalculateError);
              v396 = sub_1C1F52424();

              v397 = [v395 initIncorrectArguments:v394 correctArguments:1 inFunction:v396];

              v398 = (*(*v11 + 224))(v430);
              v400 = v399;
              sub_1C1EAEA50();
              v401 = *(*v400 + 16);
              sub_1C1EAEA9C(v401);
              v402 = *v400;
              *(v402 + 16) = v401 + 1;
              *(v402 + 8 * v401 + 32) = v397;
              v398(v430, 0);

LABEL_574:

              goto LABEL_575;
            }

LABEL_693:
            __break(1u);
            goto LABEL_694;
          }

LABEL_680:
          if (sub_1C1F52994() != 1)
          {
            goto LABEL_681;
          }

LABEL_519:
          (*(*v411 + 592))(a4);
          if ((v10 & 0xC000000000000001) != 0)
          {
            goto LABEL_672;
          }

          if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_693;
          }

LABEL_459:
          v281 = *(v10 + 32);

          goto LABEL_460;
        }

        goto LABEL_472;
      }

LABEL_429:

      LOBYTE(v430[0]) = 10;
      a4 = type metadata accessor for CalculateExpression.RichToken(0);
      v266 = swift_allocObject();
      CalculateExpression.RichToken.init(text:type:isImplicit:)(6778732, 0xE300000000000000, v430, 0);
      v424 = v266;
      (*(*v411 + 592))(v266);
      if (!v420)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v267 = swift_allocObject();
        *(v267 + 16) = xmmword_1C1F563C0;
        LOBYTE(v430[0]) = 1;
        v268 = swift_allocObject();
        v269 = CalculateExpression.RichToken.init(text:type:isImplicit:)(12337, 0xE200000000000000, v430, 0);
        *(v267 + 32) = v268;
        a4 = (v6)(v269);
        swift_allocObject();
        v420 = sub_1C1EB0254(v267, a4);
      }

      v271 = (v6)(v270);
      swift_allocObject();
      v272 = sub_1C1E8CC64(v271);

      v273 = (*(*v424 + 312))(v272);
      v274 = *(*v424 + 304);
      v275 = v274(v273);
      if (v275)
      {
        (*(*v275 + 600))(v420, 1);
      }

      v276 = v274(v275);
      if (v276)
      {
        LOBYTE(v430[0]) = 2;
        (*(*v276 + 280))(v430);
      }

      goto LABEL_455;
    }

    if (!v415)
    {
      goto LABEL_644;
    }

    v10 = v8[5];
    if (!(v10 >> 62))
    {
      v249 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v249 == 1)
      {
        goto LABEL_403;
      }

      goto LABEL_644;
    }

LABEL_643:
    v249 = sub_1C1F52994();
    if (v249 == 1)
    {
LABEL_403:
      LOBYTE(v430[0]) = 10;
      type metadata accessor for CalculateExpression.RichToken(0);
      v11 = swift_allocObject();

      CalculateExpression.RichToken.init(text:type:isImplicit:)(1885957222, 0xE400000000000000, v430, 0);
      v250 = (*(*v411 + 592))(v11);
      v251 = (v6)(v250);
      swift_allocObject();
      v252 = sub_1C1E8CC64(v251);

      v253 = (*(*v11 + 312))(v252);
      v254 = (*v11 + 304);
      v255 = *v254;
      v256 = (*v254)(v253);
      if (v256)
      {
        (*(*v256 + 600))(v415, 1);
      }

      v257 = v255(v256);
      if (v257)
      {
        LOBYTE(v430[0]) = 2;
        (*(*v257 + 280))(v430);
      }

      if ((v10 & 0xC000000000000001) == 0)
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_660;
        }

        v258 = *(v10 + 32);

LABEL_410:
        v12 = v411;
        (*(*v411 + 600))(v258, 3);

        goto LABEL_357;
      }

LABEL_658:
      v258 = MEMORY[0x1C6911DB0](0, v10);
      goto LABEL_410;
    }

LABEL_644:
    *a3 = 1;
    v387 = (v428)(v249);
    if ((v387 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6911DB0](v414, v387);
    }

    else
    {
      if ((v414 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_654:
        v388 = sub_1C1F52994();
        if (v388 >= 0xFFFFFFFF80000000)
        {
          v389 = v388;
LABEL_650:
          if (v389 <= 0x7FFFFFFF)
          {
            (*(*v7 + 136))(v388);
            v390 = objc_allocWithZone(CalculateError);
            v391 = sub_1C1F52424();

            v342 = [v390 initIncorrectArguments:v389 correctArguments:2 inFunction:v391];

            v343 = (*(*v11 + 224))(v430);
            goto LABEL_573;
          }

LABEL_657:
          __break(1u);
          goto LABEL_658;
        }

        __break(1u);
LABEL_656:
        __break(1u);
        goto LABEL_657;
      }

      if (*((v387 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v414)
      {
        goto LABEL_656;
      }

      v11 = *(v387 + 8 * v414 + 32);
    }

    v10 = v8[5];
    if (!(v10 >> 62))
    {
      v389 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_650;
    }

    goto LABEL_654;
  }

  while (2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v418 = swift_allocObject();
    *(v418 + 16) = xmmword_1C1F563C0;
    v143 = v428();
    v84 = v143;
    if ((v143 & 0xC000000000000001) != 0)
    {
LABEL_385:
      v144 = MEMORY[0x1C6911DB0](v12, v84);
      goto LABEL_207;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
    {
      v144 = *(v143 + 8 * v12 + 32);

LABEL_207:

      v146 = (*(*v144 + 160))(v145);
      if (v147)
      {
        v148 = v147;
        v416 = v146;
      }

      else
      {
        v416 = (*(*v144 + 136))(v146);
        v148 = v149;
      }

      type metadata accessor for CalculateExpression.RichToken(0);
      LOBYTE(v430[0]) = v144[48];
      v150 = swift_allocObject();
      CalculateExpression.RichToken.init(text:type:isImplicit:)(v416, v148, v430, 0);

      v152 = v418;
      *(v418 + 32) = v150;
      *v4 = v418;
      if (v420)
      {
        v429 = 4;
        v153 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v429, 0);
        sub_1C1EAEAE0(0, v418);
        sub_1C1EB0A48(0, 0, v153, 0, type metadata accessor for CalculateExpression.RichToken);

        v152 = *v4;
      }

      v8 = v423;
      v154 = v421(v151);
      type metadata accessor for CalculateExpression.RichExpression();
      swift_allocObject();
      v155 = sub_1C1EB0254(v152, v154);

      if (v424 == 1885957222 && v422 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
      {
        v156 = 0;
        v415 = v155;
      }

      else
      {
        v415 = 0;
        v156 = v155;
      }

      *v10 = v12;

      sub_1C1EB078C(v11, v10);

      v12 = v156;
      v4 = v430;
      goto LABEL_104;
    }

    __break(1u);
LABEL_388:
    v136 = MEMORY[0x1C6911DB0](a4, v84);
LABEL_188:

    sub_1C1EA1078(v136);

LABEL_129:
    v420 = 0;
    while (1)
    {
LABEL_130:
      v415 = 0;
      v12 = 0;
LABEL_131:
      v14 = v8;
      v109 = sub_1C1EA71A8(v11, v10, a3);
      a4 = v109;
      *(v4 + 32) = v110;
      *(v4 + 40) = v109;
      if (v109 >> 62)
      {
LABEL_262:
        v111 = sub_1C1F52994();
        if (v111 != 1)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v111 != 1)
        {
          goto LABEL_140;
        }
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v113 = MEMORY[0x1C6911DB0](0, a4);
        v112 = v113;
      }

      else
      {
        if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_287;
        }

        v112 = *(a4 + 32);
      }

      v114 = (*(*v112 + 392))(v113);

      if (v114 >> 62)
      {
        v115 = sub_1C1F52994();
      }

      else
      {
        v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v115)
      {

        a4 = MEMORY[0x1E69E7CC0];
        *(v4 + 40) = MEMORY[0x1E69E7CC0];
      }

LABEL_140:
      if (v12)
      {
        sub_1C1EAEAE0(0, a4);

        sub_1C1EB0A48(0, 0, v12, v116, type metadata accessor for CalculateExpression.RichExpression);

        v111 = sub_1C1EAEB4C(0, 0, -1);
      }

      a4 = v427;
      if (v427 && (v111 = v425(*v10)) != 0)
      {
        v117 = *(v111 + 48);

        v6 = v421;
        if (v117 == 53)
        {
          v119 = 0;
        }

        else
        {
          LOBYTE(v430[0]) = v117;
          v429 = 7;
          sub_1C1E9019C();
          v118 = sub_1C1F52414();
          v119 = v118;
        }

        v120 = v421(v118);
      }

      else
      {
        v119 = 0;
        v6 = v421;
        v120 = v421(v111);
      }

      v121 = v120;
      type metadata accessor for CalculateExpression.RichExpression();
      swift_allocObject();
      v12 = sub_1C1E8CC64(v121);

      LODWORD(v425) = v119;
      if (v119)
      {
        LOBYTE(v430[0]) = 15;
        type metadata accessor for CalculateExpression.RichToken(0);
        v122 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
        (*(*v12 + 592))(v122);
      }

      if (v424 == 10127586 && v422 == 0xA300000000000000 || (v411 = v12, (sub_1C1F52C64() & 1) != 0) || v424 == 1953657203 && v422 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
      {

        v10 = v432[0];
        v4 = v432[0] >> 62;
        if (v432[0] >> 62)
        {
          if (sub_1C1F52994() != 1)
          {
            goto LABEL_265;
          }

LABEL_159:
          LOBYTE(v430[0]) = 10;
          type metadata accessor for CalculateExpression.RichToken(0);
          v123 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v430, 0);
          (*(*v12 + 592))(v123);
          if ((v10 & 0xC000000000000001) != 0)
          {
            v124 = MEMORY[0x1C6911DB0](0, v10);
            LOBYTE(v4) = v425;
LABEL_162:
            (*(*v12 + 600))(v124, 3);

            a4 = v427;
            if (v427)
            {
              goto LABEL_274;
            }

            goto LABEL_279;
          }

          v4 = v425;
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v124 = *(v10 + 32);

            goto LABEL_162;
          }

          __break(1u);
LABEL_314:
          __break(1u);
          goto LABEL_315;
        }

        if (*((v432[0] & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
          goto LABEL_159;
        }

LABEL_265:
        *a3 = 1;
        v187 = v428();
        if ((v187 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1C6911DB0](v414, v187);
LABEL_269:

          if (!v4)
          {
            v189 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_271;
          }

LABEL_315:
          v188 = sub_1C1F52994();
          if (v188 < 0xFFFFFFFF80000000)
          {
            __break(1u);
            goto LABEL_317;
          }

LABEL_725:
          v189 = v188;
LABEL_271:
          if (v189 <= 0x7FFFFFFF)
          {
            (*(*v7 + 136))(v188);
            v190 = objc_allocWithZone(CalculateError);
            v191 = sub_1C1F52424();

            v192 = [v190 initIncorrectArguments:v189 correctArguments:1 inFunction:v191];

            v193 = (*(*v11 + 224))(v430);
            v195 = v194;
            sub_1C1EAEA50();
            v196 = *(*v195 + 16);
            sub_1C1EAEA9C(v196);
            v197 = *v195;
            *(v197 + 16) = v196 + 1;
            *(v197 + 8 * v196 + 32) = v192;
            v193(v430, 0);
            a4 = v427;

            goto LABEL_273;
          }

          goto LABEL_318;
        }

        if ((v414 & 0x8000000000000000) != 0)
        {
          goto LABEL_314;
        }

        if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) > v414)
        {
          v11 = *(v187 + 8 * v414 + 32);

          goto LABEL_269;
        }

LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        v58 = sub_1C1F52994();
        goto LABEL_65;
      }

      if (v424 != 10193122 || v422 != 0xA300000000000000)
      {
        v4 = v430;
        if ((sub_1C1F52C64() & 1) == 0)
        {
          v14 = v422;
          if ((v424 != 1953653347 || v422 != 0xE400000000000000) && (sub_1C1F52C64() & 1) == 0)
          {
            break;
          }
        }
      }

      v10 = v432[0];
      v4 = v432[0] >> 62;
      if (v432[0] >> 62)
      {
        if (sub_1C1F52994() == 1)
        {
LABEL_177:
          LOBYTE(v430[0]) = 10;
          type metadata accessor for CalculateExpression.RichToken(0);
          v11 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v430, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_1C1F563C0;
          LOBYTE(v430[0]) = 1;
          v128 = swift_allocObject();
          v129 = CalculateExpression.RichToken.init(text:type:isImplicit:)(51, 0xE100000000000000, v430, 0);
          *(v127 + 32) = v128;
          v130 = (v6)(v129);
          swift_allocObject();
          v131 = sub_1C1EB0254(v127, v130);

          v132 = (*(*v11 + 288))(v131);
          v133 = (*(*v11 + 280))(v132);
          if (v133)
          {
            LOBYTE(v430[0]) = 1;
            (*(*v133 + 280))(v430);
          }

          v84 = v12;
          (*(*v12 + 592))(v11);
          a4 = v427;
          if ((v10 & 0xC000000000000001) != 0)
          {
            v134 = MEMORY[0x1C6911DB0](0, v10);
            LOBYTE(v4) = v425;
            goto LABEL_182;
          }

          v4 = v425;
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_181;
          }

          __break(1u);
LABEL_377:
          __break(1u);
          goto LABEL_378;
        }
      }

      else if (*((v432[0] & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_177;
      }

      *a3 = 1;
      v228 = v428();
      v84 = v228;
      if ((v228 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v414, v228);
      }

      else
      {
        if ((v414 & 0x8000000000000000) != 0)
        {
          goto LABEL_377;
        }

        if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v414)
        {
          goto LABEL_380;
        }

        v11 = *(v228 + 8 * v414 + 32);
      }

      if (!v4)
      {
        v230 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_354;
      }

LABEL_378:
      v229 = sub_1C1F52994();
      if (v229 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_380:
        __break(1u);
        goto LABEL_381;
      }

      v230 = v229;
LABEL_354:
      if (v230 <= 0x7FFFFFFF)
      {
        (*(*v7 + 136))(v229);
        v231 = objc_allocWithZone(CalculateError);
        v232 = sub_1C1F52424();

        v233 = [v231 initIncorrectArguments:v230 correctArguments:1 inFunction:v232];
        goto LABEL_356;
      }

LABEL_381:
      __break(1u);
LABEL_382:
      v126 = MEMORY[0x1C6911DB0](a4, v84);
LABEL_172:

      sub_1C1EA1078(v126);

      v418 = 0;
    }

    if (v424 == 1953460082 && v422 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
    {

      v10 = v432[0];
      v157 = v432[0] >> 62;
      if (v432[0] >> 62)
      {
        if (sub_1C1F52994() != 1 && sub_1C1F52994() != 2)
        {
          goto LABEL_414;
        }

LABEL_224:
        LOBYTE(v430[0]) = 10;
        type metadata accessor for CalculateExpression.RichToken(0);
        v11 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(10127586, 0xA300000000000000, v430, 0);
        if (v157)
        {
          if (sub_1C1F52994() != 2)
          {
            goto LABEL_233;
          }
        }

        else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
        {
          goto LABEL_233;
        }

        v159 = (v6)();
        swift_allocObject();
        v160 = sub_1C1E8CC64(v159);

        v161 = (*(*v11 + 288))(v160);
        v4 = *v11 + 280;
        a4 = *v4;
        v162 = (*v4)(v161);
        if (!v162)
        {
          goto LABEL_231;
        }

        v163 = v162;
        if ((v10 & 0xC000000000000001) != 0)
        {
          goto LABEL_450;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
        {
          v164 = *(v10 + 40);

          goto LABEL_230;
        }

        __break(1u);
        goto LABEL_452;
      }

      v158 = *((v432[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v158 == 1 || v158 == 2)
      {
        goto LABEL_224;
      }

LABEL_414:
      *a3 = 1;
      v259 = v428();
      v163 = v259;
      if ((v259 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v414, v259);
LABEL_418:

        if (!v157)
        {
          v261 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_420;
        }

LABEL_446:
        v260 = sub_1C1F52994();
        if (v260 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_448;
        }

        v261 = v260;
LABEL_420:
        if (v261 > 0x7FFFFFFF)
        {
          goto LABEL_449;
        }

        (*(*v7 + 136))(v260);
        v262 = objc_allocWithZone(CalculateError);
        v232 = sub_1C1F52424();

        v233 = [v262 initIncorrectArguments:v261 minArguments:1 maxArguments:2 inFunction:v232];
LABEL_356:
        v234 = v233;

        v235 = (*(*v11 + 224))(v430);
        v237 = v236;
        sub_1C1EAEA50();
        v238 = *(*v237 + 16);
        sub_1C1EAEA9C(v238);
        v239 = *v237;
        *(v239 + 16) = v238 + 1;
        *(v239 + 8 * v238 + 32) = v234;
        v235(v430, 0);
        goto LABEL_357;
      }

      if ((v414 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_446;
      }

      if (*((v259 & 0xFFFFFFFFFFFFFF8) + 0x10) > v414)
      {
        v11 = *(v259 + 8 * v414 + 32);

        goto LABEL_418;
      }

LABEL_448:
      __break(1u);
LABEL_449:
      __break(1u);
LABEL_450:
      v164 = MEMORY[0x1C6911DB0](1, v10);
LABEL_230:
      (*(*v163 + 600))(v164, 1);

LABEL_231:
      v165 = (a4)(v162);
      a4 = v427;
      if (v165)
      {
        LOBYTE(v430[0]) = 1;
        (*(*v165 + 280))(v430);
      }

LABEL_233:
      v142 = (*(*v12 + 592))(v11);
      v4 = v425;
      if ((v10 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1C6911DB0](0, v10);
        goto LABEL_182;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_181:
        v134 = *(v10 + 32);

        goto LABEL_182;
      }

      __break(1u);
LABEL_236:
      v166 = (a4)(v142);
      a4 = v167;
      if (v166 != 13873 || v167 != 0xE200000000000000)
      {
        v168 = sub_1C1F52C64();

        if (v168)
        {
          goto LABEL_202;
        }

        *a3 = 1;
        v170 = (v428)(v169);
        v163 = v170;
        if ((v170 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v12)
            {
              goto LABEL_454;
            }

            a4 = *(v170 + 8 * v12 + 32);

LABEL_243:

            (*(*v7 + 136))(v171);
            v172 = objc_allocWithZone(CalculateError);
            v173 = sub_1C1F52424();

            v417 = [v172 initInvalidFlipArgument_];

            v8 = (*(*a4 + 224))(v430);
            v175 = v174;
            sub_1C1EAEA50();
            v176 = *(*v175 + 16);
            sub_1C1EAEA9C(v176);
            v177 = *v175;
            *(v177 + 16) = v176 + 1;
            *(v177 + 8 * v176 + 32) = v417;
            (v8)(v430, 0);

LABEL_202:

            continue;
          }

          __break(1u);
LABEL_454:
          __break(1u);
LABEL_455:

          v10 = v8[5];
          v254 = (v10 >> 62);
          if (!(v10 >> 62))
          {
            if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
            {
              goto LABEL_457;
            }

LABEL_661:
            *a3 = 1;
            v392 = v428();
            if ((v392 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1C6911DB0](v414, v392);
LABEL_665:

              if (v254)
              {
                goto LABEL_676;
              }

              v394 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            else
            {
              if ((v414 & 0x8000000000000000) == 0)
              {
                if (*((v392 & 0xFFFFFFFFFFFFFF8) + 0x10) > v414)
                {
                  v11 = *(v392 + 8 * v414 + 32);

                  goto LABEL_665;
                }

LABEL_678:
                __break(1u);
LABEL_679:
                __break(1u);
                goto LABEL_680;
              }

LABEL_675:
              __break(1u);
LABEL_676:
              v393 = sub_1C1F52994();
              if (v393 < 0xFFFFFFFF80000000)
              {
                __break(1u);
                goto LABEL_678;
              }

              v394 = v393;
            }

            if (v394 <= 0x7FFFFFFF)
            {
              (*(*v424 + 232))(v393);
              goto LABEL_669;
            }

            goto LABEL_679;
          }

LABEL_660:
          if (sub_1C1F52994() != 1)
          {
            goto LABEL_661;
          }

LABEL_457:
          if ((v10 & 0xC000000000000001) != 0)
          {
            goto LABEL_672;
          }

          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_459;
          }

          __break(1u);
          goto LABEL_675;
        }

LABEL_452:
        a4 = MEMORY[0x1C6911DB0](v12, v163);
        goto LABEL_243;
      }

LABEL_198:

      continue;
    }

    break;
  }

  if ((v424 != 7827312 || v422 != 0xE300000000000000) && (sub_1C1F52C64() & 1) == 0)
  {
LABEL_287:
    if (v413 & 1) != 0 || (v208 = sub_1C1F52C64(), v23 = v424, (v208))
    {
      v10 = *(v4 + 40);
      v4 = v10 >> 62;
      if (v10 >> 62)
      {
LABEL_480:
        if (sub_1C1F52994() != 1 && sub_1C1F52994() != 2)
        {
          goto LABEL_482;
        }

LABEL_292:
        LOBYTE(v430[0]) = 10;
        type metadata accessor for CalculateExpression.RichToken(0);
        v11 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(6778732, 0xE300000000000000, v430, 0);
        (*(*v12 + 592))(v11);
        if (v4)
        {
          v210 = sub_1C1F52994();
          if (v210 != 1)
          {
            goto LABEL_295;
          }
        }

        else
        {
          v210 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v210 != 1)
          {
LABEL_295:
            v217 = (v6)(v210);
            swift_allocObject();
            v218 = sub_1C1E8CC64(v217);

            v219 = (*(*v11 + 312))(v218);
            a4 = *(*v11 + 304);
            v220 = (a4)(v219);
            if (v220)
            {
              v221 = v220;
              if ((v432[0] & 0xC000000000000001) != 0)
              {
                v222 = MEMORY[0x1C6911DB0](0);
              }

              else
              {
                if (!*((v432[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_516;
                }

                v222 = *(v432[0] + 32);
              }

              (*(*v221 + 600))(v222, 1);

              v8 = v423;
              v12 = v411;
            }

            v223 = (a4)();
            if (v223)
            {
              LOBYTE(v430[0]) = 2;
              (*(*v223 + 280))(v430);
            }

            v10 = v432[0];
            a4 = v427;
            v4 = v425;
            if (v432[0] >> 62)
            {
              v224 = sub_1C1F52994();
            }

            else
            {
              v224 = *((v432[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v224)
            {
              __break(1u);
LABEL_494:
              __break(1u);
LABEL_495:
              v134 = MEMORY[0x1C6911DB0](v225, v10);
LABEL_310:

LABEL_182:
              (*(*v12 + 600))(v134, 3);

              if (a4)
              {
                goto LABEL_274;
              }

              goto LABEL_279;
            }

            v225 = v224 - 1;
            if (__OFSUB__(v224, 1))
            {
              goto LABEL_494;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              goto LABEL_495;
            }

            if ((v225 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > v225)
            {
              v134 = *(v10 + 8 * v225 + 32);

              goto LABEL_310;
            }

            __break(1u);
            goto LABEL_498;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v211 = swift_allocObject();
        *(v211 + 16) = xmmword_1C1F563C0;
        LOBYTE(v430[0]) = 1;
        v212 = swift_allocObject();
        v213 = CalculateExpression.RichToken.init(text:type:isImplicit:)(12337, 0xE200000000000000, v430, 0);
        *(v211 + 32) = v212;
        v214 = (v6)(v213);
        swift_allocObject();
        v215 = sub_1C1EB0254(v211, v214);

        sub_1C1EAEAE0(0, v10);
        sub_1C1EB0A48(0, 0, v215, v216, type metadata accessor for CalculateExpression.RichExpression);

        goto LABEL_295;
      }

      v209 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v209 == 1 || v209 == 2)
      {
        goto LABEL_292;
      }

LABEL_482:

      *a3 = 1;
      v292 = (v428)(v291);
      v293 = v292;
      if ((v292 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v414, v292);
      }

      else
      {
        if ((v414 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_579:
          v295 = sub_1C1F52994();
          v294 = 0xFFFFFFFF80000000;
          if (v295 >= 0xFFFFFFFF80000000)
          {
            v296 = v295;
LABEL_488:
            v294 = 0x7FFFFFFFLL;
            if (v296 <= 0x7FFFFFFF)
            {
              (*(*v7 + 136))(v295);
              v297 = objc_allocWithZone(CalculateError);
              v298 = sub_1C1F52424();

              v299 = [v297 initIncorrectArguments:v296 minArguments:1 maxArguments:2 inFunction:v298];
LABEL_572:
              v342 = v299;

              v343 = (*(*v11 + 224))(v430);
LABEL_573:
              v345 = v343;
              v346 = v344;
              sub_1C1EAEA50();
              v347 = *(*v346 + 16);
              sub_1C1EAEA9C(v347);
              v348 = *v346;
              *(v348 + 16) = v347 + 1;
              *(v348 + 8 * v347 + 32) = v342;
              v345(v430, 0);
              goto LABEL_574;
            }

LABEL_582:
            __break(1u);
            goto LABEL_583;
          }

          __break(1u);
LABEL_581:
          __break(1u);
          goto LABEL_582;
        }

        v294 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v294 <= v414)
        {
          goto LABEL_581;
        }

        v11 = *(v292 + 8 * v414 + 32);
      }

      if (!v4)
      {
        v296 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_488;
      }

      goto LABEL_579;
    }

LABEL_337:
    v8 = v430;
    if (v23 == 1952670054 && v14 == 0xE400000000000000 || (sub_1C1F52C64() & 1) != 0)
    {

      v10 = *(v4 + 40);
      v4 = v10 >> 62;
      if (v10 >> 62)
      {
        if (sub_1C1F52994() == 1)
        {
          goto LABEL_342;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_342:
        LOBYTE(v430[0]) = 8;
        type metadata accessor for CalculateExpression.RichToken(0);
        v226 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v227 = MEMORY[0x1C6911DB0](0, v10);
          goto LABEL_345;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v227 = *(v10 + 32);

LABEL_345:
          v12 = v411;
          (*(*v411 + 600))(v227, 1);

          (*(*v411 + 592))(v226);
          goto LABEL_357;
        }

        __break(1u);
        goto LABEL_600;
      }

      *a3 = 1;
      v188 = v428();
      if ((v188 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C6911DB0](v414, v188);
      }

      else
      {
        if ((v414 & 0x8000000000000000) != 0)
        {
LABEL_600:
          __break(1u);
          goto LABEL_601;
        }

        if (*((v188 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v414)
        {
LABEL_603:
          __break(1u);
LABEL_604:
          __break(1u);
LABEL_605:
          v357 = *v10;
          if (*v10 < v414)
          {
            __break(1u);
          }

          else
          {
            v358 = v428();
            sub_1C1EAEAE0(v414, v358);
            sub_1C1EAEAE0(v357, v358);
            sub_1C1EAF144(v414, v357, v358);
            v360 = v359;
            v362 = v361;
            v10 = v363;
            swift_unknownObjectRetain();

            v4 = v10 >> 1;
            v12 = (v10 >> 1) - v362;
            if (!__OFSUB__(v10 >> 1, v362))
            {
              if (!v12)
              {
                goto LABEL_635;
              }

              *v8 = MEMORY[0x1E69E7CC0];
              sub_1C1EAC0D8((v10 >> 1) - v362);
              v188 = swift_unknownObjectRelease();
              if ((v12 & 0x8000000000000000) == 0)
              {
                if (v362 <= v4)
                {
                  v364 = v10 >> 1;
                }

                else
                {
                  v364 = v362;
                }

                v365 = v364 - v362;
                v10 = v360 + 8 * v362;
                do
                {
                  if (!v365)
                  {
                    __break(1u);
                    goto LABEL_672;
                  }

                  v366 = *(**v10 + 136);

                  v368 = v366(v367);
                  v407 = v369;
                  v409 = v368;

                  a4 = *v8;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C1EAF018(0, *(a4 + 16) + 1, 1);
                    a4 = *v8;
                  }

                  v371 = *(a4 + 16);
                  v370 = *(a4 + 24);
                  v412 = v371 + 1;
                  if (v371 >= v370 >> 1)
                  {
                    sub_1C1EAF018((v370 > 1), v412, 1);
                    a4 = *v8;
                  }

                  *(a4 + 16) = v412;
                  v372 = a4 + 16 * v371;
                  *(v372 + 32) = v409;
                  *(v372 + 40) = v407;
                  --v365;
                  v10 += 8;
                  --v12;
                }

                while (v12);
LABEL_629:
                swift_unknownObjectRelease();
LABEL_636:

                v8 = v430;
                v430[0] = a4;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B8, &qword_1C1F57100);
                sub_1C1E785EC(&qword_1EDC2C328, &qword_1EBF211B8, &qword_1C1F57100, MEMORY[0x1E69E6310]);
                v374 = sub_1C1F523E4();
                v376 = v375;

                v377 = sub_1C1EEECCC();
                v378._countAndFlagsBits = v374;
                v378._object = v376;
                evaluate(_:options:)(v379, v378, v377);
                v381 = v380;

                if (v381)
                {
                  type metadata accessor for CalculateExpression.CustomOperandOperation();
                  v382 = v381;
                  v383 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v382);
                  v384 = (*(*v383 + 128))();
                  if (v384)
                  {
                    LOBYTE(v430[0]) = 4;
                    type metadata accessor for CalculateExpression.RichToken(0);
                    v385 = swift_allocObject();
                    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
                    (*(*v411 + 592))(v385);
                  }

                  v386 = (*(*v383 + 120))(v384);
                  (*(*v411 + 592))(v386);

LABEL_540:
                }

                else
                {
                  *a3 = 1;
                }

                if (qword_1EBF216B8 == -1)
                {
LABEL_542:
                  v324 = qword_1EBF22758;
                  v410();
                  v325 = sub_1C1F52464();
                  v327 = v326;

                  v328 = sub_1C1E9C1DC(v325, v327, v324);
                  v330 = v329;
                  v332 = v331;

                  if (v332)
                  {
                    v12 = 1;
                  }

                  else
                  {
                    v12 = v330;
                  }

                  if (v332)
                  {
                    v333 = 1;
                  }

                  else
                  {
                    v333 = v328;
                  }

                  v413 = v333;
                  v10 = v8[5];
                  v4 = v10 >> 62;
                  if (!(v10 >> 62))
                  {
                    v334 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v334 < v333 || v12 < v334)
                    {
                      goto LABEL_551;
                    }

LABEL_701:

                    goto LABEL_575;
                  }

                  if (sub_1C1F52994() >= v333 && v12 >= sub_1C1F52994())
                  {
                    goto LABEL_701;
                  }

LABEL_551:
                  v335 = v428();
                  v293 = v335;
                  v294 = v335 & 0xC000000000000001;
                  if (v413 == v12)
                  {
                    if (v294)
                    {
                      goto LABEL_706;
                    }

                    if ((v414 & 0x8000000000000000) == 0)
                    {
                      if (*((v335 & 0xFFFFFFFFFFFFFF8) + 0x10) > v414)
                      {
                        v11 = *(v335 + 8 * v414 + 32);

                        goto LABEL_556;
                      }

LABEL_714:
                      __break(1u);
LABEL_715:
                      __break(1u);
                      goto LABEL_716;
                    }

                    __break(1u);
LABEL_709:
                    __break(1u);
LABEL_710:
                    v336 = sub_1C1F52994();
                    goto LABEL_558;
                  }

LABEL_583:
                  if (v294)
                  {
                    v11 = MEMORY[0x1C6911DB0](v414, v293);
                  }

                  else
                  {
                    if ((v414 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_709;
                    }

                    if (*((v293 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v414)
                    {
                      goto LABEL_715;
                    }

                    v11 = *(v293 + 8 * v414 + 32);
                  }

                  if (!v4)
                  {
                    v349 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    goto LABEL_589;
                  }

                  goto LABEL_712;
                }

LABEL_698:
                swift_once();
                goto LABEL_542;
              }

              goto LABEL_724;
            }
          }

          __break(1u);
LABEL_724:
          __break(1u);
          goto LABEL_725;
        }

        v11 = *(v188 + 8 * v414 + 32);
      }

      if (!v4)
      {
        v340 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_570;
      }

LABEL_601:
      v188 = sub_1C1F52994();
      if (v188 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_603;
      }

      v340 = v188;
LABEL_570:
      if (v340 <= 0x7FFFFFFF)
      {
        goto LABEL_571;
      }

      goto LABEL_604;
    }

LABEL_361:
    if ((v424 != 7370853 || v422 != 0xE300000000000000) && (sub_1C1F52C64() & 1) == 0)
    {
      goto LABEL_397;
    }

    v10 = *(v4 + 40);
    if (v10 >> 62)
    {
      if (sub_1C1F52994() == 1)
      {
LABEL_366:
        LOBYTE(v430[0]) = 13;
        type metadata accessor for CalculateExpression.RichToken(0);
        v11 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
        LOBYTE(v430[0]) = 7;
        v8 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
        v240 = *(*v411 + 592);
        v240(v11);
        v241 = v240(v8);
        v242 = (v6)(v241);
        swift_allocObject();
        v243 = sub_1C1E8CC64(v242);

        v244 = (*(*v8 + 312))(v243);
        a4 = *(*v8 + 304);
        v245 = (a4)(v244);
        if (v245)
        {
          v246 = v245;
          if ((v10 & 0xC000000000000001) != 0)
          {
            v247 = MEMORY[0x1C6911DB0](0, v10);
          }

          else
          {
            if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_643;
            }

            v247 = *(v10 + 32);
          }

          (*(*v246 + 600))(v247, 1);
        }

        v248 = (a4)(v245);
        if (v248)
        {
          LOBYTE(v430[0]) = 1;
          (*(*v248 + 280))(v430);
        }

        goto LABEL_574;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_366;
    }

    *a3 = 1;
    v373 = v428();
    if ((v373 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6911DB0](v414, v373);
    }

    else
    {
      if ((v414 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_632:
        v188 = sub_1C1F52994();
        if (v188 >= 0xFFFFFFFF80000000)
        {
          v340 = v188;
          goto LABEL_627;
        }

        __break(1u);
LABEL_634:
        __break(1u);
LABEL_635:
        swift_unknownObjectRelease_n();
        a4 = MEMORY[0x1E69E7CC0];
        goto LABEL_636;
      }

      if (*((v373 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v414)
      {
        goto LABEL_634;
      }

      v11 = *(v373 + 8 * v414 + 32);
    }

    if (!(v10 >> 62))
    {
      v340 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_627:
      if (v340 > 0x7FFFFFFF)
      {
        __break(1u);
        goto LABEL_629;
      }

LABEL_571:
      (*(*v7 + 136))(v188);
      v341 = objc_allocWithZone(CalculateError);
      v298 = sub_1C1F52424();

      v299 = [v341 initIncorrectArguments:v340 correctArguments:1 inFunction:v298];
      goto LABEL_572;
    }

    goto LABEL_632;
  }

  v10 = v432[0];
  v4 = v432[0] >> 62;
  if (v432[0] >> 62)
  {
    if (sub_1C1F52994() != 2)
    {
      goto LABEL_436;
    }

LABEL_249:
    LOBYTE(v430[0]) = 7;
    type metadata accessor for CalculateExpression.RichToken(0);
    v11 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
    v4 = v10 & 0xC000000000000001;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v178 = MEMORY[0x1C6911DB0](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_467;
      }

      v178 = *(v10 + 32);
    }

    (*(*v12 + 600))(v178, 1);

    v179 = (*(*v12 + 592))(v11);
    v180 = (v6)(v179);
    swift_allocObject();
    v181 = sub_1C1E8CC64(v180);

    v182 = (*(*v11 + 312))(v181);
    v8 = *(*v11 + 304);
    v183 = (v8)(v182);
    if (!v183)
    {
      goto LABEL_257;
    }

    v184 = v183;
    if (v4)
    {
      v185 = MEMORY[0x1C6911DB0](1, v10);
      goto LABEL_256;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
    {
      v185 = *(v10 + 40);

LABEL_256:
      (*(*v184 + 600))(v185, 1);

LABEL_257:
      v186 = (v8)(v183);
      if (v186)
      {
        LOBYTE(v430[0]) = 1;
        (*(*v186 + 280))(v430);
      }

      goto LABEL_357;
    }

    __break(1u);
    goto LABEL_480;
  }

  if (*((v432[0] & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
  {
    goto LABEL_249;
  }

LABEL_436:
  *a3 = 1;
  v277 = v428();
  if ((v277 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C6911DB0](v414, v277);
LABEL_440:

    if (!v4)
    {
      v279 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_442:
      if (v279 > 0x7FFFFFFF)
      {
        goto LABEL_471;
      }

      (*(*v7 + 136))(v278);
      v280 = objc_allocWithZone(CalculateError);
      v232 = sub_1C1F52424();

      v233 = [v280 initIncorrectArguments:v279 correctArguments:2 inFunction:v232];
      goto LABEL_356;
    }

LABEL_468:
    v278 = sub_1C1F52994();
    if (v278 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_470;
    }

    v279 = v278;
    goto LABEL_442;
  }

  if ((v414 & 0x8000000000000000) != 0)
  {
LABEL_467:
    __break(1u);
    goto LABEL_468;
  }

  if (*((v277 & 0xFFFFFFFFFFFFFF8) + 0x10) > v414)
  {
    v11 = *(v277 + 8 * v414 + 32);

    goto LABEL_440;
  }

LABEL_470:
  __break(1u);
LABEL_471:
  __break(1u);
LABEL_472:
  v283 = sub_1C1F52C64();

  if (v283)
  {
    goto LABEL_473;
  }

LABEL_498:
  if (v412)
  {
    goto LABEL_504;
  }

  if (qword_1EBF216C0 != -1)
  {
    swift_once();
  }

  if ((sub_1C1EA68E0(v424, v422, qword_1EBF22760) & 1) == 0)
  {
    goto LABEL_504;
  }

  if (qword_1EBF216B0 != -1)
  {
    goto LABEL_721;
  }

  while (1)
  {
    v188 = sub_1C1EA68E0(v424, v422, qword_1EBF22750);
    if ((v188 & 1) == 0)
    {
      goto LABEL_605;
    }

LABEL_504:

    if (sub_1C1F52594())
    {

      v300 = sub_1C1F524B4();
      v301 = sub_1C1EB0B40(v300, v424, v422);
      v303 = v302;
      v305 = v304;
      v10 = v306;

      v12 = MEMORY[0x1C6911770](v301, v303, v305, v10);
      v308 = v307;

      v422 = v308;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211B0, &unk_1C1F568A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1F56470;
      *(inited + 32) = 26476;
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = 6778732;
      *(inited + 56) = 0xE300000000000000;
      *(inited + 64) = 0x736F63637261;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = 1936679777;
      *(inited + 88) = 0xE400000000000000;
      *(inited + 96) = 0x6E6973637261;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 112) = 1852404577;
      *(inited + 120) = 0xE400000000000000;
      *(inited + 128) = 0x6E6174637261;
      *(inited + 136) = 0xE600000000000000;
      *(inited + 144) = 1851880545;
      *(inited + 152) = 0xE400000000000000;
      v310 = sub_1C1EAFEDC(inited);

      v424 = v12;
      v311 = sub_1C1E9C178(v12, v308, v310);
      v313 = v312;

      if (v313)
      {

        v424 = v311;
        v422 = v313;
      }
    }

    v412 = v8[5];
    v408 = v412 >> 62;
    v314 = v412 >> 62 ? sub_1C1F52994() : *((v412 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v314 != 1)
    {
      break;
    }

    LOBYTE(v430[0]) = v7[48];
    type metadata accessor for CalculateExpression.RichToken(0);
    v315 = swift_allocObject();
    v4 = v422;

    CalculateExpression.RichToken.init(text:type:isImplicit:)(v424, v422, v430, 0);
    v293 = v411;
    (*(*v411 + 592))(v315);

    if ((v412 & 0xC000000000000001) != 0)
    {
      v316 = MEMORY[0x1C6911DB0](0, v412);
      goto LABEL_513;
    }

    if (*((v412 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v316 = *(v412 + 32);

LABEL_513:
      (*(*v411 + 600))(v316, 3);
      goto LABEL_540;
    }

    __break(1u);
LABEL_706:
    v11 = MEMORY[0x1C6911DB0](v414, v293);
LABEL_556:

    if (v4)
    {
      goto LABEL_710;
    }

    v336 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_558:
    if (v336 <= 0x7FFFFFFF)
    {
      if (v12 >= 0xFFFFFFFF80000000 && v336 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v337 = objc_allocWithZone(CalculateError);
          v338 = sub_1C1F52424();
          v339 = [v337 initIncorrectArguments:v336 correctArguments:v12 inFunction:v338];
          goto LABEL_596;
        }

LABEL_718:
        __break(1u);
LABEL_719:
        __break(1u);
        goto LABEL_720;
      }

LABEL_716:
      __break(1u);
LABEL_717:
      __break(1u);
      goto LABEL_718;
    }

    __break(1u);
LABEL_712:
    v349 = sub_1C1F52994();
LABEL_589:
    if (v349 > 0x7FFFFFFF)
    {
      __break(1u);
      goto LABEL_714;
    }

    if (v413 > 0x7FFFFFFF)
    {
      goto LABEL_717;
    }

    if (v12 < 0xFFFFFFFF80000000 || v413 < 0xFFFFFFFF80000000 || v349 < 0xFFFFFFFF80000000)
    {
      goto LABEL_719;
    }

    if (v12 <= 0x7FFFFFFF)
    {
      v350 = objc_allocWithZone(CalculateError);
      v338 = sub_1C1F52424();
      v339 = [v350 initIncorrectArguments:v349 minArguments:v413 maxArguments:v12 inFunction:v338];
LABEL_596:
      v351 = v339;

      v352 = (*(*v11 + 224))(v430);
      v354 = v353;
      sub_1C1EAEA50();
      v355 = *(*v354 + 16);
      sub_1C1EAEA9C(v355);
      v356 = *v354;
      *(v356 + 16) = v355 + 1;
      *(v356 + 8 * v355 + 32) = v351;
      v352(v430, 0);

      *a3 = 1;
LABEL_575:
      a4 = v427;
      LOBYTE(v4) = v425;
      v12 = v411;
      if (v427)
      {
        goto LABEL_274;
      }

      goto LABEL_279;
    }

LABEL_720:
    __break(1u);
LABEL_721:
    swift_once();
  }

  LOBYTE(v430[0]) = v7[48];
  type metadata accessor for CalculateExpression.RichToken(0);
  v317 = swift_allocObject();

  CalculateExpression.RichToken.init(text:type:isImplicit:)(v424, v422, v430, 0);
  v318 = (*v411 + 592);
  v10 = *v318;
  (*v318)(v317);

  LOBYTE(v430[0]) = 15;
  v319 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
  v405 = v10;
  (v10)(v319);

  if (v408)
  {
    v406 = sub_1C1F52994();
  }

  else
  {
    v406 = *((v412 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v406)
  {
LABEL_539:

    LOBYTE(v430[0]) = 16;
    v323 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
    v405(v323);
    goto LABEL_540;
  }

  v320 = 0;
  while (2)
  {
    if ((v412 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6911DB0](v320, v412);
      v322 = v320 + 1;
      if (__OFADD__(v320, 1))
      {
        goto LABEL_670;
      }

LABEL_531:
      (*(*v411 + 600))(v10, 0);
      if (v408)
      {
        if (v320 < sub_1C1F52994())
        {
LABEL_526:
          LOBYTE(v430[0]) = 11;
          v321 = swift_allocObject();
          CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
          v405(v321);
        }
      }

      else if (v320 < *((v412 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_526;
      }

      ++v320;
      if (v322 == v406)
      {
        goto LABEL_539;
      }

      continue;
    }

    break;
  }

  if (v320 >= *((v412 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_671;
  }

  v10 = *(v412 + 8 * v320 + 32);

  v322 = v320 + 1;
  if (!__OFADD__(v320, 1))
  {
    goto LABEL_531;
  }

LABEL_670:
  __break(1u);
LABEL_671:
  __break(1u);
LABEL_672:
  v281 = MEMORY[0x1C6911DB0](0, v10);
LABEL_460:
  v12 = v411;
  (*(*v411 + 600))(v281, 3);

LABEL_357:

  a4 = v427;
LABEL_273:
  LOBYTE(v4) = v425;
  if (a4)
  {
LABEL_274:
    LOBYTE(v430[0]) = 7;
    type metadata accessor for CalculateExpression.RichToken(0);
    v198 = swift_allocObject();

    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
    v199 = (*(*v12 + 592))(v198);
    v200 = (v6)(v199);
    swift_allocObject();
    v201 = sub_1C1E8CC64(v200);

    v202 = (*(*v198 + 312))(v201);
    v203 = *(*v198 + 304);
    v204 = v203(v202);
    if (v204)
    {
      (*(*v204 + 600))(a4, 1);
    }

    v205 = v203(v204);
    if (v205)
    {
      LOBYTE(v430[0]) = 1;
      (*(*v205 + 280))(v430);
    }

    LOBYTE(v4) = v425;
  }

LABEL_279:
  if (v4)
  {
    LOBYTE(v430[0]) = 16;
    type metadata accessor for CalculateExpression.RichToken(0);
    v206 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v430, 0);
    (*(*v12 + 592))(v206);
  }

  else
  {
  }

  return v12;
}

uint64_t sub_1C1EA68E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C1F52CD4();
  sub_1C1F524A4();
  v6 = sub_1C1F52CF4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C1F52C64() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1C1EA69D8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C1F529D4();

    return v3 & 1;
  }

  else if (*(a2 + 16) && (sub_1C1F52CD4(), (*(*a1 + 168))(v11), v6 = sub_1C1F52CF4(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      result = v10 == a1;
      if (v10 == a1)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C1EA6AF0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1C1F529D4();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for CalculateExpression.Operation(), sub_1C1E758CC(qword_1EDC2CA90, 255, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation), v5 = sub_1C1F523B4(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_1C1E758CC(&qword_1EDC2CA88, 255, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
      do
      {
        v9 = sub_1C1F52414();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_1C1EA6C88(void *a1, unint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  v8 = a1;
  v9 = *a2;
  sub_1C1EB078C(a1, a2);
  v10 = sub_1C1EA7EC8(v8, v7, a3, 1);
  if (((*(*v10 + 568))() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = (*(*v8 + 264))();
  v12 = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C6911DB0](v9, v11);
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v13 = *(v11 + 8 * v9 + 32);
  }

  v28 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
  v27 = (*(*v13 + 224))(v30);
  v4 = v14;
  v12 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v12;
  v29 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_23:
    v12 = sub_1C1EAECE0(0, *(v12 + 16) + 1, 1, v12);
    *v4 = v12;
  }

  v17 = *(v12 + 16);
  v16 = *(v12 + 24);
  if (v17 >= v16 >> 1)
  {
    v12 = sub_1C1EAECE0((v16 > 1), v17 + 1, 1, v12);
    *v4 = v12;
  }

  *(v12 + 16) = v17 + 1;
  *(v12 + 8 * v17 + 32) = v28;
  v27(v30, 0);

  v10 = v29;
LABEL_10:
  v12 = 1;
  a3 = sub_1C1EA7EC8(v8, v7, a3, 1);
  if (((*(*a3 + 568))() & 1) == 0)
  {
LABEL_19:
    (*(*v5 + 176))();
    type metadata accessor for CalculateExpression.RichExpression();
    v24 = swift_allocObject();
    swift_weakInit();
    *(v24 + 24) = 16777473;
    *(v24 + 28) = 1;
    v25 = MEMORY[0x1E69E7CC0];
    *(v24 + 32) = 0;
    *(v24 + 40) = v25;
    *(v24 + 48) = 0;
    *(v24 + 50) = 0;
    swift_beginAccess();
    swift_weakAssign();

    sub_1C1EA0DB8(v10, 1u);
    v31 = 6;
    type metadata accessor for CalculateExpression.RichToken(0);
    v26 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v31, 0);
    sub_1C1EA0C70(v26);

    sub_1C1EA0DB8(a3, 1u);

    return v24;
  }

  result = (*(*v8 + 264))();
  v8 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1C6911DB0](v9, result);
LABEL_15:

    v9 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
    v8 = (*(*v19 + 224))(v30);
    v7 = v20;
    v12 = *v20;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v12;
    v4 = v10;
    if (v21)
    {
LABEL_16:
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_1C1EAECE0((v22 > 1), v23 + 1, 1, v12);
        *v7 = v12;
      }

      *(v12 + 16) = v23 + 1;
      *(v12 + 8 * v23 + 32) = v9;
      (v8)(v30, 0);

      v10 = v4;
      goto LABEL_19;
    }

LABEL_26:
    v12 = sub_1C1EAECE0(0, *(v12 + 16) + 1, 1, v12);
    *v7 = v12;
    goto LABEL_16;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v9 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(result + 8 * v9 + 32);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA71A8(void *a1, unint64_t *a2, _BYTE *a3)
{
  v5 = v3;
  v7 = a2;
  v9 = *a2;
  v10 = (*a1 + 264);
  v11 = *v10;
  v12 = (*v10)();
  if (v12 >> 62)
  {
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 >= v13)
  {
    goto LABEL_11;
  }

  v15 = (v11)(v14);
  v16 = v15;
  if ((v15 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v15 + 8 * v9 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_85:
    v23 = MEMORY[0x1C6911DB0](v9, v16);
    goto LABEL_17;
  }

  v17 = MEMORY[0x1C6911DB0](v9, v15);
LABEL_8:

  v18 = *(v17 + 48);

  v81[0] = v18;
  if ((CalculateExpression.TokenType.isOpen.getter() & 1) == 0)
  {
LABEL_11:
    v20 = sub_1C1EA7EC8(a1, v7, a3, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1F563C0;
    *(result + 32) = v20;
    return result;
  }

  v78 = *(*v5 + 176);
  if (v78())
  {
    v19 = CalculateExpression.format.getter();

    v4 = v19 == 1;
  }

  else
  {
    v4 = 0;
  }

  v22 = v11();
  v16 = v22;
  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_85;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_87;
  }

  if (v9 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v23 = *(v22 + 8 * v9 + 32);

LABEL_17:

  v24 = *(v23 + 48);

  v81[0] = v24;
  v77 = v7;
  if (v4 & 1 | ((CalculateExpression.TokenType.isLaTeX.getter() & 1) == 0))
  {
    goto LABEL_31;
  }

  *a3 = 1;
  v25 = v11();
  v26 = v25;
  LODWORD(v74) = v4;
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v9 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_98;
  }

  v4 = *(v25 + 8 * v9 + 32);

  while (1)
  {

    v28 = (v11)(v27);
    v26 = v28;
    v75 = v5;
    v76 = a3;
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1C6911DB0](v9, v28);
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_99;
      }

      if (v9 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_102;
      }

      v29 = *(v28 + 8 * v9 + 32);
    }

    (*(*v29 + 136))(v30);

    v31 = objc_allocWithZone(CalculateError);
    v32 = sub_1C1F52424();

    v33 = [v31 initUnexpectedSymbol_];

    v80 = (*(*v4 + 224))(v81);
    v35 = v34;
    v36 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v35 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1C1EAECE0(0, v36[2] + 1, 1, v36);
      *v35 = v36;
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      v36 = sub_1C1EAECE0((v38 > 1), v39 + 1, 1, v36);
      *v35 = v36;
    }

    v7 = v77;
    v36[2] = v39 + 1;
    v36[v39 + 4] = v33;
    v80(v81, 0);

    v5 = v75;
    a3 = v76;
    v4 = v74;
LABEL_31:
    sub_1C1EB078C(a1, v7);
    v79 = sub_1C1EA7C70(a1, v7, a3);
    v7 = *v7;
    v40 = v11();
    if (v40 >> 62)
    {
LABEL_88:
      v41 = sub_1C1F52994();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 >= v41)
    {
      break;
    }

    v43 = (v11)(v42);
    v26 = v43;
    if ((v43 & 0xC000000000000001) != 0)
    {
LABEL_95:
      v44 = MEMORY[0x1C6911DB0](v7, v26);
      goto LABEL_38;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v43 + 8 * v7 + 32);

LABEL_38:

        v45 = *(v44 + 48);

        v81[0] = v45;
        if (v4 & 1 | ((CalculateExpression.TokenType.isLaTeX.getter() & 1) == 0))
        {
          goto LABEL_51;
        }

        *a3 = 1;
        v46 = v11();
        v26 = v46;
        v76 = a3;
        if ((v46 & 0xC000000000000001) != 0)
        {
          goto LABEL_111;
        }

        if ((v7 & 0x8000000000000000) == 0)
        {
          if (v7 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            a3 = *(v46 + 8 * v7 + 32);

            goto LABEL_43;
          }

          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          v4 = sub_1C1EAECE0(0, *(v4 + 16) + 1, 1, v4);
          *v5 = v4;
          goto LABEL_48;
        }

        __break(1u);
LABEL_113:
        v48 = MEMORY[0x1C6911DB0](v7, v26);
        goto LABEL_47;
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      v64 = MEMORY[0x1C6911DB0](v9, v26);
LABEL_62:

      v65 = *(v64 + 48);

      if (v4 == 53)
      {
        if (v65 != 53)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v81[38] = v4;
        if (v65 == 53)
        {
          goto LABEL_68;
        }

        v81[37] = v65;
        sub_1C1E9019C();
        v58 = sub_1C1F52414();
        if ((v58 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      sub_1C1EB078C(a1, v77);
      return v79;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    v60 = MEMORY[0x1C6911DB0](v7, v26);
LABEL_58:

    v61 = *(v60 + 48);

    v81[0] = v61;
    v62 = CalculateExpression.TokenType.match.getter(&v82);
    v4 = v82;
    v63 = (v11)(v62);
    v26 = v63;
    if ((v63 & 0xC000000000000001) != 0)
    {
      goto LABEL_104;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
LABEL_106:
      __break(1u);
    }

    else if (v9 < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v64 = *(v63 + 8 * v9 + 32);

      goto LABEL_62;
    }

    __break(1u);
LABEL_108:
    v69 = MEMORY[0x1C6911DB0](v9, v26);
LABEL_74:

    v70 = *(v69 + 48);

    v81[0] = v70;
    v82 = 15;
    sub_1C1E9019C();
    if (sub_1C1F52414())
    {
      return v79;
    }

LABEL_75:
    *a3 = 1;
    v71 = v11();
    v26 = v71;
    if ((v71 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x1C6911DB0](v9, v71);
LABEL_79:

      sub_1C1EA1078(v72);

      return v79;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v72 = *(v71 + 8 * v9 + 32);

      goto LABEL_79;
    }

    __break(1u);
LABEL_93:
    v4 = MEMORY[0x1C6911DB0](v9, v26);
  }

  while (1)
  {
LABEL_51:
    v56 = v11();
    if (v56 >> 62)
    {
      v57 = sub_1C1F52994();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 < v57)
    {
      v59 = (v11)(v58);
      v26 = v59;
      if ((v59 & 0xC000000000000001) != 0)
      {
        goto LABEL_100;
      }

      if (v7 < 0)
      {
        goto LABEL_103;
      }

      if (v7 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v60 = *(v59 + 8 * v7 + 32);

        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_106;
    }

LABEL_68:
    if (!(v78)(v58))
    {
      goto LABEL_75;
    }

    v66 = CalculateExpression.allowPartialExpressions.getter();

    if ((v66 & 1) == 0)
    {
      goto LABEL_75;
    }

    v68 = (v11)(v67);
    v26 = v68;
    if ((v68 & 0xC000000000000001) != 0)
    {
      goto LABEL_108;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 8 * v9 + 32);

      goto LABEL_74;
    }

    __break(1u);
LABEL_111:
    a3 = MEMORY[0x1C6911DB0](v7, v26);
LABEL_43:

    result = (v11)(v47);
    v26 = result;
    v75 = v5;
    if ((result & 0xC000000000000001) != 0)
    {
      goto LABEL_113;
    }

    if (v7 < 0)
    {
      goto LABEL_115;
    }

    if (v7 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v48 = *(result + 8 * v7 + 32);

LABEL_47:

    (*(*v48 + 136))(v49);

    v50 = objc_allocWithZone(CalculateError);
    v51 = sub_1C1F52424();

    v74 = [v50 initUnexpectedSymbol_];

    v73 = (*(*a3 + 224))(v81);
    v5 = v52;
    v4 = *v52;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *v5 = v4;
    if ((v53 & 1) == 0)
    {
      goto LABEL_116;
    }

LABEL_48:
    v55 = *(v4 + 16);
    v54 = *(v4 + 24);
    if (v55 >= v54 >> 1)
    {
      v4 = sub_1C1EAECE0((v54 > 1), v55 + 1, 1, v4);
      *v5 = v4;
    }

    v5 = v75;
    *(v4 + 16) = v55 + 1;
    *(v4 + 8 * v55 + 32) = v74;
    v73(v81, 0);

    a3 = v76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA7C70(void *a1, uint64_t *a2, _BYTE *a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v6 = *(*a1 + 264);
  while (1)
  {
    sub_1C1E89704(a1, a2, a3);

    MEMORY[0x1C6911980](v7);
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    v8 = sub_1C1F52724();
    v9 = v22;
    v10 = *a2;
    v11 = v6(v8);
    if (v11 >> 62)
    {
      v12 = sub_1C1F52994();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10 >= v12)
    {
LABEL_19:

      return v9;
    }

    result = v6(v13);
    if ((result & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6911DB0](v10, result);
      goto LABEL_11;
    }

    if (v10 < 0)
    {
      break;
    }

    if (v10 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v15 = *(result + 8 * v10 + 32);

LABEL_11:

    v16 = *(v15 + 48);

    v21 = v16;
    v20 = 11;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v21, &v20) & 1) == 0)
    {
      goto LABEL_19;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1C1EAEE14(0, *(v5 + 2) + 1, 1, v5);
    }

    v18 = *(v5 + 2);
    v17 = *(v5 + 3);
    if (v18 >= v17 >> 1)
    {
      v5 = sub_1C1EAEE14((v17 > 1), v18 + 1, 1, v5);
    }

    *(v5 + 2) = v18 + 1;
    *&v5[8 * v18 + 32] = v10;
    sub_1C1EB078C(a1, a2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C1EA7EC8(void *a1, unint64_t *a2, unint64_t a3, char a4)
{
  v5 = v4;
  (*(*v4 + 176))();
  type metadata accessor for CalculateExpression.RichExpression();
  v9 = swift_allocObject();
  swift_weakInit();
  *(v9 + 24) = 16777473;
  *(v9 + 28) = 1;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 32) = 0;
  *(v9 + 40) = v10;
  v11 = (v9 + 40);
  *(v9 + 48) = 0;
  *(v9 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();

  v13 = *a2;
  v14 = *a1 + 264;
  v101 = *v14;
  v15 = (*v14)(v12);
  if (v15 >> 62)
  {
    v16 = sub_1C1F52994();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= v16)
  {
    return v9;
  }

  v18 = (v101)(v17);
  v19 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1C6911DB0](v13, v18);
    goto LABEL_8;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v18 + 8 * v13 + 32);

LABEL_8:

    v21 = *(v20 + 48);

    v103[0] = v21;
    v104 = 4;
    v98 = a3;
    v99 = v14;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v103, &v104) & 1) == 0)
    {
      goto LABEL_18;
    }

    v22 = v101();
    v19 = v22;
    if ((v22 & 0xC000000000000001) != 0)
    {
      goto LABEL_77;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_79;
    }

    if (v13 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v22 + 8 * v13 + 32);

      while (1)
      {

        v25 = (*(*v23 + 160))(v24);
        if (!v26)
        {
          v25 = (*(*v23 + 136))(v25);
        }

        v27 = v25;
        v28 = v26;
        v103[0] = v23[48];
        type metadata accessor for CalculateExpression.RichToken(0);
        v29 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(v27, v28, v103, 0);

        sub_1C1EA0C70(v29);

        v30 = sub_1C1EB078C(a1, a2);
        v13 = *a2;
        v14 = v99;
        v31 = (v101)(v30);
        if (v31 >> 62)
        {
LABEL_79:
          v32 = sub_1C1F52994();
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a3 = v98;

        if (v13 >= v32)
        {
          return v9;
        }

LABEL_18:
        v33 = v101();
        v19 = v33;
        if ((v33 & 0xC000000000000001) != 0)
        {
          goto LABEL_74;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v13 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v34 = *(v33 + 8 * v13 + 32);

          goto LABEL_22;
        }

        __break(1u);
LABEL_77:
        v23 = MEMORY[0x1C6911DB0](v13, v19);
      }
    }

    __break(1u);
    goto LABEL_81;
  }

  __break(1u);
LABEL_74:
  v34 = MEMORY[0x1C6911DB0](v13, v19);
LABEL_22:

  v103[0] = v34[48];
  if (CalculateExpression.TokenType.isOpen.getter())
  {
    v35 = v5;
    v13 = sub_1C1EA71A8(a1, a2, a3);
    v22 = v36;
    v20 = v13 >> 62;
    if (!(v13 >> 62))
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_82;
      }

LABEL_25:
      *a3 = 1;
      if (!*(v22 + 16))
      {
        goto LABEL_82;
      }

      a3 = *(v22 + 32);

      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v94 = v20;
      v38 = (v101)(v37);
      v39 = v38;
      if ((v38 & 0xC000000000000001) != 0)
      {
        goto LABEL_125;
      }

      if (a3 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v35 = *(v38 + 8 * a3 + 32);

        while (1)
        {
          v97 = v5;

          v40 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
          v41 = (*(*v35 + 224))(v103);
          v43 = v42;
          v14 = *v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v43 = v14;
          v95 = a2;
          v93 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v14 = sub_1C1EAECE0(0, *(v14 + 16) + 1, 1, v14);
            *v43 = v14;
          }

          v46 = *(v14 + 16);
          v45 = *(v14 + 24);
          a3 = v46 + 1;
          if (v46 >= v45 >> 1)
          {
            v14 = sub_1C1EAECE0((v45 > 1), v46 + 1, 1, v14);
            *v43 = v14;
          }

          v20 = v94;
          *(v14 + 16) = a3;
          *(v14 + 8 * v46 + 32) = v40;
          v93(v103, 0);

          a2 = v95;
          v5 = v97;
LABEL_35:
          v47 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v20)
          {
LABEL_83:
            v39 = sub_1C1F52994();
            if (!v39)
            {
LABEL_84:

              goto LABEL_85;
            }
          }

          else
          {
LABEL_36:
            v39 = *(v47 + 16);
            if (!v39)
            {
              goto LABEL_84;
            }
          }

          v96 = v5;
          if (v39 < 1)
          {
            __break(1u);
LABEL_116:
            v39 = MEMORY[0x1C6911DB0](v14, v35);
            goto LABEL_93;
          }

          v48 = 0;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              a3 = MEMORY[0x1C6911DB0](v48, v13);
            }

            else
            {
              a3 = *(v13 + 8 * v48 + 32);
            }

            ++v48;
            v49 = (*(*a3 + 392))();
            swift_beginAccess();
            sub_1C1E8CECC(v49);
            swift_endAccess();
            *(v9 + 28) = 1;
          }

          while (v39 != v48);

LABEL_46:
          v5 = v96;
LABEL_85:
          if ((a4 & 1) == 0)
          {
            goto LABEL_111;
          }

LABEL_86:
          v14 = *a2;
          v74 = v101();
          if (v74 >> 62)
          {
            v39 = v5;
            v75 = sub_1C1F52994();
          }

          else
          {
            v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v14 >= v75)
          {
            goto LABEL_101;
          }

          v77 = (v101)(v76);
          v35 = v77;
          if ((v77 & 0xC000000000000001) != 0)
          {
            goto LABEL_116;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_118:
            v90 = MEMORY[0x1C6911DB0](v39, v35);
LABEL_108:

            v91 = *(v90 + 48);

            v103[0] = v91;
            v104 = 7;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v103, &v104))
            {
              v92 = sub_1C1EA8D94(a1, a2, v98);
              sub_1C1EA0C70(v92);
              goto LABEL_110;
            }

            goto LABEL_111;
          }

          if (v14 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_120;
          }

          v39 = *(v77 + 8 * v14 + 32);

LABEL_93:

          v78 = *(v39 + 48);

          v103[0] = v78;
          v104 = 8;
          v76 = static CalculateExpression.TokenType.== infix(_:_:)(v103, &v104);
          if ((v76 & 1) == 0)
          {
            goto LABEL_101;
          }

          v79 = v101();
          v35 = v79;
          if ((v79 & 0xC000000000000001) != 0)
          {
            goto LABEL_122;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v14 < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v80 = *(v79 + 8 * v14 + 32);

            while (1)
            {

              v82 = (*(*v80 + 160))(v81);
              if (!v83)
              {
                v82 = (*(*v80 + 136))(v82);
              }

              v84 = v82;
              v85 = v83;
              v103[0] = v80[48];
              type metadata accessor for CalculateExpression.RichToken(0);
              v14 = swift_allocObject();
              CalculateExpression.RichToken.init(text:type:isImplicit:)(v84, v85, v103, 0);

              sub_1C1EA0C70(v14);

              v76 = sub_1C1EB078C(a1, a2);
LABEL_101:
              v39 = *a2;
              v86 = (v101)(v76);
              v87 = v86 >> 62 ? sub_1C1F52994() : *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v39 >= v87)
              {
                goto LABEL_111;
              }

              v89 = (v101)(v88);
              v35 = v89;
              if ((v89 & 0xC000000000000001) != 0)
              {
                goto LABEL_118;
              }

              if (v39 < 0)
              {
LABEL_120:
                __break(1u);
              }

              else if (v39 < *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v90 = *(v89 + 8 * v39 + 32);

                goto LABEL_108;
              }

              __break(1u);
LABEL_122:
              v80 = MEMORY[0x1C6911DB0](v14, v35);
            }
          }

          __break(1u);
LABEL_125:
          v35 = MEMORY[0x1C6911DB0](a3, v39);
        }
      }

      __break(1u);
      goto LABEL_127;
    }

LABEL_81:
    v35 = v22;
    v73 = sub_1C1F52994();
    v22 = v35;
    if (v73 == 1)
    {
LABEL_82:

      v47 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v20)
      {
        goto LABEL_83;
      }

      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v103[0] = v34[48];
  v104 = 10;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v103, &v104))
  {
    v103[0] = 0;
    v50 = sub_1C1EA13B8(a1, a2, a3, v103);
    v39 = v50;
    v51 = 0;
LABEL_49:
    sub_1C1EA0DB8(v50, v51);

    goto LABEL_85;
  }

  v103[0] = v34[48];
  v104 = 50;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v103, &v104))
  {
    v50 = sub_1C1EA6C88(a1, a2, a3);
    v39 = v50;
    v51 = 1;
    goto LABEL_49;
  }

  v103[0] = v34[48];
  if (CalculateExpression.TokenType.isOperand.getter())
  {
    v52 = a2;
    v53 = *(*v34 + 160);

    v55 = v53(v54);
    v13 = v34;
    if (!v56)
    {
      v55 = (*(*v34 + 136))(v55);
    }

    v57 = v55;
    v39 = v56;
    a2 = v52;
    v103[0] = *(v13 + 48);
    type metadata accessor for CalculateExpression.RichToken(0);
    a3 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(v57, v39, v103, 0);

    sub_1C1EA0C70(a3);

    sub_1C1EB078C(a1, v52);
    v103[0] = *(v13 + 48);
    v104 = 1;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v103, &v104) & 1) == 0)
    {
      goto LABEL_85;
    }

    if (a4)
    {
      goto LABEL_86;
    }

    v58 = (*(*a1 + 288))(*v52);
    if (v58)
    {
      v59 = v58;
      v103[0] = *(v58 + 48);
      if (CalculateExpression.TokenType.isConstant.getter() & 1) != 0 || (v104 = v59[48], v102 = 14, (static CalculateExpression.TokenType.== infix(_:_:)(&v104, &v102)))
      {
        v60 = *(*v59 + 160);

        v62 = v60(v61);
        if (!v63)
        {
          v62 = (*(*v59 + 136))(v62);
        }

        v64 = v62;
        v65 = v63;
        v103[0] = v59[48];
        v66 = swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(v64, v65, v103, 0);

        sub_1C1EA0C70(v66);

        sub_1C1EB078C(a1, v52);
      }

LABEL_110:
    }

LABEL_111:

    return v9;
  }

  *a3 = 1;
  result = v101();
  v39 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_127:
    v68 = MEMORY[0x1C6911DB0](v13, v39);
LABEL_66:
    v96 = v5;

    v39 = [objc_allocWithZone(CalculateError) initWithCode:-1000 userInfo:0];
    v14 = (*(*v68 + 224))(v103);
    v11 = v69;
    v13 = *v69;
    v70 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v13;
    v5 = a2;
    if (v70)
    {
LABEL_67:
      v72 = *(v13 + 16);
      v71 = *(v13 + 24);
      a3 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v13 = sub_1C1EAECE0((v71 > 1), v72 + 1, 1, v13);
        *v11 = v13;
      }

      *(v13 + 16) = a3;
      *(v13 + 8 * v72 + 32) = v39;
      (v14)(v103, 0);

      a2 = v5;
      goto LABEL_46;
    }

LABEL_129:
    v13 = sub_1C1EAECE0(0, *(v13 + 16) + 1, 1, v13);
    *v11 = v13;
    goto LABEL_67;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_129;
  }

  if (v13 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v68 = *(result + 8 * v13 + 32);

    goto LABEL_66;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EA8D94(void *a1, unint64_t *a2, unint64_t a3)
{
  v4 = v3;
  sub_1C1EB078C(a1, a2);
  v8 = sub_1C1EA7EC8(a1, a2, a3, 1);
  v19[0] = 7;
  type metadata accessor for CalculateExpression.RichToken(0);
  v9 = swift_allocObject();
  v10 = CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v19, 0);
  (*(*v4 + 176))(v10);
  type metadata accessor for CalculateExpression.RichExpression();
  v11 = swift_allocObject();
  swift_weakInit();
  *(v11 + 24) = 16777473;
  *(v11 + 28) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 32) = 0;
  *(v11 + 40) = v12;
  *(v11 + 48) = 0;
  *(v11 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();

  v13 = (*(*v9 + 312))(v11);
  v14 = *(*v9 + 304);
  v15 = v14(v13);
  if (v15)
  {
    (*(*v15 + 600))(v8, 1);
  }

  v16 = v14(v15);
  if (v16)
  {
    v18 = 1;
    (*(*v16 + 280))(&v18);
  }

  return v9;
}

BOOL sub_1C1EA8FF4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_1C1E9019C();
  }

  while ((sub_1C1F52414() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1C1EA9078(uint64_t (*a1)(double), unint64_t a2)
{
  v169 = a1;
  v5 = sub_1C1F52034();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + 176);
  v168 = v2;
  v10 = v9(v6);
  if (v10)
  {
    v11 = CalculateExpression.allowedOperations.getter();
    v12 = v169;
    v13 = sub_1C1EA6AF0(v169, v11);

    if ((v13 & 1) != 0 || (type metadata accessor for CalculateExpression.CustomOperandOperation(), swift_dynamicCastClass()))
    {
    }

    else
    {
      v176 = v12;
      v174[0] = *sub_1C1EB9F9C();
      type metadata accessor for CalculateExpression.Operation();
      v3 = sub_1C1E758CC(&qword_1EDC2CA88, 255, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);

      v41 = sub_1C1F52414();

      if ((v41 & 1) == 0)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = v168;
  v15 = (*(*v168 + 344))(v10);
  if (!v15)
  {
    goto LABEL_8;
  }

  if (((*(*v169 + 88))() & 1) == 0)
  {
LABEL_29:
    v42 = 0;
    return v42 & 1;
  }

  v14 = v168;
  (*(*v168 + 256))(0);
  v15 = (*(*v14 + 232))(1);
LABEL_8:
  v16 = (v9)(v15);
  if (!v16)
  {
LABEL_37:
    v48 = v169;
    v8 = v14;
    v167 = (*(*v169 + 104))(v14, a2);
    if (v167)
    {
      (*(*v14 + 352))(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1F56490;
      *(inited + 32) = *sub_1C1E7D3A8();
      v3 = inited + 32;

      *(inited + 40) = *sub_1C1E7D258();

      *(inited + 48) = *sub_1C1E7D2CC();

      v14 = &v165;
      v50 = *sub_1C1E7D17C();
      *(inited + 56) = v50;
      v176 = v48;
      MEMORY[0x1EEE9AC00](v50);
      *(&v165 - 2) = &v176;

      v51 = sub_1C1E9FCC4(sub_1C1EB0E5C, (&v165 - 4), inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v165 = 0;
      if ((v51 & 1) == 0)
      {
        v52 = CalculateExpression.RichExpression.editingTokens()();
        v53 = *(v52 + 16);
        if (!v53)
        {
          goto LABEL_95;
        }

        v54 = (v52 + 32 * v53);
        v55 = *v54;
        v14 = v54[1];
        v56 = v54[2];
        v3 = v54[3];

        v176 = v55;
        v177 = v14;
        v178 = v56;
        v179 = v3;
        v57 = CalculateExpression.RichExpression.EditingToken.token.getter();

        if (v57)
        {
          v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          LOBYTE(v176) = *(v57 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          v58 = CalculateExpression.TokenType.isOperand.getter();
          if (v58 & 1) != 0 || (LOBYTE(v174[0]) = *(v57 + v14), v58 = CalculateExpression.TokenType.isFunction.getter(), (v58) || (LOBYTE(v176) = *(v57 + v14), v58 = CalculateExpression.TokenType.isOpen.getter(), (v58) || (LOBYTE(v176) = *(v57 + v14), v58 = CalculateExpression.TokenType.isClose.getter(), (v58))
          {
            if ((v9)(v58))
            {
              sub_1C1E904FC(1);
            }
          }
        }
      }
    }

    else
    {
      v165 = 0;
    }

    while (1)
    {
      sub_1C1E8D4F8();
      v180 = MEMORY[0x1E69E7CD0];
      CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EAAE50, &v176);
      v19 = v176;
      if (v176)
      {
        v3 = v178;
        v59 = v179;
        v60 = v177;
        v174[0] = v176;
        v174[1] = v177;
        v174[2] = v178;
        v174[3] = v179;
        v61 = CalculateExpression.RichExpression.EditingToken.token.getter();
        sub_1C1E98278(v19, v60, v3, v59);
      }

      else
      {
        v61 = 0;
      }

      v62 = CalculateExpression.RichExpression.editingTokens()();
      v172 = *(v62 + 16);
      if (!v172)
      {
        break;
      }

      v166 = v61;
      v8 = 0;
      v171 = (v62 + 32);
      v9 = &unk_1EDC31000;
      v170 = v62;
      while (1)
      {
        if (v8 >= *(v62 + 16))
        {
          __break(1u);
          goto LABEL_152;
        }

        v63 = v171 + 32 * v8;
        v64 = *v63;
        v14 = *(v63 + 1);
        v173 = *(v63 + 3);

        swift_retain_n();
        sub_1C1EAD094(&v176, v64);

        v176 = v14;

        sub_1C1EBA588(&v176);
        v65 = v176;
        v66 = *v64;
        v19 = v176 - 1;
        if (__OFSUB__(v176, 1))
        {
          break;
        }

        ++v8;
        LOBYTE(v14) = v66 - 96;
        v67 = *(v66 + 416);
        while (1)
        {
          v68 = v67(v19);
          if (!v68)
          {
            break;
          }

          v3 = v68;
          while (1)
          {
            LOBYTE(v174[0]) = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            v175 = 10;
            v69 = static CalculateExpression.TokenType.== infix(_:_:)(v174, &v175);
            if (v69)
            {
              v70 = (*(*v3 + 280))(v69);
              if (v70)
              {
                v71 = v70;
                if ((*(*v70 + 576))(v70))
                {
                  goto LABEL_81;
                }
              }

              v72 = (*(*v3 + 304))(v70);
              if (v72)
              {
                v71 = v72;
                if ((*(*v72 + 576))(v72))
                {
LABEL_81:

                  sub_1C1EAD094(v174, v71);

                  goto LABEL_55;
                }
              }
            }

            if (v65 >= 1)
            {
              break;
            }

            v3 = v67(v19);
            if (!v3)
            {
              goto LABEL_54;
            }
          }

          v73 = v65 + 1;
          while (1)
          {
            v65 = v73 - 2;
            v74 = v67(v73 - 2);
            if (v74)
            {
              v75 = *(v74 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

              if (v75 != 53)
              {
                LOBYTE(v174[0]) = v75;
                v175 = 15;
                sub_1C1E9019C();
                if (sub_1C1F52414())
                {
                  break;
                }
              }
            }

            if (--v73 <= 1)
            {
              v65 = 0;
              break;
            }
          }

          v19 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            goto LABEL_94;
          }
        }

LABEL_54:

LABEL_55:
        v62 = v170;
        if (v8 == v172)
        {

          v8 = v168;
          v61 = v166;
          goto LABEL_84;
        }
      }

LABEL_94:
      __break(1u);
LABEL_95:
    }

LABEL_84:
    v76 = sub_1C1E7DF74();
    v77 = v169;
    if (*v76 == v169 || *sub_1C1E7DF24() == v77)
    {
      v78 = 0;
    }

    else
    {
      v78 = 2;
    }

    sub_1C1E90660(v180, v61, v78);

    v79 = sub_1C1E8E8D8();
    v80 = (*(*v8 + 392))(v79);
    if (v80 >> 62)
    {
      v81 = sub_1C1F52994();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v167;

    if (!v81)
    {
      (*(*v8 + 424))(v82);
    }

    return v42 & 1;
  }

  v3 = v16;
  if ((*(*v14 + 368))() != 2)
  {
    goto LABEL_36;
  }

  v17 = v169;
  v18 = *(*v169 + 80);
  v19 = *v169 + 80;
  v18(&v176);
  LOBYTE(v174[0]) = v176;
  LOBYTE(v180) = 0;
  v20 = sub_1C1EB0E7C();
  if (sub_1C1F52414())
  {
    goto LABEL_36;
  }

  v172 = v20;
  v21 = type metadata accessor for CalculateExpression.Operation();
  v22 = *sub_1C1E7CE54();

  v23 = v17;
  v24 = v21;
  LOBYTE(v21) = static CalculateExpression.Operation.== infix(_:_:)(v23, v22);

  v173 = v24;
  if ((v21 & 1) != 0 || (v26 = *sub_1C1E7CD3C(), , v27 = static CalculateExpression.Operation.== infix(_:_:)(v169, v26), v25 = , v27))
  {
    v28 = v168;
    v29 = (*(*v168 + 392))(v25);
    if (v29 >> 62)
    {
      v28 = v24;
      v43 = v29;
      v30 = sub_1C1F52994();
      v29 = v43;
      if (v30)
      {
LABEL_15:
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
          __break(1u);
        }

        else if ((v29 & 0xC000000000000001) == 0)
        {
          if ((v32 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v32 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = *(v29 + 8 * v32 + 32);

            goto LABEL_20;
          }

          __break(1u);
          goto LABEL_195;
        }

        v33 = MEMORY[0x1C6911DB0](v32);
LABEL_20:

        LOBYTE(v176) = *(v33 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v174[0]) = 1;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v176, v174) & 1) == 0)
        {

          goto LABEL_35;
        }

        v171 = v19;
        v34 = (*(*v33 + 232))();
        v36 = sub_1C1E982B8(v34, v35);
        v38 = v37;

        if (!v38)
        {

          v19 = v171;
          goto LABEL_35;
        }

        if (v36 == 101 && v38 == 0xE100000000000000)
        {
        }

        else
        {
          v40 = sub_1C1F52C64();

          v19 = v171;
          if ((v40 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_36:

        v14 = v168;
        goto LABEL_37;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_35:
  v44 = *sub_1C1E7DF74();

  v45 = v169;
  v46 = static CalculateExpression.Operation.== infix(_:_:)(v169, v44);

  if (v46)
  {
    goto LABEL_36;
  }

  (v18)(&v176, v47);
  LOBYTE(v174[0]) = 1;
  v9 = v45;
  if (static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
  {
    v84 = CalculateExpression.postfixStack.getter();
    v85 = v84 >> 62 ? sub_1C1F52994() : *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v85 > 0)
    {
      goto LABEL_106;
    }
  }

  v18(&v176);
  LOBYTE(v174[0]) = 2;
  if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
  {
    v18(&v176);
    LOBYTE(v174[0]) = 3;
    if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
    {
LABEL_105:

      v42 = 0;
      return v42 & 1;
    }
  }

  v86 = CalculateExpression.postfixStack.getter();
  if (v86 >> 62)
  {
    goto LABEL_208;
  }

  v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_104:

  if (v87 < 2)
  {
    goto LABEL_105;
  }

LABEL_106:
  v88 = CalculateExpression.postfixStack.getter();
  v28 = v88;
  if (v88 >> 62)
  {
LABEL_195:
    v89 = sub_1C1F52994();
    if (!v89)
    {
LABEL_196:

      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      v91 = v19;
      MEMORY[0x1C6911DB0](v90, v28);
LABEL_113:

      v92 = CalculateExpression.rich.getter();

      type metadata accessor for CalculateExpression.RichExpression();
      swift_allocObject();
      v93 = sub_1C1EB0340(v92);

      v94 = *(*v93 + 232);

      v94(1);
      (*(*v93 + 256))(0);

      v95 = *sub_1C1E81450();

      v96 = static CalculateExpression.Operation.== infix(_:_:)(v9, v95);

      v98 = 0;
      if (v96)
      {
        v99 = CalculateExpression.postfixStack.getter();
        if (v99 >> 62)
        {
          v100 = sub_1C1F52994();
        }

        else
        {
          v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v98 = v100 > 1;
      }

      v170(&v176, v97);
      LOBYTE(v174[0]) = v176;
      LOBYTE(v180) = 1;
      v101 = sub_1C1F52414();
      v171 = v91;
      LODWORD(v166) = v98;
      if ((v101 & 1) != 0 && !v98)
      {
        v18 = 0;
        v173 = v93;
LABEL_133:
        v111 = sub_1C1E811D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21178, &qword_1C1F57C50);
        v112 = swift_initStackObject();
        *(v112 + 16) = xmmword_1C1F56480;
        *(v112 + 32) = @"CalculateKeyFormat";
        v113 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v114 = @"CalculateKeyFormat";
        v115 = [v113 initWithUnsignedInteger_];
        *(v112 + 64) = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
        *(v112 + 40) = v115;
        v116 = sub_1C1EAFFF0(v112);
        swift_setDeallocating();
        sub_1C1E83580(v112 + 32, &qword_1EBF21180, &qword_1C1F564D0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = v111;
        sub_1C1EB0ED0(v116, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v176);

        v118 = v176;
        type metadata accessor for CalculateExpression(0);

        sub_1C1EEE4CC(&v176);
        sub_1C1EEE4F4();
        v19 = CalculateExpression.__allocating_init(_:options:base:id:)(0, 0xE000000000000000, v118, &v176, v8);
        a2 = v168;
        (*(*v168 + 384))(&v176);
        v119 = v176;
        CalculateExpression.base.setter(&v176);

        sub_1C1E917DC(v120);
        v172 = v18;
        v167 = v119;
        if (!v18)
        {
          v8 = 0;
          LOBYTE(v14) = 1;
          v9 = v169;
          goto LABEL_153;
        }

        v121 = *(*v18 + 392);

        v123 = v121(v122);
        v124 = v123;
        v9 = v169;
        if (v123 >> 62)
        {
          goto LABEL_216;
        }

        v125 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v125)
        {
          goto LABEL_217;
        }

LABEL_136:
        v31 = __OFSUB__(v125, 1);
        v126 = v125 - 1;
        if (v31)
        {
          goto LABEL_218;
        }

        if ((v124 & 0xC000000000000001) != 0)
        {
          goto LABEL_219;
        }

        if ((v126 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_221:
          v129 = sub_1C1F52994();
          goto LABEL_143;
        }

        if (v126 < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v127 = *(v124 + 8 * v126 + 32);

          goto LABEL_141;
        }

        __break(1u);
        goto LABEL_223;
      }

      v102 = CalculateExpression.postfixStack.getter();
      v103 = CalculateExpression.postfixStack.getter();
      if (v103 >> 62)
      {
        v91 = v103;
        v104 = sub_1C1F52994();
      }

      else
      {
        v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v105 = v104 - 2;
      if (__OFSUB__(v104, 2))
      {
        __break(1u);
      }

      else if ((v102 & 0xC000000000000001) == 0)
      {
        if ((v105 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v105 < *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

LABEL_127:

          v106 = CalculateExpression.rich.getter();

          swift_allocObject();
          v107 = sub_1C1EB0340(v106);

          v170(&v176, v108);
          LOBYTE(v174[0]) = 2;
          v109 = static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174);
          if (v109)
          {
            v110 = v107;
          }

          else
          {
            v110 = v93;
          }

          v173 = v110;
          if (v109)
          {
            v18 = v93;
          }

          else
          {
            v18 = v107;
          }

          goto LABEL_133;
        }

        __break(1u);
LABEL_230:
        sub_1C1F526E4();
        goto LABEL_187;
      }

      MEMORY[0x1C6911DB0](v105, v102);
      goto LABEL_127;
    }
  }

  else
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v89)
    {
      goto LABEL_196;
    }
  }

  v31 = __OFSUB__(v89, 1);
  v90 = v89 - 1;
  if (v31)
  {
    goto LABEL_197;
  }

  v170 = v18;
  if ((v28 & 0xC000000000000001) != 0)
  {
    goto LABEL_198;
  }

  if ((v90 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v90 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v91 = v19;

    goto LABEL_113;
  }

  __break(1u);
LABEL_201:
  v138 = sub_1C1F52994();
  if (!v138)
  {
LABEL_202:

    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    MEMORY[0x1C6911DB0](v139, v28);
LABEL_165:

    v140 = CalculateExpression.rich.getter();

    v142 = (*(*v140 + 392))(v141);

    v166 = v8;
    if (!(v142 >> 62))
    {
      v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_167;
    }

    goto LABEL_206;
  }

  while (1)
  {

    v139 = v138 - 1;
    if (__OFSUB__(v138, 1))
    {
      goto LABEL_203;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      goto LABEL_204;
    }

    if ((v139 & 0x8000000000000000) == 0)
    {
      if (v139 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_165;
      }

      __break(1u);
LABEL_208:
      v87 = sub_1C1F52994();
      goto LABEL_104;
    }

    __break(1u);
LABEL_206:
    v143 = sub_1C1F52994();
LABEL_167:

    v144 = (*a2 + 408);
    v8 = *v144;
    v9 = (*v144)(&v176);
    sub_1C1E98C40(v143);
    v145 = (v9)(&v176, 0);
    v121 = v171;
    (v18)(&v176, v145);
    LOBYTE(v174[0]) = 2;
    if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
    {
      v18(&v176);
      LOBYTE(v174[0]) = 3;
      if (!static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
      {
        goto LABEL_179;
      }
    }

    v119 = CalculateExpression.postfixStack.getter();
    v146 = CalculateExpression.postfixStack.getter();
    if (v146 >> 62)
    {
      v121 = v146;
      v124 = sub_1C1F52994();
    }

    else
    {
      v124 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v147 = v124 - 2;
    if (__OFSUB__(v124, 2))
    {
      break;
    }

    if ((v119 & 0xC000000000000001) != 0)
    {
      goto LABEL_212;
    }

    if ((v147 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_214:
      v151 = sub_1C1F52994();
      goto LABEL_178;
    }

    if (v147 < *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_176;
    }

    __break(1u);
LABEL_216:
    v125 = sub_1C1F52994();
    if (v125)
    {
      goto LABEL_136;
    }

LABEL_217:

    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    v127 = MEMORY[0x1C6911DB0](v126, v124);
LABEL_141:

    type metadata accessor for CalculateExpression.RichToken(0);
    v8 = sub_1C1E9C29C(v127);
    v128 = v121(v8);
    if (v128 >> 62)
    {
      goto LABEL_221;
    }

    v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_143:

    if (v129 >= 2 && (v130 = (*(*v18 + 416))(0)) != 0 && (v131 = *(v130 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v131 != 53))
    {
      LOBYTE(v176) = v131;
      LOBYTE(v174[0]) = 4;
      sub_1C1E9019C();
      v132 = sub_1C1F52414();
    }

    else
    {
      v132 = 0;
    }

    type metadata accessor for CalculateExpression.CustomOperandOperation();
    v8 = CalculateExpression.CustomOperandOperation.__allocating_init(_:negative:)(v8, v132 & 1);

    LOBYTE(v14) = v8 == 0;
    if (!v166)
    {
LABEL_152:
      a2 = v168;
LABEL_153:
      v134 = CalculateExpression.update(_:)(v9);
      v18 = v170;
      v170(&v176, v134);
      LOBYTE(v174[0]) = 2;
      if (static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
      {
        if (v14)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v18(&v176);
        LOBYTE(v174[0]) = 3;
        if (v14 & 1 | !static CalculateExpression.Operation.Mode.== infix(_:_:)(&v176, v174))
        {
          goto LABEL_158;
        }
      }

      CalculateExpression.update(_:)(v135);

      goto LABEL_158;
    }

    a2 = v168;
    if (!v8)
    {
      goto LABEL_153;
    }

    sub_1C1E7CF1C();

    CalculateExpression.update(_:)(v133);

    CalculateExpression.update(_:)(v8);
    CalculateExpression.update(_:)(v9);

    v18 = v170;
LABEL_158:
    v136 = CalculateExpression.error.getter();
    (*(*a2 + 352))(v136);
    v137 = CalculateExpression.postfixStack.getter();
    v28 = v137;
    if (v137 >> 62)
    {
      goto LABEL_201;
    }

    v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v138)
    {
      goto LABEL_202;
    }
  }

  __break(1u);
LABEL_212:
  MEMORY[0x1C6911DB0](v147, v119);
LABEL_176:

  v148 = CalculateExpression.rich.getter();

  v150 = (*(*v148 + 392))(v149);

  if (v150 >> 62)
  {
    goto LABEL_214;
  }

  v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_178:

  v152 = (v8)(&v176);
  sub_1C1E98C40(v151);
  v152(&v176, 0);
LABEL_179:
  v153 = v168;
  (*(*v168 + 232))(0);
  (*(*v153 + 256))(1);
  v154 = CalculateExpression.result.getter();
  if (v154)
  {
    v155 = v154;
    type metadata accessor for CalculateExpression.CustomOperandOperation();
    v119 = v155;
    v156 = CalculateExpression.CustomOperandOperation.__allocating_init(_:)(v119);
    v174[0] = MEMORY[0x1E69E7CC0];
    v157 = (*(*v156 + 128))(v156);
    if (v157)
    {
      LOBYTE(v176) = 4;
      type metadata accessor for CalculateExpression.RichToken(0);
      swift_allocObject();
      v158 = CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v176, 0);
      MEMORY[0x1C6911980](v158);
      if (*((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C1F526E4();
      }

      v157 = sub_1C1F52724();
    }

    v159 = (*(*v156 + 120))(v157);
    LOBYTE(v176) = v167;
    (*(*v159 + 424))(&v176);

    MEMORY[0x1C6911980](v160);
    if (*((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v174[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_185:
      sub_1C1F52724();
      v161 = v174[0];
      v162 = (v8)(&v176);
      sub_1C1E8CECC(v161);
      v162(&v176, 0);

      goto LABEL_188;
    }

LABEL_223:
    sub_1C1F526E4();
    goto LABEL_185;
  }

  type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v176) = v167;

  sub_1C1E8FBEC(48, 0xE100000000000000, &v176, v3);
  v91 = (v8)(&v176);
  v164 = v163;
  MEMORY[0x1C6911980](v91);
  if (*((*v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_230;
  }

LABEL_187:
  sub_1C1F52724();
  (v91)(&v176, 0);

LABEL_188:

  v42 = 1;
  return v42 & 1;
}

uint64_t sub_1C1EAAE50(__int128 *a1)
{
  v6 = *a1;
  v1 = *(a1 + 2);
  v2 = *(a1 + 3);
  v3 = *sub_1C1E8158C();
  v7 = v6;
  v8 = v1;
  v9 = v2;
  v4 = *(*v3 + 136);

  LOBYTE(v4) = v4(&v7);

  return v4 & 1;
}

unint64_t sub_1C1EAAEDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1C1F525D4() != a1 || v9 != a2)
  {
    v10 = sub_1C1F52C64();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1C1F524C4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1C1EAAFCC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1C1F525F4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EAB018(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v15[1] = *(a1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if ((CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (v15[0] = *(a1 + v4), v14 = 16, (static CalculateExpression.TokenType.== infix(_:_:)(v15, &v14)) || (v13 = *(a1 + v4), v12 = 7, (static CalculateExpression.TokenType.== infix(_:_:)(&v13, &v12)) || (v11 = *(a1 + v4), v10 = 8, (static CalculateExpression.TokenType.== infix(_:_:)(&v11, &v10))) && ((v5 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type, v19[1] = *(a2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), (CalculateExpression.TokenType.isOperand.getter()) || (v19[0] = *(a2 + v5), v18 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(v19, &v18)) || (v17 = *(a2 + v5), v16 = 10, (static CalculateExpression.TokenType.== infix(_:_:)(&v17, &v16))))
  {
    v9 = *(a1 + v4);
    v6 = 1;
    v8 = 1;
    if (static CalculateExpression.TokenType.== infix(_:_:)(&v9, &v8))
    {
      v6 = CalculateExpression.TokenType.isConstant.getter() ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

id sub_1C1EAB16C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69C9CF8]) initWithIsNumberOverride_];
  if (v0)
  {
    v1 = v0;
    v2 = (*(*v59 + 392))();
    if (v2 >> 62)
    {
      goto LABEL_76;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v58)
    {
      v4 = 0;
      v63 = i;
      v64 = v2 & 0xC000000000000001;
      v61 = v2 & 0xFFFFFFFFFFFFFF8;
      v62 = v2;
      v60 = v2 + 32;
      v5 = 0x1FB71A000uLL;
      while (v64)
      {
        v2 = MEMORY[0x1C6911DB0](v4, v62);
        v6 = v2;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_74;
        }

LABEL_13:
        v8 = v5;
        v9 = (*v6 + 280);
        v10 = *v9;
        v11 = (*v9)();
        if (v11)
        {
          v12 = v11;
          if (((*(*v6 + 368))() & 1) == 0)
          {
            (*(*v12 + 760))();
            v13 = sub_1C1F52344();

            [v1 appendMathEquation_];

            i = v63;
          }
        }

        v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        v15 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        if (v15 <= 6)
        {
          if (*(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) <= 3u)
          {
            if (v15 == 1)
            {
              (*(*v6 + 416))(&v67, v11);
              sub_1C1EB0630();
              sub_1C1F52684();
              v17 = sub_1C1F52684();
              if (v65 != v66)
              {
                v65 = (*(*v6 + 232))(v17);
                sub_1C1F52534();
                if (v33)
                {
                  do
                  {
                    v34 = sub_1C1F52424();

                    [v1 (v5 + 1996)];

                    sub_1C1F52534();
                  }

                  while (v35);
                }

                v16 = (*(*v6 + 304))(v36);
                if (!v16)
                {
                  goto LABEL_44;
                }

                (*(*v16 + 760))(v16);
                goto LABEL_62;
              }

              v18 = *(*v59 + 176);
              if (v18(v17))
              {

                result = v18(v19);
                if (!result)
                {
                  goto LABEL_79;
                }

                v21 = (*(*v6 + 656))();
                v23 = v22;

                i = v63;
              }

              else
              {
                v21 = (*(*v6 + 232))();
                v23 = v37;
              }

              sub_1C1EAAEDC(101, 0xE100000000000000, v21, v23);
              if (v38)
              {
                v39 = sub_1C1F52424();

                [v1 addNumber:v39 implicit:(*(*v6 + 256))(v40) & 1];

                goto LABEL_44;
              }

              v41 = sub_1C1F525F4();
              MEMORY[0x1C6911770](v41);

              v42 = sub_1C1F524C4();
              v43 = sub_1C1EAAFCC(v42, v21, v23);
              v45 = v44;
              v47 = v46;
              v49 = v48;

              MEMORY[0x1C6911770](v43, v45, v47, v49);

              v50 = sub_1C1F52424();

              v52 = *(*v6 + 256);
              [v1 addNumber:v50 implicit:v52(v51) & 1];

              v53 = sub_1C1F52424();
              [v1 (v8 + 1996)];

              i = v63;
              v24 = sub_1C1F52424();

              v5 = v8;
              [v1 addNumber:v24 implicit:v52(v54) & 1];
              goto LABEL_43;
            }

            if (v15 == 3)
            {
              goto LABEL_42;
            }
          }

          else if (v15 == 4 || v15 == 5 || v15 == 6)
          {
LABEL_42:
            v24 = sub_1C1F52424();
            [v1 addOperator:v24 implicit:(*(*v6 + 256))() & 1];
LABEL_43:

            goto LABEL_44;
          }

LABEL_54:
          (*(*v6 + 232))(v11);
          v24 = sub_1C1F52424();

          [v1 (v5 + 1996)];
          goto LABEL_43;
        }

        if (*(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) > 9u)
        {
          switch(v15)
          {
            case 0xAu:
              if ((*(*v6 + 368))(v11))
              {
                v29 = v10();
                if (v29)
                {
                  (*(*v29 + 760))(v29);
                  v28 = sub_1C1F52344();

                  [v1 addRadicalWithRootIndex_];
                  goto LABEL_63;
                }
              }

              if ((*(*v6 + 384))())
              {
                v30 = (*(*v6 + 304))();
                if (v30)
                {
                  v31 = v30;
                  v32 = sub_1C1F52424();
                  [v1 (v5 + 1996)];

                  (*(*v31 + 760))();
LABEL_62:
                  v28 = sub_1C1F52344();

                  [v1 addSubscript:v28 superscript:0];
                  goto LABEL_63;
                }
              }

              (*(*v6 + 232))();
              v24 = sub_1C1F52424();

              [v1 (v5 + 1996)];
              goto LABEL_43;
            case 0xFu:
              v16 = [v1 addOpenParenthesis];
              break;
            case 0x10u:
              v16 = [v1 addCloseParenthesis_];
              break;
            default:
              goto LABEL_54;
          }
        }

        else
        {
          if (v15 != 7)
          {
            if (v15 == 8 || v15 == 9)
            {
              goto LABEL_42;
            }

            goto LABEL_54;
          }

          v16 = (*(*v6 + 304))(v11);
          if (v16)
          {
            (*(*v16 + 760))(v16);
            v28 = sub_1C1F52344();

            [v1 addSubscript:0 superscript:v28];
LABEL_63:

            v5 = v8;
          }
        }

LABEL_44:
        v25 = (*(*v6 + 304))(v16);
        if (v25)
        {
          v26 = v25;
          LOBYTE(v65) = *(v6 + v14);
          LOBYTE(v66) = 1;
          sub_1C1E9019C();
          if ((sub_1C1F52414() & 1) == 0)
          {
            LOBYTE(v65) = *(v6 + v14);
            LOBYTE(v66) = 7;
            if ((sub_1C1F52414() & 1) == 0 && ((*(*v6 + 384))() & 1) == 0)
            {
              (*(*v26 + 760))();
              v27 = sub_1C1F52344();

              [v1 appendMathEquation_];
            }
          }

          i = v63;
        }

        if (v4 == i)
        {
          goto LABEL_69;
        }
      }

      if (v4 >= *(v61 + 16))
      {
        goto LABEL_75;
      }

      v6 = *(v60 + 8 * v4);

      v7 = __OFADD__(v4++, 1);
      if (!v7)
      {
        goto LABEL_13;
      }

LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v58 = v2;
      i = sub_1C1F52994();
    }

LABEL_69:

    result = [v1 mathEquation];
    if (result)
    {
      v55 = result;
      v56 = sub_1C1F52354();

      return v56;
    }

    else
    {
      __break(1u);
LABEL_79:
      __break(1u);
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];

    return sub_1C1EB0118(v57);
  }

  return result;
}

uint64_t CalculateExpression.RichExpression.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t sub_1C1EABEC4()
{
  sub_1C1F52CD4();
  (*(*v0 + 168))(v2);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EABFB4(uint64_t a1)
{
  sub_1C1F52CD4();
  (*(**v1 + 168))(v3);
  return sub_1C1F52CF4();
}

uint64_t sub_1C1EAC014(uint64_t a1)
{
  v2 = sub_1C1E758CC(&qword_1EDC2C320, 255, type metadata accessor for CalculateKey, &unk_1C1F58590);
  v3 = sub_1C1E758CC(&qword_1EBF211A0, 255, type metadata accessor for CalculateKey, &unk_1C1F56864);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

char *sub_1C1EAC0D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1C1EAF018(result, v5, 0);
  }

  return result;
}

unint64_t sub_1C1EAC150(uint64_t a1, uint64_t a2)
{
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v4 = sub_1C1F52CF4();

  return sub_1C1EAC250(a1, a2, v4);
}

unint64_t sub_1C1EAC1C8(uint64_t a1)
{
  v2 = sub_1C1F52CC4();

  return sub_1C1EAC308(a1, v2);
}

unint64_t sub_1C1EAC20C(uint64_t a1)
{
  v2 = sub_1C1F529E4();

  return sub_1C1EAC374(a1, v2);
}

unint64_t sub_1C1EAC250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1F52C64())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C1EAC308(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C1EAC374(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C1EB1C68(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6911CE0](v9, a1);
      sub_1C1EB1CC4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_1C1EAC43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1C1F525E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1E9AEC0(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1F52AE4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C1EAC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C1F525E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1E9AEC0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C1F52AE4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C1EACF44(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v8 = sub_1C1F52CF4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C1F52C64() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C1EADCBC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C1EAD094(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1C1F529A4();

    if (v8)
    {

      v19[9] = v8;
      type metadata accessor for CalculateExpression.RichExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v19[0];
      return result;
    }

    result = sub_1C1F52994();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1C1EAD2B4(v7, result + 1);
    v19[0] = v16;
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_1C1EAD988(v17 + 1);
      v16 = v19[0];
    }

    sub_1C1EADBF8(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1C1F52CD4();
  (*(*a2 + 168))(v19);
  v10 = sub_1C1F52CF4();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v2;

    sub_1C1EADE3C(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1C1EAD2B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211F0, &qword_1C1F568E0);
    v2 = sub_1C1F52A24();
    v19 = v2;
    sub_1C1F52984();
    v3 = sub_1C1F529C4();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CalculateExpression.RichExpression();
      v5 = v4;
      do
      {
        v18[0] = v5;
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1C1EAD988(v13 + 1);
        }

        v6 = v18[9];
        v2 = v19;
        sub_1C1F52CD4();
        (*(*v6 + 168))(v18);
        result = sub_1C1F52CF4();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = sub_1C1F529C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C1EAD4D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21220, &qword_1C1F56920);
  result = sub_1C1F52A14();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C1EAD730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21218, &qword_1C1F56918);
  result = sub_1C1F52A14();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v25 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1C1E90258();
      result = sub_1C1F523B4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v12 + 8 * v19);
          if (v23 != -1)
          {
            v13 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v25;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v3 + 32);
    if (v24 >= 64)
    {
      bzero((v3 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v24;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}