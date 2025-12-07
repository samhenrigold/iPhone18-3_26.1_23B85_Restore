uint64_t sub_1C1E8CC64(uint64_t a1)
{
  swift_weakInit();
  *(v1 + 24) = 16777473;
  *(v1 + 28) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 50) = 0;
  swift_beginAccess();
  swift_weakAssign();
  return v1;
}

uint64_t sub_1C1E8CCF8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  return *(v2 + *a2);
}

uint64_t sub_1C1E8CD98(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  return *(v2 + *a2);
}

uint64_t CalculateExpression.RichExpression.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 51, 7);
}

uint64_t sub_1C1E8CECC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1C1F52994();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1C1F52994();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1C1E8CFBC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C1E8D05C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1C1E8CFBC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C1F52994();
LABEL_9:
  result = sub_1C1F52AD4();
  *v2 = result;
  return result;
}

uint64_t sub_1C1E8D05C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1C1F52994();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1C1F52994();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1C1E98DB4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21138, &qword_1C1F56910);
            v9 = sub_1C1E98D2C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CalculateExpression.RichToken(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E8D1DC()
{
  v1 = v0;
  result = (*(*v0 + 392))();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_27:
  }

LABEL_26:
  result = sub_1C1F52994();
  v4 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6911DB0](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v16[0] = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v17 = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v16, &v17))
      {
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        v16[0] = *(v7 + v8);
        v17 = 16;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v16, &v17))
        {
          v9 = __OFSUB__(v5--, 1);
          if (v9)
          {
            goto LABEL_25;
          }
        }
      }

      v10 = (*(*v7 + 280))();
      if (v10)
      {
        sub_1C1E8D1DC();
      }

      if ((*(*v7 + 304))(v10))
      {
        sub_1C1E8D1DC();
      }
    }

    if (v5 >= 1)
    {
      v11 = *(*v1 + 408);
      type metadata accessor for CalculateExpression.RichToken(0);
      v12 = v5 + 1;
      do
      {
        v16[0] = 16;
        swift_allocObject();
        CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, v16, 1);
        v13 = v11(v16);
        v15 = v14;
        MEMORY[0x1C6911980]();
        if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1F526E4();
        }

        sub_1C1F52724();
        result = v13(v16, 0);
        --v12;
      }

      while (v12 > 1);
    }
  }

  return result;
}

uint64_t sub_1C1E8D4F8()
{
  result = (*(*v0 + 368))();
  if (result == 2)
  {
    return result;
  }

  v95[0] = MEMORY[0x1E69E7CC0];
  v94 = 0;
  v88 = v0;
  v89 = *(*v0 + 392);
  v2 = v89();
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_1C1F52994();
    if (!v4)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_32;
    }
  }

  if (v4 < 1)
  {
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

  v5 = 0;
  v6 = 0;
  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6911DB0](i, v3);
    }

    else
    {
      v8 = *(v3 + 8 * i + 32);
    }

    if ((*(*v8 + 280))())
    {
      sub_1C1E8D4F8();
    }

    if (v6)
    {
      v9 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v93) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (LOBYTE(v91) = *(v6 + v9), v92 = 16, (static CalculateExpression.TokenType.== infix(_:_:)(&v91, &v92)) || (LOBYTE(v93) = *(v6 + v9), LOBYTE(v91) = 7, (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v91)) || (LOBYTE(v93) = *(v6 + v9), LOBYTE(v91) = 8, (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v91)))
      {
        v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v93) = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (LOBYTE(v91) = *(v8 + v10), v92 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(&v91, &v92)) || (LOBYTE(v93) = *(v8 + v10), LOBYTE(v91) = 10, (static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v91)))
        {
          LOBYTE(v93) = *(v6 + v9);
          LOBYTE(v91) = 1;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(&v93, &v91) & 1) == 0 || (LOBYTE(v93) = *(v8 + v10), (CalculateExpression.TokenType.isConstant.getter() & 1) == 0))
          {
            LOBYTE(v93) = 5;
            type metadata accessor for CalculateExpression.RichToken(0);
            swift_allocObject();
            v11 = CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0, &v93, 1);
            MEMORY[0x1C6911980](v11);
            if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C1F526E4();
            }

            sub_1C1F52724();
            v5 = 1;
          }
        }
      }
    }

    MEMORY[0x1C6911980](v12);
    if (*((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    sub_1C1F52724();

    v13 = *(*v8 + 304);

    v15 = v13(v14);

    if (v15)
    {
      sub_1C1E8D4F8();
    }

    v6 = v8;
  }

  v94 = v5;
LABEL_32:

  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1C1E8E268(MEMORY[0x1E69E7CC0]);
  v93 = v17;
  v18 = v88;
  v19 = v89();
  v20 = v19;
  v21 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    goto LABEL_131;
  }

  v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:
  v90 = (v16 + 16);
  v23 = 0;
  if (!v22)
  {
LABEL_97:

    v21 = *(v16 + 2);
    if (!v21)
    {
LABEL_119:
      v91 = 0;

      v77 = sub_1C1E8E348(v76, v95, &v91, &v93, &v94);

      swift_bridgeObjectRelease_n();
      v95[0] = v77;
      v91 = 0;
      sub_1C1E8E588(v77, &v91, v95, sub_1C1EAB018, 0, &v94);
      swift_bridgeObjectRelease_n();
      if (v94 == 1)
      {
        v78 = *(*v18 + 400);

        v80 = v78(v79);
        if ((*(*v88 + 568))(v80))
        {
          (*(*v88 + 424))();
        }
      }
    }

    v62 = 0;
    v16 += 32;
    while (1)
    {
      if (v62 >= *v90)
      {
        goto LABEL_126;
      }

      v20 = *&v16[8 * v62];
      v63 = (v89)(v61);
      if ((v63 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x1C6911DB0](v20, v63);
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        if (v20 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v64 = *(v63 + 8 * v20 + 32);
      }

      v66 = (*(*v64 + 256))(v65);

      if (v66)
      {
        break;
      }

LABEL_101:
      if (v21 == ++v62)
      {
        goto LABEL_119;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v17;
    v61 = sub_1C1EAC1C8(v20);
    v69 = v17[2];
    v70 = (v68 & 1) == 0;
    v44 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v44)
    {
      goto LABEL_129;
    }

    v18 = v68;
    if (v17[3] >= v71)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = v61;
        sub_1C1EAF7B0();
        v61 = v75;
        v17 = v91;
        if ((v18 & 1) == 0)
        {
          goto LABEL_114;
        }

        goto LABEL_99;
      }
    }

    else
    {
      sub_1C1EAF27C(v71, isUniquelyReferenced_nonNull_native);
      v61 = sub_1C1EAC1C8(v20);
      if ((v18 & 1) != (v72 & 1))
      {
        goto LABEL_140;
      }
    }

    v17 = v91;
    if ((v18 & 1) == 0)
    {
LABEL_114:
      v17[(v61 >> 6) + 8] |= 1 << v61;
      *(v17[6] + 8 * v61) = v20;
      *(v17[7] + v61) = 0;
      v73 = v17[2];
      v44 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v44)
      {
        goto LABEL_130;
      }

      v17[2] = v74;
      goto LABEL_100;
    }

LABEL_99:
    *(v17[7] + v61) = 0;
LABEL_100:
    v93 = v17;
    v18 = v88;
    goto LABEL_101;
  }

  v24 = 0;
  v84 = v16 + 24;
  while (1)
  {
    v86 = v23;
    v18 = v24;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1C6911DB0](v18, v20);
        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v18 >= *(v21 + 16))
        {
          goto LABEL_125;
        }

        v23 = *(v20 + 8 * v18 + 32);

        v24 = v18 + 1;
        if (__OFADD__(v18, 1))
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
LABEL_130:
          __break(1u);
LABEL_131:
          v22 = sub_1C1F52994();
          goto LABEL_34;
        }
      }

      v25 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v91) = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v92 = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v91, &v92))
      {
        v26 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1C1EAEE14(0, *v90 + 1, 1, v16);
        }

        v28 = *(v16 + 2);
        v27 = *(v16 + 3);
        if (v28 >= v27 >> 1)
        {
          v16 = sub_1C1EAEE14((v27 > 1), v28 + 1, 1, v16);
        }

        *(v16 + 2) = v28 + 1;
        *&v16[8 * v28 + 32] = v18;
        v18 = v88;
        v22 = v26;
        goto LABEL_52;
      }

      LOBYTE(v91) = *(v23 + v25);
      v92 = 16;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v91, &v92))
      {
        break;
      }

      ++v18;
      if (v24 == v22)
      {
        v18 = v88;
        goto LABEL_97;
      }
    }

    v82 = v22;
    v85 = v16;
    v83 = v21;
    if (((*(*v23 + 256))() & 1) == 0)
    {
      goto LABEL_65;
    }

    if (*v90)
    {
      break;
    }

LABEL_61:
    if (v86)
    {
      if (*(v86 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) != 53)
      {
        LOBYTE(v91) = *(v86 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v92 = 15;
        sub_1C1E9019C();
        if (sub_1C1F52414())
        {
          v87 = 0;
          goto LABEL_66;
        }
      }
    }

LABEL_65:
    v87 = 1;
LABEL_66:
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v17;
    v36 = sub_1C1EAC1C8(v18);
    v37 = v17[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_133;
    }

    v40 = v35;
    if (v17[3] >= v39)
    {
      if ((v34 & 1) == 0)
      {
        sub_1C1EAF7B0();
      }
    }

    else
    {
      sub_1C1EAF27C(v39, v34);
      v41 = sub_1C1EAC1C8(v18);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_140;
      }

      v36 = v41;
    }

    v16 = v85;
    v17 = v91;
    if (v40)
    {
      *(v91[7] + v36) = v87;
    }

    else
    {
      v91[(v36 >> 6) + 8] |= 1 << v36;
      *(v17[6] + 8 * v36) = v18;
      *(v17[7] + v36) = v87;
      v43 = v17[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_135;
      }

      v17[2] = v45;
    }

    v18 = v88;
    v21 = v83;
    v93 = v17;
    if (!*v90)
    {
      v22 = v82;
      goto LABEL_89;
    }

    v46 = *&v84[8 * *v90];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v17;
    v81 = v46;
    v49 = sub_1C1EAC1C8(v46);
    v50 = v17;
    v51 = v17[2];
    v52 = (v48 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      goto LABEL_134;
    }

    v54 = v48;
    if (v50[3] < v53)
    {
      sub_1C1EAF27C(v53, v47);
      v55 = sub_1C1EAC1C8(v46);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_140;
      }

      v49 = v55;
      goto LABEL_81;
    }

    v22 = v82;
    if ((v47 & 1) == 0)
    {
      sub_1C1EAF7B0();
LABEL_81:
      v22 = v82;
    }

    v57 = v91;
    if (v54)
    {
      *(v91[7] + v49) = v87;
      v18 = v88;
      v17 = v57;
    }

    else
    {
      v91[(v49 >> 6) + 8] |= 1 << v49;
      *(v57[6] + 8 * v49) = v81;
      *(v57[7] + v49) = v87;
      v58 = v57[2];
      v44 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v44)
      {
        goto LABEL_138;
      }

      v17 = v57;
      v57[2] = v59;
      v18 = v88;
    }

    v93 = v17;
    if (*v90)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1C1EAFA90(v85);
      }

      v60 = *(v16 + 2);
      if (!v60)
      {
        goto LABEL_139;
      }

      *(v16 + 2) = v60 - 1;

LABEL_52:
      v17 = v93;
      v90 = (v16 + 16);
      v84 = v16 + 24;
      if (v24 == v22)
      {
        goto LABEL_97;
      }

      continue;
    }

LABEL_89:

    if (v24 == v22)
    {
      goto LABEL_97;
    }
  }

  v29 = *&v84[8 * *v90];
  v30 = v89();
  if ((v30 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1C6911DB0](v29, v30);
LABEL_60:

    v33 = (*(*v31 + 256))(v32);

    if ((v33 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_136;
  }

  if (v29 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v30 + 8 * v29 + 32);

    goto LABEL_60;
  }

LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  result = sub_1C1F52CA4();
  __break(1u);
  return result;
}

uint64_t sub_1C1E8E20C()
{
  result = (*(*v0 + 176))();
  if (result)
  {
    v2 = CalculateExpression.format.getter();

    return v2;
  }

  return result;
}

unint64_t sub_1C1E8E268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21208, &qword_1C1F568F8);
    v3 = sub_1C1F52BE4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C1EAC1C8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1C1E8E348(unint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, _BYTE *a5)
{
  v20 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1F52994())
  {
    v9 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6911DB0](v9, a1);
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_26;
      }

LABEL_9:
      v11 = *a3;
      v19 = v10;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6911DB0](v11);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (v11 >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }
      }

      if (CalculateExpression.TokenType.isParenthesis.getter() & 1) != 0 && (v12 = *a4, *(*a4 + 16)) && (v13 = sub_1C1EAC1C8(*a3), (v14))
      {
        v15 = *(*(v12 + 56) + v13);
      }

      else
      {
        v15 = 1;
      }

      if (__OFADD__(*a3, 1))
      {
        goto LABEL_29;
      }

      ++*a3;
      if (v15)
      {
        sub_1C1F52AF4();
        sub_1C1F52B24();
        sub_1C1F52B34();
        sub_1C1F52B04();
      }

      else
      {
        *a5 = 1;
      }

      ++v9;
      if (v19 == i)
      {
        return v20;
      }
    }

    if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v10 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1E8E588(unint64_t a1, void *a2, unint64_t *a3, uint64_t (*a4)(_BYTE *, uint64_t), uint64_t a5, _BYTE *a6)
{
  v27 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1F52994())
  {
    v10 = 0;
    v23 = a6;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1C6911DB0](v10, a1);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_44;
      }

LABEL_9:
      v26 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v25 = 5;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v25) & 1) == 0 || ((*(*v11 + 256))() & 1) == 0)
      {
        v17 = 1;
        goto LABEL_40;
      }

      v13 = *a2;
      v14 = *a2 - 1;
      if (__OFSUB__(*a2, 1))
      {
        goto LABEL_47;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        a6 = 0;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v15 = *a3;
        if ((*a3 & 0xC000000000000001) != 0)
        {
          a6 = MEMORY[0x1C6911DB0]();
          v16 = *a2 + 1;
          if (__OFADD__(*a2, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          a6 = *(v15 + 8 * v14 + 32);

          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_48;
          }
        }
      }

      if (*a3 >> 62)
      {
        if (v16 >= sub_1C1F52994())
        {
          goto LABEL_38;
        }
      }

      else if (v16 >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v18 = *a2 + 1;
      if (__OFADD__(*a2, 1))
      {
        goto LABEL_50;
      }

      v19 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1C6911DB0](v18);
        if (!a6)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        if (v18 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v20 = *(v19 + 8 * v18 + 32);

        if (!a6)
        {
LABEL_38:

          v17 = 0;
          goto LABEL_39;
        }
      }

      if (!v20)
      {
        goto LABEL_38;
      }

      v17 = a4(a6, v20);

LABEL_39:
      a6 = v23;
LABEL_40:
      if (__OFADD__(*a2, 1))
      {
        goto LABEL_46;
      }

      ++*a2;
      if (v17)
      {
        sub_1C1F52AF4();
        sub_1C1F52B24();
        sub_1C1F52B34();
        sub_1C1F52B04();
      }

      else
      {
        *a6 = 1;
      }

      ++v10;
      if (v12 == i)
      {
        return v27;
      }
    }

    if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    v11 = *(a1 + 8 * v10 + 32);

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C1E8E8D8()
{
  v3 = (*v0 + 392);
  v72 = *v3;
  v4 = (*v3)();
  if (v4 >> 62)
  {
    goto LABEL_149;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1F52994())
  {

    if (i < 1)
    {
      break;
    }

    v71 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 4;
    while (1)
    {
      v9 = *(v7 + 2);
      v10 = v9 ? *&v7[8 * v9 + 24] : 0;
      v11 = v8 - 4;
      v12 = (v72)(isUniquelyReferenced_nonNull_native);
      v13 = v12;
      if ((v12 & 0xC000000000000001) == 0)
      {
        break;
      }

      v1 = MEMORY[0x1C6911DB0](v8 - 4, v12);
LABEL_11:

      v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      HIBYTE(v73) = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      BYTE6(v73) = 15;
      if (static CalculateExpression.TokenType.== infix(_:_:)(&v73 + 7, &v73 + 6))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1C1EAEE14(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_1C1EAEE14((v15 > 1), v16 + 1, 1, v7);
        }

        v10 = 0;
        *(v7 + 2) = v16 + 1;
        *&v7[8 * v16 + 32] = 0;
      }

      else
      {
        BYTE5(v73) = *(v1 + v14);
        BYTE4(v73) = 16;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v73 + 5, &v73 + 4) & 1) != 0 && *(v7 + 2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v17 = *(v7 + 2);
            if (!v17)
            {
              goto LABEL_66;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = sub_1C1EAFA90(v7);
            v7 = isUniquelyReferenced_nonNull_native;
            v17 = *(isUniquelyReferenced_nonNull_native + 16);
            if (!v17)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }
          }

          *(v7 + 2) = v17 - 1;
        }
      }

      v18 = (*(*v1 + 280))();
      if (v18)
      {
        v13 = v18;
        v19 = (*v18 + 272);
        v20 = *v19;
        v21 = (*v19)((&v73 + 1));
        if (BYTE1(v73) == 1)
        {
          v2 = sub_1C1E8E8D8();

          if (__OFADD__(v2, 1))
          {
            goto LABEL_76;
          }

          if (v2 + 1 > v10)
          {
            v10 = v2 + 1;
          }
        }

        else
        {
          v20(&v73, v21);
          if (v73 >= 3u)
          {
            v22 = sub_1C1E8E8D8();

            if (v22 > v10)
            {
              v10 = v22;
            }
          }

          else
          {
          }
        }
      }

      v23 = (*(*v1 + 304))();
      if (v23)
      {
        v13 = v23;
        v24 = (*v23 + 272);
        v25 = *v24;
        v26 = (*v24)((&v73 + 3));
        if (BYTE3(v73) == 1)
        {
          v2 = sub_1C1E8E8D8();

          if (__OFADD__(v2, 1))
          {
            goto LABEL_77;
          }

          if (v2 + 1 > v10)
          {
            v10 = v2 + 1;
          }

          v2 = *(v7 + 2);
          if (!v2)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        v25((&v73 + 2), v26);
        if (BYTE2(v73) >= 3u)
        {
          v35 = sub_1C1E8E8D8();

          if (v35 > v10)
          {
            v10 = v35;
          }

          v2 = *(v7 + 2);
          if (!v2)
          {
            goto LABEL_49;
          }

          goto LABEL_42;
        }
      }

      v2 = *(v7 + 2);
      if (!v2)
      {
        goto LABEL_49;
      }

LABEL_42:
      v13 = v2 - 1;
      if (v10 <= *&v7[8 * v2 + 24])
      {
        v27 = *&v7[8 * v2 + 24];
      }

      else
      {
        v27 = v10;
      }

      v23 = swift_isUniquelyReferenced_nonNull_native();
      if ((v23 & 1) == 0)
      {
        v23 = sub_1C1EAFA90(v7);
        v7 = v23;
      }

      if (v2 > *(v7 + 2))
      {
        goto LABEL_75;
      }

      *&v7[8 * v13 + 32] = v27;
LABEL_49:
      v28 = (v72)(v23);
      v13 = v28;
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1C6911DB0](v8 - 4, v28);
      }

      else
      {
        if (v11 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v29 = *(v28 + 8 * v8);
      }

      (*(*v29 + 336))(v10);

      v31 = v71;
      if (v10 > v71)
      {
        v31 = v10;
      }

      v71 = v31;
      v32 = (v72)(v30);
      if (v32 >> 62)
      {
        v1 = v32;
        v33 = sub_1C1F52994();
      }

      else
      {
        v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v34 = v8 - 3;
      ++v8;
      if (v34 >= v33)
      {
        goto LABEL_68;
      }
    }

    if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v12 + 8 * v8);

      goto LABEL_11;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    while (2)
    {
      v38 = MEMORY[0x1C6911DB0](v10, v13);
LABEL_79:

      v40 = (*(*v38 + 328))(v39);

      (*(*v2 + 336))(v40);

      while (2)
      {
        while (2)
        {

          v10 = v1;
          if (v1 <= 0)
          {
            goto LABEL_139;
          }

LABEL_81:
          v41 = *(v7 + 2);
          if (v41)
          {
            v2 = *&v7[8 * v41 + 24];
          }

          else
          {
            v2 = 0;
          }

          v1 = v10 - 1;
          v42 = (v72)(result);
          if ((v42 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x1C6911DB0](v10 - 1, v42);
          }

          else
          {
            if (v1 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
              goto LABEL_147;
            }

            v43 = *(v42 + 8 * v10 + 24);
          }

          v44 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          v77 = *(v43 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          v76 = 16;
          if (static CalculateExpression.TokenType.== infix(_:_:)(&v77, &v76))
          {
            v2 = (*(*v43 + 328))();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1C1EAEE14(0, *(v7 + 2) + 1, 1, v7);
            }

            v46 = *(v7 + 2);
            v45 = *(v7 + 3);
            v47 = v46 + 1;
            if (v46 >= v45 >> 1)
            {
              v7 = sub_1C1EAEE14((v45 > 1), v46 + 1, 1, v7);
            }

            *(v7 + 2) = v47;
            *&v7[8 * v46 + 32] = v2;
LABEL_99:
            if (v2 <= *&v7[8 * v47 + 24])
            {
              v50 = *&v7[8 * v47 + 24];
            }

            else
            {
              v50 = v2;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1C1EAFA90(v7);
            }

            if (v47 > *(v7 + 2))
            {
              goto LABEL_145;
            }

            *&v7[8 * v47 + 24] = v50;
          }

          else
          {
            v75 = *(v43 + v44);
            v74 = 15;
            v48 = static CalculateExpression.TokenType.== infix(_:_:)(&v75, &v74);
            v47 = *(v7 + 2);
            if (v48)
            {
              if (!v47)
              {
                goto LABEL_106;
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v49 = *(v7 + 2);
                if (!v49)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v7 = sub_1C1EAFA90(v7);
                v49 = *(v7 + 2);
                if (!v49)
                {
LABEL_138:
                  __break(1u);
LABEL_139:

                  return v71;
                }
              }

              v47 = v49 - 1;
              *(v7 + 2) = v49 - 1;
            }

            if (v47)
            {
              goto LABEL_99;
            }
          }

LABEL_106:
          v51 = v72();
          if ((v51 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x1C6911DB0](v10 - 1, v51);
          }

          else
          {
            if (v1 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_142;
            }

            v52 = *(v51 + 8 * v10 + 24);
          }

          v54 = (v72)(v53);
          if ((v54 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x1C6911DB0](v10 - 1, v54);
          }

          else
          {
            if (v1 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }

            v55 = *(v54 + 8 * v10 + 24);
          }

          v57 = (*(*v55 + 328))(v56);

          if (v2 <= v57)
          {
            v58 = v57;
          }

          else
          {
            v58 = v2;
          }

          (*(*v52 + 336))(v58);

          v60 = (v72)(v59);
          if ((v60 & 0xC000000000000001) != 0)
          {
            v2 = MEMORY[0x1C6911DB0](v10 - 1, v60);
          }

          else
          {
            if (v1 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_144;
            }

            v2 = *(v60 + 8 * v10 + 24);
          }

          v62 = (*(*v2 + 328))(v61);

          v64 = v71;
          if (v62 > v71)
          {
            v64 = v62;
          }

          v71 = v64;
          if (((*(*v43 + 368))(v63) & 1) == 0)
          {
            continue;
          }

          break;
        }

        v65 = v72();
        if (v65 >> 62)
        {
          v2 = v65;
          v66 = sub_1C1F52994();
        }

        else
        {
          v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (__OFSUB__(v66, 2))
        {
          goto LABEL_146;
        }

        if (v1 >= v66 - 2)
        {
          continue;
        }

        break;
      }

      v68 = (v72)(v67);
      if ((v68 & 0xC000000000000001) == 0)
      {
        if (v1 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v68 + 8 * v10 + 24);

          goto LABEL_128;
        }

LABEL_147:
        __break(1u);
        goto LABEL_148;
      }

      v2 = MEMORY[0x1C6911DB0](v10 - 1, v68);
LABEL_128:

      v70 = (v72)(v69);
      v13 = v70;
      if ((v70 & 0xC000000000000001) != 0)
      {
        continue;
      }

      break;
    }

    if (v10 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *(v70 + 8 * v10 + 32);

      goto LABEL_79;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    ;
  }

LABEL_67:
  v71 = 0;
LABEL_68:
  v36 = (v72)(isUniquelyReferenced_nonNull_native);
  if (v36 >> 62)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    if (((v10 - 1) & 0x8000000000000000) == 0)
    {
      v7 = MEMORY[0x1E69E7CC0];
      goto LABEL_81;
    }

    return v71;
  }

  return result;
}

uint64_t sub_1C1E8F494()
{
  v1 = v0;
  v2 = (*(*v0 + 272))(&v14 + 2);
  if (BYTE2(v14) || (v5 = *(*v0 + 176), v5(v2)) && (v6 = CalculateExpression.format.getter(), , v6 == 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C1F563C0;
    BYTE1(v14) = 18;
    type metadata accessor for CalculateExpression.RichToken(0);
    v4 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(0, 0xE000000000000000, &v14 + 1, 0);
    *(v3 + 32) = v4;
    (*(*v1 + 400))(v3);
  }

  else
  {
    type metadata accessor for CalculateExpression.RichToken(0);
    v7 = (*(*v0 + 384))(&v14);
    v8 = v5(v7);
    v9 = sub_1C1E8FBEC(48, 0xE100000000000000, &v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1F563C0;
    *(v10 + 32) = v9;
    v11 = *(*v1 + 400);

    v11(v10);
  }

  (*(*v1 + 352))(0);
  (*(*v1 + 232))(1);
  v12 = (*(*v1 + 256))(0);
  result = (*(*v1 + 176))(v12);
  if (result)
  {
    sub_1C1E904FC(0);
  }

  return result;
}

uint64_t sub_1C1E8F7DC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 26);
  return result;
}

uint64_t type metadata accessor for CalculateExpression.RichToken(uint64_t a1)
{
  result = qword_1EDC2F6C0;
  if (!qword_1EDC2F6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1E8F86C(uint64_t a1)
{
  sub_1C1F52034();
  if (v1 <= 0x3F)
  {
    sub_1C1E8F990(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C1E8F990(uint64_t a1)
{
  if (!qword_1EDC2E8E0)
  {
    sub_1C1F520E4();
    v1 = sub_1C1F528D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC2E8E0);
    }
  }
}

uint64_t sub_1C1E8F9E8@<X0>(char *a1@<X8>)
{
  result = (*(*v1 + 176))();
  if (result)
  {
    CalculateExpression.effectiveBase.getter(&v5);

    v4 = v5;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t CalculateExpression.effectiveBase.getter@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    Strong = v1;
  }

  swift_getKeyPath();
  sub_1C1F52104();

  if (*(Strong + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) == 1)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v4 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
    swift_beginAccess();
    v5 = *(Strong + v4);
  }

  else
  {
    v5 = 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1E8FBEC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  v20[0] = 1;
  v7 = (*(v4 + 360))(a1, a2, v20, 0);
  v20[0] = v6;
  v21 = 1;
  sub_1C1E903DC();
  if ((sub_1C1F52414() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C1F563C0;
    v21 = v6;
    *v20 = CalculateExpression.Base.rawValue.getter();
    v9 = sub_1C1F52C34();
    v11 = v10;
    v20[0] = 1;
    type metadata accessor for CalculateExpression.RichToken(0);
    v12 = swift_allocObject();
    CalculateExpression.RichToken.init(text:type:isImplicit:)(v9, v11, v20, 0);
    *(v8 + 32) = v12;
    type metadata accessor for CalculateExpression.RichExpression();
    swift_allocObject();

    v13 = sub_1C1EB0254(v8, a4);

    v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right;
    swift_beginAccess();
    *(v7 + v14) = v13;

    v15 = *(v7 + v14);
    if (v15)
    {
      v21 = 2;
      v16 = *(*v15 + 280);

      v16(&v21);

      v17 = *(v7 + v14);
      if (v17)
      {
        v18 = *(*v17 + 304);

        v18(0);
      }
    }
  }

  return v7;
}

uint64_t CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v8 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(a1, a2, a3, v4);
  return v8;
}

uint64_t CalculateExpression.RichToken.init(text:type:isImplicit:)(uint64_t a1, unint64_t a2, char *a3, char a4)
{
  v5 = v4;
  v9 = *a3;
  sub_1C1F52024();
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript) = 0;
  v10 = (v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText);
  *v10 = 0;
  v10[1] = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumIntegerDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_minimumFractionDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumFractionDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_flexibleFractionDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesGroupingSeparator) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesSignificantDigits) = 0;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits) = 0;
  v11 = (v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_locale;
  v13 = sub_1C1F520E4();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = (v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_localizedSymbol);
  *v14 = 0;
  v14[1] = 0;
  *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_allowsLocalization) = 0;
  v15 = sub_1C1E90090(&unk_1F418CD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21148, &unk_1C1F564B0);
  swift_arrayDestroy();
  if (*(v15 + 16) && (v16 = sub_1C1E901F0(v9), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 16 * v16);
    a1 = *v18;
    v19 = v18[1];
  }

  else
  {

    if (a2)
    {
      v19 = a2;
    }

    else
    {
      a1 = 0;
      v19 = 0xE000000000000000;
    }
  }

  v20 = (v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text);
  *v20 = a1;
  v20[1] = v19;
  *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type) = v9;
  *(v5 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_isImplicit) = a4 & 1;
  return v5;
}

unint64_t sub_1C1E90090(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21158, &qword_1C1F57290);
    v3 = sub_1C1F52BE4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1C1E901F0(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1C1E9019C()
{
  result = qword_1EDC2C690;
  if (!qword_1EDC2C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2C690);
  }

  return result;
}

unint64_t sub_1C1E901F0(char a1)
{
  sub_1C1E90258();
  v1 = sub_1C1F523B4();
  return sub_1C1E902F8(a1, v1);
}

unint64_t sub_1C1E90258()
{
  result = qword_1EDC2C698[0];
  if (!qword_1EDC2C698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC2C698);
  }

  return result;
}

uint64_t sub_1C1E902B4(uint64_t a1)
{
  v2 = *v1;
  sub_1C1F52CD4();
  MEMORY[0x1C6911FD0](v2);
  return sub_1C1F52CF4();
}

unint64_t sub_1C1E902F8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C1E9019C();
    do
    {
      if (sub_1C1F52414())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C1E903DC()
{
  result = qword_1EDC2CC18[0];
  if (!qword_1EDC2CC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC2CC18);
  }

  return result;
}

uint64_t sub_1C1E90454(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  *(v1 + 28) = 1;
  return result;
}

void sub_1C1E904AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1C1E90524(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }

  return result;
}

unint64_t sub_1C1E90660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*v3 + 392);
  v8 = *v7;
  v9 = v7;
  v10 = (*v7)();
  if (v10 >> 62)
  {
LABEL_129:
    v11 = sub_1C1F52994();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < 1)
  {
    return result;
  }

  v13 = 0;
  v85 = a3;
  v86 = v9;
  v87 = v8;
  while (1)
  {
    v14 = (v8)(result);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C6911DB0](v13, v14);
    }

    else
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_127;
      }

      v9 = *(v14 + 8 * v13 + 32);
    }

    if ((*(*v9 + 408))(v15))
    {
      if (a2)
      {

        v16 = sub_1C1F52014();

        if (v16)
        {
LABEL_14:

          v17 = sub_1C1F52014();

          if (v17)
          {
            goto LABEL_21;
          }

          goto LABEL_15;
        }
      }

      (*(*v9 + 264))(0);
    }

    if (a2)
    {
      goto LABEL_14;
    }

LABEL_15:
    LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v89[0]) = 1;
    v18 = static CalculateExpression.TokenType.== infix(_:_:)(v90, v89);
    if (v18)
    {
      v8 = *(*v9 + 232);
      v8();
      v19 = sub_1C1F525A4();

      if (v19 & 1) != 0 || ((v8)(v18), v20 = sub_1C1F525A4(), v18 = , (v20) || ((v8)(v18), v21 = sub_1C1F525A4(), v18 = , (v21))
      {
        (v8)(v18);
        v22 = v8();
        sub_1C1EAAEDC(101, 0xE100000000000000, v22, v23);
        v25 = v24;

        if (v25)
        {
          goto LABEL_132;
        }

        v26 = sub_1C1F525F4();
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = MEMORY[0x1C6911770](v26, v28, v30, v32);
        v35 = v34;

        v18 = (*(*v9 + 240))(v33, v35);
        a3 = v85;
      }
    }

LABEL_21:
    v36 = (*(*v9 + 280))(v18);
    if (!v36)
    {
      goto LABEL_63;
    }

    v37 = v36;
    v38 = sub_1C1EA69D8(v36, a1);
    if (!v38)
    {
      break;
    }

LABEL_51:
    if ((*(*v37 + 576))() & 1) != 0 || ((*(*v37 + 568))())
    {
      if (!v38)
      {
        LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v89[0]) = 7;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v90, v89))
        {
          v51 = (*v4 + 408);
          v52 = *v51;
          v53 = (*v51)(v90);
          sub_1C1E98338(v13);

          v54 = v53(v90, 0);
          v55 = (*(*v9 + 304))(v54);
          if (v55)
          {
            v56 = (*(*v55 + 392))();
            v57 = v52(v90);
            sub_1C1E9B764(v13, v13, v56);
            a3 = v85;

            v57(v90, 0);
          }

          goto LABEL_112;
        }

        (*(*v9 + 288))(0);
        goto LABEL_62;
      }
    }

    else if (!v38)
    {
      LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v89[0]) = 7;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v90, v89))
      {
        v58 = (*(*v37 + 392))();
        v59 = (*(*v4 + 408))(v90);
        sub_1C1E9B764(v13, v13, v58);

        v59(v90, 0);
        a3 = v85;
        (*(*v9 + 288))(0);
LABEL_112:

        goto LABEL_118;
      }
    }

    sub_1C1E90660(a1, a2, a3);
LABEL_62:

LABEL_63:
    v60 = (*(*v9 + 304))(v36);
    if (!v60)
    {
      goto LABEL_117;
    }

    v61 = v60;
    v62 = sub_1C1EA69D8(v60, a1);
    if (!v62)
    {
      if (a3 == 1)
      {
        if (((*(*v61 + 296))() & 1) == 0)
        {
          goto LABEL_108;
        }

LABEL_70:
        v63 = (*v61 + 392);
        v64 = *v63;
        v8 = v63;
        v65 = (*v63)();
        if (v65 >> 62)
        {
          v66 = sub_1C1F52994();
        }

        else
        {
          v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v66 != 1)
        {
          goto LABEL_84;
        }

        result = (v64)(v67);
        if (result >> 62)
        {
          v72 = result;
          v73 = sub_1C1F52994();
          result = v72;
          if (!v73)
          {
            goto LABEL_83;
          }

LABEL_75:
          if ((result & 0xC000000000000001) != 0)
          {
            v68 = MEMORY[0x1C6911DB0](0);
          }

          else
          {
            if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_131;
            }

            v68 = *(result + 32);
          }

          LOBYTE(v90[0]) = *(v68 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          LOBYTE(v89[0]) = 1;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) & 1) == 0)
          {

            goto LABEL_84;
          }

          v69 = (*(*v68 + 232))();
          v71 = v70;
        }

        else
        {
          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

LABEL_83:

LABEL_84:
          v69 = 0;
          v71 = 0xE000000000000000;
        }

        if (((*(*v9 + 384))(v67) & 1) == 0 || (v69 != 50 || v71 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0 && (v69 != 12337 || v71 != 0xE200000000000000) && (sub_1C1F52C64() & 1) == 0)
        {
          v8 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
          LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          LOBYTE(v89[0]) = 7;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) & 1) == 0)
          {
            goto LABEL_104;
          }

          if (v69 != 50 || v71 != 0xE100000000000000)
          {
            v74 = sub_1C1F52C64();
            LOBYTE(v75) = 0;
            v77 = v69 == 51 && v71 == 0xE100000000000000;
            if ((v74 & 1) != 0 || v77)
            {
              goto LABEL_107;
            }

            if ((sub_1C1F52C64() & 1) == 0)
            {
LABEL_104:
              v90[0] = (*(*v9 + 232))();
              v90[1] = v78;
              v89[0] = 1885957222;
              v89[1] = 0xE400000000000000;
              sub_1C1E94E48();
              v79 = sub_1C1F52924();

              if (v79)
              {
                LOBYTE(v90[0]) = *(v8 + v9);
                LOBYTE(v89[0]) = 1;
                v75 = static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) ^ 1;
LABEL_107:
                (*(*v61 + 304))(v75 & 1);

                a3 = v85;
                goto LABEL_108;
              }
            }
          }
        }

        LOBYTE(v75) = 0;
        goto LABEL_107;
      }

      if (a3 == 2 && ((*(*v61 + 296))() & 1) == 0)
      {
        goto LABEL_70;
      }
    }

LABEL_108:
    if ((*(*v61 + 576))())
    {
      if (!v62)
      {
        goto LABEL_110;
      }
    }

    else if (!(v62 | (((*(*v61 + 568))() & 1) == 0)))
    {
LABEL_110:
      LOBYTE(v90[0]) = *(v9 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      LOBYTE(v89[0]) = 7;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v90, v89))
      {
        v80 = (*(*v4 + 408))(v90);
        sub_1C1E98338(v13);

        v80(v90, 0);
        goto LABEL_112;
      }

      (*(*v9 + 312))(0);
      goto LABEL_116;
    }

    sub_1C1E90660(a1, a2, a3);
LABEL_116:

    v9 = v61;
LABEL_117:

    if (__OFADD__(v13++, 1))
    {
      goto LABEL_128;
    }

LABEL_118:
    v9 = v86;
    v8 = v87;
    v83 = (v87)(v81);
    if (v83 >> 62)
    {
      v84 = sub_1C1F52994();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 >= v84)
    {
      return result;
    }
  }

  if (a3 == 1)
  {
    if (((*(*v37 + 296))() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (a3 != 2 || ((*(*v37 + 296))() & 1) != 0)
  {
    goto LABEL_51;
  }

  v8 = (v37 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000);
  v39 = (*v37 + 392);
  v40 = *v39;
  v41 = (*v39)();
  if (v41 >> 62)
  {
    v42 = sub_1C1F52994();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 != 1)
  {
    goto LABEL_43;
  }

  result = (v40)(v43);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_42:

LABEL_43:
    v45 = 0;
    v47 = 0xE000000000000000;
LABEL_44:
    if ((*(*v9 + 368))(v43))
    {
      if (v45 == 51 && v47 == 0xE100000000000000)
      {
        LOBYTE(v50) = 0;
      }

      else
      {
        v50 = sub_1C1F52C64() ^ 1;
      }
    }

    else
    {
      LOBYTE(v50) = 1;
    }

    (*(*v37 + 304))(v50 & 1);

    a3 = v85;
    goto LABEL_51;
  }

  v48 = result;
  v49 = sub_1C1F52994();
  result = v48;
  if (!v49)
  {
    goto LABEL_42;
  }

LABEL_33:
  if ((result & 0xC000000000000001) != 0)
  {
    v44 = MEMORY[0x1C6911DB0](0);
    goto LABEL_36;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(result + 32);

LABEL_36:

    LOBYTE(v90[0]) = *(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    LOBYTE(v89[0]) = 1;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v90, v89) & 1) == 0)
    {

      goto LABEL_43;
    }

    v45 = (*(*v44 + 232))();
    v47 = v46;

    goto LABEL_44;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C1E91650()
{
  if ((*(*v0 + 256))())
  {
    v4 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    v3 = 1;
    v1 = static CalculateExpression.TokenType.== infix(_:_:)(&v4, &v3);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1C1E916CC()
{
  v1 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_isImplicit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E91728()
{
  v1 = (v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C1E917DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
  swift_beginAccess();
  type metadata accessor for CalculateExpression.RichExpression();
  sub_1C1E77790(&qword_1EDC2E8C8, type metadata accessor for CalculateExpression.RichExpression, &protocol conformance descriptor for CalculateExpression.RichExpression);
  if (sub_1C1F52414())
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    sub_1C1F520F4();
  }
}

uint64_t sub_1C1E9196C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___rich;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1C1E919D8()
{
  if (v0[24] != 1)
  {
    goto LABEL_23;
  }

  v2 = v0;
  if ((*(*v0 + 176))())
  {
    v3 = CalculateExpression.format.getter();

    if (v3 == 2)
    {
      goto LABEL_11;
    }
  }

  v4 = (*v0 + 392);
  v5 = *v4;
  v6 = (*v4)();
  if (v6 >> 62)
  {
    v7 = sub_1C1F52994();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = (v5)(v8);
  if (v7 == 1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6911DB0](0);
      goto LABEL_10;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);

LABEL_10:

      v1 = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      v22[0] = v1;
      v21 = 4;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v22, &v21))
      {
LABEL_11:
        v11 = 1;
        return v11 & 1;
      }

      v20 = v5();
      v2 = v20;
      if ((v20 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6911DB0](0, v20);
        goto LABEL_28;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_34:
    v15 = MEMORY[0x1C6911DB0](0, v0);
    goto LABEL_18;
  }

  if (v9 >> 62)
  {
    v12 = sub_1C1F52994();
  }

  else
  {
    v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 != 2)
  {
    goto LABEL_23;
  }

  v14 = (v5)(v13);
  v0 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = *(v14 + 32);

LABEL_18:

  v1 = &unk_1EDC31000;
  v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

  v24 = v16;
  v23 = 4;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v24, &v23) & 1) == 0)
  {
LABEL_23:
    v11 = 0;
    return v11 & 1;
  }

  result = v5();
  v2 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_38:
    v18 = MEMORY[0x1C6911DB0](1, v2);
    goto LABEL_22;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v18 = *(result + 40);

LABEL_22:

    v19 = *(v18 + v1[99]);

    v22[1] = v19;
LABEL_29:
    v11 = CalculateExpression.TokenType.isOperand.getter();
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E91D38(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *v3;
  if (*a1 != -1)
  {
    v8 = *v3;
    v9 = a2;
    swift_once();
    v5 = v8;
    a2 = v9;
  }

  v6 = *a2;

  return sub_1C1E91F6C(v5, v6);
}

uint64_t sub_1C1E91D9C()
{
  result = sub_1C1E91DC4(&unk_1F418DEE8);
  qword_1EDC2F698 = result;
  return result;
}

uint64_t sub_1C1E91DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C1E90258();
  result = MEMORY[0x1C6911AC0](v2, &type metadata for CalculateExpression.TokenType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1C1E91E38(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C1E91E38(unsigned __int8 *a1, unsigned __int8 a2)
{
  v13 = a2;
  v4 = *v2;
  sub_1C1E90258();
  v5 = sub_1C1F523B4();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1C1E9019C();
    while ((sub_1C1F52414() & 1) == 0)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v10 = (*(v4 + 48) + v7);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C1E92058(v13, v7, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    v10 = &v13;
    result = 1;
  }

  *a1 = *v10;
  return result;
}

uint64_t sub_1C1E91F6C(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1C1E90258(), v3 = sub_1C1F523B4(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_1C1E9019C();
    do
    {
      v7 = sub_1C1F52414();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1C1E92058(uint64_t result, unint64_t a2, char a3)
{
  v14 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1EAD730(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1C1EAE110();
      goto LABEL_12;
    }

    sub_1C1EAE5D8(v5 + 1);
  }

  v7 = *v3;
  sub_1C1E90258();
  result = sub_1C1F523B4();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    sub_1C1E9019C();
    do
    {
      result = sub_1C1F52414();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v10 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v10 + 48) + a2) = v14;
  v11 = *(v10 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (!v12)
  {
    *(v10 + 16) = v13;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C1F52C94();
  __break(1u);
  return result;
}

Calculate::CalculateExpression::Base_optional __swiftcall CalculateExpression.Base.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 16)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 10)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 8)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t _s9Calculate19CalculateExpressionC13GraphableTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t CalculateExpression.base.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_1C1E923F0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1C1E924DC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1C1E9253C()
{
  type metadata accessor for CalculateExpression.RollOutOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F908 = result;
  return result;
}

uint64_t sub_1C1E925B8()
{
  type metadata accessor for CalculateExpression.RollInOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2F968 = result;
  return result;
}

uint64_t sub_1C1E92610()
{
  type metadata accessor for CalculateExpression.DropOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB38 = result;
  return result;
}

uint64_t sub_1C1E926B0()
{
  type metadata accessor for CalculateExpression.SwapOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB08 = result;
  return result;
}

uint64_t CalculateExpression.rich.getter()
{
  sub_1C1E7F10C();
}

uint64_t CalculateExpression.prefersRTL.getter()
{
  if ((CalculateExpression.allowsLocalization.getter() & 1) != 0 && (swift_getKeyPath(), sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression), sub_1C1F52104(), , *(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != 1))
  {
    v1 = CalculateExpression.isArabic.getter();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t CalculateExpression.isArabic.getter()
{
  v0 = sub_1C1F520C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1F520E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213B8, &unk_1C1F57DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  CalculateExpression.effectiveLocale.getter(v7);
  sub_1C1F520D4();
  (*(v5 + 8))(v7, v4);
  sub_1C1F520B4();
  (*(v1 + 8))(v3, v0);
  v11 = sub_1C1F52084();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C1E83580(v10, &qword_1EBF213B8, &unk_1C1F57DB0);
    v13 = 0;
  }

  else
  {
    v14 = sub_1C1F52064();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    if (v14 == 29281 && v16 == 0xE200000000000000)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_1C1F52C64();
    }
  }

  return v13 & 1;
}

uint64_t CalculateExpression.effectiveLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC9Calculate19CalculateExpression___observationRegistrar;
  v35 = v2;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v33[1] = v13;
  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v15 = &unk_1EDC30000;
  if (!Strong || (v16 = Strong, swift_getKeyPath(), v34 = v16, sub_1C1F52104(), v15 = &unk_1EDC30000, , v17 = *(v16 + OBJC_IVAR____TtC9Calculate19CalculateExpression___numberFormatter), v18 = v17, , !v17))
  {
    swift_getKeyPath();
    v34 = v2;
    sub_1C1F52104();

    v19 = *(v2 + v15[383]);
    v20 = v19;
    if (!v19)
    {
      v26 = sub_1C1F520E4();
      (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
      goto LABEL_11;
    }

    v18 = v20;
  }

  v21 = [v18 locale];

  if (v21)
  {
    sub_1C1F520A4();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1C1F520E4();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v9, v22, 1, v23);
  sub_1C1E93318(v9, v12);
  if ((*(v24 + 48))(v12, 1, v23) != 1)
  {
    return (*(v24 + 32))(a1, v12, v23);
  }

LABEL_11:
  swift_getKeyPath();
  v34 = v2;
  sub_1C1F52104();

  v27 = *(v2 + OBJC_IVAR____TtC9Calculate19CalculateExpression___locales);
  v28 = *(v27 + 16);
  v29 = sub_1C1F520E4();
  v30 = *(v29 - 8);
  v31 = v30;
  if (v28)
  {
    (*(v30 + 16))(v6, v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v29);
    (*(v31 + 56))(v6, 0, 1, v29);
    (*(v31 + 32))(a1, v6, v29);
  }

  else
  {
    (*(v30 + 56))(v6, 1, 1, v29);
    v32 = [objc_opt_self() systemLocale];
    sub_1C1F520A4();

    if ((*(v31 + 48))(v6, 1, v29) != 1)
    {
      sub_1C1E83580(v6, &qword_1EBF21168, &unk_1C1F564C0);
    }
  }

  result = (*(v31 + 48))(v12, 1, v29);
  if (result != 1)
  {
    return sub_1C1E83580(v12, &qword_1EBF21168, &unk_1C1F564C0);
  }

  return result;
}

uint64_t sub_1C1E93318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21168, &unk_1C1F564C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1E93850()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(65, 0xE100000000000000);
  qword_1EDC2FA08 = result;
  return result;
}

uint64_t sub_1C1E938D4()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(66, 0xE100000000000000);
  qword_1EDC2F9F8 = result;
  return result;
}

uint64_t sub_1C1E93910()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(67, 0xE100000000000000);
  qword_1EDC2F9E8 = result;
  return result;
}

uint64_t sub_1C1E93970()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(68, 0xE100000000000000);
  qword_1EDC2F9D8 = result;
  return result;
}

uint64_t sub_1C1E939D0()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(69, 0xE100000000000000);
  qword_1EDC2F9C8 = result;
  return result;
}

uint64_t sub_1C1E93A30()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(70, 0xE100000000000000);
  qword_1EDC2F9B8 = result;
  return result;
}

uint64_t sub_1C1E93A90()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(17990, 0xE200000000000000);
  qword_1EDC2F928 = result;
  return result;
}

uint64_t sub_1C1E93AF0()
{
  type metadata accessor for CalculateExpression.LiteralOperation();
  result = sub_1C1E7C8DC(12336, 0xE200000000000000);
  qword_1EDC2F938 = result;
  return result;
}

uint64_t sub_1C1E93B74()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(4476481, 0xE300000000000000);
  qword_1EDC2FBA8 = result;
  return result;
}

uint64_t sub_1C1E93BB4()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(21071, 0xE200000000000000);
  qword_1EDC2FBD8 = result;
  return result;
}

uint64_t sub_1C1E93C38()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(5394254, 0xE300000000000000);
  qword_1EDC2FB78 = result;
  return result;
}

uint64_t sub_1C1E93C78()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(5394264, 0xE300000000000000);
  qword_1EDC2FB58 = result;
  return result;
}

uint64_t sub_1C1E93CDC()
{
  type metadata accessor for CalculateExpression.BasicOperatorOperation();
  result = sub_1C1E7CDB0(6582125, 0xE300000000000000);
  qword_1EDC2FB98 = result;
  return result;
}

uint64_t sub_1C1E93D64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for CalculateExpression.ShiftOperation();
  v10 = a2;
  result = sub_1C1E93E1C(&v10, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1C1E93E1C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  return sub_1C1E7C960();
}

uint64_t sub_1C1E94020()
{
  type metadata accessor for CalculateExpression.FlipOperation();
  result = sub_1C1E94080(56, 0xE100000000000000);
  qword_1EDC2F8D8 = result;
  return result;
}

uint64_t sub_1C1E940D0()
{
  type metadata accessor for CalculateExpression.FlipOperation();
  result = sub_1C1E94080(13873, 0xE200000000000000);
  qword_1EDC2F898 = result;
  return result;
}

uint64_t sub_1C1E94154()
{
  type metadata accessor for CalculateExpression.NotOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB68 = result;
  return result;
}

uint64_t sub_1C1E941AC()
{
  type metadata accessor for CalculateExpression.NegOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FB88 = result;
  return result;
}

uint64_t sub_1C1E9424C()
{
  type metadata accessor for CalculateExpression.EnterOperation();
  result = sub_1C1E7D0A0();
  qword_1EDC2FAE8 = result;
  return result;
}

uint64_t sub_1C1E942C8()
{
  type metadata accessor for CalculateExpression.RootOperation();
  v0 = sub_1C1E7DD60();
  result = sub_1C1E7DDB8(121, 0xE100000000000000, v0 & 1);
  qword_1EDC2FD68 = result;
  return result;
}

uint64_t CalculateExpression.allowsLocalization.getter()
{
  v1 = sub_1C1F52084();
  v2 = *(v1 - 8);
  v43 = v1;
  v44 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213B0, &qword_1C1F57DA8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213B8, &unk_1C1F57DB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v15 = sub_1C1F520C4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1F520E4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v0;
  CalculateExpression.effectiveLocale.getter(v22);
  sub_1C1F520D4();
  v23 = v19;
  v24 = v14;
  v25 = v42;
  (*(v20 + 8))(v22, v23);
  v26 = v43;
  sub_1C1F520B4();
  (*(v16 + 8))(v18, v15);
  sub_1C1F52074();
  v27 = v44;
  (*(v44 + 56))(v11, 0, 1, v26);
  v28 = *(v5 + 56);
  v29 = v27;
  sub_1C1EB1D18(v24, v25, &qword_1EBF213B8, &unk_1C1F57DB0);
  sub_1C1EB1D18(v11, v25 + v28, &qword_1EBF213B8, &unk_1C1F57DB0);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v26) != 1)
  {
    v38 = v24;
    v31 = v41;
    sub_1C1EB1D18(v25, v41, &qword_1EBF213B8, &unk_1C1F57DB0);
    if (v30(v25 + v28, 1, v26) != 1)
    {
      v33 = v25 + v28;
      v34 = v39;
      (*(v27 + 32))(v39, v33, v26);
      sub_1C1E77790(&qword_1EDC2E8E8, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v35 = sub_1C1F52414();
      v36 = *(v29 + 8);
      v36(v34, v26);
      sub_1C1E83580(v11, &qword_1EBF213B8, &unk_1C1F57DB0);
      sub_1C1E83580(v38, &qword_1EBF213B8, &unk_1C1F57DB0);
      v36(v31, v26);
      sub_1C1E83580(v25, &qword_1EBF213B8, &unk_1C1F57DB0);
      if (v35)
      {
        goto LABEL_9;
      }

      return 1;
    }

    sub_1C1E83580(v11, &qword_1EBF213B8, &unk_1C1F57DB0);
    sub_1C1E83580(v38, &qword_1EBF213B8, &unk_1C1F57DB0);
    (*(v27 + 8))(v31, v26);
LABEL_6:
    sub_1C1E83580(v25, &qword_1EBF213B0, &qword_1C1F57DA8);
    return 1;
  }

  sub_1C1E83580(v11, &qword_1EBF213B8, &unk_1C1F57DB0);
  sub_1C1E83580(v24, &qword_1EBF213B8, &unk_1C1F57DB0);
  if (v30(v25 + v28, 1, v26) != 1)
  {
    goto LABEL_6;
  }

  sub_1C1E83580(v25, &qword_1EBF213B8, &unk_1C1F57DB0);
LABEL_9:
  swift_getKeyPath();
  v37 = v40;
  v45 = v40;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  return *(v37 + OBJC_IVAR____TtC9Calculate19CalculateExpression___allowsArabicMath);
}

Swift::String __swiftcall CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(Swift::String _, Swift::Bool presentation, NSNumberFormatter_optional formatter, Swift::Int_optional significantDigits, Swift::Bool_optional forceScientificNotation)
{
  is_nil = significantDigits.is_nil;
  value = significantDigits.value;
  v34 = *&formatter.is_nil;
  isa = formatter.value.super.super.isa;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v11 = v5;
  if (formatter.value.super.super.isa)
  {
    v12 = formatter.value.super.super.isa;
  }

  else
  {
    v12 = CalculateExpression.effectiveNumberFormatter.getter();
  }

  aBlock = countAndFlagsBits;
  v37 = object;
  v42 = 11077;
  v43 = 0xE200000000000000;
  sub_1C1E94E48();
  v13 = isa;
  if ((sub_1C1F52934() & 1) == 0)
  {
    aBlock = countAndFlagsBits;
    v37 = object;
    v42 = 11589;
    v43 = 0xE200000000000000;
    if ((sub_1C1F52934() & 1) == 0)
    {
      if ([v12 usesGroupingSeparator])
      {
        CalculateExpression.effectiveBase.getter(&aBlock);
        v20 = aBlock == 1;
      }

      else
      {
        v20 = 0;
      }

      v27 = sub_1C1F52424();
      v25 = [v12 groupingSeparator];
      if (v25)
      {
        v28 = v25;
        v25 = [v12 decimalSeparator];
        if (v25)
        {
          v29 = v25;
          swift_getKeyPath();
          aBlock = v5;
          sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
          sub_1C1F52104();

          LOBYTE(v33) = *(v5 + OBJC_IVAR____TtC9Calculate19CalculateExpression___engine) != 1;
          v30 = [v12 formatString:v27 usesGroupingSeparator:v20 groupingSeparator:v28 decimalSeparator:v29 maximumIntegerDigits:1000000 maximumFractionDigits:1000000 localizeDigits:v33];

          countAndFlagsBits = sub_1C1F52454();
          object = v31;

          goto LABEL_18;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  if (!presentation)
  {

    goto LABEL_18;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  v15 = v12;
  *(v14 + 32) = countAndFlagsBits;
  *(v14 + 40) = object;
  v16 = is_nil;
  *(v14 + 48) = is_nil;
  if ((value & 1) == 0)
  {
    v42 = 0;
    v43 = 0xE000000000000000;
    v21 = swift_allocObject();
    *(v21 + 16) = v15;
    *(v21 + 24) = v34;
    *(v21 + 32) = &v42;
    *(v21 + 40) = sub_1C1EED6AC;
    *(v21 + 48) = v14;
    *(v21 + 56) = v16;
    *(v21 + 64) = countAndFlagsBits;
    *(v21 + 72) = object;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1C1EED6BC;
    *(v22 + 24) = v21;
    v40 = sub_1C1E7A75C;
    v41 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1C1E7A734;
    v39 = &block_descriptor_1;
    v23 = _Block_copy(&aBlock);
    swift_bridgeObjectRetain_n();
    v24 = v15;

    [v24 ignoreChanges_];

    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if ((v23 & 1) == 0)
    {
      countAndFlagsBits = v42;
      object = v43;

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_20;
  }

  v17 = v15;

  countAndFlagsBits = sub_1C1EE8DD4(v18, v17, countAndFlagsBits, object, is_nil);
  object = v19;

LABEL_18:
  v25 = countAndFlagsBits;
  v26 = object;
LABEL_22:
  result._object = v26;
  result._countAndFlagsBits = v25;
  return result;
}

uint64_t sub_1C1E94DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C1E94DF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t sub_1C1E94E48()
{
  result = qword_1EDC2C330;
  if (!qword_1EDC2C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC2C330);
  }

  return result;
}

uint64_t sub_1C1E94E9C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  swift_beginAccess();
  return swift_weakLoadStrong();
}

void *sub_1C1E94FB8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1E950A0()
{
  result = sub_1C1E91DC4(&unk_1F418DFD0);
  qword_1EDC31308 = result;
  return result;
}

unsigned __int8 *sub_1C1E95104(uint64_t a1, unint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v42 = 11077;
  sub_1C1E94E48();
  if ((sub_1C1F52934() & 1) == 0)
  {
    v43 = a1;
    v44 = a2;
    v42 = 11589;
    if ((sub_1C1F52934() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = sub_1C1F52424();
  v5 = sub_1C1F52424();
  v6 = [v4 rangeOfString_];

  v7 = sub_1C1F52424();
  if (__OFADD__(v6, 1))
  {
    __break(1u);
LABEL_79:

    goto LABEL_71;
  }

  v8 = v7;
  v9 = [v7 substringFromIndex_];

  v10 = sub_1C1F52454();
  v12 = v11;

  result = sub_1C1F524B4();
  v14 = HIBYTE(v12) & 0xF;
  v15 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_79;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    goto LABEL_81;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v10 & 0x1000000000000000) != 0)
    {
      result = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1C1F52AE4();
    }

    v17 = *result;
    if (v17 == 43)
    {
      if (v15 < 1)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v14 = v15 - 1;
      if (v15 == 1)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v24 = result + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            goto LABEL_65;
          }

          v26 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_65;
          }

          ++v24;
          if (!--v14)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v17 == 45)
    {
      if (v15 < 1)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v14 = v15 - 1;
      if (v15 == 1)
      {
        goto LABEL_65;
      }

      v10 = 0;
      if (result)
      {
        v18 = result + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            goto LABEL_65;
          }

          v20 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            goto LABEL_65;
          }

          ++v18;
          if (!--v14)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      if (!v15)
      {
LABEL_65:
        v10 = 0;
        LOBYTE(v14) = 1;
LABEL_66:
        for (i = v14; ; i = v41)
        {

          v36 = (i & 1) != 0 ? 0 : v10;
          v37 = __OFADD__(v6, v36);
          v6 += v36;
          if (!v37)
          {
            break;
          }

          __break(1u);
LABEL_81:
          v10 = sub_1C1EAC9B8(v10, v12, 10);
        }

LABEL_71:
        v38 = sub_1C1EDA988(a1, a2);
        if (v39)
        {
          if (v38 == 45 && v39 == 0xE100000000000000)
          {

LABEL_76:
            v37 = __OFSUB__(v6--, 1);
            if (!v37)
            {
              return (v6 & ~(v6 >> 63));
            }

            __break(1u);
            goto LABEL_84;
          }

          v40 = sub_1C1F52C64();

          if (v40)
          {
            goto LABEL_76;
          }
        }

        return (v6 & ~(v6 >> 63));
      }

      v10 = 0;
      if (result)
      {
        do
        {
          v30 = *result - 48;
          if (v30 > 9)
          {
            goto LABEL_65;
          }

          v31 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            goto LABEL_65;
          }

          v10 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            goto LABEL_65;
          }

          ++result;
        }

        while (--v15);
      }
    }

    LOBYTE(v14) = 0;
    goto LABEL_66;
  }

  v43 = v10;
  v44 = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v10 != 43)
  {
    if (v10 == 45)
    {
      if (!v14)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (--v14)
      {
        v10 = 0;
        v21 = &v43 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v14)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else if (v14)
    {
      v10 = 0;
      v32 = &v43;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        v32 = (v32 + 1);
        if (!--v14)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

  if (v14)
  {
    if (--v14)
    {
      v10 = 0;
      v27 = &v43 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        ++v27;
        if (!--v14)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_87:
  __break(1u);
  return result;
}

id sub_1C1E955C4(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  type metadata accessor for CalculateExpression(0);
  v68 = *(*v3 + 232);
  v7 = v68();
  v9 = static CalculateExpression.isHighPrecisionLiteral(_:)(v7, v8);

  v10 = CalculateExpression.effectiveNumberFormatter.getter();
  v11 = v10;
  if (v9 & 1) == 0 || ![v10 usesSignificantDigits] || (v12 = a2, (a3))
  {
    v12 = [v11 maximumSignificantDigits];
  }

  v65 = a3;
  formatter = a2;
  v13 = (v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText);
  v15 = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText);
  v14 = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_preformattedText + 8);

  v17 = (v68)(v16);
  if (v14)
  {
    if (v15 == v17 && v14 == v18)
    {
    }

    else
    {
      v20 = sub_1C1F52C64();

      if ((v20 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v22 = *(v3 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesGroupingSeparator);
    v21 = [v11 usesGroupingSeparator];
    if (v9)
    {
      if (((v22 ^ v21) & 1) == 0)
      {
        v23 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumIntegerDigits);
        v21 = [v11 maximumIntegerDigits];
        if (v23 == v21)
        {
          v24 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_minimumFractionDigits);
          v21 = [v11 minimumFractionDigits];
          if (v24 == v21)
          {
            v25 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumFractionDigits);
            v21 = [v11 maximumFractionDigits];
            if (v25 == v21)
            {
              v26 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesSignificantDigits);
              v21 = [v11 usesSignificantDigits];
              if (v26 == v21 && *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits) == v12)
              {
                v27 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_flexibleFractionDigits);
                v21 = CalculateExpression.flexibleFractionDigits.getter();
                if (v27 == (v21 & 1))
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }
      }
    }

    else if (((v22 ^ v21) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
  }

LABEL_24:
  *v13 = (v68)(v21);
  v13[1] = v28;

  v29 = [v11 maximumIntegerDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumIntegerDigits) = v29;
  v30 = [v11 minimumFractionDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_minimumFractionDigits) = v30;
  v31 = [v11 maximumFractionDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumFractionDigits) = v31;
  v32 = [v11 usesGroupingSeparator];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesGroupingSeparator) = v32;
  v33 = [v11 usesSignificantDigits];
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_usesSignificantDigits) = v33;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maximumSignificantDigits) = v12;
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_flexibleFractionDigits) = CalculateExpression.flexibleFractionDigits.getter() & 1;
  v34._countAndFlagsBits = v68();
  v73.value = v65 & 1;
  v71.value.super.super.isa = 0;
  v71.is_nil = formatter;
  v73.is_nil = 2;
  v36 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v34, 1, v71, v73, v35);

  v37 = (v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText);
  *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText) = v36;

  if (v9)
  {
    v21 = [v11 maximumFractionDigits];
    if (v21 >= 1)
    {
      if (v37[1])
      {

        v38 = sub_1C1F52424();

        v39 = sub_1C1F52424();
        v40 = [v38 rangeOfString_];

        result = [v11 decimalSeparator];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v42 = result;
        v43 = [v38 rangeOfString_];

        v44 = sub_1C1F51F64();
        v45 = v40;
        if (v40 == v44)
        {
          v45 = [v38 length];
        }

        if (v43 == sub_1C1F51F64())
        {
          goto LABEL_31;
        }

        v66 = v45;
        v46._countAndFlagsBits = v68();
        v72.value.super.super.isa = 0;
        v72.is_nil = 30;
        v74.value = 0;
        v74.is_nil = v40 != v44;
        v48 = CalculateExpression.formatLiteral(_:presentation:formatter:significantDigits:forceScientificNotation:)(v46, 1, v72, v74, v47);

        v49 = v37[1];
        if (v49)
        {
          v50 = v38;
          if (v48._countAndFlagsBits == *v37 && v49 == v48._object)
          {

LABEL_42:

            goto LABEL_43;
          }

          v51 = sub_1C1F52C64();

          if (v51)
          {
LABEL_31:

            goto LABEL_43;
          }
        }

        else
        {

          v50 = v38;
        }

        if (v40 == v44)
        {
          v60 = [v50 description];
          v61 = sub_1C1F52454();
          v63 = v62;

          v69 = v61;
          v70 = v63;
          MEMORY[0x1C69117F0](10911970, 0xA300000000000000);
        }

        else
        {
          v52 = [v50 substringToIndex_];
          v53 = sub_1C1F52454();
          v55 = v54;

          v69 = v53;
          v70 = v55;
          MEMORY[0x1C69117F0](10911970, 0xA300000000000000);
          v56 = [v50 substringFromIndex_];
          v57 = sub_1C1F52454();
          v59 = v58;

          MEMORY[0x1C69117F0](v57, v59);
        }

        *v37 = v69;
        v37[1] = v70;
        goto LABEL_42;
      }
    }
  }

LABEL_43:
  if (*(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText + 8))
  {
    v64 = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_formattedText);
  }

  else
  {
    v64 = (v68)(v21);
  }

  return v64;
}

uint64_t static CalculateExpression.isHighPrecisionLiteral(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C1E94E48();
  if (sub_1C1F52934())
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C1F52934();
  }

  return v2 & 1;
}

uint64_t sub_1C1E95D98()
{
  v6 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v5 = 10;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v6, &v5) & 1) == 0)
  {
    return 0;
  }

  if ((*(*v0 + 232))() == 10127586 && v1 == 0xA300000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_1C1F52C64();

    return v3 & 1;
  }
}

uint64_t CalculateExpression.id.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v4 = sub_1C1F52034();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t _s9Calculate0A10ExpressionC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1F52034();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  swift_getKeyPath();
  v16[3] = a1;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v11 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  swift_getKeyPath();
  v16[0] = a2;
  sub_1C1F52104();

  v13 = OBJC_IVAR____TtC9Calculate19CalculateExpression__id;
  swift_beginAccess();
  v12(v7, a2 + v13, v4);
  LOBYTE(v13) = sub_1C1F52014();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  return v13 & 1;
}

uint64_t sub_1C1E96224()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C1E96274()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1E962C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21258, &unk_1C1F56D18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C1E96380(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21258, &unk_1C1F56D18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C1E9643C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1C1E96570@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C1E9658C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1E965C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C1E9660C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id scan(_:options:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = sub_1C1F52424();
  type metadata accessor for CalculateScanKey();
  sub_1C1E971B4(&qword_1EDC2C2F8, &unk_1C1F56374);
  v9 = sub_1C1F52344();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C1E96D10;
  v13[3] = &block_descriptor;
  v10 = _Block_copy(v13);

  v11 = [v7 scan:v8 options:v9 resultHandler:v10];
  _Block_release(v10);

  return v11;
}

void type metadata accessor for CalculateScanKey()
{
  if (!qword_1EDC2C2E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDC2C2E8);
    }
  }
}

uint64_t sub_1C1E96D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1C1E96E6C();
  v3 = sub_1C1F526B4();

  v2(v3);
}

uint64_t scan(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_opt_self();
  v4 = sub_1C1F52424();
  type metadata accessor for CalculateScanKey();
  sub_1C1E971B4(&qword_1EDC2C2F8, &unk_1C1F56374);
  v5 = sub_1C1F52344();
  v6 = [v3 scan:v4 options:v5];

  sub_1C1E96E6C();
  v7 = sub_1C1F526B4();

  return v7;
}

unint64_t sub_1C1E96E6C()
{
  result = qword_1EDC2C2B8;
  if (!qword_1EDC2C2B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC2C2B8);
  }

  return result;
}

uint64_t sub_1C1E96EB8()
{
  v0 = sub_1C1F52454();
  v1 = MEMORY[0x1C69118A0](v0);

  return v1;
}

uint64_t sub_1C1E96EF4(uint64_t a1)
{
  sub_1C1F52454();
  sub_1C1F524A4();
}

uint64_t sub_1C1E96F50(uint64_t a1, id *a2)
{
  result = sub_1C1F52434();
  *a2 = 0;
  return result;
}

uint64_t sub_1C1E96FC8@<X0>(uint64_t *a2@<X8>)
{
  sub_1C1F52454();
  v3 = sub_1C1F52424();

  *a2 = v3;
  return result;
}

uint64_t sub_1C1E9700C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C1F52424();

  *a2 = v3;
  return result;
}

uint64_t sub_1C1E97054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1F52454();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1E97080(uint64_t a1)
{
  v2 = sub_1C1E971B4(&qword_1EDC2C2F8, &unk_1C1F56374);
  v3 = sub_1C1E971B4(&qword_1EBF21128, &unk_1C1F562C8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C1E971B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateScanKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1E971F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1E981EC, v101);
  v3 = v101[0];
  if (!v101[0])
  {
    return 0;
  }

  v4 = v101[1];
  v5 = v101[2];
  v6 = v101[3];
  v7 = *(*v101[0] + 416);

  v8 = v7(v4);
  if (!v8)
  {

    sub_1C1E98278(v3, v4, v5, v6);
    return 0;
  }

  v9 = v8;
  v98 = v4;
  v10 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v101[0]) = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v99 = 1;
  v97 = v5;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v101, &v99))
  {
    v11 = *(*v9 + 232);
    v11();
    v12 = sub_1C1F524B4();

    if (v12 >= 1)
    {
      v14 = (*(*v9 + 408))(v13);
      if (v14)
      {
        v14 = (*(*v9 + 264))(0);
      }

      v96 = v6;
      v94 = *(*a1 + 176);
      v15 = v11;
      if (v94(v14))
      {
        (*(*v9 + 744))();
      }

      type metadata accessor for CalculateExpression.RichToken(0);

      v17 = sub_1C1E9C29C(v16);
      v18 = v15();
      v20 = sub_1C1E982B8(v18, v19);
      v22 = v21;

      if (!v22)
      {
        goto LABEL_107;
      }

      v95 = v7;
      (*(*v17 + 240))(v20, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C1F563C0;
      *(v24 + 32) = v17;
      v100 = v24;

      v26 = (v15)(v25);
      v6 = v27;
      v15();
      v29 = v28;
      v30 = v15;
      v31 = sub_1C1F524B4();

      v32 = v31 - 1;
      if (!__OFSUB__(v31, 1))
      {
        v33 = sub_1C1E984A8(v32, v26, v6);
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v40 = MEMORY[0x1C6911770](v33, v35, v37, v39);
        v42 = v41;

        v43 = *(*v9 + 240);
        v44 = v43(v40, v42);
        v45 = (v30)(v44);
        v47 = v46;

        v49 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v49 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v49)
        {
          goto LABEL_72;
        }

        if ((*(*a1 + 368))(v48) != 2)
        {
          v85 = (*(*v3 + 408))(v101);
          sub_1C1E98338(v98);

          v85(v101, 0);
LABEL_72:

          v6 = v96;
          goto LABEL_73;
        }

        v29 = v9;
        v43(48, 0xE100000000000000);
        v6 = v98 - 1;
        if (!__OFSUB__(v98, 1))
        {
          v75 = v95(v98 - 1);
          if (!v75 || (v76 = *(v75 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v76 == 53) || (LOBYTE(v101[0]) = v76, v99 = 4, sub_1C1E9019C(), (sub_1C1F52414() & 1) == 0))
          {
LABEL_61:
            (*(*a1 + 232))(1);
            v80 = (*(*a1 + 256))(0);
            if (v94(v80))
            {
              sub_1C1E904FC(0);
            }

            goto LABEL_72;
          }

          result = (*(*v3 + 392))();
          v29 = result;
          if ((result & 0xC000000000000001) == 0)
          {
            if ((v6 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v6 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v77 = *(result + 8 * v6 + 32);

LABEL_60:

              v78 = sub_1C1E9C29C(v77);
              sub_1C1E98664(0, 0, v78);

              v79 = (*(*v3 + 408))(v101);
              sub_1C1E98338(v6);

              v79(v101, 0);
              goto LABEL_61;
            }

            __break(1u);
LABEL_107:
            __break(1u);
            return result;
          }

LABEL_104:
          v77 = MEMORY[0x1C6911DB0](v6, v29);
          goto LABEL_60;
        }

        goto LABEL_100;
      }

      __break(1u);
      goto LABEL_87;
    }
  }

  v50 = v7;
  LOBYTE(v101[0]) = *(v9 + v10);
  v51 = &OBJC_INSTANCE_METHODS_NSObject;
  if ((CalculateExpression.TokenType.isParenthesis.getter() & 1) != 0 && ((*(*v9 + 256))() & 1) == 0)
  {
    v96 = v6;
    type metadata accessor for CalculateExpression.RichToken(0);
    v61 = (*(*v9 + 232))();
    LOBYTE(v101[0]) = *(v9 + v10);
    v30 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v61, v62, v101, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C1F563C0;
    v51 = *(*v3 + 392);
    v63 = v51();
    v29 = v63;
    if ((v63 & 0xC000000000000001) == 0)
    {
      if ((v98 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v98 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v64 = *(v63 + 8 * v98 + 32);

LABEL_36:

      *(v6 + 32) = sub_1C1E9C29C(v64);
      v100 = v6;
      v65 = *(*v3 + 408);

      v95 = v65;
      v29 = v65(v101);
      v67 = v66;
      v6 = *v66;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v67 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        v6 = sub_1C1E98444(v6);
        *v67 = v6;
      }

      if ((v98 & 0x8000000000000000) == 0)
      {
        if (v98 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v98 + 0x20) = v30;

          (v29)(v101, 0);
          v6 = v98 - 1;
          v69 = v50(v98 - 1);
          if (!v69)
          {
            goto LABEL_72;
          }

          v70 = *(v69 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v70 == 53)
          {
            goto LABEL_72;
          }

          LOBYTE(v101[0]) = v70;
          v99 = 10;
          sub_1C1E9019C();
          if ((sub_1C1F52414() & 1) == 0)
          {
            goto LABEL_72;
          }

          v71 = v51();
          v29 = v71;
          if ((v71 & 0xC000000000000001) == 0)
          {
            if (v98)
            {
              if (v98 <= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v72 = *(v71 + 8 * v6 + 32);

LABEL_49:

                v73 = sub_1C1E9C29C(v72);
                sub_1C1E98664(0, 0, v73);

                v74 = v95(v101);
                sub_1C1E98338(v6);

                v74(v101, 0);
                goto LABEL_72;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_104;
          }

LABEL_101:
          v72 = MEMORY[0x1C6911DB0](v6, v29);
          goto LABEL_49;
        }

        goto LABEL_99;
      }

      goto LABEL_97;
    }

LABEL_95:
    v64 = MEMORY[0x1C6911DB0](v98, v29);
    goto LABEL_36;
  }

  v52 = (*(*a1 + 368))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C1F563C0;
  v53 = (*(*v3 + 392))();
  v29 = v53;
  v54 = v53 & 0xC000000000000001;
  if (v52 == 2)
  {
    v32 = v98;
    if (v54)
    {
LABEL_87:
      v50 = v6;
      v55 = MEMORY[0x1C6911DB0](v32, v29);
LABEL_23:

      type metadata accessor for CalculateExpression.RichToken(0);
      *(v30 + 32) = sub_1C1E9C29C(v55);
      v100 = v30;
      v56 = *(*a1 + 176);
      v51 = (*a1 + 176);
      v57 = v56();
      if (v57)
      {
        CalculateExpression.effectiveBase.getter(v101);

        v58 = v101[0];
      }

      else
      {
        v58 = 1;
      }

      LOBYTE(v101[0]) = v58;
      v81 = (v56)(v57);
      v30 = sub_1C1E8FBEC(48, 0xE100000000000000, v101, v81);
      v29 = (*(*v3 + 408))(v101);
      v6 = v82;
      v83 = *v82;
      v84 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v6 = v83;
      if (!v84 || (v83 & 0x8000000000000000) != 0 || (v83 & 0x4000000000000000) != 0)
      {
        v83 = sub_1C1E98444(v83);
        *v6 = v83;
      }

      if ((v98 & 0x8000000000000000) == 0)
      {
        if (v98 < *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = v50;
          *((v83 & 0xFFFFFFFFFFFFFF8) + 8 * v98 + 0x20) = v30;

          (v29)(v101, 0);
          (*(*a1 + 232))(1);
          (*(*a1 + 256))(0);
          goto LABEL_73;
        }

        goto LABEL_94;
      }

      goto LABEL_91;
    }

    if ((v98 & 0x8000000000000000) == 0)
    {
      if (v98 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v50 = v6;
      v55 = *(v29 + 8 * v98 + 32);

      goto LABEL_23;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v50 = v98;
  if (v54)
  {
    v59 = MEMORY[0x1C6911DB0](v98, v53);
  }

  else
  {
    if ((v98 & 0x8000000000000000) != 0)
    {
      goto LABEL_90;
    }

    if (v98 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v59 = *(v53 + 8 * v98 + 32);
  }

  type metadata accessor for CalculateExpression.RichToken(0);
  *(v30 + 32) = sub_1C1E9C29C(v59);
  v100 = v30;
  v60 = (*(*v3 + 408))(v101);
  sub_1C1E98338(v98);

  v60(v101, 0);
LABEL_73:
  v86 = (*(*a1 + 232))(0);
  if ((*(*v3 + 568))(v86))
  {
    v87 = (*(*v3 + 424))();
    v88 = *(*a1 + 176);
    v89 = (v88)(v87);
  }

  else
  {
    v88 = *(*a1 + 176);
    v90 = v88();
    if (v90)
    {
      if ((j___s9Calculate0A10ExpressionC12prefersClearSbvg() & 1) == 0 && CalculateExpression.format.getter() != 2 && sub_1C1EE3BB0(1))
      {

        sub_1C1E904FC(1);
      }
    }

    v89 = (v88)(v90);
  }

  if (v89)
  {
    type metadata accessor for CalculateExpression.RichExpression();
    v91 = v100;
    v92 = v88();
    v93 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v91, v92);
    CalculateExpression.removed.setter(v93);

    sub_1C1E98278(v3, v98, v97, v6);
  }

  else
  {

    sub_1C1E98278(v3, v98, v97, v6);
  }

  return 1;
}

uint64_t sub_1C1E981EC(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 568))())
  {
    v2 = 0;
  }

  else
  {
    v2 = (*(*v1 + 576))() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1C1E98278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C1E982B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1C1F524D4();
  return sub_1C1F525D4();
}

unint64_t sub_1C1E98338(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t CalculateExpression.DeleteOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1E98444(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1F52994();
  }

  return sub_1C1F52AD4();
}

uint64_t sub_1C1E984A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C1F524E4();

    return sub_1C1F525F4();
  }

  return result;
}

uint64_t sub_1C1E98544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CalculateExpression.RichToken(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C1F52994();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C1F52994();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1C1E98664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1F52994();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1C1E8CFBC(result, 1);

  return sub_1C1E98544(v7, v6, 1, v4);
}

unint64_t sub_1C1E98750(uint64_t a1)
{
  v2 = *(*a1 + 176);
  v3 = *a1 + 176;
  result = v2();
  if (result)
  {
    v5 = CalculateExpression.format.getter();

    if (v5 != 2)
    {
      return 0;
    }

    if (!(v2)(v6))
    {
      return 1;
    }

    v7 = CalculateExpression.postfixStack.getter();

    v8 = v7 >> 62;
    if (v7 >> 62)
    {
      v9 = sub_1C1F52994();
      if (v9)
      {
LABEL_6:
        v10 = __OFSUB__(v9, 1);
        v11 = v9 - 1;
        if (v10)
        {
          __break(1u);
        }

        else
        {
          v3 = v7 & 0xC000000000000001;
          if ((v7 & 0xC000000000000001) == 0)
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v11 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              v12 = v7 & 0xFFFFFFFFFFFFFF8;
              if (!v8)
              {
                goto LABEL_11;
              }

              goto LABEL_26;
            }

            __break(1u);
            goto LABEL_34;
          }
        }

        MEMORY[0x1C6911DB0](v11, v7);
        v12 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v8)
        {
LABEL_11:
          v13 = *(v12 + 16);
          v14 = v13 < 2;
          result = v13 - 2;
          if (!v14)
          {
            goto LABEL_12;
          }

          goto LABEL_28;
        }

LABEL_26:
        v31 = sub_1C1F52994();
        v14 = v31 < 2;
        result = v31 - 2;
        if (!v14)
        {
LABEL_12:
          if (v3)
          {
            MEMORY[0x1C6911DB0]();
          }

          else
          {
            if (result >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          v15 = CalculateExpression.rich.getter();
          v16 = (*(*v15 + 392))(v15);

          if (!(v16 >> 62))
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

            v18 = (*a1 + 408);
            v19 = *v18;
            v20 = (*v18)(v32);
            sub_1C1E98C40(v17);
            v20(v32, 0);
            v21 = *CalculateExpression.rich.getter();
            v22 = (*(v21 + 392))();

            if (v22 >> 62)
            {
              v23 = sub_1C1F52994();
            }

            else
            {
              v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v24 = v19(v32);
            sub_1C1E98C40(v23);
            v24(v32, 0);
            v25 = *CalculateExpression.rich.getter();
            v26 = (*(v25 + 392))();

            v27 = v19(v32);
            sub_1C1E8CECC(v26);
            v27(v32, 0);
            v28 = *CalculateExpression.rich.getter();
            v29 = (*(v28 + 392))();

            v30 = v19(v32);
            sub_1C1E8CECC(v29);
            v30(v32, 0);
            (*(*a1 + 232))(0);
            (*(*a1 + 256))(1);

            goto LABEL_29;
          }

LABEL_34:
          v17 = sub_1C1F52994();
          goto LABEL_19;
        }

LABEL_28:

LABEL_29:

        return 1;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1C1E98C40(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v2 >> 62))
  {
    v3 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = -v3;
    if (!__OFSUB__(0, v3))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = result;
  v3 = sub_1C1F52994();
  result = v7;
  v4 = -v3;
  if (__OFSUB__(0, v3))
  {
    goto LABEL_19;
  }

LABEL_5:
  v5 = -result;
  if (v4 <= 0 && v4 > v5)
  {
    goto LABEL_22;
  }

  result = v3 - result;
  if (__OFADD__(v3, v5))
  {
    goto LABEL_20;
  }

  if (v3 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_1C1E98F60(result, v3);
}

uint64_t CalculateExpression.SwapOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t (*sub_1C1E98D2C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6911DB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1C1E98DAC;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1E98DB4()
{
  result = qword_1EBF21140;
  if (!qword_1EBF21140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF21138, &qword_1C1F56910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF21140);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1E98E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CalculateExpression.RichToken(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1C1F52994();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1C1F52994();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1E98F60(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C1F52994();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1C1F52994();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1C1E8CFBC(result, 1);

  return sub_1C1E98E60(v5, v3, 0);
}

uint64_t sub_1C1E99038()
{
  type metadata accessor for CalculateExpression.RichToken(0);
  v16 = 10;
  v1 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(1885957222, 0xE400000000000000, &v16, v1 & 1);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v15 = 1;

  v5 = sub_1C1E7DD60();
  v6 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v4, v3, &v15, v5 & 1);
  type metadata accessor for CalculateExpression.RichExpression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1F563C0;
  *(v7 + 32) = v6;

  v8 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v7, 0);
  v9 = (*(*v2 + 312))(v8);
  v10 = *(*v2 + 304);
  v11 = v10(v9);
  if (v11)
  {
    (*(*v11 + 304))(0);
  }

  v12 = v10(v11);
  if (v12)
  {
    v14 = 2;
    (*(*v12 + 280))(&v14);
  }

  return v2;
}

uint64_t CalculateExpression.FlipOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.FunctionOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C1E992BC@<X0>(char *a1@<X8>)
{
  result = *(v1 + 24);
  if (result == 49 && *(v1 + 32) == 0xE100000000000000)
  {
    v5 = 1;
  }

  else
  {
    result = sub_1C1F52C64();
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = 3;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1C1E99318(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1E7DD60, v145);
  v5 = v145[0];
  if (!v145[0])
  {
    return 0;
  }

  v7 = v145[1];
  v6 = v145[2];
  v8 = v145[3];
  v9 = *(*v145[0] + 416);

  v10 = (v9)(v7);
  if (!v10)
  {

    v14 = v5;
    v15 = v7;
    v16 = v6;
LABEL_13:
    v17 = v8;
LABEL_14:
    sub_1C1E98278(v14, v15, v16, v17);
    return 0;
  }

  v11 = v10;
  v141 = v6;
  v142 = v7;
  (*(*a1 + 232))(0);
  v12 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v145[0]) = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (CalculateExpression.TokenType.isOperator.getter())
  {
    v144 = *(v11 + v12);
    v143 = 8;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(&v144, &v143) & 1) == 0)
    {
      v144 = *(v11 + v12);
      v143 = 9;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v144, &v143) & 1) == 0)
      {

        goto LABEL_12;
      }
    }
  }

  v13 = sub_1C1E90090(&unk_1F418CC88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21148, &unk_1C1F564B0);
  swift_arrayDestroy();
  LOBYTE(v145[0]) = *(v11 + v12);
  v144 = 15;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) != 0 || (v140 = v13, LOBYTE(v145[0]) = *(v11 + v12), v144 = 18, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144)))
  {

LABEL_12:

    v14 = v5;
    v16 = v141;
    v15 = v142;
    goto LABEL_13;
  }

  v139 = v8;
  v19 = *(v2 + 24);
  v20 = *(v3 + 32);
  if (!v19 && v20 == 0xE000000000000000 || (sub_1C1F52C64() & 1) != 0)
  {
    v21 = type metadata accessor for CalculateExpression.RichToken(0);
    if (*(v13 + 16))
    {
      a1 = v21;
      v22 = sub_1C1E901F0(*(v3 + 16));
      v13 = v141;
      v9 = v142;
      if (v23)
      {
        v24 = (*(v140 + 56) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];

        LOBYTE(v145[0]) = *(v3 + 16);
        v27 = sub_1C1E7DD60();
        v28 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v25, v26, v145, v27 & 1);
        v20 = v142 + 1;
        if (!__OFADD__(v142, 1))
        {
          a1 = v28;
          v3 = (*(*v5 + 408))(v145);
          if (!(*v29 >> 62))
          {
            result = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result >= v20)
            {
              goto LABEL_24;
            }

            goto LABEL_158;
          }

LABEL_157:
          result = sub_1C1F52994();
          if (result >= v20)
          {
LABEL_24:
            if ((v20 & 0x8000000000000000) == 0)
            {
              sub_1C1E98664(v20, v20, a1);
              (v3)(v145, 0);

              v30 = v5;
              v31 = v9;
              v32 = v13;
LABEL_26:
              v33 = v139;
LABEL_27:
              sub_1C1E98278(v30, v31, v32, v33);
              return 1;
            }

            goto LABEL_159;
          }

LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_156;
  }

  if ((v19 != 49 || v20 != 0xE100000000000000) && (sub_1C1F52C64() & 1) == 0)
  {

    v14 = v5;
    v16 = v141;
    v15 = v142;
    v17 = v139;
    goto LABEL_14;
  }

  LOBYTE(v145[0]) = *(v11 + v12);
  v144 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) == 0)
  {
    goto LABEL_84;
  }

  result = v142 - 1;
  if (__OFSUB__(v142, 1))
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v137 = v142 - 1;
  v34 = v9();
  if (!v34)
  {
LABEL_84:
    result = type metadata accessor for CalculateExpression.RichToken(0);
    if (*(v140 + 16))
    {
      result = sub_1C1E901F0(*(v3 + 16));
      if (v67)
      {
        v68 = (*(v140 + 56) + 16 * result);
        v69 = *v68;
        v70 = v68[1];

        LOBYTE(v145[0]) = *(v3 + 16);
        v71 = sub_1C1E7DD60();
        v72 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v69, v70, v145, v71 & 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1C1F56430;
        *(v73 + 32) = v72;
        v74 = *(*a1 + 384);

        v76 = v74(v145, v75);
        v77 = (*(*a1 + 176))(v76);
        result = sub_1C1E8FBEC(49, 0xE100000000000000, v145, v77);
        *(v73 + 40) = result;
        if (!__OFADD__(v142, 1))
        {
          v78 = (*(*v5 + 408))(v145);
          sub_1C1E9B764(v142 + 1, v142 + 1, v73);

          v78(v145, 0);

          v30 = v5;
          v31 = v142;
          v32 = v141;
          goto LABEL_26;
        }

        goto LABEL_162;
      }

LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v35 = v34;
  v36 = (*(*v11 + 400))();
  if (v37)
  {
    v38 = (*(*v11 + 232))(v36);
    v40 = sub_1C1E9A504(v38, v39);
    if (v41)
    {
      v42 = 0;
    }

    else
    {
      v42 = v40;
    }
  }

  else
  {
    v42 = v36;
  }

  v43 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v145[0]) = *(v35 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v144 = 32;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144))
  {
    v44 = 1;
  }

  else
  {
    LOBYTE(v145[0]) = *(v35 + v43);
    v144 = 30;
    v44 = static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144);
  }

  LOBYTE(v145[0]) = *(v3 + 16);
  v144 = 29;
  result = static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144);
  if (result & 1) != 0 || (LOBYTE(v145[0]) = *(v3 + 16), v144 = 31, result = static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144), (result))
  {
    if (v44)
    {
      v134 = v42 != 0;
      if (v42)
      {
        v45 = v42 - 1;
      }

      else
      {
        v45 = 1;
      }
    }

    else
    {
      v46 = __CFADD__(v42, 1);
      v45 = v42 + 1;
      if (v46)
      {
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v134 = 0;
    }
  }

  else if (v44)
  {
    v46 = __CFADD__(v42, 1);
    v45 = v42 + 1;
    if (v46)
    {
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    v134 = 1;
  }

  else
  {
    v134 = v42 == 0;
    if (v42)
    {
      v45 = v42 - 1;
    }

    else
    {
      v45 = 1;
    }
  }

  LOBYTE(v145[0]) = *(v3 + 16);
  v144 = 31;
  v138 = v35;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) != 0 || (LOBYTE(v145[0]) = *(v3 + 16), v144 = 32, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144)))
  {
    v45 &= 0x3Fu;
  }

  type metadata accessor for CalculateExpression.RichToken(0);
  v47 = v45;
  v145[0] = v45;
  v48 = sub_1C1F52C34();
  v135 = v49;
  LOBYTE(v145[0]) = 1;
  v50 = (*(*a1 + 176))();
  v51 = sub_1C1E8FBEC(v48, v135, v145, v50);
  (*(*a1 + 384))(v145);
  v136 = v51;
  (*(*v51 + 424))(v145);
  LOBYTE(v145[0]) = *(v3 + 16);
  v144 = 29;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) != 0 || (LOBYTE(v145[0]) = *(v3 + 16), v144 = 30, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144)))
  {
    LOBYTE(v145[0]) = *(v138 + v43);
    v144 = 29;
    if (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) != 0 || (LOBYTE(v145[0]) = *(v138 + v43), v144 = 30, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144)))
    {
      v52 = v139;
      if (v45)
      {
        v53 = *(v140 + 16);
        if (v134)
        {
          if (v53 && (v54 = sub_1C1E901F0(30), (v55 & 1) != 0))
          {
            v56 = (*(v140 + 56) + 16 * v54);
            v57 = *v56;
            v58 = v56[1];
          }

          else
          {
            v57 = 0;
            v58 = 0;
          }

          LOBYTE(v145[0]) = 30;
          v84 = sub_1C1E7DD60();
          v85 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v57, v58, v145, v84 & 1);
          v86 = *(*v5 + 408);
          v87 = v86(v145);
          v89 = v88;
          v90 = *v88;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v89 = v90;
          if (!result || (v90 & 0x8000000000000000) != 0 || (v90 & 0x4000000000000000) != 0)
          {
            result = sub_1C1E98444(v90);
            v90 = result;
            *v89 = result;
          }

          if ((v137 & 0x8000000000000000) != 0)
          {
            goto LABEL_166;
          }

          v91 = v51;
          if (v137 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

          *((v90 & 0xFFFFFFFFFFFFFF8) + 8 * v137 + 0x20) = v85;

          v87(v145, 0);

          v92 = v86(v145);
          v94 = v93;
          v95 = *v93;
          result = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v94 = v95;
          if (!result || (v95 & 0x8000000000000000) != 0 || (v95 & 0x4000000000000000) != 0)
          {
            result = sub_1C1E98444(v95);
            v95 = result;
            *v94 = result;
          }

          v96 = v141;
          if ((v142 & 0x8000000000000000) != 0)
          {
            goto LABEL_170;
          }

          v97 = v95 & 0xFFFFFFFFFFFFFF8;
          v52 = v139;
          if (v142 < *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_152;
          }

          __break(1u);
        }

        else if (v53)
        {
          v79 = sub_1C1E901F0(29);
          if (v80)
          {
            v81 = (*(v140 + 56) + 16 * v79);
            v82 = *v81;
            v83 = v81[1];

LABEL_106:

            LOBYTE(v145[0]) = 29;
            v98 = sub_1C1E7DD60();
            v99 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v82, v83, v145, v98 & 1);
            v100 = *(*v5 + 408);
            v101 = v100(v145);
            v103 = v102;
            v104 = *v102;
            result = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *v103 = v104;
            if (!result || (v104 & 0x8000000000000000) != 0 || (v104 & 0x4000000000000000) != 0)
            {
              result = sub_1C1E98444(v104);
              v104 = result;
              *v103 = result;
            }

            if ((v137 & 0x8000000000000000) != 0)
            {
              goto LABEL_167;
            }

            v91 = v136;
            if (v137 >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
              goto LABEL_172;
            }

            *((v104 & 0xFFFFFFFFFFFFFF8) + 8 * v137 + 0x20) = v99;

            v101(v145, 0);

            v92 = v100(v145);
            v106 = v105;
            v107 = *v105;
            result = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *v106 = v107;
            if (!result || (v107 & 0x8000000000000000) != 0 || (v107 & 0x4000000000000000) != 0)
            {
              result = sub_1C1E98444(v107);
              v107 = result;
              *v106 = result;
            }

            v96 = v141;
            if ((v142 & 0x8000000000000000) != 0)
            {
              goto LABEL_171;
            }

            v97 = v107 & 0xFFFFFFFFFFFFFF8;
            v52 = v139;
            if (v142 >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_119;
            }

LABEL_152:
            *(v97 + 8 * v142 + 32) = v91;

            v92(v145, 0);
            goto LABEL_153;
          }
        }

        v82 = 0;
        v83 = 0;
        goto LABEL_106;
      }

      v3 = v51;
      if (v142 < v137)
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      result = (*(*v5 + 408))(v145);
      v66 = v142 + 1;
      if (!__OFADD__(v142, 1))
      {
        goto LABEL_121;
      }

      __break(1u);
      goto LABEL_83;
    }
  }

  v59 = v43;
  LOBYTE(v145[0]) = *(v3 + 16);
  v144 = 31;
  v52 = v139;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) == 0 && (LOBYTE(v145[0]) = *(v3 + 16), v144 = 32, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) == 0) || (LOBYTE(v145[0]) = *(v138 + v59), v144 = 31, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) == 0) && (LOBYTE(v145[0]) = *(v138 + v59), v144 = 32, (static CalculateExpression.TokenType.== infix(_:_:)(v145, &v144) & 1) == 0))
  {
LABEL_83:

    goto LABEL_84;
  }

  if (!v47)
  {
LABEL_119:

    if (v142 < v137)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    result = (*(*v5 + 408))(v145);
    v66 = v142 + 1;
    if (__OFADD__(v142, 1))
    {
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

LABEL_121:
    v108 = result;
    sub_1C1E98F60(v137, v66);
    v108(v145, 0);
    v96 = v141;
LABEL_153:

    v30 = v5;
    v31 = v142;
    v32 = v96;
    v33 = v52;
    goto LABEL_27;
  }

  v60 = *(v140 + 16);
  if (v134)
  {
    if (v60 && (v61 = sub_1C1E901F0(32), (v62 & 1) != 0))
    {
      v63 = (*(v140 + 56) + 16 * v61);
      v64 = *v63;
      v65 = v63[1];
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    LOBYTE(v145[0]) = 32;
    v114 = sub_1C1E7DD60();
    v115 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v64, v65, v145, v114 & 1);
    v116 = *(*v5 + 408);
    v117 = v116(v145);
    v119 = v118;
    v120 = *v118;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v119 = v120;
    if (!result || (v120 & 0x8000000000000000) != 0 || (v120 & 0x4000000000000000) != 0)
    {
      result = sub_1C1E98444(v120);
      v120 = result;
      *v119 = result;
    }

    if ((v137 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v91 = v51;
    if (v137 >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    *((v120 & 0xFFFFFFFFFFFFFF8) + 8 * v137 + 0x20) = v115;

    v117(v145, 0);

    v92 = v116(v145);
    v122 = v121;
    v123 = *v121;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v122 = v123;
    if (!result || (v123 & 0x8000000000000000) != 0 || (v123 & 0x4000000000000000) != 0)
    {
      result = sub_1C1E98444(v123);
      v123 = result;
      *v122 = result;
    }

    v96 = v141;
    if ((v142 & 0x8000000000000000) != 0)
    {
      goto LABEL_179;
    }

    v97 = v123 & 0xFFFFFFFFFFFFFF8;
    v52 = v139;
    if (v142 < *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_152;
    }

    __break(1u);
    goto LABEL_139;
  }

  if (!v60 || (v109 = sub_1C1E901F0(31), (v110 & 1) == 0))
  {
LABEL_139:
    v112 = 0;
    v113 = 0;
    goto LABEL_140;
  }

  v111 = (*(v140 + 56) + 16 * v109);
  v112 = *v111;
  v113 = v111[1];

LABEL_140:

  LOBYTE(v145[0]) = 31;
  v124 = sub_1C1E7DD60();
  v125 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v112, v113, v145, v124 & 1);
  v126 = *(*v5 + 408);
  v127 = v126(v145);
  v129 = v128;
  v130 = *v128;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v129 = v130;
  if (!result || (v130 & 0x8000000000000000) != 0 || (v130 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v130);
    v130 = result;
    *v129 = result;
  }

  if ((v137 & 0x8000000000000000) != 0)
  {
    goto LABEL_176;
  }

  v91 = v136;
  if (v137 >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  *((v130 & 0xFFFFFFFFFFFFFF8) + 8 * v137 + 0x20) = v125;

  v127(v145, 0);

  v92 = v126(v145);
  v132 = v131;
  v133 = *v131;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v132 = v133;
  if (!result || (v133 & 0x8000000000000000) != 0 || (v133 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v133);
    v133 = result;
    *v132 = result;
  }

  v96 = v141;
  if ((v142 & 0x8000000000000000) != 0)
  {
    goto LABEL_180;
  }

  v97 = v133 & 0xFFFFFFFFFFFFFF8;
  v52 = v139;
  if (v142 < *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_152;
  }

LABEL_181:
  __break(1u);
  return result;
}

unint64_t sub_1C1E9A504(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C1F52AE4();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_1C1E9A8B4(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t CalculateExpression.ShiftOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return v0;
}

uint64_t CalculateExpression.ShiftOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unsigned __int8 *sub_1C1E9A8B4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1C1F525E4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C1E9AEC0(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void *sub_1C1E9AE38(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1C1E9AEC0(uint64_t a1, unint64_t a2)
{
  v2 = sub_1C1F525F4();
  v6 = sub_1C1E9AF40(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1C1E9AF40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C1F528E4();
    if (!v9 || (v10 = v9, v11 = sub_1C1E9B098(v9, 0), v12 = sub_1C1E9B10C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C1F52494();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C1F52494();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C1F52AE4();
LABEL_4:

  return sub_1C1F52494();
}

void *sub_1C1E9B098(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21150, &qword_1C1F583C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1C1E9B10C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C1E9B32C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C1F52564();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C1F52AE4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C1E9B32C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C1F52544();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1C1E9B32C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C1F52584();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1C6911840](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C1E9B3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for CalculateExpression.RichToken(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C1E9B410(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1C1E9B4CC(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void *sub_1C1E9B4CC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C1E9AE38(v2, 0);

    MEMORY[0x1C6911D80](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1C1F52994();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1C1E9B568(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1C1E9B410(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void sub_1C1E9B5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for CalculateExpression.RichToken(0);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_1C1F52994();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_1C1F52994();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_1C1E9B568(v4, sub_1C1E9B894);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

void sub_1C1E9B764(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  if (sub_1C1F52994() < v6)
  {
    goto LABEL_16;
  }

LABEL_4:
  v10 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v4 >> 62))
  {
    v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = __OFSUB__(v11, v10);
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  v11 = sub_1C1F52994();
  v12 = __OFSUB__(v11, v10);
  v13 = v11 - v10;
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v9)
  {
    v14 = sub_1C1F52994();
  }

  else
  {
    v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (v12)
  {
    goto LABEL_21;
  }

  sub_1C1E8CFBC(v15, 1);

  sub_1C1E9B5CC(v7, v6, v11, v4);
}

uint64_t CalculateExpression.RichToken.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_id;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1E9B93C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C1E9B988(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 240);

  return v4(v2, v3);
}

uint64_t sub_1C1E9B9F0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_text);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1C1E9BAC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1E9BB6C(char a1)
{
  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_isImplicit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1E9BC1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9BC70(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 288);

  return v2(v3);
}

uint64_t sub_1C1E9BD38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9BD8C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 312);

  return v2(v3);
}

uint64_t sub_1C1E9BDF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_1C1E9BEA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1E9BF4C()
{
  v1 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1E9BF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1E9C040()
{
  result = (*(*v0 + 280))();
  if (result)
  {
    v2 = (*(*result + 544))(result);

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return result;
    }

    v3 = (v2 + 1) & ~((v2 + 1) >> 63);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(*v0 + 304))(result);
  if (!v4)
  {
    return v3;
  }

  v5 = (*(*v4 + 544))(v4);

  if (__OFADD__(v5, 1))
  {
    goto LABEL_12;
  }

  if (v5 + 1 <= v3)
  {
    return v3;
  }

  else
  {
    return v5 + 1;
  }
}

uint64_t sub_1C1E9C178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C1EAC150(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1C1E9C1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1C1EAC150(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 16 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1C1EB0254(a1, a2);

  return v4;
}

uint64_t sub_1C1E9C29C(uint64_t a1)
{
  v3 = (*(*a1 + 232))();
  v5 = v4;
  v22[0] = *(a1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v6 = (*(*a1 + 256))();
  v7 = (*(v1 + 360))(v3, v5, v22, v6 & 1);
  v8 = *(*a1 + 328);

  v10 = v8(v9);
  v11 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_maxSuperscript;
  swift_beginAccess();
  *(v7 + v11) = v10;

  v13 = (*(*a1 + 280))(v12);
  if (v13)
  {
    v14 = v13;
    type metadata accessor for CalculateExpression.RichExpression();
    swift_allocObject();
    v15 = sub_1C1EB0340(v14);

    v16 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_left;
    swift_beginAccess();
    *(v7 + v16) = v15;
  }

  v17 = (*(*a1 + 304))(v13);
  if (v17)
  {
    v18 = v17;
    type metadata accessor for CalculateExpression.RichExpression();
    swift_allocObject();
    v19 = sub_1C1EB0340(v18);

    v20 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_right;
    swift_beginAccess();
    *(v7 + v20) = v19;
  }

  return v7;
}

_BYTE *sub_1C1E9C51C(_BYTE *a1)
{
  swift_allocObject();
  v2 = sub_1C1EB0340(a1);

  return v2;
}

uint64_t sub_1C1E9C568()
{
  v6 = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v5 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v6, &v5) & 1) == 0)
  {
    return 0;
  }

  if ((*(*v0 + 232))() == 48 && v1 == 0xE100000000000000)
  {

    return 1;
  }

  else
  {
    v3 = sub_1C1F52C64();

    return v3 & 1;
  }
}

BOOL sub_1C1E9C644(uint64_t a1, uint64_t a2)
{
  LOBYTE(v9[0]) = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v8[0]) = 10;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v9, v8) & 1) == 0)
  {
    return 0;
  }

  v9[0] = (*(*v2 + 232))();
  v9[1] = v5;
  v8[0] = a1;
  v8[1] = a2;
  sub_1C1E94E48();
  v6 = sub_1C1F52924();

  return v6 == 0;
}

unint64_t sub_1C1E9C710()
{
  LOBYTE(v34[0]) = *(v0 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v35[0] = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v34, v35) & 1) == 0)
  {
    return 0;
  }

  v1 = v0;
  result = (*(*v0 + 304))();
  if (result)
  {
    v3 = (*(*result + 392))();
    if (v3 >> 62)
    {
      v31 = v3;
      v32 = sub_1C1F52994();
      v3 = v31;
      v0 = v1;
      if (v32)
      {
        goto LABEL_5;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C6911DB0](0);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_81;
        }

        v4 = *(v3 + 32);
      }

      LOBYTE(v34[0]) = *(v4 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v35[0] = 1;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v34, v35))
      {
        (*(*v0 + 232))();
        result = (*(*v4 + 232))();
        v6 = HIBYTE(v5) & 0xF;
        v7 = result & 0xFFFFFFFFFFFFLL;
        if ((v5 & 0x2000000000000000) != 0)
        {
          v8 = HIBYTE(v5) & 0xF;
        }

        else
        {
          v8 = result & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v35[0] = 0;
            v10 = sub_1C1EAC43C(result, v5, 10);

            if ((v10 & 0x100000000) == 0)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }

          if ((v5 & 0x2000000000000000) != 0)
          {
            v34[0] = result;
            v34[1] = v5 & 0xFFFFFFFFFFFFFFLL;
            if (result == 43)
            {
              if (v6)
              {
                v7 = v6 - 1;
                if (v6 != 1)
                {
                  LODWORD(v10) = 0;
                  v20 = v34 + 1;
                  while (1)
                  {
                    v21 = *v20 - 48;
                    if (v21 > 9)
                    {
                      break;
                    }

                    v22 = 10 * v10;
                    if (v22 != v22)
                    {
                      break;
                    }

                    LODWORD(v10) = v22 + v21;
                    if (__OFADD__(v22, v21))
                    {
                      break;
                    }

                    ++v20;
                    if (!--v7)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_71;
              }

              goto LABEL_88;
            }

            if (result != 45)
            {
              if (v6)
              {
                LODWORD(v10) = 0;
                v25 = v34;
                while (1)
                {
                  v26 = *v25 - 48;
                  if (v26 > 9)
                  {
                    break;
                  }

                  v27 = 10 * v10;
                  if (v27 != v27)
                  {
                    break;
                  }

                  LODWORD(v10) = v27 + v26;
                  if (__OFADD__(v27, v26))
                  {
                    break;
                  }

                  ++v25;
                  if (!--v6)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_71;
            }

            if (v6)
            {
              v7 = v6 - 1;
              if (v6 != 1)
              {
                LODWORD(v10) = 0;
                v14 = v34 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    break;
                  }

                  v16 = 10 * v10;
                  if (v16 != v16)
                  {
                    break;
                  }

                  LODWORD(v10) = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    break;
                  }

                  ++v14;
                  if (!--v7)
                  {
                    goto LABEL_72;
                  }
                }
              }

              goto LABEL_71;
            }
          }

          else
          {
            if ((result & 0x1000000000000000) != 0)
            {
              result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              result = sub_1C1F52AE4();
              v7 = v33;
            }

            v9 = *result;
            if (v9 == 43)
            {
              if (v7 >= 1)
              {
                if (--v7)
                {
                  LODWORD(v10) = 0;
                  if (result)
                  {
                    v17 = (result + 1);
                    while (1)
                    {
                      v18 = *v17 - 48;
                      if (v18 > 9)
                      {
                        goto LABEL_71;
                      }

                      v19 = 10 * v10;
                      if (v19 != v19)
                      {
                        goto LABEL_71;
                      }

                      LODWORD(v10) = v19 + v18;
                      if (__OFADD__(v19, v18))
                      {
                        goto LABEL_71;
                      }

                      ++v17;
                      if (!--v7)
                      {
                        goto LABEL_72;
                      }
                    }
                  }

                  goto LABEL_70;
                }

                goto LABEL_71;
              }

              goto LABEL_87;
            }

            if (v9 != 45)
            {
              if (v7)
              {
                LODWORD(v10) = 0;
                if (result)
                {
                  while (1)
                  {
                    v23 = *result - 48;
                    if (v23 > 9)
                    {
                      goto LABEL_71;
                    }

                    v24 = 10 * v10;
                    if (v24 != v24)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v10) = v24 + v23;
                    if (__OFADD__(v24, v23))
                    {
                      goto LABEL_71;
                    }

                    ++result;
                    if (!--v7)
                    {
                      goto LABEL_72;
                    }
                  }
                }

                goto LABEL_70;
              }

LABEL_71:
              LODWORD(v10) = 0;
              LOBYTE(v7) = 1;
LABEL_72:
              v35[0] = v7;
              v28 = v7;

              if ((v28 & 1) == 0)
              {
LABEL_74:
                v29 = sub_1C1F52474();

                v30 = strtoull((v29 + 32), 0, v10);

                return v30;
              }

LABEL_73:
              LODWORD(v10) = 10;
              goto LABEL_74;
            }

            if (v7 >= 1)
            {
              if (--v7)
              {
                LODWORD(v10) = 0;
                if (result)
                {
                  v11 = (result + 1);
                  while (1)
                  {
                    v12 = *v11 - 48;
                    if (v12 > 9)
                    {
                      goto LABEL_71;
                    }

                    v13 = 10 * v10;
                    if (v13 != v13)
                    {
                      goto LABEL_71;
                    }

                    LODWORD(v10) = v13 - v12;
                    if (__OFSUB__(v13, v12))
                    {
                      goto LABEL_71;
                    }

                    ++v11;
                    if (!--v7)
                    {
                      goto LABEL_72;
                    }
                  }
                }

LABEL_70:
                LOBYTE(v7) = 0;
                goto LABEL_72;
              }

              goto LABEL_71;
            }

            __break(1u);
          }

          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return result;
        }

LABEL_81:

        goto LABEL_73;
      }

      goto LABEL_77;
    }

LABEL_77:

    return 0;
  }

  return result;
}

void *sub_1C1E9CBF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1C1E9CC58(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 424))(&v4);
}

unint64_t sub_1C1E9CCB8@<X0>(char *a1@<X8>)
{
  LOBYTE(v45[0]) = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v46[0] = 1;
  result = static CalculateExpression.TokenType.== infix(_:_:)(v45, v46);
  if ((result & 1) == 0)
  {
    goto LABEL_94;
  }

  result = (*(*v1 + 304))();
  if (!result)
  {
    goto LABEL_94;
  }

  v5 = result;
  v6 = (*result + 392);
  v7 = *v6;
  v8 = (*v6)();
  if (v8 >> 62)
  {
    v2 = v8;
    v9 = sub_1C1F52994();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != 1)
  {
    goto LABEL_93;
  }

  v11 = v5;
  v12 = (v7)(v10);
  if (v12 >> 62)
  {
    v11 = v12;
    v43 = sub_1C1F52994();
    v12 = v11;
    if (!v43)
    {
      goto LABEL_92;
    }
  }

  else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_92;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1C6911DB0](0, v12);

    v14 = *(v2 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v14 == 53)
    {
      goto LABEL_93;
    }
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_89;
    }

    v13 = *(v12 + 32);
    v2 = v12;

    v14 = *(v13 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v14 == 53)
    {
LABEL_93:

      goto LABEL_94;
    }
  }

  LOBYTE(v45[0]) = v14;
  v46[0] = 1;
  sub_1C1E9019C();
  if ((sub_1C1F52414() & 1) == 0)
  {
    goto LABEL_93;
  }

  v15 = v7();
  v11 = v15;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_90:

LABEL_94:
    *a1 = 1;
    return result;
  }

LABEL_89:
  if (!sub_1C1F52994())
  {
    goto LABEL_90;
  }

LABEL_14:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1C6911DB0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_96;
    }

    v16 = *(v11 + 32);
  }

  v2 = (*(*v16 + 232))(v17);
  v11 = v18;

  v19 = HIBYTE(v11) & 0xF;
  v20 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v21 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
LABEL_92:

    goto LABEL_93;
  }

  if ((v11 & 0x1000000000000000) == 0)
  {
    if ((v11 & 0x2000000000000000) != 0)
    {
      v45[0] = v2;
      v45[1] = v11 & 0xFFFFFFFFFFFFFFLL;
      if (v2 == 43)
      {
        if (v19)
        {
          if (--v19)
          {
            v23 = 0;
            v33 = v45 + 1;
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                break;
              }

              v35 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                break;
              }

              v23 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                break;
              }

              ++v33;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_101:
        __break(1u);
        return result;
      }

      if (v2 != 45)
      {
        if (v19)
        {
          v23 = 0;
          v38 = v45;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            ++v38;
            if (!--v19)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }

      if (v19)
      {
        if (--v19)
        {
          v23 = 0;
          v27 = v45 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v19)
            {
              goto LABEL_78;
            }
          }
        }

        goto LABEL_77;
      }
    }

    else
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        result = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1C1F52AE4();
      }

      v22 = *result;
      if (v22 == 43)
      {
        if (v20 >= 1)
        {
          v19 = v20 - 1;
          if (v20 != 1)
          {
            v23 = 0;
            if (result)
            {
              v30 = (result + 1);
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_77;
                }

                v32 = 10 * v23;
                if ((v23 * 10) >> 64 != (10 * v23) >> 63)
                {
                  goto LABEL_77;
                }

                v23 = v32 + v31;
                if (__OFADD__(v32, v31))
                {
                  goto LABEL_77;
                }

                ++v30;
                if (!--v19)
                {
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_69;
          }

          goto LABEL_77;
        }

        goto LABEL_100;
      }

      if (v22 != 45)
      {
        if (v20)
        {
          v23 = 0;
          if (result)
          {
            while (1)
            {
              v36 = *result - 48;
              if (v36 > 9)
              {
                goto LABEL_77;
              }

              v37 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_77;
              }

              v23 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                goto LABEL_77;
              }

              ++result;
              if (!--v20)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_77:
        v23 = 0;
        LOBYTE(v19) = 1;
        goto LABEL_78;
      }

      if (v20 >= 1)
      {
        v19 = v20 - 1;
        if (v20 != 1)
        {
          v23 = 0;
          if (result)
          {
            v24 = (result + 1);
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                goto LABEL_77;
              }

              v26 = 10 * v23;
              if ((v23 * 10) >> 64 != (10 * v23) >> 63)
              {
                goto LABEL_77;
              }

              v23 = v26 - v25;
              if (__OFSUB__(v26, v25))
              {
                goto LABEL_77;
              }

              ++v24;
              if (!--v19)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_69:
          LOBYTE(v19) = 0;
LABEL_78:
          v46[0] = v19;
          v41 = v19;
          goto LABEL_79;
        }

        goto LABEL_77;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_96:
  v46[0] = 0;
  v23 = sub_1C1EAC9B8(v2, v11, 10);
  v41 = v44;
LABEL_79:

  if (v41)
  {
    goto LABEL_93;
  }

  CalculateExpression.Base.init(rawValue:)(v23);

  v42 = v45[0];
  if (LOBYTE(v45[0]) == 3)
  {
    v42 = 1;
  }

  *a1 = v42;
  return result;
}

uint64_t sub_1C1E9D27C(char *a1)
{
  v2 = v1;
  v3 = *a1;
  (*(*v1 + 416))(&v22);
  v4 = v22;
  LOBYTE(v19) = v3;
  sub_1C1E903DC();
  result = sub_1C1F52414();
  if (result)
  {
    return result;
  }

  LOBYTE(v22) = *(v1 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v19) = 1;
  result = static CalculateExpression.TokenType.== infix(_:_:)(&v22, &v19);
  if ((result & 1) == 0)
  {
    return result;
  }

  (*(*v1 + 232))();
  LOBYTE(v22) = v4;
  result = CalculateExpression.Base.rawValue.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = sub_1C1F52474();

  v8 = strtoull((v7 + 32), 0, v6);

  v22 = v8;
  LOBYTE(v19) = v3;
  CalculateExpression.Base.rawValue.getter();
  sub_1C1EB05DC();
  v9 = sub_1C1F525C4();
  (*(*v2 + 240))(v9);
  v21 = v3;
  v20 = 1;
  sub_1C1EB0630();
  sub_1C1F52684();
  sub_1C1F52684();
  if (v22 == v19)
  {
    return (*(*v2 + 312))(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C1F563C0;
  LOBYTE(v19) = v3;
  v22 = CalculateExpression.Base.rawValue.getter();
  v11 = sub_1C1F52C34();
  v13 = v12;
  LOBYTE(v22) = 1;
  type metadata accessor for CalculateExpression.RichToken(0);
  v14 = swift_allocObject();
  CalculateExpression.RichToken.init(text:type:isImplicit:)(v11, v13, &v22, 0);
  *(v10 + 32) = v14;
  type metadata accessor for CalculateExpression.RichExpression();
  swift_allocObject();
  v15 = sub_1C1EB0254(v10, 0);
  v16 = (*(*v2 + 312))(v15);
  v17 = *(*v2 + 304);
  v18 = v17(v16);
  if (v18)
  {
    LOBYTE(v22) = 2;
    (*(*v18 + 280))(&v22);
  }

  result = v17(v18);
  if (result)
  {
    (*(*result + 304))(0);
  }

  return result;
}