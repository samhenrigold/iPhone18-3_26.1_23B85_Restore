uint64_t static Calendar.gregorian.setter(uint64_t a1)
{
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAF8E848();
  v3 = sub_1BADC4BA8(v2, qword_1EDBA3888);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Calendar.gregorian.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAF8E848();
  sub_1BADC4BA8(v1, qword_1EDBA3888);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t MemoizingCohortCandidateSource.__allocating_init(backingSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t MemoizingCohortCandidateSource.init(backingSource:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  sub_1BADC5B38(a1, v1 + 16);
  return v1;
}

APFoundation::CohortCandidate __swiftcall MemoizingCohortCandidateSource.candidate()()
{
  v2 = v0;
  if (*(v1 + 64))
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    sub_1BADC8524((v1 + 16), v3);
    (*(v4 + 8))(&v6, v3, v4);
    result.value = v6;
    *(v1 + 56) = v6;
    *(v1 + 64) = 0;
  }

  else
  {
    *&result.value = *(v1 + 56);
  }

  v2->value = result.value;
  return result;
}

uint64_t MemoizingCohortCandidateSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1BAF3C4FC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 64))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    sub_1BADC8524((v3 + 16), v4);
    result = (*(v5 + 8))(&v8, v4, v5);
    v7 = v8;
    *(v3 + 56) = v8;
    *(v3 + 64) = 0;
  }

  else
  {
    v7 = *(v3 + 56);
  }

  *a1 = v7;
  return result;
}

uint64_t type metadata accessor for WorkResult(uint64_t a1)
{
  result = qword_1EDBA3830;
  if (!qword_1EDBA3830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF3C628(uint64_t a1)
{
  sub_1BAF3C69C(319);
  if (v1 <= 0x3F)
  {
    sub_1BAF3C740();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BAF3C69C(uint64_t a1)
{
  if (!qword_1EDBA20E8)
  {
    sub_1BAF2F048(&qword_1EBC367C8, &qword_1BAF956B0);
    sub_1BAF8E728();
    sub_1BAF2F048(&qword_1EBC367D0, &qword_1BAF956B8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBA20E8);
    }
  }
}

uint64_t sub_1BAF3C740()
{
  result = qword_1EDBA20B0;
  if (!qword_1EDBA20B0)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EDBA20B0);
  }

  return result;
}

uint64_t String.containsOnlyCharactersIn(characterSet:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1BAF8E3E8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1BAF8E3A8();
  (*(v4 + 16))(v7, v12, v3);
  sub_1BAF3C940(&qword_1EBC36578, MEMORY[0x1E69680D0]);
  sub_1BAF8F178();
  sub_1BAF3C940(&qword_1EBC36580, MEMORY[0x1E69680C8]);
  v13 = sub_1BAF8EC18();
  v14 = *(v4 + 8);
  v14(v10, v3);
  v14(v12, v3);
  return v13 & 1;
}

uint64_t sub_1BAF3C940(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF8E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t String.init(_:)(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1BAF8ECF8();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_1BAF8ECF8();
    }

LABEL_9:
    __break(1u);
    return sub_1BAF8ECF8();
  }

  __break(1u);
  return result;
}

APFoundation::JWTAudience __swiftcall JWTAudience.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
  result.audiences._rawValue = swift_allocObject();
  *(result.audiences._rawValue + 1) = xmmword_1BAF95190;
  *(result.audiences._rawValue + 4) = countAndFlagsBits;
  *(result.audiences._rawValue + 5) = object;
  v4->audiences._rawValue = result.audiences._rawValue;
  return result;
}

uint64_t JWTAudience.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF8F298();
  MEMORY[0x1EEE9AC00](v5);
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF8F618();
  if (!v2)
  {
    sub_1BADC8524(v11, v11[3]);
    v6 = sub_1BAF8F4D8();
    v8 = v7;
    sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BAF95190;
    *(v9 + 32) = v6;
    *(v9 + 40) = v8;
    sub_1BADC5BE0(v11);
    *a2 = v9;
  }

  return sub_1BADC5BE0(a1);
}

uint64_t JWTAudience.encode(to:)(void *a1)
{
  v2 = *v1;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF8F638();
  if (*(v2 + 16) == 1)
  {
    sub_1BAF3BB10(v4, v5);

    sub_1BAF8F4F8();
  }

  else
  {
    v6 = v2;
    sub_1BAF3BB10(v4, v5);
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF3CF88(&qword_1EDBA20D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1BAF8F508();
  }

  return sub_1BADC5BE0(v4);
}

uint64_t sub_1BAF3CF88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF2F048(&qword_1EBC367E0, &qword_1BAF956D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF3D000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      v9 = *(v3 - 2);
      v8 = *(v3 - 1);
      if (*v4)
      {
        if (!*v3)
        {
          goto LABEL_15;
        }

        sub_1BAF3D688(*(v4 - 2), *(v4 - 1), 1);
        sub_1BAF3D688(v9, v8, 1);
        result = 0;
        if (v6 != v9 || v5 != v8)
        {
          return result;
        }
      }

      else
      {
        if (*v3)
        {
LABEL_15:

          sub_1BAF3D688(v6, v5, v7);
          sub_1BAF3D688(v9, v8, v7 ^ 1);
          return 0;
        }

        v11 = sub_1BAF4854C(*(v4 - 2), *(v3 - 2));
        sub_1BAF3D694(v9, v8, 0);
        sub_1BAF3D694(v6, v5, 0);
        sub_1BAF3D688(v6, v5, 0);
        sub_1BAF3D688(v9, v8, 0);
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1BAF3D154(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_55;
    }

    v6 = (v4 + 16 * v3);
    v7 = (v5 + 16 * v3);
    if (*v6 != *v7)
    {
      return 0;
    }

    v8 = v6[1];
    v9 = v7[1];
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = !v10 || v8 == v9;
    if (!v11)
    {
      break;
    }

LABEL_13:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v44 = v3;
  v45 = v5;
  v46 = v4;
  v47 = v2;
  v12 = v8 + 32;
  v13 = v9 + 32;

  v14 = 0;
  v51 = v8 + 32;
  v52 = v8;
  v50 = v9 + 32;
  while (1)
  {
    if (v14 >= *(v8 + 16))
    {
      goto LABEL_53;
    }

    if (v14 >= *(v9 + 16))
    {
      goto LABEL_54;
    }

    v16 = v12 + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = v13 + 24 * v14;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if ((*(v16 + 16) & 1) == 0)
    {
      break;
    }

    if ((v22 & 1) == 0)
    {
      v38 = *(v16 + 8);

      sub_1BAF3D688(v18, v38, 1);
      v39 = v20;
      v40 = v21;
      v41 = 0;
LABEL_48:
      sub_1BAF3D688(v39, v40, v41);
LABEL_49:

LABEL_50:

      return 0;
    }

    v23 = v10;
    v24 = *(v16 + 8);
    sub_1BAF3D688(v18, v17, 1);
    result = sub_1BAF3D688(v20, v21, 1);
    if (v18 != v20)
    {
      goto LABEL_49;
    }

    v11 = v24 == v21;
    v10 = v23;
    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_16:
    if (++v14 == v10)
    {

      v4 = v46;
      v2 = v47;
      v3 = v44;
      v5 = v45;
      goto LABEL_13;
    }
  }

  if (v22)
  {
    v42 = *(v16 + 8);

    sub_1BAF3D688(v43, v42, 0);
    v39 = v20;
    v40 = v21;
    v41 = 1;
    goto LABEL_48;
  }

  v53 = v21;
  if (v18 == v20)
  {
LABEL_15:
    v15 = v17;
    sub_1BAF3D694(v18, v17, 0);
    sub_1BAF3D694(v20, v53, 0);
    sub_1BAF3D688(v18, v15, 0);
    result = sub_1BAF3D688(v20, v53, 0);
    v12 = v51;
    v8 = v52;
    v13 = v50;
    goto LABEL_16;
  }

  v48 = *(v16 + 8);
  v49 = v9;
  if (*(v18 + 16) != *(v20 + 16))
  {
LABEL_45:
    sub_1BAF3D694(v18, v48, 0);
    sub_1BAF3D694(v20, v53, 0);
    sub_1BAF3D688(v18, v48, 0);
    sub_1BAF3D688(v20, v53, 0);

    goto LABEL_50;
  }

  v25 = 0;
  v26 = 1 << *(v18 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v18 + 56);
  v29 = (v26 + 63) >> 6;
  v30 = v20 + 56;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
LABEL_38:
    v34 = *(*(v18 + 48) + 8 * (v31 | (v25 << 6)));
    result = sub_1BAF8F598();
    v35 = -1 << *(v20 + 32);
    v36 = result & ~v35;
    if (((*(v30 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      goto LABEL_45;
    }

    v37 = ~v35;
    while (*(*(v20 + 48) + 8 * v36) != v34)
    {
      v36 = (v36 + 1) & v37;
      if (((*(v30 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v32 = v25;
  v17 = v48;
  v9 = v49;
  while (1)
  {
    v25 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v25 >= v29)
    {
      goto LABEL_15;
    }

    v33 = *(v18 + 56 + 8 * v25);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v28 = (v33 - 1) & v33;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1BAF3D528(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BAF8F4C8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BAF3D5F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAF3D63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAF3D688(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_1BAF3D694(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_1BAF3D6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1BAF3D718(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BAF3D72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BAF3D774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_1BAF3D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF3DC34;
}

uint64_t (*sub_1BAF3D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF3DB4C;
}

uint64_t (*sub_1BAF3DA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>))()
{
  v10 = (*(a4 + 32))(a3, a4);
  v12 = v11;
  v13 = sub_1BAF3D7E8(a1, a2, a3, a4);
  v15 = v14;
  result = sub_1BAF3D914(a1, a2, a3, a4);
  *a5 = v10;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v15;
  a5[4] = result;
  a5[5] = v17;
  return result;
}

uint64_t sub_1BAF3DBB4()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t PopulatedDictionary.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v38 = a6;
  v39 = a7;
  v36 = a2;
  v11 = sub_1BAF8F0D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v31 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  v14 = v33;
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v35 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v32 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v34 = a4;
  v22 = *(a4 - 8);
  (*(v22 + 32))(&v31 - v20, a1, a4);
  v23 = *(a5 - 8);
  v24 = *(v23 + 32);
  v24(&v21[*(TupleTypeMetadata2 + 48)], v36, a5);
  v40 = a3;
  v25 = *(v14 + 16);
  v25(v19, v21, TupleTypeMetadata2);
  v36 = *(TupleTypeMetadata2 + 48);
  v26 = v35;
  v25(v35, v21, TupleTypeMetadata2);
  v27 = v37;
  v24(v37, &v26[*(TupleTypeMetadata2 + 48)], a5);
  (*(v23 + 56))(v27, 0, 1, a5);
  v28 = v34;
  sub_1BAF8EB88();
  v29 = v32;
  sub_1BAF8EBA8();
  (*(v33 + 8))(v21, TupleTypeMetadata2);
  (*(v22 + 8))(v26, v28);
  result = (*(v23 + 8))(&v29[v36], a5);
  *v39 = v40;
  return result;
}

uint64_t PopulatedDictionary.init(_:)@<X0>(uint64_t a1@<X0>, void *a5@<X8>)
{
  sub_1BAF8EB88();
  swift_getWitnessTable();
  result = Collection.isPopulated.getter();
  if ((result & 1) == 0)
  {

    a1 = 0;
  }

  *a5 = a1;
  return result;
}

uint64_t PopulatedDictionary.debugDescription.getter(void *a1)
{
  sub_1BAF8EB88();
  swift_getWitnessTable();
  sub_1BAF8F4A8();
  return 0;
}

uint64_t sub_1BAF3E0F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1BAF8F0D8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BAF3E1A4(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  v4 = sub_1BAF8F0D8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t Worker.__allocating_init(workCreator:)(void *a1)
{
  v2 = swift_allocObject();
  Worker.init(workCreator:)(a1);
  return v2;
}

uint64_t *Worker.init(workCreator:)(void *a1)
{
  v2 = *v1;
  sub_1BADC5BE0(a1);
  (*(*(*(v2 + 80) - 8) + 56))(v1 + *(*v1 + 104), 1, 1);
  return v1;
}

void sub_1BAF3E340(void **a1)
{
  v1 = *a1;
  v2 = sub_1BAF8F038();
  sub_1BAF3E4B0();
  log = sub_1BAF8F0C8();
  if (os_log_type_enabled(log, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    sub_1BAF3FDB0();
    swift_allocError();
    *v5 = v1;
    sub_1BAF3FE04(v1);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    _os_log_impl(&dword_1BADC1000, log, v2, "Error: %{public}@", v3, 0xCu);
    sub_1BAF32F04(v4, &qword_1EBC36800, &qword_1BAF96670);
    MEMORY[0x1BFB06160](v4, -1, -1);
    MEMORY[0x1BFB06160](v3, -1, -1);
  }
}

unint64_t sub_1BAF3E4B0()
{
  result = qword_1EDBA38D0;
  if (!qword_1EDBA38D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA38D0);
  }

  return result;
}

char *static Worker.start(task:)(char *result)
{
  v1 = off_1EDBA31E0;
  if (off_1EDBA31E0)
  {
    v2 = result;

    sub_1BAF3E55C(v2, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF3E55C(char *a1, void *a2)
{
  v104 = a2;
  v95 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v95);
  v101 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for WorkOrder(0);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1BAF8E788();
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8E728();
  v105 = *(v7 - 8);
  v106 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v96 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v83 - v10;
  v12 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v83 - v17;
  v19 = *(v2 + 80);
  *&v103 = *(v19 - 8);
  v20 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = *(v2 + 96);
  v22 = static Tools.codableToBinaryData<A>(_:)(a1, v19, v21);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a1;
  v91 = v15;
  v86 = v11;
  v94 = v18;
  if (v23 >> 60 != 15)
  {
    v83 = 0;
    v92 = v22;
    v93 = v23;
    v107[3] = swift_getMetatypeMetadata();
    v107[0] = v2;
    v85 = _s12APFoundation5ToolsO13fullClassNameySSypFZ_0(v107);
    v88 = v25;
    v26 = sub_1BADC5BE0(v107);
    v84 = (*(v2 + 136))(v26);
    v87 = v27;
    v28 = v103;
    v29 = v89;
    v30 = v19;
    (*(v103 + 16))(v89, v90, v19);
    v31 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v32 = swift_allocObject();
    v33 = *(v2 + 88);
    *(v32 + 2) = v30;
    *(v32 + 3) = v33;
    *(v32 + 4) = v21;
    (*(v28 + 32))(&v32[v31], v29, v30);
    *&v32[(v20 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v2;
    v34 = v105;
    v104 = v104[2];
    v35 = v105[7];
    v36 = v94;
    v37 = v106;
    v35(v94, 1, 1, v106);
    type metadata accessor for WorkOrderBuilder(0);
    v38 = swift_allocObject();
    *(v38 + 3) = 0;
    *(v38 + 4) = 0;
    *(v38 + 2) = 0;
    v39 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
    v35(&v38[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v37);
    *&v103 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
    v38[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
    v40 = &v38[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
    *v40 = 0;
    *(v40 + 1) = 0;
    v41 = &v38[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
    *v41 = 0;
    *(v41 + 1) = 0;
    v35(&v38[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v37);
    v42 = &v38[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
    *v42 = 0;
    *(v42 + 1) = 0;
    v43 = v91;
    sub_1BAF400F4(v36, v91);
    if ((v34[6])(v43, 1, v37) == 1)
    {
      v106 = v32;
      sub_1BAF3B678(v92, v93);
      sub_1BAF32F04(v43, &unk_1EBC36750, &qword_1BAF95590);
      v44 = 1;
    }

    else
    {
      v90 = v40;
      v45 = v86;
      (v34[4])(v86, v43, v37);
      sub_1BAF3B678(v92, v93);
      v46 = v96;
      sub_1BAF8E718();
      v47 = sub_1BAF8E688();
      v48 = v34[1];
      v48(v46, v37);
      v48(v45, v37);
      if ((v47 & 1) == 0)
      {

        v71 = v92;
        v72 = v93;
        sub_1BAF3B72C(v92, v93);
        sub_1BAF3B72C(v71, v72);

        v53 = v94;
        return sub_1BAF32F04(v53, &unk_1EBC36750, &qword_1BAF95590);
      }

      v106 = v32;
      v44 = 0;
      v40 = v90;
    }

    v38[v103] = v44;
    v49 = v97;
    sub_1BAF8E778();
    v50 = sub_1BAF8E748();
    v52 = v51;
    (*(v98 + 8))(v49, v99);
    *(v38 + 2) = v50;
    *(v38 + 3) = v52;
    swift_beginAccess();
    v53 = v94;
    sub_1BAF3B5C0(v94, &v38[v39]);
    swift_endAccess();
    *v40 = 0;
    *(v40 + 1) = 0;
    *v41 = 0;
    *(v41 + 1) = 0;
    *(v38 + 4) = 1;
    v54 = v102;
    sub_1BAF7184C(v85, v88, v84, v87, v102);
    v55 = v104;
    sub_1BADC8524(v104 + 13, v104[16]);
    sub_1BAF553D0(v54);
    v56 = &v54[*(v100 + 24)];
    v57 = *(v56 + 1);
    v58 = v101;
    if (v57)
    {
      v59 = *v56;
      sub_1BADC8524(v55 + 18, v55[21]);
      v60 = v92;
      v61 = v93;
      sub_1BAF3B678(v92, v93);
      v62 = v83;
      sub_1BAF5C160(v59, v57, v60, v61);
      if (v62)
      {

        v63 = sub_1BAF8F038();
        sub_1BAF3E4B0();
        v64 = sub_1BAF8F0C8();
        sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
        v65 = swift_allocObject();
        v103 = xmmword_1BAF95190;
        *(v65 + 16) = xmmword_1BAF95190;
        v105 = v62;
        v66 = v54;
        v67 = *v54;
        v68 = *(v66 + 1);
        *(v65 + 56) = MEMORY[0x1E69E6158];
        *(v65 + 64) = sub_1BAF30E44();
        *(v65 + 32) = v67;
        *(v65 + 40) = v68;

        sub_1BAF8E8B8(v63, &dword_1BADC1000, v64, "Failed to save data for new work order %{public}@. Can't create new work order.", 79, 2, v65);

        sub_1BADC8524(v104 + 13, v104[16]);
        sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
        inited = swift_initStackObject();
        *(inited + 16) = v103;
        *(inited + 56) = MEMORY[0x1E69E6158];
        *(inited + 64) = &protocol witness table for String;
        *(inited + 32) = v67;
        *(inited + 40) = v68;

        sub_1BADC826C(0xD000000000000026, 0x80000001BAFA2470, inited);
        sub_1BAF3B72C(v60, v61);

        sub_1BAF3B72C(v60, v61);
        sub_1BAF3B72C(v60, v61);
        swift_setDeallocating();
        sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
        v53 = v94;
        swift_arrayDestroy();
        v70 = v66;
LABEL_15:
        sub_1BAF401D0(v70, type metadata accessor for WorkOrder);
        return sub_1BAF32F04(v53, &unk_1EBC36750, &qword_1BAF95590);
      }

      sub_1BAF3B72C(v60, v61);
    }

    v73 = swift_allocObject();
    v74 = v92;
    v75 = v93;
    *(v73 + 16) = v92;
    *(v73 + 24) = v75;
    v76 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
    v77 = (v58 + v76[12]);
    sub_1BAF4016C(v54, v58);
    *v77 = sub_1BAF40164;
    v77[1] = v73;
    sub_1BAF3B664(v74, v75);

    result = os_transaction_create();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v78 = result;

    v79 = v76[16];
    v80 = v76[20];

    v81 = (v58 + v80);
    *(v58 + v79) = v78;
    v82 = v106;
    *v81 = sub_1BAF40088;
    v81[1] = v82;
    swift_storeEnumTagMultiPayload();

    sub_1BAF36C9C(v58);

    sub_1BAF3B72C(v74, v75);

    sub_1BAF3B72C(v74, v75);
    sub_1BAF401D0(v58, type metadata accessor for WorkCommand);
    v70 = v54;
    goto LABEL_15;
  }

  v107[0] = 1;
  return (*(v2 + 152))(v107);
}

void sub_1BAF3F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BAF8F0D8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  if (swift_dynamicCastClass())
  {
    v10 = *(a5 - 8);
    (*(v10 + 16))(v9, a3, a5);
    (*(v10 + 56))(v9, 0, 1, a5);
    swift_unknownObjectRetain();
    sub_1BAF3E1A4(v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_1BAF8F038();
    sub_1BAF3E4B0();
    v12 = sub_1BAF8F0C8();
    sub_1BAF8E8B8(v11, &dword_1BADC1000, v12, "Error: unexpected worker type.", 30, 2, MEMORY[0x1E69E7CC0]);

    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1BAF8F268();

    v18 = 0xD000000000000013;
    v19 = 0x80000001BAFA28C0;
    v13 = sub_1BAF8F678();
    MEMORY[0x1BFB048C0](v13);

    MEMORY[0x1BFB048C0](46, 0xE100000000000000);
    v14 = sub_1BAF8EC28();

    v17 = sub_1BAF8EC28();
    CreateDiagnosticReport(v14, 0, v17);

    v15 = v17;
  }
}

uint64_t sub_1BAF3F3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v26 = a3;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v24 = *v6;
  v25 = type metadata accessor for WorkResult(0);
  MEMORY[0x1EEE9AC00](v25);
  v7 = *(v24 + 80);
  v8 = sub_1BAF8F0D8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(v7 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v24 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  sub_1BAF3E0F8(v12);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v22 = objc_autoreleasePoolPush();
    sub_1BAF3F7CC(v26, v16);
    objc_autoreleasePoolPop(v22);
    (*(v13 + 32))(v19, v16, v7);
    (*(*v6 + 168))(v19, v28, v29, v30, v31);
    return (*(v13 + 8))(v19, v7);
  }

  else
  {
    (*(v13 + 32))(v21, v12, v7);
    (*(*v6 + 168))(v21, v28, v29, v30, v31);
    return (*(v13 + 8))(v21, v7);
  }
}

uint64_t sub_1BAF3F7CC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_1BAF8F0D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  result = a1(v9);
  if (!v3)
  {
    v14 = v30;
    if (v13 >> 60 == 15)
    {
      sub_1BAF2DB10(&qword_1EBC36808, &qword_1BAF959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BAF95190;
      *(inited + 32) = sub_1BAF8EC38();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v16;
      *(inited + 48) = 0xD000000000000011;
      *(inited + 56) = 0x80000001BAFA2860;
      sub_1BAF328C0(inited);
      swift_setDeallocating();
      sub_1BAF32F04(inited + 32, &unk_1EBC36810, &qword_1BAF95248);
      v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v18 = sub_1BAF8EC28();
      v19 = sub_1BAF8EB78();

      [v17 initWithDomain:v18 code:100 userInfo:v19];

      return swift_willThrow();
    }

    else
    {
      v20 = v8;
      v21 = *(v5 + 88);
      v22 = result;
      v29 = v13;
      static Tools.codableFromBinaryData<A>(_:type:)(result, v13, v6, v6, v21);
      v23 = *(v6 - 8);
      if ((*(v23 + 48))(v11, 1, v6) == 1)
      {
        (*(v20 + 8))(v11, v7);
        sub_1BAF2DB10(&qword_1EBC36808, &qword_1BAF959E0);
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_1BAF95190;
        *(v24 + 32) = sub_1BAF8EC38();
        *(v24 + 72) = MEMORY[0x1E69E6158];
        *(v24 + 40) = v25;
        *(v24 + 48) = 0xD00000000000001DLL;
        *(v24 + 56) = 0x80000001BAFA2880;
        sub_1BAF328C0(v24);
        swift_setDeallocating();
        sub_1BAF32F04(v24 + 32, &unk_1EBC36810, &qword_1BAF95248);
        v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v27 = sub_1BAF8EC28();
        v28 = sub_1BAF8EB78();

        [v26 initWithDomain:v27 code:101 userInfo:v28];

        swift_willThrow();
        return sub_1BAF3B72C(v22, v29);
      }

      else
      {
        sub_1BAF3B72C(v22, v29);
        return (*(v23 + 32))(v14, v11, v6);
      }
    }
  }

  return result;
}

uint64_t Worker.deinit()
{
  v1 = *(*v0 + 104);
  v2 = sub_1BAF8F0D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Worker.__deallocating_deinit()
{
  v1 = *(*v0 + 104);
  v2 = sub_1BAF8F0D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1BAF3FDB0()
{
  result = qword_1EBC367F8;
  if (!qword_1EBC367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC367F8);
  }

  return result;
}

id sub_1BAF3FE04(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1BAF3FE14(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1BAF3FE24(unint64_t *a1)
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

uint64_t sub_1BAF3FE48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAF3FEA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BAF3FF00(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1BAF3FF40(uint64_t a1)
{
  result = sub_1BAF8F0D8();
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

uint64_t sub_1BAF400F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF4016C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkOrder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF401D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BAF4029C(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*a3 & 1) == 0)
  {
    v8 = a2[3];
    v9 = a2[4];
    sub_1BADC8524(a2, v8);
    (*(v9 + 8))(v8, v9);
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF409E0();
    sub_1BAF8EBF8();

    sub_1BAF8F328();

    sub_1BAF8F328();
    *a3 = 1;
  }

  v10 = a2[3];
  v11 = a2[4];
  sub_1BADC8524(a2, v10);
  v12 = *((*(v11 + 8))(v10, v11) + 16);

  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v16 = a2[3];
      v15 = a2[4];
      result = sub_1BADC8524(a2, v16);
      if (v13 == 0x80000000)
      {
        break;
      }

      v18 = (*(v15 + 88))(v13, v16, v15);
      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = 1280070990;
      }

      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BAF4F124(0, *(v14 + 2) + 1, 1, v14);
      }

      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      if (v23 >= v22 >> 1)
      {
        v14 = sub_1BAF4F124((v22 > 1), v23 + 1, 1, v14);
      }

      ++v13;
      *(v14 + 2) = v23 + 1;
      v24 = &v14[16 * v23];
      *(v24 + 4) = v20;
      *(v24 + 5) = v21;
      if (v12 == v13)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF409E0();
    sub_1BAF8EBF8();

    sub_1BAF8F328();

    return sub_1BAF8F328();
  }

  return result;
}

unint64_t sub_1BAF40580(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, void (*a6)(unint64_t *, unint64_t *))
{
  v8 = v6;
  v12 = sub_1BAF5F9DC(a1, a2, a3);
  if (v7)
  {
    return v6;
  }

  v13 = v12;
  [v12[4] lock];
  v30 = a4;
  v31 = a5 & 1;
  v14 = v13[3];
  if (v14)
  {
    v25 = 1;
    while (1)
    {
      v15 = sqlite3_step(v14);
      *(v13 + 4) = v15;
      if (v15 != 100)
      {
        break;
      }

      v28 = type metadata accessor for DatabaseCursorInternal();
      v29 = &off_1F38F6DD0;
      v26 = v13;

      a6(&v30, &v26);
      sub_1BADC5BE0(&v26);
      v14 = v13[3];
      if (!v14)
      {
        goto LABEL_9;
      }
    }

    if (!v13[3])
    {
      goto LABEL_10;
    }

    sqlite3_finalize(v13[3]);
    v13[3] = 0;
  }

LABEL_9:
  v15 = *(v13 + 4);
LABEL_10:
  if (v15 == 101)
  {
    v6 = v30;
  }

  else
  {
    v16 = sub_1BAF8F038();
    v17 = *(v8 + 16);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BAF95190;
    v19 = *(v13 + 4);
    v20 = MEMORY[0x1E69E7358];
    *(v18 + 56) = MEMORY[0x1E69E72F0];
    *(v18 + 64) = v20;
    *(v18 + 32) = v19;
    sub_1BAF8E8B8(v16, &dword_1BADC1000, v17, "Cursor access error. Code: %d", v25);

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1BAF8F268();

    v26 = 0xD00000000000001BLL;
    v27 = 0x80000001BAFA2900;
    LODWORD(v32) = *(v13 + 4);
    v21 = sub_1BAF8F478();
    MEMORY[0x1BFB048C0](v21);

    v6 = v26;
    v22 = v27;
    sub_1BAF4098C();
    swift_allocError();
    *v23 = v6;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
  }

  [v13[4] unlock];

  return v6;
}

unint64_t sub_1BAF4098C()
{
  result = qword_1EBC36888;
  if (!qword_1EBC36888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36888);
  }

  return result;
}

unint64_t sub_1BAF409E0()
{
  result = qword_1EBC36898;
  if (!qword_1EBC36898)
  {
    sub_1BAF2F048(&qword_1EBC367E0, &qword_1BAF956D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36898);
  }

  return result;
}

uint64_t Territory.country.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Territory.administrativeArea.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void __swiftcall Territory.init(country:administrativeArea:)(APFoundation::Territory *__return_ptr retstr, APFoundation::CountryCode country, APFoundation::CountrySubdivisionCode_optional administrativeArea)
{
  v3 = *(country.value._countAndFlagsBits + 8);
  retstr->country.value._countAndFlagsBits = *country.value._countAndFlagsBits;
  retstr->country.value._object = v3;
  retstr->administrativeArea.value = *country.value._object;
}

uint64_t Territory.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1BAF8ED18();
  if (!v2)
  {
    return sub_1BAF8F5C8();
  }

  sub_1BAF8F5C8();

  return sub_1BAF8ED18();
}

uint64_t Territory.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  sub_1BAF8F5C8();
  if (v1)
  {
    sub_1BAF8ED18();
  }

  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF40B7C()
{
  v1 = *(v0 + 24);
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  sub_1BAF8F5C8();
  if (v1)
  {
    sub_1BAF8ED18();
  }

  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF40C08(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1BAF8ED18();
  if (!v2)
  {
    return sub_1BAF8F5C8();
  }

  sub_1BAF8F5C8();

  return sub_1BAF8ED18();
}

uint64_t sub_1BAF40C84(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  sub_1BAF8F5C8();
  if (v2)
  {
    sub_1BAF8ED18();
  }

  return sub_1BAF8F5E8();
}

uint64_t Territory.debugDescription.getter()
{
  if (*(v0 + 24))
  {
    sub_1BAF8F318();
    MEMORY[0x1BFB048C0](47, 0xE100000000000000);
    sub_1BAF8F318();
  }

  else
  {
    sub_1BAF8F318();
    MEMORY[0x1BFB048C0](47, 0xE100000000000000);
  }

  return 0;
}

BOOL _s12APFoundation9TerritoryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BAF8F4C8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        return v9 || (sub_1BAF8F4C8() & 1) != 0;
      }
    }

    else if (!v4)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1BAF40EE0()
{
  result = qword_1EBC368A0;
  if (!qword_1EBC368A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC368A0);
  }

  return result;
}

__n128 sub_1BAF40F34(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAF40F40(uint64_t a1, int a2)
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

uint64_t sub_1BAF40F88(uint64_t result, int a2, int a3)
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

void static APTestingRigUtil.subscribeFor<A>(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BAF8EC28();
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a6;
    v13[4] = a3;
    v13[5] = a4;
    v15[4] = sub_1BAF414C8;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BAF41704;
    v15[3] = &unk_1F38F5460;
    v14 = _Block_copy(v15);

    [v11 subscribeForMessage:v12 handler:v14];
    _Block_release(v14);
  }
}

void sub_1BAF41120(void *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a4;
  v29 = a3;
  v30 = a2;
  v10 = sub_1BAF8F0D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2])
  {
    v18 = a1[5];
  }

  else
  {
    v18 = 0;
  }

  fromJSON<A>(_:)(v18, a6, a7, v14);

  if ((*(v15 + 48))(v14, 1, a6) == 1)
  {
    (*(v11 + 8))(v14, v10);
    sub_1BAF41BEC();
    v19 = swift_allocError();
    *v20 = 0xD00000000000001DLL;
    v20[1] = 0x80000001BAFA2970;
    swift_willThrow();
    v34[0] = v19;
    v22 = v19;
    sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
    if (swift_dynamicCast())
    {

      strcpy(v31, "Parse Error: ");
      HIWORD(v31[1]) = -4864;
      MEMORY[0x1BFB048C0](v32, v33);

      (v30)(v31[0], v31[1]);

      v23 = v34[0];
    }

    else
    {

      swift_getErrorValue();
      sub_1BAF8F548();
      v24 = sub_1BAF8ECD8();
      v26 = v25;

      (v30)(v24, v26);

      v23 = v19;
    }
  }

  else
  {
    (*(v15 + 32))(v17, v14, a6);
    v21 = v28(v17);
    v30(v21);

    (*(v15 + 8))(v17, a6);
  }
}

uint64_t fromJSON<A>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BAF8EC78();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  v18[1] = a4;
  sub_1BAF8E368();
  swift_allocObject();
  sub_1BAF8E358();
  sub_1BAF8EC68();
  v14 = sub_1BAF8EC48();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  if (v16 >> 60 == 15)
  {
    (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  else
  {
    sub_1BAF8E348();
    if (!v5)
    {
      (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
    }

    sub_1BAF3B72C(v14, v16);
  }
}

uint64_t sub_1BAF41704(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1BAF8EEA8();
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v4(v5, sub_1BAF41BE4, v7);
}

uint64_t sub_1BAF417C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BAF417E0(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_1BAF8EC28();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void static APTestingRigUtil.subscribeFor(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BAF8EC28();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_1BAF41A54;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BAF41704;
    v11[3] = &unk_1F38F54B0;
    v10 = _Block_copy(v11);

    [v7 subscribeForMessage:v8 handler:v10];
    _Block_release(v10);
  }
}

uint64_t sub_1BAF41970(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a4(a1);
  a2(v5);
}

__n128 sub_1BAF41A5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BAF41A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BAF41AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APTestingRigUtil(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for APTestingRigUtil(_WORD *result, int a2, int a3)
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

unint64_t sub_1BAF41BEC()
{
  result = qword_1EBC368A8;
  if (!qword_1EBC368A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC368A8);
  }

  return result;
}

APFoundation::CohortCandidate __swiftcall RandomCohortCandidateSource.candidate()()
{
  v1 = v0;
  sub_1BAF41D10(0.0, 1.0);
  if (result.value >= 0.0 && result.value < 1.0)
  {
    *v1 = result.value;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BAF41CC4(double *a1@<X8>)
{
  sub_1BAF41D10(0.0, 1.0);
  if (v2 >= 0.0 && v2 < 1.0)
  {
    *a1 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BAF41D10(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1BFB06170](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1BAF41D10(a1, a2);
  }
}

uint64_t ExpirationDate.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BAF8E728();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExpirationDate.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BAF8E728();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

BOOL ExpirationDate.isExpired(at:)(uint64_t a1)
{
  sub_1BAF8E728();
  sub_1BAF41F30();
  return (sub_1BAF8EC08() & 1) == 0;
}

unint64_t sub_1BAF41F30()
{
  result = qword_1EBC368B0;
  if (!qword_1EBC368B0)
  {
    sub_1BAF8E728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC368B0);
  }

  return result;
}

uint64_t ExpirationDate.isValid(at:)(uint64_t a1)
{
  sub_1BAF8E728();
  sub_1BAF41F30();
  return sub_1BAF8EC08() & 1;
}

uint64_t type metadata accessor for ExpirationDate(uint64_t a1)
{
  result = qword_1EDBA33C0;
  if (!qword_1EDBA33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAF42060(uint64_t a1)
{
  result = sub_1BAF8E728();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF420CC()
{
  v0 = sub_1BAF8E3E8();
  sub_1BADC4B44(v0, qword_1EBC368B8);
  sub_1BADC4BA8(v0, qword_1EBC368B8);
  return sub_1BAF8E3A8();
}

uint64_t sub_1BAF42158()
{
  v0 = sub_1BAF8E3E8();
  sub_1BADC4B44(v0, qword_1EBC368D0);
  sub_1BADC4BA8(v0, qword_1EBC368D0);
  return sub_1BAF8E3A8();
}

uint64_t sub_1BAF421E0()
{
  v0 = sub_1BAF8E3E8();
  sub_1BADC4B44(v0, qword_1EBC368E8);
  sub_1BADC4BA8(v0, qword_1EBC368E8);
  return sub_1BAF8E3A8();
}

uint64_t sub_1BAF42268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1BAF8E3E8();
  v7 = sub_1BADC4BA8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

id static NSUserDefaults.generalPurposeSuite.getter()
{
  if (qword_1EDBA4040 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBA4048;

  return v1;
}

uint64_t PrimitiveCountrySubdivisionCodeSource.dataSource.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_1BADC5BE0((v1 + 16));
  sub_1BADC5B38(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t PrimitiveCountrySubdivisionCodeSource.__allocating_init(dataSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

APFoundation::CountrySubdivisionCode_optional __swiftcall PrimitiveCountrySubdivisionCodeSource.countrySubdivisionCode()()
{
  v2 = v0;
  swift_beginAccess();
  sub_1BAF3BB60(v1 + 16, v10);
  v3 = v11;
  v4 = v12;
  sub_1BADC8524(v10, v11);
  v5 = (*(v4 + 8))(v3, v4);
  if (v6)
  {
    CountrySubdivisionCode.init(_:)(*&v5);
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  v7 = sub_1BADC5BE0(v10);
  result.value.value._object = v8;
  result.value.value._countAndFlagsBits = v7;
  result.is_nil = v9;
  return result;
}

uint64_t PrimitiveCountrySubdivisionCodeSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF425B8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1BAF3BB60(v3 + 16, v9);
  v4 = v10;
  v5 = v11;
  sub_1BADC8524(v9, v10);
  v6 = (*(v5 + 8))(v4, v5);
  if (v7)
  {
    CountrySubdivisionCode.init(_:)(*&v6);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return sub_1BADC5BE0(v9);
}

Swift::String __swiftcall Date.utcFormatted()()
{
  v0 = sub_1BAF8E4E8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v24[0] = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BAF8E848();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BAF8E7C8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1BAF8E888();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF2DB10(&qword_1EBC36900, &qword_1BAF95C98);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v11 = sub_1BAF2DB10(&qword_1EBC36908, &qword_1BAF95CA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  v14 = sub_1BAF8E658();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BAF8E638();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = sub_1BAF8E628();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v20 = sub_1BADC4BA8(v4, qword_1EDBA3868);
  (*(v5 + 16))(v7, v20, v4);
  sub_1BAF8E7A8();
  sub_1BAF8E818();
  sub_1BAF8E4D8();
  sub_1BAF8E648();
  sub_1BAF42A98();
  sub_1BAF8E708();
  (*(v15 + 8))(v17, v14);
  v21 = v24[2];
  v22 = v24[3];
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

unint64_t sub_1BAF42A98()
{
  result = qword_1EBC36910;
  if (!qword_1EBC36910)
  {
    sub_1BAF8E658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36910);
  }

  return result;
}

uint64_t sub_1BAF42AF0()
{
  v0 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1BAF8E4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8E598();
  sub_1BADC4B44(v7, qword_1EDBA3C90);
  sub_1BADC4BA8(v7, qword_1EDBA3C90);
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1BAF8E568();
}

uint64_t sub_1BAF42C9C()
{
  v0 = sub_1BAF8E4F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAF8E598();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v16 - v10;
  sub_1BADC4B44(v9, qword_1EDBA3C48);
  v19 = sub_1BADC4BA8(v4, qword_1EDBA3C48);
  if (qword_1EDBA3C88 != -1)
  {
    swift_once();
  }

  v12 = sub_1BADC4BA8(v4, qword_1EDBA3C90);
  (*(v5 + 16))(v8, v12, v4);
  v20 = 0xD00000000000001DLL;
  v21 = 0x80000001BAFA2A80;
  v18 = *MEMORY[0x1E6968F70];
  v17 = *(v1 + 104);
  v17(v3);
  v16 = sub_1BAF2DB58();
  sub_1BAF8E588();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v20 = 0x646572616873;
  v21 = 0xE600000000000000;
  (v17)(v3, v18, v0);
  sub_1BAF8E588();
  v13(v3, v0);
  return (v14)(v11, v4);
}

uint64_t sub_1BAF42F8C()
{
  v0 = sub_1BAF8E4F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BAF8E598();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BADC4B44(v6, qword_1EDBA3C70);
  sub_1BADC4BA8(v4, qword_1EDBA3C70);
  if (qword_1EDBA3C40 != -1)
  {
    swift_once();
  }

  v9 = sub_1BADC4BA8(v4, qword_1EDBA3C48);
  (*(v5 + 16))(v8, v9, v4);
  v11[0] = 7105633;
  v11[1] = 0xE300000000000000;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F70], v0);
  sub_1BAF2DB58();
  sub_1BAF8E588();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BAF431D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1BAF8E4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF8E598();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BADC4B44(v11, a2);
  sub_1BADC4BA8(v9, a2);
  if (qword_1EDBA3C68 != -1)
  {
    swift_once();
  }

  v14 = sub_1BADC4BA8(v9, qword_1EDBA3C70);
  (*(v10 + 16))(v13, v14, v9);
  v16[0] = a3;
  v16[1] = 0xE200000000000000;
  (*(v6 + 104))(v8, *MEMORY[0x1E6968F70], v5);
  sub_1BAF2DB58();
  sub_1BAF8E588();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1BAF43458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1BAF8E598();
  v7 = sub_1BADC4BA8(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Day.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BAF8E848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF8E498();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v12 = sub_1BADC4BA8(v4, qword_1EDBA3888);
  swift_beginAccess();
  (*(v5 + 16))(v7, v12, v4);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v13 = sub_1BAF8E888();
  sub_1BADC4BA8(v13, qword_1EDBA3868);
  sub_1BAF8E7F8();
  (*(v5 + 8))(v7, v4);
  result = sub_1BAF8E468();
  if (v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  result = sub_1BAF8E478();
  if (v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  result = sub_1BAF8E448();
  if ((v19 & 1) == 0)
  {
    v20 = result;
    v21 = sub_1BAF8E728();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = (*(v9 + 8))(v11, v8);
    *a2 = v16;
    a2[1] = v18;
    a2[2] = v20;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t Day.startOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1BAF2DB10(&qword_1EBC36930, &qword_1BAF95CC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1BAF2DB10(&qword_1EBC36938, &qword_1BAF95CD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1BAF8E498();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8E848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = v1[1];
  v30 = *v1;
  v31 = v18;
  v29 = v1[2];
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v19 = sub_1BADC4BA8(v11, qword_1EDBA3888);
  swift_beginAccess();
  v20 = *(v12 + 16);
  v20(v14, v19, v11);
  v20(v7, v19, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v21 = sub_1BAF8E888();
  v22 = sub_1BADC4BA8(v21, qword_1EDBA3868);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v4, v22, v21);
  (*(v23 + 56))(v4, 0, 1, v21);
  sub_1BAF8E488();
  sub_1BAF8E828();
  (*(v32 + 8))(v10, v33);
  (*(v12 + 8))(v14, v11);
  v24 = sub_1BAF8E728();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v17, 1, v24);
  if (result != 1)
  {
    return (*(v25 + 32))(v28, v17, v24);
  }

  __break(1u);
  return result;
}

APFoundation::Day __swiftcall Day.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  *v3 = year;
  v3[1] = month;
  v3[2] = day;
  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

Swift::Int __swiftcall Day.distanceTo(_:)(APFoundation::Day a1)
{
  year = a1.year;
  v3 = sub_1BAF8E848();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8E498();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E728();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v30 = *year;
  v16 = *(year + 16);
  v17 = *(v1 + 2);
  v35 = *v1;
  v36 = v17;
  Day.startOfDay.getter(&v30 - v14);
  v35 = v30;
  v36 = v16;
  Day.startOfDay.getter(v13);
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v18 = sub_1BADC4BA8(v3, qword_1EDBA3888);
  swift_beginAccess();
  (*(v4 + 16))(v6, v18, v3);
  sub_1BAF2DB10(&qword_1EBC36940, &qword_1BAF95CD8);
  v19 = sub_1BAF8E838();
  v20 = *(v19 - 8);
  *&v30 = v3;
  v21 = v20;
  v22 = v4;
  v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1BAF95190;
  (*(v21 + 104))(v24 + v23, *MEMORY[0x1E6969A48], v19);
  sub_1BAF445F0(v24);
  swift_setDeallocating();
  (*(v21 + 8))(v24 + v23, v19);
  swift_deallocClassInstance();
  sub_1BAF8E808();

  (*(v22 + 8))(v6, v30);
  v25 = sub_1BAF8E448();
  LOBYTE(v24) = v26;
  (*(v33 + 8))(v9, v34);
  v27 = v32;
  v28 = *(v31 + 8);
  v28(v13, v32);
  v28(v15, v27);
  if (v24)
  {
    return 0;
  }

  else
  {
    return v25;
  }
}

uint64_t Day.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB05110](*v0);
  MEMORY[0x1BFB05110](v1);
  return MEMORY[0x1BFB05110](v2);
}

uint64_t Day.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  MEMORY[0x1BFB05110](v2);
  MEMORY[0x1BFB05110](v3);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF44194()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  MEMORY[0x1BFB05110](v2);
  MEMORY[0x1BFB05110](v3);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF44200()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB05110](*v0);
  MEMORY[0x1BFB05110](v1);
  return MEMORY[0x1BFB05110](v2);
}

uint64_t sub_1BAF44248(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v2);
  MEMORY[0x1BFB05110](v3);
  MEMORY[0x1BFB05110](v4);
  return sub_1BAF8F5E8();
}

BOOL static Day.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  v6 = v2 == v4;
  v8 = v2 < v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

BOOL sub_1BAF44314(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_1BAF4434C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_1BAF44388(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_1BAF443C4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t Day.debugDescription.getter()
{
  v3 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](47, 0xE100000000000000);
  v0 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v0);

  MEMORY[0x1BFB048C0](47, 0xE100000000000000);
  v1 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v1);

  return v3;
}

uint64_t sub_1BAF444D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
    v3 = sub_1BAF8F228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_1BAF8F598();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BAF445F0(uint64_t a1)
{
  v2 = sub_1BAF8E838();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1BAF2DB10(&qword_1EBC36958, &unk_1BAF95DF8);
    v9 = sub_1BAF8F228();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1BAF449AC(&qword_1EBC36960, MEMORY[0x1E6969AD8]);
      v16 = sub_1BAF8EBB8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1BAF449AC(&qword_1EBC36968, MEMORY[0x1E6969AE0]);
          v23 = sub_1BAF8EC18();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1BAF448E8()
{
  result = qword_1EBC36948;
  if (!qword_1EBC36948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36948);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Day(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Day(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Day(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1BAF449AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF8E838();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static Dictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1BAF44AE4(a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44AE4(a2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

{
  sub_1BAF44DB0(a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(a2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

{
  if (!a1)
  {
    return 0;
  }

  sub_1BAF44DB0(a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(a2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t sub_1BAF44AE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC36970, &qword_1BAF95230);
    v2 = sub_1BAF8F3A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_1BAF2DB10(&qword_1EBC36978, &qword_1BAF95E08);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1BAF32E44(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1BAF32E44(v29, v30);
    result = sub_1BAF8F1D8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1BAF32E44(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BAF44DB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC36970, &qword_1BAF95230);
    v2 = sub_1BAF8F3A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BAF45388(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1BAF32E44(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BAF32E44(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BAF32E44(v31, v32);
    result = sub_1BAF8F1D8();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1BAF32E44(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL static Optional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1BAF44AE4(a1);
      v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v4 = sub_1BAF8EB78();

      v5 = [v3 initWithDictionary_];

      sub_1BAF44AE4(a2);
      v6 = sub_1BAF8EB78();

      v7 = [v5 isEqualToDictionary_];

      return v7;
    }

    return 0;
  }

  return !a2;
}

id static PopulatedDictionary<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1BAF44AE4(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44AE4(v2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

{
  v2 = *a2;
  sub_1BAF44DB0(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(v2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

BOOL static Optional<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      sub_1BAF44AE4(v2);
      v4 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v5 = sub_1BAF8EB78();

      v6 = [v4 initWithDictionary_];

      sub_1BAF44AE4(v3);
      v7 = sub_1BAF8EB78();

      v8 = [v6 isEqualToDictionary_];

      return v8;
    }

    return 0;
  }

  return !v3;
}

{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      sub_1BAF44DB0(v2);
      v4 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v5 = sub_1BAF8EB78();

      v6 = [v4 initWithDictionary_];

      sub_1BAF44DB0(v3);
      v7 = sub_1BAF8EB78();

      v8 = [v6 isEqualToDictionary_];

      return v8;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1BAF45388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

APFoundation::CohortCandidate_optional __swiftcall CohortCandidate.init(_:)(Swift::Double a1)
{
  v2 = a1 < 0.0;
  if (a1 >= 1.0)
  {
    v2 = 1;
  }

  v3 = a1;
  if (v2)
  {
    v3 = 0.0;
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  result.value = *&a1;
  return result;
}

void static CohortCandidate.randomValue()(double *a1@<X8>)
{
  sub_1BAF41D10(0.0, 1.0);
  if (v2 >= 0.0 && v2 < 1.0)
  {
    *a1 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Ability.hashValue.getter(char a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1 & 1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF45530()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF455A4(uint64_t a1)
{
  v2 = *v1;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v2);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF455EC()
{
  result = qword_1EBC36980;
  if (!qword_1EBC36980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Ability(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Ability(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static UnknownError.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t _s12APFoundation11CountryCodeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t UnknownError.debugDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BAF45A10(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF45A80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1BAF45BC0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

APFoundation::JWTHeader __swiftcall JWTHeader.init(alg:typ:)(Swift::String alg, Swift::String typ)
{
  *v2 = alg;
  v2[1] = typ;
  result.typ = typ;
  result.alg = alg;
  return result;
}

uint64_t static JWTHeader.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BAF8F4C8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BAF8F4C8();
    }
  }

  return result;
}

uint64_t sub_1BAF45E90()
{
  if (*v0)
  {
    return 7371124;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_1BAF45EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (sub_1BAF8F4C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7371124 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BAF8F4C8();

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

uint64_t sub_1BAF45FA8(uint64_t a1)
{
  v2 = sub_1BAF461B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAF45FE4(uint64_t a1)
{
  v2 = sub_1BAF461B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JWTHeader.encode(to:)(void *a1)
{
  v3 = sub_1BAF2DB10(&qword_1EBC36988, &qword_1BAF96130);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF461B4();
  sub_1BAF8F648();
  v12 = 0;
  v8 = v10[3];
  sub_1BAF8F438();
  if (!v8)
  {
    v11 = 1;
    sub_1BAF8F438();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BAF461B4()
{
  result = qword_1EBC36990;
  if (!qword_1EBC36990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36990);
  }

  return result;
}

uint64_t JWTHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC36998, &qword_1BAF96138);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF461B4();
  sub_1BAF8F628();
  if (v2)
  {
    return sub_1BADC5BE0(a1);
  }

  v19 = 0;
  v9 = sub_1BAF8F3D8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1BAF8F3D8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  sub_1BADC5BE0(a1);
}

uint64_t sub_1BAF46438(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BAF8F4C8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BAF8F4C8();
    }
  }

  return result;
}

unint64_t sub_1BAF46500()
{
  result = qword_1EBC369A0;
  if (!qword_1EBC369A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369A0);
  }

  return result;
}

unint64_t sub_1BAF46558()
{
  result = qword_1EBC369A8;
  if (!qword_1EBC369A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369A8);
  }

  return result;
}

unint64_t sub_1BAF465B0()
{
  result = qword_1EBC369B0;
  if (!qword_1EBC369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369B0);
  }

  return result;
}

uint64_t PurposeBoundary.hashValue.getter()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t PurposeConfiguration.debugDescription.getter()
{
  MEMORY[0x1BFB048C0](0x797261646E756F62, 0xEA0000000000203ALL);
  sub_1BAF8F318();
  return 0;
}

uint64_t sub_1BAF467AC()
{
  MEMORY[0x1BFB048C0](0x797261646E756F62, 0xEA0000000000203ALL);
  sub_1BAF8F318();
  return 0;
}

uint64_t PurposeBoundary.debugDescription.getter()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

unint64_t sub_1BAF46854()
{
  result = qword_1EBC369B8;
  if (!qword_1EBC369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369B8);
  }

  return result;
}

uint64_t sub_1BAF468A8()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_1BAF46900(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = sub_1BAF8EAE8();
      v6 = 0x3438335345;
    }

    else
    {
      v5 = sub_1BAF8EB28();
      v6 = 0x3231355345;
    }
  }

  else
  {
    v5 = sub_1BAF8EAA8();
    v6 = 0x3635325345;
  }

  (*(*(v5 - 8) + 8))(v2);
  return v6;
}

void *JWT.verifySignature(using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1BAF8EC78();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = v4[1];
  v13 = *(a2 + 16);
  v45 = *(a2 + 24);
  v46 = v13;
  v15 = type metadata accessor for JWT.Verifier(0, v13, v45, v14);
  v51 = a1;
  if (v11 == sub_1BAF46900(v15) && v12 == 0xE500000000000000)
  {
  }

  else
  {
    v17 = sub_1BAF8F4C8();

    if ((v17 & 1) == 0)
    {
      sub_1BAF46DB4();
      swift_allocError();
      v19 = 3;
LABEL_12:
      *v18 = v19;
      return swift_willThrow();
    }
  }

  v20 = (v4 + *(a2 + 44));
  v22 = *v20;
  v21 = v20[1];
  v49 = v22;
  v50 = v21;
  v47 = 46;
  v48 = 0xE100000000000000;
  sub_1BAF2DB58();
  result = sub_1BAF8F138();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = result;
  v26 = result[4];
  v25 = result[5];
  v49 = v26;
  v50 = v25;

  result = MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  if (v24[2] < 2uLL)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v44 = v3;
  v27 = v24[6];
  v28 = v24[7];

  MEMORY[0x1BFB048C0](v27, v28);

  sub_1BAF8EC68();
  v29 = sub_1BAF8EC48();
  v31 = v30;

  (*(v8 + 8))(v10, v7);
  if (v31 >> 60 == 15)
  {
    sub_1BAF46DB4();
    swift_allocError();
    v19 = 2;
    goto LABEL_12;
  }

  v32 = (v4 + *(a2 + 40));
  v33 = *v32;
  v34 = v32[1];

  v35 = Data.init(base64URLEncoded:)(v33, v34);
  if (v36 >> 60 == 15)
  {
    sub_1BAF46DB4();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();
  }

  else
  {
    v38 = v35;
    v39 = v36;
    v40 = v44;
    v41 = sub_1BAF47554(v35, v36, v29, v31, v51, v46, v45);
    if (!v40 && (v41 & 1) == 0)
    {
      sub_1BAF46DB4();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
    }

    sub_1BAF3B72C(v38, v39);
  }

  return sub_1BAF3B72C(v29, v31);
}

unint64_t sub_1BAF46DB4()
{
  result = qword_1EBC369C0[0];
  if (!qword_1EBC369C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC369C0);
  }

  return result;
}

uint64_t sub_1BAF46E08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1BAF8EB38();
      sub_1BAF48414(&qword_1EBC36A88, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
      return sub_1BAF8EA18();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1BAF47474(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966620], &qword_1EBC36A88, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1BAF47474(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966620], &qword_1EBC36A88, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  }

  sub_1BAF8EB38();
  sub_1BAF48414(&qword_1EBC36A88, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  return sub_1BAF8EA18();
}

uint64_t sub_1BAF4702C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1BAF8EB48();
      sub_1BAF48414(&qword_1EBC36A78, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      return sub_1BAF8EA18();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1BAF47474(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966630], &qword_1EBC36A78, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1BAF47474(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966630], &qword_1EBC36A78, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  }

  sub_1BAF8EB48();
  sub_1BAF48414(&qword_1EBC36A78, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  return sub_1BAF8EA18();
}

uint64_t sub_1BAF47250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1BAF8EB58();
      sub_1BAF48414(&qword_1EBC36A60, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
      return sub_1BAF8EA18();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1BAF47474(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966640], &qword_1EBC36A60, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1BAF47474(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966640], &qword_1EBC36A60, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
  }

  sub_1BAF8EB58();
  sub_1BAF48414(&qword_1EBC36A60, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
  return sub_1BAF8EA18();
}

uint64_t sub_1BAF47474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  result = sub_1BAF8E408();
  if (!result || (result = sub_1BAF8E428(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BAF8E418();
      a5(0);
      sub_1BAF48414(a6, a7, a8);
      return sub_1BAF8EA18();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF47554(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v96 = a5;
  v98 = a3;
  v99 = a4;
  v103 = a2;
  v100 = a1;
  v71 = sub_1BAF8EB08();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v92 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8EB58();
  v85 = *(v10 - 8);
  v86 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAF8EA68();
  v90 = *(v12 - 8);
  v91 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1BAF8EB28();
  v89 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v87 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1BAF8EAC8();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v83 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1BAF8EB48();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BAF8EA58();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1BAF8EAE8();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v77 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BAF8EA88();
  v67 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BAF8EB38();
  v72 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BAF8EA48();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BAF8EAA8();
  v93 = *(v28 - 8);
  v94 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for JWT.Verifier(0, a6, a7, v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v66 - v33;
  (*(v35 + 16))(&v66 - v33, v96, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v79;
      v38 = v77;
      v39 = v80;
      (*(v79 + 32))(v77, v34, v80);
      sub_1BAF48414(&qword_1EBC36A78, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      v40 = v73;
      v41 = v74;
      sub_1BAF8EA38();
      v43 = v98;
      v42 = v99;
      sub_1BAF3B678(v98, v99);
      v44 = v97;
      sub_1BAF4702C(v43, v42, v40);
      v45 = v44;
      sub_1BAF2DABC(v43, v42);
      v46 = v78;
      sub_1BAF8EA28();
      (*(v76 + 8))(v40, v41);
      v101 = v100;
      v102 = v103;
      sub_1BAF3B678(v100, v103);
      sub_1BAF483C0();
      v47 = v83;
      sub_1BAF8EAB8();
      if (!v44)
      {
        sub_1BAF48414(&qword_1EBC36A80, MEMORY[0x1E6966408], MEMORY[0x1E6966400]);
        v63 = v82;
        v61 = sub_1BAF8EAD8();
        (*(v68 + 8))(v47, v69);
        (*(v81 + 8))(v46, v63);
        (*(v37 + 8))(v38, v39);
        return v61 & 1;
      }

      (*(v81 + 8))(v46, v82);
      (*(v37 + 8))(v38, v39);
    }

    else
    {
      v52 = v89;
      v53 = v87;
      (*(v89 + 32))(v87, v34, v95);
      sub_1BAF48414(&qword_1EBC36A60, MEMORY[0x1E6966640], MEMORY[0x1E6966638]);
      v54 = v84;
      v55 = v86;
      sub_1BAF8EA38();
      v57 = v98;
      v56 = v99;
      sub_1BAF3B678(v98, v99);
      v58 = v97;
      sub_1BAF47250(v57, v56, v54);
      v45 = v58;
      sub_1BAF2DABC(v57, v56);
      v59 = v88;
      sub_1BAF8EA28();
      (*(v85 + 8))(v54, v55);
      v101 = v100;
      v102 = v103;
      sub_1BAF3B678(v100, v103);
      sub_1BAF483C0();
      v60 = v92;
      sub_1BAF8EAF8();
      if (!v58)
      {
        sub_1BAF48414(&qword_1EBC36A70, MEMORY[0x1E6966420], MEMORY[0x1E6966418]);
        v65 = v91;
        v61 = sub_1BAF8EB18();
        (*(v70 + 8))(v60, v71);
        (*(v90 + 8))(v59, v65);
        (*(v52 + 8))(v53, v95);
        return v61 & 1;
      }

      (*(v90 + 8))(v59, v91);
      (*(v52 + 8))(v53, v95);
    }
  }

  else
  {
    v95 = v25;
    v96 = v24;
    (*(v93 + 32))(v30, v34, v94);
    sub_1BAF48414(&qword_1EBC36A88, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1BAF8EA38();
    v49 = v98;
    v48 = v99;
    sub_1BAF3B678(v98, v99);
    v50 = v97;
    sub_1BAF46E08(v49, v48, v23);
    sub_1BAF2DABC(v49, v48);
    sub_1BAF8EA28();
    (*(v72 + 8))(v23, v21);
    v101 = v100;
    v102 = v103;
    sub_1BAF3B678(v100, v103);
    sub_1BAF483C0();
    v51 = v75;
    sub_1BAF8EA78();
    v45 = v50;
    if (!v50)
    {
      sub_1BAF48414(&qword_1EBC36A90, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
      v64 = v96;
      v61 = sub_1BAF8EA98();
      (*(v67 + 8))(v51, v19);
      (*(v95 + 8))(v27, v64);
      (*(v93 + 8))(v30, v94);
      return v61 & 1;
    }

    (*(v95 + 8))(v27, v96);
    (*(v93 + 8))(v30, v94);
  }

  v61 = 0;
  return v61 & 1;
}

void sub_1BAF48298(uint64_t a1)
{
  sub_1BAF48374(319, &qword_1EBC36A48, MEMORY[0x1E6966570]);
  if (v1 <= 0x3F)
  {
    sub_1BAF48374(319, &qword_1EBC36A50, MEMORY[0x1E69665D8]);
    if (v2 <= 0x3F)
    {
      sub_1BAF48374(319, &qword_1EBC36A58, MEMORY[0x1E6966610]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BAF48374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BAF483C0()
{
  result = qword_1EBC36A68;
  if (!qword_1EBC36A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36A68);
  }

  return result;
}

uint64_t sub_1BAF48414(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

APFoundation::IntBucketConfiguration __swiftcall IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(Swift::Int unknownBucketName, Swift::OpaquePointer discreteBuckets, Swift::OpaquePointer classifiedBuckets)
{
  v3->_rawValue = unknownBucketName;
  v3[1]._rawValue = discreteBuckets._rawValue;
  v3[2]._rawValue = classifiedBuckets._rawValue;
  result.classifiedBuckets = classifiedBuckets;
  result.discreteBuckets = discreteBuckets;
  result.unknownBucketName = unknownBucketName;
  return result;
}

uint64_t static IntBucketConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_1BAF3D000(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1BAF3D154(v3, v2);
}

uint64_t sub_1BAF484E4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_1BAF3D000(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1BAF3D154(v3, v2);
}

uint64_t sub_1BAF4854C(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1BAF8F598();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
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

APFoundation::ClassifiedIntBucket __swiftcall ClassifiedIntBucket.init(name:contents:)(Swift::Int name, Swift::OpaquePointer contents)
{
  v2->_rawValue = name;
  v2[1]._rawValue = contents._rawValue;
  result.contents = contents;
  result.name = name;
  return result;
}

uint64_t static ClassifiedIntBucket.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BAF3D000(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAF486E0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BAF3D000(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

BOOL _s12APFoundation17IntBucketContentsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    v10 = *a1;
    if ((*(a2 + 16) & 1) == 0)
    {
      v11 = sub_1BAF4854C(v10, *a2);
      sub_1BAF3D694(v6, v5, 0);
      sub_1BAF3D694(v3, v2, 0);
      sub_1BAF3D688(v3, v2, 0);
      sub_1BAF3D688(v6, v5, 0);
      return v11 & 1;
    }

LABEL_11:
    sub_1BAF3D694(v6, v5, v7);
    sub_1BAF3D688(v3, v2, v4);
    sub_1BAF3D688(v6, v5, v7);
    return 0;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  sub_1BAF3D688(*a1, v2, 1);
  sub_1BAF3D688(v6, v5, 1);
  return v3 == v6 && v2 == v5;
}

uint64_t sub_1BAF4880C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BAF48854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1BAF488B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAF488C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BAF4890C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t JSONIntBucketConfigurationStore.__allocating_init(jsonSource:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BADC5B38(a1, v4 + 16);
  sub_1BADC5B38(a2, v4 + 56);
  return v4;
}

uint64_t JSONIntBucketConfigurationStore.init(jsonSource:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1BADC5B38(a1, v2 + 16);
  sub_1BADC5B38(a2, v2 + 56);
  return v2;
}

uint64_t JSONIntBucketConfigurationStore.deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));
  return v0;
}

uint64_t JSONIntBucketConfigurationStore.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));

  return swift_deallocClassInstance();
}

APFoundation::IntBucketConfiguration __swiftcall JSONIntBucketConfigurationStore.configuration()()
{
  v2 = v0;
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5 && (sub_1BAF597C0(v5, &v13), v6 = , (v9 = v14) != 0))
  {
    v10 = v15;
    *v2 = v13;
    v2[1] = v9;
    v2[2] = v10;
  }

  else
  {
    v11 = v1[10];
    v12 = v1[11];
    sub_1BADC8524(v1 + 7, v11);
    v6 = (*(v12 + 8))(v11, v12);
  }

  result.classifiedBuckets._rawValue = v8;
  result.discreteBuckets._rawValue = v7;
  result.unknownBucketName = v6;
  return result;
}

uint64_t DebugFileTextStream.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DebugFileTextStream(0) + 20);
  v4 = sub_1BAF8E598();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DebugFileTextStream(uint64_t a1)
{
  result = qword_1EBC36AA0;
  if (!qword_1EBC36AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAF48C88@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1BAF8E598();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for DebugFileTextStream(0);
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v38 = v10;
  v14 = *(v10 + 20);
  v15 = *(v4 + 16);
  v40 = v12;
  v36 = v14;
  v15(&v12[v14], a1, v3);
  sub_1BAF8E558();
  v16 = sub_1BAF8EC28();

  v41 = v13;
  LOBYTE(v10) = [v13 fileExistsAtPath_];

  if (v10 & 1) != 0 || (sub_1BAF8E558(), v17 = sub_1BAF8EC28(), , v18 = [v41 createFileAtPath:v17 contents:0 attributes:0], v17, (v18))
  {
    sub_1BAF30DFC(0, &qword_1EBC36AB0, 0x1E696AC00);
    v15(v7, a1, v3);
    v19 = sub_1BAF492D0(v7);
    v20 = v40;
    *v40 = v19;
    v21 = v19;
    sub_1BAF8F008();

    (*(v4 + 8))(a1, v3);
    v32 = v39;
    sub_1BAF49860(v20, v39);
    (*(v37 + 56))(v32, 0, 1, v38);
    return sub_1BAF498C4(v20);
  }

  else
  {
    v22 = sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v23 = sub_1BAF8F0C8();
    v15(v9, a1, v3);
    if (os_log_type_enabled(v23, v22))
    {
      v24 = swift_slowAlloc();
      v35 = v22;
      v25 = v24;
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315138;
      v34 = sub_1BAF8E558();
      v28 = v27;
      v29 = *(v4 + 8);
      v29(v9, v3);
      v30 = sub_1BAF49CF8(v34, v28, &v42);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1BADC1000, v23, v35, "Failed to create DebugFileTextStream at %s", v25, 0xCu);
      sub_1BADC5BE0(v26);
      MEMORY[0x1BFB06160](v26, -1, -1);
      MEMORY[0x1BFB06160](v25, -1, -1);

      v31 = a1;
    }

    else
    {

      v29 = *(v4 + 8);
      v29(a1, v3);
      v31 = v9;
    }

    v29(v31, v3);
    v29(&v40[v36], v3);
    return (*(v37 + 56))(v39, 1, 1, v38);
  }
}

id sub_1BAF492D0(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BAF8E518();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1BAF8E598();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1BAF8E4C8();

    swift_willThrow();
    v9 = sub_1BAF8E598();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

Swift::Void __swiftcall DebugFileTextStream.write(_:)(Swift::String a1)
{
  v2 = sub_1BAF8EC78();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8EC68();
  v6 = sub_1BAF8EC48();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    v9 = *v1;
    v10 = sub_1BAF8E5D8();
    [v9 writeData_];

    sub_1BAF3B72C(v6, v8);
  }
}

Swift::Void __swiftcall DebugFileTextStream.close()()
{
  v1 = v0;
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DebugFileTextStream(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v23[0] = 0;
  v6 = [v5 closeAndReturnError_];
  v7 = v23[0];
  if (v6)
  {

    v8 = v7;
  }

  else
  {
    v22 = v23[0];
    v9 = v23[0];
    v10 = sub_1BAF8E4C8();

    swift_willThrow();
    v11 = sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v12 = sub_1BAF8F0C8();
    sub_1BAF49860(v1, v4);
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23[0] = v15;
      *v13 = 136315394;
      sub_1BAF8E598();
      sub_1BAF49CA0();
      v16 = sub_1BAF8F478();
      v18 = v17;
      sub_1BAF498C4(v4);
      v19 = sub_1BAF49CF8(v16, v18, v23);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2112;
      v20 = v10;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v21;
      *v14 = v21;
      _os_log_impl(&dword_1BADC1000, v12, v11, "Can't close DebugFileTextStream %s file. %@", v13, 0x16u);
      sub_1BAF49DC4(v14);
      MEMORY[0x1BFB06160](v14, -1, -1);
      sub_1BADC5BE0(v15);
      MEMORY[0x1BFB06160](v15, -1, -1);
      MEMORY[0x1BFB06160](v13, -1, -1);
    }

    else
    {

      sub_1BAF498C4(v4);
    }
  }
}

uint64_t sub_1BAF49860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFileTextStream(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF498C4(uint64_t a1)
{
  v2 = type metadata accessor for DebugFileTextStream(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DebugFileTextStream.createTemporaryTextStream()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BAF8E788();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BAF8E598();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  sub_1BAF8E548();
  sub_1BAF8E778();
  sub_1BAF8E748();
  (*(v3 + 8))(v5, v2);
  sub_1BAF8E528();

  v15 = *(v7 + 8);
  v15(v10, v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_1BAF48C88(v10, a1);
  return (v15)(v12, v6);
}

uint64_t sub_1BAF49B6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BAF8EC78();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8EC68();
  v7 = sub_1BAF8EC48();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  if (v9 >> 60 != 15)
  {
    v11 = *v2;
    v12 = sub_1BAF8E5D8();
    [v11 writeData_];

    return sub_1BAF3B72C(v7, v9);
  }

  return result;
}

unint64_t sub_1BAF49CA0()
{
  result = qword_1EBC36A98;
  if (!qword_1EBC36A98)
  {
    sub_1BAF8E598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36A98);
  }

  return result;
}

unint64_t sub_1BAF49CF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BAF49EE8(v11, 0, 0, 1, a1, a2);
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
    sub_1BAF45388(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1BADC5BE0(v11);
  return v7;
}

uint64_t sub_1BAF49DC4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36800, &qword_1BAF96670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAF49E54(uint64_t a1)
{
  result = sub_1BAF30DFC(319, &qword_1EBC36AB0, 0x1E696AC00);
  if (v2 <= 0x3F)
  {
    result = sub_1BAF8E598();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAF49EE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1BAF49FF4(a5, a6);
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
    result = sub_1BAF8F2B8();
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

void *sub_1BAF49FF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BAF4A040(a1, a2);
  sub_1BAF4A170(&unk_1F38F4A80);
  return v3;
}

void *sub_1BAF4A040(uint64_t a1, unint64_t a2)
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

  v6 = sub_1BAF2DC14(v5, 0);
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

  result = sub_1BAF8F2B8();
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
        v10 = sub_1BAF8ED98();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BAF2DC14(v10, 0);
        result = sub_1BAF8F238();
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

uint64_t sub_1BAF4A170(uint64_t result)
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

  result = sub_1BAF4A25C(result, v11, 1, v3);
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

char *sub_1BAF4A25C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
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

uint64_t UserDefaultsKeyValueStore.__allocating_init(userDefaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool_optional __swiftcall UserDefaultsKeyValueStore.BOOLFor(key:)(Swift::String key)
{
  v2 = *(v1 + 16);
  v3 = sub_1BAF8EC28();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1BAF8F168();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1BADC5C2C(v9);
    return 2;
  }
}

Swift::Void __swiftcall UserDefaultsKeyValueStore.set(double:forKey:)(Swift::Double a1, Swift::String forKey)
{
  v4 = *(v2 + 16);
  v5 = sub_1BAF8EC28();
  [v4 setDouble:v5 forKey:a1];
}

Swift::Void __swiftcall UserDefaultsKeyValueStore.set(BOOL:forKey:)(Swift::Bool a1, Swift::String forKey)
{
  v4 = *(v2 + 16);
  v5 = sub_1BAF8EC28();
  [v4 setBool:a1 forKey:v5];
}

Swift::Void __swiftcall UserDefaultsKeyValueStore.set(string:forKey:)(Swift::String string, Swift::String forKey)
{
  v3 = *(v2 + 16);
  v4 = sub_1BAF8EC28();
  v5 = sub_1BAF8EC28();
  [v3 setObject:v4 forKey:v5];
}

uint64_t UserDefaultsKeyValueStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BAF4A604(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = sub_1BAF8EC28();
  [v5 setDouble:v6 forKey:a3];
}

void sub_1BAF4A670(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*v3 + 16);
  v6 = sub_1BAF8EC28();
  [v5 setBool:a1 & 1 forKey:v6];
}

void sub_1BAF4A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 16);
  v6 = sub_1BAF8EC28();
  v7 = sub_1BAF8EC28();
  [v5 setObject:v6 forKey:v7];
}

APFoundation::Day __swiftcall APClock.today()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1BAF8E848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BAF8E498();
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8E728();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v2 now];
  sub_1BAF8E6E8();

  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v16 = sub_1BADC4BA8(v4, qword_1EDBA3888);
  swift_beginAccess();
  (*(v5 + 16))(v7, v16, v4);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v17 = sub_1BAF8E888();
  sub_1BADC4BA8(v17, qword_1EDBA3868);
  sub_1BAF8E7F8();
  (*(v5 + 8))(v7, v4);
  v18 = sub_1BAF8E468();
  if (v19)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21 = v18;
  v18 = sub_1BAF8E478();
  if (v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = v18;
  v18 = sub_1BAF8E448();
  if (v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v18;
  (*(v8 + 8))(v10, v24);
  v18 = (*(v12 + 8))(v14, v11);
  *v3 = v21;
  v3[1] = v22;
  v3[2] = v23;
LABEL_12:
  result.day = v20;
  result.month = v19;
  result.year = v18;
  return result;
}

id sub_1BAF4AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BADC880C();
  v7[3] = a2;
  v7[0] = a1;
  return sub_1BADC85C4(0, 0xE000000000000000, a3, v7);
}

id Int32.dbParam.getter(int a1)
{
  sub_1BADC880C();
  v3[3] = MEMORY[0x1E69E72F0];
  LODWORD(v3[0]) = a1;
  return sub_1BADC85C4(0, 0xE000000000000000, 7, v3);
}

id sub_1BAF4ABE4(uint64_t a1)
{
  v3 = *v1;
  sub_1BADC880C();
  v5[3] = a1;
  LODWORD(v5[0]) = v3;
  return sub_1BADC85C4(0, 0xE000000000000000, 7, v5);
}

id String.dbParam.getter(uint64_t a1, uint64_t a2)
{
  sub_1BADC880C();
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = a1;
  v5[1] = a2;

  return sub_1BADC85C4(0, 0xE000000000000000, 3, v5);
}

id sub_1BAF4ACB0(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1BADC880C();
  v6[3] = a1;
  v6[0] = v4;
  v6[1] = v3;

  return sub_1BADC85C4(0, 0xE000000000000000, 3, v6);
}

id Double.dbParam.getter(double a1)
{
  sub_1BADC880C();
  v3[3] = MEMORY[0x1E69E63B0];
  *v3 = a1;
  return sub_1BADC85C4(0, 0xE000000000000000, 2, v3);
}

id Date.dbParam.getter()
{
  sub_1BADC880C();
  v1 = sub_1BAF8E728();
  v4[3] = v1;
  v2 = sub_1BAF3BAAC(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  return sub_1BADC85C4(0, 0xE000000000000000, 4, v4);
}

id sub_1BAF4AE10(uint64_t a1)
{
  sub_1BADC880C();
  v5[3] = a1;
  v3 = sub_1BAF3BAAC(v5);
  (*(*(a1 - 8) + 16))(v3, v1, a1);
  return sub_1BADC85C4(0, 0xE000000000000000, 4, v5);
}

id Bool.dbParam.getter(char a1)
{
  v2[3] = MEMORY[0x1E69E6530];
  v2[0] = a1 & 1;
  sub_1BADC880C();
  return sub_1BADC85C4(0, 0xE000000000000000, 0, v2);
}

id sub_1BAF4AEF8()
{
  v1 = *v0;
  v3[3] = MEMORY[0x1E69E6530];
  v3[0] = v1;
  sub_1BADC880C();
  return sub_1BADC85C4(0, 0xE000000000000000, 0, v3);
}

id UUID.dbParam.getter()
{
  sub_1BADC880C();
  v0 = sub_1BAF8E748();
  v3[3] = MEMORY[0x1E69E6158];
  v3[0] = v0;
  v3[1] = v1;
  return sub_1BADC85C4(0, 0xE000000000000000, 3, v3);
}

id sub_1BAF4AFAC()
{
  sub_1BADC880C();
  v0 = sub_1BAF8E748();
  v3[3] = MEMORY[0x1E69E6158];
  v3[0] = v0;
  v3[1] = v1;
  return sub_1BADC85C4(0, 0xE000000000000000, 3, v3);
}

id Data.dbParam.getter(uint64_t a1, unint64_t a2)
{
  sub_1BADC880C();
  v5[3] = MEMORY[0x1E6969080];
  v5[0] = a1;
  v5[1] = a2;
  sub_1BAF3B678(a1, a2);
  return sub_1BADC85C4(0, 0xE000000000000000, 6, v5);
}

id sub_1BAF4B07C(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1BADC880C();
  v6[3] = a1;
  v6[0] = v4;
  v6[1] = v3;
  sub_1BAF3B678(v4, v3);
  return sub_1BADC85C4(0, 0xE000000000000000, 6, v6);
}

uint64_t sub_1BAF4B138()
{
  v0 = sub_1BAF2DB10(&qword_1EBC36930, &qword_1BAF95CC8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1BAF8E888();
  sub_1BADC4B44(v3, qword_1EDBA3868);
  v4 = sub_1BADC4BA8(v3, qword_1EDBA3868);
  sub_1BAF8E858();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static TimeZone.utc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAF8E888();
  v3 = sub_1BADC4BA8(v2, qword_1EDBA3868);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JWT.init(tokenString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v50 = *(a3 - 8);
  v51 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8E328();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v53 = a2;
  v56 = 46;
  v57 = 0xE100000000000000;
  sub_1BAF2DB58();
  v15 = sub_1BAF8F138();
  if (v15[2] != 3)
  {

    sub_1BAF46DB4();
    swift_allocError();
    *v23 = 0;
    return swift_willThrow();
  }

  v47 = a3;
  v48 = v10;
  v45 = a5;
  v46 = a1;
  v16 = v15[4];
  v17 = v15[5];
  v18 = v15[7];
  v49 = v15[6];
  v19 = v15[9];
  v44 = v15[8];

  sub_1BAF8E368();
  swift_allocObject();
  sub_1BAF8E358();
  (*(v12 + 104))(v14, *MEMORY[0x1E6967F10], v11);
  sub_1BAF8E338();
  v20 = Data.init(base64URLEncoded:)(v16, v17);
  if (v21 >> 60 == 15)
  {

    sub_1BAF46DB4();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  v25 = v20;
  v26 = v21;
  v27 = v19;
  v28 = Data.init(base64URLEncoded:)(v49, v18);
  if (v29 >> 60 == 15)
  {

    sub_1BAF46DB4();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();
    sub_1BAF3B72C(v25, v26);
  }

  v31 = v28;
  v32 = v29;
  sub_1BAF4B8AC();
  v33 = v58;
  sub_1BAF8E348();
  if (v33)
  {

    sub_1BAF3B72C(v25, v26);
    sub_1BAF3B72C(v31, v32);
  }

  else
  {
    v58 = v53;
    v42 = v54;
    v43 = v52;
    v49 = v55;
    v34 = v47;
    sub_1BAF8E348();

    sub_1BAF3B72C(v25, v26);
    sub_1BAF3B72C(v31, v32);
    v35 = v45;
    v36 = v58;
    *v45 = v43;
    *(v35 + 1) = v36;
    v37 = v49;
    *(v35 + 2) = v42;
    *(v35 + 3) = v37;
    v39 = type metadata accessor for JWT(0, v34, v51, v38);
    result = (*(v50 + 32))(&v35[v39[9]], v48, v34);
    v40 = &v35[v39[10]];
    *v40 = v44;
    *(v40 + 1) = v27;
    v41 = &v35[v39[11]];
    *v41 = v46;
    v41[1] = a2;
  }

  return result;
}

unint64_t sub_1BAF4B8AC()
{
  result = qword_1EBC36AC0[0];
  if (!qword_1EBC36AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC36AC0);
  }

  return result;
}

uint64_t static JWT.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = *a1 == *a2 && a1[1] == v10;
  if (!v13 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v14 = v8 == v11 && v9 == v12;
  if (!v14 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for JWT(0, a3, a4, v10);
  if ((sub_1BAF8EC18() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 40);
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v15 + 44);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    return 1;
  }

  return sub_1BAF8F4C8();
}

uint64_t sub_1BAF4BA78(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF4BB08(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BAF4BC58(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 32) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[2] = 0;
        result[3] = 0;
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_1BAF4BE34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = *(v1 + 40);
  *(a1 + 40) = *(v1 + 56);
  *(a1 + 56) = v2;
}

uint64_t PersistentCachedStore.__allocating_init<A>(queueStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1BAF4C990(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

uint64_t PersistentCachedStore.init<A>(queueStorage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BAF4C990(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t sub_1BAF4BFB0()
{
  v2 = *v0;
  sub_1BAF4BE34(v12);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  type metadata accessor for AnyPersistentQueueStore(0, v3, v4, v5);
  sub_1BAF5B88C();

  if (!v1)
  {
    v13 = v11[4];
    v7 = sub_1BADC8524(v11, v11[3]);
    MEMORY[0x1EEE9AC00](v7);
    (*(v9 + 16))(&v10[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    swift_beginAccess();
    type metadata accessor for QueueMessage(255, v3, v4, v5);
    sub_1BAF8EF28();
    sub_1BAF8EEF8();
    swift_endAccess();
    return sub_1BADC5BE0(v11);
  }

  return result;
}

uint64_t sub_1BAF4C194(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = type metadata accessor for QueueMessage(0, v4, v5, v6);
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8 + 16;
  sub_1BAF4BE34(v12);
  type metadata accessor for AnyPersistentQueueStore(0, v4, v5, v6);
  sub_1BAF5B8B4();

  if (!v2)
  {
    (*(v13 + 16))(v9, a1, v7);
    swift_beginAccess();
    sub_1BAF8EF28();
    sub_1BAF8EF08();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BAF4C358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  sub_1BAF4BE34(v15);
  v9 = v8[11];
  v10 = v8[12];
  v11 = v8[10];
  type metadata accessor for AnyPersistentQueueStore(0, v11, v9, v10);
  v14[2] = a2;
  v14[3] = a3;
  sub_1BAF5B8DC();

  if (!v4)
  {
    v16 = a1;
    v14[7] = 0;
    swift_beginAccess();
    type metadata accessor for QueueMessage(255, v11, v9, v10);
    sub_1BAF8EF28();

    swift_getWitnessTable();
    swift_getWitnessTable();
    v13 = sub_1BAF8EFD8();
    v14[1] = v14;
    MEMORY[0x1EEE9AC00](v13);
    swift_getWitnessTable();
    sub_1BAF8EFE8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BAF4C598(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1BAF4BE34(v10);
  v5 = v4[10];
  v6 = v4[11];
  v7 = v4[12];
  type metadata accessor for AnyPersistentQueueStore(0, v5, v6, v7);
  sub_1BAF5B904();

  if (!v3)
  {
    v11 = &v9;
    MEMORY[0x1EEE9AC00](result);
    swift_beginAccess();
    type metadata accessor for QueueMessage(255, v5, v6, v7);
    sub_1BAF8EF28();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BAF8EFE8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1BAF4C778()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for QueueMessage(255, v1[10], v1[11], v1[12]);
  sub_1BAF8EF28();
  swift_getWitnessTable();
  return sub_1BAF8EFB8();
}

void *PersistentCachedStore.deinit()
{

  return v0;
}

uint64_t PersistentCachedStore.__deallocating_deinit()
{
  PersistentCachedStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF4C990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  type metadata accessor for QueueMessage(0, v7, *(*v3 + 88), *(*v3 + 96));
  *(v3 + 80) = sub_1BAF8EB68();
  sub_1BAF5BE3C(a1, v7, a2, a3, v11);
  v8 = v11[1];
  *(v3 + 16) = v11[0];
  *(v3 + 32) = v8;
  v9 = v11[3];
  *(v3 + 48) = v11[2];
  *(v3 + 64) = v9;
  return v3;
}

uint64_t sub_1BAF4CA6C(uint64_t *a1)
{
  if (*a1 == *(v1 + 40) && a1[1] == *(v1 + 48))
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8() & 1;
  }
}

uint64_t getEnumTagSinglePayload for WorkState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BAF4CE00()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](qword_1BAF969A0[v1]);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF4CE88(uint64_t a1)
{
  v2 = *v1;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](qword_1BAF969A0[v2]);
  return sub_1BAF8F5E8();
}

void *sub_1BAF4CED4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2030100u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1BAF4CF18()
{
  result = qword_1EBC36B48;
  if (!qword_1EBC36B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36B48);
  }

  return result;
}

uint64_t sub_1BAF4CF6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t static Guarantee.value(_:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = sub_1BAF8F0D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = swift_allocObject();
  Guarantee.init()();
  v9 = *(v3 - 8);
  (*(v9 + 16))(v7, a1, v3);
  (*(v9 + 56))(v7, 0, 1, v3);
  v10 = *(*v8 + 88);
  swift_beginAccess();
  (*(v5 + 40))(v8 + v10, v7, v4);
  swift_endAccess();
  return v8;
}

void Guarantee.then(_:)(void (*a1)(char *), uint64_t a2)
{
  v18 = a2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_1BAF8F0D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - v12;
  v14 = *(v2 + *(v4 + 104));
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v2 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v10, v2 + v15, v6);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v16 = swift_allocObject();
    v16[2] = v5;
    v16[3] = a1;
    v16[4] = v18;
    v19 = sub_1BAF4ED8C;
    v20 = v16;
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();

    sub_1BAF8EF08();
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
  }

  else
  {
    (*(v11 + 32))(v13, v10, v5);
    os_unfair_lock_unlock(v14 + 4);
    a1(v13);
    (*(v11 + 8))(v13, v5);
  }
}

uint64_t Guarantee.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_1BAF8F0D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BAF4D548()
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](0);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF4D5B4(uint64_t a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](0);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF4D60C(void (*a1)(void))
{
  v2 = swift_allocObject();
  a1();
  return v2;
}

void *Promise.init()()
{
  v1 = *(*v0 + 80);
  swift_getFunctionTypeMetadata1();
  v2 = sub_1BAF8EED8();
  v3 = MEMORY[0x1E69E7CC0];
  v0[2] = v2;
  v0[3] = v3;
  type metadata accessor for Promise.State(0, v1, v4, v5);
  swift_storeEnumTagMultiPayload();
  v6 = *(*v0 + 112);
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v0 + v6) = v7;
  *(v0 + *(*v0 + 120)) = 0;
  return v0;
}

uint64_t static Promise.value(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Promise.State(0, v5, a3, a4);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF2F048(&qword_1EBC36890, &qword_1BAF97140);
  v14 = sub_1BAF8F5F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  v18 = swift_allocObject();
  Promise.init()();
  (*(v15 + 16))(v17, v22, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v10 = *v17;
  }

  else
  {
    v19 = *(v11 + 32);
    v19(v13, v17, v5);
    v19(v10, v13, v5);
  }

  swift_storeEnumTagMultiPayload();
  v20 = *(*v18 + 104);
  swift_beginAccess();
  (*(v7 + 40))(v18 + v20, v10, v6);
  swift_endAccess();
  return v18;
}

uint64_t Promise.then(_:)(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - v8;
  v12 = type metadata accessor for Promise.State(0, v6, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = *(v2 + *(v5 + 112));
  os_unfair_lock_lock(v16 + 4);
  v17 = *(*v2 + 104);
  swift_beginAccess();
  (*(v13 + 16))(v15, v3 + v17, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      v19 = swift_allocObject();
      v19[2] = v6;
      v19[3] = a1;
      v19[4] = v22;
      v23 = sub_1BAF4FCA8;
      v24 = v19;
      swift_beginAccess();
      swift_getFunctionTypeMetadata1();
      sub_1BAF8EF28();

      sub_1BAF8EF08();
      swift_endAccess();
    }

    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    (*(v7 + 32))(v9, v15, v6);
    os_unfair_lock_unlock(v16 + 4);
    a1(v9);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t Promise.catch(_:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = type metadata accessor for Promise.State(0, *(*v5 + 80), a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24[-v11];
  v13 = *&v5[*(v8 + 112)];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v5 + 104);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v5[v14], v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v12;
      os_unfair_lock_unlock(v13 + 4);
      a1(v16);
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      *(v17 + 24) = a2;
      swift_beginAccess();
      v18 = *(v5 + 3);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 3) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1BAF4F8E0(0, v18[2] + 1, 1, v18, &qword_1EBC36B68, &qword_1BAF96A40);
        *(v5 + 3) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1BAF4F8E0((v20 > 1), v21 + 1, 1, v18, &qword_1EBC36B68, &qword_1BAF96A40);
      }

      v18[2] = v21 + 1;
      v22 = &v18[2 * v21];
      v22[4] = sub_1BAF4EDCC;
      v22[5] = v17;
      *(v5 + 3) = v18;
      swift_endAccess();
      os_unfair_lock_unlock(v13 + 4);
    }
  }

  else
  {
    os_unfair_lock_unlock(v13 + 4);
    (*(v10 + 8))(v12, v9);
  }
}

void Promise.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = type metadata accessor for Promise.State(0, v7, a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = *&v4[*(v6 + 112)];
  os_unfair_lock_lock(v15 + 4);
  v16 = *(*v4 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v14, &v4[v16], v8);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  (*(v9 + 8))(v14, v8);
  if (v6 == 2)
  {
    (*(*(v7 - 8) + 16))(v12, a1, v7);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v9 + 40))(&v4[v16], v12, v8);
    swift_endAccess();
    swift_beginAccess();
    v17 = *(v4 + 2);
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();

    sub_1BAF8EF18();
    swift_endAccess();
    v18 = *(*v4 + 120);
    v19 = *&v4[v18];
    *&v4[v18] = 0;
    swift_beginAccess();
    *(v4 + 3) = MEMORY[0x1E69E7CC0];

    os_unfair_lock_unlock(v15 + 4);
    if (v19)
    {

      sub_1BAF8E9C8();
    }

    v21[2] = v17;
    MEMORY[0x1EEE9AC00](v20);
    v21[-2] = v7;
    v21[-1] = a1;
    swift_getWitnessTable();
    sub_1BAF8EE88();
  }

  else
  {
    os_unfair_lock_unlock(v15 + 4);
  }
}

void Promise.reject(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for Promise.State(0, *(*v4 + 80), a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *&v4[*(v6 + 112)];
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v4 + 104);
  swift_beginAccess();
  (*(v8 + 16))(v13, &v4[v15], v7);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  (*(v8 + 8))(v13, v7);
  if (v6 == 2)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v16 = a1;
    (*(v8 + 40))(&v4[v15], v11, v7);
    swift_endAccess();
    swift_beginAccess();
    v17 = *(v4 + 3);
    *(v4 + 3) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    swift_getFunctionTypeMetadata1();
    sub_1BAF8EF28();
    sub_1BAF8EF18();
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v17 + 40;
      while (v19 < *(v17 + 16))
      {
        ++v19;
        v21 = *(v20 - 8);
        v23 = a1;

        v21(&v23);

        v20 += 16;
        if (v18 == v19)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }

  else
  {
    os_unfair_lock_unlock(v14 + 4);
  }
}

uint64_t Promise.race(timeout:queue:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BAF8E9A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = v29 - v9;
  v32 = sub_1BAF8E958();
  MEMORY[0x1EEE9AC00](v32);
  v33 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8F098();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAF8F078();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1BAF8E988();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = a1;
  }

  else
  {
    v19 = sub_1BAF4F388();
    v29[1] = "Storage";
    v29[2] = v19;
    sub_1BAF8E968();
    aBlock[0] = v16;
    v29[0] = sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF8F198();
    (*(v30 + 104))(v13, *MEMORY[0x1E69E8090], v31);
    v20 = sub_1BAF8F0B8();
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v20;
  }

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = *(v4 + 80);
  *(v22 + 24) = v21;
  aBlock[4] = sub_1BAF4F3D4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F60E8;
  _Block_copy(aBlock);
  v36 = v17;
  sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v23 = a1;

  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  sub_1BAF8E9D8();
  swift_allocObject();
  v24 = sub_1BAF8E9B8();

  *(v2 + *(*v2 + 120)) = v24;

  v25 = v34;
  sub_1BAF8E998();
  v26 = v35;
  sub_1BAF8E9F8();
  v27 = *(v6 + 8);
  v27(v25, v5);
  sub_1BAF8F088();

  return (v27)(v26, v5);
}

uint64_t sub_1BAF4EB9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for Promise.PromiseError(0, a2, v4, v5);
    swift_getWitnessTable();
    v6 = swift_allocError();
    Promise.reject(_:)(v6, v7, v8, v9);
  }

  return result;
}

char *Promise.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 104);
  v5 = type metadata accessor for Promise.State(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t sub_1BAF4ED30(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

char *sub_1BAF4EDF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36B78, &qword_1BAF96A50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAF4EF14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(qword_1EBC36B80, &qword_1BAF96A58);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAF4F018(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36B70, &qword_1BAF96A48);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAF4F124(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAF4F230(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36B58, &qword_1BAF96A30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1BAF4F388()
{
  result = qword_1EDBA2078;
  if (!qword_1EDBA2078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA2078);
  }

  return result;
}

uint64_t sub_1BAF4F3DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAF4F420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Promise.State(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAF4F520(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1BAF4F868();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BAF4F598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BAF4F6B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1BAF4F868()
{
  result = qword_1EDBA2068;
  if (!qword_1EDBA2068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBA2068);
  }

  return result;
}

void *sub_1BAF4F8E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1BAF2DB10(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BAF2DB10(&qword_1EBC36720, &unk_1BAF95558);
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1BAF4FA0C(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 48);
  _Block_copy(a2);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (!*(a1 + 40))
  {
LABEL_9:
    os_unfair_lock_unlock(v5 + 4);
    goto LABEL_10;
  }

  if (*(a1 + 40) != 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BAF4FC00;
    *(v9 + 24) = v4;
    swift_beginAccess();
    v10 = *(a1 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1BAF4F8E0(0, v10[2] + 1, 1, v10, &qword_1EBC36B68, &qword_1BAF96A40);
      *(a1 + 24) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1BAF4F8E0((v12 > 1), v13 + 1, 1, v10, &qword_1EBC36B68, &qword_1BAF96A40);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1BAF4FCC4;
    v14[5] = v9;
    *(a1 + 24) = v10;
    swift_endAccess();
    goto LABEL_9;
  }

  v6 = *(a1 + 32);
  v7 = v6;
  os_unfair_lock_unlock(v5 + 4);
  v8 = sub_1BAF8E4B8();
  (a2)[2](a2, v8);

  sub_1BAF4FC58(v6, 1);
LABEL_10:

  return a1;
}

void sub_1BAF4FC00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1BAF8E4B8();
  (*(v2 + 16))(v2, v3);
}

void sub_1BAF4FC58(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t QueueMessage.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t QueueMessage.type.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BAF4FD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  v18 = type metadata accessor for QueueMessage(0, a8, a10, a11);
  v19 = (a9 + *(v18 + 52));
  *v19 = a3;
  v19[1] = a4;
  a9[2] = a5;
  a9[3] = a6;
  v20 = *(*(a8 - 8) + 32);
  v21 = a9 + *(v18 + 48);

  return v20(v21, a7, a8);
}

uint64_t QueueMessage.init(type:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22 = a6;
  v23 = a3;
  v12 = sub_1BAF8E788();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8E778();
  v16 = sub_1BAF8E748();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  *a7 = v16;
  *(a7 + 1) = v18;
  *(a7 + 2) = a1;
  *(a7 + 3) = a2;
  v19 = type metadata accessor for QueueMessage(0, a4, a5, v22);
  result = (*(*(a4 - 8) + 32))(&a7[*(v19 + 48)], v23, a4);
  v21 = &a7[*(v19 + 52)];
  *v21 = 0;
  *(v21 + 1) = 0;
  return result;
}

uint64_t sub_1BAF4FF94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{

  v14 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v14);

  v22 = sub_1BAF8EE08();
  v23 = v15;
  sub_1BAF8ED58();

  *a8 = v22;
  *(a8 + 1) = v23;
  v16 = *(a1 + 3);
  *(a8 + 2) = *(a1 + 2);
  *(a8 + 3) = v16;
  v17 = type metadata accessor for QueueMessage(0, a5, a6, a7);
  (*(*(a5 - 8) + 16))(&a8[*(v17 + 48)], &a1[*(v17 + 48)], a5);
  v18 = *(*(v17 - 8) + 8);

  result = v18(a1, v17);
  v20 = &a8[*(v17 + 52)];
  *v20 = a2;
  *(v20 + 1) = a3;
  return result;
}

uint64_t sub_1BAF50134(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BAFA2CA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BAF8F4C8();

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

uint64_t sub_1BAF502D0(unsigned __int8 a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF50318(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x64616F6C796170;
  if (a1 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = 1701869940;
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

uint64_t sub_1BAF503BC(uint64_t a1)
{
  sub_1BAF8F5A8();
  sub_1BAF502A8(v3, *v1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF50418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAF50134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAF5044C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1BAF51258();
  *a2 = result;
  return result;
}

uint64_t sub_1BAF50480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BAF504D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QueueMessage.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v12[0] = a2[4];
  v12[1] = v4;
  type metadata accessor for QueueMessage.CodingKeys(255, v4, v5, v12[0]);
  swift_getWitnessTable();
  v6 = sub_1BAF8F468();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF8F648();
  v16 = 0;
  v10 = v12[3];
  sub_1BAF8F438();
  if (!v10)
  {
    v15 = 1;
    sub_1BAF8F438();
    v14 = 2;
    sub_1BAF8F458();
    v13 = 3;
    sub_1BAF8F418();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t QueueMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v39 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QueueMessage.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v43 = sub_1BAF8F408();
  v38 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v33 - v13;
  v40 = a2;
  v37 = a3;
  v15 = type metadata accessor for QueueMessage(0, a2, a3, a4);
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v33 - v16);
  sub_1BADC8524(a1, a1[3]);
  v42 = v14;
  v18 = v44;
  sub_1BAF8F628();
  if (v18)
  {
    return sub_1BADC5BE0(a1);
  }

  v19 = v40;
  v34 = v17;
  v20 = v38;
  v21 = v39;
  v48 = 0;
  v22 = sub_1BAF8F3D8();
  v23 = v34;
  *v34 = v22;
  v23[1] = v24;
  v44 = v24;
  v47 = 1;
  v23[2] = sub_1BAF8F3D8();
  v23[3] = v25;
  v46 = 2;
  sub_1BAF8F3F8();
  (*(v21 + 32))(v34 + *(v15 + 48), v41, v19);
  v45 = 3;
  v26 = sub_1BAF8F3B8();
  v28 = v27;
  (*(v20 + 8))(v42, v43);
  v29 = v34;
  v30 = (v34 + *(v15 + 52));
  *v30 = v26;
  v30[1] = v28;
  v31 = v35;
  (*(v35 + 16))(v36, v29, v15);
  sub_1BADC5BE0(a1);
  return (*(v31 + 8))(v29, v15);
}

uint64_t QueueMessage.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  sub_1BAF8F268();
  MEMORY[0x1BFB048C0](0x22203A65707954, 0xE700000000000000);
  MEMORY[0x1BFB048C0](v2[2], v2[3]);
  MEMORY[0x1BFB048C0](0x22203A6469202C22, 0xE800000000000000);
  MEMORY[0x1BFB048C0](*v2, v2[1]);
  MEMORY[0x1BFB048C0](0x6F6C796170202C22, 0xED000022203A6461);
  sub_1BAF8F498();
  MEMORY[0x1BFB048C0](34, 0xE100000000000000);
  return 0;
}

void sub_1BAF50CB4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1BAF51074();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BAF50D4C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 32) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1BAF50E9C(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((result + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 32) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1BAF51074()
{
  if (!qword_1EDBA20E0)
  {
    v0 = sub_1BAF8F0D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBA20E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for JWTError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JWTError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BAF51260()
{
  v0 = sub_1BAF8EC28();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_1EDBA3B98 = v2;
}

Swift::Bool __swiftcall NSProcessInfo.isRunningTestInternal()()
{
  if (qword_1EDBA28D8 != -1)
  {
    swift_once();
  }

  return byte_1EDBA3B98;
}

uint64_t sub_1BAF51320@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Lock.sync<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  return (*(a5 + 16))(a3, a5);
}

uint64_t UnfairLock.__allocating_init(options:)(_DWORD *a1)
{
  v2 = swift_allocObject();
  LODWORD(a1) = *a1;
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  *(v2 + 24) = (a1 & 1) << 16;
  return v2;
}

uint64_t UnfairLock.init(options:)(int *a1)
{
  v2 = *a1;
  v3 = swift_slowAlloc();
  *(v1 + 16) = v3;
  *v3 = 0;
  *(v1 + 24) = (v2 & 1) << 16;
  return v1;
}

uint64_t UnfairLock.__deallocating_deinit()
{
  MEMORY[0x1BFB06160](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

unint64_t sub_1BAF5161C()
{
  result = qword_1EBC36C88;
  if (!qword_1EBC36C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36C88);
  }

  return result;
}

unint64_t sub_1BAF51674()
{
  result = qword_1EBC36C90;
  if (!qword_1EBC36C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36C90);
  }

  return result;
}

unint64_t sub_1BAF516CC()
{
  result = qword_1EDBA3848;
  if (!qword_1EDBA3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3848);
  }

  return result;
}

unint64_t sub_1BAF51724()
{
  result = qword_1EDBA3840;
  if (!qword_1EDBA3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3840);
  }

  return result;
}

uint64_t DefaultPurposeConfigurationStore.configurationFor(_:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = result != 8502 && result != 8503;
  v3 = result != 8501 && v2;
  v4 = result != 103;
  if (result == 101)
  {
    v4 = 0;
  }

  if (result == 100)
  {
    v4 = 0;
  }

  if (result > 8500)
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

uint64_t WorkCoordinator.createAndRun(workerName:group:workData:requestorId:requestorData:flags:configClosure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v75 = a8;
  v73 = a7;
  v82 = a6;
  v80 = a5;
  v78 = a4;
  v77 = a3;
  v76 = a2;
  v74 = a1;
  v69 = type metadata accessor for WorkCommand(0);
  MEMORY[0x1EEE9AC00](v69);
  *&v79 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for WorkOrder(0);
  MEMORY[0x1EEE9AC00](v66);
  v81 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1BAF8E788();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAF8E728();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v68 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v61 - v21;
  v22 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  v72 = *a11;
  v71 = *(a11 + 8);
  v83 = *(v13 + 16);
  v28 = *(v18 + 56);
  v28(&v61 - v26, 1, 1, v17);
  type metadata accessor for WorkOrderBuilder(0);
  v29 = swift_allocObject();
  *(v29 + 3) = 0;
  *(v29 + 4) = 0;
  *(v29 + 2) = 0;
  v70 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v28(&v29[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v17);
  v30 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v29[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v31 = &v29[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v29[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v32 = 0;
  *(v32 + 1) = 0;
  v28(&v29[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v17);
  v33 = &v29[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v33 = 0;
  *(v33 + 1) = 0;
  v84 = v27;
  sub_1BAF32F64(v27, v25, &unk_1EBC36750, &qword_1BAF95590);
  if ((*(v18 + 48))(v25, 1, v17) == 1)
  {
    sub_1BAF32F04(v25, &unk_1EBC36750, &qword_1BAF95590);
    v34 = 1;
  }

  else
  {
    v62 = v30;
    v35 = v67;
    (*(v18 + 32))(v67, v25, v17);
    v36 = v68;
    sub_1BAF8E718();
    v37 = sub_1BAF8E688();
    v38 = *(v18 + 8);
    v38(v36, v17);
    v38(v35, v17);
    if ((v37 & 1) == 0)
    {

      v48 = 0;
LABEL_15:
      sub_1BAF32F04(v84, &unk_1EBC36750, &qword_1BAF95590);
      return v48;
    }

    v34 = 0;
    v30 = v62;
  }

  v29[v30] = v34;
  v39 = v82 >> 60;
  if (v82 >> 60 != 15)
  {
    v40 = v63;
    sub_1BAF8E778();
    v41 = sub_1BAF8E748();
    v43 = v42;
    (*(v64 + 8))(v40, v65);
    *(v29 + 2) = v41;
    *(v29 + 3) = v43;
  }

  v44 = v70;
  swift_beginAccess();
  sub_1BAF3B5C0(v84, &v29[v44]);
  swift_endAccess();
  v45 = v75;
  *v31 = v73;
  v31[1] = v45;
  *v32 = a9;
  *(v32 + 1) = a10;
  v46 = v72;
  if (v71)
  {
    v46 = 0;
  }

  *(v29 + 4) = v46;

  v47 = v81;
  sub_1BAF7184C(v74, v76, v77, v78, v81);
  v48 = *v47;
  sub_1BADC8524(v83 + 13, v83[16]);

  sub_1BAF553D0(v47);
  v49 = v39 > 0xE;
  v50 = v82;
  v51 = v80;
  v52 = v79;
  if (!v49)
  {
    v53 = &v47[*(v66 + 24)];
    v54 = *(v53 + 1);
    if (v54)
    {
      v55 = *v53;
      sub_1BADC8524(v83 + 18, v83[21]);
      sub_1BAF3B678(v51, v50);
      sub_1BAF5C160(v55, v54, v51, v50);
      sub_1BAF3B72C(v51, v50);
    }
  }

  v56 = swift_allocObject();
  *(v56 + 16) = v51;
  *(v56 + 24) = v50;
  v57 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v58 = (v52 + v57[12]);
  sub_1BAF4016C(v47, v52);
  *v58 = sub_1BAF40164;
  v58[1] = v56;
  sub_1BAF3B664(v51, v50);

  result = os_transaction_create();
  if (result)
  {
    v60 = (v52 + v57[20]);
    *(v52 + v57[16]) = result;
    *v60 = a12;
    v60[1] = a13;
    swift_storeEnumTagMultiPayload();
    sub_1BAEFD9BC(a12, a13);
    sub_1BAF36C9C(v52);

    sub_1BAF3B6CC(v52, type metadata accessor for WorkCommand);
    sub_1BAF3B6CC(v47, type metadata accessor for WorkOrder);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}