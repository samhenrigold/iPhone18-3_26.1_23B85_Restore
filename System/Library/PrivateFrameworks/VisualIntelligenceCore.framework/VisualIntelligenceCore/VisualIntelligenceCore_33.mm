void sub_1D8A71538(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A71610(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for VisualUnderstandingContainer(319);
      if (v3 <= 0x3F)
      {
        sub_1D8A71668(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8A71610(uint64_t a1)
{
  if (!qword_1EE0E3A10)
  {
    sub_1D8B13AD0();
    v1 = sub_1D8B15DB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3A10);
    }
  }
}

void sub_1D8A71668(uint64_t a1)
{
  if (!qword_1EE0E3A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68540, &unk_1D8B398B0);
    v1 = sub_1D8B16470();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E3A00);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenericParseDataResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericParseDataResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8A71820()
{
  result = qword_1ECA68580;
  if (!qword_1ECA68580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68580);
  }

  return result;
}

unint64_t sub_1D8A71878()
{
  result = qword_1ECA68588;
  if (!qword_1ECA68588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68588);
  }

  return result;
}

unint64_t sub_1D8A718D0()
{
  result = qword_1ECA68590;
  if (!qword_1ECA68590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68590);
  }

  return result;
}

uint64_t sub_1D8A71924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746365746564 && a2 == 0xEB0000000064496ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E69616D6F64 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B403F0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6261686372616573 && a2 == 0xEA0000000000656CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001D8B480A0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B40200 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B401E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B480D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

void *TextDetectorResult.semanticDataDetectors(for:referenceDate:applyDefaultFiltering:)(void *a1, char *a2, int a3)
{
  LODWORD(v4) = a3;
  v96 = a1;
  v6 = sub_1D8B15240();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v98 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D8B15270();
  v89 = *(v95 - 8);
  v9 = MEMORY[0x1EEE9AC00](v95);
  v97 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v94 = v84 - v11;
  v12 = type metadata accessor for TextDetectorResult(0);
  v13 = v3 + *(v12 + 48);
  v84[0] = *v13;
  v14 = v84[0];
  if (!v84[0])
  {
    v22 = v12;
    v23 = objc_opt_self();
    v24 = *(v3 + *(v22 + 44));
    sub_1D8A9FD8C(v24);
    v25 = sub_1D8B15940();

    v26 = [v23 scanString_];

    sub_1D881F764(0, &qword_1EE0E3768, 0x1E6999A80);
    v27 = sub_1D8B15CF0();

    v28 = v27;
    sub_1D8A9FD8C(v24);

    goto LABEL_58;
  }

  LODWORD(v88) = v4;
  v90 = a2;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  v17 = v84[0];
  v18 = [v17 text];
  if (v18)
  {
    v19 = v18;
    sub_1D8B15970();

    sub_1D8B16180();
    if (v20)
    {

      v21 = 0;
    }

    else
    {
      v29 = sub_1D8B15BB0();
      v31 = v30;
      v33 = v32;
      v14 = v34;

      MEMORY[0x1DA71EF10](v29, v31, v33, v14);
      v21 = v35;
    }
  }

  else
  {
    v21 = 0;
  }

  v36 = [v17 contentsWithTypes_];
  sub_1D881F764(0, &qword_1EE0E3770, 0x1E69D9DE0);
  v37 = sub_1D8B15CF0();

  v28 = sub_1D8A72674(v37);

  if (!v28)
  {

    goto LABEL_87;
  }

  if (v28 >> 62)
  {
    v38 = sub_1D8B16610();
  }

  else
  {
    v38 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x1E69E7CC0];
  v86 = v21;
  v87 = v17;
  if (v38)
  {
    v99 = MEMORY[0x1E69E7CC0];
    sub_1D8B16810();
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_91;
    }

    v40 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1DA71FC20](v40, v28);
      }

      else
      {
        v41 = *(v28 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = [v41 ddResult];

      sub_1D8B167E0();
      sub_1D8B16820();
      sub_1D8B16830();
      sub_1D8B167F0();
    }

    while (v38 != v40);

    v28 = v99;
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v99 = v39;
  v14 = (v28 & 0xFFFFFFFFFFFFFF8);
  if (v28 >> 62)
  {
    v44 = sub_1D8B16610();
  }

  else
  {
    v44 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v15 + v16;
  v45 = __OFADD__(v15, v16);
  if (!v44)
  {
    v93 = MEMORY[0x1E69E7CC0];
    goto LABEL_56;
  }

  v46 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  do
  {
    v47 = v46;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1DA71FC20](v47, v28);
      }

      else
      {
        if (v47 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v50 = *(v28 + 8 * v47 + 32);
      }

      v51 = v50;
      v46 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v52 = [v50 range];
      if (v45)
      {
        goto LABEL_79;
      }

      v54 = &v52[v53];
      if (__OFADD__(v52, v53))
      {
        goto LABEL_80;
      }

      v55 = v4 >= v54 ? &v52[v53] : (v15 + v16);
      if (v15 >= v52 && v15 < v54)
      {
        v48 = __OFSUB__(v55, v15);
        v49 = &v55[-v15];
        if (v48)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v52 < v15 || v52 >= v4)
        {
          goto LABEL_31;
        }

        v48 = __OFSUB__(v55, v52);
        v49 = v55 - v52;
        if (v48)
        {
          goto LABEL_84;
        }
      }

      if (v49 >= 1)
      {
        break;
      }

LABEL_31:

      ++v47;
      if (v46 == v44)
      {
        goto LABEL_56;
      }
    }

    MEMORY[0x1DA71F1A0]();
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D8B15D20();
    }

    sub_1D8B15D70();
    v93 = v99;
  }

  while (v46 != v44);
LABEL_56:

  if (!v86)
  {
    v17 = v87;

    goto LABEL_87;
  }

  v14 = v84[0];
  v28 = v93;
  LOBYTE(v4) = v88;
  v17 = v87;
  if (!v93)
  {
LABEL_87:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_58:
  if (v28 >> 62)
  {
    goto LABEL_85;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

    v17 = v14;
    goto LABEL_87;
  }

  while (1)
  {
    v93 = v28;
    if (v4)
    {
      sub_1D8B15320();
      v28 = sub_1D8B15310();
    }

    else
    {
    }

    if (!v96[2])
    {
      break;
    }

    v99 = MEMORY[0x1E69E7CC0];
    if (v28 >> 62)
    {
LABEL_91:
      v57 = sub_1D8B16610();
      if (!v57)
      {
LABEL_92:

        v14 = v84[0];
        break;
      }
    }

    else
    {
      v57 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v57)
      {
        goto LABEL_92;
      }
    }

    v58 = 0;
    LOBYTE(v4) = v28 & 0xF8;
    v59 = (v89 + 8);
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x1DA71FC20](v58, v28);
      }

      else
      {
        if (v58 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v60 = *(v28 + 8 * v58 + 32);
      }

      v61 = v60;
      v62 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      v14 = v94;
      MEMORY[0x1DA71F740]();
      v63 = sub_1D8B15260();
      (*v59)(v14, v95);
      if (v63)
      {
        sub_1D8B167E0();
        v14 = *(v99 + 16);
        sub_1D8B16820();
        sub_1D8B16830();
        sub_1D8B167F0();
      }

      else
      {
      }

      ++v58;
      if (v62 == v57)
      {
        goto LABEL_92;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    if (!sub_1D8B16610())
    {
      goto LABEL_86;
    }
  }

  if (v14)
  {
    v65 = sub_1D8B16240();
  }

  else
  {
    v65 = 0;
  }

  v99 = sub_1D8A73880(v66);
  sub_1D8A72B00(&v99);

  v67 = v99;
  if (v99 < 0 || (v99 & 0x4000000000000000) != 0)
  {
    goto LABEL_118;
  }

  for (i = *(v99 + 16); i; i = sub_1D8B16610())
  {
    v69 = 0;
    v90 = (v67 & 0xC000000000000001);
    v85 = (v89 + 8);
    v86 = (v89 + 16);
    v84[1] = (v92 + 32);
    v64 = MEMORY[0x1E69E7CC0];
    v88 = v67;
    v89 = v65;
    v87 = i;
    v70 = v97;
    while (1)
    {
      if (v90)
      {
        v71 = MEMORY[0x1DA71FC20](v69, v67);
      }

      else
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_117;
        }

        v71 = *(v67 + 8 * v69 + 32);
      }

      v72 = v71;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      v96 = (v69 + 1);
      MEMORY[0x1DA71F740]();
      v73 = [v72 value];
      sub_1D8B15970();

      if (v65 && (v74 = [v72 range], *(v65 + 16)) && (sub_1D87F01A0(v74, v75), (v76 & 1) != 0))
      {
        v77 = v64;
      }

      else
      {
        v77 = v64;
      }

      v78 = v95;
      (*v86)(v94, v70, v95);

      sub_1D8B15210();
      (*v85)(v70, v78);
      v64 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1D87C84B0(0, v77[2] + 1, 1, v77);
      }

      v79 = v87;
      v67 = v88;
      v80 = v96;
      v82 = v64[2];
      v81 = v64[3];
      v65 = v89;
      if (v82 >= v81 >> 1)
      {
        v64 = sub_1D87C84B0((v81 > 1), v82 + 1, 1, v64);
      }

      v64[2] = v82 + 1;
      (*(v92 + 32))(v64 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v82, v98, v91);
      ++v69;
      if (v80 == v79)
      {
        goto LABEL_120;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    ;
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_120:

  return v64;
}

uint64_t sub_1D8A72674(unint64_t a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D8B16810();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA71FC20](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D8B167E0();
      sub_1D8B16820();
      sub_1D8B16830();
      sub_1D8B167F0();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D8B16610();
    sub_1D8B16810();
  }

  return v8;
}

uint64_t sub_1D8A727DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D87F3F54(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1D87D3E4C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D87F3F54((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t (*sub_1D8A728F0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
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
    return sub_1D8A73914;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8A72970(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
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
    return sub_1D8A729F0;
  }

  __break(1u);
  return result;
}

void (*sub_1D8A729F8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8A72A78;
  }

  __break(1u);
  return result;
}

void (*sub_1D8A72A80(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA71FC20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8A73918;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8A72B00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D885D3A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D8A72B7C(v6);
  return sub_1D8B167F0();
}

void sub_1D8A72B7C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D881F764(0, &qword_1EE0E3768, 0x1E6999A80);
        v6 = sub_1D8B15D60();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D8A72DD0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D8A72C90(0, v2, 1, a1);
  }
}

void sub_1D8A72C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = sub_1D8B16280();
      if (v12 == sub_1D8B16280())
      {
        v13 = [v10 range];
        v14 = [v11 range];

        if (v13 >= v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v15 = sub_1D8B16280();
        v16 = sub_1D8B16280();

        if (v15 >= v16)
        {
          goto LABEL_4;
        }
      }

      if (!v5)
      {
        break;
      }

      v17 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v17;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v21 + 8;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D8A72DD0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_135:
      v10 = sub_1D885CC68(v10);
    }

    v106 = *(v10 + 2);
    if (v106 >= 2)
    {
      while (*v6)
      {
        v107 = v10;
        v10 = (v106 - 1);
        v108 = *&v107[16 * v106];
        v109 = *&v107[16 * v106 + 24];
        sub_1D8A7352C((*v6 + 8 * v108), (*v6 + 8 * *&v107[16 * v106 + 16]), (*v6 + 8 * v109), v9);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v109 < v108)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1D885CC68(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_129;
        }

        v110 = &v107[16 * v106];
        *v110 = v108;
        *(v110 + 1) = v109;
        sub_1D885CBDC(v106 - 1);
        v10 = v107;
        v106 = *(v107 + 2);
        if (v106 <= 1)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_139;
    }

LABEL_113:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v11 = v9;
  v9 = (v9 + 1);
  if (v9 < v8)
  {
    v114 = v10;
    v116 = v5;
    v12 = *v6;
    v13 = v11;
    v14 = *(*v6 + 8 * v11);
    v15 = *(*v6 + 8 * v9);
    v16 = v14;
    v17 = sub_1D8B16280();
    if (v17 == sub_1D8B16280())
    {
      v18 = [v15 range];
      v19 = [v16 range];

      v20 = v18 < v19;
    }

    else
    {
      v21 = sub_1D8B16280();
      v22 = sub_1D8B16280();

      v20 = v21 < v22;
    }

    v23 = v20;
    v11 = v13;
    v9 = (v13 + 2);
    if (v13 + 2 >= v8)
    {
      v6 = a3;
      v10 = v114;
      v5 = v116;
      if (v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = (v12 + 8 * v13 + 16);
      do
      {
        v27 = *(v24 - 1);
        v28 = *v24;
        v29 = v27;
        v30 = sub_1D8B16280();
        if (v30 == sub_1D8B16280())
        {
          v31 = [v28 range];
          v32 = [v29 range];

          if (((v23 ^ (v31 >= v32)) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v25 = sub_1D8B16280();
          v26 = sub_1D8B16280();

          if (v23 == v25 >= v26)
          {
            goto LABEL_21;
          }
        }

        ++v24;
        v9 = (v9 + 1);
      }

      while (v8 != v9);
      v9 = v8;
LABEL_21:
      v6 = a3;
      v11 = v13;
      v10 = v114;
      v5 = v116;
      if (v23)
      {
LABEL_22:
        if (v9 < v11)
        {
          goto LABEL_132;
        }

        v33 = v9;
        if (v11 < v9)
        {
          v34 = 8 * v9 - 8;
          v35 = 8 * v11;
          v36 = v11;
          v7 = a1;
          do
          {
            v33 = (v33 - 1);
            if (v36 != v33)
            {
              v38 = *v6;
              if (!*v6)
              {
                goto LABEL_138;
              }

              v37 = *(v38 + v35);
              *(v38 + v35) = *(v38 + v34);
              *(v38 + v34) = v37;
            }

            v36 = (v36 + 1);
            v34 -= 8;
            v35 += 8;
          }

          while (v36 < v33);
          goto LABEL_31;
        }
      }
    }

    v7 = a1;
  }

LABEL_31:
  v39 = v6[1];
  if (v9 >= v39)
  {
    goto LABEL_52;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_131;
  }

  if (v9 - v11 >= a4)
  {
    goto LABEL_52;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_133;
  }

  if (v11 + a4 >= v39)
  {
    v40 = v6[1];
  }

  else
  {
    v40 = (v11 + a4);
  }

  if (v40 < v11)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v9 == v40)
  {
    goto LABEL_52;
  }

  v41 = v9;
  v115 = v10;
  v117 = v5;
  v42 = *v6;
  v43 = *v6 + 8 * v9 - 8;
  v111 = v11;
  v44 = v11 - v9;
  v45 = v41;
  v119 = v40;
LABEL_42:
  v120 = v45;
  v46 = *(v42 + 8 * v45);
  v47 = v44;
  v48 = v43;
  while (1)
  {
    v49 = *v48;
    v50 = v46;
    v51 = v49;
    v52 = sub_1D8B16280();
    if (v52 == sub_1D8B16280())
    {
      v53 = [v50 range];
      v54 = [v51 range];

      if (v53 >= v54)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v55 = sub_1D8B16280();
      v56 = sub_1D8B16280();

      if (v55 >= v56)
      {
        goto LABEL_41;
      }
    }

    if (!v42)
    {
      break;
    }

    v57 = *v48;
    v46 = *(v48 + 8);
    *v48 = v46;
    *(v48 + 8) = v57;
    v48 -= 8;
    if (__CFADD__(v47++, 1))
    {
LABEL_41:
      v45 = (v120 + 1);
      v43 += 8;
      --v44;
      if ((v120 + 1) != v119)
      {
        goto LABEL_42;
      }

      v9 = v119;
      v10 = v115;
      v5 = v117;
      v6 = a3;
      v7 = a1;
      v11 = v111;
LABEL_52:
      if (v9 < v11)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D87C7C5C(0, *(v10 + 2) + 1, 1, v10);
      }

      v60 = *(v10 + 2);
      v59 = *(v10 + 3);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        v10 = sub_1D87C7C5C((v59 > 1), v60 + 1, 1, v10);
      }

      *(v10 + 2) = v61;
      v62 = &v10[16 * v60];
      *(v62 + 4) = v11;
      *(v62 + 5) = v9;
      v63 = *v7;
      if (!*v7)
      {
        goto LABEL_140;
      }

      if (v60)
      {
        while (1)
        {
          v64 = v61 - 1;
          if (v61 >= 4)
          {
            break;
          }

          if (v61 == 3)
          {
            v65 = *(v10 + 4);
            v66 = *(v10 + 5);
            v75 = __OFSUB__(v66, v65);
            v67 = v66 - v65;
            v68 = v75;
LABEL_72:
            if (v68)
            {
              goto LABEL_119;
            }

            v81 = &v10[16 * v61];
            v83 = *v81;
            v82 = *(v81 + 1);
            v84 = __OFSUB__(v82, v83);
            v85 = v82 - v83;
            v86 = v84;
            if (v84)
            {
              goto LABEL_122;
            }

            v87 = &v10[16 * v64 + 32];
            v89 = *v87;
            v88 = *(v87 + 1);
            v75 = __OFSUB__(v88, v89);
            v90 = v88 - v89;
            if (v75)
            {
              goto LABEL_125;
            }

            if (__OFADD__(v85, v90))
            {
              goto LABEL_126;
            }

            if (v85 + v90 >= v67)
            {
              if (v67 < v90)
              {
                v64 = v61 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          v91 = &v10[16 * v61];
          v93 = *v91;
          v92 = *(v91 + 1);
          v75 = __OFSUB__(v92, v93);
          v85 = v92 - v93;
          v86 = v75;
LABEL_86:
          if (v86)
          {
            goto LABEL_121;
          }

          v94 = &v10[16 * v64];
          v96 = *(v94 + 4);
          v95 = *(v94 + 5);
          v75 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v75)
          {
            goto LABEL_124;
          }

          if (v97 < v85)
          {
            goto LABEL_3;
          }

LABEL_93:
          v102 = v64 - 1;
          if (v64 - 1 >= v61)
          {
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
            goto LABEL_134;
          }

          if (!*v6)
          {
            goto LABEL_137;
          }

          v103 = *&v10[16 * v102 + 32];
          v104 = *&v10[16 * v64 + 40];
          sub_1D8A7352C((*v6 + 8 * v103), (*v6 + 8 * *&v10[16 * v64 + 32]), (*v6 + 8 * v104), v63);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v104 < v103)
          {
            goto LABEL_115;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D885CC68(v10);
          }

          if (v102 >= *(v10 + 2))
          {
            goto LABEL_116;
          }

          v105 = &v10[16 * v102];
          *(v105 + 4) = v103;
          *(v105 + 5) = v104;
          sub_1D885CBDC(v64);
          v61 = *(v10 + 2);
          if (v61 <= 1)
          {
            goto LABEL_3;
          }
        }

        v69 = &v10[16 * v61 + 32];
        v70 = *(v69 - 64);
        v71 = *(v69 - 56);
        v75 = __OFSUB__(v71, v70);
        v72 = v71 - v70;
        if (v75)
        {
          goto LABEL_117;
        }

        v74 = *(v69 - 48);
        v73 = *(v69 - 40);
        v75 = __OFSUB__(v73, v74);
        v67 = v73 - v74;
        v68 = v75;
        if (v75)
        {
          goto LABEL_118;
        }

        v76 = &v10[16 * v61];
        v78 = *v76;
        v77 = *(v76 + 1);
        v75 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v75)
        {
          goto LABEL_120;
        }

        v75 = __OFADD__(v67, v79);
        v80 = v67 + v79;
        if (v75)
        {
          goto LABEL_123;
        }

        if (v80 >= v72)
        {
          v98 = &v10[16 * v64 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v75 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v75)
          {
            goto LABEL_127;
          }

          if (v67 < v101)
          {
            v64 = v61 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_72;
      }

LABEL_3:
      v8 = v6[1];
      v7 = a1;
      if (v9 >= v8)
      {
        goto LABEL_103;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t sub_1D8A7352C(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v27 = __dst;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 >= 8 && v27 > v6)
    {
LABEL_27:
      v41 = v27;
      v28 = v27 - 1;
      --v5;
      v29 = v14;
      v43 = v28;
      do
      {
        v30 = v4;
        v31 = *--v29;
        v32 = *v28;
        v33 = v31;
        v34 = v32;
        v35 = sub_1D8B16280();
        if (v35 == sub_1D8B16280())
        {
          v36 = [v33 range];
          v37 = [v34 range];

          if (v36 < v37)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v38 = sub_1D8B16280();
          v39 = sub_1D8B16280();

          if (v38 < v39)
          {
LABEL_35:
            v4 = v30;
            if (v5 + 1 != v41)
            {
              *v5 = *v43;
            }

            if (v14 <= v30 || (v27 = v43, v43 <= v6))
            {
              v27 = v43;
              goto LABEL_42;
            }

            goto LABEL_27;
          }
        }

        v4 = v30;
        if (v5 + 1 != v14)
        {
          *v5 = *v29;
        }

        --v5;
        v14 = v29;
        v28 = v43;
      }

      while (v29 > v30);
      v14 = v29;
      v27 = v41;
    }
  }

  else
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      v42 = v14;
      do
      {
        v16 = v15;
        v17 = v4;
        v18 = *v4;
        v19 = *v15;
        v20 = v18;
        v21 = sub_1D8B16280();
        if (v21 == sub_1D8B16280())
        {
          v22 = [v19 range];
          v23 = [v20 range];

          if (v22 >= v23)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v25 = sub_1D8B16280();
          v26 = sub_1D8B16280();

          if (v25 >= v26)
          {
LABEL_14:
            v24 = v17;
            v4 = v17 + 1;
            v15 = v16;
            if (v6 == v17)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v6 = *v24;
            goto LABEL_16;
          }
        }

        v24 = v16;
        v15 = v16 + 1;
        v4 = v17;
        if (v6 != v16)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v6;
        v14 = v42;
      }

      while (v4 < v42 && v15 < v5);
    }

    v27 = v6;
  }

LABEL_42:
  if (v27 != v4 || v27 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_1D8A73880(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1D8B16610();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D87F38E8(v3, 0);
  sub_1D8900C08((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8A7391C(uint64_t a1)
{
  v41 = sub_1D8B13240();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionRequest.Originator(0);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v30[1] = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D87F4C3C(0, v8, 0);
  v9 = v45;
  v10 = a1 + 56;
  result = sub_1D8B16580();
  v12 = result;
  v13 = 0;
  v36 = v3 + 16;
  v37 = v3;
  v34 = a1;
  v35 = v3 + 8;
  v31 = a1 + 64;
  v32 = v8;
  v33 = a1 + 56;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_21;
    }

    v42 = v13;
    v43 = *(a1 + 36);
    v44 = v12 >> 6;
    v15 = v7;
    v16 = v37;
    v17 = *(a1 + 48) + *(v37 + 72) * v12;
    v18 = *(v37 + 16);
    v19 = v40;
    v20 = v41;
    v18(v40, v17, v41);
    v18(v15, v19, v20);
    swift_storeEnumTagMultiPayload();
    (*(v16 + 8))(v19, v20);
    v45 = v9;
    v22 = *(v9 + 16);
    v21 = *(v9 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D87F4C3C((v21 > 1), v22 + 1, 1);
      v9 = v45;
    }

    *(v9 + 16) = v22 + 1;
    result = sub_1D8A91FE8(v15, v9 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, type metadata accessor for DetectionRequest.Originator);
    a1 = v34;
    v14 = 1 << *(v34 + 32);
    if (v12 >= v14)
    {
      goto LABEL_22;
    }

    v10 = v33;
    v23 = *(v33 + 8 * v44);
    if ((v23 & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    if (v43 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v7 = v15;
    v24 = v23 & (-2 << (v12 & 0x3F));
    if (v24)
    {
      v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v44 << 6;
      v26 = v44 + 1;
      v27 = (v31 + 8 * v44);
      while (v26 < (v14 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D87977B4(v12, v43, 0);
          v14 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1D87977B4(v12, v43, 0);
    }

LABEL_4:
    v13 = v42 + 1;
    v12 = v14;
    if (v42 + 1 == v32)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D8A73CF4@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - v16;
  v18 = sub_1D8B13240();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v21, v5, v18);
  v22 = *(v5 + v12[9]);
  v23 = (v5 + v12[10]);
  v24 = v23[1];
  v58 = *v23;
  v59 = v24;
  v25 = v23[3];
  v60 = v23[2];
  v61 = v25;
  sub_1D8A5D1D8(v62, a2, a3, a4, a5);
  v26 = *(v5 + v12[11]);
  v27 = *(v5 + v12[12]);
  v28 = *(v6 + v12[13]);
  v29 = *(v6 + v12[14]);
  v30 = *(v6 + v12[15]);
  v31 = *(v30 + 16);
  if (v31)
  {
    v48 = v21;
    v49 = v19;
    v50 = v18;
    v51 = v12;
    v52 = a1;
    *&v58 = MEMORY[0x1E69E7CC0];
    v46 = v26;

    v47 = v27;

    v56 = v31;
    result = sub_1D87F49CC(0, v31, 0);
    v33 = 0;
    v34 = v58;
    v55 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v54 = v30 + v55;
    v35 = &qword_1ECA67750;
    v53 = v30;
    while (v33 < *(v30 + 16))
    {
      v36 = *(v13 + 72);
      v37 = v35;
      v38 = v57;
      sub_1D87A0E38(v54 + v36 * v33, v57, v37, &unk_1D8B1E0C0);
      sub_1D8A73CF4(v17, a2, a3, a4, a5);
      v39 = v38;
      v35 = v37;
      sub_1D87A14E4(v39, v37, &unk_1D8B1E0C0);
      *&v58 = v34;
      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D87F49CC((v40 > 1), v41 + 1, 1);
        v35 = v37;
        v34 = v58;
      }

      ++v33;
      *(v34 + 16) = v41 + 1;
      result = sub_1D881F6FC(v17, v34 + v55 + v41 * v36, v35, &unk_1D8B1E0C0);
      v30 = v53;
      if (v56 == v33)
      {
        a1 = v52;
        v12 = v51;
        v18 = v50;
        v19 = v49;
        v21 = v48;
        v27 = v47;
        v42 = v46;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v42 = v26;

    v34 = MEMORY[0x1E69E7CC0];
LABEL_9:
    result = (*(v19 + 32))(a1, v21, v18);
    *(a1 + v12[9]) = v22;
    v43 = (a1 + v12[10]);
    v44 = v62[1];
    *v43 = v62[0];
    v43[1] = v44;
    v45 = v62[3];
    v43[2] = v62[2];
    v43[3] = v45;
    *(a1 + v12[11]) = v42;
    *(a1 + v12[12]) = v27;
    *(a1 + v12[13]) = v28;
    *(a1 + v12[14]) = v29;
    *(a1 + v12[15]) = v34;
  }

  return result;
}

double ParseDetectorResult.modifyWithPrediction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 80);
  v6 = sub_1D8B13240();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for ParseDetectorResult(0);
  v8 = *(v2 + v7[5]);
  v9 = *(v2 + v7[8]);
  v10 = v7[11];
  v30 = *(v2 + v7[10]);
  v11 = *(v2 + v10 + 8);
  v31 = *(v2 + v10);
  v12 = v7[13];
  v13 = (v2 + v7[12]);
  v14 = v13[1];
  v28 = *v13;
  v29 = *(v2 + v7[7]);
  v15 = type metadata accessor for VisualUnderstandingContainer(0);
  v16 = (a2 + v12);
  sub_1D87A0E38(v2 + v12 + *(v15 + 20), a2 + v12 + *(v15 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
  v17 = (v2 + v12 + *(v15 + 24));
  v18 = *v17;
  v19 = v17[1];
  v20 = v7[14];
  *(a2 + v7[15]) = 5;
  *(a2 + v7[5]) = v8;
  v21 = (a2 + v7[6]);
  v22 = *(a1 + 64);
  v21[2] = *(a1 + 48);
  v21[3] = v22;
  v23 = *(a1 + 32);
  *v21 = *(a1 + 16);
  v21[1] = v23;
  *(a2 + v7[7]) = v29;
  *(a2 + v7[8]) = v9;
  *(a2 + v7[9]) = v5;
  *(a2 + v7[10]) = v30;
  v24 = (a2 + v7[11]);
  *v24 = v31;
  v24[1] = v11;
  v25 = (a2 + v7[12]);
  *v25 = v28;
  v25[1] = v14;
  *v16 = v5;
  v26 = (v16 + *(v15 + 24));
  *v26 = v18;
  v26[1] = v19;
  *(a2 + v20) = *(v2 + v7[14]);

  sub_1D8883D78(v18, v19);

  return result;
}

void GroundedParseDetectorResult.modifyWithPrediction(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v70 = type metadata accessor for DetectionRequest.Originator(0);
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v58 - v16;
  v18 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v18);
  v20 = *(a1 + 32);
  v74 = *(a1 + 16);
  v75 = v20;
  v21 = *(a1 + 64);
  v76 = *(a1 + 48);
  v77 = v21;
  v22 = *(a1 + 80);
  v62 = v23;
  v24 = *(v23 + 16);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v25;
  v24();
  v26 = *(v2 + v6[5]);
  v27 = v6[8];
  v63 = *(v2 + v6[7]);
  v28 = *(v2 + v27);
  v29 = v6[11];
  v60 = *(v2 + v6[10]);
  v30 = *(v2 + v29 + 8);
  v61 = *(v2 + v29);
  v65 = v30;
  v31 = (v2 + v6[12]);
  v32 = v2 + v6[13];
  v33 = v31[1];
  v59 = *v31;
  v34 = type metadata accessor for VisualUnderstandingContainer(0);
  v35 = v32 + *(v34 + 20);
  v71 = v17;
  sub_1D87A0E38(v35, v17, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v64 = v34;
  v36 = (v32 + *(v34 + 24));
  v37 = v12;
  v39 = *v36;
  v38 = v36[1];
  v67 = v39;
  v68 = v38;
  sub_1D8A92F54(v2 + v6[14], v14, type metadata accessor for DetectionRequest.Originator);
  v40 = v70;
  (*(v4 + 56))(v14, 0, 1, v70);
  *&v8[v6[16]] = 5;
  sub_1D87A0E38(v14, v12, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v4 + 48))(v12, 1, v40) == 1)
  {

    sub_1D8883D78(v67, v68);
    sub_1D87A14E4(v12, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v70 = v6[15];
    v41 = v63;

    v42 = v65;

    v44 = v67;
    v43 = v68;
    sub_1D8883D78(v67, v68);
    sub_1D87A14E4(v14, &qword_1ECA68598, &qword_1D8B3E590);
    v45 = v37;
    v46 = v72;
    sub_1D8A91FE8(v45, v72, type metadata accessor for DetectionRequest.Originator);
    (*(v62 + 32))(v8, v66, v69);
    *&v8[v6[5]] = v26;
    v47 = &v8[v6[6]];
    v48 = v75;
    *v47 = v74;
    *(v47 + 1) = v48;
    v49 = v77;
    *(v47 + 2) = v76;
    *(v47 + 3) = v49;
    *&v8[v6[7]] = v41;
    *&v8[v6[8]] = v28;
    *&v8[v6[9]] = v22;
    v8[v6[10]] = v60;
    v50 = &v8[v6[11]];
    *v50 = v61;
    *(v50 + 1) = v42;
    v51 = &v8[v6[12]];
    *v51 = v59;
    *(v51 + 1) = v33;
    v52 = &v8[v6[13]];
    *v52 = v22;
    v53 = v64;
    sub_1D881F6FC(v71, &v52[*(v64 + 20)], &qword_1ECA635E8, &unk_1D8B1F5C0);
    v54 = &v52[*(v53 + 24)];
    *v54 = v44;
    v54[1] = v43;
    sub_1D8A91FE8(v46, &v8[v6[14]], type metadata accessor for DetectionRequest.Originator);
    *&v8[v70] = 0;
    v55 = v73;
    sub_1D8A91FE8(v8, v73, type metadata accessor for GroundedParseDetectorResult);
    v56 = v6[15];
    v57 = *(v2 + v56);

    *(v55 + v56) = v57;
  }
}

uint64_t GroundedParseEmbeddingsResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = type metadata accessor for DetectionRequest.Originator(0);
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 32);
  v39 = *(a1 + 16);
  v40 = v21;
  v22 = *(a1 + 64);
  v41 = *(a1 + 48);
  v42 = v22;
  v23 = *(a1 + 80);
  (*(v18 + 16))(v20, v3, v17);
  v24 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v25 = *(v3 + v24[5]);
  v26 = *(v3 + v24[8]);
  v27 = v3 + v24[10];
  v37 = v16;
  sub_1D87A0E38(v27, v16, &qword_1ECA635E8, &unk_1D8B1F5C0);
  sub_1D8A92F54(v3 + v24[11], v13, type metadata accessor for DetectionRequest.Originator);
  v28 = v36;
  (*(v6 + 56))(v13, 0, 1, v36);
  v29 = (a2 + v24[7]);
  *v29 = 0x6E69646465626D65;
  v29[1] = 0xEA00000000007367;
  sub_1D87A0E38(v13, v11, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v6 + 48))(v11, 1, v28) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    sub_1D87A14E4(v13, &qword_1ECA68598, &qword_1D8B3E590);
    v30 = v38;
    sub_1D8A91FE8(v11, v38, type metadata accessor for DetectionRequest.Originator);
    (*(v18 + 32))(a2, v20, v17);
    *(a2 + v24[5]) = v25;
    v31 = (a2 + v24[6]);
    v32 = v40;
    *v31 = v39;
    v31[1] = v32;
    v33 = v42;
    v31[2] = v41;
    v31[3] = v33;
    *(a2 + v24[8]) = v26;
    *(a2 + v24[9]) = v23;
    sub_1D881F6FC(v37, a2 + v24[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    return sub_1D8A91FE8(v30, a2 + v24[11], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

uint64_t GroundedParseClassificationsResult.modifyWithPrediction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = type metadata accessor for DetectionRequest.Originator(0);
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 32);
  v39 = *(a1 + 16);
  v40 = v21;
  v22 = *(a1 + 64);
  v41 = *(a1 + 48);
  v42 = v22;
  v23 = *(a1 + 80);
  (*(v18 + 16))(v20, v3, v17);
  v24 = type metadata accessor for GroundedParseClassificationsResult(0);
  v25 = *(v3 + v24[5]);
  v26 = *(v3 + v24[8]);
  v27 = v3 + v24[10];
  v37 = v16;
  sub_1D87A0E38(v27, v16, &qword_1ECA635E8, &unk_1D8B1F5C0);
  sub_1D8A92F54(v3 + v24[11], v13, type metadata accessor for DetectionRequest.Originator);
  v28 = v36;
  (*(v6 + 56))(v13, 0, 1, v36);
  v29 = (a2 + v24[7]);
  *v29 = 0x6966697373616C63;
  v29[1] = 0xEF736E6F69746163;
  sub_1D87A0E38(v13, v11, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v6 + 48))(v11, 1, v28) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    sub_1D87A14E4(v13, &qword_1ECA68598, &qword_1D8B3E590);
    v30 = v38;
    sub_1D8A91FE8(v11, v38, type metadata accessor for DetectionRequest.Originator);
    (*(v18 + 32))(a2, v20, v17);
    *(a2 + v24[5]) = v25;
    v31 = (a2 + v24[6]);
    v32 = v40;
    *v31 = v39;
    v31[1] = v32;
    v33 = v42;
    v31[2] = v41;
    v31[3] = v33;
    *(a2 + v24[8]) = v26;
    *(a2 + v24[9]) = v23;
    sub_1D881F6FC(v37, a2 + v24[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    return sub_1D8A91FE8(v30, a2 + v24[11], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

double ParseDetectorResult.modifyWithRotation(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = sub_1D8B13240();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for ParseDetectorResult(0);
  v8 = v7[6];
  v9 = *(v2 + v7[5]);
  v10 = *(v2 + v8 + 16);
  v38 = *(v2 + v8);
  v39 = v10;
  v11 = *(v2 + v8 + 48);
  v40 = *(v2 + v8 + 32);
  v41 = v11;
  v36 = *(v2 + v7[8]);
  v37 = v5;
  sub_1D8A5A9D8(&v37, &v36, v42);
  v12 = *(v2 + v7[7]);
  v13 = *(v3 + v7[9]);
  v35 = *(v3 + v7[10]);
  v14 = (v3 + v7[11]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (v3 + v7[12]);
  v18 = v7[13];
  v19 = v17[1];
  v33 = *v17;
  v34 = v15;
  v20 = type metadata accessor for VisualUnderstandingContainer(0);
  v21 = (a2 + v18);
  sub_1D87A0E38(v3 + v18 + *(v20 + 20), a2 + v18 + *(v20 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
  v22 = (v3 + v18 + *(v20 + 24));
  v23 = *v22;
  v24 = v22[1];
  v25 = v7[14];
  *(a2 + v7[15]) = 5;
  *(a2 + v7[5]) = v9;
  v26 = (a2 + v7[6]);
  v27 = v42[3];
  v26[2] = v42[2];
  v26[3] = v27;
  v28 = v42[1];
  *v26 = v42[0];
  v26[1] = v28;
  *(a2 + v7[7]) = v12;
  *(a2 + v7[8]) = v5;
  *(a2 + v7[9]) = v13;
  *(a2 + v7[10]) = v35;
  v29 = (a2 + v7[11]);
  *v29 = v34;
  v29[1] = v16;
  v30 = (a2 + v7[12]);
  *v30 = v33;
  v30[1] = v19;
  *v21 = v13;
  v31 = (v21 + *(v20 + 24));
  *v31 = v23;
  v31[1] = v24;
  *(a2 + v25) = *(v3 + v7[14]);

  sub_1D8883D78(v23, v24);

  return result;
}

void GroundedParseDetectorResult.modifyWithRotation(_:)(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v69 = type metadata accessor for DetectionRequest.Originator(0);
  v62 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - v15;
  v17 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v17);
  v19 = *a1;
  v64 = v20;
  v21 = *(v20 + 16);
  v65 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v22;
  v21();
  v23 = v6[6];
  v24 = *(v3 + v6[5]);
  v25 = *(v3 + v23 + 16);
  v75 = *(v3 + v23);
  v76 = v25;
  v26 = *(v3 + v23 + 48);
  v77 = *(v3 + v23 + 32);
  v78 = v26;
  v74 = v19;
  v73 = *(v3 + v6[8]);
  sub_1D8A5A9D8(&v74, &v73, v79);
  v63 = *(v3 + v6[7]);
  v27 = *(v3 + v6[9]);
  v61 = *(v3 + v6[10]);
  v28 = v6[12];
  v29 = (v3 + v6[11]);
  v30 = v29[1];
  v60 = *v29;
  v31 = v3 + v6[13];
  v32 = *(v3 + v28 + 8);
  v59 = *(v3 + v28);
  v33 = type metadata accessor for VisualUnderstandingContainer(0);
  v34 = v31 + *(v33 + 20);
  v70 = v16;
  sub_1D87A0E38(v34, v16, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v35 = (v31 + *(v33 + 24));
  v36 = v58;
  v38 = *v35;
  v37 = v35[1];
  v66 = v38;
  v67 = v37;
  sub_1D8A92F54(v3 + v6[14], v13, type metadata accessor for DetectionRequest.Originator);
  v39 = v62;
  v40 = v69;
  (*(v62 + 56))(v13, 0, 1, v69);
  *&v8[v6[16]] = 5;
  sub_1D87A0E38(v13, v36, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v39 + 48))(v36, 1, v40) == 1)
  {

    sub_1D8883D78(v66, v67);
    sub_1D87A14E4(v36, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v69 = v6[15];
    v41 = v63;

    v57 = v30;
    v62 = v32;
    v42 = v66;
    v43 = v67;
    sub_1D8883D78(v66, v67);
    sub_1D87A14E4(v13, &qword_1ECA68598, &qword_1D8B3E590);
    v44 = v71;
    sub_1D8A91FE8(v36, v71, type metadata accessor for DetectionRequest.Originator);
    (*(v64 + 32))(v8, v65, v68);
    *&v8[v6[5]] = v24;
    v45 = &v8[v6[6]];
    v46 = v79[1];
    *v45 = v79[0];
    *(v45 + 1) = v46;
    v47 = v79[3];
    *(v45 + 2) = v79[2];
    *(v45 + 3) = v47;
    *&v8[v6[7]] = v41;
    *&v8[v6[8]] = v19;
    *&v8[v6[9]] = v27;
    v8[v6[10]] = v61;
    v48 = &v8[v6[11]];
    v49 = v57;
    *v48 = v60;
    *(v48 + 1) = v49;
    v50 = &v8[v6[12]];
    v51 = v62;
    *v50 = v59;
    *(v50 + 1) = v51;
    v52 = &v8[v6[13]];
    *v52 = v27;
    sub_1D881F6FC(v70, &v52[*(v33 + 20)], &qword_1ECA635E8, &unk_1D8B1F5C0);
    v53 = &v52[*(v33 + 24)];
    *v53 = v42;
    v53[1] = v43;
    sub_1D8A91FE8(v44, &v8[v6[14]], type metadata accessor for DetectionRequest.Originator);
    *&v8[v69] = 0;
    v54 = v72;
    sub_1D8A91FE8(v8, v72, type metadata accessor for GroundedParseDetectorResult);
    v55 = v6[15];
    v56 = *(v3 + v55);

    *(v54 + v55) = v56;
  }
}

uint64_t GroundedParseEmbeddingsResult.modifyWithRotation(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = type metadata accessor for DetectionRequest.Originator(0);
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *(v18 + 16);
  v38 = v23;
  v22(v20, v3);
  v24 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v25 = v24[6];
  v26 = *(v3 + v24[5]);
  v27 = *(v3 + v25 + 16);
  v44 = *(v3 + v25);
  v45 = v27;
  v28 = *(v3 + v25 + 48);
  v46 = *(v3 + v25 + 32);
  v47 = v28;
  v43 = v21;
  v42 = *(v3 + v24[8]);
  sub_1D8A5A9D8(&v43, &v42, v48);
  v29 = *(v3 + v24[9]);
  v30 = v3 + v24[10];
  v40 = v16;
  sub_1D87A0E38(v30, v16, &qword_1ECA635E8, &unk_1D8B1F5C0);
  sub_1D8A92F54(v3 + v24[11], v13, type metadata accessor for DetectionRequest.Originator);
  v31 = v39;
  (*(v6 + 56))(v13, 0, 1, v39);
  v32 = (a2 + v24[7]);
  *v32 = 0x6E69646465626D65;
  v32[1] = 0xEA00000000007367;
  sub_1D87A0E38(v13, v11, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v6 + 48))(v11, 1, v31) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    sub_1D87A14E4(v13, &qword_1ECA68598, &qword_1D8B3E590);
    v33 = v41;
    sub_1D8A91FE8(v11, v41, type metadata accessor for DetectionRequest.Originator);
    (*(v18 + 32))(a2, v20, v38);
    *(a2 + v24[5]) = v26;
    v34 = (a2 + v24[6]);
    v35 = v48[1];
    *v34 = v48[0];
    v34[1] = v35;
    v36 = v48[3];
    v34[2] = v48[2];
    v34[3] = v36;
    *(a2 + v24[8]) = v21;
    *(a2 + v24[9]) = v29;
    sub_1D881F6FC(v40, a2 + v24[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    return sub_1D8A91FE8(v33, a2 + v24[11], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

uint64_t GroundedParseClassificationsResult.modifyWithRotation(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = type metadata accessor for DetectionRequest.Originator(0);
  v6 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_1D8B13240();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = *(v18 + 16);
  v38 = v23;
  v22(v20, v3);
  v24 = type metadata accessor for GroundedParseClassificationsResult(0);
  v25 = v24[6];
  v26 = *(v3 + v24[5]);
  v27 = *(v3 + v25 + 16);
  v44 = *(v3 + v25);
  v45 = v27;
  v28 = *(v3 + v25 + 48);
  v46 = *(v3 + v25 + 32);
  v47 = v28;
  v43 = v21;
  v42 = *(v3 + v24[8]);
  sub_1D8A5A9D8(&v43, &v42, v48);
  v29 = *(v3 + v24[9]);
  v30 = v3 + v24[10];
  v40 = v16;
  sub_1D87A0E38(v30, v16, &qword_1ECA635E8, &unk_1D8B1F5C0);
  sub_1D8A92F54(v3 + v24[11], v13, type metadata accessor for DetectionRequest.Originator);
  v31 = v39;
  (*(v6 + 56))(v13, 0, 1, v39);
  v32 = (a2 + v24[7]);
  *v32 = 0x6966697373616C63;
  v32[1] = 0xEF736E6F69746163;
  sub_1D87A0E38(v13, v11, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v6 + 48))(v11, 1, v31) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    sub_1D87A14E4(v13, &qword_1ECA68598, &qword_1D8B3E590);
    v33 = v41;
    sub_1D8A91FE8(v11, v41, type metadata accessor for DetectionRequest.Originator);
    (*(v18 + 32))(a2, v20, v38);
    *(a2 + v24[5]) = v26;
    v34 = (a2 + v24[6]);
    v35 = v48[1];
    *v34 = v48[0];
    v34[1] = v35;
    v36 = v48[3];
    v34[2] = v48[2];
    v34[3] = v36;
    *(a2 + v24[8]) = v21;
    *(a2 + v24[9]) = v29;
    sub_1D881F6FC(v40, a2 + v24[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    return sub_1D8A91FE8(v33, a2 + v24[11], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

uint64_t sub_1D8A764E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150, &unk_1D8B39B90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D8B13830();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v1 + *(v13 + 20), v8, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA635E8, &unk_1D8B1F5C0);
    v14 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v15 = (v1 + *(v13 + 24));
    v16 = v15[1];
    if (v16 >> 60 == 15)
    {
      (*(v10 + 8))(v12, v9);
      v14 = 1;
    }

    else
    {
      v17 = *v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67160, &qword_1D8B32138);
      v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D8B1AB90;
      (*(v10 + 16))(v19 + v18, v12, v9);
      v20 = sub_1D8B13740();
      (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
      sub_1D87A1544(v17, v16);
      sub_1D8B138C0();
      (*(v10 + 8))(v12, v9);
      v14 = 0;
    }
  }

  v21 = sub_1D8B138B0();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t VisualIntelligenceLookupResult.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VisualIntelligenceLookupResult.systemImage.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

double VisualIntelligenceLookupResult.searchSections.getter()
{
  type metadata accessor for VisualIntelligenceLookupResult(0);

  return result;
}

uint64_t VisualIntelligenceLookupResult.init(domain:title:shortDescription:knowledgeGraphID:shortAbstraction:systemImage:thumbnailAspectRatio:thumbnailUrl:webUrl:properties:searchSections:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v24 = type metadata accessor for VisualIntelligenceLookupResult(0);
  *(a9 + v24[15]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a10;
  sub_1D881F6FC(a14, a9 + v24[11], &qword_1ECA630C0, &qword_1D8B24530);
  result = sub_1D881F6FC(a15, a9 + v24[12], &qword_1ECA630C0, &qword_1D8B24530);
  *(a9 + v24[13]) = a16;
  *(a9 + v24[14]) = a17;
  return result;
}

unint64_t sub_1D8A769E8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E69616D6F64;
    if (a1)
    {
      v6 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v1 = 0x6C7255626577;
    v2 = 0x69747265706F7270;
    v3 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v4 = 0x6D496D6574737973;
    if (a1 != 6)
    {
      v3 = 0x69616E626D756874;
    }

    if (a1 != 5)
    {
      v4 = v3;
    }

    if (a1 <= 7u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1D8A76BB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8A952D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D8A76BE8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D8A769E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D8A76C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A952D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A76C58(uint64_t a1)
{
  v2 = sub_1D8A92C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A76C94(uint64_t a1)
{
  v2 = sub_1D8A92C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VisualIntelligenceLookupResult.encode(to:)(void *a1)
{
  v3 = v1;
  v36 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA685A0, &unk_1D8B39B58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A92C00();
  sub_1D8B16DD0();
  LOBYTE(v35) = 0;
  sub_1D8B16A90();
  if (v2 || (LOBYTE(v35) = 1, sub_1D8B16A90(), v35 = v3[2], LOBYTE(v34) = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63660, &qword_1D8B1F620), sub_1D8A92D08(&qword_1ECA685B0, MEMORY[0x1E69E6160], MEMORY[0x1E69E7C70]), sub_1D8B16AE0(), v35 = v3[3], LOBYTE(v34) = 3, sub_1D8B16AE0(), v35 = v3[4], LOBYTE(v34) = 4, sub_1D8B16AE0(), LOBYTE(v35) = 5, sub_1D8B16A90(), LOBYTE(v35) = 6, sub_1D8B16AC0(), v9 = type metadata accessor for VisualIntelligenceLookupResult(0), LOBYTE(v35) = 7, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530), sub_1D8A92C54(), sub_1D8B16AE0(), LOBYTE(v35) = 8, sub_1D8B16AE0(), *&v35 = *(v3 + v9[13]), LOBYTE(v34) = 9, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA685C0, &qword_1D8B39B68), sub_1D8A92E70(&qword_1ECA685C8, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]), sub_1D8B16AE0(), (*(v3 + v9[15]) & 1) != 0))
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v31 = *(v3 + v9[14]);
    if (v31 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D8B16610())
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
LABEL_21:
        *&v35 = v10;
        LOBYTE(v34) = 10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA685D0, &qword_1D8B39B70);
        sub_1D8A92EDC(&qword_1ECA685D8, sub_1D89980D8, MEMORY[0x1E69E6300]);
        sub_1D8B16AE0();
        (*(v6 + 8))(v8, v5);

        return;
      }

      *&v35 = MEMORY[0x1E69E7CC0];
      v11 = i;
      sub_1D87F4E50(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        break;
      }

      v12 = v35;
      v13 = 0;
      v28 = objc_opt_self();
      v29 = v31 & 0xC000000000000001;
      v27 = v31 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v15 = v12;
        if (v29)
        {
          v16 = MEMORY[0x1DA71FC20](v13, v31);
        }

        else
        {
          if (v13 >= *(v27 + 16))
          {
            goto LABEL_23;
          }

          v16 = *(v31 + 8 * v13 + 32);
        }

        v17 = v16;
        v34 = 0;
        v18 = [v28 archivedDataWithRootObject:v16 requiringSecureCoding:1 error:{&v34, v27}];
        v19 = v34;
        if (!v18)
        {
          v26 = v19;
          sub_1D8B12EB0();

          swift_willThrow();
          (*(v6 + 8))(v8, v5);

          return;
        }

        v20 = sub_1D8B13050();
        v32 = v21;
        v33 = v20;

        v12 = v15;
        *&v35 = v15;
        v22 = *(v15 + 16);
        v23 = *(v12 + 24);
        if (v22 >= v23 >> 1)
        {
          sub_1D87F4E50((v23 > 1), v22 + 1, 1);
          v12 = v35;
        }

        *(v12 + 16) = v22 + 1;
        v24 = v12 + 16 * v22;
        v25 = v32;
        *(v24 + 32) = v33;
        *(v24 + 40) = v25;
        ++v13;
        if (v14 == i)
        {
          v10 = v12;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    __break(1u);
  }
}

void VisualIntelligenceLookupResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v3 = MEMORY[0x1EEE9AC00](v52);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA685E0, &qword_1D8B39B78);
  v53 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v14 + *(v12 + 60)) = 0;
  v15 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D8A92C00();
  v16 = v54;
  sub_1D8B16DB0();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
    return;
  }

  v50 = v11;
  v54 = v14;
  LOBYTE(v56) = 0;
  v17 = sub_1D8B169C0();
  v18 = v54;
  *v54 = v17;
  v18[1] = v19;
  LOBYTE(v56) = 1;
  v18[2] = sub_1D8B169C0();
  v18[3] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63660, &qword_1D8B1F620);
  v57 = 2;
  v48 = sub_1D8A92D08(&qword_1ECA685E8, MEMORY[0x1E69E6190], MEMORY[0x1E69E7C88]);
  v49 = 0;
  sub_1D8B16A10();
  *(v18 + 2) = v56;
  v57 = 3;
  sub_1D8B16A10();
  *(v18 + 3) = v56;
  v57 = 4;
  sub_1D8B16A10();
  *(v18 + 4) = v56;
  LOBYTE(v56) = 5;
  v48 = 0;
  v18[10] = sub_1D8B169C0();
  v18[11] = v21;
  LOBYTE(v56) = 6;
  sub_1D8B169F0();
  v49 = 0;
  *(v18 + 24) = v22;
  LOBYTE(v56) = 7;
  sub_1D8A92D74();
  v23 = v49;
  sub_1D8B16A10();
  v49 = v23;
  if (v23)
  {
    (*(v53 + 8))(v10, v8);
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_6:
    v27 = v48;
    v28 = v50;
    goto LABEL_7;
  }

  sub_1D881F6FC(v7, v18 + v50[11], &qword_1ECA630C0, &qword_1D8B24530);
  LOBYTE(v56) = 8;
  v30 = v49;
  sub_1D8B16A10();
  v49 = v30;
  if (v30)
  {
    (*(v53 + 8))(v10, v8);
    v25 = 0;
    v26 = 0;
    v24 = 1;
    goto LABEL_6;
  }

  sub_1D881F6FC(v5, v54 + v50[12], &qword_1ECA630C0, &qword_1D8B24530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA685C0, &qword_1D8B39B68);
  v57 = 9;
  sub_1D8A92E70(&qword_1ECA685F8, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v52 = v8;
  v31 = v10;
  v32 = v49;
  sub_1D8B16A10();
  v49 = v32;
  if (v32)
  {
    (*(v53 + 8))(v10, v52);
    v26 = 0;
    v24 = 1;
    v25 = 1;
LABEL_35:
    v28 = v50;
    v27 = v48;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v55);

    if (!v27)
    {
    }

    v29 = v54;

    if (v24)
    {
      sub_1D87A14E4(v29 + v28[11], &qword_1ECA630C0, &qword_1D8B24530);
      if (v25)
      {
LABEL_11:
        sub_1D87A14E4(v29 + v28[12], &qword_1ECA630C0, &qword_1D8B24530);
        if ((v26 & 1) == 0)
        {
          return;
        }

LABEL_15:

        return;
      }
    }

    else if (v25)
    {
      goto LABEL_11;
    }

    if (!v26)
    {
      return;
    }

    goto LABEL_15;
  }

  *(v54 + v50[13]) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA685D0, &qword_1D8B39B70);
  v57 = 10;
  sub_1D8A92EDC(&qword_1ECA68600, sub_1D899812C, MEMORY[0x1E69E6330]);
  v33 = v49;
  sub_1D8B16A10();
  v49 = v33;
  if (v33)
  {
    (*(v53 + 8))(v10, v52);
LABEL_34:
    v24 = 1;
    v25 = 1;
    v26 = 1;
    goto LABEL_35;
  }

  v34 = 0;
  v35 = v56;
  v47 = v56 + 40;
  v46 = MEMORY[0x1E69E7CC0];
  *&v56 = MEMORY[0x1E69E7CC0];
  v36 = *(v35 + 16);
LABEL_24:
  v37 = (v47 + 16 * v34);
  while (1)
  {
    if (v36 == v34)
    {
      (*(v53 + 8))(v31, v52);

      v44 = v51;
      v45 = v54;
      *(v54 + v50[14]) = v46;
      sub_1D8A92F54(v45, v44, type metadata accessor for VisualIntelligenceLookupResult);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1D8A93010(v45, type metadata accessor for VisualIntelligenceLookupResult);
      return;
    }

    if (v34 >= *(v35 + 16))
    {
      break;
    }

    v38 = *(v37 - 1);
    v39 = *v37;
    sub_1D881F764(0, &qword_1ECA666B8, 0x1E696ACD0);
    sub_1D881F764(0, &qword_1EE0E3760, 0x1E69CA390);
    sub_1D87A1544(v38, v39);
    v40 = v49;
    v41 = sub_1D8B16290();
    v49 = v40;
    if (v40)
    {
      (*(v53 + 8))(v31, v52);

      sub_1D87A1598(v38, v39);

      goto LABEL_34;
    }

    v42 = v41;
    ++v34;
    v37 += 2;
    v43 = sub_1D87A1598(v38, v39);
    if (v42)
    {
      MEMORY[0x1DA71F1A0](v43);
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
      v46 = v56;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t VisualIntelligenceLookupResult.resultForFeedback()@<X0>(uint64_t a1@<X8>)
{
  sub_1D8A92F54(v1, a1, type metadata accessor for VisualIntelligenceLookupResult);
  result = type metadata accessor for VisualIntelligenceLookupResult(0);
  *(a1 + *(result + 60)) = 1;
  return result;
}

double VisualIntelligenceLookupResult.hash(into:)(uint64_t a1)
{
  v3 = sub_1D8B13000();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  sub_1D8B15A60();
  sub_1D8B15A60();
  if (v1[5])
  {
    sub_1D8B16D40();
    sub_1D8B15A60();
    if (v1[7])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D8B16D40();
    if (v1[9])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D8B16D40();
  if (!v1[7])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D8B16D40();
  sub_1D8B15A60();
  if (v1[9])
  {
LABEL_4:
    sub_1D8B16D40();
    sub_1D8B15A60();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D8B16D40();
LABEL_8:
  sub_1D8B15A60();
  sub_1D8B16D60();
  v12 = type metadata accessor for VisualIntelligenceLookupResult(0);
  sub_1D87A0E38(v1 + v12[11], v11, &qword_1ECA630C0, &qword_1D8B24530);
  v13 = *(v4 + 48);
  if (v13(v11, 1, v3) == 1)
  {
    v14 = v4;
    sub_1D8B16D40();
  }

  else
  {
    v15 = *(v4 + 32);
    v20 = v9;
    v16 = v21;
    v15(v21, v11, v3);
    sub_1D8B16D40();
    sub_1D8A92E28(&qword_1ECA64C80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D8B157A0();
    v14 = v4;
    v17 = v16;
    v9 = v20;
    (*(v4 + 8))(v17, v3);
  }

  sub_1D87A0E38(v1 + v12[12], v9, &qword_1ECA630C0, &qword_1D8B24530);
  if (v13(v9, 1, v3) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    v18 = v21;
    (*(v14 + 32))(v21, v9, v3);
    sub_1D8B16D40();
    sub_1D8A92E28(&qword_1ECA64C80, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D8B157A0();
    (*(v14 + 8))(v18, v3);
  }

  sub_1D893A734(a1, *(v1 + v12[13]));
  sub_1D87D1DA8(a1, *(v1 + v12[14]));
  sub_1D8B16D40();
  return result;
}

uint64_t sub_1D8A781E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a4;
  v9 = sub_1D8B13BF0();
  v10 = *(v9 - 8);
  v89 = v9;
  v90 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68918, &unk_1D8B3AFF8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v76 - v13;
  v15 = sub_1D8B13C00();
  v81 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D8B13AD0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for VisualIntelligenceLookupResult(0);
  *(a5 + v21[15]) = 0;
  *(a5 + 80) = a1;
  *(a5 + 88) = a2;
  *(a5 + 16) = sub_1D8B13C40();
  *(a5 + 24) = v22;
  sub_1D8B13C30();
  v23 = sub_1D8B13A00();
  v25 = v24;
  v26 = v20;
  v27 = v17;
  v28 = v15;
  v29 = v81;
  (*(v18 + 8))(v26, v27);
  *a5 = v23;
  *(a5 + 8) = v25;
  sub_1D8B13C50();
  if ((*(v29 + 48))(v14, 1, v15) == 1)
  {

    sub_1D87A14E4(v14, &qword_1ECA68918, &unk_1D8B3AFF8);
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 96) = 1065353216;
    v30 = v21[11];
    v31 = sub_1D8B13000();
    v32 = *(*(v31 - 8) + 56);
    v32(a5 + v30, 1, 1, v31);
    v32(a5 + v21[12], 1, 1, v31);
    v33 = MEMORY[0x1E69E7CC0];
    *(a5 + v21[13]) = sub_1D893F3EC(MEMORY[0x1E69E7CC0]);
    v34 = sub_1D8B13C60();
    result = (*(*(v34 - 8) + 8))(a3, v34);
LABEL_35:
    *(a5 + v21[14]) = v33;
    return result;
  }

  v79 = v21;
  (*(v29 + 32))(v78, v14, v15);
  v36 = sub_1D8B13B80();
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    v36 = 0;
    v37 = 0;
  }

  *(a5 + 32) = v36;
  *(a5 + 40) = v37;
  v39 = sub_1D8B13B90();
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    v39 = 0;
    v40 = 0;
  }

  *(a5 + 64) = v39;
  *(a5 + 72) = v40;
  sub_1D8B13BC0();
  sub_1D8B13BB0();
  v43 = v42;
  v44 = 1.0;
  if (v43 > 0.0)
  {
    sub_1D8B13BB0();
  }

  *(a5 + 96) = v44;
  sub_1D8B13B60();
  v45 = sub_1D8B13B70();
  v76 = a3;
  if (v46)
  {
    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (!v47)
    {

      v45 = 0;
      v46 = 0;
    }
  }

  *(a5 + 48) = v45;
  *(a5 + 56) = v46;
  v77 = a5;
  v48 = sub_1D893F3EC(MEMORY[0x1E69E7CC0]);
  v49 = sub_1D8B13BA0();
  v87 = *(v49 + 16);
  if (!v87)
  {
LABEL_34:

    v75 = sub_1D8B13C60();
    (*(*(v75 - 8) + 8))(v76, v75);
    result = (*(v81 + 8))(v78, v28);
    v21 = v79;
    v33 = v80;
    a5 = v77;
    *(v77 + v79[13]) = v48;
    goto LABEL_35;
  }

  v50 = 0;
  v86 = v49 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
  v84 = v90 + 8;
  v85 = v90 + 16;
  v82 = v49;
  v83 = v28;
  while (v50 < *(v49 + 16))
  {
    v52 = v89;
    v53 = v90;
    v54 = v88;
    (*(v90 + 16))(v88, v86 + *(v90 + 72) * v50, v89);
    v55 = sub_1D8B13BD0();
    v57 = v56;
    v58 = sub_1D8B13BE0();
    v60 = v59;
    (*(v53 + 8))(v54, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v48;
    v63 = sub_1D87EF838(v55, v57);
    v64 = v48[2];
    v65 = (v62 & 1) == 0;
    v66 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      goto LABEL_37;
    }

    v67 = v62;
    if (v48[3] >= v66)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v62)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1D896C0DC();
        if (v67)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1D897669C(v66, isUniquelyReferenced_nonNull_native);
      v68 = sub_1D87EF838(v55, v57);
      if ((v67 & 1) != (v69 & 1))
      {
        goto LABEL_39;
      }

      v63 = v68;
      if (v67)
      {
LABEL_20:

        v48 = v91;
        v51 = (v91[7] + 16 * v63);
        *v51 = v58;
        v51[1] = v60;

        goto LABEL_21;
      }
    }

    v48 = v91;
    v91[(v63 >> 6) + 8] |= 1 << v63;
    v70 = (v48[6] + 16 * v63);
    *v70 = v55;
    v70[1] = v57;
    v71 = (v48[7] + 16 * v63);
    *v71 = v58;
    v71[1] = v60;
    v72 = v48[2];
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (v73)
    {
      goto LABEL_38;
    }

    v48[2] = v74;
LABEL_21:
    ++v50;
    v49 = v82;
    v28 = v83;
    if (v87 == v50)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A788D0()
{
  v1 = 0x6765526567616D69;
  if (*v0 != 1)
  {
    v1 = 0x64616F6C796170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_1D8A78938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A959F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A78960(uint64_t a1)
{
  v2 = sub_1D8A92FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A7899C(uint64_t a1)
{
  v2 = sub_1D8A92FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualUnderstandingContainer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68608, &qword_1D8B39B80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A92FBC();
  sub_1D8B16DD0();
  LOBYTE(v14) = 0;
  sub_1D8B16AB0();
  if (!v2)
  {
    v9 = type metadata accessor for VisualUnderstandingContainer(0);
    LOBYTE(v14) = 1;
    sub_1D8B13830();
    sub_1D8A92E28(&qword_1ECA68618, MEMORY[0x1E69E0330], MEMORY[0x1E69E0338]);
    sub_1D8B16A80();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 2;
    sub_1D8883D78(v14, v11);
    sub_1D89980D8();
    sub_1D8B16A80();
    sub_1D87C12A4(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

void VisualUnderstandingContainer.hash(into:)(uint64_t a1)
{
  v2 = sub_1D8B13830();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v9 = *v1;
  if (*v1 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1DA720250](*&v9);
  v10 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v1 + *(v10 + 20), v8, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D8B16D40();
    sub_1D8A92E28(&qword_1ECA635F0, MEMORY[0x1E69E0330], MEMORY[0x1E69E0340]);
    sub_1D8B157A0();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + *(v10 + 24) + 8) >> 60 == 15)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D8B16D40();
    sub_1D8B13060();
  }
}

uint64_t sub_1D8A78E60(uint64_t (*a1)(void *))
{
  sub_1D8B16D20();
  a1(v3);
  return sub_1D8B16D80();
}

uint64_t VisualUnderstandingContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68620, &qword_1D8B39B88);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for VisualUnderstandingContainer(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A92FBC();
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v20;
  LOBYTE(v22) = 0;
  sub_1D8B169E0();
  v14 = v12;
  *v12 = v15;
  sub_1D8B13830();
  LOBYTE(v22) = 1;
  sub_1D8A92E28(&qword_1ECA68628, MEMORY[0x1E69E0330], MEMORY[0x1E69E0350]);
  sub_1D8B169B0();
  sub_1D881F6FC(v6, v12 + *(v10 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
  v23 = 2;
  sub_1D899812C();
  v16 = v21;
  sub_1D8B169B0();
  (*(v13 + 8))(v9, v16);
  *(v14 + *(v10 + 24)) = v22;
  sub_1D8A92F54(v14, v19, type metadata accessor for VisualUnderstandingContainer);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A93010(v14, type metadata accessor for VisualUnderstandingContainer);
}

uint64_t sub_1D8A79254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D8B16D20();
  a3(v5);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A792B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8B16D20();
  a4(v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A792FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63268, &qword_1D8B1E828);
  v0 = sub_1D8B13AD0();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  sub_1D8B139A0();
  v4 = sub_1D87C522C(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t ParseDetectorResult.init(_:searchableVisualUnderstandingContainers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ParseDetectorResult(0);
  v7 = v6[14];
  *(a3 + v6[15]) = 5;
  v8 = sub_1D8B13240();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + v6[5]) = *(a1 + v6[5]);
  v9 = v6[6];
  v10 = (a1 + v9);
  v11 = (a3 + v9);
  v12 = v10[3];
  v11[2] = v10[2];
  v11[3] = v12;
  v13 = v10[1];
  *v11 = *v10;
  v11[1] = v13;
  *(a3 + v6[7]) = *(a1 + v6[7]);
  *(a3 + v6[8]) = *(a1 + v6[8]);
  *(a3 + v6[9]) = *(a1 + v6[9]);
  *(a3 + v6[10]) = *(a1 + v6[10]);
  v14 = v6[11];
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a3 + v14);
  *v17 = v15;
  v17[1] = v16;
  v18 = v6[12];
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a3 + v18);
  *v21 = v19;
  v21[1] = v20;
  sub_1D8A92F54(a1 + v6[13], a3 + v6[13], type metadata accessor for VisualUnderstandingContainer);

  result = sub_1D8A93010(a1, type metadata accessor for ParseDetectorResult);
  *(a3 + v7) = a2;
  return result;
}

uint64_t GroundedParseDetectorResult.init(_:originator:searchableVisualUnderstandingContainers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for DetectionRequest.Originator(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GroundedParseDetectorResult(0);
  *(a4 + v14[16]) = 5;
  sub_1D87A0E38(a2, v9, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D87A14E4(v9, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v15 = v14[15];
    sub_1D87A14E4(a2, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8A91FE8(v9, v13, type metadata accessor for DetectionRequest.Originator);
    v16 = sub_1D8B13240();
    (*(*(v16 - 8) + 16))(a4, a1, v16);
    *(a4 + v14[5]) = *(a1 + v14[5]);
    v17 = v14[6];
    v18 = (a1 + v17);
    v19 = (a4 + v17);
    v20 = v18[3];
    v19[2] = v18[2];
    v19[3] = v20;
    v21 = v18[1];
    *v19 = *v18;
    v19[1] = v21;
    *(a4 + v14[7]) = *(a1 + v14[7]);
    *(a4 + v14[8]) = *(a1 + v14[8]);
    *(a4 + v14[9]) = *(a1 + v14[9]);
    *(a4 + v14[10]) = *(a1 + v14[10]);
    v22 = v14[11];
    v23 = *(a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a4 + v22);
    *v25 = v23;
    v25[1] = v24;
    v26 = v14[12];
    v27 = *(a1 + v26);
    v28 = *(a1 + v26 + 8);
    v29 = (a4 + v26);
    *v29 = v27;
    v29[1] = v28;
    sub_1D8A92F54(a1 + v14[13], a4 + v14[13], type metadata accessor for VisualUnderstandingContainer);

    sub_1D8A93010(a1, type metadata accessor for GroundedParseDetectorResult);
    *(a4 + v15) = v32;
    return sub_1D8A91FE8(v13, a4 + v14[14], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

__n128 ParseDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ParseDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double ParseDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ParseDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t ParseDetectorResult.init(id:confidence:corners:domains:rotationAngle:timestamp:searchable:fallbackGlyphName:fallbackDisplayLabel:imageRegion:payload:searchableVisualUnderstandingContainers:originator:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1D87A14E4(a17, &qword_1ECA68598, &qword_1D8B3E590);
  v27 = *a4;
  v28 = type metadata accessor for ParseDetectorResult(0);
  v29 = v28[14];
  *(a9 + v28[15]) = 5;
  v30 = sub_1D8B13240();
  (*(*(v30 - 8) + 32))(a9, a1, v30);
  *(a9 + v28[5]) = a10;
  v31 = (a9 + v28[6]);
  v32 = a2[1];
  *v31 = *a2;
  v31[1] = v32;
  v33 = a2[3];
  v31[2] = a2[2];
  v31[3] = v33;
  *(a9 + v28[7]) = a3;
  *(a9 + v28[8]) = v27;
  *(a9 + v28[9]) = a11;
  *(a9 + v28[10]) = a5;
  v34 = (a9 + v28[11]);
  *v34 = a6;
  v34[1] = a7;
  v35 = (a9 + v28[12]);
  *v35 = a8;
  v35[1] = a12;
  v36 = (a9 + v28[13]);
  *v36 = a11;
  v37 = type metadata accessor for VisualUnderstandingContainer(0);
  result = sub_1D881F6FC(a13, v36 + *(v37 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
  v39 = (v36 + *(v37 + 24));
  *v39 = a14;
  v39[1] = a15;
  *(a9 + v29) = a16;
  return result;
}

unint64_t sub_1D8A79BB0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x7372656E726F63;
    v8 = 0x736E69616D6F64;
    if (a1 != 3)
    {
      v8 = 0x6E6F697461746F72;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E656469666E6F63;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6765526567616D69;
    if (a1 != 9)
    {
      v2 = 0x64616F6C796170;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6D617473656D6974;
    v4 = 0x6261686372616573;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8A79D48(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8B16BA0();
  }

  return v12 & 1;
}

uint64_t sub_1D8A79DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D8B16D20();
  a3(v5);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D8A79E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D8A79EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D8B16D20();
  a4(v6);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

unint64_t sub_1D8A79F50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8A95324(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D8A79F80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D8A79BB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D8A79FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A95324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A79FF0(uint64_t a1)
{
  v2 = sub_1D8A93070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A7A02C(uint64_t a1)
{
  v2 = sub_1D8A93070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ParseDetectorResult.hash(into:)(uint64_t a1)
{
  v3 = sub_1D8B13830();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v42 - v6;
  v7 = sub_1D8B13AD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v11 = type metadata accessor for ParseDetectorResult(0);
  sub_1D8B16D60();
  v12 = (v1 + *(v11 + 24));
  v13 = v12[2];
  v14 = v12[3];
  v15 = v12[4];
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  sub_1D8818B80(*v12, v12[1]);
  sub_1D8818B80(v13, v14);
  sub_1D8818B80(v15, v16);
  sub_1D8818B80(v17, v18);
  v44 = v11;
  v19 = *(v11 + 28);
  v47 = v1;
  v20 = *(v1 + v19);
  v21 = a1;
  MEMORY[0x1DA720210](*(v20 + 16));
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = v8 + 16;
    v24 = *(v8 + 16);
    v25 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v24(v10, v25, v7);
      sub_1D8A92E28(&qword_1ECA63170, MEMORY[0x1E69E03D8], MEMORY[0x1E69E03E8]);
      sub_1D8B157A0();
      (*v27)(v10, v7);
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  v28 = v44;
  v29 = v47;
  v30 = *(v47 + v44[8]);
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  v31 = v21;
  MEMORY[0x1DA720250](*&v30);
  v32 = *(v29 + v28[9]);
  if (v32 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1DA720250](*&v32);
  sub_1D8B16D40();
  sub_1D8B15A60();
  sub_1D8B15A60();
  v33 = (v29 + v28[13]);
  v34 = *v33;
  if (*v33 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1DA720250](*&v34);
  v35 = type metadata accessor for VisualUnderstandingContainer(0);
  v36 = v43;
  sub_1D87A0E38(v33 + *(v35 + 20), v43, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v38 = v45;
  v37 = v46;
  if ((*(v45 + 48))(v36, 1, v46) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    v39 = v42;
    (*(v38 + 32))(v42, v36, v37);
    sub_1D8B16D40();
    sub_1D8A92E28(&qword_1ECA635F0, MEMORY[0x1E69E0330], MEMORY[0x1E69E0340]);
    sub_1D8B157A0();
    (*(v38 + 8))(v39, v37);
  }

  if (*(v33 + *(v35 + 24) + 8) >> 60 == 15)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D8B16D40();
    sub_1D8B13060();
  }

  v40 = *(v29 + v28[14]);
  sub_1D8B16D40();
  if (v40)
  {
    sub_1D87CFAE4(v31, v40);
  }

  return MEMORY[0x1DA720210](*(v29 + v28[15]));
}

uint64_t sub_1D8A7A630@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int *a18)
{
  v41 = *a2;
  v42 = a2[1];
  v43 = a2[2];
  v44 = a2[3];
  v26 = *a4;
  sub_1D87A14E4(a17, &qword_1ECA68598, &qword_1D8B3E590);
  v27 = a18[14];
  *(a9 + a18[15]) = 5;
  v28 = sub_1D8B13240();
  (*(*(v28 - 8) + 32))(a9, a1, v28);
  v29 = a18[6];
  *(a9 + a18[5]) = a10;
  v30 = (a9 + v29);
  *v30 = v41;
  v30[1] = v42;
  v30[2] = v43;
  v30[3] = v44;
  v31 = a18[8];
  *(a9 + a18[7]) = a3;
  *(a9 + v31) = v26;
  v32 = a18[10];
  *(a9 + a18[9]) = a11;
  *(a9 + v32) = a5;
  v33 = a18[12];
  v34 = (a9 + a18[11]);
  *v34 = a6;
  v34[1] = a7;
  v35 = (a9 + v33);
  *v35 = a8;
  v35[1] = a12;
  v36 = (a9 + a18[13]);
  *v36 = a11;
  v37 = type metadata accessor for VisualUnderstandingContainer(0);
  result = sub_1D881F6FC(a13, v36 + *(v37 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
  v39 = (v36 + *(v37 + 24));
  *v39 = a14;
  v39[1] = a15;
  *(a9 + v27) = a16;
  return result;
}

void ParseDetectorResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v39 - v4;
  v42 = type metadata accessor for VisualUnderstandingContainer(0);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68630, &unk_1D8B39BA0);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v39 - v9;
  v11 = type metadata accessor for ParseDetectorResult(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14[*(v12 + 56)] = 0;
  *&v14[*(v12 + 60)] = 5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A93070();
  v48 = v10;
  v15 = v50;
  sub_1D8B16DB0();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v39 = v6;
    v16 = v46;
    v50 = a1;
    v41 = v14;
    v40 = v11;
    LOBYTE(v55) = 0;
    sub_1D8A92E28(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v17 = v47;
    sub_1D8B16A10();
    v18 = v41;
    (*(v45 + 32))(v41, v17, v7);
    LOBYTE(v55) = 1;
    sub_1D8B169F0();
    v19 = v40;
    *&v18[v40[5]] = v20;
    v54 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v21 = &v18[v19[6]];
    v22 = v56;
    *v21 = v55;
    *(v21 + 1) = v22;
    v23 = v58;
    *(v21 + 2) = v57;
    *(v21 + 3) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520, &qword_1D8B398A8);
    v53 = 3;
    sub_1D8A930C4();
    sub_1D8B16A10();
    *&v18[v19[7]] = v51;
    v53 = 4;
    sub_1D88913B8();
    sub_1D8B16A10();
    *&v18[v19[8]] = v51;
    LOBYTE(v51) = 5;
    sub_1D8B169E0();
    *&v18[v19[9]] = v24;
    LOBYTE(v51) = 6;
    v18[v19[10]] = sub_1D8B16980() & 1;
    LOBYTE(v51) = 7;
    v25 = sub_1D8B169C0();
    v26 = &v18[v19[11]];
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v51) = 8;
    v28 = sub_1D8B169C0();
    v29 = &v18[v19[12]];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v51) = 5;
    sub_1D8B169E0();
    v32 = v31;
    sub_1D8B13830();
    LOBYTE(v51) = 9;
    sub_1D8A92E28(&qword_1ECA68628, MEMORY[0x1E69E0330], MEMORY[0x1E69E0350]);
    sub_1D8B169B0();
    v53 = 10;
    sub_1D899812C();
    sub_1D8B169B0();
    (*(v16 + 8))(v48, v49);
    v33 = v51;
    v34 = v52;
    v35 = v39;
    *v39 = v32;
    v36 = v42;
    sub_1D881F6FC(v44, v35 + *(v42 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
    v37 = (v35 + *(v36 + 24));
    *v37 = v33;
    v37[1] = v34;
    v38 = v41;
    sub_1D8A91FE8(v35, &v41[v40[13]], type metadata accessor for VisualUnderstandingContainer);
    sub_1D8A92F54(v38, v43, type metadata accessor for ParseDetectorResult);
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_1D8A93010(v38, type metadata accessor for ParseDetectorResult);
  }
}

uint64_t ParseDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68640, &qword_1D8B39BB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A93070();
  sub_1D8B16DD0();
  LOBYTE(v20) = 0;
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for ParseDetectorResult(0);
    v24 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v20 = *v10;
    v21 = v11;
    v12 = v10[3];
    v22 = v10[2];
    v23 = v12;
    v19 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    *&v20 = *(v3 + v9[7]);
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520, &qword_1D8B398A8);
    sub_1D8A93178();
    sub_1D8B16AE0();
    *&v20 = *(v3 + v9[8]);
    v19 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v20) = 5;
    sub_1D8B16AB0();
    LOBYTE(v20) = 6;
    sub_1D8B16AA0();
    LOBYTE(v20) = 7;
    sub_1D8B16A90();
    LOBYTE(v20) = 8;
    sub_1D8B16A90();
    v13 = v3 + v9[13];
    v14 = type metadata accessor for VisualUnderstandingContainer(0);
    LOBYTE(v20) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
    sub_1D8A9322C();
    sub_1D8B16AE0();
    v15 = (v13 + *(v14 + 24));
    v16 = v15[1];
    *&v20 = *v15;
    *(&v20 + 1) = v16;
    v19 = 10;
    sub_1D8883D78(v20, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68650, &qword_1D8B39BB8);
    sub_1D8A932E0();
    sub_1D8B16AE0();
    sub_1D87C12A4(v20, *(&v20 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D8A7B4DC()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(sub_1D8B13800() + 16);

  v1 = *(sub_1D8B13800() + 16);

  if (v0 == v1)
  {
    __C = 0.0;
    v3 = sub_1D8B13800();
    v4 = sub_1D8B13800();
    v5 = *(sub_1D8B13800() + 16);

    vDSP_dotpr((v3 + 32), 1, (v4 + 32), 1, &__C, v5);

    v2 = COERCE_UNSIGNED_INT((__C + 1.0) * 0.5);
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v0 != v1) << 32);
}

__n128 GroundedParseDetectorResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroundedParseDetectorResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double sub_1D8A7B670(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

double GroundedParseDetectorResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for GroundedParseDetectorResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1D8A7B740(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 44));

  return v2;
}

uint64_t sub_1D8A7B7A0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150, &unk_1D8B39B90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1D8B13830();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + *(a1(0) + 52);
  v16 = type metadata accessor for VisualUnderstandingContainer(0);
  sub_1D87A0E38(v15 + *(v16 + 20), v10, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D87A14E4(v10, &qword_1ECA635E8, &unk_1D8B1F5C0);
    v17 = 1;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = (v15 + *(v16 + 24));
    v19 = v18[1];
    if (v19 >> 60 == 15)
    {
      (*(v12 + 8))(v14, v11);
      v17 = 1;
    }

    else
    {
      v20 = *v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67160, &qword_1D8B32138);
      v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D8B1AB90;
      (*(v12 + 16))(v22 + v21, v14, v11);
      v23 = sub_1D8B13740();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      sub_1D87A1544(v20, v19);
      sub_1D8B138C0();
      (*(v12 + 8))(v14, v11);
      v17 = 0;
    }
  }

  v24 = sub_1D8B138B0();
  return (*(*(v24 - 8) + 56))(a2, v17, 1, v24);
}

uint64_t GroundedParseDetectorResult.init(id:confidence:corners:domains:rotationAngle:timestamp:searchable:fallbackGlyphName:fallbackDisplayLabel:imageRegion:payload:searchableVisualUnderstandingContainers:originator:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  v49 = a5;
  v47 = a1;
  v48 = a3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v45 - v23;
  v25 = type metadata accessor for DetectionRequest.Originator(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[1];
  v53 = *a2;
  v54 = v29;
  v30 = a2[3];
  v55 = a2[2];
  v56 = v30;
  v31 = *a4;
  v32 = type metadata accessor for GroundedParseDetectorResult(0);
  *(a9 + v32[16]) = 5;
  sub_1D87A0E38(a17, v24, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1D87A14E4(v24, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v46 = a16;
    v33 = v32[15];
    sub_1D87A14E4(a17, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8A91FE8(v24, v28, type metadata accessor for DetectionRequest.Originator);
    v34 = sub_1D8B13240();
    (*(*(v34 - 8) + 32))(a9, v47, v34);
    *(a9 + v32[5]) = a10;
    v35 = (a9 + v32[6]);
    v36 = v54;
    *v35 = v53;
    v35[1] = v36;
    v37 = v56;
    v35[2] = v55;
    v35[3] = v37;
    *(a9 + v32[7]) = v48;
    *(a9 + v32[8]) = v31;
    *(a9 + v32[9]) = a11;
    *(a9 + v32[10]) = v49 & 1;
    v38 = (a9 + v32[11]);
    v39 = v51;
    *v38 = v50;
    v38[1] = v39;
    v40 = (a9 + v32[12]);
    *v40 = v52;
    v40[1] = a12;
    v41 = (a9 + v32[13]);
    *v41 = a11;
    v42 = type metadata accessor for VisualUnderstandingContainer(0);
    sub_1D881F6FC(a13, v41 + *(v42 + 20), &qword_1ECA635E8, &unk_1D8B1F5C0);
    v43 = (v41 + *(v42 + 24));
    *v43 = a14;
    v43[1] = a15;
    result = sub_1D8A91FE8(v28, a9 + v32[14], type metadata accessor for DetectionRequest.Originator);
    *(a9 + v33) = v46;
  }

  return result;
}

unint64_t sub_1D8A7BE70(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 25705;
    v6 = 0x7372656E726F63;
    v7 = 0x736E69616D6F64;
    if (a1 != 3)
    {
      v7 = 0x6E6F697461746F72;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6E656469666E6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 == 9)
    {
      v1 = 0x74616E696769726FLL;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x6D617473656D6974;
    v3 = 0x6261686372616573;
    if (a1 != 6)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1D8A7C048@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8A95370(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D8A7C078@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D8A7BE70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D8A7C0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A95370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A7C0E8(uint64_t a1)
{
  v2 = sub_1D8A93364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A7C124(uint64_t a1)
{
  v2 = sub_1D8A93364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A7C178(uint64_t (*a1)(void))
{
  v3 = sub_1D8B13AD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(a1(0) + 28));
  if (!*(v7 + 16))
  {
    return 0x6E776F6E6B6E75;
  }

  (*(v4 + 16))(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
  v8 = sub_1D8B13A00();
  (*(v4 + 8))(v6, v3);
  return v8;
}

void GroundedParseDetectorResult.modifyWithOriginator(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v74 = a2;
  v71 = type metadata accessor for DetectionRequest.Originator(0);
  v69 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v16);
  v63 = v18;
  v19 = *(v18 + 16);
  v64 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v20;
  v19();
  v21 = *(v2 + v4[5]);
  v22 = (v2 + v4[6]);
  v23 = v22[3];
  v77 = v22[2];
  v78 = v23;
  v24 = v22[1];
  v75 = *v22;
  v76 = v24;
  v25 = *(v2 + v4[7]);
  v26 = *(v2 + v4[8]);
  v27 = *(v2 + v4[9]);
  v62 = *(v2 + v4[10]);
  v28 = v4[12];
  v29 = (v2 + v4[11]);
  v30 = v29[1];
  v60 = *v29;
  v31 = *(v2 + v28 + 8);
  v61 = *(v2 + v28);
  v65 = v31;
  v32 = v2 + v4[13];
  v33 = type metadata accessor for VisualUnderstandingContainer(0);
  v34 = v32 + *(v33 + 20);
  v72 = v15;
  v35 = v15;
  v36 = v10;
  sub_1D87A0E38(v34, v35, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v37 = (v32 + *(v33 + 24));
  v39 = *v37;
  v38 = v37[1];
  v66 = v39;
  v67 = v38;
  sub_1D8A92F54(v70, v12, type metadata accessor for DetectionRequest.Originator);
  v40 = v69;
  v41 = v71;
  (*(v69 + 56))(v12, 0, 1, v71);
  *&v6[v4[16]] = 5;
  sub_1D87A0E38(v12, v36, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v40 + 48))(v36, 1, v41) == 1)
  {

    sub_1D8883D78(v66, v67);
    sub_1D87A14E4(v36, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v71 = v4[15];

    v70 = v30;
    v42 = v25;
    v43 = v65;

    v44 = v66;
    v45 = v67;
    sub_1D8883D78(v66, v67);
    sub_1D87A14E4(v12, &qword_1ECA68598, &qword_1D8B3E590);
    v46 = v36;
    v47 = v73;
    sub_1D8A91FE8(v46, v73, type metadata accessor for DetectionRequest.Originator);
    (*(v63 + 32))(v6, v64, v68);
    *&v6[v4[5]] = v21;
    v48 = &v6[v4[6]];
    v49 = v76;
    *v48 = v75;
    *(v48 + 1) = v49;
    v50 = v78;
    *(v48 + 2) = v77;
    *(v48 + 3) = v50;
    *&v6[v4[7]] = v42;
    *&v6[v4[8]] = v26;
    *&v6[v4[9]] = v27;
    v6[v4[10]] = v62;
    v51 = &v6[v4[11]];
    v52 = v70;
    *v51 = v60;
    *(v51 + 1) = v52;
    v53 = &v6[v4[12]];
    *v53 = v61;
    *(v53 + 1) = v43;
    v54 = &v6[v4[13]];
    *v54 = v27;
    sub_1D881F6FC(v72, &v54[*(v33 + 20)], &qword_1ECA635E8, &unk_1D8B1F5C0);
    v55 = &v54[*(v33 + 24)];
    *v55 = v44;
    v55[1] = v45;
    sub_1D8A91FE8(v47, &v6[v4[14]], type metadata accessor for DetectionRequest.Originator);
    *&v6[v71] = 0;
    v56 = v74;
    sub_1D8A91FE8(v6, v74, type metadata accessor for GroundedParseDetectorResult);
    v57 = v4[15];
    v58 = *(v2 + v57);

    *(v56 + v57) = v58;
  }
}

uint64_t GroundedParseDetectorResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68660, &qword_1D8B39BC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A93364();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for GroundedParseDetectorResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + v9[6]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520, &qword_1D8B398A8);
    sub_1D8A93178();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[8]);
    v15 = 4;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 5;
    sub_1D8B16AB0();
    LOBYTE(v16) = 6;
    sub_1D8B16AA0();
    LOBYTE(v16) = 7;
    sub_1D8B16A90();
    LOBYTE(v16) = 8;
    sub_1D8B16A90();
    LOBYTE(v16) = 9;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A92E28(&qword_1ECA67420, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16AE0();
    LOBYTE(v16) = 10;
    type metadata accessor for VisualUnderstandingContainer(0);
    sub_1D8A92E28(&qword_1ECA68538, type metadata accessor for VisualUnderstandingContainer, &protocol conformance descriptor for VisualUnderstandingContainer);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GroundedParseDetectorResult.hash(into:)(__int128 *a1)
{
  v3 = sub_1D8B13830();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v42 - v6;
  v7 = sub_1D8B13AD0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v11 = type metadata accessor for GroundedParseDetectorResult(0);
  sub_1D8B16D60();
  v12 = (v1 + *(v11 + 24));
  v13 = v12[2];
  v14 = v12[3];
  v15 = v12[4];
  v16 = v12[5];
  v17 = v12[6];
  v18 = v12[7];
  sub_1D8818B80(*v12, v12[1]);
  sub_1D8818B80(v13, v14);
  sub_1D8818B80(v15, v16);
  sub_1D8818B80(v17, v18);
  v44 = v11;
  v19 = *(v11 + 28);
  v47 = v1;
  v20 = *(v1 + v19);
  v21 = a1;
  MEMORY[0x1DA720210](*(v20 + 16));
  v22 = *(v20 + 16);
  if (v22)
  {
    v23 = v8 + 16;
    v24 = *(v8 + 16);
    v25 = v20 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v24(v10, v25, v7);
      sub_1D8A92E28(&qword_1ECA63170, MEMORY[0x1E69E03D8], MEMORY[0x1E69E03E8]);
      sub_1D8B157A0();
      (*v27)(v10, v7);
      v25 += v26;
      --v22;
    }

    while (v22);
  }

  v28 = v44;
  v29 = v47;
  v30 = *(v47 + v44[8]);
  if (v30 == 0.0)
  {
    v30 = 0.0;
  }

  v31 = v21;
  MEMORY[0x1DA720250](*&v30);
  v32 = *(v29 + v28[9]);
  if (v32 == 0.0)
  {
    v32 = 0.0;
  }

  MEMORY[0x1DA720250](*&v32);
  sub_1D8B16D40();
  sub_1D8B15A60();
  sub_1D8B15A60();
  v33 = (v29 + v28[13]);
  v34 = *v33;
  if (*v33 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1DA720250](*&v34);
  v35 = type metadata accessor for VisualUnderstandingContainer(0);
  v36 = v43;
  sub_1D87A0E38(v33 + *(v35 + 20), v43, &qword_1ECA635E8, &unk_1D8B1F5C0);
  v38 = v45;
  v37 = v46;
  if ((*(v45 + 48))(v36, 1, v46) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    v39 = v42;
    (*(v38 + 32))(v42, v36, v37);
    sub_1D8B16D40();
    sub_1D8A92E28(&qword_1ECA635F0, MEMORY[0x1E69E0330], MEMORY[0x1E69E0340]);
    sub_1D8B157A0();
    (*(v38 + 8))(v39, v37);
  }

  if (*(v33 + *(v35 + 24) + 8) >> 60 == 15)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D8B16D40();
    sub_1D8B13060();
  }

  DetectionRequest.Originator.hash(into:)(v31);
  v40 = *(v29 + v28[15]);
  sub_1D8B16D40();
  if (v40)
  {
    sub_1D87CFAE4(v31, v40);
  }

  return MEMORY[0x1DA720210](*(v29 + v28[16]));
}

void GroundedParseDetectorResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for VisualUnderstandingContainer(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13240();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68670, &qword_1D8B39BC8);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v31 - v8;
  v10 = type metadata accessor for GroundedParseDetectorResult(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13[*(v11 + 60)] = 0;
  *&v13[*(v11 + 64)] = 5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A93364();
  v41 = v9;
  v14 = v42;
  sub_1D8B16DB0();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v31 = v5;
    v32 = v13;
    v15 = v38;
    v42 = a1;
    LOBYTE(v44) = 0;
    sub_1D8A92E28(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v16 = v39;
    sub_1D8B16A10();
    v17 = v32;
    (*(v37 + 32))(v32, v16, v6);
    LOBYTE(v44) = 1;
    sub_1D8B169F0();
    v39 = v10;
    *&v17[v10[5]] = v18;
    v49 = 2;
    sub_1D881BC34();
    sub_1D8B16A10();
    v19 = &v17[v39[6]];
    v20 = v45;
    *v19 = v44;
    *(v19 + 1) = v20;
    v21 = v47;
    *(v19 + 2) = v46;
    *(v19 + 3) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520, &qword_1D8B398A8);
    v48 = 3;
    sub_1D8A930C4();
    sub_1D8B16A10();
    *&v17[v39[7]] = v43;
    v48 = 4;
    sub_1D88913B8();
    sub_1D8B16A10();
    *&v17[v39[8]] = v43;
    LOBYTE(v43) = 5;
    sub_1D8B169E0();
    *&v17[v39[9]] = v22;
    LOBYTE(v43) = 6;
    v17[v39[10]] = sub_1D8B169D0() & 1;
    LOBYTE(v43) = 7;
    v23 = sub_1D8B169C0();
    v24 = &v32[v39[11]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v43) = 8;
    v26 = sub_1D8B169C0();
    v27 = &v32[v39[12]];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v43) = 9;
    sub_1D8A92E28(&unk_1ECA676C0, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16A10();
    sub_1D8A91FE8(v31, &v32[v10[14]], type metadata accessor for DetectionRequest.Originator);
    LOBYTE(v43) = 10;
    sub_1D8A92E28(&qword_1ECA68568, type metadata accessor for VisualUnderstandingContainer, &protocol conformance descriptor for VisualUnderstandingContainer);
    sub_1D8B16A10();
    (*(v15 + 8))(v41, v40);
    v29 = v10[13];
    v30 = v32;
    sub_1D8A91FE8(v35, &v32[v29], type metadata accessor for VisualUnderstandingContainer);
    sub_1D8A92F54(v30, v33, type metadata accessor for GroundedParseDetectorResult);
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_1D8A93010(v30, type metadata accessor for GroundedParseDetectorResult);
  }
}

__n128 GroundedParseEmbeddingsResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroundedParseEmbeddingsResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double GroundedParseEmbeddingsResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for GroundedParseEmbeddingsResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t GroundedParseEmbeddingsResult.init(id:confidence:corners:rotationAngle:timestamp:imageRegion:originator:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>, double a8@<D1>)
{
  v31 = a1;
  v32 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = type metadata accessor for DetectionRequest.Originator(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[1];
  v33 = *a2;
  v34 = v21;
  v22 = a2[3];
  v35 = a2[2];
  v36 = v22;
  v23 = *a3;
  v24 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v25 = (a6 + v24[7]);
  *v25 = 0x6E69646465626D65;
  v25[1] = 0xEA00000000007367;
  sub_1D87A0E38(a5, v16, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D87A14E4(v16, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    sub_1D87A14E4(a5, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8A91FE8(v16, v20, type metadata accessor for DetectionRequest.Originator);
    v26 = sub_1D8B13240();
    (*(*(v26 - 8) + 32))(a6, v31, v26);
    *(a6 + v24[5]) = a7;
    v27 = (a6 + v24[6]);
    v28 = v34;
    *v27 = v33;
    v27[1] = v28;
    v29 = v36;
    v27[2] = v35;
    v27[3] = v29;
    *(a6 + v24[8]) = v23;
    *(a6 + v24[9]) = a8;
    sub_1D881F6FC(v32, a6 + v24[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    return sub_1D8A91FE8(v20, a6 + v24[11], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

unint64_t sub_1D8A7E00C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8A953BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D8A7E03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A953BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A7E064(uint64_t a1)
{
  v2 = sub_1D8A933B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A7E0A0(uint64_t a1)
{
  v2 = sub_1D8A933B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundedParseEmbeddingsResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68678, &qword_1D8B39BD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A933B8();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for GroundedParseEmbeddingsResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    *&v16 = *(v3 + *(v9 + 32));
    v15 = 3;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AB0();
    LOBYTE(v16) = 5;
    sub_1D8B13830();
    sub_1D8A92E28(&qword_1ECA68618, MEMORY[0x1E69E0330], MEMORY[0x1E69E0338]);
    sub_1D8B16A80();
    LOBYTE(v16) = 6;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A92E28(&qword_1ECA67420, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GroundedParseEmbeddingsResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1D8B13240();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68688, &qword_1D8B39BD8);
  v34 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v31 - v9;
  v11 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 28)];
  *v15 = 0x6E69646465626D65;
  *(v15 + 1) = 0xEA00000000007367;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A933B8();
  v37 = v10;
  v16 = v39;
  sub_1D8B16DB0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v6;
  v17 = v34;
  v18 = v35;
  LOBYTE(v41) = 0;
  sub_1D8A92E28(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v19 = v36;
  sub_1D8B16A10();
  v20 = *(v18 + 32);
  v36 = v7;
  v20(v14, v19, v7);
  LOBYTE(v41) = 1;
  sub_1D8B169F0();
  v21 = v11;
  *&v14[v11[5]] = v22;
  v46 = 2;
  sub_1D881BC34();
  sub_1D8B16A10();
  v23 = v17;
  v24 = &v14[v11[6]];
  v25 = v42;
  *v24 = v41;
  *(v24 + 1) = v25;
  v26 = v44;
  *(v24 + 2) = v43;
  *(v24 + 3) = v26;
  v45 = 3;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v14[v11[8]] = v40;
  LOBYTE(v40) = 4;
  sub_1D8B169E0();
  *&v14[v11[9]] = v27;
  sub_1D8B13830();
  LOBYTE(v40) = 5;
  sub_1D8A92E28(&qword_1ECA68628, MEMORY[0x1E69E0330], MEMORY[0x1E69E0350]);
  v28 = v39;
  sub_1D8B169B0();
  sub_1D881F6FC(v28, &v14[v11[10]], &qword_1ECA635E8, &unk_1D8B1F5C0);
  LOBYTE(v40) = 6;
  sub_1D8A92E28(&unk_1ECA676C0, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
  v29 = v32;
  sub_1D8B16A10();
  (*(v23 + 8))(v37, v38);
  sub_1D8A91FE8(v29, &v14[v21[11]], type metadata accessor for DetectionRequest.Originator);
  sub_1D8A92F54(v14, v31, type metadata accessor for GroundedParseEmbeddingsResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A93010(v14, type metadata accessor for GroundedParseEmbeddingsResult);
}

__n128 GroundedParseClassificationsResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroundedParseClassificationsResult(0) + 24);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1D8A7EBF0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

double GroundedParseClassificationsResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for GroundedParseClassificationsResult(0) + 32));
  *a1 = result;
  return result;
}

uint64_t GroundedParseClassificationsResult.init(id:confidence:corners:rotationAngle:timestamp:imageRegion:originator:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>, double a8@<D1>)
{
  v31 = a1;
  v32 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68598, &qword_1D8B3E590);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - v15;
  v17 = type metadata accessor for DetectionRequest.Originator(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2[1];
  v33 = *a2;
  v34 = v21;
  v22 = a2[3];
  v35 = a2[2];
  v36 = v22;
  v23 = *a3;
  v24 = type metadata accessor for GroundedParseClassificationsResult(0);
  v25 = (a6 + v24[7]);
  *v25 = 0x6966697373616C63;
  v25[1] = 0xEF736E6F69746163;
  sub_1D87A0E38(a5, v16, &qword_1ECA68598, &qword_1D8B3E590);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D87A14E4(v16, &qword_1ECA68598, &qword_1D8B3E590);
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    sub_1D87A14E4(a5, &qword_1ECA68598, &qword_1D8B3E590);
    sub_1D8A91FE8(v16, v20, type metadata accessor for DetectionRequest.Originator);
    v26 = sub_1D8B13240();
    (*(*(v26 - 8) + 32))(a6, v31, v26);
    *(a6 + v24[5]) = a7;
    v27 = (a6 + v24[6]);
    v28 = v34;
    *v27 = v33;
    v27[1] = v28;
    v29 = v36;
    v27[2] = v35;
    v27[3] = v29;
    *(a6 + v24[8]) = v23;
    *(a6 + v24[9]) = a8;
    sub_1D881F6FC(v32, a6 + v24[10], &qword_1ECA635E8, &unk_1D8B1F5C0);
    return sub_1D8A91FE8(v20, a6 + v24[11], type metadata accessor for DetectionRequest.Originator);
  }

  return result;
}

double sub_1D8A7EFF0(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

unint64_t sub_1D8A7F118@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8A95408(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D8A7F148(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEB000000006E6F69;
  v6 = 0x6765526567616D69;
  if (v2 != 5)
  {
    v6 = 0x74616E696769726FLL;
    v5 = 0xEA0000000000726FLL;
  }

  v7 = 0xED0000656C676E41;
  v8 = 0x6E6F697461746F72;
  if (v2 != 3)
  {
    v8 = 0x6D617473656D6974;
    v7 = 0xE900000000000070;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6E656469666E6F63;
  v10 = 0xEA00000000006563;
  if (v2 != 1)
  {
    v9 = 0x7372656E726F63;
    v10 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D8A7F240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8A95408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8A7F268(uint64_t a1)
{
  v2 = sub_1D8A9340C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A7F2A4(uint64_t a1)
{
  v2 = sub_1D8A9340C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroundedParseClassificationsResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68690, &qword_1D8B39BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9340C();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for GroundedParseClassificationsResult(0);
    v20 = 1;
    sub_1D8B16AC0();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 2;
    sub_1D881BB78();
    sub_1D8B16AE0();
    *&v16 = *(v3 + *(v9 + 32));
    v15 = 3;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AB0();
    LOBYTE(v16) = 5;
    sub_1D8B13830();
    sub_1D8A92E28(&qword_1ECA68618, MEMORY[0x1E69E0330], MEMORY[0x1E69E0338]);
    sub_1D8B16A80();
    LOBYTE(v16) = 6;
    type metadata accessor for DetectionRequest.Originator(0);
    sub_1D8A92E28(&qword_1ECA67420, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1D8A7F65C(__int128 *a1, uint64_t (*a2)(void, __n128))
{
  v5 = sub_1D8B13830();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v12 = (a2)(0);
  sub_1D8B16D60();
  v13 = (v2 + v12[6]);
  v14 = v13[2];
  v15 = v13[3];
  v16 = v13[4];
  v17 = v13[5];
  v18 = v13[6];
  v19 = v13[7];
  sub_1D8818B80(*v13, v13[1]);
  sub_1D8818B80(v14, v15);
  sub_1D8818B80(v16, v17);
  sub_1D8818B80(v18, v19);
  sub_1D8B15A60();
  v20 = *(v2 + v12[8]);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA720250](*&v20);
  v21 = *(v2 + v12[9]);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1DA720250](*&v21);
  sub_1D87A0E38(v2 + v12[10], v11, &qword_1ECA635E8, &unk_1D8B1F5C0);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1D8B16D40();
    sub_1D8A92E28(&qword_1ECA635F0, MEMORY[0x1E69E0330], MEMORY[0x1E69E0340]);
    sub_1D8B157A0();
    (*(v6 + 8))(v8, v5);
  }

  DetectionRequest.Originator.hash(into:)(a1);
}

uint64_t GroundedParseClassificationsResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1D8B13240();
  v35 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA686A0, &qword_1D8B39BE8);
  v34 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v31 - v9;
  v11 = type metadata accessor for GroundedParseClassificationsResult(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v14[*(v12 + 28)];
  *v15 = 0x6966697373616C63;
  *(v15 + 1) = 0xEF736E6F69746163;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A9340C();
  v37 = v10;
  v16 = v39;
  sub_1D8B16DB0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v6;
  v17 = v34;
  v18 = v35;
  LOBYTE(v41) = 0;
  sub_1D8A92E28(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v19 = v36;
  sub_1D8B16A10();
  v20 = *(v18 + 32);
  v36 = v7;
  v20(v14, v19, v7);
  LOBYTE(v41) = 1;
  sub_1D8B169F0();
  v21 = v11;
  *&v14[v11[5]] = v22;
  v46 = 2;
  sub_1D881BC34();
  sub_1D8B16A10();
  v23 = v17;
  v24 = &v14[v11[6]];
  v25 = v42;
  *v24 = v41;
  *(v24 + 1) = v25;
  v26 = v44;
  *(v24 + 2) = v43;
  *(v24 + 3) = v26;
  v45 = 3;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v14[v11[8]] = v40;
  LOBYTE(v40) = 4;
  sub_1D8B169E0();
  *&v14[v11[9]] = v27;
  sub_1D8B13830();
  LOBYTE(v40) = 5;
  sub_1D8A92E28(&qword_1ECA68628, MEMORY[0x1E69E0330], MEMORY[0x1E69E0350]);
  v28 = v39;
  sub_1D8B169B0();
  sub_1D881F6FC(v28, &v14[v11[10]], &qword_1ECA635E8, &unk_1D8B1F5C0);
  LOBYTE(v40) = 6;
  sub_1D8A92E28(&unk_1ECA676C0, type metadata accessor for DetectionRequest.Originator, &protocol conformance descriptor for DetectionRequest.Originator);
  v29 = v32;
  sub_1D8B16A10();
  (*(v23 + 8))(v37, v38);
  sub_1D8A91FE8(v29, &v14[v21[11]], type metadata accessor for DetectionRequest.Originator);
  sub_1D8A92F54(v14, v31, type metadata accessor for GroundedParseClassificationsResult);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8A93010(v14, type metadata accessor for GroundedParseClassificationsResult);
}

uint64_t sub_1D8A800A4()
{
  v0 = sub_1D8B131D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B131C0();
  v4 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v5 = sub_1D8B13120();
  v6 = [v4 initWithCoordinate:v5 altitude:37.444704 horizontalAccuracy:-122.171103 verticalAccuracy:0.0 timestamp:{1.0, 1.0}];

  result = (*(v1 + 8))(v3, v0);
  qword_1EE0ED790 = v6;
  return result;
}

uint64_t sub_1D8A801C4(uint64_t a1)
{
  v2 = sub_1D8B13CF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A92E28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v6 = *(v1 + *(type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0) + 20));
  result = MEMORY[0x1DA720210](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v5, v12, v2);
      sub_1D8A92E28(&qword_1ECA65FD0, MEMORY[0x1E69E0420], MEMORY[0x1E69E0430]);
      sub_1D8B157A0();
      result = (*(v9 - 8))(v5, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D8A80394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1D88E71FC(v7, v8);
}

uint64_t sub_1D8A80430()
{
  type metadata accessor for VisualIntelligenceSearchService();
  swift_allocObject();
  result = sub_1D8A8046C();
  qword_1ECAA36C8 = result;
  return result;
}

uint64_t sub_1D8A8046C()
{
  v1 = v0;
  type metadata accessor for VisualIntelligenceSearchServiceInternal(0);
  v2 = swift_allocObject();
  sub_1D8A8060C();
  *(v1 + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68920, &qword_1D8B3B008);
  v3 = swift_allocObject();

  swift_defaultActor_initialize();
  v4 = qword_1ECA66BD0;
  if (qword_1ECA62180 != -1)
  {
    swift_once();
  }

  v5 = sub_1D8B151E0();
  v6 = __swift_project_value_buffer(v5, qword_1ECA66A50);
  (*(*(v5 - 8) + 16))(v3 + v4, v6, v5);
  *(v3 + qword_1ECA66BD8) = 10;
  *(v3 + qword_1ECA66BE0) = 0xFFF0000000000000;
  *(v3 + qword_1ECAA3698) = 0x4024000000000000;
  v7 = qword_1ECA66BE8;
  *(v3 + v7) = sub_1D893DB10(MEMORY[0x1E69E7CC0]);
  *(v3 + 112) = v2;
  *(v1 + 24) = v3;
  return v1;
}

uint64_t sub_1D8A805CC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8A8060C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA687F8, &qword_1D8B3AE98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68800, &qword_1D8B3AEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0, &qword_1D8B24530);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_1D8B13970();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v17 = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_logger;
  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v18 = sub_1D8B151E0();
  v19 = __swift_project_value_buffer(v18, qword_1EE0E4520);
  (*(*(v18 - 8) + 16))(v1 + v17, v19, v18);
  v20 = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_searchService;
  sub_1D8B13980();
  v21 = sub_1D8B13000();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_1D8B155A0();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = sub_1D8B13B20();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  sub_1D8B13960();
  *(v1 + v20) = MEMORY[0x1DA71CDE0](v16);
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_lastQueryDispatchTime) = 0;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_isSearching) = 0;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_detectionsInQueue) = MEMORY[0x1E69E7CC0];
  v24 = sub_1D8B15EA0();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v1;

  sub_1D8891CA0(0, 0, v4, &unk_1D8B3B018, v25);

  return v1;
}

uint64_t sub_1D8A80A2C()
{
  sub_1D8B138F0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8A80A98(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67110, &unk_1D8B32060);
  v3[11] = swift_task_alloc();
  v4 = sub_1D8B13830();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_1D8B137A0();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for VisualIntelligenceRateLimitedInput(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = sub_1D8B13700();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A80CB0, v2, 0);
}

uint64_t sub_1D8A80CB0()
{
  v70 = v0;
  v1 = *(v0 + 144);
  v2 = *(*(v0 + 64) + *(v1 + 24));
  sub_1D8A95454(MEMORY[0x1E69E7CC0]);
  sub_1D8B136E0();
  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 64);
  v9 = sub_1D8B151E0();
  __swift_project_value_buffer(v9, qword_1EE0E4520);
  sub_1D8A92F54(v8, v4, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A92F54(v8, v3, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A92F54(v8, v5, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A92F54(v8, v6, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A92F54(v8, v7, type metadata accessor for VisualIntelligenceRateLimitedInput);
  v10 = sub_1D8B151C0();
  v11 = sub_1D8B16200();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  if (v12)
  {
    v15 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v68;
    *v15 = 67110146;
    v16 = *(v14 + *(v1 + 20));
    sub_1D8A93010(v14, type metadata accessor for VisualIntelligenceRateLimitedInput);
    *(v15 + 4) = v16;
    *(v15 + 8) = 2080;
    v17 = sub_1D8B13840();
    if (*(v17 + 16) && (v19 = *(v0 + 104), v18 = *(v0 + 112), v20 = *(v0 + 96), (*(v19 + 16))(v18, v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v20), , v21 = sub_1D8B137B0(), (*(v19 + 8))(v18, v20), v22 = v21, *(v21 + 16)))
    {
      v23 = *(v0 + 128);
      v24 = *(v0 + 136);
      v25 = *(v0 + 120);
      (*(v23 + 16))(v24, v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v25);

      v26 = sub_1D8B13760();
      v28 = v27;
      (*(v23 + 8))(v24, v25);
      if (v28)
      {
        sub_1D8A93010(*(v0 + 176), type metadata accessor for VisualIntelligenceRateLimitedInput);
        v29 = v26;
LABEL_11:
        v33 = *(v0 + 160);
        v34 = *(v0 + 168);
        v35 = sub_1D89AC714(v29, v28, &v69);

        *(v15 + 10) = v35;
        *(v15 + 18) = 2080;
        sub_1D8B13240();
        sub_1D8A92E28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v36 = sub_1D8B16B50();
        v38 = v37;
        sub_1D8A93010(v34, type metadata accessor for VisualIntelligenceRateLimitedInput);
        v39 = sub_1D89AC714(v36, v38, &v69);

        *(v15 + 20) = v39;
        *(v15 + 28) = 2080;
        v40 = *(v33 + *(v1 + 24));
        if (v40)
        {
          [v40 coordinate];
          *(&v42 + 1) = v41;
        }

        else
        {
          v42 = 0uLL;
        }

        v43 = v40 == 0;
        v45 = *(v0 + 152);
        v44 = *(v0 + 160);
        *(v0 + 16) = v42;
        *(v0 + 32) = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688F0, &qword_1D8B3AFB8);
        v46 = sub_1D8B159E0();
        v48 = v47;
        sub_1D8A93010(v44, type metadata accessor for VisualIntelligenceRateLimitedInput);
        v49 = sub_1D89AC714(v46, v48, &v69);

        *(v15 + 30) = v49;
        *(v15 + 38) = 2080;
        v50 = *(v45 + *(v1 + 24));
        if (v50)
        {
          [v50 course];
        }

        else
        {
          v51 = 0;
        }

        v52 = v50 == 0;
        v53 = *(v0 + 152);
        v54 = v52;
        *(v0 + 40) = v51;
        *(v0 + 48) = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688F8, &qword_1D8B3AFC0);
        v55 = sub_1D8B159E0();
        v57 = v56;
        sub_1D8A93010(v53, type metadata accessor for VisualIntelligenceRateLimitedInput);
        v58 = sub_1D89AC714(v55, v57, &v69);

        *(v15 + 40) = v58;
        _os_log_impl(&dword_1D8783000, v10, v11, "queryContext for search isHighResolutionStill: %{BOOL}d, label: %s, id: %s, location.coordinate: %s, location.course: %s", v15, 0x30u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v68, -1, -1);
        MEMORY[0x1DA721330](v15, -1, -1);

        goto LABEL_21;
      }
    }

    else
    {
    }

    sub_1D8A93010(*(v0 + 176), type metadata accessor for VisualIntelligenceRateLimitedInput);

    v28 = 0xE300000000000000;
    v29 = 7104878;
    goto LABEL_11;
  }

  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  v32 = *(v0 + 152);
  sub_1D8A93010(*(v0 + 184), type metadata accessor for VisualIntelligenceRateLimitedInput);

  sub_1D8A93010(v30, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A93010(v13, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A93010(v31, type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A93010(v32, type metadata accessor for VisualIntelligenceRateLimitedInput);
LABEL_21:
  v59 = *(v0 + 208);
  v61 = *(v0 + 64);
  v60 = *(v0 + 72);
  v62 = sub_1D8A92E28(&qword_1ECA688E8, type metadata accessor for VisualIntelligenceSearchServiceInternal, &unk_1D8B3AC88);
  v63 = swift_task_alloc();
  *(v0 + 216) = v63;
  v63[2] = v61;
  v63[3] = v60;
  v63[4] = v59;
  v64 = swift_task_alloc();
  *(v0 + 224) = v64;
  *v64 = v0;
  v64[1] = sub_1D8A813C4;
  v66 = *(v0 + 80);
  v65 = *(v0 + 88);

  return MEMORY[0x1EEE6DE38](v65, v60, v62, 0x6928686372616573, 0xEE00293A7475706ELL, sub_1D8A97044, v63, v66);
}

uint64_t sub_1D8A813C4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1D8A81614;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1D8A814EC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8A814EC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[11];
  v7 = *v4;
  sub_1D881F6FC(v4 + *(v0[10] + 48), v0[7], &qword_1ECA67108, &qword_1D8B32048);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v7);
}

uint64_t sub_1D8A81614()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8A81718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v35[0] = a3;
  v37 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900, &qword_1D8B3AFC8);
  v38 = *(v39 - 8);
  v35[1] = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v36 = v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v35 - v10;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1D8B16720();

    v43 = 0xD000000000000024;
    v44 = 0x80000001D8B48590;
    sub_1D8B13240();
    sub_1D8A92E28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v12);

    v13 = v43;
    v14 = v44;
    v15 = type metadata accessor for VisualIntelligenceRateLimitedInput(0);
    v16 = *(v15 + 32);
    v17 = *(a2 + *(v15 + 36));
    v18 = sub_1D8B138B0();
    v46[3] = v18;
    v46[4] = sub_1D8A92E28(&qword_1ECA66F78, MEMORY[0x1E69E0360], MEMORY[0x1E69E0368]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2 + v16, v18);
    v47 = 3;
    v43 = v13;
    v44 = v14;
    v45 = v17;
    v20 = sub_1D8B15EA0();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
    sub_1D88C4BD0(&v43, v41);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v22 = v41[3];
    *(v21 + 64) = v41[2];
    *(v21 + 80) = v22;
    *(v21 + 96) = v42;
    v23 = v41[1];
    *(v21 + 32) = v41[0];
    *(v21 + 48) = v23;
    sub_1D8891CA0(0, 0, v11, &unk_1D8B3AFE0, v21);

    sub_1D87DC9A0(&v43);
  }

  if (qword_1EE0E4EC8 != -1)
  {
    swift_once();
  }

  v24 = *(type metadata accessor for VisualIntelligenceRateLimitedInput(0) + 32);
  v25 = sub_1D8B138B0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(v8, a2 + v24, v25);
  v28 = *(v26 + 56);
  v28(v8, 0, 1, v25);
  AnalyticsVLUEventManager.onServerRequestStart(visualUnderstanding:)(v8);
  sub_1D87A14E4(v8, &qword_1ECA67148, &qword_1D8B3AFD0);
  v27(v8, a2 + v24, v25);
  v28(v8, 0, 1, v25);
  v29 = v38;
  v30 = v36;
  v31 = v39;
  (*(v38 + 16))(v36, v37, v39);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = swift_allocObject();
  (*(v29 + 32))(v33 + v32, v30, v31);

  return sub_1D87A14E4(v8, &qword_1ECA67148, &qword_1D8B3AFD0);
}

uint64_t sub_1D8A81CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A81D84, 0, 0);
}

uint64_t sub_1D8A81D84()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A974AC, v2, 0);
}

uint64_t sub_1D8A81E7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, __n128 a5)
{
  v9 = sub_1D8B13C60();
  v10 = *(v9 - 8);
  v90 = v9;
  v91 = v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v72 - v13;
  v15 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v82 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67110, &unk_1D8B32060);
  MEMORY[0x1EEE9AC00](v83);
  v84 = (&v72 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908, &unk_1D8B3FD40);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v72 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68910, &qword_1D8B3AFF0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v72 - v25;
  v27 = sub_1D8B13CA0();
  v28 = *(v27 - 8);
  v86 = v27;
  v87 = v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v85 = &v72 - v32;
  if (qword_1EE0E4EC8 != -1)
  {
    swift_once();
  }

  AnalyticsVLUEventManager.onServerRequestEnd(searchResult:error:)(a1, a3);
  if (a3)
  {
    v92 = a3;
    v33 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900, &qword_1D8B3AFC8);
    return sub_1D8B15E10();
  }

  v75 = a2;
  v81 = a4;
  sub_1D87A0E38(a1, v23, &qword_1ECA68908, &unk_1D8B3FD40);
  v34 = sub_1D8B13720();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v23, 1, v34) == 1)
  {
    sub_1D87A14E4(v23, &qword_1ECA68908, &unk_1D8B3FD40);
    (*(v87 + 56))(v26, 1, 1, v86);
LABEL_11:
    v41 = &qword_1ECA68910;
    v42 = &qword_1D8B3AFF0;
    v43 = v26;
LABEL_12:
    sub_1D87A14E4(v43, v41, v42);
LABEL_13:
    sub_1D88C53E4();
    v44 = swift_allocError();
    *v45 = 0xD000000000000011;
    *(v45 + 8) = 0x80000001D8B485C0;
    *(v45 + 16) = 1;
    v92 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900, &qword_1D8B3AFC8);
    return sub_1D8B15E10();
  }

  v79 = v36;
  v80 = a1;
  v74 = v14;
  v37 = sub_1D8B13710();
  v78 = *(v35 + 8);
  v78(v23, v34);
  if (*(v37 + 16))
  {
    v38 = v86;
    v39 = v87;
    (*(v87 + 16))(v26, v37 + ((*(v87 + 80) + 32) & ~*(v87 + 80)), v86);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v38 = v86;
    v39 = v87;
  }

  (*(v39 + 56))(v26, v40, 1, v38);
  if ((*(v39 + 48))(v26, 1, v38) == 1)
  {
    goto LABEL_11;
  }

  v47 = v85;
  (*(v39 + 32))(v85, v26, v38);
  sub_1D87A0E38(v80, v21, &qword_1ECA68908, &unk_1D8B3FD40);
  if (v79(v21, 1, v34) == 1)
  {
    (*(v39 + 8))(v47, v38);
    v41 = &qword_1ECA68908;
    v42 = &unk_1D8B3FD40;
    v43 = v21;
    goto LABEL_12;
  }

  v48 = sub_1D8B13710();
  v78(v21, v34);
  if (!*(v48 + 16))
  {

    (*(v87 + 8))(v47, v38);
    goto LABEL_13;
  }

  v49 = v87;
  (*(v87 + 16))(v31, v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v38);

  v50 = sub_1D8B13C80();
  v51 = *(v49 + 8);
  v87 = v49 + 8;
  v51(v31, v38);
  v78 = sub_1D8B13C90();
  v53 = v52;
  v54 = sub_1D8B13C70();
  v55 = *(v54 + 16);
  if (v55)
  {
    v79 = v53;
    v80 = v50;
    v73 = v51;
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D87F4E70(0, v55, 0);
    v56 = v92;
    v57 = *(v91 + 16);
    v58 = *(v91 + 80);
    v72 = v54;
    v59 = v54 + ((v58 + 32) & ~v58);
    v76 = *(v91 + 72);
    v77 = v57;
    v91 += 16;
    v60 = (v91 - 8);
    v61 = v74;
    v62 = v82;
    do
    {
      v63 = v90;
      v64 = v77;
      v77(v61, v59, v90);
      v65 = v89;
      v64(v89, v61, v63);
      v66 = v79;

      v67 = v80;

      sub_1D8A781E4(v78, v66, v65, v67, v62);
      (*v60)(v61, v63);
      v92 = v56;
      v69 = v56[2];
      v68 = v56[3];
      if (v69 >= v68 >> 1)
      {
        sub_1D87F4E70((v68 > 1), v69 + 1, 1);
        v56 = v92;
      }

      v56[2] = v69 + 1;
      sub_1D8A91FE8(v62, v56 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v69, type metadata accessor for VisualIntelligenceLookupResult);
      v59 += v76;
      --v55;
    }

    while (v55);

    v47 = v85;
    v38 = v86;
    v51 = v73;
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  v70 = v84;
  v71 = *(v83 + 48);
  *v84 = v56;
  sub_1D87A0E38(v75, v70 + v71, &qword_1ECA67108, &qword_1D8B32048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68900, &qword_1D8B3AFC8);
  sub_1D8B15E20();
  return (v51)(v47, v38);
}

uint64_t sub_1D8A82780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = v3;
  v4[13] = a3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67108, &qword_1D8B32048);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for VisualIntelligenceRateLimitedInput(0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A82880, v3, 0);
}

uint64_t sub_1D8A82880()
{
  v41 = v0;
  v1 = v0[12];
  v2 = CACurrentMediaTime();
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_lastQueryDispatchTime;
  v0[21] = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_lastQueryDispatchTime;
  if (v2 < *(v1 + v3) + 0.5 + -0.1)
  {

    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16210();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v2;
      *(v6 + 12) = 2048;
      *(v6 + 14) = *(v1 + v3) + 0.5 + -0.1;
      _os_log_impl(&dword_1D8783000, v4, v5, "Calling VLU search sooner than expected. t: %f, expected minimum time: %f", v6, 0x16u);
      MEMORY[0x1DA721330](v6, -1, -1);
    }
  }

  v7 = v0[20];
  v8 = v0[11];
  *(v1 + v3) = v2;
  v0[22] = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_logger;
  sub_1D8A92F54(v8, v7, type metadata accessor for VisualIntelligenceRateLimitedInput);
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B161F0();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[20];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315394;
    sub_1D8B13240();
    sub_1D8A92E28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1D8B16B50();
    v17 = v16;
    sub_1D8A93010(v12, type metadata accessor for VisualIntelligenceRateLimitedInput);
    v18 = sub_1D89AC714(v15, v17, &v40);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v2;
    _os_log_impl(&dword_1D8783000, v9, v10, "Beginning search request %s at %f", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1DA721330](v14, -1, -1);
    MEMORY[0x1DA721330](v13, -1, -1);
  }

  else
  {

    sub_1D8A93010(v12, type metadata accessor for VisualIntelligenceRateLimitedInput);
  }

  v19 = v0[18];
  v20 = v0[11];
  sub_1D8A92F54(v20, v0[19], type metadata accessor for VisualIntelligenceRateLimitedInput);
  sub_1D8A92F54(v20, v19, type metadata accessor for VisualIntelligenceRateLimitedInput);
  v21 = sub_1D8B151C0();
  v22 = sub_1D8B16200();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[18];
  v25 = v0[19];
  if (v23)
  {
    v26 = v0[15];
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 134218242;
    v29 = *(*(v25 + *(v26 + 28)) + 16);
    sub_1D8A93010(v25, type metadata accessor for VisualIntelligenceRateLimitedInput);
    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;
    sub_1D8B13240();
    sub_1D8A92E28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v30 = sub_1D8B16B50();
    v32 = v31;
    sub_1D8A93010(v24, type metadata accessor for VisualIntelligenceRateLimitedInput);
    v33 = sub_1D89AC714(v30, v32, &v40);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_1D8783000, v21, v22, "searchHistoryEntries count: %ld for %s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1DA721330](v28, -1, -1);
    MEMORY[0x1DA721330](v27, -1, -1);
  }

  else
  {
    sub_1D8A93010(v0[19], type metadata accessor for VisualIntelligenceRateLimitedInput);

    sub_1D8A93010(v24, type metadata accessor for VisualIntelligenceRateLimitedInput);
  }

  v34 = v0[12];
  v35 = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_isSearching;
  v0[23] = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_isSearching;
  *(v34 + v35) = 1;
  v36 = swift_task_alloc();
  v0[24] = v36;
  *v36 = v0;
  v36[1] = sub_1D8A82DA8;
  v37 = v0[14];
  v38 = v0[11];

  return sub_1D8A80A98(v37, v38);
}

uint64_t sub_1D8A82DA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v4[25] = v1;

  v5 = v3[12];
  if (v1)
  {
    v6 = sub_1D8A83154;
  }

  else
  {
    v6 = sub_1D8A82EDC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D8A82EDC()
{
  v21 = v0;
  v1 = v0[17];
  v2 = v0[11];
  *(v0[12] + v0[23]) = 0;
  sub_1D8A92F54(v2, v1, type metadata accessor for VisualIntelligenceRateLimitedInput);
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B161F0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    sub_1D8B13240();
    sub_1D8A92E28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1D8B16B50();
    v11 = v10;
    sub_1D8A93010(v6, type metadata accessor for VisualIntelligenceRateLimitedInput);
    v12 = sub_1D89AC714(v9, v11, &v20);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1D8783000, v3, v4, "Returning search results for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1DA721330](v8, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {

    sub_1D8A93010(v6, type metadata accessor for VisualIntelligenceRateLimitedInput);
  }

  v13 = v0[6];
  v14 = v0[21];
  v15 = v0[12];
  sub_1D881F6FC(v0[14], v0[10], &qword_1ECA67108, &qword_1D8B32048);
  v16 = *(v15 + v14);

  v17 = v0[1];
  v18.n128_u64[0] = v16;

  return v17(v13, v18);
}

uint64_t sub_1D8A83154()
{
  v23 = v0;
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[11];
  *(v0[12] + v0[23]) = 0;
  sub_1D8A92F54(v3, v2, type metadata accessor for VisualIntelligenceRateLimitedInput);
  v4 = v1;
  v5 = sub_1D8B151C0();
  v6 = sub_1D8B16210();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    sub_1D8B13240();
    sub_1D8A92E28(&qword_1EE0E9890, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D8B16B50();
    v12 = v11;
    sub_1D8A93010(v7, type metadata accessor for VisualIntelligenceRateLimitedInput);
    v13 = sub_1D89AC714(v10, v12, &v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v22);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D8783000, v5, v6, "Exception during search for %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = v0[16];

    sub_1D8A93010(v17, type metadata accessor for VisualIntelligenceRateLimitedInput);
  }

  v18 = v0[25];
  v19 = v0[13];
  *(v0[12] + v0[21]) = 0;
  v0[8] = v18;
  sub_1D8A026F8();
  swift_willThrowTypedImpl();

  *v19 = v18;
  v20 = v0[1];

  return v20();
}

uint64_t sub_1D8A83430(double *a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EA8, &qword_1D8B22EF0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633B0, &qword_1D8B1E990);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = *a1;
  sub_1D87A0E38(a1, &v24 - v15, &qword_1ECA633B0, &qword_1D8B1E990);
  v18 = *(v14 + 56);
  sub_1D8A764E0(v12);
  sub_1D8A93010(&v16[v18], type metadata accessor for VisualUnderstandingContainer);
  sub_1D87A0E38(v25, v6, &qword_1ECA63EA8, &qword_1D8B22EF0);
  v19 = *v6;
  v20 = *(v4 + 56);
  v21 = sub_1D8B138B0();
  v22 = *(v21 - 8);
  (*(v22 + 32))(v10, v6 + v20, v21);
  (*(v22 + 56))(v10, 0, 1, v21);
  LOBYTE(v21) = sub_1D8A836CC(v12, v10, v17, v19);
  sub_1D87A14E4(v10, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A14E4(v12, &qword_1ECA67148, &qword_1D8B3AFD0);
  return v21 & 1;
}

uint64_t sub_1D8A836CC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_1D8B138B0();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68928, &qword_1D8B3B020);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68930, &qword_1D8B3B028);
  v16 = v15 - 8;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  *(&v37 - v20) = a3;
  v22 = *(v16 + 56);
  sub_1D87A0E38(a1, &v37 + v22 - v20, &qword_1ECA67148, &qword_1D8B3AFD0);
  *v19 = a4;
  v23 = *(v16 + 56);
  sub_1D87A0E38(a2, v19 + v23, &qword_1ECA67148, &qword_1D8B3AFD0);
  if (a3 != a4)
  {
    sub_1D87A14E4(v19, &qword_1ECA68930, &qword_1D8B3B028);
    v29 = v21;
    v30 = &qword_1ECA68930;
    v31 = &qword_1D8B3B028;
LABEL_9:
    sub_1D87A14E4(v29, v30, v31);
    v28 = 0;
    return v28 & 1;
  }

  v24 = *(v12 + 48);
  sub_1D87A0E38(&v21[v22], v14, &qword_1ECA67148, &qword_1D8B3AFD0);
  sub_1D87A0E38(v19 + v23, &v14[v24], &qword_1ECA67148, &qword_1D8B3AFD0);
  v25 = v39;
  v26 = v40;
  v27 = *(v39 + 48);
  if (v27(v14, 1, v40) != 1)
  {
    v32 = v38;
    sub_1D87A0E38(v14, v38, &qword_1ECA67148, &qword_1D8B3AFD0);
    if (v27(&v14[v24], 1, v26) != 1)
    {
      v34 = &v14[v24];
      v35 = v37;
      (*(v25 + 32))(v37, v34, v26);
      sub_1D8A92E28(&qword_1ECA68938, MEMORY[0x1E69E0360], MEMORY[0x1E69E0378]);
      v28 = sub_1D8B158C0();
      v36 = *(v25 + 8);
      v36(v35, v26);
      sub_1D87A14E4(v19, &qword_1ECA68930, &qword_1D8B3B028);
      sub_1D87A14E4(v21, &qword_1ECA68930, &qword_1D8B3B028);
      v36(v32, v26);
      sub_1D87A14E4(v14, &qword_1ECA67148, &qword_1D8B3AFD0);
      return v28 & 1;
    }

    sub_1D87A14E4(v19, &qword_1ECA68930, &qword_1D8B3B028);
    sub_1D87A14E4(v21, &qword_1ECA68930, &qword_1D8B3B028);
    (*(v25 + 8))(v32, v26);
    goto LABEL_8;
  }

  sub_1D87A14E4(v19, &qword_1ECA68930, &qword_1D8B3B028);
  sub_1D87A14E4(v21, &qword_1ECA68930, &qword_1D8B3B028);
  if (v27(&v14[v24], 1, v26) != 1)
  {
LABEL_8:
    v30 = &qword_1ECA68928;
    v31 = &qword_1D8B3B020;
    v29 = v14;
    goto LABEL_9;
  }

  sub_1D87A14E4(v14, &qword_1ECA67148, &qword_1D8B3AFD0);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_1D8A83BA8()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore39VisualIntelligenceSearchServiceInternal_logger;
  v2 = sub_1D8B151E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D8A83C40(char a1)
{
  v3 = sub_1D8B151E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  v10 = OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_logger;
  if (qword_1EE0E4558 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EE0E4560);
  v12 = *(v4 + 16);
  v12(v1 + v10, v11, v3);
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_currentRequestIdentifier) = 0;
  v13 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_signposter;
  v12(v9, v11, v3);
  v12(v13, v9, v3);
  v12(v7, v9, v3);
  type metadata accessor for LoggingSignposter(0);
  sub_1D8B15140();
  (*(v4 + 8))(v9, v3);
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_legacyParseEnabled) = a1 & 1;
  return v1;
}

unint64_t sub_1D8A83E38(uint64_t a1)
{
  v147[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v3 = *(v2 - 8);
  v140 = v2;
  v141 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v132 = (&v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v135 = (&v125 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v127 = (&v125 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v138 = (&v125 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA68B20, &qword_1D8B32EA0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v133 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v125 - v17;
  v19 = type metadata accessor for DetectionRequest(0);
  v20 = *(v19 - 8);
  v145 = v19;
  v146 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v134 = &v125 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v125 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v144 = &v125 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v126 = &v125 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v128 = &v125 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v129 = &v125 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v125 - v36;
  v38 = *(a1 + 32);
  v39 = v38 & 0x3F;
  v40 = ((1 << v38) + 63) >> 6;
  v41 = 8 * v40;

  v130 = v14;
  if (v39 <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

LABEL_2:
    v142 = v18;
    v143 = v27;
    v136 = &v125;
    v137 = v40;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v43 = &v125 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v41);
    v41 = 0;
    v44 = 0;
    v27 = (a1 + 56);
    v45 = 1 << *(a1 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v18 = v46 & *(a1 + 56);
    v47 = (v45 + 63) >> 6;
    while (1)
    {
      if (!v18)
      {
        v49 = v44;
        while (1)
        {
          v44 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            goto LABEL_19;
          }

          if (v44 >= v47)
          {
            goto LABEL_16;
          }

          v50 = *&v27[8 * v44];
          ++v49;
          if (v50)
          {
            v48 = __clz(__rbit64(v50));
            v18 = (v50 - 1) & v50;
            goto LABEL_12;
          }
        }
      }

      v48 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_12:
      v51 = v48 | (v44 << 6);
      sub_1D8A92F54(*(a1 + 48) + *(v146 + 72) * v51, v37, type metadata accessor for DetectionRequest);
      v40 = *v37;
      sub_1D8A93010(v37, type metadata accessor for DetectionRequest);
      if (v40 == 1)
      {
        *&v43[(v51 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v51;
        v52 = __OFADD__(v41++, 1);
        if (v52)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    v53 = sub_1D88BE398(v43, v137, v41, a1);
    v40 = 0;
    v18 = v142;
    v27 = v143;
    v54 = v53[2];
    if (!v54)
    {
      goto LABEL_22;
    }

LABEL_17:
    v55 = sub_1D87F3A18(v54, 0);
    v41 = sub_1D881788C(v147, v55 + ((*(v146 + 80) + 32) & ~*(v146 + 80)), v54, v53);
    sub_1D888A84C(v147[0]);
    if (v41 == v54)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  v56 = swift_slowAlloc();
  v57 = v40;
  v40 = 0;
  v53 = sub_1D88C08D8(v56, v57, a1, sub_1D8A84FEC, 0);
  MEMORY[0x1DA721330](v56, -1, -1);
  v54 = v53[2];
  if (v54)
  {
    goto LABEL_17;
  }

LABEL_22:

  v55 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v137 = 0;
  sub_1D8A305B4(v55, v18);
  v142 = *(v146 + 48);
  v143 = (v146 + 48);
  if (v142(v18, 1, v145) == 1)
  {

    sub_1D87A14E4(v18, &unk_1ECA68B20, &qword_1D8B32EA0);
    v58 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v59 = v129;
    sub_1D8A91FE8(v18, v129, type metadata accessor for DetectionRequest);
    v60 = v138;
    sub_1D8A92F54(v59, v138 + *(v140 + 20), type metadata accessor for DetectionRequest);
    *v60 = v55;
    v58 = sub_1D87C8AA0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v62 = *(v58 + 16);
    v61 = *(v58 + 24);
    if (v62 >= v61 >> 1)
    {
      v58 = sub_1D87C8AA0((v61 > 1), v62 + 1, 1, v58);
    }

    sub_1D8A93010(v59, type metadata accessor for DetectionRequest);
    *(v58 + 16) = v62 + 1;
    sub_1D8A91FE8(v138, v58 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v62, type metadata accessor for CVProcessorTaskDescriptor);
  }

  if (*(v139 + OBJC_IVAR____TtC22VisualIntelligenceCore36StreamingVisualIntelligenceProcessor_legacyParseEnabled) == 1)
  {
    v63 = a1 + 56;
    v64 = 1 << *(a1 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & *(a1 + 56);
    v67 = (v64 + 63) >> 6;

    v68 = 0;
    v69 = v144;
    if (!v66)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v70 = v68;
      while (1)
      {
        sub_1D8A92F54(*(a1 + 48) + *(v146 + 72) * (__clz(__rbit64(v66)) | (v70 << 6)), v69, type metadata accessor for DetectionRequest);
        sub_1D8A91FE8(v69, v27, type metadata accessor for DetectionRequest);
        if (*v27 == 4)
        {
          goto LABEL_58;
        }

        v66 &= v66 - 1;
        sub_1D8A93010(v27, type metadata accessor for DetectionRequest);
        v68 = v70;
        if (v66)
        {
          break;
        }

        do
        {
LABEL_33:
          v70 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          if (v70 >= v67)
          {

            goto LABEL_40;
          }

          v66 = *(v63 + 8 * v70);
          ++v68;
        }

        while (!v66);
      }
    }
  }

LABEL_40:
  while (2)
  {
    v71 = *(a1 + 32);
    v72 = v71 & 0x3F;
    v67 = ((1 << v71) + 63) >> 6;
    v63 = 8 * v67;

    if (v72 <= 0xD)
    {
LABEL_41:
      v144 = v58;
      v138 = &v125;
      v139 = v67;
      MEMORY[0x1EEE9AC00](v73);
      v74 = &v125 - ((v63 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v74, v63);
      v75 = 0;
      v76 = 0;
      v63 = a1 + 56;
      v77 = 1 << *(a1 + 32);
      v78 = -1;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      v58 = v78 & *(a1 + 56);
      v27 = ((v77 + 63) >> 6);
      while (1)
      {
        if (!v58)
        {
          v80 = v76;
          while (1)
          {
            v76 = v80 + 1;
            if (__OFADD__(v80, 1))
            {
              break;
            }

            if (v76 >= v27)
            {
              goto LABEL_55;
            }

            v81 = *(v63 + 8 * v76);
            ++v80;
            if (v81)
            {
              v79 = __clz(__rbit64(v81));
              v58 = (v81 - 1) & v81;
              goto LABEL_51;
            }
          }

          __break(1u);
          goto LABEL_64;
        }

        v79 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
LABEL_51:
        v82 = v79 | (v76 << 6);
        sub_1D8A92F54(*(a1 + 48) + *(v146 + 72) * v82, v37, type metadata accessor for DetectionRequest);
        v67 = *v37;
        sub_1D8A93010(v37, type metadata accessor for DetectionRequest);
        if (v67 == 12)
        {
          *&v74[(v82 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v82;
          v52 = __OFADD__(v75++, 1);
          if (v52)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_55:
      v83 = sub_1D88BE398(v74, v139, v75, a1);
      v58 = v144;
      v84 = v83[2];
      if (!v84)
      {
        break;
      }

      goto LABEL_56;
    }

LABEL_65:
    v73 = swift_stdlib_isStackAllocationSafe();
    if (v73)
    {
      goto LABEL_41;
    }

    v94 = swift_slowAlloc();
    v95 = v137;
    v83 = sub_1D88C08D8(v94, v67, a1, sub_1D8A84FFC, 0);
    v137 = v95;
    MEMORY[0x1DA721330](v94, -1, -1);
    v84 = v83[2];
    if (v84)
    {
LABEL_56:
      v85 = sub_1D87F3A18(v84, 0);
      v86 = sub_1D881788C(v147, v85 + ((*(v146 + 80) + 32) & ~*(v146 + 80)), v84, v83);
      sub_1D888A84C(v147[0]);
      if (v86 == v84)
      {
        goto LABEL_68;
      }

      __break(1u);
LABEL_58:

      v87 = v126;
      sub_1D8A91FE8(v27, v126, type metadata accessor for DetectionRequest);
      v88 = v128;
      sub_1D8A91FE8(v87, v128, type metadata accessor for DetectionRequest);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240, &qword_1D8B1E800);
      v89 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1D8B1AB90;
      sub_1D8A92F54(v88, v90 + v89, type metadata accessor for DetectionRequest);
      v91 = v127;
      sub_1D8A92F54(v88, v127 + *(v140 + 20), type metadata accessor for DetectionRequest);
      *v91 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1D87C8AA0(0, *(v58 + 16) + 1, 1, v58);
      }

      v93 = *(v58 + 16);
      v92 = *(v58 + 24);
      if (v93 >= v92 >> 1)
      {
        v58 = sub_1D87C8AA0((v92 > 1), v93 + 1, 1, v58);
      }

      sub_1D8A93010(v128, type metadata accessor for DetectionRequest);
      *(v58 + 16) = v93 + 1;
      sub_1D8A91FE8(v91, v58 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v93, type metadata accessor for CVProcessorTaskDescriptor);
      continue;
    }

    break;
  }

  v85 = MEMORY[0x1E69E7CC0];
LABEL_68:
  v96 = v133;
  sub_1D8A305B4(v85, v133);
  if (v142(v96, 1, v145) == 1)
  {

    sub_1D87A14E4(v96, &unk_1ECA68B20, &qword_1D8B32EA0);
  }

  else
  {
    v97 = v134;
    sub_1D8A91FE8(v96, v134, type metadata accessor for DetectionRequest);
    v98 = v135;
    sub_1D8A92F54(v97, v135 + *(v140 + 20), type metadata accessor for DetectionRequest);
    *v98 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1D87C8AA0(0, *(v58 + 16) + 1, 1, v58);
    }

    v100 = *(v58 + 16);
    v99 = *(v58 + 24);
    if (v100 >= v99 >> 1)
    {
      v58 = sub_1D87C8AA0((v99 > 1), v100 + 1, 1, v58);
    }

    sub_1D8A93010(v134, type metadata accessor for DetectionRequest);
    *(v58 + 16) = v100 + 1;
    sub_1D8A91FE8(v135, v58 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v100, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v101 = *(a1 + 32);
  v102 = v101 & 0x3F;
  v103 = ((1 << v101) + 63) >> 6;
  v104 = (8 * v103);

  if (v102 <= 0xD)
  {
    goto LABEL_76;
  }

  while (2)
  {
    v105 = swift_stdlib_isStackAllocationSafe();
    if (v105)
    {
LABEL_76:
      v144 = v58;
      v138 = &v125;
      v139 = v103;
      MEMORY[0x1EEE9AC00](v105);
      v106 = &v125 - ((v104 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v106, v104);
      v104 = 0;
      v107 = 0;
      v58 = a1 + 56;
      v108 = 1 << *(a1 + 32);
      v109 = -1;
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      v110 = v109 & *(a1 + 56);
      v111 = (v108 + 63) >> 6;
      while (1)
      {
        if (!v110)
        {
          v113 = v107;
          while (1)
          {
            v107 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              goto LABEL_93;
            }

            if (v107 >= v111)
            {
              goto LABEL_90;
            }

            v114 = *(v58 + 8 * v107);
            ++v113;
            if (v114)
            {
              v112 = __clz(__rbit64(v114));
              v110 = (v114 - 1) & v114;
              goto LABEL_86;
            }
          }
        }

        v112 = __clz(__rbit64(v110));
        v110 &= v110 - 1;
LABEL_86:
        v115 = v112 | (v107 << 6);
        sub_1D8A92F54(*(a1 + 48) + *(v146 + 72) * v115, v37, type metadata accessor for DetectionRequest);
        v103 = *v37;
        sub_1D8A93010(v37, type metadata accessor for DetectionRequest);
        if (v103 == 13)
        {
          *&v106[(v115 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v115;
          v52 = __OFADD__(v104++, 1);
          if (v52)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_90:
      v116 = sub_1D88BE398(v106, v139, v104, a1);
      v58 = v144;
      v117 = v116[2];
      if (!v117)
      {
        break;
      }

      goto LABEL_91;
    }

    v104 = swift_slowAlloc();
    v116 = sub_1D88C08D8(v104, v103, a1, sub_1D8A8500C, 0);
    MEMORY[0x1DA721330](v104, -1, -1);
    v117 = v116[2];
    if (v117)
    {
LABEL_91:
      v103 = sub_1D87F3A18(v117, 0);
      v118 = sub_1D881788C(v147, v103 + ((*(v146 + 80) + 32) & ~*(v146 + 80)), v117, v116);
      sub_1D888A84C(v147[0]);
      if (v118 == v117)
      {
        goto LABEL_97;
      }

      __break(1u);
LABEL_93:
      __break(1u);
      continue;
    }

    break;
  }

  v103 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v119 = v130;
  sub_1D8A305B4(v103, v130);
  if (v142(v119, 1, v145) == 1)
  {

    sub_1D87A14E4(v119, &unk_1ECA68B20, &qword_1D8B32EA0);
    if (!*(v58 + 16))
    {
      goto LABEL_105;
    }
  }

  else
  {
    v120 = v131;
    sub_1D8A91FE8(v119, v131, type metadata accessor for DetectionRequest);
    v121 = v132;
    sub_1D8A92F54(v120, v132 + *(v140 + 20), type metadata accessor for DetectionRequest);
    *v121 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_1D87C8AA0(0, *(v58 + 16) + 1, 1, v58);
    }

    v123 = *(v58 + 16);
    v122 = *(v58 + 24);
    if (v123 >= v122 >> 1)
    {
      v58 = sub_1D87C8AA0((v122 > 1), v123 + 1, 1, v58);
    }

    sub_1D8A93010(v131, type metadata accessor for DetectionRequest);
    *(v58 + 16) = v123 + 1;
    sub_1D8A91FE8(v132, v58 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v123, type metadata accessor for CVProcessorTaskDescriptor);
    if (!*(v58 + 16))
    {
LABEL_105:

      return 0;
    }
  }

  return v58;
}

uint64_t sub_1D8A8501C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = type metadata accessor for GroundedParseClassificationsResult(0);
  v9[10] = v10;
  v9[11] = *(v10 - 8);
  v9[12] = swift_task_alloc();
  v11 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v9[13] = v11;
  v9[14] = *(v11 - 8);
  v9[15] = swift_task_alloc();
  v12 = type metadata accessor for ParseDetectorResult(0);
  v9[16] = v12;
  v9[17] = *(v12 - 8);
  v9[18] = swift_task_alloc();
  v13 = type metadata accessor for GroundedParseDetectorResult(0);
  v9[19] = v13;
  v9[20] = *(v13 - 8);
  v9[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A851FC, v8, 0);
}

uint64_t sub_1D8A851FC()
{
  v1 = *(v0 + 40);
  v2 = *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20);
  *(v0 + 240) = v2;
  v3 = *(v1 + v2);
  if (v3 > 0xB)
  {
    if (v3 == 12)
    {
      v25 = *v1;
      v26 = swift_task_alloc();
      *(v0 + 208) = v26;
      *v26 = v0;
      v26[1] = sub_1D8A85BC4;
      v27 = *(v0 + 64);
      v28 = *(v0 + 56);
      v30 = *(v0 + 24);
      v29 = *(v0 + 32);

      return sub_1D8A8A718(v25, v29, v30, v28, v27);
    }

    else
    {
      if (v3 != 13)
      {
LABEL_12:
        v16 = *(v0 + 16);
        sub_1D8A92F54(v1 + v2, v16, type metadata accessor for DetectionRequest);
        *(v16 + *(type metadata accessor for DetectionResult(0) + 20)) = MEMORY[0x1E69E7CC0];

        v17 = *(v0 + 8);

        return v17();
      }

      v10 = *v1;
      v11 = swift_task_alloc();
      *(v0 + 224) = v11;
      *v11 = v0;
      v11[1] = sub_1D8A85F20;
      v12 = *(v0 + 64);
      v13 = *(v0 + 56);
      v15 = *(v0 + 24);
      v14 = *(v0 + 32);

      return sub_1D8A8CF60(v10, v14, v15, v13, v12);
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 == 4)
      {
        v4 = swift_task_alloc();
        *(v0 + 192) = v4;
        *v4 = v0;
        v4[1] = sub_1D8A85868;
        v5 = *(v0 + 64);
        v6 = *(v0 + 56);
        v8 = *(v0 + 24);
        v7 = *(v0 + 32);

        return sub_1D8A8F5B8(v4, v7, v8, v6, v5);
      }

      goto LABEL_12;
    }

    v18 = *v1;
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_1D8A8550C;
    v20 = *(v0 + 64);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v24 = *(v0 + 24);
    v23 = *(v0 + 32);

    return sub_1D8A86280(v18, v23, v21, v24, v22, v20);
  }
}

uint64_t sub_1D8A8550C(uint64_t a1)
{
  v3 = *v2;
  v3[23] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1D8A85678, v6, 0);
  }
}

uint64_t sub_1D8A85678()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 160);
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D87F43E0(0, v2, 0);
    v4 = v15;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 168);
      sub_1D8A92F54(v5, v7, type metadata accessor for GroundedParseDetectorResult);
      v8 = swift_allocBox();
      sub_1D8A91FE8(v7, v9, type metadata accessor for GroundedParseDetectorResult);
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F43E0((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      *(v15 + 8 * v11 + 32) = v8 | 0x1000000000000000;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 16);
  sub_1D8A92F54(*(v0 + 40) + *(v0 + 240), v12, type metadata accessor for DetectionRequest);
  *(v12 + *(type metadata accessor for DetectionResult(0) + 20)) = v4;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D8A85868(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1D8A859D4, v6, 0);
  }
}

uint64_t sub_1D8A859D4()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D87F43E0(0, v2, 0);
    v4 = v15;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 144);
      sub_1D8A92F54(v5, v7, type metadata accessor for ParseDetectorResult);
      v8 = swift_allocBox();
      sub_1D8A91FE8(v7, v9, type metadata accessor for ParseDetectorResult);
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F43E0((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      *(v15 + 8 * v11 + 32) = v8 | 0x4000000000000000;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 16);
  sub_1D8A92F54(*(v0 + 40) + *(v0 + 240), v12, type metadata accessor for DetectionRequest);
  *(v12 + *(type metadata accessor for DetectionResult(0) + 20)) = v4;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D8A85BC4(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1D8A85D30, v6, 0);
  }
}

uint64_t sub_1D8A85D30()
{
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D87F43E0(0, v2, 0);
    v4 = v15;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 120);
      sub_1D8A92F54(v5, v7, type metadata accessor for GroundedParseEmbeddingsResult);
      v8 = swift_allocBox();
      sub_1D8A91FE8(v7, v9, type metadata accessor for GroundedParseEmbeddingsResult);
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F43E0((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      *(v15 + 8 * v11 + 32) = v8 | 0xC000000000000000;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 16);
  sub_1D8A92F54(*(v0 + 40) + *(v0 + 240), v12, type metadata accessor for DetectionRequest);
  *(v12 + *(type metadata accessor for DetectionResult(0) + 20)) = v4;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D8A85F20(uint64_t a1)
{
  v3 = *v2;
  v3[29] = a1;

  if (v1)
  {

    v4 = v3[1];

    return v4();
  }

  else
  {
    v6 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1D8A8608C, v6, 0);
  }
}

uint64_t sub_1D8A8608C()
{
  v1 = *(v0 + 232);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D87F43E0(0, v2, 0);
    v4 = v15;
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    do
    {
      v7 = *(v0 + 96);
      sub_1D8A92F54(v5, v7, type metadata accessor for GroundedParseClassificationsResult);
      v8 = swift_allocBox();
      sub_1D8A91FE8(v7, v9, type metadata accessor for GroundedParseClassificationsResult);
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D87F43E0((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      *(v15 + 8 * v11 + 32) = v8 | 0xD000000000000000;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 16);
  sub_1D8A92F54(*(v0 + 40) + *(v0 + 240), v12, type metadata accessor for DetectionRequest);
  *(v12 + *(type metadata accessor for DetectionResult(0) + 20)) = v4;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D8A86280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  v8 = type metadata accessor for GroundedParseDetectorResult(0);
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v9 = sub_1D8B13240();
  v7[34] = v9;
  v7[35] = *(v9 - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v10 = type metadata accessor for DetectionRequest(0);
  v7[39] = v10;
  v7[40] = *(v10 - 8);
  v7[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v7[42] = swift_task_alloc();
  v11 = sub_1D8B13C20();
  v7[43] = v11;
  v7[44] = *(v11 - 8);
  v7[45] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632C0, &qword_1D8B23B00);
  v7[46] = v12;
  v7[47] = *(v12 - 8);
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v13 = sub_1D8B13AF0();
  v7[51] = v13;
  v7[52] = *(v13 - 8);
  v7[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A86598, v6, 0);
}

uint64_t sub_1D8A86598()
{
  v198 = v0;
  *(v0 + 160) = *(v0 + 184);
  v1 = *(v0 + 424);
  v2 = *(v0 + 208);
  v181 = *(v0 + 192);
  v186 = *(v0 + 216);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67590, &qword_1D8B33AE0);
  v4 = sub_1D881CF20(&unk_1EE0E39C0, &qword_1ECA67590, &qword_1D8B33AE0, MEMORY[0x1E69E6340]);
  v5 = sub_1D8A31004(v181, *(&v181 + 1), v3, v186, v4, *(&v186 + 1));
  v6 = v2;
  sub_1D8B13AE0();
  v7 = swift_task_alloc();
  *(v7 + 16) = v186;
  *(v7 + 32) = v181;
  v165 = v5;
  v8 = sub_1D8821218(sub_1D8A96BB8, v7, v5);

  v9 = MEMORY[0x1E69E7CC0];
  v167 = v8;
  v182 = v8[2];
  if (v182)
  {
    v10 = 0;
    v178 = *(v0 + 376);
    v169 = *(v0 + 368);
    v11 = *(v0 + 352);
    v12 = (v11 + 32);
    v13 = MEMORY[0x1E69E7CC0];
    while (v10 < v8[2])
    {
      v14 = *(v0 + 400);
      v187 = v10;
      sub_1D87A0E38(v8 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v10, v14, &qword_1ECA632C0, &qword_1D8B23B00);
      v15 = *(v14 + *(v169 + 48));
      v16 = *(v15 + 16);
      if (v16)
      {
        v174 = v13;
        v194 = v9;
        sub_1D87F4EB4(0, v16, 0);
        v17 = v9;
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) - 8);
        v19 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
        v20 = *(v18 + 72);
        do
        {
          sub_1D8A889C4(v19, *(v0 + 400), *(v0 + 360));
          v194 = v17;
          v22 = *(v17 + 16);
          v21 = *(v17 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1D87F4EB4((v21 > 1), v22 + 1, 1);
            v17 = v194;
          }

          v23 = *(v0 + 360);
          v24 = *(v0 + 344);
          *(v17 + 16) = v22 + 1;
          (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, v23, v24);
          v19 += v20;
          --v16;
        }

        while (v16);
        v13 = v174;
        v8 = v167;
      }

      else
      {
        v17 = v9;
      }

      sub_1D87A14E4(*(v0 + 400), &qword_1ECA632C0, &qword_1D8B23B00);
      v25 = *(v17 + 16);
      v1 = v13[2];
      v26 = v1 + v25;
      if (__OFADD__(v1, v25))
      {
        goto LABEL_84;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v26 > v13[3] >> 1)
      {
        if (v1 <= v26)
        {
          v28 = v1 + v25;
        }

        else
        {
          v28 = v1;
        }

        v13 = sub_1D87C9C48(isUniquelyReferenced_nonNull_native, v28, 1, v13);
      }

      v9 = MEMORY[0x1E69E7CC0];
      if (*(v17 + 16))
      {
        if ((v13[3] >> 1) - v13[2] < v25)
        {
          goto LABEL_86;
        }

        swift_arrayInitWithCopy();

        if (v25)
        {
          v29 = v13[2];
          v30 = __OFADD__(v29, v25);
          v31 = v29 + v25;
          if (v30)
          {
            goto LABEL_87;
          }

          v13[2] = v31;
        }
      }

      else
      {

        if (v25)
        {
          goto LABEL_85;
        }
      }

      v10 = v187 + 1;
      if (v187 + 1 == v182)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_26:
  *(v0 + 432) = v13;
  v12 = *(*(v0 + 224) + 40);
  v12(&v194, *(v0 + 216));
  LODWORD(v1) = v197;
  if (qword_1EE0E54C0 != -1)
  {
LABEL_88:
    swift_once();
  }

  v32 = qword_1EE0E54C8;
  v175 = v13;
  if (sub_1D8B0AAA4() & 1) != 0 || v1 && (v51 = type metadata accessor for InternalSettings(), v52 = sub_1D8B15940(), LOBYTE(v51) = [v51 BOOLForKey:v52 defaultValue:0], v52, (v51))
  {
    v158 = v32;
    v33 = v8[2];
    v34 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      v161 = v12;
      v35 = *(v0 + 376);
      v36 = *(v0 + 280);
      v194 = MEMORY[0x1E69E7CC0];
      sub_1D87F4D00(0, v33, 0);
      v34 = v194;
      v37 = v8 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v179 = *(v35 + 72);
      v170 = (v36 + 8);
      do
      {
        v188 = v34;
        v38 = *(v0 + 384);
        v39 = *(v0 + 392);
        v40 = *(v0 + 272);
        sub_1D87A0E38(v37, v39, &qword_1ECA632C0, &qword_1D8B23B00);
        sub_1D87A0E38(v39, v38, &qword_1ECA632C0, &qword_1D8B23B00);

        sub_1D8B131E0();
        (*v170)(v38, v40);
        sub_1D8B15AA0();
        v41 = sub_1D8B15BB0();
        v43 = v42;
        v45 = v44;
        v47 = v46;

        sub_1D87A14E4(v39, &qword_1ECA632C0, &qword_1D8B23B00);
        v34 = v188;
        v194 = v188;
        v49 = *(v188 + 16);
        v48 = *(v188 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1D87F4D00((v48 > 1), v49 + 1, 1);
          v34 = v194;
        }

        *(v34 + 16) = v49 + 1;
        v50 = (v34 + 32 * v49);
        v50[4] = v41;
        v50[5] = v43;
        v50[6] = v45;
        v50[7] = v47;
        v37 += v179;
        --v33;
      }

      while (v33);
      v13 = v175;
      v12 = v161;
    }

    *(v0 + 176) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688C8, &qword_1D8B3AF80);
    sub_1D881CF20(&qword_1ECA688D0, &qword_1ECA688C8, &qword_1D8B3AF80, MEMORY[0x1E69E6328]);
    sub_1D898C868();
    v58 = sub_1D8B15C30();
    v60 = v59;

    v61 = sub_1D881BE2C(150, v58, v60);
    v162 = v62;
    v163 = v61;
    v160 = v63;
    v57 = v64;

    v32 = v158;
  }

  else
  {
    v53 = sub_1D8B16480();
    v162 = v54;
    v163 = v53;
    v160 = v55;
    v57 = v56;
  }

  v65 = *(v0 + 216);
  v66 = *(v0 + 224);
  *(v0 + 440) = v57;
  (v12)(&v194, v65, v66);
  v159 = v57;
  if (*(v32 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno) & 1) != 0 || (v197 & 1) != 0 && (v80 = type metadata accessor for InternalSettings(), v81 = sub_1D8B15940(), LOBYTE(v80) = [v80 BOOLForKey:v81 defaultValue:0], v81, (v80))
  {
    v180 = *(v0 + 336);
    v189 = *(v0 + 208);
    (v12)(&v194, *(v0 + 216), *(v0 + 224));
    v67 = v196;
    v194 = 0;
    v195 = 0xE000000000000000;
    sub_1D8B16720();

    v194 = 0xD00000000000001FLL;
    v195 = 0x80000001D8B48520;
    v68 = MEMORY[0x1DA71EF10](v163, v162, v160, v57);
    v69 = v57;
    MEMORY[0x1DA71EFA0](v68);

    v70 = v194;
    v71 = v195;
    *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688B0, &qword_1D8B3AF68);
    *(v0 + 72) = sub_1D8A96C18();
    *(v0 + 40) = v175;
    *(v0 + 80) = 3;
    *(v0 + 16) = v70;
    *(v0 + 24) = v71;
    *(v0 + 32) = v67;
    v194 = 0;
    v195 = 0xE000000000000000;

    sub_1D8B16720();

    v194 = 0xD000000000000014;
    v195 = 0x80000001D8B48540;
    v72 = MEMORY[0x1DA71EF10](v163, v162, v160, v69);
    MEMORY[0x1DA71EFA0](v72);

    v73 = v194;
    v74 = v195;
    v75 = sub_1D8B15EA0();
    (*(*(v75 - 8) + 56))(v180, 1, 1, v75);
    sub_1D88C4BD0(v0 + 16, v0 + 88);
    v76 = swift_allocObject();
    *(v76 + 16) = 0;
    *(v76 + 24) = 0;
    v77 = *(v0 + 136);
    *(v76 + 64) = *(v0 + 120);
    *(v76 + 80) = v77;
    *(v76 + 96) = *(v0 + 152);
    v78 = *(v0 + 104);
    *(v76 + 32) = *(v0 + 88);
    *(v76 + 48) = v78;
    *(v76 + 104) = v73;
    *(v76 + 112) = v74;
    *(v76 + 120) = v67;
    *(v76 + 128) = v189;
    *(v76 + 136) = v167;
    v79 = v189;
    v13 = v175;
    sub_1D8891CA0(0, 0, v180, &unk_1D8B3AF78, v76);

    sub_1D87DC9A0(v0 + 16);
  }

  else
  {
  }

  v82 = *(v165 + 16);
  if (v82)
  {
    v83 = *(v0 + 320);
    v84 = *(v0 + 328);
    v85 = *(*(v0 + 312) + 20);
    v86 = v165 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v171 = *(v83 + 72);
    v87 = MEMORY[0x1E69E7CC0];
    do
    {
      v190 = v82;
      v183 = v87;
      sub_1D8A92F54(v86, *(v0 + 328), type metadata accessor for DetectionRequest);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
      v89 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
      v90 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_1D8B1AB90;
      sub_1D8A92F54(v84 + v85, v91 + v90, type metadata accessor for DetectionRequest.Originator);
      sub_1D8AD1E10(v91);
      v92 = v84;
      v94 = v93;
      swift_setDeallocating();
      sub_1D8A93010(v91 + v90, type metadata accessor for DetectionRequest.Originator);
      swift_deallocClassInstance();
      v95 = *(v94 + 16);

      v96 = *(v0 + 328);
      if (v95)
      {
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1D8B1AB90;
        sub_1D8A92F54(v92 + v85, v97 + v90, type metadata accessor for DetectionRequest.Originator);
        sub_1D8AD1E10(v97);
        v99 = v98;
        swift_setDeallocating();
        sub_1D8A93010(v97 + v90, type metadata accessor for DetectionRequest.Originator);
        swift_deallocClassInstance();
        v100 = sub_1D87C4B18(v99);

        sub_1D8A93010(v96, type metadata accessor for DetectionRequest);
        v87 = v183;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1D87C9C24(0, v183[2] + 1, 1, v183);
        }

        v102 = v87[2];
        v101 = v87[3];
        v84 = v92;
        if (v102 >= v101 >> 1)
        {
          v87 = sub_1D87C9C24((v101 > 1), v102 + 1, 1, v87);
        }

        v88 = v190;
        v87[2] = v102 + 1;
        v87[v102 + 4] = v100;
      }

      else
      {
        sub_1D8A93010(*(v0 + 328), type metadata accessor for DetectionRequest);
        v84 = v92;
        v87 = v183;
        v88 = v190;
      }

      v86 += v171;
      v82 = v88 - 1;
    }

    while (v82);

    v13 = v175;
  }

  else
  {

    v87 = MEMORY[0x1E69E7CC0];
  }

  sub_1D87C3200(v87);

  if (v13[2])
  {
    v103 = *(v0 + 424);
    v104 = *(v0 + 232);
    v106 = *(v0 + 192);
    v105 = *(v0 + 200);
    v107 = sub_1D8A92E28(&qword_1EE0E9818, type metadata accessor for StreamingVisualIntelligenceProcessor, &unk_1D8B3AB80);
    v108 = swift_task_alloc();
    *(v0 + 448) = v108;
    *(v108 + 16) = *(v0 + 216);
    *(v108 + 32) = v104;
    *(v108 + 40) = v106;
    *(v108 + 48) = v103;
    *(v108 + 56) = v13;
    *(v108 + 64) = v163;
    *(v108 + 72) = v162;
    *(v108 + 80) = v160;
    *(v108 + 88) = v159;
    *(v108 + 96) = v105;
    v109 = swift_task_alloc();
    *(v0 + 456) = v109;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688A8, &qword_1D8B3AF60);
    *v109 = v0;
    v109[1] = sub_1D8A87AB8;

    return MEMORY[0x1EEE6DE38](v0 + 168, v104, v107, 0xD000000000000039, 0x80000001D8B484E0, sub_1D8A96BD8, v108, v110);
  }

  else
  {

    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v111 = sub_1D8B151E0();
    __swift_project_value_buffer(v111, qword_1EE0E4520);
    v112 = MEMORY[0x1E69E7CC0];

    v113 = sub_1D8B151C0();
    v114 = sub_1D8B16200();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v193 = v116;
      *v115 = 134218242;
      *(v115 + 4) = *(v112 + 16);

      *(v115 + 12) = 2080;
      v117 = *(v112 + 16);
      if (v117)
      {
        v172 = v116;
        v176 = v114;
        v184 = v113;
        v118 = *(v0 + 280);
        v119 = *(v0 + 248);
        v194 = v112;
        sub_1D87F3EE0(0, v117, 0);
        v120 = v194;
        v121 = v112 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
        v191 = *(v119 + 72);
        do
        {
          v122 = *(v0 + 304);
          v123 = *(v0 + 264);
          v124 = *(v0 + 272);
          sub_1D8A92F54(v121, v123, type metadata accessor for GroundedParseDetectorResult);
          (*(v118 + 16))(v122, v123, v124);
          sub_1D8A93010(v123, type metadata accessor for GroundedParseDetectorResult);
          v194 = v120;
          v126 = *(v120 + 16);
          v125 = *(v120 + 24);
          if (v126 >= v125 >> 1)
          {
            sub_1D87F3EE0((v125 > 1), v126 + 1, 1);
            v120 = v194;
          }

          v127 = *(v0 + 304);
          v128 = *(v0 + 272);
          *(v120 + 16) = v126 + 1;
          (*(v118 + 32))(v120 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v126, v127, v128);
          v121 += v191;
          --v117;
        }

        while (v117);
        v112 = MEMORY[0x1E69E7CC0];
        v113 = v184;
        v114 = v176;
        v116 = v172;
      }

      else
      {
        v120 = v112;
      }

      v129 = MEMORY[0x1DA71F1E0](v120, *(v0 + 272));
      v131 = v130;

      v132 = sub_1D89AC714(v129, v131, &v193);

      *(v115 + 14) = v132;
      _os_log_impl(&dword_1D8783000, v113, v114, "VLU: parse returned %ld results: %s", v115, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1DA721330](v116, -1, -1);
      MEMORY[0x1DA721330](v115, -1, -1);
    }

    else
    {
    }

    v177 = *(v112 + 16);
    if (v177)
    {
      v133 = 0;
      v134 = *(v0 + 248);
      v173 = *(v0 + 240);
      v166 = *(v134 + 72);
      v168 = v112 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
      v164 = *(v0 + 280);
      do
      {
        v135 = *(v0 + 256);
        v185 = v133;
        sub_1D8A92F54(v168 + v133 * v166, v135, type metadata accessor for GroundedParseDetectorResult);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
        v136 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
        v137 = (*(v136 + 80) + 32) & ~*(v136 + 80);
        v138 = swift_allocObject();
        *(v138 + 16) = xmmword_1D8B1AB90;
        v139 = *(v173 + 56);
        sub_1D8A92F54(v135 + v139, v138 + v137, type metadata accessor for DetectionRequest.Originator);
        sub_1D8AD1FE4(v138);
        v141 = v140;
        swift_setDeallocating();
        sub_1D8A93010(v138 + v137, type metadata accessor for DetectionRequest.Originator);
        swift_deallocClassInstance();
        v142 = *(v141 + 16);

        if (v142)
        {
          v143 = *(v0 + 272);
          v144 = swift_allocObject();
          *(v144 + 16) = xmmword_1D8B1AB90;
          sub_1D8A92F54(v135 + v139, v144 + v137, type metadata accessor for DetectionRequest.Originator);
          sub_1D8AD1FE4(v144);
          v146 = v145;
          swift_setDeallocating();
          sub_1D8A93010(v144 + v137, type metadata accessor for DetectionRequest.Originator);
          swift_deallocClassInstance();
          v147 = *(v146 + 16);
          v148 = sub_1D8A92E28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v194 = MEMORY[0x1DA71F530](v147, v143, v148);
          v149 = *(v146 + 16);
          if (v149)
          {
            v150 = v146 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
            v192 = *(v164 + 72);
            v151 = *(v164 + 16);
            do
            {
              v153 = *(v0 + 288);
              v152 = *(v0 + 296);
              v154 = *(v0 + 272);
              v151(v153, v150, v154);
              sub_1D87FC15C(v152, v153);
              (*(v164 + 8))(v152, v154);
              v150 += v192;
              --v149;
            }

            while (v149);
          }
        }

        v133 = v185 + 1;
        sub_1D8A93010(*(v0 + 256), type metadata accessor for GroundedParseDetectorResult);
      }

      while (v185 + 1 != v177);
    }

    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));

    v155 = *(v0 + 8);
    v156 = MEMORY[0x1E69E7CC0];

    return v155(v156);
  }
}

uint64_t sub_1D8A87AB8()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 232);

  if (v0)
  {
    v4 = sub_1D8A88334;
  }

  else
  {
    v4 = sub_1D8A87C40;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D8A87C40()
{
  v61 = v0;
  v1 = v0[21];
  if (qword_1EE0E4518 != -1)
  {
    swift_once();
  }

  v2 = sub_1D8B151E0();
  __swift_project_value_buffer(v2, qword_1EE0E4520);

  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  v47 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v59 = v6;
    *v5 = 134218242;
    *(v5 + 4) = *(v1 + 16);

    *(v5 + 12) = 2080;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v51 = v6;
      v53 = v4;
      v55 = v3;
      v9 = v0[35];
      v10 = v0[31];
      v60 = MEMORY[0x1E69E7CC0];
      sub_1D87F3EE0(0, v7, 0);
      v8 = v60;
      v11 = v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v57 = *(v10 + 72);
      do
      {
        v12 = v0[38];
        v13 = v0[33];
        v14 = v0[34];
        sub_1D8A92F54(v11, v13, type metadata accessor for GroundedParseDetectorResult);
        (*(v9 + 16))(v12, v13, v14);
        sub_1D8A93010(v13, type metadata accessor for GroundedParseDetectorResult);
        v60 = v8;
        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D87F3EE0((v15 > 1), v16 + 1, 1);
          v8 = v60;
        }

        v17 = v0[38];
        v18 = v0[34];
        *(v8 + 16) = v16 + 1;
        (*(v9 + 32))(v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v17, v18);
        v11 += v57;
        --v7;
      }

      while (v7);
      v3 = v55;
      v4 = v53;
      v6 = v51;
    }

    v19 = MEMORY[0x1DA71F1E0](v8, v0[34]);
    v21 = v20;

    v22 = sub_1D89AC714(v19, v21, &v59);

    *(v5 + 14) = v22;
    _os_log_impl(&dword_1D8783000, v3, v4, "VLU: parse returned %ld results: %s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v54 = *(v1 + 16);
  if (v54)
  {
    v23 = 0;
    v24 = v0[31];
    v52 = v0[30];
    v49 = *(v24 + 72);
    v50 = v1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v48 = v0[35];
    do
    {
      v25 = v0[32];
      v56 = v23;
      sub_1D8A92F54(v50 + v23 * v49, v25, type metadata accessor for GroundedParseDetectorResult);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E8, &qword_1D8B1E7A8);
      v26 = *(type metadata accessor for DetectionRequest.Originator(0) - 8);
      v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D8B1AB90;
      v29 = *(v52 + 56);
      sub_1D8A92F54(v25 + v29, v28 + v27, type metadata accessor for DetectionRequest.Originator);
      sub_1D8AD1FE4(v28);
      v31 = v30;
      swift_setDeallocating();
      sub_1D8A93010(v28 + v27, type metadata accessor for DetectionRequest.Originator);
      swift_deallocClassInstance();
      v32 = *(v31 + 16);

      if (v32)
      {
        v33 = v0[34];
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D8B1AB90;
        sub_1D8A92F54(v25 + v29, v34 + v27, type metadata accessor for DetectionRequest.Originator);
        sub_1D8AD1FE4(v34);
        v36 = v35;
        swift_setDeallocating();
        sub_1D8A93010(v34 + v27, type metadata accessor for DetectionRequest.Originator);
        swift_deallocClassInstance();
        v37 = *(v36 + 16);
        v38 = sub_1D8A92E28(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v60 = MEMORY[0x1DA71F530](v37, v33, v38);
        v39 = *(v36 + 16);
        if (v39)
        {
          v40 = v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
          v58 = *(v48 + 72);
          v41 = *(v48 + 16);
          do
          {
            v43 = v0[36];
            v42 = v0[37];
            v44 = v0[34];
            v41(v43, v40, v44);
            sub_1D87FC15C(v42, v43);
            (*(v48 + 8))(v42, v44);
            v40 += v58;
            --v39;
          }

          while (v39);
        }
      }

      v23 = v56 + 1;
      sub_1D8A93010(v0[32], type metadata accessor for GroundedParseDetectorResult);
    }

    while (v56 + 1 != v54);
  }

  (*(v0[52] + 8))(v0[53], v0[51]);

  v45 = v0[1];

  return v45(v47);
}

uint64_t sub_1D8A88334()
{
  (*(v0[52] + 8))(v0[53], v0[51]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D8A8844C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v36 = a6;
  v30 = type metadata accessor for DetectionRequest.Originator(0);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13240();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DetectionRequest(0);
  v17 = *(a1 + *(v16 + 24));
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v35 = a3;
  v18 = sub_1D882170C(sub_1D8A96F7C, v31, v17);
  if (*(v18 + 16) == 1 && (v19 = *(v18 + 32), , , *(v19 + 16)))
  {
    sub_1D8A92F54(a1 + *(v16 + 20), v12, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v20 = v29;
      v21 = *(v28 + 32);
      v21(v15, v12, v29);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632C0, &qword_1D8B23B00);
      v23 = *(v22 + 48);
      v24 = v36;
      v21(v36, v15, v20);
      *&v24[v23] = v19;
      return (*(*(v22 - 8) + 56))(v24, 0, 1, v22);
    }

    sub_1D8A93010(v12, type metadata accessor for DetectionRequest.Originator);
  }

  else
  {
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632C0, &qword_1D8B23B00);
  return (*(*(v26 - 8) + 56))(v36, 1, 1, v26);
}

void sub_1D8A88724(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a5@<X8>)
{
  v20 = a2;
  v21 = a3;
  v7 = type metadata accessor for DetectionRequest.Annotation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  sub_1D8A92F54(a1, v9, type metadata accessor for DetectionRequest.Annotation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D881F6FC(v9, v13, &qword_1ECA67750, &unk_1D8B1E0C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63290, &unk_1D8B1E850);
    v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D8B1AB90;
    sub_1D87A0E38(v13, v15 + v14, &qword_1ECA67750, &unk_1D8B1E0C0);
    v22 = v15;

    sub_1D88F6314(v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632D0, &qword_1D8B3AFB0);
    v18 = sub_1D881CF20(&qword_1ECA688E0, &qword_1ECA632D0, &qword_1D8B3AFB0, MEMORY[0x1E69E6340]);
    v19 = sub_1D8A96F9C(v20, v17, v21, v18);
    sub_1D87A14E4(v13, &qword_1ECA67750, &unk_1D8B1E0C0);
  }

  else
  {
    sub_1D8A93010(v9, type metadata accessor for DetectionRequest.Annotation);
    v19 = 0;
  }

  *a5 = v19;
}

uint64_t sub_1D8A889C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v30 = a2;
  v4 = sub_1D8B13B50();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D8B13240();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) + 40));
  v8 = v7[1];
  v32 = *v7;
  v33 = v8;
  v9 = v7[3];
  v34 = v7[2];
  v35 = v9;
  Corners.bounds.getter();
  v10 = sub_1D88F8978();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 36);
    v13 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *v12;
      LOBYTE(v32) = *(v12 - 4);
      v16 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D87C8284(0, *(v14 + 2) + 1, 1, v14);
      }

      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        v14 = sub_1D87C8284((v19 > 1), v20 + 1, 1, v14);
      }

      *(v14 + 2) = v20 + 1;
      v21 = &v14[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1D87C892C(0, *(v13 + 2) + 1, 1, v13);
      }

      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      if (v23 >= v22 >> 1)
      {
        v13 = sub_1D87C892C((v22 > 1), v23 + 1, 1, v13);
      }

      *(v13 + 2) = v23 + 1;
      *&v13[4 * v23 + 32] = v15;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  (*(v26 + 16))(v27, v30, v28);
  sub_1D8B13B30();
  return sub_1D8B13C10();
}

uint64_t sub_1D8A88CC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 312) = a8;
  *(v9 + 320) = a9;
  *(v9 + 304) = a1;
  *(v9 + 288) = a6;
  *(v9 + 296) = a7;
  *(v9 + 280) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  *(v9 + 328) = v10;
  *(v9 + 336) = *(v10 - 8);
  *(v9 + 344) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632C0, &qword_1D8B23B00);
  *(v9 + 352) = v11;
  *(v9 + 360) = *(v11 - 8);
  *(v9 + 368) = swift_task_alloc();
  *(v9 + 376) = swift_task_alloc();
  *(v9 + 384) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v9 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A88E3C, 0, 0);
}

uint64_t sub_1D8A88E3C()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 392);
  v2 = qword_1ECA675B0;
  *(v0 + 400) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A88F34, v2, 0);
}

uint64_t sub_1D8A88F34()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 280);
  v3 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B1F4(v2, v3, v4);

  sub_1D8A93010(v1, type metadata accessor for BundleClassification.ClassificationType);

  return MEMORY[0x1EEE6DFA0](sub_1D8A88FF4, 0, 0);
}

uint64_t sub_1D8A88FF4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 312);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  *(v0 + 232) = v2;
  *(v0 + 272) = 0;
  *(v0 + 208) = v4;
  *(v0 + 216) = v5;
  *(v0 + 224) = v3;
  v6 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D8A8908C, v1, 0);
}

uint64_t sub_1D8A8908C()
{
  sub_1D8A3B1F4(v0 + 208, 0x796669746E656469, 0xE800000000000000);
  sub_1D87DC9A0(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D8A89114, 0, 0);
}

uint64_t sub_1D8A89114()
{
  v1 = *(v0 + 320);
  v47 = sub_1D8A56908();
  *(v0 + 408) = v47;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 360);
    v51 = *(v0 + 352);
    v4 = *(v0 + 320) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v49 = *(v3 + 72);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = *(v0 + 368);
      v9 = *(v0 + 376);
      sub_1D87A0E38(v4, v9, &qword_1ECA632C0, &qword_1D8B23B00);
      sub_1D881F6FC(v9, v10, &qword_1ECA632C0, &qword_1D8B23B00);
      v11 = *(v10 + *(v51 + 48));
      v12 = sub_1D8B13240();
      isUniquelyReferenced_nonNull_native = (*(*(v12 - 8) + 8))(v10, v12);
      v13 = *(v11 + 16);
      v14 = v5[2];
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](isUniquelyReferenced_nonNull_native, v7, v8);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= v5[3] >> 1)
      {
        if (*(v11 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        isUniquelyReferenced_nonNull_native = sub_1D87C8C58(isUniquelyReferenced_nonNull_native, v16, 1, v5);
        v5 = isUniquelyReferenced_nonNull_native;
        if (*(v11 + 16))
        {
LABEL_14:
          if ((v5[3] >> 1) - v5[2] < v13)
          {
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();

          if (v13)
          {
            v17 = v5[2];
            v18 = __OFADD__(v17, v13);
            v19 = v17 + v13;
            if (v18)
            {
              goto LABEL_33;
            }

            v5[2] = v19;
          }

          goto LABEL_4;
        }
      }

      if (v13)
      {
        goto LABEL_31;
      }

LABEL_4:
      v4 += v49;
      if (!--v2)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:
  *(v0 + 416) = v5;
  v20 = v5[2];
  *(v0 + 424) = v20;
  if (v20)
  {
    v21 = *(v0 + 336);
    v22 = *(v0 + 344);
    v23 = *(v0 + 328);
    v24 = *(v23 + 40);
    *(v0 + 108) = v24;
    v25 = (v22 + v24);
    LODWORD(v24) = *(v21 + 80);
    *(v0 + 204) = v24;
    v26 = *(v23 + 44);
    *(v0 + 276) = v26;
    *(v0 + 432) = *(v21 + 72);
    *(v0 + 440) = 0;
    sub_1D87A0E38(v5 + ((v24 + 32) & ~v24), v22, &qword_1ECA67750, &unk_1D8B1E0C0);
    v50 = v25[1];
    v52 = *v25;
    v46 = v25[2];
    v48 = v25[3];
    v27 = *(v22 + v26);
    if (*(v27 + 16))
    {
      LOBYTE(isUniquelyReferenced_nonNull_native) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v27 + 32));
      if (*(v0 + 105) == 181)
      {
        goto LABEL_34;
      }

      v28 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v30 = v29;
    }

    else
    {
      v30 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E75;
    }

    v33 = *(v0 + 400);
    v34 = *(v0 + 344);
    v35 = *(v0 + 304);
    v37 = *(v0 + 288);
    v36 = *(v0 + 296);
    v38 = *(v0 + 408);
    sub_1D87A14E4(v34, &qword_1ECA67750, &unk_1D8B1E0C0);
    *(v0 + 448) = 0;
    v39 = vbslq_s8(vcgeq_f64(v50, v52), v50, v52);
    v40 = vbslq_s8(vcgeq_f64(v46, v39), v46, v39);
    v41 = vbslq_s8(vcgtq_f64(v52, v50), v50, v52);
    v42 = vbslq_s8(vcgtq_f64(v41, v46), v46, v41);
    v43 = vbslq_s8(vcgtq_f64(v42, v48), v48, v42);
    *(v0 + 16) = v43;
    *(v0 + 32) = vsubq_f64(vbslq_s8(vcgeq_f64(v48, v40), v48, v40), v43);
    *(v0 + 48) = 0x3F689374BC6A7EFALL;
    *(v0 + 56) = v38;
    *(v0 + 64) = v28;
    *(v0 + 72) = v30;
    *(v0 + 80) = v37;
    *(v0 + 88) = v36;
    *(v0 + 96) = v35;
    *(v0 + 104) = *(v0 + 448);
    v44 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v44;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 185) = *(v0 + 89);
    v45 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v45;

    isUniquelyReferenced_nonNull_native = sub_1D8A89568;
    v7 = v33;
    v8 = 0;

    return MEMORY[0x1EEE6DFA0](isUniquelyReferenced_nonNull_native, v7, v8);
  }

  else
  {

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D8A89568()
{
  sub_1D8A3B420((v0 + 112), 0x796669746E656469, 0xE800000000000000);

  return MEMORY[0x1EEE6DFA0](sub_1D8A895E8, 0, 0);
}

uint64_t sub_1D8A895E8()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 440) + 1;
  sub_1D88E0F90(v0 + 16);
  if (v2 != v1)
  {
    v6 = *(v0 + 432);
    v7 = *(v0 + 440) + 1;
    *(v0 + 440) = v7;
    v8 = *(v0 + 276);
    v9 = *(v0 + 344);
    v10 = (v9 + *(v0 + 108));
    sub_1D87A0E38(*(v0 + 416) + ((*(v0 + 204) + 32) & ~*(v0 + 204)) + v6 * v7, v9, &qword_1ECA67750, &unk_1D8B1E0C0);
    v33 = v10[1];
    v34 = *v10;
    v31 = v10[2];
    v32 = v10[3];
    v11 = *(v9 + v8);
    if (*(v11 + 16))
    {
      LOBYTE(v12) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v11 + 32));
      if (*(v0 + 105) == 181)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v12, v13, v14);
      }

      v15 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
    }

    v18 = *(v0 + 400);
    v19 = *(v0 + 344);
    v20 = *(v0 + 304);
    v22 = *(v0 + 288);
    v21 = *(v0 + 296);
    v23 = *(v0 + 408);
    sub_1D87A14E4(v19, &qword_1ECA67750, &unk_1D8B1E0C0);
    *(v0 + 448) = 0;
    v24 = vbslq_s8(vcgeq_f64(v33, v34), v33, v34);
    v25 = vbslq_s8(vcgeq_f64(v31, v24), v31, v24);
    v26 = vbslq_s8(vcgtq_f64(v34, v33), v33, v34);
    v27 = vbslq_s8(vcgtq_f64(v26, v31), v31, v26);
    v28 = vbslq_s8(vcgtq_f64(v27, v32), v32, v27);
    *(v0 + 16) = v28;
    *(v0 + 32) = vsubq_f64(vbslq_s8(vcgeq_f64(v32, v25), v32, v25), v28);
    *(v0 + 48) = 0x3F689374BC6A7EFALL;
    *(v0 + 56) = v23;
    *(v0 + 64) = v15;
    *(v0 + 72) = v17;
    *(v0 + 80) = v22;
    *(v0 + 88) = v21;
    *(v0 + 96) = v20;
    *(v0 + 104) = *(v0 + 448);
    v29 = *(v0 + 64);
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v29;
    *(v0 + 176) = *(v0 + 80);
    *(v0 + 185) = *(v0 + 89);
    v30 = *(v0 + 32);
    *(v0 + 112) = *(v0 + 16);
    *(v0 + 128) = v30;

    v12 = sub_1D8A89568;
    v13 = v18;
    v14 = 0;

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  v3 = *(v0 + 408);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D8A89880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _OWORD *a10, uint64_t a11, uint64_t a12)
{
  v66 = a6;
  v67 = a7;
  v64 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688D8, &unk_1D8B3AF88);
  v63 = *(v17 - 8);
  v18 = *(v63 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v49 - v20;
  v61 = a11;
  v21 = *(a11 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67150, &unk_1D8B39B90);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v69 = &v49 - v24;
  v25 = sub_1D8B13700();
  result = MEMORY[0x1EEE9AC00](v25);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 112);
  if (v30)
  {
    v68 = v17;
    v55 = a10;
    v53 = a9;
    v58 = a5;
    v51 = a12;
    v52 = a8;
    v31 = *(a12 + 40);
    v59 = v27;
    v60 = result;
    v50 = v18;
    v54 = v29;
    v57 = v30;

    v56 = a4;
    v32 = v61;
    v31(v70, v61, a12);
    sub_1D8A90118(v71);
    v33 = sub_1D8B13740();
    (*(*(v33 - 8) + 56))(v69, 1, 1, v33);
    v34 = v62;
    (*(v21 + 16))(v62, a3, v32);
    v35 = v63;
    v36 = v65;
    (*(v63 + 16))(v65, v64, v68);
    v37 = (*(v21 + 80) + 64) & ~*(v21 + 80);
    v38 = (v22 + *(v35 + 80) + v37) & ~*(v35 + 80);
    v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = v51;
    *(v40 + 2) = v32;
    *(v40 + 3) = v41;
    v42 = v67;
    *(v40 + 4) = v66;
    *(v40 + 5) = v42;
    v43 = v53;
    *(v40 + 6) = v52;
    *(v40 + 7) = v43;
    (*(v21 + 32))(&v40[v37], v34, v32);
    (*(v35 + 32))(&v40[v38], v36, v68);
    v44 = &v40[v39];
    v45 = v55;
    v46 = v55[1];
    *v44 = *v55;
    *(v44 + 1) = v46;
    v44[32] = *(v45 + 32);

    v47 = v54;
    v48 = v69;

    sub_1D87A14E4(v48, &qword_1ECA67150, &unk_1D8B39B90);
    return (*(v59 + 8))(v47, v60);
  }

  return result;
}

uint64_t sub_1D8A89D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = a8;
  v46 = a7;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_1D8B13B10();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68848, &qword_1D8B3AEE8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v41 - v20);
  sub_1D87A0E38(a1, &v41 - v20, &qword_1ECA68848, &qword_1D8B3AEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1EE0E4518 != -1)
    {
      swift_once();
    }

    v23 = sub_1D8B151E0();
    __swift_project_value_buffer(v23, qword_1EE0E4520);
    v24 = v22;
    v25 = sub_1D8B151C0();
    v26 = sub_1D8B16200();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1D8783000, v25, v26, "VLU: parse failed with error: %@", v27, 0xCu);
      sub_1D87A14E4(v28, &qword_1ECA63128, &qword_1D8B1E0B0);
      MEMORY[0x1DA721330](v28, -1, -1);
      MEMORY[0x1DA721330](v27, -1, -1);
    }

    *&v47[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688D8, &unk_1D8B3AF88);
    return sub_1D8B15E10();
  }

  else
  {
    (*(v16 + 32))(v18, v21, v15);
    if (qword_1EE0E54C0 != -1)
    {
      swift_once();
    }

    if (sub_1D8B0AAA4())
    {
      *&v47[0] = 0;
      *(&v47[0] + 1) = 0xE000000000000000;
      sub_1D8B16720();

      *&v47[0] = 0xD000000000000026;
      *(&v47[0] + 1) = 0x80000001D8B48560;
      v32 = MEMORY[0x1DA71EF10](v41, v42, v43, v44);
      MEMORY[0x1DA71EFA0](v32);

      v33 = v47[0];
      (*(a10 + 40))(v47, a9, a10);
      v34 = v48;
      v53[3] = sub_1D8B138B0();
      v53[4] = sub_1D8A92E28(&qword_1ECA66F78, MEMORY[0x1E69E0360], MEMORY[0x1E69E0368]);
      __swift_allocate_boxed_opaque_existential_1(v53);
      sub_1D8B13B00();
      v54 = 3;
      v51 = v33;
      v52 = v34;
      v35 = sub_1D8B15EA0();
      (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
      sub_1D88C4BD0(&v51, v47);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      v37 = v49;
      *(v36 + 64) = v48;
      *(v36 + 80) = v37;
      *(v36 + 96) = v50;
      v38 = v47[1];
      *(v36 + 32) = v47[0];
      *(v36 + 48) = v38;
      sub_1D8891CA0(0, 0, v14, &unk_1D8B3AFA0, v36);

      sub_1D87DC9A0(&v51);
    }

    v39 = type metadata accessor for GroundedParseDetectorResult(0);
    v40 = sub_1D8A92E28(&qword_1EE0E4998, type metadata accessor for GroundedParseDetectorResult, &unk_1D8B39EFC);
    *&v47[0] = sub_1D8A8A574(a6, v45, v39, a9, v40, a10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA688D8, &unk_1D8B3AF88);
    sub_1D8B15E20();
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_1D8A8A328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for BundleClassification.ClassificationType(0);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A8A3BC, 0, 0);
}

uint64_t sub_1D8A8A3BC()
{
  if (qword_1ECA62268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1ECA675B0;
  *(v0 + 40) = qword_1ECA675B0;
  v3 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1D8A8A4B4, v2, 0);
}

uint64_t sub_1D8A8A4B4()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = BundleClassification.ClassificationType.caseDescription.getter();
  sub_1D8A3B1F4(v2, v3, v4);

  sub_1D8A93010(v1, type metadata accessor for BundleClassification.ClassificationType);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D8A8A574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a5;
  v19 = a6;
  v11 = sub_1D8B138B0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13B00();
  v15 = sub_1D8B13840();
  (*(v12 + 8))(v14, v11);
  v27 = v15;
  v20 = a3;
  v21 = a4;
  v22 = v18;
  v23 = v19;
  v24 = v6;
  v25 = a2;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68858, &unk_1D8B3AEF0);
  sub_1D881CF20(&qword_1EE0E3A18, &qword_1ECA68858, &unk_1D8B3AEF0, MEMORY[0x1E69E6328]);
  v16 = sub_1D8B15BC0();

  return v16;
}

uint64_t sub_1D8A8A718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_1D8B13B50();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68868, &unk_1D8B3AF10);
  v6[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63280, &qword_1D8B1E840);
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = *(type metadata accessor for DetectionRequest(0) - 8);
  v6[26] = swift_task_alloc();
  v9 = sub_1D8B13AF0();
  v6[27] = v9;
  v6[28] = *(v9 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8A8A958, v5, 0);
}

uint64_t sub_1D8A8A958()
{
  *(v0 + 56) = *(v0 + 72);
  *(v0 + 16) = 0u;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67590, &qword_1D8B33AE0);
  v6 = sub_1D881CF20(&unk_1EE0E39C0, &qword_1ECA67590, &qword_1D8B33AE0, MEMORY[0x1E69E6340]);
  v7 = sub_1D8A31004(v4, v0 + 16, v5, v2, v6, v1);
  v8 = v3;
  v9 = sub_1D8B13AE0();
  v17 = *(v7 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = 0;
    v60 = *(v0 + 160);
    v20 = (v60 + 48);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = *(v0 + 200);
    while (v19 < *(v7 + 16))
    {
      v23 = v21;
      v24 = *(v0 + 208);
      v25 = *(v0 + 144);
      sub_1D8A92F54(v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v24, type metadata accessor for DetectionRequest);
      sub_1D8A8B370(v24, v25);
      v27 = *(v0 + 144);
      v26 = *(v0 + 152);
      sub_1D8A93010(*(v0 + 208), type metadata accessor for DetectionRequest);
      if ((*v20)(v27, 1, v26) == 1)
      {
        v9 = sub_1D87A14E4(*(v0 + 144), &qword_1ECA68868, &unk_1D8B3AF10);
        v21 = v23;
      }

      else
      {
        v29 = *(v0 + 184);
        v28 = *(v0 + 192);
        sub_1D881F6FC(*(v0 + 144), v28, &qword_1ECA63280, &qword_1D8B1E840);
        sub_1D881F6FC(v28, v29, &qword_1ECA63280, &qword_1D8B1E840);
        v21 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1D87C9C94(0, v23[2] + 1, 1, v23);
        }

        v31 = v21[2];
        v30 = v21[3];
        if (v31 >= v30 >> 1)
        {
          v21 = sub_1D87C9C94((v30 > 1), v31 + 1, 1, v21);
        }

        v32 = *(v0 + 184);
        v21[2] = v31 + 1;
        v9 = sub_1D881F6FC(v32, v21 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v31, &qword_1ECA63280, &qword_1D8B1E840);
        v20 = (v60 + 48);
      }

      if (v17 == ++v19)
      {
        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_14:
  *(v0 + 240) = v21;

  v61 = v21[2];
  if (v61)
  {
    v33 = *(v0 + 160);
    v59 = *(v0 + 152);
    v34 = *(v0 + 128);
    sub_1D87F4D20(0, v61, 0);
    v35 = v21 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v36 = (v34 + 32);
    v57 = v21;
    v58 = *(v33 + 72);
    do
    {
      v38 = *(v0 + 168);
      v37 = *(v0 + 176);
      v39 = *(v0 + 136);
      v40 = *(v0 + 120);
      sub_1D87A0E38(v35, v37, &qword_1ECA63280, &qword_1D8B1E840);
      sub_1D881F6FC(v37, v38, &qword_1ECA63280, &qword_1D8B1E840);
      v41 = *(v59 + 64);
      v42 = *v36;
      (*v36)(v39, v38 + *(v59 + 48), v40);
      sub_1D87A14E4(v38 + v41, &qword_1ECA67750, &unk_1D8B1E0C0);
      v43 = sub_1D8B13240();
      (*(*(v43 - 8) + 8))(v38, v43);
      v45 = *(v18 + 16);
      v44 = *(v18 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D87F4D20((v44 > 1), v45 + 1, 1);
      }

      *(v0 + 272) = v18;
      v46 = *(v0 + 136);
      v47 = *(v0 + 120);
      *(v18 + 16) = v45 + 1;
      v42(v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v45, v46, v47);
      v35 += v58;
      --v61;
    }

    while (v61);
    v48 = *(v0 + 232);
    v49 = *(v0 + 112);
    v50 = *(v0 + 80);
    v51 = sub_1D8A92E28(&qword_1EE0E9818, type metadata accessor for StreamingVisualIntelligenceProcessor, &unk_1D8B3AB80);
    v52 = swift_task_alloc();
    *(v0 + 248) = v52;
    *(v52 + 16) = *(v0 + 96);
    *(v52 + 32) = v49;
    *(v52 + 40) = v48;
    *(v52 + 48) = v18;
    *(v52 + 56) = v57;
    *(v52 + 64) = v50;
    v53 = swift_task_alloc();
    *(v0 + 256) = v53;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68890, &qword_1D8B3AF40);
    *v53 = v0;
    v53[1] = sub_1D8A8B034;
    v14 = sub_1D8A96910;
    v9 = v0 + 64;
    v13 = 0x80000001D8B484A0;
    v10 = v49;
    v11 = v51;
    v12 = 0xD00000000000003BLL;
    v15 = v52;

    return MEMORY[0x1EEE6DE38](v9, v10, v11, v12, v13, v14, v15, v16);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v54 = *(v0 + 8);
  v55 = MEMORY[0x1E69E7CC0];

  return v54(v55);
}