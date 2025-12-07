unint64_t sub_1BAFE4984()
{
  result = qword_1EBC3B290;
  if (!qword_1EBC3B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B290);
  }

  return result;
}

uint64_t sub_1BAFE49D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1BAFD86D0(&qword_1EBC3B2A8, &qword_1BB019938);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v57 - v6;
  v8 = sub_1BB014398();
  v67 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v57 - v12;
  v14 = type metadata accessor for IdentifierRow(0);
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BAFC6AB4(a1, a1[3]);
  v61 = sub_1BB014528();
  v62 = v16;
  v17 = v7;
  v63 = v11;
  v64 = v13;
  v65 = v8;
  sub_1BAFC6AB4(a1, a1[3]);
  v18 = sub_1BB0144F8();
  v19 = a1;
  v21 = v20;
  v22 = v18;
  sub_1BAFC6AB4(a1, a1[3]);
  sub_1BB0144D8();
  v59 = v22;
  v23 = v67;
  v24 = v65;
  v60 = *(v67 + 56);
  v60(v17, 0, 1, v65);
  v58 = *(v23 + 32);
  v58(v64, v17, v24);
  sub_1BAFC6AB4(v19, v19[3]);
  v25 = sub_1BB014518();
  v57[1] = v23 + 32;
  v26 = v60;
  if (v25 >= 3)
  {
    (*(v67 + 8))(v64, v65);

    v30 = v70;
    sub_1BAFC6A68(a1);
    return (*(v68 + 56))(v30, 1, 1, v69);
  }

  else
  {
    v57[0] = v25;
    sub_1BAFC6AB4(a1, a1[3]);
    v27 = v66;
    sub_1BB0144D8();
    v28 = v67;
    v29 = v64;
    v31 = v65;
    v26(v27, 0, 1, v65);
    v32 = v63;
    v58(v63, v27, v31);
    v33 = v21;
    v34 = v62;
    v35 = v59;
    *v62 = v61;
    *(v34 + 8) = v35;
    *(v34 + 16) = v33;
    v36 = v69;
    v37 = *(v28 + 16);
    v37(v34 + v69[6], v29, v31);
    *(v34 + v36[7]) = v57[0];
    v37(v34 + v36[8], v32, v31);
    sub_1BAFC6AB4(v19, v19[3]);
    v38 = sub_1BB014508();
    v39 = v34 + v36[9];
    *v39 = v38;
    *(v39 + 8) = v40 & 1;
    sub_1BAFC6AB4(v19, v19[3]);
    v41 = sub_1BB0144E8();
    v42 = (v34 + v36[10]);
    *v42 = v41;
    v42[1] = v43;
    sub_1BAFC6AB4(v19, v19[3]);
    v44 = sub_1BB0144E8();
    v45 = (v34 + v36[11]);
    *v45 = v44;
    v45[1] = v46;
    sub_1BAFC6AB4(v19, v19[3]);
    v47 = sub_1BB0144E8();
    v48 = (v34 + v36[12]);
    *v48 = v47;
    v48[1] = v49;
    sub_1BAFC6AB4(v19, v19[3]);
    v50 = sub_1BB0144E8();
    v52 = v51;
    v53 = *(v28 + 8);
    v53(v32, v31);
    v53(v29, v31);
    v54 = (v34 + v36[13]);
    *v54 = v50;
    v54[1] = v52;
    v55 = v70;
    sub_1BAFE54E8(v34, v70);
    (*(v68 + 56))(v55, 0, 1, v36);
    return sub_1BAFC6A68(v19);
  }
}

uint64_t sub_1BAFE5050()
{
  sub_1BB014F58();
  MEMORY[0x1BFB06D20](0x203A65756C6156, 0xE700000000000000);
  MEMORY[0x1BFB06D20](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1BFB06D20](0x617269707845202CLL, 0xEE00203A6E6F6974);
  v1 = type metadata accessor for IdentifierRow(0);
  sub_1BB014398();
  sub_1BAFE31B4();
  v2 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v2);

  v3 = 0xE800000000000000;
  MEMORY[0x1BFB06D20](0x203A65707954202CLL, 0xE800000000000000);
  v4 = *(v0 + *(v1 + 28));
  switch(v4)
  {
    case 2:
      v5 = 0x644974656B637542;
LABEL_8:
      MEMORY[0x1BFB06D20](v5, v3);

      MEMORY[0x1BFB06D20](0x657461657243202CLL, 0xEB00000000203A64);
      v7 = sub_1BB0150F8();
      MEMORY[0x1BFB06D20](v7);

      MEMORY[0x1BFB06D20](0x6172656E6567202CLL, 0xEE00203A6E6F6974);
      sub_1BAFD86D0(&qword_1EBC3B298, &qword_1BB019928);
      v8 = sub_1BB014B88();
      MEMORY[0x1BFB06D20](v8);

      MEMORY[0x1BFB06D20](0x7073656D616E202CLL, 0xED0000203A656361);

      sub_1BAFD86D0(&qword_1EBC3B2A0, &qword_1BB019930);
      v9 = sub_1BB014B88();
      MEMORY[0x1BFB06D20](v9);

      MEMORY[0x1BFB06D20](0x7365636F7270202CLL, 0xED0000203A644973);

      v10 = sub_1BB014B88();
      MEMORY[0x1BFB06D20](v10);

      MEMORY[0x1BFB06D20](0x495344736D61202CLL, 0xEB00000000203A44);

      v11 = sub_1BB014B88();
      MEMORY[0x1BFB06D20](v11);

      MEMORY[0x1BFB06D20](0x746174536170202CLL, 0xEC000000203A7375);

      v12 = sub_1BB014B88();
      MEMORY[0x1BFB06D20](v12);

      return 0;
    case 1:
      v5 = 0xD000000000000012;
      v6 = "RotatedAnonymousId";
LABEL_7:
      v3 = (v6 - 32) | 0x8000000000000000;
      goto LABEL_8;
    case 0:
      v5 = 0xD000000000000012;
      v6 = "AnonymousSessionId";
      goto LABEL_7;
  }

  result = sub_1BB015138();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for IdentifierRow(uint64_t a1)
{
  result = qword_1EDD4F948;
  if (!qword_1EDD4F948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFE5480(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B2A8, &qword_1BB019938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAFE54E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifierRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BAFE5574(uint64_t a1)
{
  sub_1BB014398();
  if (v1 <= 0x3F)
  {
    sub_1BAFE565C(319, &qword_1EDD4E198, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1BAFE565C(319, qword_1EDD4FFE8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BAFE565C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1BB014E98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t NotConsumedUAEProperties.init(code:additionalProperties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t NotConsumedUAEProperties.dictionaryRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187E0;
  *(inited + 32) = 0x746E6563726570;
  *(inited + 40) = 0xE700000000000000;
  type metadata accessor for APJourneyMetricNotConsumedReasonCode(0);
  *(inited + 72) = v4;
  *(inited + 48) = v2;

  v5 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFE2D64(inited + 32, &qword_1EBC3B180, &qword_1BB01ACD0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_1BAFDD7A4(v1, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v8);

  return v8;
}

unint64_t sub_1BAFE57C0()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB0187E0;
  *(inited + 32) = 0x746E6563726570;
  *(inited + 40) = 0xE700000000000000;
  type metadata accessor for APJourneyMetricNotConsumedReasonCode(0);
  *(inited + 72) = v4;
  *(inited + 48) = v2;

  v5 = sub_1BB0136E4(inited);
  swift_setDeallocating();
  sub_1BAFE2D64(inited + 32, &qword_1EBC3B180, &qword_1BB01ACD0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v5;
  sub_1BAFDD7A4(v1, sub_1BAFDD758, 0, isUniquelyReferenced_nonNull_native, &v8);

  return v8;
}

uint64_t sub_1BAFE58D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BAFDB9B0(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_1BAFDC53C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1BAFE2D64(v21, &qword_1EBC3B260, &unk_1BB0199C0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RotatingIdentifierConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RotatingIdentifierConstants(_WORD *result, int a2, int a3)
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

unint64_t sub_1BAFE5B44(unsigned __int8 a1)
{
  v1 = 0xD00000000000001CLL;
  if (a1 > 4u)
  {
    v5 = 0xD000000000000032;
    v6 = 0xD000000000000028;
    if (a1 != 8)
    {
      v6 = 0xD000000000000029;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 != 5)
    {
      v1 = 0xD00000000000002DLL;
    }

    if (a1 <= 6u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    v3 = 0xD00000000000001BLL;
    if (a1 == 3)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t getEnumTagSinglePayload for IdentifierErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentifierErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAFE5DC8()
{
  result = qword_1EBC3B2B0;
  if (!qword_1EBC3B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B2B0);
  }

  return result;
}

uint64_t FeatureDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeatureDefinition.init(name:customerDefault:internalDefault:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = a4 & 1;
  *(a6 + 18) = v6;
  return result;
}

uint64_t FeatureDefinition.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_1BB014BD8();
  sub_1BB0146E8();
  sub_1BB0146E8();
  return MEMORY[0x1BFB072F0](v2);
}

uint64_t FeatureDefinition.hashValue.getter()
{
  v1 = *(v0 + 18);
  sub_1BB0151B8();
  sub_1BB014BD8();
  sub_1BB0146E8();
  sub_1BB0146E8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFE5F90()
{
  v1 = *(v0 + 18);
  sub_1BB0151B8();
  sub_1BB014BD8();
  sub_1BB0146E8();
  sub_1BB0146E8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFE601C(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_1BB014BD8();
  sub_1BB0146E8();
  sub_1BB0146E8();
  return MEMORY[0x1BFB072F0](v2);
}

uint64_t sub_1BAFE607C(uint64_t a1)
{
  v2 = *(v1 + 18);
  sub_1BB0151B8();
  sub_1BB014BD8();
  sub_1BB0146E8();
  sub_1BB0146E8();
  MEMORY[0x1BFB072F0](v2);
  return sub_1BB0151F8();
}

uint64_t FeatureMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t _s17AdPlatformsCommon17FeatureDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 18);
  v3 = *(a2 + 18);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1BB015118() & 1) == 0 || (sub_1BB0146D8() & 1) == 0)
  {
    return 0;
  }

  if (sub_1BB0146D8())
  {
    return v2 ^ v3 ^ 1u;
  }

  return 0;
}

unint64_t sub_1BAFE623C()
{
  result = qword_1EBC3B2B8;
  if (!qword_1EBC3B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B2B8);
  }

  return result;
}

unint64_t sub_1BAFE6294()
{
  result = qword_1EBC3B2C0;
  if (!qword_1EBC3B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B2C0);
  }

  return result;
}

__n128 sub_1BAFE62FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1BAFE6310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1BAFE6358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t EventSource.init(bundleID:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BB014758();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  (*(v5 + 16))(&v18 - v9, a1, v4);
  sub_1BB014748();
  sub_1BAFE6804();
  v11 = sub_1BB014B18();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v12(v10, v4);
    v12(a1, v4);
    v13 = 978;
  }

  else
  {
    sub_1BB014728();
    v14 = sub_1BB014B18();
    v12(v8, v4);
    if (v14)
    {
      v12(v10, v4);
      v12(a1, v4);
      v13 = 976;
    }

    else
    {
      sub_1BB014708();
      v15 = sub_1BB014B18();
      v12(v8, v4);
      if (v15)
      {
        v12(v10, v4);
        v12(a1, v4);
        v13 = 975;
      }

      else
      {
        sub_1BB014738();
        v16 = sub_1BB014B18();
        v12(v8, v4);
        v12(v10, v4);
        if ((v16 & 1) == 0)
        {
          (*(v5 + 32))(a2, a1, v4);
          type metadata accessor for EventSource(0);
          return swift_storeEnumTagMultiPayload();
        }

        v12(a1, v4);
        v13 = 977;
      }
    }
  }

  *a2 = v13;
  type metadata accessor for EventSource(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1BAFE6804()
{
  result = qword_1EBC3B2C8;
  if (!qword_1EBC3B2C8)
  {
    sub_1BB014758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B2C8);
  }

  return result;
}

uint64_t FileStorageMedium.__allocating_init(url:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FileStorageMedium.init(url:)(a1);
  return v2;
}

uint64_t FileStorageMedium.init(url:)(uint64_t a1)
{
  v3 = qword_1EBC3B2D0;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v4 = qword_1EBC3B2D8;
  v5 = sub_1BB0142E8();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

Swift::OpaquePointer_optional __swiftcall FileStorageMedium.get(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = sub_1BB0142E8();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0142B8();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v28[1] = v8 + 16;
  v9 = *(v1 + qword_1EBC3B2D0);
  v10 = sub_1BB0142A8();
  v11 = swift_allocObject();
  v11[2] = *(v4 + 80);
  v11[3] = v8;
  v11[4] = countAndFlagsBits;
  v11[5] = object;
  v12 = swift_allocObject();
  v12[2] = sub_1BAFE82F0;
  v12[3] = v11;
  aBlock[4] = sub_1BAFE82FC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAFE71FC;
  aBlock[3] = &unk_1F390CDF0;
  v13 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v9 coordinateReadingItemAtURL:v10 options:0 error:aBlock byAccessor:v13];
  _Block_release(v13);

  v14 = aBlock[0];
  v15 = aBlock[0];
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!v15)
  {
    goto LABEL_8;
  }

  if (qword_1EDD4E200 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v16 = sub_1BB0149A8();
  sub_1BAFE833C(v16, qword_1EDD51B20);
  v17 = v15;
  v18 = sub_1BB014988();
  v19 = sub_1BB014DB8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28[0] = v5;
    v22 = v21;
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v14;
    v23 = v17;
    _os_log_impl(&dword_1BAFC4000, v18, v19, "[FileStorageMedium] File coordination read error: %@", v20, 0xCu);
    sub_1BAFE2D64(v22, qword_1EBC3B340, &qword_1BB019C68);
    v24 = v22;
    v5 = v28[0];
    MEMORY[0x1BFB07C70](v24, -1, -1);
    MEMORY[0x1BFB07C70](v20, -1, -1);
  }

  else
  {
    v23 = v18;
    v18 = v17;
  }

LABEL_8:
  (*(v29 + 8))(v7, v5);
  swift_beginAccess();
  v25 = *(v8 + 16);

  v27 = v25;
  result.value._rawValue = v27;
  result.is_nil = v26;
  return result;
}

void sub_1BAFE6D5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = sub_1BB0142F8();
  v11 = v10;
  sub_1BAFC5BB4(0, &qword_1EBC3B3D8, 0x1E696ACD0);
  sub_1BAFD86D0(&qword_1EBC3B3E0, &qword_1BB019CB8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BB018AE0;
  *(v12 + 32) = sub_1BAFC5BB4(0, &qword_1EBC3B3E8, 0x1E695DEC8);
  *(v12 + 40) = a5;
  sub_1BB014DD8();

  if (v23)
  {
    sub_1BB014CE8();
    if (swift_dynamicCast())
    {
      v13 = v20;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1BAFE2D64(v22, &unk_1EBC3B3F0, &qword_1BB019060);
    v13 = 0;
  }

  swift_beginAccess();
  *(a2 + 16) = v13;

  if (qword_1EDD4E200 != -1)
  {
    swift_once();
  }

  v14 = sub_1BB0149A8();
  sub_1BAFE833C(v14, qword_1EDD51B20);

  v15 = sub_1BB014988();
  v16 = sub_1BB014DA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    oslog = swift_slowAlloc();
    v21 = oslog;
    *v17 = 134218242;
    swift_beginAccess();
    if (*(a2 + 16))
    {

      v18 = sub_1BB014CD8();
    }

    else
    {
      v18 = 0;
    }

    *(v17 + 4) = v18;

    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1BB01313C(a3, a4, &v21);
    _os_log_impl(&dword_1BAFC4000, v15, v16, "[FileStorageMedium] Read %ld contents from file system for key %s", v17, 0x16u);
    sub_1BAFC6A68(oslog);
    MEMORY[0x1BFB07C70](oslog, -1, -1);
    MEMORY[0x1BFB07C70](v17, -1, -1);
  }

  else
  {
  }

  sub_1BAFE84B8(v9, v11);
}

uint64_t sub_1BAFE71FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BB0142E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1BB0142C8();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall FileStorageMedium.set(key:value:)(Swift::String key, Swift::OpaquePointer value)
{
  v3 = v2;
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v7 = sub_1BB0142E8();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0142B8();
  v10 = *&v2[qword_1EBC3B2D0];
  v11 = sub_1BB0142A8();
  v12 = swift_allocObject();
  v12[2]._rawValue = value._rawValue;
  v12[3]._rawValue = v3;
  v12[4]._rawValue = countAndFlagsBits;
  v12[5]._rawValue = object;
  v13 = swift_allocObject();
  v13[2] = sub_1BAFE8374;
  v13[3] = v12;
  aBlock[4] = sub_1BAFE851C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAFE71FC;
  aBlock[3] = &unk_1F390CE68;
  v14 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v10 coordinateWritingItemAtURL:v11 options:8 error:aBlock byAccessor:v14];
  _Block_release(v14);

  v15 = aBlock[0];
  v16 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!v16)
  {
    goto LABEL_8;
  }

  if (qword_1EDD4E200 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v18 = sub_1BB0149A8();
  sub_1BAFE833C(v18, qword_1EDD51B20);
  v19 = v16;
  v20 = sub_1BB014988();
  v21 = sub_1BB014DB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v15;
    v24 = v19;
    _os_log_impl(&dword_1BAFC4000, v20, v21, "[FileStorageMedium] File coordination write error: %@", v22, 0xCu);
    sub_1BAFE2D64(v23, qword_1EBC3B340, &qword_1BB019C68);
    MEMORY[0x1BFB07C70](v23, -1, -1);
    MEMORY[0x1BFB07C70](v22, -1, -1);
  }

  else
  {
    v24 = v20;
    v20 = v19;
  }

LABEL_8:
  (*(v26 + 8))(v9, v27);
}

void sub_1BAFE76A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v8 = sub_1BB014C68();
  v34[0] = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v34];

  v10 = v34[0];
  if (v9)
  {
    v11 = sub_1BB014308();
    v13 = v12;

    v14 = [objc_opt_self() defaultManager];
    v15 = sub_1BB0142A8();
    v34[0] = 0;
    v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v34];

    if (v16)
    {
      v17 = v34[0];
      sub_1BB014318();
      if (qword_1EDD4E200 != -1)
      {
        swift_once();
      }

      v29 = sub_1BB0149A8();
      sub_1BAFE833C(v29, qword_1EDD51B20);

      v30 = sub_1BB014988();
      v31 = sub_1BB014DA8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1BB01313C(a4, a5, v34);
        _os_log_impl(&dword_1BAFC4000, v30, v31, "[FileStorageMedium] Wrote to file system for key %s", v32, 0xCu);
        sub_1BAFC6A68(v33);
        MEMORY[0x1BFB07C70](v33, -1, -1);
        MEMORY[0x1BFB07C70](v32, -1, -1);
      }

      sub_1BAFE84B8(v11, v13);

      return;
    }

    v20 = v34[0];
    v19 = sub_1BB014288();

    swift_willThrow();
    sub_1BAFE84B8(v11, v13);
  }

  else
  {
    v18 = v10;
    v19 = sub_1BB014288();

    swift_willThrow();
  }

  if (qword_1EDD4E200 != -1)
  {
    swift_once();
  }

  v21 = sub_1BB0149A8();
  sub_1BAFE833C(v21, qword_1EDD51B20);
  v22 = v19;
  v23 = sub_1BB014988();
  v24 = sub_1BB014DB8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v19;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_1BAFC4000, v23, v24, "[FileStorageMedium] Unable to persist data to file system! %@", v25, 0xCu);
    sub_1BAFE2D64(v26, qword_1EBC3B340, &qword_1BB019C68);
    MEMORY[0x1BFB07C70](v26, -1, -1);
    MEMORY[0x1BFB07C70](v25, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall FileStorageMedium.drop(key:)(Swift::String key)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = sub_1BB0142E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0142B8();
  v6 = *(v1 + qword_1EBC3B2D0);
  v7 = sub_1BB0142A8();
  aBlock[4] = sub_1BAFE71F8;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAFE71FC;
  aBlock[3] = &unk_1F390CE90;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v6 coordinateWritingItemAtURL:v7 options:1 error:aBlock byAccessor:v8];
  _Block_release(v8);

  v9 = aBlock[0];
  v10 = aBlock[0];
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  if (!v10)
  {
    goto LABEL_8;
  }

  if (qword_1EDD4E200 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v11 = sub_1BB0149A8();
  sub_1BAFE833C(v11, qword_1EDD51B20);
  v12 = v10;
  v13 = sub_1BB014988();
  v14 = sub_1BB014DB8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v9;
    v17 = v12;
    _os_log_impl(&dword_1BAFC4000, v13, v14, "[FileStorageMedium] File coordination delete error: %@", v15, 0xCu);
    sub_1BAFE2D64(v16, qword_1EBC3B340, &qword_1BB019C68);
    MEMORY[0x1BFB07C70](v16, -1, -1);
    MEMORY[0x1BFB07C70](v15, -1, -1);
  }

  else
  {
    v17 = v13;
    v13 = v12;
  }

LABEL_8:
  (*(v3 + 8))(v5, v2);
}

void sub_1BAFE7E0C(uint64_t a1)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BB0142E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1BB0142A8();
  v27[0] = 0;
  v8 = [v6 removeItemAtURL:v7 error:v27];

  v9 = v27[0];
  if (v8)
  {

    v10 = v9;
  }

  else
  {
    v26 = v27[0];
    v11 = v27[0];
    v12 = sub_1BB014288();

    swift_willThrow();
    if (qword_1EDD4E200 != -1)
    {
      swift_once();
    }

    v13 = sub_1BB0149A8();
    sub_1BAFE833C(v13, qword_1EDD51B20);
    (*(v3 + 16))(v5, a1, v2);
    v14 = v12;
    v15 = sub_1BB014988();
    v16 = sub_1BB014DB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v17 = 136315394;
      sub_1BAFE8460();
      v19 = sub_1BB0150F8();
      v21 = v20;
      (*(v3 + 8))(v5, v2);
      v22 = sub_1BB01313C(v19, v21, v27);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      v23 = v12;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v24;
      *v18 = v24;
      _os_log_impl(&dword_1BAFC4000, v15, v16, "[FileStorageMedium] Unable to drop data at url %s! %@", v17, 0x16u);
      sub_1BAFE2D64(v18, qword_1EBC3B340, &qword_1BB019C68);
      MEMORY[0x1BFB07C70](v18, -1, -1);
      v25 = v26;
      sub_1BAFC6A68(v26);
      MEMORY[0x1BFB07C70](v25, -1, -1);
      MEMORY[0x1BFB07C70](v17, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t FileStorageMedium.deinit()
{
  v1 = qword_1EBC3B2D8;
  v2 = sub_1BB0142E8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FileStorageMedium.__deallocating_deinit()
{
  FileStorageMedium.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFE8324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAFE833C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BAFE8380(uint64_t a1)
{
  result = sub_1BB0142E8();
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

unint64_t sub_1BAFE8460()
{
  result = qword_1EBC3B3D0;
  if (!qword_1EBC3B3D0)
  {
    sub_1BB0142E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B3D0);
  }

  return result;
}

uint64_t sub_1BAFE84B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BAFE8520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1BB014B38();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_9:
    sub_1BAFDF804(&v13);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_1BB014B38();
  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_1BB014EB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {

    return v11;
  }

LABEL_10:
  LOBYTE(v13) = 7;
  idmanagerError(errorType:description:)(&v13, 0);

  return 12589;
}

uint64_t sub_1BAFE8684(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BAFE86CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NotConsumedUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotConsumedUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NotConsumedUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NotConsumedUAE.properties.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  a1[1] = v2;
}

uint64_t NotConsumedUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotConsumedUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NotConsumedUAE(uint64_t a1)
{
  result = qword_1EBC3B410;
  if (!qword_1EBC3B410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 NotConsumedUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t *a12, unint64_t a13)
{
  v23.n128_u64[0] = a7;
  v23.n128_u64[1] = a8;
  v19 = *a12;
  v20 = a12[1];
  type metadata accessor for NotConsumedUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3] = v23;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v19;
  a9[6].n128_u64[0] = v20;
  a9[6].n128_u64[1] = a13;
  return result;
}

uint64_t static NotConsumedUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for NotConsumedUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BAFE89F4()
{
  result = qword_1EBC3B400;
  if (!qword_1EBC3B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B400);
  }

  return result;
}

uint64_t sub_1BAFE8A50()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BAFE8A90()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1BAFE8AD0()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1BAFE8B08@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 88);
  a1[1] = v2;
}

uint64_t sub_1BAFE8B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1BB014398();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 sub_1BAFE8B90@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t *a12, unint64_t a13)
{
  v22.n128_u64[0] = a7;
  v22.n128_u64[1] = a8;
  v21.n128_u64[0] = a5;
  v21.n128_u64[1] = a6;
  v18 = *a12;
  v19 = a12[1];
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2] = v21;
  a9[3] = v22;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v18;
  a9[6].n128_u64[0] = v19;
  a9[6].n128_u64[1] = a13;
  return result;
}

unint64_t sub_1BAFE8C44(uint64_t a1)
{
  result = sub_1BAFE8C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAFE8C6C()
{
  result = qword_1EBC3B408;
  if (!qword_1EBC3B408)
  {
    type metadata accessor for NotConsumedUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B408);
  }

  return result;
}

void sub_1BAFE8CEC(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

void sub_1BAFE8E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BAFE8EA8()
{
  if (!qword_1EDD4E1D0)
  {
    v0 = sub_1BB014AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD4E1D0);
    }
  }
}

uint64_t sub_1BAFE8F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1BAFD86D0(&qword_1EBC3B420, &qword_1BB019E00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1BB0144A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1BAFE95B0(a1);
    sub_1BAFFC700(a2, a3, v9);

    return sub_1BAFE95B0(v9);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1BAFDD348(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t MemoizingStorefrontIDCountryCodeConverter.__allocating_init(backingConverter:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = sub_1BB013BD4(MEMORY[0x1E69E7CC0]);
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t MemoizingStorefrontIDCountryCodeConverter.init(backingConverter:)(__int128 *a1)
{
  *(v1 + 56) = sub_1BB013BD4(MEMORY[0x1E69E7CC0]);
  sub_1BAFC6D0C(a1, v1 + 16);
  return v1;
}

uint64_t MemoizingStorefrontIDCountryCodeConverter.countryCodeFor(storefrontID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BAFD86D0(&qword_1EBC3B420, &qword_1BB019E00);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v13 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  v14 = v3[7];
  v15 = *(v14 + 16);
  v36 = v12;
  if (v15 && (v16 = sub_1BAFDCCAC(v13, v12), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v14 + 56);
    v20 = sub_1BB0144A8();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v11, v19 + *(v21 + 72) * v18, v20);
    (*(v21 + 56))(v11, 0, 1, v20);
  }

  else
  {
    v20 = sub_1BB0144A8();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  swift_endAccess();
  sub_1BB0144A8();
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  if (v23(v11, 1, v20) == 1)
  {
    v34 = v9;
    v35 = v11;
    v24 = v13;
    v25 = a2;
    v26 = v3[5];
    v27 = v3[6];
    sub_1BAFC6AB4(v3 + 2, v26);
    v28 = v36;
    v37[0] = v24;
    v37[1] = v36;
    (*(v27 + 8))(v37, v26, v27);
    v29 = v25;
    v30 = v34;
    sub_1BAFE9540(v29, v34);
    swift_beginAccess();

    v31 = v24;
    v32 = v35;
    sub_1BAFE8F0C(v30, v31, v28);
    swift_endAccess();
    result = v23(v32, 1, v20);
    if (result != 1)
    {
      return sub_1BAFE95B0(v32);
    }
  }

  else
  {
    (*(v22 + 32))(a2, v11, v20);
    return (*(v22 + 56))(a2, 0, 1, v20);
  }

  return result;
}

uint64_t MemoizingStorefrontIDCountryCodeConverter.deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return v0;
}

uint64_t MemoizingStorefrontIDCountryCodeConverter.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFE9540(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B420, &qword_1BB019E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFE95B0(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B420, &qword_1BB019E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double AlwaysEligibleSensitiveCategoriesFilter.eligibilityFor(categories:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1BAFE96A4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t HomeTerritorySource.__allocating_init(countrySubdivisionCodeSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t HomeTerritorySource.territory()@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1BB0144A8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BB014648();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  sub_1BAFC6AB4((v1 + 16), *(v1 + 40));
  v16 = v21;
  sub_1BB014668();
  sub_1BAFE9A3C(v15, v13);
  v17 = 1;
  if ((*(v4 + 48))(v13, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v13, v3);
    sub_1BB014628();
    (*(v4 + 16))(v10, v6, v3);
    (*(v4 + 56))(v10, 0, 1, v3);
    sub_1BB014788();
    (*(v4 + 8))(v6, v3);
    v17 = 0;
  }

  sub_1BAFE9AAC(v15);
  v18 = sub_1BB0147A8();
  return (*(*(v18 - 8) + 56))(v16, v17, 1, v18);
}

uint64_t sub_1BAFE9A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFE9AAC(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t HomeTerritorySource.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

char *RotatingIdentifierProvider.init(backingStore:notificationListener:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1BB014468();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = OBJC_IVAR___APRotatingIdentifierProvider_lock;
  sub_1BB014458();
  sub_1BB014488();
  swift_allocObject();
  *&v2[v7] = sub_1BB014478();
  *&v2[OBJC_IVAR___APRotatingIdentifierProvider_identiferCache] = MEMORY[0x1E69E7CC8];
  sub_1BAFC6DB4(a1, &v2[OBJC_IVAR___APRotatingIdentifierProvider_backingStore]);
  sub_1BAFC6DB4(a2, &v2[OBJC_IVAR___APRotatingIdentifierProvider_notificationListener]);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v9 = v8 + OBJC_IVAR___APRotatingIdentifierProvider_notificationListener;
  swift_beginAccess();
  v10 = *(v9 + 24);
  v11 = *(v9 + 32);
  sub_1BAFD7BD4(v9, v10);
  v12 = *(v11 + 16);
  v13 = v8;
  v12(v8, &protocol witness table for RotatingIdentifierProvider, v10, v11);
  swift_endAccess();

  sub_1BAFC6A68(a2);
  sub_1BAFC6A68(a1);
  return v13;
}

uint64_t RotatingIdentifierProvider.getIdentifiers(type:source:processId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BB014488();

  sub_1BAFD86D0(&qword_1EBC3B220, &qword_1BB019180);
  sub_1BB014698();

  return v5;
}

uint64_t sub_1BAFE9E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v27 = sub_1BB0150F8();
  v28 = v11;
  MEMORY[0x1BFB06D20](45, 0xE100000000000000);
  v31 = a3;
  v12 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v12);

  v14 = v27;
  v13 = v28;
  v15 = OBJC_IVAR___APRotatingIdentifierProvider_identiferCache;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (!*(v16 + 16) || (v17 = sub_1BAFDCCAC(v27, v28), (v18 & 1) == 0))
  {
    v25 = a6;
    swift_endAccess();
LABEL_6:
    sub_1BAFC6DB4(a1 + OBJC_IVAR___APRotatingIdentifierProvider_backingStore, &v27);
    v23 = v29;
    v22 = v30;
    sub_1BAFC6AB4(&v27, v29);
    v19 = (*(v22 + 8))(a2, a3, a4, a5, v23, v22);
    sub_1BAFC6A68(&v27);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v15);
    *(a1 + v15) = 0x8000000000000000;
    sub_1BAFDD4C8(v19, v14, v13, isUniquelyReferenced_nonNull_native);

    *(a1 + v15) = v31;
    result = swift_endAccess();
    a6 = v25;
    goto LABEL_7;
  }

  v19 = *(*(v16 + 56) + 8 * v17);
  swift_endAccess();

  if ((sub_1BAFEA398(v20, a4, a5) & 1) == 0)
  {
    v25 = a6;

    goto LABEL_6;
  }

LABEL_7:
  *a6 = v19;
  return result;
}

id RotatingIdentifierProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RotatingIdentifierProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAFEA398(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB014398();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1BB015008();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1BFB070A0](0, a1);
LABEL_6:
    v15 = v14;
    v16 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
    swift_beginAccess();
    (*(v7 + 16))(v12, &v15[v16], v6);
    sub_1BB014388();
    LOBYTE(v16) = sub_1BB014348();
    v17 = *(v7 + 8);
    v17(v10, v6);
    v17(v12, v6);
    if (v16)
    {
      v18 = *&v15[OBJC_IVAR___APRotatingIdentifier_processId] == a2 && *&v15[OBJC_IVAR___APRotatingIdentifier_processId + 8] == a3;
      if (v18 || (sub_1BB015118() & 1) != 0)
      {
        v19 = 1;
LABEL_15:

        return v19;
      }

      v22 = sub_1BB014DA8();
      sub_1BAFC5D64();
      v21 = sub_1BB014E68();
      sub_1BB0148B8(v22, &dword_1BAFC4000, v21, "[RotatingIdentifierProvider] Identifier changed processId", 57, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v20 = sub_1BB014DA8();
      sub_1BAFC5D64();
      v21 = sub_1BB014E68();
      sub_1BB0148B8(v20, &dword_1BAFC4000, v21, "[RotatingIdentifierProvider] Identifier Cached Expired", 54, 2, MEMORY[0x1E69E7CC0]);
    }

    v19 = 0;
    goto LABEL_15;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t DeliveredUAE.handle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeliveredUAE.impressionId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DeliveredUAE.trace.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t DeliveredUAE.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeliveredUAE(0) + 56);
  v4 = sub_1BB014398();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeliveredUAE(uint64_t a1)
{
  result = qword_1EBC3B460;
  if (!qword_1EBC3B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DeliveredUAE.init(handle:purpose:source:impressionId:options:order:trace:branch:properties:internalProperties:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t *a12, unint64_t a13)
{
  v22.n128_u64[0] = a7;
  v22.n128_u64[1] = a8;
  v19 = *a12;
  type metadata accessor for DeliveredUAE(0);
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3] = v22;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v19;
  a9[6].n128_u64[0] = a13;
  return result;
}

uint64_t static DeliveredUAE.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DeliveredUAE(0) + 60);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1BAFEA970()
{
  result = qword_1EBC3B450;
  if (!qword_1EBC3B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B450);
  }

  return result;
}

__n128 sub_1BAFEA9E0@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t *a12, unint64_t a13)
{
  v22.n128_u64[0] = a7;
  v22.n128_u64[1] = a8;
  v19 = *a12;
  sub_1BB014368();
  sub_1BB0143D8();
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3] = v22;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = v19;
  a9[6].n128_u64[0] = a13;
  return result;
}

unint64_t sub_1BAFEAA98(uint64_t a1)
{
  result = sub_1BAFEAAC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BAFEAAC0()
{
  result = qword_1EBC3B458;
  if (!qword_1EBC3B458)
  {
    type metadata accessor for DeliveredUAE(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B458);
  }

  return result;
}

void sub_1BAFEAB40(uint64_t a1)
{
  type metadata accessor for APMetricPurposeType(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFE8E54(319, qword_1EDD4FFE8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for APMetricOptions(319);
      if (v3 <= 0x3F)
      {
        sub_1BAFE8E54(319, &qword_1EDD4E1B8, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BAFE8EA8();
          if (v5 <= 0x3F)
          {
            sub_1BB014398();
            if (v6 <= 0x3F)
            {
              sub_1BB0143E8();
              if (v7 <= 0x3F)
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

id JSVersionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSVersionProvider.init()()
{
  v1 = sub_1BB0142E8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0145D8();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC17AdPlatformsCommon17JSVersionProvider_directoryURL, v4, v1);
  v5 = type metadata accessor for JSVersionProvider(0);
  v7.receiver = v0;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t type metadata accessor for JSVersionProvider(uint64_t a1)
{
  result = qword_1EDD4F4E8;
  if (!qword_1EDD4F4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFEB028()
{
  result = sub_1BAFEB0DC();
  if (!v1)
  {
    return 0x302E302E30;
  }

  return result;
}

uint64_t sub_1BAFEB0DC()
{
  v0 = sub_1BB014B78();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BB014298();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = sub_1BB0142E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  strcpy(v12, "JSVersion.txt");
  v12[7] = -4864;
  (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
  sub_1BAFEB61C();
  sub_1BB0142D8();
  (*(v2 + 8))(v4, v1);
  sub_1BB014B68();
  v9 = sub_1BB014B28();
  (*(v6 + 8))(v8, v5);
  return v9;
}

id JSVersionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSVersionProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAFEB540(uint64_t a1)
{
  result = sub_1BB0142E8();
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

unint64_t sub_1BAFEB61C()
{
  result = qword_1EDD4E1E8;
  if (!qword_1EDD4E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E1E8);
  }

  return result;
}

uint64_t sub_1BAFEB714(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EDD500D0 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  v5 = a3;
  return sub_1BAFEBA64(&v5) & 1;
}

uint64_t sub_1BAFEB790(char a1)
{
  if (qword_1EDD500D0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  v3 = a1;
  return sub_1BAFEBA64(&v3) & 1;
}

uint64_t static LegacyFeatureFlags.allEnabledFeatures.getter()
{
  if (qword_1EDD500D0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
  if (v0 <= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = v0;
  }

  while (v0 != 7)
  {
    if (v2 == v0)
    {
      __break(1u);
      goto LABEL_16;
    }

    v3 = byte_1F390BBD0[v0++ + 32];
    v8 = v3;
    if (sub_1BAFEBA64(&v8))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BAFEBF5C(0, *(v1 + 16) + 1, 1);
        v1 = v9;
      }

      v6 = *(v1 + 16);
      v5 = *(v1 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BAFEBF5C((v5 > 1), v6 + 1, 1);
        v1 = v9;
      }

      *(v1 + 16) = v6 + 1;
      *(v1 + v6 + 32) = v3;
      goto LABEL_3;
    }
  }

  return v1;
}

id LegacyFeatureFlags.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacyFeatureFlags.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyFeatureFlags();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LegacyFeatureFlags.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LegacyFeatureFlags();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BAFEBA64(char *a1)
{
  v2 = *a1;
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 isRunningTests];

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v1 + 40))
    {
      sub_1BAFC6DB4(v1 + 16, &v27);
      if (*(&v28 + 1))
      {
LABEL_4:
        sub_1BAFC6A68(&v27);
        goto LABEL_7;
      }
    }

    else
    {
      v5 = *(v1 + 32);
      v27 = *(v1 + 16);
      v28 = v5;
      v29 = *(v1 + 48);
      if (*(&v5 + 1))
      {
        goto LABEL_4;
      }
    }

    sub_1BAFD86D0(&qword_1EBC3B4A0, &unk_1BB01A138);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB0187E0;
    *(inited + 32) = 0x4665727574616546;
    *(inited + 40) = 0xEB0000000067616CLL;
    LOBYTE(v23[0]) = v2;
    AdFeature.definition.getter(&v27);
    v7 = *(&v27 + 1);
    *(inited + 48) = v27;
    *(inited + 56) = v7;
    v8 = sub_1BB013AC0(inited);
    swift_setDeallocating();
    sub_1BAFE2D64(inited + 32, &qword_1EBC3B170, &qword_1BB018980);
    v9 = sub_1BB014B38();
    sub_1BB012BA0(v8);

    v10 = sub_1BB014A78();

    v11 = sub_1BB014B38();
    CreateDiagnosticReport();
  }

LABEL_7:
  swift_beginAccess();
  if (!*(v1 + 40))
  {
    v15 = *(v1 + 32);
    v27 = *(v1 + 16);
    v28 = v15;
    v29 = *(v1 + 48);
    if (*(&v15 + 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    LOBYTE(v23[0]) = v2;
    AdFeature.definition.getter(&v27);

    v14 = sub_1BB0146D8();
    goto LABEL_14;
  }

  sub_1BAFC6DB4(v1 + 16, &v27);
  if (!*(&v28 + 1))
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_1BAFC6DB4(&v27, v23);
  if (*(&v28 + 1))
  {
    sub_1BAFC6A68(&v27);
  }

  v12 = v24;
  v13 = v25;
  sub_1BAFC6AB4(v23, v24);
  v26 = v2;
  v14 = (*(v13 + 24))(&v26, v12, v13);
  sub_1BAFC6A68(v23);
LABEL_14:
  if (qword_1EDD4E200 != -1)
  {
    swift_once();
  }

  v16 = sub_1BB0149A8();
  sub_1BAFE833C(v16, qword_1EDD51B20);
  v17 = sub_1BB014988();
  v18 = sub_1BB014DC8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23[0] = v20;
    *v19 = 136446466;
    v26 = v2;
    AdFeature.definition.getter(&v27);
    v21 = sub_1BB01313C(v27, *(&v27 + 1), v23);

    *(v19 + 4) = v21;
    *(v19 + 12) = 1026;
    *(v19 + 14) = v14 & 1;
    _os_log_impl(&dword_1BAFC4000, v17, v18, "Feature: %{public}s enabled: %{BOOL,public}d", v19, 0x12u);
    sub_1BAFC6A68(v20);
    MEMORY[0x1BFB07C70](v20, -1, -1);
    MEMORY[0x1BFB07C70](v19, -1, -1);
  }

  return v14 & 1;
}

uint64_t sub_1BAFEBE80()
{
  if (*(v0 + 40))
  {
    sub_1BAFC6A68((v0 + 16));
  }

  return swift_deallocClassInstance();
}

void *sub_1BAFEBF1C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BAFEC0A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BAFEBF3C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BAFEC1D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAFEBF5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BAFEC31C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BAFEBF7C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BAFEC410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAFEBF9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAFD86D0(&qword_1EBC3B4A8, &qword_1BB01A148);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BAFEC0A0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1BAFD86D0(&qword_1EBC3B470, &qword_1BB01A110);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BAFD86D0(&qword_1EBC3B478, &qword_1BB01A840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BAFEC1D4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BAFD86D0(&qword_1EBC3B490, &qword_1BB01A128);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAFEC31C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAFD86D0(&qword_1EBC3B498, &qword_1BB01A130);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_1BAFEC410(void *result, int64_t a2, char a3, void *a4)
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

  sub_1BAFD86D0(&qword_1EBC3B480, &qword_1BB01A118);
  v10 = *(type metadata accessor for PolicyTerritoryKey(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for PolicyTerritoryKey(0) - 8);
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

uint64_t sub_1BAFEC5E8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1BB014B48();
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1BB014B38();

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = sub_1BB014B38();
    v8 = [v6 objectForKey_];

    if (v8)
    {
      sub_1BB014EB8();

      swift_unknownObjectRelease();
    }

    else
    {

      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        a3 = v10;
      }
    }

    else
    {
      sub_1BAFE2D64(v13, &unk_1EBC3B3F0, &qword_1BB019060);
    }
  }

  return a3 & 1;
}

id _s17AdPlatformsCommon18LegacyFeatureFlagsC22deviceCapabilityEngineAA06DevicehI0CvgZ_0()
{
  if (qword_1EDD500D0 != -1)
  {
    swift_once();
  }

  v0 = off_1EDD500D8;
  swift_beginAccess();
  if (*(v0 + 5))
  {
    sub_1BAFC6DB4((v0 + 1), &v19);
    if (*(&v20 + 1))
    {
LABEL_5:
      sub_1BAFC6D0C(&v19, v22);
      sub_1BAFC6DB4(v22, &v19);
      v1 = type metadata accessor for DeviceCapabilityConfiguration();
      v2 = objc_allocWithZone(v1);
      sub_1BAFC6DB4(&v19, v2 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature);
      v17.receiver = v2;
      v17.super_class = v1;
      v3 = objc_msgSendSuper2(&v17, sel_init);
      sub_1BAFC6A68(&v19);
      v4 = type metadata accessor for DeviceCapabilityEngine();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC17AdPlatformsCommon22DeviceCapabilityEngine_configurator] = v3;
      v16.receiver = v5;
      v16.super_class = v4;
      v6 = objc_msgSendSuper2(&v16, sel_init);
      sub_1BAFC6A68(v22);
      return v6;
    }
  }

  else
  {
    v8 = v0[2];
    v19 = v0[1];
    v20 = v8;
    v21 = *(v0 + 6);
    if (*(&v8 + 1))
    {
      goto LABEL_5;
    }
  }

  v9 = [objc_opt_self() processInfo];
  v10 = [v9 isRunningTests];

  if ((v10 & 1) == 0)
  {
    v11 = sub_1BB014B38();
    v12 = sub_1BB014B38();
    CreateDiagnosticReport();
  }

  v13 = [objc_allocWithZone(type metadata accessor for NoDeviceCapabilityConfiguration()) init];
  v14 = type metadata accessor for DeviceCapabilityEngine();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC17AdPlatformsCommon22DeviceCapabilityEngine_configurator] = v13;
  v18.receiver = v15;
  v18.super_class = v14;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t _s17AdPlatformsCommon18LegacyFeatureFlagsC22devicePipelinesEnabledSbvgZ_0()
{
  if (qword_1EDD500D0 != -1)
  {
    swift_once();
  }

  v0 = 1;
  v4 = 1;
  if ((sub_1BAFEBA64(&v4) & 1) == 0)
  {
    v3 = 2;
    if ((sub_1BAFEBA64(&v3) & 1) == 0)
    {
      v2 = 3;
      v0 = sub_1BAFEBA64(&v2);
    }
  }

  return v0 & 1;
}

uint64_t _s17AdPlatformsCommon18LegacyFeatureFlagsC20attributionV2EnabledSbvgZ_0()
{
  if (qword_1EDD500D0 != -1)
  {
    swift_once();
  }

  v5 = 1;
  if (sub_1BAFEBA64(&v5) & 1) != 0 || (v4 = 2, (sub_1BAFEBA64(&v4)) || (v3 = 3, (sub_1BAFEBA64(&v3)))
  {
    v2 = 1;
    v0 = sub_1BAFEBA64(&v2);
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t DefaultFeatureFlag.__allocating_init(executionEnvironment:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BAFC6D0C(a1, v2 + 16);
  return v2;
}

uint64_t DefaultFeatureFlag.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

AdPlatformsCommon::AdContainerAdapter_optional __swiftcall AdContainerAdapter.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 94;
  if ((rawValue - 6050) >= 6)
  {
    v2 = 6;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BAFECC18()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1 + 6050);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFECC98(uint64_t a1)
{
  v2 = *v1;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v2 + 6050);
  return sub_1BB0151F8();
}

uint64_t AppPlacementLocationInternal.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

unint64_t sub_1BAFECD88()
{
  result = qword_1EBC3B4B0;
  if (!qword_1EBC3B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B4B0);
  }

  return result;
}

unint64_t sub_1BAFECDE0()
{
  result = qword_1EBC3B4B8;
  if (!qword_1EBC3B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B4B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdContainerAdapter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdContainerAdapter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdTypeInternal(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdTypeInternal(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
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

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BAFED0DC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BAFED0F0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t static SponsorshipArchive.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBC3B4C0 = a1;
  return result;
}

id SponsorshipArchive.__allocating_init(contentData:context:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_contentData] = a1;
  *&v5[OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_context] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SponsorshipArchive.init(contentData:context:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_contentData] = a1;
  *&v2[OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_context] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SponsorshipArchive.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BB014B38();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_1BB014EB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {

LABEL_15:
    sub_1BAFDF804(&v15);
    goto LABEL_16;
  }

  sub_1BAFD86D0(&qword_1EBC3B4E0, &qword_1BB01A3C8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v6 = sub_1BB014B38();
  v7 = [a1 decodeObjectForKey_];

  if (v7)
  {
    sub_1BB014EB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (!*(&v14 + 1))
  {

    goto LABEL_15;
  }

  sub_1BAFC5BB4(0, &qword_1EBC3B4E8, off_1E7F208E0);
  if (swift_dynamicCast())
  {
    v8 = v12;
    *&v1[OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_contentData] = v12;
    *&v1[OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_context] = v8;
    v11.receiver = v1;
    v11.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v11, sel_init);

    return v9;
  }

LABEL_16:
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall SponsorshipArchive.encode(with:)(NSCoder with)
{
  sub_1BAFC5BB4(0, &qword_1EBC3B4F0, off_1E7F208D0);
  v3 = sub_1BB014C68();
  v4 = sub_1BB014B38();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon18SponsorshipArchive_context);
  v6 = sub_1BB014B38();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id SponsorshipArchive.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SponsorshipArchive.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RotatingIdentifier.value.getter()
{
  v1 = (v0 + OBJC_IVAR___APRotatingIdentifier_value);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t RotatingIdentifier.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___APRotatingIdentifier_value);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t RotatingIdentifier.type.getter()
{
  v1 = OBJC_IVAR___APRotatingIdentifier_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RotatingIdentifier.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___APRotatingIdentifier_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t RotatingIdentifier.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
  swift_beginAccess();
  v4 = sub_1BB014398();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t RotatingIdentifier.expirationDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
  swift_beginAccess();
  v4 = sub_1BB014398();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id RotatingIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1BAFEE340()
{
  v1 = *v0;
  v2 = 0x65756C6176;
  v3 = 0x656372756F73;
  v4 = 0x6974617269707865;
  if (v1 != 3)
  {
    v4 = 0x49737365636F7270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_1BAFEE3DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BAFEF170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BAFEE41C(uint64_t a1)
{
  v2 = sub_1BAFEE950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAFEE458(uint64_t a1)
{
  v2 = sub_1BAFEE950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id RotatingIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RotatingIdentifier.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1BB014398();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAFD86D0(&qword_1EBC3B508, &qword_1BB01A400);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  sub_1BAFC6AB4(a1, a1[3]);
  sub_1BAFEE950();
  sub_1BB015228();
  swift_beginAccess();
  v23 = 0;

  v11 = v21;
  sub_1BB0150B8();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = v8;
    v19 = v6;
    v13 = v20;

    v14 = OBJC_IVAR___APRotatingIdentifier_type;
    swift_beginAccess();
    v22 = *(v2 + v14);
    v24 = 1;
    sub_1BAFE0B88();
    sub_1BB0150D8();
    LOBYTE(v22) = 2;
    sub_1BB0150C8();
    v15 = OBJC_IVAR___APRotatingIdentifier_expirationDate;
    swift_beginAccess();
    v16 = v13;
    v17 = *(v13 + 16);
    v18 = v19;
    v17(v19, v2 + v15, v4);
    v24 = 3;
    sub_1BAFEEE60(&qword_1EBC3B518, MEMORY[0x1E6969538]);
    sub_1BB0150D8();
    (*(v16 + 8))(v18, v4);
    v24 = 4;

    sub_1BB0150B8();
    (*(v21 + 8))(v10, v7);
  }
}

unint64_t sub_1BAFEE950()
{
  result = qword_1EDD4F378[0];
  if (!qword_1EDD4F378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD4F378);
  }

  return result;
}

void *RotatingIdentifier.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BB014398();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BAFD86D0(&qword_1EBC3B520, &qword_1BB01A408);
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - v7;
  v9 = a1[3];
  v29 = a1;
  sub_1BAFC6AB4(a1, v9);
  sub_1BAFEE950();
  v10 = v8;
  sub_1BB015218();
  if (v1)
  {
    v24 = v30;
    sub_1BAFC6A68(v29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = v5;
    v11 = v6;
    v12 = v27;
    v13 = v28;
    LOBYTE(v34) = 0;
    v14 = v10;
    v15 = sub_1BB015068();
    v17 = v30;
    v18 = (v30 + OBJC_IVAR___APRotatingIdentifier_value);
    *v18 = v15;
    v18[1] = v19;
    v33 = 1;
    sub_1BAFEEE0C();
    sub_1BB015088();
    *&v17[OBJC_IVAR___APRotatingIdentifier_type] = v34;
    LOBYTE(v34) = 2;
    *&v17[OBJC_IVAR___APRotatingIdentifier_source] = sub_1BB015078();
    LOBYTE(v34) = 3;
    sub_1BAFEEE60(&qword_1EDD4FF60, MEMORY[0x1E6969558]);
    v20 = v26;
    sub_1BB015088();
    (*(v12 + 32))(&v17[OBJC_IVAR___APRotatingIdentifier_expirationDate], v20, v3);
    LOBYTE(v34) = 4;
    v21 = sub_1BB015068();
    v22 = &v17[OBJC_IVAR___APRotatingIdentifier_processId];
    *v22 = v21;
    v22[1] = v23;
    v32.receiver = v17;
    v32.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v32, sel_init);
    (*(v11 + 8))(v14, v13);
    sub_1BAFC6A68(v29);
  }

  return v24;
}

unint64_t sub_1BAFEEE0C()
{
  result = qword_1EDD4F7F0;
  if (!qword_1EDD4F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4F7F0);
  }

  return result;
}

uint64_t sub_1BAFEEE60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BB014398();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1BAFEEEA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = RotatingIdentifier.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t type metadata accessor for RotatingIdentifier(uint64_t a1)
{
  result = qword_1EDD500B8;
  if (!qword_1EDD500B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFEEF6C(uint64_t a1)
{
  result = sub_1BB014398();
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

unint64_t sub_1BAFEF06C()
{
  result = qword_1EBC3B528;
  if (!qword_1EBC3B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B528);
  }

  return result;
}

unint64_t sub_1BAFEF0C4()
{
  result = qword_1EDD4F368;
  if (!qword_1EDD4F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4F368);
  }

  return result;
}

unint64_t sub_1BAFEF11C()
{
  result = qword_1EDD4F370;
  if (!qword_1EDD4F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4F370);
  }

  return result;
}

uint64_t sub_1BAFEF170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BB015118() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1BB015118() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_1BB015118() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49737365636F7270 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BB015118();

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

uint64_t sub_1BAFEF32C(char *a1)
{
  v2 = *&a1[*(type metadata accessor for IdentifierData(0) + 28)];
  sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
  sub_1BAFF2764(&qword_1EDD4E1A0, &qword_1EBC3B0C8, &qword_1BB01ACC0, MEMORY[0x1E69E6340]);
  if ((sub_1BB014D68() & 1) == 0)
  {
    return 1;
  }

  if ((sub_1BB014598() & 1) == 0)
  {
    return 4;
  }

  sub_1BAFEF478(a1);
  v3 = sub_1BAFEF800(a1);
  sub_1BAFEFD0C(v2, v3);
  v5 = sub_1BB014598();
  if (v5)
  {
    return 10;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1BAFEF478(uint64_t a1)
{
  v2 = type metadata accessor for IdentifierData(0);
  v3 = *(a1 + v2[7]);
  sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
  sub_1BAFF2764(&qword_1EDD4E1A0, &qword_1EBC3B0C8, &qword_1BB01ACC0, MEMORY[0x1E69E6340]);
  if ((sub_1BB014D68() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BB018AE0;
  v5 = MEMORY[0x1E6986170];
  v6 = *(a1 + v2[9] + 32);
  *(v4 + 56) = MEMORY[0x1E69E6530];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  v7 = (a1 + v2[8]);
  v9 = *v7;
  v8 = v7[1];
  v10 = MEMORY[0x1E6986168];
  *(v4 + 96) = MEMORY[0x1E69E6158];
  *(v4 + 104) = v10;
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;
  v11 = *(v3 + 16);

  if (v11 == 1)
  {
    MEMORY[0x1BFB06D20](0xD000000000000011, 0x80000001BB020CB0);
    if (*(v3 + 16))
    {
      v12 = *(v3 + 32);
      v13 = MEMORY[0x1E6986170];
      v14 = MEMORY[0x1E69E6530];
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
    }

    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_1BB00BEAC((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 16) = v20 + 1;
    v21 = (v4 + 40 * v20);
    v21[4] = v12;
    v21[5] = 0;
    v21[6] = 0;
    v21[7] = v14;
    v21[8] = v13;
  }

  else
  {
    sub_1BAFF26C8(0x3F, 0xE100000000000000, v11);
    sub_1BAFD86D0(&qword_1EBC3B540, &qword_1BB01A640);
    sub_1BAFF2764(&qword_1EDD4E1B0, &qword_1EBC3B540, &qword_1BB01A640, MEMORY[0x1E69E6310]);
    v15 = sub_1BB014AF8();
    v17 = v16;

    MEMORY[0x1BFB06D20](v15, v17);

    MEMORY[0x1BFB06D20](41, 0xE100000000000000);

    MEMORY[0x1BFB06D20](0xD000000000000012, 0x80000001BB020C90);

    v18 = sub_1BAFF183C(v3);
    sub_1BAFF1958(v18);
  }

  MEMORY[0x1BFB06D20](41, 0xE100000000000000);
  v22 = sub_1BB014568();

  if ((v22 & 1) == 0)
  {
LABEL_11:
    sub_1BAFD9FCC();
    swift_allocError();
    *v24 = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAFEF800(char *a1)
{
  v2 = type metadata accessor for IdentifierData(0);
  v3 = &a1[v2[9]];
  v5 = *v3;
  v4 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = v3[32];
  v73 = v8;
  v71 = v4;
  v72 = v7;
  v70 = v5;
  if (v8)
  {
    v69 = v6;
    if (v8 == 1)
    {
      sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BB01A5C0;
      v10 = MEMORY[0x1E6986168];
      v11 = *a1;
      v12 = *(a1 + 1);
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = v10;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      v13 = v2[5];
      v14 = sub_1BB014398();
      v15 = MEMORY[0x1E6986098];
      *(v9 + 96) = v14;
      *(v9 + 104) = v15;
      v16 = sub_1BAFD87F0((v9 + 72));
      v17 = *(*(v14 - 8) + 16);
      v17(v16, &a1[v13], v14);
      v18 = MEMORY[0x1E6986170];
      *(v9 + 136) = MEMORY[0x1E69E6530];
      *(v9 + 144) = v18;
      *(v9 + 112) = 1;
      v19 = v2[6];
      *(v9 + 176) = v14;
      *(v9 + 184) = v15;
      v20 = sub_1BAFD87F0((v9 + 152));
      v17(v20, &a1[v19], v14);
      v21 = MEMORY[0x1E69E6158];
      *(v9 + 216) = MEMORY[0x1E69E6158];
      v22 = MEMORY[0x1E6986168];
      v23 = v5;
      v24 = v72;
      *(v9 + 192) = v5;
      *(v9 + 200) = v71;
      *(v9 + 256) = v21;
      *(v9 + 264) = v22;
      v25 = v21;
      *(v9 + 224) = v22;
      *(v9 + 232) = v72;
      v26 = v69;
      *(v9 + 240) = v69;
      v27 = v2[8];
      v28 = v71;
      v29 = &a1[v27];
      v31 = *v29;
      v30 = *(v29 + 1);
      *(v9 + 296) = v25;
      *(v9 + 304) = v22;
      *(v9 + 272) = v31;
    }

    else
    {
      sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1BB01A5C0;
      v49 = MEMORY[0x1E6986168];
      v50 = *a1;
      v51 = *(a1 + 1);
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = v49;
      *(v9 + 32) = v50;
      *(v9 + 40) = v51;
      v52 = v2[5];
      v53 = sub_1BB014398();
      v54 = MEMORY[0x1E6986098];
      *(v9 + 96) = v53;
      *(v9 + 104) = v54;
      v55 = sub_1BAFD87F0((v9 + 72));
      v56 = *(*(v53 - 8) + 16);
      v56(v55, &a1[v52], v53);
      v57 = MEMORY[0x1E69E6530];
      v58 = MEMORY[0x1E6986170];
      *(v9 + 136) = MEMORY[0x1E69E6530];
      *(v9 + 144) = v58;
      *(v9 + 112) = 2;
      v59 = v2[6];
      *(v9 + 176) = v53;
      *(v9 + 184) = MEMORY[0x1E6986098];
      v60 = sub_1BAFD87F0((v9 + 152));
      v56(v60, &a1[v59], v53);
      *(v9 + 216) = v57;
      *(v9 + 224) = v58;
      v23 = v70;
      *(v9 + 192) = v70;
      v61 = &a1[v2[8]];
      v62 = *v61;
      v63 = *(v61 + 1);
      v64 = MEMORY[0x1E69E6158];
      *(v9 + 256) = MEMORY[0x1E69E6158];
      v65 = MEMORY[0x1E6986168];
      *(v9 + 232) = v62;
      *(v9 + 240) = v63;
      *(v9 + 296) = v64;
      *(v9 + 304) = v65;
      v28 = v71;
      v24 = v72;
      *(v9 + 264) = v65;
      *(v9 + 272) = v71;
      v30 = v72;
      v26 = v69;
    }
  }

  else
  {
    v26 = v6;
    sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BB01A5C0;
    v32 = MEMORY[0x1E6986168];
    v33 = *a1;
    v34 = *(a1 + 1);
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = v32;
    *(v9 + 32) = v33;
    *(v9 + 40) = v34;
    v35 = v2[5];
    v36 = sub_1BB014398();
    v37 = MEMORY[0x1E6986098];
    *(v9 + 96) = v36;
    *(v9 + 104) = v37;
    v38 = sub_1BAFD87F0((v9 + 72));
    v39 = *(*(v36 - 8) + 16);
    v39(v38, &a1[v35], v36);
    v40 = MEMORY[0x1E6986170];
    *(v9 + 136) = MEMORY[0x1E69E6530];
    *(v9 + 144) = v40;
    *(v9 + 112) = 0;
    v41 = v2[6];
    *(v9 + 176) = v36;
    *(v9 + 184) = MEMORY[0x1E6986098];
    v42 = sub_1BAFD87F0((v9 + 152));
    v43 = &a1[v41];
    v24 = v72;
    v39(v42, v43, v36);
    v44 = MEMORY[0x1E69E6158];
    *(v9 + 216) = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E6986168];
    *(v9 + 224) = MEMORY[0x1E6986168];
    *(v9 + 232) = v72;
    v23 = v70;
    *(v9 + 192) = v70;
    *(v9 + 200) = v71;
    *(v9 + 256) = v44;
    *(v9 + 264) = v45;
    *(v9 + 240) = v26;
    v46 = v2[8];
    v28 = v71;
    v47 = &a1[v46];
    v48 = *v47;
    v30 = *(v47 + 1);
    *(v9 + 296) = v44;
    *(v9 + 304) = v45;
    *(v9 + 272) = v48;
  }

  *(v9 + 280) = v30;

  sub_1BAFF27AC(v23, v28, v24, v26, v73);
  v66 = sub_1BB014578();

  if (v66 < 1)
  {
    sub_1BAFD9FCC();
    swift_allocError();
    *v67 = 1;
    swift_willThrow();
  }

  return v66;
}

uint64_t sub_1BAFEFD0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  sub_1BAFF26C8(0x293F202C3F28, 0xE600000000000000, v4);
  sub_1BAFD86D0(&qword_1EBC3B540, &qword_1BB01A640);
  sub_1BAFF2764(&qword_1EDD4E1B0, &qword_1EBC3B540, &qword_1BB01A640, MEMORY[0x1E69E6310]);
  v5 = sub_1BB014AF8();
  v7 = v6;

  MEMORY[0x1BFB06D20](v5, v7);

  v8 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v9 = (a1 + 32);
    while (1)
    {
      v10 = *v9++;
      sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
      result = swift_initStackObject();
      *(result + 16) = xmmword_1BB018AE0;
      *(result + 32) = a2;
      *(result + 56) = MEMORY[0x1E69E7360];
      *(result + 64) = MEMORY[0x1E6986178];
      *(result + 96) = MEMORY[0x1E69E6530];
      *(result + 104) = MEMORY[0x1E6986170];
      *(result + 72) = v10;
      v12 = v8[2];
      v13 = v12 + 2;
      if (__OFADD__(v12, 2))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v14 = v8[3] >> 1, v14 < v13))
      {
        if (v12 <= v13)
        {
          v15 = v12 + 2;
        }

        else
        {
          v15 = v12;
        }

        result = sub_1BB00BEAC(result, v15, 1, v8);
        v8 = result;
        v14 = *(result + 24) >> 1;
      }

      if (v14 - v8[2] < 2)
      {
        goto LABEL_17;
      }

      sub_1BAFD86D0(&qword_1EBC3B490, &qword_1BB01A128);
      swift_arrayInitWithCopy();

      v16 = v8[2];
      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_18;
      }

      v8[2] = v18;
      if (!--v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_13:
    v19 = sub_1BB014578();

    if (v19 <= 0)
    {
      sub_1BAFD9FCC();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1BAFEFFE0(unint64_t a1, uint64_t a2)
{
  sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BB018AE0;
  if (a1 >= 3)
  {
    result = sub_1BB015138();
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E6530];
    v6 = MEMORY[0x1E6986170];
    *(v4 + 56) = MEMORY[0x1E69E6530];
    *(v4 + 64) = v6;
    *(v4 + 32) = a1;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = a2;
    type metadata accessor for IdentifierRow(0);
    sub_1BB0145A8();

    sub_1BAFC6D0C(&v10, v11);
    *&v10 = MEMORY[0x1E69E7CC0];
    v7 = sub_1BAFC6AB4(v11, v11[3]);
    MEMORY[0x1EEE9AC00](v7);
    sub_1BB014C28();
    v8 = v10;
    sub_1BAFC6A68(v11);
    return v8;
  }

  return result;
}

uint64_t sub_1BAFF06E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v32 = a5;
  v7 = type metadata accessor for IdentifierData(0);
  v34 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BB0187E0;
  v14 = *a1;
  v15 = MEMORY[0x1E6986178];
  *(v13 + 56) = MEMORY[0x1E69E7360];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  sub_1BB0145A8();

  if (!v5)
  {
    v31 = v10;
    v17 = sub_1BAFC6AB4(v33, v33[3]);
    MEMORY[0x1EEE9AC00](v17);
    (*(v19 + 16))(&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = sub_1BB014CF8();
    sub_1BAFF0A3C(a1, v20, v12);

    v21 = v12;
    v22 = v31;
    sub_1BAFF2834(v12, v31, type metadata accessor for IdentifierData);
    v23 = v32;
    v24 = *v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1BB00BFF4(0, v24[2] + 1, 1, v24);
      *v23 = v24;
    }

    v26 = v34;
    v28 = v24[2];
    v27 = v24[3];
    if (v28 >= v27 >> 1)
    {
      *v23 = sub_1BB00BFF4((v27 > 1), v28 + 1, 1, v24);
    }

    sub_1BAFF289C(v21, type metadata accessor for IdentifierData);
    v29 = *v23;
    *(v29 + 16) = v28 + 1;
    sub_1BAFF2660(v22, v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, type metadata accessor for IdentifierData);
    return sub_1BAFC6A68(v33);
  }

  return result;
}

uint64_t sub_1BAFF0A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for IdentifierData(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v18 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  v16 = *(a1 + *(type metadata accessor for IdentifierRow(0) + 28));
  if (v16 == 2)
  {
    result = sub_1BAFF21E4(a1, a2, v10);
    if (v3)
    {
      return result;
    }

    return sub_1BAFF2660(v10, a3, type metadata accessor for IdentifierData);
  }

  if (v16 == 1)
  {
    result = sub_1BAFF1E20(a1, a2, v13);
    if (v3)
    {
      return result;
    }

    v10 = v13;
    return sub_1BAFF2660(v10, a3, type metadata accessor for IdentifierData);
  }

  if (v16)
  {
    v18[1] = v16;
    result = sub_1BB015138();
    __break(1u);
    return result;
  }

  result = sub_1BAFF1A60(a1, a2, v15);
  if (!v3)
  {
    v10 = v15;
    return sub_1BAFF2660(v10, a3, type metadata accessor for IdentifierData);
  }

  return result;
}

uint64_t sub_1BAFF0BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v8 = type metadata accessor for IdentifierData(0);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - v11;
  v12 = sub_1BAFD86D0(&qword_1EBC3B530, &unk_1BB01A620);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for IdentifierRow(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = v4;
  v42 = (&v38 - v20);
  sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E6986168];
  *(v21 + 16) = xmmword_1BB018AE0;
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  v45 = a1;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  if (a3 >= 3)
  {
    v48[0] = a3;

    result = sub_1BB015138();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x1E6986170];
    *(v21 + 96) = MEMORY[0x1E69E6530];
    *(v21 + 104) = v24;
    *(v21 + 72) = a3;
    v46 = a2;

    sub_1BB014588();

    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1BAFF25F8(v14);
      (*(v43 + 56))(v47, 1, 1, v44);
    }

    else
    {
      sub_1BAFF2660(v14, v19, type metadata accessor for IdentifierRow);
      v26 = v42;
      sub_1BAFF2660(v19, v42, type metadata accessor for IdentifierRow);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1BB0187E0;
      v28 = *v26;
      v29 = MEMORY[0x1E6986178];
      *(v27 + 56) = MEMORY[0x1E69E7360];
      *(v27 + 64) = v29;
      *(v27 + 32) = v28;
      sub_1BB0145A8();

      v30 = sub_1BAFC6AB4(v48, v48[3]);
      MEMORY[0x1EEE9AC00](v30);
      (*(v32 + 16))(&v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = sub_1BB014CF8();
      v34 = v40;
      sub_1BAFF0A3C(v26, v33, v40);
      sub_1BAFF289C(v26, type metadata accessor for IdentifierRow);

      v35 = v39;
      sub_1BAFF2660(v34, v39, type metadata accessor for IdentifierData);
      sub_1BAFC6A68(v48);
      v36 = v35;
      v37 = v47;
      sub_1BAFF2660(v36, v47, type metadata accessor for IdentifierData);
      (*(v43 + 56))(v37, 0, 1, v44);
    }

    sub_1BAFD86D0(&qword_1EBC3B538, &unk_1BB01BC00);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1BAFF1650@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BAFC6AB4(a1, a1[3]);
  result = sub_1BB014518();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_1BAFF16B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BB014F58();
  MEMORY[0x1BFB06D20](0xD000000000000031, 0x80000001BB0208C0);
  v6 = MEMORY[0x1E69E6530];
  v7 = sub_1BB0150F8();
  MEMORY[0x1BFB06D20](v7);

  MEMORY[0x1BFB06D20](0xD00000000000004DLL, 0x80000001BB020900);
  sub_1BAFD86D0(&qword_1EBC3B488, &qword_1BB01A120);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BB018AE0;
  v9 = MEMORY[0x1E6986168];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = v9;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  v10 = MEMORY[0x1E6986170];
  *(v8 + 96) = v6;
  *(v8 + 104) = v10;
  *(v8 + 72) = a3;

  LOBYTE(a2) = sub_1BB014568();

  if (a2)
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1BAFF183C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1BAFEBF3C(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1BAFD86D0(&qword_1EBC3B490, &qword_1BB01A128);
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BAFEBF3C((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1BAFF1958(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BB00BEAC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1BAFD86D0(&qword_1EBC3B490, &qword_1BB01A128);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BAFF1A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for IdentifierRow(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v42 - v11;
  v13 = (a1 + *(v10 + 44));
  v14 = v13[1];
  if (v14 && (v15 = (a1 + v6[12]), (v16 = v15[1]) != 0) && (v17 = (a1 + v6[10]), (v18 = v17[1]) != 0))
  {
    v51 = *v13;
    v19 = *v15;
    v49 = v16;
    v50 = v19;
    v20 = *v17;
    v47 = v18;
    v48 = v20;
    v21 = *(a1 + 8);
    v45 = *(a1 + 16);
    v46 = v21;
    v44 = v6[6];
    v22 = type metadata accessor for IdentifierData(0);
    v42 = v22[5];
    v23 = sub_1BB014398();
    v24 = *(v23 - 8);
    v43 = a2;
    v25 = *(v24 + 16);
    v25(&a3[v42], a1 + v44, v23);
    v25(&a3[v22[6]], a1 + v6[8], v23);
    v26 = v45;
    *a3 = v46;
    *(a3 + 1) = v26;
    *&a3[v22[7]] = v43;
    v27 = &a3[v22[8]];
    v28 = v47;
    *v27 = v48;
    *(v27 + 1) = v28;
    v29 = &a3[v22[9]];
    v30 = v50;
    *v29 = v51;
    *(v29 + 1) = v14;
    v31 = v49;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v29[32] = 0;
  }

  else
  {
    v33 = sub_1BB014DB8();
    sub_1BAFC5D64();
    v34 = sub_1BB014E68();
    sub_1BAFF2834(a1, v12, type metadata accessor for IdentifierRow);
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136315138;
      sub_1BAFF2834(v12, v9, type metadata accessor for IdentifierRow);
      v37 = sub_1BB014B88();
      v39 = v38;
      sub_1BAFF289C(v12, type metadata accessor for IdentifierRow);
      v40 = sub_1BB01313C(v37, v39, &v52);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1BAFC4000, v34, v33, "[IdentifierDataStore] Failed to build AnonymousSessionId for row: %s.", v35, 0xCu);
      sub_1BAFC6A68(v36);
      MEMORY[0x1BFB07C70](v36, -1, -1);
      MEMORY[0x1BFB07C70](v35, -1, -1);
    }

    else
    {

      sub_1BAFF289C(v12, type metadata accessor for IdentifierRow);
    }

    sub_1BAFD9FCC();
    swift_allocError();
    *v41 = 7;
    return swift_willThrow();
  }
}

uint64_t sub_1BAFF1E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for IdentifierRow(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v42 - v11;
  v13 = (a1 + *(v10 + 48));
  v14 = v13[1];
  if (v14 && (v15 = (a1 + v6[13]), (v16 = v15[1]) != 0) && (v17 = (a1 + v6[10]), (v18 = v17[1]) != 0))
  {
    v51 = *v13;
    v19 = *v15;
    v49 = v16;
    v50 = v19;
    v20 = *v17;
    v47 = v18;
    v48 = v20;
    v21 = *(a1 + 8);
    v45 = *(a1 + 16);
    v46 = v21;
    v44 = v6[6];
    v22 = type metadata accessor for IdentifierData(0);
    v42 = v22[5];
    v23 = sub_1BB014398();
    v24 = *(v23 - 8);
    v43 = a2;
    v25 = *(v24 + 16);
    v25(&a3[v42], a1 + v44, v23);
    v25(&a3[v22[6]], a1 + v6[8], v23);
    v26 = v45;
    *a3 = v46;
    *(a3 + 1) = v26;
    *&a3[v22[7]] = v43;
    v27 = &a3[v22[8]];
    v28 = v47;
    *v27 = v48;
    *(v27 + 1) = v28;
    v29 = &a3[v22[9]];
    v30 = v50;
    *v29 = v51;
    *(v29 + 1) = v14;
    v31 = v49;
    *(v29 + 2) = v30;
    *(v29 + 3) = v31;
    v29[32] = 1;
  }

  else
  {
    v33 = sub_1BB014DB8();
    sub_1BAFC5D64();
    v34 = sub_1BB014E68();
    sub_1BAFF2834(a1, v12, type metadata accessor for IdentifierRow);
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v35 = 136315138;
      sub_1BAFF2834(v12, v9, type metadata accessor for IdentifierRow);
      v37 = sub_1BB014B88();
      v39 = v38;
      sub_1BAFF289C(v12, type metadata accessor for IdentifierRow);
      v40 = sub_1BB01313C(v37, v39, &v52);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1BAFC4000, v34, v33, "[IdentifierDataStore] Failed to build BucketIdData for row: %s.", v35, 0xCu);
      sub_1BAFC6A68(v36);
      MEMORY[0x1BFB07C70](v36, -1, -1);
      MEMORY[0x1BFB07C70](v35, -1, -1);
    }

    else
    {

      sub_1BAFF289C(v12, type metadata accessor for IdentifierRow);
    }

    sub_1BAFD9FCC();
    swift_allocError();
    *v41 = 6;
    return swift_willThrow();
  }
}

uint64_t sub_1BAFF21E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for IdentifierRow(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v39 - v11;
  v13 = (a1 + *(v10 + 36));
  if ((v13[1] & 1) == 0 && (v14 = (a1 + v6[10]), (v15 = v14[1]) != 0) && (v16 = (a1 + v6[11]), (v17 = v16[1]) != 0))
  {
    v48 = *v13;
    v18 = *v14;
    v45 = v17;
    v46 = v18;
    v47 = *v16;
    v19 = *(a1 + 8);
    v43 = *(a1 + 16);
    v44 = v19;
    v42 = v6[6];
    v20 = type metadata accessor for IdentifierData(0);
    v40 = v20[5];
    v21 = sub_1BB014398();
    v22 = *(v21 - 8);
    v41 = a2;
    v23 = *(v22 + 16);
    v23(&a3[v40], a1 + v42, v21);
    v23(&a3[v20[6]], a1 + v6[8], v21);
    v24 = v43;
    *a3 = v44;
    *(a3 + 1) = v24;
    *&a3[v20[7]] = v41;
    v25 = &a3[v20[8]];
    v26 = v45;
    *v25 = v46;
    *(v25 + 1) = v15;
    v27 = &a3[v20[9]];
    v28 = v47;
    *v27 = v48;
    *(v27 + 1) = v28;
    *(v27 + 2) = v26;
    *(v27 + 3) = 0;
    v27[32] = 2;
  }

  else
  {
    v30 = sub_1BB014DB8();
    sub_1BAFC5D64();
    v31 = sub_1BB014E68();
    sub_1BAFF2834(a1, v12, type metadata accessor for IdentifierRow);
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315138;
      sub_1BAFF2834(v12, v9, type metadata accessor for IdentifierRow);
      v34 = sub_1BB014B88();
      v36 = v35;
      sub_1BAFF289C(v12, type metadata accessor for IdentifierRow);
      v37 = sub_1BB01313C(v34, v36, &v49);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1BAFC4000, v31, v30, "[IdentifierDataStore] Failed to build BucketIdData for row: %s.", v32, 0xCu);
      sub_1BAFC6A68(v33);
      MEMORY[0x1BFB07C70](v33, -1, -1);
      MEMORY[0x1BFB07C70](v32, -1, -1);
    }

    else
    {

      sub_1BAFF289C(v12, type metadata accessor for IdentifierRow);
    }

    sub_1BAFD9FCC();
    swift_allocError();
    *v38 = 8;
    return swift_willThrow();
  }
}

uint64_t sub_1BAFF259C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFF25F8(uint64_t a1)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B530, &unk_1BB01A620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAFF2660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1BAFF26C8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1BB014CB8();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1BAFF2764(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BAFD9DF0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BAFF27AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {

LABEL_4:

    return;
  }

  if (a5 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_1BAFF2834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAFF289C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

AdPlatformsCommon::StorefrontID_optional __swiftcall storefrontIDFromStorefront(_:)(Swift::String a1)
{
  v2 = v1;
  sub_1BAFEB61C();
  v3 = sub_1BB014EA8();
  if (v3[2] == 2 && (v4 = v3[4], v5 = v3[5], v6 = v3[6], v7 = v3[7], , , MEMORY[0x1BFB06CF0](v4, v5, v6, v7), , v8 = sub_1BB014EA8(), , (v8[2] - 3) >= 0xFFFFFFFFFFFFFFFELL))
  {
    v10 = v8[4];
    v11 = v8[5];
    v12 = v8[6];
    v13 = v8[7];

    v14 = MEMORY[0x1BFB06CF0](v10, v11, v12, v13);
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    return StorefrontID.init(value:)(v17);
  }

  else
  {

    *v2 = 0;
    v2[1] = 0;
  }

  return v9;
}

void *DeviceCapabilityConfiguration.__allocating_init(adFeatures:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1BAFC6DB4(a1, v3 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_1BAFC6A68(a1);
  return v4;
}

id NoDeviceCapabilityConfiguration.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoDeviceCapabilityConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

void *DeviceCapabilityConfiguration.init(adFeatures:)(void *a1)
{
  sub_1BAFC6DB4(a1, v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceCapabilityConfiguration();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1BAFC6A68(a1);
  return v3;
}

uint64_t sub_1BAFF2C98(int a1)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        goto LABEL_15;
      case 4:
        v5 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 24);
        v6 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 32);
        sub_1BAFC6AB4((v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature), v5);
        v21 = 4;
        v4 = (*(v6 + 24))(&v21, v5, v6);
        goto LABEL_12;
      case 5:
LABEL_15:
        v13 = (v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature);
        v14 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 24);
        v15 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 32);
        sub_1BAFC6AB4((v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature), v14);
        v11 = 1;
        v23 = 1;
        if ((*(v15 + 24))(&v23, v14, v15))
        {
          return v11 & 1;
        }

        v16 = v13[3];
        v17 = v13[4];
        sub_1BAFC6AB4(v13, v16);
        v22 = 2;
        v4 = (*(v17 + 24))(&v22, v16, v17);
LABEL_12:
        v11 = v4;
        return v11 & 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v7 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 24);
        v8 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 32);
        sub_1BAFC6AB4((v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature), v7);
        v18 = 0;
        v4 = (*(v8 + 24))(&v18, v7, v8);
        goto LABEL_12;
      case 1:
        v2 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 24);
        v3 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 32);
        sub_1BAFC6AB4((v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature), v2);
        v19 = 1;
        v4 = (*(v3 + 24))(&v19, v2, v3);
        goto LABEL_12;
      case 2:
        v9 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 24);
        v10 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature + 32);
        sub_1BAFC6AB4((v1 + OBJC_IVAR____TtC17AdPlatformsCommon29DeviceCapabilityConfiguration_feature), v9);
        v20 = 2;
        v4 = (*(v10 + 24))(&v20, v9, v10);
        goto LABEL_12;
    }
  }

  result = sub_1BB015138();
  __break(1u);
  return result;
}

id DeviceCapabilityConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BAFF2F70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t FeatureFlagOverride.__allocating_init(overrideStorage:cohortCandidateStorage:fallback:)(void *a1, void *a2, void *a3)
{
  swift_allocObject();
  v7 = sub_1BAFC6B68(a1, a2, a3, v6);
  sub_1BAFC6A68(a3);
  return v7;
}

uint64_t FeatureFlagOverride.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFF3160(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v20 = a2;
  v19 = a1;
  v5 = sub_1BB014A48();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BB014A68();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BB014398();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v14, &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v16 = v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v19;
  *(v16 + 8) = v20;
  aBlock[4] = sub_1BAFF3A04;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAFF3A98;
  aBlock[3] = &unk_1F390D468;
  v17 = _Block_copy(aBlock);
  sub_1BB014A58();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1BAFF3AF4();
  sub_1BAFD86D0(&qword_1EBC3B550, &qword_1BB01A7E8);
  sub_1BAFF3B4C();
  sub_1BB014ED8();
  MEMORY[0x1BFB06F30](0, v10, v7, v17);
  _Block_release(v17);
  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v21);
}

void sub_1BAFF34B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_1BB014398();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014388();
  sub_1BB014328();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = sub_1BB014DA8();
  sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
  v12 = sub_1BB014E68();
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315650;
    if (a2 == 2)
    {
      v16 = 0xE800000000000000;
      v17 = 0x644974656B637542;
    }

    else
    {
      if (a2 == 1)
      {
        v15 = "RotatedAnonymousId";
      }

      else
      {
        if (a2)
        {
          v34[1] = a2;
          sub_1BB015138();
          __break(1u);
          return;
        }

        v15 = "AnonymousSessionId";
      }

      v16 = (v15 - 32) | 0x8000000000000000;
      v17 = 0xD000000000000012;
    }

    v18 = sub_1BB01313C(v17, v16, &v35);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = 0xE700000000000000;
    v20 = 0x64657269707845;
    v21 = 0x20746E756F636341;
    v22 = 0xEF6465676E616863;
    v23 = 0x80000001BB01FFF0;
    if (a3 == 3)
    {
      v24 = 0xD000000000000011;
    }

    else
    {
      v24 = 0xD000000000000012;
    }

    if (a3 != 3)
    {
      v23 = 0x80000001BB01FFD0;
    }

    if (a3 != 2)
    {
      v21 = v24;
      v22 = v23;
    }

    if (a3)
    {
      v20 = 0x20737365636F7250;
      v19 = 0xEF6465676E616863;
    }

    if (a3 <= 1u)
    {
      v25 = v20;
    }

    else
    {
      v25 = v21;
    }

    if (a3 <= 1u)
    {
      v26 = v19;
    }

    else
    {
      v26 = v22;
    }

    v27 = sub_1BB01313C(v25, v26, &v35);

    *(v13 + 14) = v27;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v10;
    _os_log_impl(&dword_1BAFC4000, v12, v11, "Telemetry log, Identifier: %s, Rotation Reason: %s, timespan: %f.", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFB07C70](v14, -1, -1);
    MEMORY[0x1BFB07C70](v13, -1, -1);
  }

  v28 = [objc_opt_self() processInfo];
  v29 = [v28 isRunningTests];

  if ((v29 & 1) == 0)
  {
    v30 = objc_opt_self();
    v31 = sub_1BB014B38();
    sub_1BAFD86D0(&qword_1EBC3B558, &qword_1BB01A7F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB0187D0;
    strcpy((inited + 32), "IdentifierType");
    *(inited + 47) = -18;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    strcpy((inited + 56), "RotationReason");
    *(inited + 71) = -18;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 80) = 0x7073656D69544449;
    *(inited + 88) = 0xEA00000000006E61;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    sub_1BB013814(inited);
    swift_setDeallocating();
    sub_1BAFD86D0(&unk_1EBC3B560, &qword_1BB01A7F8);
    swift_arrayDestroy();
    sub_1BAFC5BB4(0, &qword_1EDD4FFC8, 0x1E69E58C0);
    v33 = sub_1BB014A78();

    [v30 sendEvent:v31 customPayload:v33];
  }
}

void sub_1BAFF3A04()
{
  v1 = *(sub_1BB014398() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_1BAFF34B4(v0 + v2, v4, v5);
}

uint64_t sub_1BAFF3A98(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BAFF3ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BAFF3AF4()
{
  result = qword_1EDD4E1F0;
  if (!qword_1EDD4E1F0)
  {
    sub_1BB014A48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E1F0);
  }

  return result;
}

unint64_t sub_1BAFF3B4C()
{
  result = qword_1EDD4E1C0;
  if (!qword_1EDD4E1C0)
  {
    sub_1BAFD9DF0(&qword_1EBC3B550, &qword_1BB01A7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD4E1C0);
  }

  return result;
}

unint64_t sub_1BAFF3BB0()
{
  sub_1BAFF3FAC();
  v1 = objc_opt_self();
  if (![v1 configurationForClass_])
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 rotatedAnonymousIds]) == 0 || (v4 = v3, v5 = sub_1BB014C78(), v4, v6 = sub_1BAFF3DF4(v5), , !v6))
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB0187E0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000001BB01F500;
    sub_1BAFD86D0(&qword_1EBC3B470, &qword_1BB01A110);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BB0187E0;
    *(v10 + 32) = *(v0 + 56);
    *(inited + 72) = sub_1BAFD86D0(&qword_1EBC3B0C0, &unk_1BB0188C0);
    *(inited + 48) = v10;

    v8 = sub_1BB0136E4(inited);
    swift_setDeallocating();
    sub_1BAFDDD84(inited + 32);
    return v8;
  }

  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1BB0187E0;
  *(v7 + 32) = 0xD000000000000013;
  *(v7 + 40) = 0x80000001BB01F500;
  *(v7 + 72) = sub_1BAFD86D0(&qword_1EBC3B0C0, &unk_1BB0188C0);
  *(v7 + 48) = v6;
  v8 = sub_1BB0136E4(v7);
  swift_setDeallocating();
  sub_1BAFDDD84(v7 + 32);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1BAFF3DF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1BAFEBF1C(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1BAFDB9B0(i, v9);
      sub_1BAFD86D0(&qword_1EBC3B478, &qword_1BB01A840);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1BAFEBF1C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1BAFF3F24()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1BAFF3FAC()
{
  result = qword_1EDD4E170;
  if (!qword_1EDD4E170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4E170);
  }

  return result;
}

uint64_t JourneyOrderVendor.__allocating_init(clock:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for IncrementingTimeFrame();
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  v3 = swift_allocObject();
  *(v3 + 16) = 0x2540BE3FFLL;
  *(v2 + 104) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 112) = v4;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1BAFF4098(uint64_t a1)
{
  swift_beginAccess();
  sub_1BAFC778C(a1 + 64, &v4);
  if (!v5)
  {
    return sub_1BAFC7274(&v4);
  }

  sub_1BAFC6D0C(&v4, v6);
  sub_1BAFC6D0C(v6, &v4);
  swift_beginAccess();
  sub_1BAFC69EC(&v4, v1 + 64);
  return swift_endAccess();
}

uint64_t sub_1BAFF4134(uint64_t a1)
{
  v3 = sub_1BB014398();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, a1, v3);
  v7 = *(v1 + 16);
  v8 = type metadata accessor for RelativeTimeFrame(0);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder) = 0;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_referenceTime, v6, v3);
  *(v9 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_clock) = v7;
  v12[3] = v8;
  v12[4] = &off_1F390D4B8;
  v12[0] = v9;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1BAFC69EC(v12, v1 + 24);
  return swift_endAccess();
}

uint64_t sub_1BAFF42A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BB0149A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  swift_beginAccess();
  sub_1BAFC778C(v2 + 64, v14);
  v8 = v15;
  sub_1BAFC7274(v14);
  if (v8)
  {
    sub_1BB014978();
    v9 = sub_1BB014988();
    v10 = sub_1BB014DA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BAFC4000, v9, v10, "Journey order: using created time frame", v11, 2u);
      MEMORY[0x1BFB07C70](v11, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return sub_1BAFC778C(v2 + 64, a1);
}

void *JourneyOrderVendor.deinit()
{
  swift_unknownObjectRelease();
  sub_1BAFC7274(v0 + 24);
  sub_1BAFC7274(v0 + 64);

  return v0;
}

uint64_t JourneyOrderVendor.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1BAFC7274(v0 + 24);
  sub_1BAFC7274(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFF44C4()
{
  v1 = v0;
  v2 = sub_1BB0149A8();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder;
  if ((*(v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder) & 0x8000000000000000) != 0)
  {
    sub_1BB014978();

    v8 = sub_1BB014988();
    v9 = sub_1BB014DB8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      *(v10 + 4) = *(v1 + v7);

      _os_log_impl(&dword_1BAFC4000, v8, v9, "Journey order: RelativeTimeFrame lastOrder < 0; %{public}ld", v10, 0xCu);
      MEMORY[0x1BFB07C70](v10, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1BAFF4644()
{
  v1 = v0;
  v2 = sub_1BB0149A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v49 = &v46 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v13 = sub_1BB014398();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_clock) now];
  sub_1BB014358();

  sub_1BB014328();
  v19 = v18;
  result = (*(v14 + 8))(v16, v13);
  v21 = round(v19 * 1000.0);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v50 = v6;
  v22 = v21;
  if (v21 < 0)
  {
    v46 = v3;
    v47 = v2;
    sub_1BB014978();

    v26 = sub_1BB014988();
    v27 = sub_1BB014DB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136315138;
      sub_1BAFE31B4();
      v30 = sub_1BB0150F8();
      v32 = sub_1BB01313C(v30, v31, &v51);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_1BAFC4000, v26, v27, "Journey order: reference time is in the future: %s", v28, 0xCu);
      sub_1BAFC6A68(v29);
      MEMORY[0x1BFB07C70](v29, -1, -1);
      MEMORY[0x1BFB07C70](v28, -1, -1);
    }

    v3 = v46;
    v2 = v47;
    v33 = *(v46 + 8);
    result = v33(v12, v47);
    v23 = v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder;
    v24 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder);
    if (v24 < v22)
    {
      *v23 = v22;
      v34 = v48;
      sub_1BB014978();

      v35 = sub_1BB014988();
      v36 = sub_1BB014DB8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134349056;
        *(v37 + 4) = *v23;

        _os_log_impl(&dword_1BAFC4000, v35, v36, "Journey order: RelativeTimeFrame lastOrder < 0; %{public}ld", v37, 0xCu);
        MEMORY[0x1BFB07C70](v37, -1, -1);
      }

      else
      {
      }

      v25 = v50;
      v33(v34, v2);
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v23 = v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder;
  v24 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder);
  if (v24 >= v22)
  {
LABEL_12:
    v38 = __OFADD__(v24, 1);
    v39 = v24 + 1;
    v25 = v50;
    if (!v38)
    {
      *v23 = v39;
      if (v39 < 0)
      {
        sub_1BB014978();

        v40 = sub_1BB014988();
        v41 = sub_1BB014DB8();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 134349056;
          *(v42 + 4) = *v23;

          _os_log_impl(&dword_1BAFC4000, v40, v41, "Journey order: RelativeTimeFrame lastOrder < 0; %{public}ld", v42, 0xCu);
          MEMORY[0x1BFB07C70](v42, -1, -1);
        }

        else
        {
        }

        (*(v3 + 8))(v49, v2);
      }

      goto LABEL_20;
    }

LABEL_27:
    __break(1u);
    return result;
  }

  *v23 = v22;
  v25 = v50;
LABEL_20:
  sub_1BB014978();

  v43 = sub_1BB014988();
  v44 = sub_1BB014DA8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    *(v45 + 4) = *v23;

    _os_log_impl(&dword_1BAFC4000, v43, v44, "Journey order: relative next: %ld", v45, 0xCu);
    MEMORY[0x1BFB07C70](v45, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v25, v2);
  return *v23;
}

uint64_t sub_1BAFF4C68()
{
  v1 = OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_referenceTime;
  v2 = sub_1BB014398();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAFF4D38()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder;
  v3 = *(v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17AdPlatformsCommonP33_1BCBFD7ABCCFB491369827E4E6338C4D17RelativeTimeFrame_lastOrder) = v5;
    sub_1BAFF44C4();
    return *(v1 + v2);
  }

  return result;
}

uint64_t sub_1BAFF4E70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAFF4EA4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BAFF4EA4(uint64_t result)
{
  if ((result - 7150) < 0xFFFFFFFFFFFFFFECLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFF4EC0()
{
  result = qword_1EBC3B578;
  if (!qword_1EBC3B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B578);
  }

  return result;
}

uint64_t sub_1BAFF4F44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BAFF4F78(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BAFF4F78(uint64_t result)
{
  if ((result - 7300) >= 0xE && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1BAFF4F9C()
{
  result = qword_1EBC3B580;
  if (!qword_1EBC3B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B580);
  }

  return result;
}

uint64_t APJourneyClientMetricPropertyKey.rawValue.getter()
{
  result = 0x735F6E6F74747562;
  switch(*v0)
  {
    case 1:
      return 0x5F676E6970706163;
    case 2:
    case 0x2B:
      return 0xD000000000000011;
    case 3:
      return 0x695F746E65696C63;
    case 4:
      return 0x735F746E65696C63;
    case 5:
      return 0x656E6961746E6F63;
    case 6:
      return 1701080931;
    case 7:
      return 0x657370616C6C6F63;
    case 8:
      return 0x765F6769666E6F63;
    case 9:
      return 0x746E756F63;
    case 0xA:
      v3 = 1701602660;
      return v3 | 0x6E6F697400000000;
    case 0xB:
      return 0x746163696C707564;
    case 0xC:
      v3 = 1634891108;
      return v3 | 0x6E6F697400000000;
    case 0xD:
      return 0x64657370616C65;
    case 0xE:
      v2 = 1835363429;
      goto LABEL_51;
    case 0xF:
      return 0xD000000000000018;
    case 0x10:
      return 0x73746E656D656C65;
    case 0x11:
      return 0x6F635F726F727265;
    case 0x12:
      return 0x74616D726F66;
    case 0x13:
      return 0x7263735F6C6C7566;
    case 0x14:
      return 0x656C646E6168;
    case 0x15:
      return 0x746867696568;
    case 0x16:
      return 0x6973736572706D69;
    case 0x17:
      return 0x6F705F616964656DLL;
    case 0x18:
      return 1937204590;
    case 0x19:
      return 0xD00000000000001BLL;
    case 0x1A:
      v2 = 1668441456;
LABEL_51:
      result = v2 | 0x746E6500000000;
      break;
    case 0x1B:
      result = 0x6C6F686563616C70;
      break;
    case 0x1C:
      result = 0xD000000000000015;
      break;
    case 0x1D:
      result = 0x6E656D6563616C70;
      break;
    case 0x1E:
      result = 0x726564726F657270;
      break;
    case 0x1F:
      result = 0x6563697270;
      break;
    case 0x20:
      result = 0x73736572676F7270;
      break;
    case 0x21:
      result = 0x7974696C617571;
      break;
    case 0x22:
      result = 0x6E6F73616572;
      break;
    case 0x23:
      result = 0xD000000000000018;
      break;
    case 0x24:
      result = 0x745F6E7275746572;
      break;
    case 0x25:
      result = 0x5F74736575716572;
      break;
    case 0x26:
      result = 0x765F6C6C6F726373;
      break;
    case 0x27:
      result = 0x745F686372616573;
      break;
    case 0x28:
      result = 0xD000000000000016;
      break;
    case 0x29:
      result = 0x61645F7472617473;
      break;
    case 0x2A:
    case 0x2C:
      result = 0xD000000000000014;
      break;
    case 0x2D:
      result = 0xD000000000000018;
      break;
    case 0x2E:
      result = 1701869940;
      break;
    case 0x2F:
      result = 7107189;
      break;
    case 0x30:
    case 0x33:
      result = 0xD000000000000012;
      break;
    case 0x31:
      result = 0x656D756C6F76;
      break;
    case 0x32:
      result = 0x6974616E5F736177;
      break;
    case 0x34:
      result = 0x6874646977;
      break;
    case 0x35:
      result = 0x697469736F705F78;
      break;
    case 0x36:
      result = 0x697469736F705F79;
      break;
    default:
      return result;
  }

  return result;
}

AdPlatformsCommon::APJourneyClientMetricPropertyKey_optional __swiftcall APJourneyClientMetricPropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BB015128();

  v5 = 0;
  v6 = 37;
  switch(v3)
  {
    case 0:
      goto LABEL_51;
    case 1:
      v5 = 1;
      goto LABEL_51;
    case 2:
      v5 = 2;
      goto LABEL_51;
    case 3:
      v5 = 3;
      goto LABEL_51;
    case 4:
      v5 = 4;
      goto LABEL_51;
    case 5:
      v5 = 5;
      goto LABEL_51;
    case 6:
      v5 = 6;
      goto LABEL_51;
    case 7:
      v5 = 7;
      goto LABEL_51;
    case 8:
      v5 = 8;
      goto LABEL_51;
    case 9:
      v5 = 9;
      goto LABEL_51;
    case 10:
      v5 = 10;
      goto LABEL_51;
    case 11:
      v5 = 11;
      goto LABEL_51;
    case 12:
      v5 = 12;
      goto LABEL_51;
    case 13:
      v5 = 13;
      goto LABEL_51;
    case 14:
      v5 = 14;
      goto LABEL_51;
    case 15:
      v5 = 15;
      goto LABEL_51;
    case 16:
      v5 = 16;
      goto LABEL_51;
    case 17:
      v5 = 17;
      goto LABEL_51;
    case 18:
      v5 = 18;
      goto LABEL_51;
    case 19:
      v5 = 19;
      goto LABEL_51;
    case 20:
      v5 = 20;
      goto LABEL_51;
    case 21:
      v5 = 21;
      goto LABEL_51;
    case 22:
      v5 = 22;
      goto LABEL_51;
    case 23:
      v5 = 23;
      goto LABEL_51;
    case 24:
      v5 = 24;
      goto LABEL_51;
    case 25:
      v5 = 25;
      goto LABEL_51;
    case 26:
      v5 = 26;
      goto LABEL_51;
    case 27:
      v5 = 27;
      goto LABEL_51;
    case 28:
      v5 = 28;
      goto LABEL_51;
    case 29:
      v5 = 29;
      goto LABEL_51;
    case 30:
      v5 = 30;
      goto LABEL_51;
    case 31:
      v5 = 31;
      goto LABEL_51;
    case 32:
      v5 = 32;
      goto LABEL_51;
    case 33:
      v5 = 33;
      goto LABEL_51;
    case 34:
      v5 = 34;
      goto LABEL_51;
    case 35:
      v5 = 35;
      goto LABEL_51;
    case 36:
      v5 = 36;
LABEL_51:
      v6 = v5;
      break;
    case 37:
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    case 53:
      v6 = 53;
      break;
    case 54:
      v6 = 54;
      break;
    default:
      v6 = 55;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1BAFF5810()
{
  v0 = APJourneyClientMetricPropertyKey.rawValue.getter();
  v2 = v1;
  if (v0 == APJourneyClientMetricPropertyKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BB015118();
  }

  return v5 & 1;
}

unint64_t sub_1BAFF58B0()
{
  result = qword_1EBC3B588;
  if (!qword_1EBC3B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B588);
  }

  return result;
}

uint64_t sub_1BAFF5904()
{
  sub_1BB0151B8();
  APJourneyClientMetricPropertyKey.rawValue.getter();
  sub_1BB014BD8();

  return sub_1BB0151F8();
}

uint64_t sub_1BAFF596C(uint64_t a1)
{
  APJourneyClientMetricPropertyKey.rawValue.getter();
  sub_1BB014BD8();
}

uint64_t sub_1BAFF59D0(uint64_t a1)
{
  sub_1BB0151B8();
  APJourneyClientMetricPropertyKey.rawValue.getter();
  sub_1BB014BD8();

  return sub_1BB0151F8();
}

uint64_t sub_1BAFF5A40@<X0>(uint64_t *a1@<X8>)
{
  result = APJourneyClientMetricPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for APJourneyClientMetricPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for APJourneyClientMetricPropertyKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BAFF5BB8()
{
  v1 = v0;
  sub_1BAFC5BB4(0, &qword_1EDD4E190, 0x1E6986070);
  v2 = objc_opt_self();
  if (![v2 configurationForClass_])
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = v3, (v5 = [v3 aggregationWindows]) == 0))
  {
    swift_unknownObjectRelease();
LABEL_7:
    v14 = sub_1BB014DB8();
    sub_1BAFC5BB4(0, &qword_1EDD4FFC0, 0x1E69E9BF8);
    v15 = sub_1BB014E68();
    sub_1BB0148B8(v14, &dword_1BAFC4000, v15, "[BucketIdDatasource] Unable to parse configuration, returning default.", 70, 2, MEMORY[0x1E69E7CC0]);

    sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB018AE0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001BB021170;
    v17 = *(v1 + 56);
    v18 = sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
    *(inited + 48) = v17;
    *(inited + 72) = v18;
    *(inited + 80) = 0x644974656B637562;
    *(inited + 88) = 0xE900000000000073;
    v19 = *(v1 + 64);
    *(inited + 120) = sub_1BAFD86D0(&qword_1EBC3B590, &qword_1BB01ACC8);
    *(inited + 96) = v19;

    v13 = sub_1BB0136E4(inited);
    swift_setDeallocating();
    sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
    swift_arrayDestroy();
    return v13;
  }

  v6 = v5;
  v7 = sub_1BB014C78();

  v8 = [v4 bucketIds];
  if (!v8)
  {
    swift_unknownObjectRelease();

    goto LABEL_7;
  }

  v9 = v8;
  v10 = sub_1BB014A88();

  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1BB018AE0;
  *(v11 + 32) = 0xD000000000000012;
  *(v11 + 40) = 0x80000001BB021170;
  v12 = sub_1BAFD86D0(&qword_1EBC3B598, &qword_1BB01ACD8);
  *(v11 + 48) = v7;
  *(v11 + 72) = v12;
  *(v11 + 80) = 0x644974656B637562;
  *(v11 + 88) = 0xE900000000000073;
  *(v11 + 120) = sub_1BAFD86D0(&qword_1EBC3B5A0, &unk_1BB01ACE0);
  *(v11 + 96) = v10;
  v13 = sub_1BB0136E4(v11);
  swift_setDeallocating();
  sub_1BAFD86D0(&qword_1EBC3B180, &qword_1BB01ACD0);
  swift_arrayDestroy();
  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_1BAFF5F4C()
{
}

uint64_t sub_1BAFF5F7C()
{
  sub_1BAFC6A68((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t PolicyTerritoryKey.Scope.hash(into:)(uint64_t a1)
{
  v2 = sub_1BB014648();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB0144A8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAFF731C(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 32))(v9, v12, v6);
      v14 = 1;
    }

    else
    {
      (*(v7 + 32))(v9, v12, v6);
      v14 = 2;
    }

    MEMORY[0x1BFB072F0](v14);
    sub_1BAFF7380(&qword_1EBC3B5A8, MEMORY[0x1E69860A8], MEMORY[0x1E69860B0]);
    sub_1BB014AE8();
  }

  else
  {
    v15 = *(sub_1BAFD86D0(&qword_1EBC3B5B0, &qword_1BB01ACF0) + 48);
    (*(v7 + 32))(v9, v12, v6);
    (*(v3 + 32))(v5, &v12[v15], v2);
    MEMORY[0x1BFB072F0](0);
    sub_1BAFF7380(&qword_1EBC3B5A8, MEMORY[0x1E69860A8], MEMORY[0x1E69860B0]);
    sub_1BB014AE8();
    sub_1BAFF7380(&qword_1EBC3B5B8, MEMORY[0x1E6986100], MEMORY[0x1E6986108]);
    sub_1BB014AE8();
    (*(v3 + 8))(v5, v2);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t PolicyTerritoryKey.Scope.hashValue.getter()
{
  sub_1BB0151B8();
  PolicyTerritoryKey.Scope.hash(into:)(v1);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFF63D4()
{
  sub_1BB0151B8();
  PolicyTerritoryKey.Scope.hash(into:)(v1);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFF6418(uint64_t a1)
{
  sub_1BB0151B8();
  PolicyTerritoryKey.Scope.hash(into:)(v2);
  return sub_1BB0151F8();
}

uint64_t PolicyTerritoryKey.init(preferred:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BAFF73C8(a1, a3);
  v5 = a3 + *(type metadata accessor for PolicyTerritoryKey(0) + 20);

  return sub_1BAFF7484(a2, v5);
}

uint64_t PolicyTerritoryKey.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  PolicyTerritoryKey.Scope.hash(into:)(a1);
  v10 = type metadata accessor for PolicyTerritoryKey(0);
  sub_1BAFF778C(v1 + *(v10 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return sub_1BB0151D8();
  }

  sub_1BAFF73C8(v9, v6);
  sub_1BB0151D8();
  PolicyTerritoryKey.Scope.hash(into:)(a1);
  return sub_1BAFF77FC(v6);
}

uint64_t PolicyTerritoryKey.hashValue.getter()
{
  v1 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11[-1] - v6;
  sub_1BB0151B8();
  PolicyTerritoryKey.Scope.hash(into:)(v11);
  v8 = type metadata accessor for PolicyTerritoryKey(0);
  sub_1BAFF778C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1BB0151D8();
  }

  else
  {
    sub_1BAFF73C8(v7, v4);
    sub_1BB0151D8();
    PolicyTerritoryKey.Scope.hash(into:)(v11);
    sub_1BAFF77FC(v4);
  }

  return sub_1BB0151F8();
}

uint64_t sub_1BAFF67B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  PolicyTerritoryKey.Scope.hash(into:)(a1);
  sub_1BAFF778C(v2 + *(a2 + 20), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    return sub_1BB0151D8();
  }

  sub_1BAFF73C8(v11, v8);
  sub_1BB0151D8();
  PolicyTerritoryKey.Scope.hash(into:)(a1);
  return sub_1BAFF77FC(v8);
}

uint64_t sub_1BAFF6930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13[-1] - v9;
  sub_1BB0151B8();
  PolicyTerritoryKey.Scope.hash(into:)(v13);
  sub_1BAFF778C(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BB0151D8();
  }

  else
  {
    sub_1BAFF73C8(v10, v7);
    sub_1BB0151D8();
    PolicyTerritoryKey.Scope.hash(into:)(v13);
    sub_1BAFF77FC(v7);
  }

  return sub_1BB0151F8();
}

uint64_t Territory.territoryKey.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BAFD86D0(&qword_1EBC3B428, &qword_1BB019EC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1BB014648();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB014778();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BAFE2D64(v4, &qword_1EBC3B428, &qword_1BB019EC0);
    sub_1BB014798();
    v9 = type metadata accessor for PolicyTerritoryKey.Scope(0);
    swift_storeEnumTagMultiPayload();
    v10 = type metadata accessor for PolicyTerritoryKey(0);
    return (*(*(v9 - 8) + 56))(a1 + *(v10 + 20), 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = *(sub_1BAFD86D0(&qword_1EBC3B5B0, &qword_1BB01ACF0) + 48);
    sub_1BB014798();
    (*(v6 + 16))(a1 + v12, v8, v5);
    v13 = type metadata accessor for PolicyTerritoryKey.Scope(0);
    swift_storeEnumTagMultiPayload();
    v14 = *(type metadata accessor for PolicyTerritoryKey(0) + 20);
    sub_1BB014798();
    (*(v6 + 8))(v8, v5);
    swift_storeEnumTagMultiPayload();
    return (*(*(v13 - 8) + 56))(a1 + v14, 0, 1, v13);
  }
}

uint64_t _s17AdPlatformsCommon18PolicyTerritoryKeyV5ScopeO2eeoiySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v61 = a1;
  v62 = a2;
  v2 = sub_1BB014648();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - v5;
  v7 = sub_1BB0144A8();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  v16 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v57 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v57 - v23;
  v25 = sub_1BAFD86D0(&qword_1EBC3B610, &qword_1BB01AE30);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v57 - v27;
  v29 = &v57 + *(v26 + 56) - v27;
  sub_1BAFF731C(v61, &v57 - v27);
  sub_1BAFF731C(v62, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BAFF731C(v28, v22);
      v31 = swift_getEnumCaseMultiPayload();
      v32 = v63;
      if (v31 == 1)
      {
        v33 = v29;
        v34 = v64;
        (*(v63 + 4))(v13, v33, v64);
        v35 = MEMORY[0x1BFB065C0](v22, v13);
        v36 = *(v32 + 1);
        v36(v13, v34);
        v36(v22, v34);
LABEL_16:
        sub_1BAFF77FC(v28);
        return v35 & 1;
      }

      v24 = v22;
    }

    else
    {
      sub_1BAFF731C(v28, v19);
      v41 = swift_getEnumCaseMultiPayload();
      v32 = v63;
      if (v41 == 2)
      {
        v42 = v29;
        v43 = v64;
        (*(v63 + 4))(v10, v42, v64);
        v35 = MEMORY[0x1BFB065C0](v19, v10);
        v44 = *(v32 + 1);
        v44(v10, v43);
        v44(v19, v43);
        goto LABEL_16;
      }

      v24 = v19;
    }

    v40 = v64;
    goto LABEL_12;
  }

  v62 = v6;
  v37 = v59;
  v38 = v60;
  sub_1BAFF731C(v28, v24);
  v39 = *(sub_1BAFD86D0(&qword_1EBC3B5B0, &qword_1BB01ACF0) + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v37 + 8))(&v24[v39], v38);
    v32 = v63;
    v40 = v64;
LABEL_12:
    (*(v32 + 1))(v24, v40);
    sub_1BAFE2D64(v28, &qword_1EBC3B610, &qword_1BB01AE30);
    goto LABEL_13;
  }

  v45 = v63;
  (*(v63 + 4))(v15, v29, v64);
  v46 = *(v37 + 32);
  v46(v62, &v24[v39], v38);
  v47 = &v29[v39];
  v48 = v58;
  v46(v58, v47, v38);
  v49 = MEMORY[0x1BFB065C0](v24, v15);
  v50 = *(v45 + 1);
  v51 = v24;
  v52 = v64;
  v50(v51, v64);
  if (v49)
  {
    v63 = v15;
    v53 = v62;
    v35 = MEMORY[0x1BFB06760](v62, v48);
    v54 = *(v37 + 8);
    v54(v48, v38);
    v54(v53, v38);
    v50(v63, v52);
    goto LABEL_16;
  }

  v56 = *(v37 + 8);
  v56(v48, v38);
  v56(v62, v38);
  v50(v15, v52);
  sub_1BAFF77FC(v28);
LABEL_13:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1BAFF731C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFF7380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BAFF73C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFF744C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAFF7484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s17AdPlatformsCommon18PolicyTerritoryKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1BAFD86D0(&qword_1EBC3B608, &qword_1BB01AE28);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  if ((_s17AdPlatformsCommon18PolicyTerritoryKeyV5ScopeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PolicyTerritoryKey(0) + 20);
  v15 = *(v11 + 48);
  sub_1BAFF778C(a1 + v14, v13);
  sub_1BAFF778C(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BAFE2D64(v13, &qword_1EBC3B5C0, &unk_1BB01ACF8);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1BAFF778C(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1BAFF77FC(v10);
LABEL_7:
    sub_1BAFE2D64(v13, &qword_1EBC3B608, &qword_1BB01AE28);
    return 0;
  }

  sub_1BAFF73C8(&v13[v15], v7);
  v18 = _s17AdPlatformsCommon18PolicyTerritoryKeyV5ScopeO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_1BAFF77FC(v7);
  sub_1BAFF77FC(v10);
  sub_1BAFE2D64(v13, &qword_1EBC3B5C0, &unk_1BB01ACF8);
  return (v18 & 1) != 0;
}

uint64_t sub_1BAFF778C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAFD86D0(&qword_1EBC3B5C0, &unk_1BB01ACF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAFF77FC(uint64_t a1)
{
  v2 = type metadata accessor for PolicyTerritoryKey.Scope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BAFF7924(uint64_t a1)
{
  type metadata accessor for PolicyTerritoryKey.Scope(319);
  if (v1 <= 0x3F)
  {
    sub_1BAFF79A8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BAFF79A8(uint64_t a1)
{
  if (!qword_1EBC3B5E8)
  {
    type metadata accessor for PolicyTerritoryKey.Scope(255);
    v1 = sub_1BB014E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBC3B5E8);
    }
  }
}

void sub_1BAFF7A50(uint64_t a1)
{
  sub_1BAFF7AC4(319);
  if (v1 <= 0x3F)
  {
    sub_1BB0144A8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BAFF7AC4(uint64_t a1)
{
  if (!qword_1EBC3B600)
  {
    sub_1BB0144A8();
    sub_1BB014648();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBC3B600);
    }
  }
}

uint64_t PolicyEngine.__allocating_init(userInformationSource:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BAFF7B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[7] = a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v3;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = sub_1BAFF8A78;
  v13[5] = v6;
  v7 = sub_1BB014CE8();
  sub_1BAFF80F4();
  v8 = sub_1BB015208();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_1BAFF7CD4(sub_1BAFF7C88, v13, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  return v11;
}

uint64_t sub_1BAFF7C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 32))(*a1);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1BAFF7CD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1BB014D78();
  if (!v19)
  {
    return sub_1BB014CA8();
  }

  v41 = v19;
  v45 = sub_1BB014FD8();
  v32 = sub_1BB014FE8();
  sub_1BB014FB8();
  result = sub_1BB014D58();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1BB014D98();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1BB014FC8();
      result = sub_1BB014D88();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BAFF80F4()
{
  result = qword_1EBC3B618;
  if (!qword_1EBC3B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B618);
  }

  return result;
}

uint64_t sub_1BAFF8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v76 = a3;
  v72 = *(a3 + 8);
  v75 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v71 = &v69 - v4;
  v5 = sub_1BB014398();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v69 - v10;
  v70 = v3;
  v12 = *(v3 + 16);
  v13 = v12[9];
  v14 = v12[10];
  sub_1BAFC6AB4(v12 + 6, v13);
  v15 = *(v14 + 16);

  v16 = v15(v13, v14);
  v18 = v17;

  if (v18)
  {
    v69 = v16;
    v20 = v75;
    v19 = v76;
    v21 = v74;
    (*(v76 + 40))(v75, v76);
    sub_1BB014388();
    v22 = sub_1BB014348();
    v23 = *(v6 + 8);
    v23(v9, v5);
    v23(v11, v5);
    v24 = v21;
    if (v22)
    {
      v25 = v19[2](v20, v19);
      if (v25 == v69 && v18 == v26)
      {
      }

      else
      {
        v28 = sub_1BB015118();

        if ((v28 & 1) == 0)
        {
          if (qword_1EDD4E200 != -1)
          {
            swift_once();
          }

          v29 = sub_1BB0149A8();
          sub_1BAFE833C(v29, qword_1EDD51B20);
          swift_unknownObjectRetain();
          v30 = sub_1BB014988();
          v31 = sub_1BB014DB8();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v80[0] = v33;
            *v32 = 136446210;
            v77 = v21;
            sub_1BB014F68();
            v34 = sub_1BB014B88();
            v36 = sub_1BB01313C(v34, v35, v80);

            *(v32 + 4) = v36;
            _os_log_impl(&dword_1BAFC4000, v30, v31, "Content validation failed, user has changed (%{public}s", v32, 0xCu);
            sub_1BAFC6A68(v33);
            MEMORY[0x1BFB07C70](v33, -1, -1);
            MEMORY[0x1BFB07C70](v32, -1, -1);
          }

          return 2;
        }
      }

      v49 = v19[3](v20, v19);
      v51 = v50;
      v52 = v70;
      v53 = *(v70 + 16);
      swift_beginAccess();
      if (v49 == *(v53 + 16) && v51 == *(v53 + 24))
      {
      }

      else
      {
        v54 = sub_1BB015118();

        if ((v54 & 1) == 0)
        {
LABEL_34:
          if (qword_1EDD4E200 != -1)
          {
            swift_once();
          }

          v60 = sub_1BB0149A8();
          sub_1BAFE833C(v60, qword_1EDD51B20);
          swift_unknownObjectRetain();
          v61 = sub_1BB014988();
          v62 = sub_1BB014DB8();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v78 = v24;
            v79 = v64;
            *v63 = 136446210;
            sub_1BB014F68();
            v65 = sub_1BB014B88();
            v67 = sub_1BB01313C(v65, v66, &v79);

            *(v63 + 4) = v67;
            _os_log_impl(&dword_1BAFC4000, v61, v62, "Content validation failed, storeFront or storeFrontLocale has changed (%{public}s", v63, 0xCu);
            sub_1BAFC6A68(v64);
            MEMORY[0x1BFB07C70](v64, -1, -1);
            MEMORY[0x1BFB07C70](v63, -1, -1);
          }

          return 3;
        }
      }

      v55 = v19[4](v20, v19);
      v57 = v56;
      v58 = *(v52 + 16);
      swift_beginAccess();
      if (v55 == *(v58 + 32) && v57 == *(v58 + 40))
      {

LABEL_33:
        swift_unknownObjectRetain();
        return v24;
      }

      v59 = sub_1BB015118();

      if (v59)
      {
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (qword_1EDD4E200 != -1)
    {
      swift_once();
    }

    v41 = sub_1BB0149A8();
    sub_1BAFE833C(v41, qword_1EDD51B20);
    swift_unknownObjectRetain();
    v42 = sub_1BB014988();
    v43 = sub_1BB014DB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80[0] = v45;
      *v44 = 136446210;
      v77 = v21;
      sub_1BB014F68();
      v46 = sub_1BB014B88();
      v48 = sub_1BB01313C(v46, v47, v80);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1BAFC4000, v42, v43, "Content validation failed, content is expired (%{public}s", v44, 0xCu);
      sub_1BAFC6A68(v45);
      MEMORY[0x1BFB07C70](v45, -1, -1);
      MEMORY[0x1BFB07C70](v44, -1, -1);
    }

    return 1;
  }

  else
  {
    if (qword_1EDD4E200 != -1)
    {
      swift_once();
    }

    v37 = sub_1BB0149A8();
    sub_1BAFE833C(v37, qword_1EDD51B20);
    v38 = sub_1BB014988();
    v39 = sub_1BB014DB8();
    if (!os_log_type_enabled(v38, v39))
    {

      return 2;
    }

    v24 = 2;
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1BAFC4000, v38, v39, "Content validation failed, storeFront or storeFrontLocale or iAdId is nil.", v40, 2u);
    MEMORY[0x1BFB07C70](v40, -1, -1);
  }

  return v24;
}

uint64_t PolicyEngine.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BAFF8AA4()
{
  sub_1BAFF8D30();
  v1 = objc_opt_self();
  if (![v1 configurationForClass_])
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = [v2 anonymousSessionIds]) == 0 || (v4 = v3, v5 = sub_1BB014C78(), v4, v6 = sub_1BAFF3DF4(v5), , !v6))
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB0187E0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000001BB021250;
    sub_1BAFD86D0(&qword_1EBC3B470, &qword_1BB01A110);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BB0187E0;
    *(v10 + 32) = *(v0 + 56);
    *(inited + 72) = sub_1BAFD86D0(&qword_1EBC3B0C0, &unk_1BB0188C0);
    *(inited + 48) = v10;

    v8 = sub_1BB0136E4(inited);
    swift_setDeallocating();
    sub_1BAFDDD84(inited + 32);
    return v8;
  }

  sub_1BAFD86D0(&qword_1EBC3B178, &unk_1BB018AF0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1BB0187E0;
  *(v7 + 32) = 0xD000000000000013;
  *(v7 + 40) = 0x80000001BB021250;
  *(v7 + 72) = sub_1BAFD86D0(&qword_1EBC3B0C0, &unk_1BB0188C0);
  *(v7 + 48) = v6;
  v8 = sub_1BB0136E4(v7);
  swift_setDeallocating();
  sub_1BAFDDD84(v7 + 32);
  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_1BAFF8D30()
{
  result = qword_1EDD4E178;
  if (!qword_1EDD4E178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD4E178);
  }

  return result;
}

uint64_t sub_1BAFF8DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1BAFC6AB4(a3, a3[3]);

  return sub_1BAFF8DEC(a1, a2, v5);
}

uint64_t sub_1BAFF8DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BB014398();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for RotatingIdentifierTelemetryDelivery;
  v40 = &off_1F390D430;
  v38[0] = a3;
  v10 = type metadata accessor for IdentifierData(0);
  v11 = *(v10 + 36);
  v12 = (a1 + v11);
  if (*(a1 + v11 + 32) || (v13 = a2 + v11, *(v13 + 32)))
  {
    v14 = a3;
    v15 = sub_1BB014B38();
    APSimulateCrash();
  }

  else
  {
    v22 = v12[2];
    v23 = v12[3];
    v24 = *(v13 + 16);
    v25 = *(v13 + 24);
    v26 = *v12 == *v13 && v12[1] == *(v13 + 8);
    if (!v26 && (sub_1BB015118() & 1) == 0)
    {
      v29 = sub_1BAFC6AB4(v38, &type metadata for RotatingIdentifierTelemetryDelivery);
      v30 = *(v10 + 24);
      v31 = *v29;
      v32 = a3;
      v17 = 1;
      sub_1BAFF3160(0, 1, a1 + v30, v31);
      goto LABEL_8;
    }

    v27 = v22 == v24 && v23 == v25;
    if (!v27 && (sub_1BB015118() & 1) == 0)
    {
      v33 = sub_1BAFC6AB4(v38, &type metadata for RotatingIdentifierTelemetryDelivery);
      v34 = *(v10 + 24);
      v35 = *v33;
      v36 = a3;
      v19 = a1 + v34;
      v20 = 2;
      v18 = v35;
      goto LABEL_7;
    }

    v28 = a3;
  }

  sub_1BB014388();
  v16 = sub_1BB014348();
  (*(v7 + 8))(v9, v6);
  if ((v16 & 1) == 0)
  {
    v18 = *sub_1BAFC6AB4(v38, v39);
    v19 = a1 + *(v10 + 24);
    v20 = 0;
LABEL_7:
    sub_1BAFF3160(0, v20, v19, v18);
    v17 = 1;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_8:
  sub_1BAFC6A68(v38);
  return v17;
}

void *sub_1BAFF9084()
{
  v1 = v0;
  v2 = sub_1BB014398();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BB0143E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for IdentifierData(0);
  v9 = *(v80 - 8);
  v10 = MEMORY[0x1EEE9AC00](v80);
  v83 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = (&v65 - v12);
  v13 = v0[5];
  v14 = v0[6];
  sub_1BAFC6AB4(v0 + 2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (!*(v15 + 16) || (v16 = sub_1BAFDCCAC(0xD000000000000013, 0x80000001BB021250), (v17 & 1) == 0))
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_1BAFDB9B0(*(v15 + 56) + 32 * v16, v86);

  sub_1BAFD86D0(&qword_1EBC3B0C0, &unk_1BB0188C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    LOBYTE(v86[0]) = 8;
    idmanagerError(errorType:description:)(v86, 0);
    return 0;
  }

  v18 = v84;
  v73 = *(v84 + 16);
  if (!v73)
  {
    v20 = MEMORY[0x1E69E7CC8];
LABEL_31:

    return v20;
  }

  v19 = 0;
  v71 = (v7 + 8);
  v72 = v6;
  v20 = MEMORY[0x1E69E7CC8];
  v70 = (v3 + 8);
  v69 = v2;
  v68 = v5;
  v67 = v84;
  v66 = v9;
  v65 = v1;
  while (v19 < *(v18 + 16))
  {
    v23 = *(v18 + 8 * v19 + 32);
    if (!*(v23 + 16))
    {
      goto LABEL_36;
    }

    v24 = sub_1BAFDCCAC(5002324, 0xE300000000000000);
    if ((v25 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1BAFDB9B0(*(v23 + 56) + 32 * v24, v86);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    if (!*(v23 + 16))
    {
      goto LABEL_35;
    }

    v79 = v19;
    v26 = sub_1BAFDCCAC(0x73656372756F73, 0xE700000000000000);
    if ((v27 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1BAFDB9B0(*(v23 + 56) + 32 * v26, v86);
    sub_1BAFD86D0(&qword_1EBC3B0C8, &qword_1BB01ACC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v28 = v84;
    if (!*(v23 + 16) || (v29 = sub_1BAFDCCAC(0x63617073656D616ELL, 0xE900000000000065), (v30 & 1) == 0))
    {

LABEL_35:

LABEL_36:

      goto LABEL_6;
    }

    sub_1BAFDB9B0(*(v23 + 56) + 32 * v29, v86);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_35;
    }

    v31 = v85;
    v78 = v84;
    v32 = v81;
    sub_1BB0143D8();
    v33 = sub_1BB0143A8();
    v76 = v34;
    v77 = v33;
    (*v71)(v32, v72);
    sub_1BB014388();
    v35 = v80;
    v36 = v1;
    v37 = v82;
    sub_1BB014378();
    (*v70)(v5, v2);
    sub_1BB014388();
    v38 = v36[7];
    v39 = v36[8];
    v74 = v28;
    v75 = v38;
    v40 = v36[12];
    v41 = v36[13];
    sub_1BAFC6AB4(v36 + 9, v40);
    v42 = *(v41 + 8);

    v43 = v41;
    v44 = v78;
    v45 = v42(v40, v43);
    v46 = v76;
    *v37 = v77;
    v37[1] = v46;
    v47 = v75;
    *(v37 + v35[7]) = v74;
    v48 = (v37 + v35[8]);
    *v48 = v44;
    v48[1] = v31;
    v49 = v37 + v35[9];
    *v49 = v47;
    *(v49 + 1) = v39;
    *(v49 + 2) = v45;
    *(v49 + 3) = v50;
    v49[32] = 0;
    sub_1BAFD9E38(v37, v83);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v86[0] = v20;
    v52 = sub_1BAFDCCAC(v44, v31);
    v54 = v20[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_38;
    }

    v58 = v53;
    if (v20[3] >= v57)
    {
      v2 = v69;
      v5 = v68;
      v60 = v66;
      v1 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = v52;
        sub_1BAFDBC08();
        v52 = v64;
      }
    }

    else
    {
      sub_1BAFDA824(v57, isUniquelyReferenced_nonNull_native);
      v52 = sub_1BAFDCCAC(v44, v31);
      v2 = v69;
      v5 = v68;
      v60 = v66;
      v1 = v65;
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_40;
      }
    }

    v18 = v67;
    if (v58)
    {
      v22 = v52;

      v20 = v86[0];
      sub_1BAFDA02C(v83, *(v86[0] + 56) + *(v60 + 72) * v22);
      sub_1BAFD9F70(v82);
    }

    else
    {
      v20 = v86[0];
      *(v86[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
      v61 = (v20[6] + 16 * v52);
      *v61 = v44;
      v61[1] = v31;
      sub_1BAFD9E9C(v83, v20[7] + *(v60 + 72) * v52);
      sub_1BAFD9F70(v82);
      v62 = v20[2];
      v56 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v56)
      {
        goto LABEL_39;
      }

      v20[2] = v63;
    }

    v19 = v79 + 1;
    if (v73 == v79 + 1)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1BB015158();
  __break(1u);
  return result;
}

uint64_t sub_1BAFF97C0()
{
  sub_1BAFC6A68((v0 + 16));

  sub_1BAFC6A68((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t APContentData.id.getter()
{
  v1 = [v0 identifier];
  v2 = sub_1BB014B48();

  return v2;
}

void sub_1BAFF992C(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_1BB014B48();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t ModalFeatureFlag.__allocating_init(configurableFeatureFlag:defaultFeatureFlag:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BAFC6D0C(a1, v4 + 16);
  sub_1BAFC6D0C(a2, v4 + 56);
  return v4;
}

uint64_t ModalFeatureFlag.init(configurableFeatureFlag:defaultFeatureFlag:)(__int128 *a1, __int128 *a2)
{
  sub_1BAFC6D0C(a1, v2 + 16);
  sub_1BAFC6D0C(a2, v2 + 56);
  return v2;
}

uint64_t ModalFeatureFlag.isEnabled(for:)(uint64_t a1)
{
  v2 = v1;
  (*(*(*v2 + 88) + 8))(&v11, *(*v2 + 80));
  v4 = v12;

  v5 = 16;
  if (v4)
  {
    v5 = 56;
  }

  v6 = 40;
  if (v4)
  {
    v6 = 80;
  }

  v7 = 48;
  if (v4)
  {
    v7 = 88;
  }

  v8 = *(v2 + v6);
  v9 = *(v2 + v7);
  sub_1BAFC6AB4((v2 + v5), v8);
  return (*(v9 + 24))(a1, v8, v9) & 1;
}

uint64_t ModalFeatureFlag.deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));
  return v0;
}

uint64_t ModalFeatureFlag.__deallocating_deinit()
{
  sub_1BAFC6A68((v0 + 16));
  sub_1BAFC6A68((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t PolicyEligibility.IneligibleReason.init(category:reason:missingLocations:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  return result;
}

uint64_t PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason.MissingData.hashValue.getter()
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFF9CBC()
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFF9D28(uint64_t a1)
{
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](0);
  return sub_1BB0151F8();
}

uint64_t static PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 >= 2)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BAFF9DA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 >= 2)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t PolicyEligibility.IneligibleReason.BlockedReason.Audience.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

BOOL static PolicyEligibility.IneligibleReason.BlockedReason.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if ((v3 & 0x80) != 0)
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if (*a1)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v3 < 2)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1BAFF9EC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if ((v3 & 0x80) != 0)
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if (*a1)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v3 < 2)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

uint64_t PolicyEligibility.IneligibleReason.Location.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

uint64_t sub_1BAFF9FB0(uint64_t result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1BB0151B8();
    MEMORY[0x1BFB072F0](v13);
    result = sub_1BB0151F8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t PolicyEligibility.IneligibleReason.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BB014F58();
  MEMORY[0x1BFB06D20](0x726F676574616328, 0xEB00000000203A79);
  MEMORY[0x1BFB06D20](v1, v2);
  MEMORY[0x1BFB06D20](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  sub_1BB014FF8();
  MEMORY[0x1BFB06D20](0xD000000000000015, 0x80000001BB0213C0);
  sub_1BAFFA79C();
  v3 = sub_1BB014D28();
  MEMORY[0x1BFB06D20](v3);

  MEMORY[0x1BFB06D20](41, 0xE100000000000000);
  return 0;
}

uint64_t PolicyEligibility.IneligibleReason.BlockedReason.debugDescription.getter()
{
  if (*v0 < 0)
  {
    sub_1BB014F58();
    MEMORY[0x1BFB06D20](0xD000000000000013, 0x80000001BB0213E0);
  }

  else
  {
    MEMORY[0x1BFB06D20](0x6F6C63206C696166, 0xEC000000203B6573);
  }

  sub_1BB014FF8();
  return 0;
}

uint64_t PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason.debugDescription.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      return 0x7461636F6C206F6ELL;
    }

    else
    {
      return 0x20676E697373696DLL;
    }
  }

  else
  {
    sub_1BB014F58();
    MEMORY[0x1BFB06D20](0xD000000000000016, 0x80000001BB021400);
    sub_1BB014FF8();
    return 0;
  }
}

uint64_t PolicyEligibility.IneligibleReason.BlockedReason.Audience.debugDescription.getter()
{
  if (*v0)
  {
    return 0x206D756D696E696DLL;
  }

  else
  {
    return 0x656E6F7972657665;
  }
}

uint64_t sub_1BAFFA47C()
{
  if (*v0)
  {
    return 0x206D756D696E696DLL;
  }

  else
  {
    return 0x656E6F7972657665;
  }
}

uint64_t PolicyEligibility.IneligibleReason.Location.debugDescription.getter()
{
  v1 = 1701670760;
  if (*v0 != 1)
  {
    v1 = 0x6F726665726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1BAFFA518()
{
  v1 = 1701670760;
  if (*v0 != 1)
  {
    v1 = 0x6F726665726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t _s17AdPlatformsCommon17PolicyEligibilityO16IneligibleReasonV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (sub_1BB015118() & 1) == 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if (v4 & 0x80) == 0 || ((v4 ^ v2))
    {
      return 0;
    }

    goto LABEL_14;
  }

  if ((v4 & 0x80) != 0)
  {
    return 0;
  }

  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v2 == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }
  }

  else if (v4 < 2)
  {
    return 0;
  }

LABEL_14:

  return sub_1BAFF9FB0(v3, v5);
}

uint64_t _s17AdPlatformsCommon17PolicyEligibilityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if (!v3)
  {
    if (!v7)
    {
      sub_1BAFFAE90(*a1, 0, v5, v4);
      sub_1BAFFAE90(v6, 0, v9, v8);
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_5;
  }

  if (!v7)
  {
LABEL_5:
    sub_1BAFFAE4C(*a2, a2[1], v9, v8);
    sub_1BAFFAE4C(v2, v3, v5, v4);
    sub_1BAFFAE90(v2, v3, v5, v4);
    sub_1BAFFAE90(v6, v7, v9, v8);
    v10 = 0;
    return v10 & 1;
  }

  v15[0] = *a1;
  v15[1] = v3;
  v16 = v5;
  v17 = v4;
  v12[0] = v6;
  v12[1] = v7;
  v13 = v9;
  v14 = v8;
  v10 = _s17AdPlatformsCommon17PolicyEligibilityO16IneligibleReasonV2eeoiySbAE_AEtFZ_0(v15, v12);
  sub_1BAFFAE4C(v6, v7, v9, v8);
  sub_1BAFFAE4C(v2, v3, v5, v4);
  sub_1BAFFAE90(v2, v3, v5, v4);
  sub_1BAFFAE90(v6, v7, v9, v8);
  return v10 & 1;
}

unint64_t sub_1BAFFA79C()
{
  result = qword_1EBC3B620;
  if (!qword_1EBC3B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B620);
  }

  return result;
}

unint64_t sub_1BAFFA7F4()
{
  result = qword_1EBC3B628;
  if (!qword_1EBC3B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B628);
  }

  return result;
}

unint64_t sub_1BAFFA84C()
{
  result = qword_1EBC3B630;
  if (!qword_1EBC3B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B630);
  }

  return result;
}

unint64_t sub_1BAFFA8A4()
{
  result = qword_1EBC3B638;
  if (!qword_1EBC3B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC3B638);
  }

  return result;
}

uint64_t sub_1BAFFA90C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BAFFA924(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAFFA974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1BAFFA9CC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 255;
  if ((a2 + 255) >= 0xFFFF00)
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
      return v4;
    }

    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  if (v4 == 2)
  {
    v4 = *(a1 + 1);
    if (!*(a1 + 1))
    {
      return v4;
    }

    return (*a1 | (v4 << 8)) - 255;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 8)) - 255;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for PolicyEligibility.IneligibleReason.BlockedReason.FailCloseReason(uint64_t result, int a2, int a3)
{
  v3 = a3 + 255;
  if ((a3 + 255) >= 0xFFFF00)
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

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PolicyEligibility.IneligibleReason.Location(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PolicyEligibility.IneligibleReason.Location(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BAFFAE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1BAFFAE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t DiagnosticKeysType.hashValue.getter()
{
  v1 = *v0;
  sub_1BB0151B8();
  MEMORY[0x1BFB072F0](v1);
  return sub_1BB0151F8();
}

void DiagnosticBag.diagnosticKeys.getter(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_1BAFFAF7C(v2, v3, v4, v5, v6, v7);
}

void sub_1BAFFAF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_1BAFFAFCC()
{
  qword_1EBC3B640 = 0xD000000000000013;
  *algn_1EBC3B648 = 0x80000001BB021540;
  qword_1EBC3B650 = 0xD00000000000001CLL;
  unk_1EBC3B658 = 0x80000001BB021560;
  qword_1EBC3B660 = 0xD000000000000013;
  unk_1EBC3B668 = 0x80000001BB021580;
}

void sub_1BAFFB020()
{
  qword_1EDD4FA98 = 0xD000000000000014;
  unk_1EDD4FAA0 = 0x80000001BB0214E0;
  qword_1EDD4FAA8 = 0xD00000000000001DLL;
  unk_1EDD4FAB0 = 0x80000001BB021500;
  qword_1EDD4FAB8 = 0xD000000000000014;
  unk_1EDD4FAC0 = 0x80000001BB021520;
}