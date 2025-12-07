uint64_t type metadata accessor for SearchItem(uint64_t a1)
{
  result = qword_1EE2C4628;
  if (!qword_1EE2C4628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C21ACC(uint64_t a1)
{
  sub_1E5C21D70(319);
  if (v1 <= 0x3F)
  {
    sub_1E5C22184(319, qword_1EE2C46D8, &type metadata for SearchContentAssetLoadStatus, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E5C22184(319, &qword_1EE2C4050, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E5C221D4(319, &qword_1EE2C4918, MEMORY[0x1E6968848]);
        if (v4 <= 0x3F)
        {
          sub_1E5C22184(319, &qword_1EE2C4088, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1E5C22184(319, &unk_1EE2C4058, MEMORY[0x1E69E6810], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              sub_1E5C22184(319, qword_1EE2C4158, &type metadata for SearechContentMediaType, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                sub_1E5C221D4(319, qword_1EE2C42D0, type metadata accessor for SearchArtwork);
                if (v8 <= 0x3F)
                {
                  sub_1E5C221D4(319, &qword_1EE2C4910, MEMORY[0x1E6968FB0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1E5C9BAA0();
                    if (v10 <= 0x3F)
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

void sub_1E5C21D70(uint64_t a1)
{
  if (!qword_1EE2C4900)
  {
    type metadata accessor for SearchArtwork(255);
    sub_1E5C21FD4(&qword_1EE2C4340, type metadata accessor for SearchArtwork, &protocol conformance descriptor for SearchArtwork);
    v1 = sub_1E5C9BC60();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C4900);
    }
  }
}

uint64_t type metadata accessor for SearchArtwork(uint64_t a1)
{
  result = qword_1EE2C4310;
  if (!qword_1EE2C4310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C21E50(uint64_t a1)
{
  sub_1E5C21F38(319, &qword_1EE2C4908, MEMORY[0x1E699DB98]);
  if (v1 <= 0x3F)
  {
    sub_1E5C21F38(319, &qword_1EE2C4910, MEMORY[0x1E6968FB0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5C21F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5C9CE20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E5C21F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5C21FD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5C2201C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5C22184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E5C221D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E5C9CE20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B21EditorialContentStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t type metadata accessor for SearchState(uint64_t a1)
{
  result = qword_1EE2C44C0;
  if (!qword_1EE2C44C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C222A0(uint64_t a1)
{
  sub_1E5C9BBD0();
  if (v1 <= 0x3F)
  {
    sub_1E5C223F8(319);
    if (v2 <= 0x3F)
    {
      sub_1E5C22530();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B12ResultsStateO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1E5C223B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1E5C223F8(uint64_t a1)
{
  if (!qword_1EE2C4078)
  {
    type metadata accessor for SearchHistoryItem(255);
    v1 = sub_1E5C9CD00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C4078);
    }
  }
}

uint64_t type metadata accessor for SearchHistoryItem(uint64_t a1)
{
  result = qword_1EE2C48E8;
  if (!qword_1EE2C48E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B10HintsStateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E5C224B4(uint64_t a1)
{
  result = sub_1E5C9BB60();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E5C22530()
{
  if (!qword_1EE2C47E0[0])
  {
    v0 = sub_1E5C9CE20();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2C47E0);
    }
  }
}

uint64_t sub_1E5C22580()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C225C0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E18, &qword_1E5C9DD20);
  sub_1E5C9C290();
  sub_1E5C9C800();
  sub_1E5C9BFB0();
  sub_1E5C266CC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for SearchFilterPicker.FadingView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchFilterPicker.FadingView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E5C22740()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C2277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  v6 = sub_1E5C9BC20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1E5C22870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  result = sub_1E5C9BC20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1E5C22960(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F60, &qword_1E5C9E510);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F70, &qword_1E5C9E518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  sub_1E5C9BDB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  swift_getOpaqueTypeConformance2();
  sub_1E5C2CAD0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5C9C030();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C2CB54();
  sub_1E5C2CDCC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5C9C8F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C22D20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054030, &qword_1E5C9E6E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C22D88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1E5C9BBA0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v8 = (type metadata accessor for SearchView(0, v1, v2, v7) - 8);
  v9 = (v6 + *(*v8 + 80)) & ~*(*v8 + 80);
  (*(v4 + 8))(v0 + v5, v3);
  sub_1E5C277E8(*(v0 + v9), *(v0 + v9 + 8));
  v10 = v8[11];
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  v11 = sub_1E5C9BC20();
  (*(*(v11 - 8) + 8))(v0 + v9 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1E5C22F3C()
{
  v1 = sub_1E5C9BFE0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1E5C9BBA0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1E5C230D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5C9BBD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E5C23198(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5C9BBD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5C23254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E5C9BBA0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5C23314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E5C9BBA0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5C233D8@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E5C234BC()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1E5C23634()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for TVSearchableView(0, &v7) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  sub_1E5C48660(*v4, *(v4 + 8));

  (*(*(v1 - 8) + 8))(v4 + v3[16], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[17]);
  return swift_deallocObject();
}

uint64_t sub_1E5C2377C()
{
  v2 = *(v0 + 40);
  v7 = *(v0 + 16);
  v1 = v7;
  v8 = *(v0 + 24);
  v6 = v8;
  v9 = v2;
  v3 = (type metadata accessor for TVSearchableView(0, &v7) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  sub_1E5C48660(*v4, *(v4 + 8));

  (*(*(v1 - 8) + 8))(v4 + v3[16], v1);
  (*(*(v6 - 8) + 8))(v4 + v3[17]);

  return swift_deallocObject();
}

uint64_t sub_1E5C238EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5C9C090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E5C2391C(uint64_t *a1)
{
  sub_1E5C9C390();
  sub_1E5C9BFB0();
  sub_1E5C9C290();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C9C290();
  sub_1E5C9C800();
  sub_1E5C48438();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5C2CDCC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C23AF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0548B8, &qword_1E5CA13C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C23B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1E5C23B70()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C23BA8()
{
  v1 = (type metadata accessor for SearchHistoryItem(0) - 8);
  v2 = (*(*v1 + 80) + 120) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_1E5C9BB60();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5C23CE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C140();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C23DA8()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C23E68()
{
  v1 = (type metadata accessor for SearchHistoryItem(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_1E5C9BB60();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E5C23F50()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C24010()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C24160()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C24220()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C24300(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5C9BB60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5C243AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5C9BB60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5C24458(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1E5C9BAA0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5C24504(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1E5C9BAA0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5C245A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E68, &unk_1E5CA3390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E5C24674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E68, &unk_1E5CA3390);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E5C2474C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E5C9C120();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C247A0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5C9C160();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5C24900()
{
  v1 = type metadata accessor for SearchScopeFilters.ScopeButtons(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054860, &qword_1E5CA1298);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1E5C9C340();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v0 + v2, 1, v4))
    {
      (*(v5 + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  v6 = v3 + *(v1 + 24);

  if (*(v6 + 40))
  {
  }

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5C24AD4()
{
  v1 = type metadata accessor for SearchScopeFilters.ScopeCapsule(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054870, &qword_1E5CA4C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1E5C9BFA0();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  if (*(v0 + v2 + *(v1 + 24) + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E5C24D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[8];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[10]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[19];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[23];
      goto LABEL_5;
    }

    v18 = sub_1E5C9BAA0();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[24];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1E5C24F7C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555B8, &qword_1E5CA4F78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C0, &qword_1E5CA4F80);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555C8, &qword_1E5CA4F88);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[19];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[23];
    goto LABEL_5;
  }

  v18 = sub_1E5C9BAA0();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[24];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E5C251B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1E5C252F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0556F0, &qword_1E5CA54B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0555D0, &qword_1E5CA4F90);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1E5C25430()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C25478()
{
  v1 = *(type metadata accessor for SearchHint(0) - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);

  v3 = sub_1E5C9BBA0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E5C2559C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5C9C0C0();
  *a1 = result;
  return result;
}

void sub_1E5C25624(uint64_t a1, uint64_t *a2)
{
  sub_1E5C8B7C0();
  sub_1E5C9BB20();
  __break(1u);
}

uint64_t sub_1E5C256CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055768, &qword_1E5CA57E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055760, &qword_1E5CA57D8);
  sub_1E5C9BEF0();
  sub_1E5C27F74(&qword_1ED0557E0, &qword_1ED055760, &qword_1E5CA57D8, MEMORY[0x1E697CD20]);
  swift_getOpaqueTypeConformance2();
  sub_1E5C8B5C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5C257D4()
{

  return swift_deallocObject();
}

void *sub_1E5C25810@<X0>(void *a2@<X8>)
{
  result = sub_1E5C9CAD0();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E5C258D4(__int128 *a1)
{
  v1 = a1[1];
  v9 = *a1;
  v10 = v1;
  type metadata accessor for TVSearchableView(255, &v9);
  swift_getWitnessTable();
  sub_1E5C9BDB0();
  sub_1E5C9BFB0();
  v2 = sub_1E5C9BFB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  *&v9 = v2;
  *(&v9 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055AD0, &qword_1E5CA6890);
  *&v9 = v2;
  *(&v9 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_1E5C91B1C();
  *&v9 = OpaqueTypeMetadata2;
  *(&v9 + 1) = v5;
  *&v10 = OpaqueTypeConformance2;
  *(&v10 + 1) = v7;
  swift_getOpaqueTypeMetadata2();
  sub_1E5C9BFB0();
  sub_1E5C9BFB0();
  sub_1E5C9BFB0();
  *&v9 = OpaqueTypeMetadata2;
  *(&v9 + 1) = v5;
  *&v10 = OpaqueTypeConformance2;
  *(&v10 + 1) = v7;
  swift_getOpaqueTypeConformance2();
  sub_1E5C92110();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E5C25B40()
{
  v2 = *(v0 + 40);
  v12 = *(v0 + 16);
  v1 = v12;
  v13 = *(v0 + 24);
  v11 = v13;
  v14 = v2;
  v3 = (type metadata accessor for TVSearchView(0, &v12) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(type metadata accessor for SearchHint(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v0 + v4);
  sub_1E5C277E8(*v8, v8[1]);
  (*(*(v1 - 8) + 8))(v8 + v3[15], v1);
  (*(*(v11 - 8) + 8))(v8 + v3[16]);
  v9 = sub_1E5C9BBA0();
  (*(*(v9 - 8) + 8))(v0 + v7, v9);

  return swift_deallocObject();
}

uint64_t sub_1E5C25D54()
{
  MEMORY[0x1E693A1B0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1E5C25D8C()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C25DC4()
{

  return swift_deallocObject();
}

uint64_t sub_1E5C25E8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E48, qword_1E5C9DDD8);
  v5 = sub_1E5C27F74(&qword_1EE2C40A0, &qword_1ED053E48, qword_1E5C9DDD8, MEMORY[0x1E6999B78]);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t SearchLandingView.init(store:canvasView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a7 = sub_1E5C25FF4;
  *(a7 + 8) = v13;
  *(a7 + 16) = 0;
  type metadata accessor for SearchLandingView(0, a5, a6, v14);

  a3(v15);
}

uint64_t SearchLandingView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v47 = *(a1 - 8);
  v54 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E18, &qword_1E5C9DD20);
  v6 = *(a1 + 16);
  sub_1E5C9C290();
  v7 = sub_1E5C9C800();
  v51 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v35 - v8;
  v42 = v7;
  v9 = sub_1E5C9BFB0();
  v49 = v9;
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v35 - v10;
  v11 = sub_1E5C266CC();
  v12 = *(a1 + 24);
  v66 = v11;
  v67 = v12;
  WitnessTable = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v63 = v41;
  v64 = MEMORY[0x1E69805D0];
  v48 = swift_getWitnessTable();
  v59 = v9;
  v60 = MEMORY[0x1E69E6370];
  v61 = v48;
  v62 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v43 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v35 - v15;
  v39 = v6;
  v55 = v6;
  v56 = v12;
  v38 = v12;
  v36 = v2;
  v57 = v2;
  sub_1E5C9C7F0();
  v16 = v47;
  v40 = *(v47 + 16);
  v37 = v5;
  v40(v5, v2, a1);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v12;
  v19 = *(v16 + 32);
  v19(v18 + v17, v5, a1);
  v20 = v44;
  v21 = v42;
  v22 = v35;
  sub_1E5C9C730();

  (*(v51 + 8))(v22, v21);
  v23 = v36;
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v58 = v59;
  v24 = v37;
  v40(v37, v23, a1);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v39;
  *(v25 + 24) = v26;
  v19(v25 + v17, v24, a1);
  v27 = v43;
  v28 = v49;
  sub_1E5C9C750();

  (*(v52 + 8))(v20, v28);
  v29 = v46;
  v30 = *(v46 + 16);
  v31 = v45;
  v32 = OpaqueTypeMetadata2;
  v30(v45, v27, OpaqueTypeMetadata2);
  v33 = *(v29 + 8);
  v33(v27, v32);
  v30(v53, v31, v32);
  return (v33)(v31, v32);
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

unint64_t sub_1E5C266CC()
{
  result = qword_1ED053E20;
  if (!qword_1ED053E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E18, &qword_1E5C9DD20);
    sub_1E5C27F74(&qword_1ED053E28, &qword_1ED053E30, &qword_1E5C9DD28, MEMORY[0x1E697C7C8]);
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053E20);
  }

  return result;
}

uint64_t sub_1E5C267B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v58 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E40, &qword_1E5C9DD30);
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v53 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E50, &qword_1E5C9DDF0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E18, &qword_1E5C9DD20);
  MEMORY[0x1EEE9AC00](v16);
  v64 = v53 - v17;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E30, &qword_1E5C9DD28);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v53 - v18;
  v65 = v16;
  v19 = sub_1E5C9C290();
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v53 - v20;
  v68 = a3;
  v23 = type metadata accessor for SearchLandingView(0, a2, a3, v22);
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  if (v74)
  {
    if (v74 == 1)
    {
      sub_1E5C27EC4(v72, v73, 1u);
      v24 = *(v23 + 36);
      v25 = v58;
      v26 = *(v58 + 16);
      v26(v11, a1 + v24, a2);
      v26(v9, v11, a2);
      v27 = sub_1E5C266CC();
      v28 = v68;
      sub_1E5C45EE4(v9, v65, a2, v27, v68);
      v29 = *(v25 + 8);
      v29(v9, a2);
      v29(v11, a2);
    }

    else
    {
      sub_1E5C9BE00();
      v41 = v57;
      (v57[2])(v63, v14, v12);
      swift_storeEnumTagMultiPayload();
      sub_1E5C27F74(&qword_1ED053E28, &qword_1ED053E30, &qword_1E5C9DD28, MEMORY[0x1E697C7C8]);
      sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30, MEMORY[0x1E697BF38]);
      v42 = v64;
      sub_1E5C9C280();
      v43 = sub_1E5C266CC();
      v44 = v12;
      v28 = v68;
      sub_1E5C45DEC(v42, v65, a2, v43, v68);
      sub_1E5C27EE4(v42);
      (v41[1])(v14, v44);
    }
  }

  else
  {
    v57 = v53;
    v30 = MEMORY[0x1EEE9AC00](v72);
    v56 = &v53[-6];
    v58 = v12;
    v28 = v68;
    v31 = MEMORY[0x1EEE9AC00](v30);
    v53[-6] = a2;
    v53[-5] = v28;
    v54 = MEMORY[0x1EEE9AC00](v31);
    v55 = v32;
    v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E58, &qword_1E5C9DE18);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
    v34 = sub_1E5C27F74(&qword_1ED053E68, &qword_1ED053E58, &qword_1E5C9DE18, MEMORY[0x1E6981F48]);
    v35 = sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20, MEMORY[0x1E697D680]);
    v51 = v34;
    v52 = v35;
    v49 = v33;
    v50 = MEMORY[0x1E6981138];
    v36 = v59;
    sub_1E5C9C300();
    sub_1E5C27EC4(v54, v55, 0);
    v37 = v60;
    v38 = v62;
    (*(v60 + 16))(v63, v36, v62);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED053E28, &qword_1ED053E30, &qword_1E5C9DD28, MEMORY[0x1E697C7C8]);
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30, MEMORY[0x1E697BF38]);
    v39 = v64;
    sub_1E5C9C280();
    v40 = sub_1E5C266CC();
    sub_1E5C45DEC(v39, v65, a2, v40, v28);
    sub_1E5C27EE4(v39);
    (*(v37 + 8))(v36, v38);
  }

  v45 = v69;
  v47 = v66;
  v46 = v67;
  v70 = sub_1E5C266CC();
  v71 = v28;
  swift_getWitnessTable();
  (*(v47 + 16))(v45, v21, v46);
  return (*(v47 + 8))(v21, v46);
}

uint64_t sub_1E5C26FEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  type metadata accessor for SearchLandingView(0, a1, a2, v10);
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  result = sub_1E5C9C540();
  *a3 = result;
  *(a3 + 8) = v12;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_1E5C271BC@<X0>(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  type metadata accessor for SearchLandingView(0, a3, a4, v12);
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v13 = sub_1E5C9C540();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v28 == 1)
  {
    sub_1E5C28160();

    v20 = sub_1E5C9C580();
    v21 = v24;
    v23 = v25;
    v22 = v26 & 1;
    sub_1E5C281B4(v20, v24, v26 & 1);
  }

  sub_1E5C281B4(v13, v15, v17 & 1);

  sub_1E5C281C4(v20, v21, v22, v23);
  sub_1E5C28208(v20, v21, v22, v23);
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v17 & 1;
  *(a5 + 24) = v19;
  *(a5 + 32) = v20;
  *(a5 + 40) = v21;
  *(a5 + 48) = v22;
  *(a5 + 56) = v23;
  sub_1E5C28208(v20, v21, v22, v23);
  sub_1E5C2824C(v13, v15, v17 & 1);
}

uint64_t sub_1E5C27494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a5;
  v6 = type metadata accessor for SearchLandingView(0, a2, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = sub_1E5C9BBD0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E5C9CC20();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1E5C9CC10();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1E5C25E8C();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v22 = sub_1E5C9CC50();
  v23 = v14;
  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = v19;
  *(v16 + 24) = v17;
  (*(v7 + 32))(v16 + v15, v9, v6);
  sub_1E5C28160();
  return sub_1E5C9C8D0();
}

uint64_t sub_1E5C27738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchLandingView(0, a2, a3, a4);
  sub_1E5C25E8C();
  sub_1E5C9CAF0();
}

uint64_t sub_1E5C2778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchLandingView(0, a2, a3, a4);
  sub_1E5C25E8C();
  sub_1E5C9CAF0();
}

uint64_t sub_1E5C27808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5C9CA30();
  sub_1E5C9BED0();
}

uint64_t sub_1E5C278E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchLandingView(0, a2, a3, a4);
  sub_1E5C25E8C();
  sub_1E5C9CAF0();
}

void sub_1E5C27950(uint64_t a1)
{
  sub_1E5C27DB8(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5C279D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E5C27B5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[16] = 0;
    *a1 = a2 - 255;
    *(a1 + 1) = 0;
  }

  else
  {
    a1[16] = -a2;
  }
}

void sub_1E5C27DB8(uint64_t a1)
{
  if (!qword_1EE2C40D0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053E48, qword_1E5C9DDD8);
    sub_1E5C27F74(&qword_1EE2C40A0, &qword_1ED053E48, qword_1E5C9DDD8, MEMORY[0x1E6999B78]);
    v1 = sub_1E5C9BDF0();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2C40D0);
    }
  }
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

uint64_t sub_1E5C27EC4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t sub_1E5C27EE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E18, &qword_1E5C9DD20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C27F74(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_13Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SearchLandingView(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  sub_1E5C277E8(*(v4 + v7), *(v4 + v7 + 8));
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[11], v5);

  return swift_deallocObject();
}

uint64_t sub_1E5C280C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SearchLandingView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

unint64_t sub_1E5C28160()
{
  result = qword_1ED053E78;
  if (!qword_1ED053E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053E78);
  }

  return result;
}

uint64_t sub_1E5C281B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5C281C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E5C281B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E5C28208(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E5C2824C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E5C2824C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5C282D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C282F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1E5C28344(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void SearchLayout.init(historyItemLeadingPadding:historyListHorizontalPadding:suggestionLeadingPadding:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

double static SearchLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = 4.0;
  *a1 = xmmword_1E5C9DEE0;
  *(a1 + 16) = 0x4018000000000000;
  return result;
}

uint64_t sub_1E5C283E0()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C28428(uint64_t a1)
{
  v2 = *v1;
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](v2);
  return sub_1E5C9D110();
}

unint64_t sub_1E5C2846C()
{
  v1 = 0xD000000000000018;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001CLL;
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

uint64_t sub_1E5C284C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C2903C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C28504(uint64_t a1)
{
  v2 = sub_1E5C287AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C28540(uint64_t a1)
{
  v2 = sub_1E5C287AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E98, &qword_1E5C9DEF0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C287AC();
  sub_1E5C9D130();
  v14 = v9;
  v13 = 0;
  sub_1E5C28800();
  sub_1E5C9D030();
  if (!v2)
  {
    v14 = v8;
    v13 = 1;
    sub_1E5C9D030();
    v14 = v10;
    v13 = 2;
    sub_1E5C9D030();
  }

  return (*(v5 + 8))(v7, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E5C287AC()
{
  result = qword_1ED053EA0;
  if (!qword_1ED053EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EA0);
  }

  return result;
}

unint64_t sub_1E5C28800()
{
  result = qword_1ED053EA8;
  if (!qword_1ED053EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EA8);
  }

  return result;
}

uint64_t SearchLayout.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053EB0, &qword_1E5C9DEF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C287AC();
  sub_1E5C9D120();
  if (!v2)
  {
    v14 = 0;
    sub_1E5C28ABC();
    sub_1E5C9CFA0();
    v9 = v15;
    v14 = 1;
    sub_1E5C9CFA0();
    v11 = v15;
    v14 = 2;
    sub_1E5C9CFA0();
    (*(v6 + 8))(v8, v5);
    v12 = v15;
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t sub_1E5C28ABC()
{
  result = qword_1ED053EB8;
  if (!qword_1ED053EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EB8);
  }

  return result;
}

uint64_t SearchLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E6939A10](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E6939A10](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1E6939A10](*&v5);
}

uint64_t SearchLayout.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchLayout.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C28C04()
{
  sub_1E5C9D0D0();
  SearchLayout.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C28C5C(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchLayout.hash(into:)();
  return sub_1E5C9D110();
}

unint64_t sub_1E5C28CE0()
{
  result = qword_1ED053EC0;
  if (!qword_1ED053EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EC0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchLayout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SearchLayout(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SearchLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5C28F38()
{
  result = qword_1ED053EC8;
  if (!qword_1ED053EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EC8);
  }

  return result;
}

unint64_t sub_1E5C28F90()
{
  result = qword_1ED053ED0;
  if (!qword_1ED053ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053ED0);
  }

  return result;
}

unint64_t sub_1E5C28FE8()
{
  result = qword_1ED053ED8;
  if (!qword_1ED053ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053ED8);
  }

  return result;
}

uint64_t sub_1E5C2903C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001E5CA7B90 == a2;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E5CA7BB0 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5CA7BD0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t SearchContentReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v5 = 0x7473696C79616C70;
    }

    if (a1 <= 1u)
    {
      return 0x6169726F74696465;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x2D72656E69617274;
    v2 = 0x65486C6C65737075;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v3 = 0x72656E69617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5C29290(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SearchContentReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SearchContentReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5C9D060();
  }

  return v8 & 1;
}

unint64_t sub_1E5C29318@<X0>(Swift::String *a1@<X0>, FitnessSearch::SearchContentReferenceType_optional *a2@<X8>)
{
  result = _s13FitnessSearch0B20ContentReferenceTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1E5C29348@<X0>(uint64_t *a1@<X8>)
{
  result = SearchContentReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E5C29424()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  SearchContentReferenceType.rawValue.getter(v1);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C29488(uint64_t a1)
{
  SearchContentReferenceType.rawValue.getter(*v1);
  sub_1E5C9CC60();
}

uint64_t sub_1E5C294DC(uint64_t a1)
{
  v2 = *v1;
  sub_1E5C9D0D0();
  SearchContentReferenceType.rawValue.getter(v2);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

unint64_t _s13FitnessSearch0B20ContentReferenceTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5C9CF10();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5C2958C()
{
  result = qword_1ED053EE0;
  if (!qword_1ED053EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchContentReferenceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchContentReferenceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5C29730()
{
  result = qword_1ED053EE8;
  if (!qword_1ED053EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EE8);
  }

  return result;
}

uint64_t sub_1E5C29784()
{
  v0 = sub_1E5C9BD40();
  __swift_allocate_value_buffer(v0, qword_1ED065C70);
  __swift_project_value_buffer(v0, qword_1ED065C70);
  return sub_1E5C9BD30();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t SearchResultScope.datasetIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultScope.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchResultScope.name.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void __swiftcall SearchResultScope.init(identifier:name:results:datasetIdentifier:index:)(FitnessSearch::SearchResultScope *__return_ptr retstr, Swift::String identifier, Swift::String name, Swift::OpaquePointer results, Swift::String_optional datasetIdentifier, Swift::Int index)
{
  retstr->datasetIdentifier = datasetIdentifier;
  retstr->identifier = identifier;
  retstr->index = index;
  retstr->name = name;
  retstr->results = results;
}

unint64_t sub_1E5C29948()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7865646E69;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x73746C75736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5C299E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C2AEBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C29A14(uint64_t a1)
{
  v2 = sub_1E5C29D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C29A50(uint64_t a1)
{
  v2 = sub_1E5C29D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C29A8C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SearchResultScope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053EF0, "Ҥ");
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[4] = v1[3];
  v13[5] = v7;
  v8 = v1[4];
  v13[2] = v1[5];
  v13[3] = v8;
  v9 = v1[6];
  v13[0] = v1[7];
  v13[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C29D30();
  sub_1E5C9D130();
  v18 = 0;
  v10 = v13[6];
  sub_1E5C9CFD0();
  if (!v10)
  {
    v11 = v13[0];
    v17 = 1;
    sub_1E5C9D000();
    v16 = 2;
    sub_1E5C9D020();
    v15 = 3;
    sub_1E5C9D000();
    v13[7] = v11;
    v14 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C2A11C(&qword_1ED053F08, &qword_1ED053F10, &protocol conformance descriptor for SearchContentTile, MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5C29D30()
{
  result = qword_1ED053EF8;
  if (!qword_1ED053EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053EF8);
  }

  return result;
}

uint64_t SearchResultScope.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F18, &qword_1E5C9E240);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C29D30();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_1E5C9CF40();
  v29 = v10;
  LOBYTE(v34[0]) = 1;
  v11 = sub_1E5C9CF70();
  v28 = v12;
  v26 = v11;
  LOBYTE(v34[0]) = 2;
  v25 = sub_1E5C9CF90();
  LOBYTE(v34[0]) = 3;
  v24 = sub_1E5C9CF70();
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
  v35[0] = 4;
  sub_1E5C2A11C(&qword_1ED053F20, &qword_1ED053F28, &protocol conformance descriptor for SearchContentTile, MEMORY[0x1E69E6330]);
  sub_1E5C9CFA0();
  (*(v6 + 8))(v8, v5);
  v23 = v36;
  v15 = v28;
  v14 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v17 = v26;
  v16 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v18 = v25;
  *&v32 = v25;
  *(&v32 + 1) = v24;
  *&v33 = v27;
  *(&v33 + 1) = v36;
  v19 = v31;
  *a2 = v30;
  a2[1] = v19;
  v20 = v33;
  a2[2] = v32;
  a2[3] = v20;
  sub_1E5C2A1B8(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v9;
  v34[1] = v14;
  v34[2] = v17;
  v34[3] = v15;
  v34[4] = v18;
  v34[5] = v24;
  v34[6] = v16;
  v34[7] = v23;
  return sub_1E5C2A1F0(v34);
}

uint64_t sub_1E5C2A11C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C2B52C(a2, type metadata accessor for SearchContentTile, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SearchResultScope.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  if (v1[1])
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v3);
  sub_1E5C9CC60();

  return sub_1E5C2A6D0(a1, v4);
}

uint64_t SearchResultScope.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[4];
  v3 = v0[7];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v1)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v2);
  sub_1E5C9CC60();
  sub_1E5C2A6D0(v5, v3);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C2A3F0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[7];
  if (v1[1])
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v3);
  sub_1E5C9CC60();

  return sub_1E5C2A6D0(a1, v4);
}

uint64_t sub_1E5C2A4B8(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[4];
  v4 = v1[7];
  sub_1E5C9D0D0();
  sub_1E5C9D0F0();
  if (v2)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](v3);
  sub_1E5C9CC60();
  sub_1E5C2A6D0(v6, v4);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C2A580(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v4);
  if (v4)
  {
    v6 = a2 + 48;
    do
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 40);
      if (*(v6 - 8))
      {
        sub_1E5C9D0F0();

        sub_1E5C9CC60();
      }

      else
      {
        sub_1E5C9D0F0();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v7);
      sub_1E5C9CC60();
      sub_1E5C2A6D0(a1, v8);

      v6 += 64;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1E5C2A6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchContentTile(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v13);
  if (v13)
  {
    v15 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    v25 = v12;
    v26 = v6;
    v24 = v16;
    while (1)
    {
      sub_1E5C2B574(v15, v12, type metadata accessor for SearchContentTile);
      sub_1E5C2B574(v12, v10, type metadata accessor for SearchContentTile);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v17 = v27;
      sub_1E5C2B5DC(v10, v27);
      MEMORY[0x1E69399F0](1);
      SearchItem.hash(into:)(a1);
      sub_1E5C2B640(v17, type metadata accessor for SearchItem);
LABEL_4:
      result = sub_1E5C2B640(v12, type metadata accessor for SearchContentTile);
      v15 += v16;
      if (!--v13)
      {
        return result;
      }
    }

    v18 = v10[1];
    v19 = v10[3];
    v20 = v10[5];
    v32 = v10[6];
    v22 = v10[7];
    v21 = v10[8];
    v28 = v20;
    v29 = v22;
    v30 = v21;
    MEMORY[0x1E69399F0](0);
    v33 = v18;
    sub_1E5C9CC60();
    v31 = v19;
    sub_1E5C9CC60();
    sub_1E5C9CC60();

    v12 = v25;
    v16 = v24;
    v23 = v30;
    if (v32)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C9CC60();
      if (v23)
      {
LABEL_8:
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
LABEL_11:

        goto LABEL_4;
      }
    }

    else
    {
      MEMORY[0x1E69399F0](0);
      if (v23)
      {
        goto LABEL_8;
      }
    }

    sub_1E5C9D0F0();
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1E5C2AB00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SearchHint(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v7);
  if (v7)
  {
    v9 = &v6[*(v3 + 20)];
    v12 = *(v3 + 28);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1E5C2B574(v10, v6, type metadata accessor for SearchHint);
      sub_1E5C9BBA0();
      sub_1E5C2B52C(&qword_1ED053F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1E5C9CBB0();
      if (*(v9 + 1))
      {
        sub_1E5C9D0F0();
        sub_1E5C9CC60();
      }

      else
      {
        sub_1E5C9D0F0();
      }

      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](*&v6[v12]);
      sub_1E5C9CC60();
      result = sub_1E5C2B640(v6, type metadata accessor for SearchHint);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1E5C2AD0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingSectionDescriptor(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1E69399F0](v8);
  if (v8)
  {
    v10 = *(v4 + 28);
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1E5C2B574(v11, v7, type metadata accessor for SearchLandingSectionDescriptor);
      sub_1E5C9CC60();
      MEMORY[0x1E69399F0](v7[16]);
      sub_1E5C9BAA0();
      sub_1E5C2B52C(&qword_1ED053F50, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
      sub_1E5C9CBB0();
      sub_1E5C2A6D0(a1, *&v7[v10]);
      result = sub_1E5C2B640(v7, type metadata accessor for SearchLandingSectionDescriptor);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1E5C2AEBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E5C9D060();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t _s13FitnessSearch0B11ResultScopeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v27 = a2[6];
      v28 = a2[7];
      v17 = a1[7];
      v18 = a1[4];
      v19 = sub_1E5C9D060();
      v5 = v18;
      v9 = v17;
      v14 = v27;
      v16 = v28;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 == v11 && v6 == v13)
  {
    if (v5 != v12)
    {
      return 0;
    }
  }

  else
  {
    v20 = v16;
    v21 = v9;
    v22 = v14;
    v23 = v5;
    if ((sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }

    v14 = v22;
    v9 = v21;
    v16 = v20;
    if (v23 != v12)
    {
      return 0;
    }
  }

  if (v8 != v15 || v7 != v14)
  {
    v24 = v9;
    v25 = sub_1E5C9D060();
    v9 = v24;
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1E5C773E4(v9, v16);
}

unint64_t sub_1E5C2B20C()
{
  result = qword_1ED053F30;
  if (!qword_1ED053F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F30);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5C2B274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchResultScope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchResultScope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C2B428()
{
  result = qword_1ED053F38;
  if (!qword_1ED053F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F38);
  }

  return result;
}

unint64_t sub_1E5C2B480()
{
  result = qword_1ED053F40;
  if (!qword_1ED053F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F40);
  }

  return result;
}

unint64_t sub_1E5C2B4D8()
{
  result = qword_1ED053F48;
  if (!qword_1ED053F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F48);
  }

  return result;
}

uint64_t sub_1E5C2B52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5C2B574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C2B5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C2B640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SearchResultsState.datasetIdentifier.getter()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t SearchResultsState.term.getter()
{
  if (*(v0 + 56) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 24);

  return v1;
}

void sub_1E5C2B77C(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_setContentScrollView_forEdge_, a1, a2);
  v5 = [v2 parentViewController];
  [v5 setContentScrollView:a1 forEdge:a2];
}

void sub_1E5C2B804(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = a1;
  sub_1E5C2B77C(a3, a4);
}

uint64_t sub_1E5C2B878(uint64_t a1)
{
  v3 = sub_1E5C2BC2C(a1);
  (*(*(*(v1 + qword_1EE2C53A0) - 8) + 8))(a1);
  return v3;
}

void *sub_1E5C2B928(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE2C53A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = sub_1E5C9C230();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_1E5C2BA60(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E5C2BAF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E5C2BB44(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - v1);
  return sub_1E5C9C250();
}

uint64_t sub_1E5C2BC60(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E5C9CA70();
}

uint64_t sub_1E5C2BE30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FF0, qword_1E5C9E5D0);
  v5 = sub_1E5C27F74(&qword_1EE2C4098, &qword_1ED053FF0, qword_1E5C9E5D0, MEMORY[0x1E6999B78]);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t sub_1E5C2BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  return sub_1E5C9BC00();
}

uint64_t sub_1E5C2BF2C(uint64_t a1)
{
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  sub_1E5C9BC20();
  sub_1E5C9BC10();
  return v2;
}

uint64_t sub_1E5C2BF98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054058, &qword_1E5C9E6F8);
  sub_1E5C9C860();
  return v2;
}

uint64_t SearchView.init(store:resultsView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a7 + *(type metadata accessor for SearchView(0, a5, a6, a4) + 40);
  sub_1E5C9C850();
  *v13 = v16;
  *(v13 + 8) = v17;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_1E5C25FF4;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  return sub_1E5C2BED0(a3, a4, a5);
}

uint64_t sub_1E5C2C154(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v4);
}

uint64_t sub_1E5C2C1FC(uint64_t a1)
{
  v2 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  sub_1E5C30EF0(a1, v4, type metadata accessor for SearchHistoryItem);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v4);
}

uint64_t SearchView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v64 = a2;
  v62 = *(a1 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F60, &qword_1E5C9E510);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F70, &qword_1E5C9E518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  v68 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  v4 = sub_1E5C9BDB0();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E69E6370];
  *&v84 = v4;
  *(&v84 + 1) = MEMORY[0x1E69E6370];
  v7 = MEMORY[0x1E69E6388];
  *&v85 = WitnessTable;
  *(&v85 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  *&v84 = v4;
  *(&v84 + 1) = v6;
  *&v85 = WitnessTable;
  *(&v85 + 1) = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_1E5C2CAD0();
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = v9;
  v65 = v11;
  v66 = v9;
  *&v85 = OpaqueTypeConformance2;
  *(&v85 + 1) = v11;
  v12 = v11;
  v67 = MEMORY[0x1E6981448];
  swift_getOpaqueTypeMetadata2();
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = v9;
  *&v85 = OpaqueTypeConformance2;
  *(&v85 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  v13 = sub_1E5C9C030();
  v14 = swift_getWitnessTable();
  *&v84 = v13;
  *(&v84 + 1) = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v15 = sub_1E5C9CA60();
  v16 = swift_getWitnessTable();
  *&v84 = v15;
  *(&v84 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1E5C9C290();
  v17 = sub_1E5C9C290();
  v18 = sub_1E5C2CB54();
  v19 = sub_1E5C2CDCC();
  *&v84 = v15;
  *(&v84 + 1) = v16;
  v20 = swift_getOpaqueTypeConformance2();
  v82 = v19;
  v83 = v20;
  v21 = swift_getWitnessTable();
  v80 = v18;
  v81 = v21;
  v53 = v17;
  v52 = swift_getWitnessTable();
  v22 = sub_1E5C9C8F0();
  v54 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - v23;
  v25 = swift_getWitnessTable();
  *&v84 = v22;
  *(&v84 + 1) = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v58 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v50 = &v49 - v27;
  *&v84 = v22;
  *(&v84 + 1) = v25;
  v55 = swift_getOpaqueTypeConformance2();
  *&v84 = v26;
  *(&v84 + 1) = v66;
  *&v85 = v55;
  *(&v85 + 1) = v65;
  v28 = swift_getOpaqueTypeMetadata2();
  v57 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v56 = &v49 - v32;
  v34 = v59;
  v33 = v60;
  v51 = *(v59 + 24);
  v69 = v68;
  v70 = v51;
  v71 = v60;
  sub_1E5C9C200();
  sub_1E5C9C8E0();
  sub_1E5C9C590();
  (*(v54 + 8))(v24, v22);
  v35 = v33;
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v72 = v76;
  v73 = v77;
  v74 = v78;
  v75 = v79;
  v37 = v61;
  v36 = v62;
  (*(v62 + 16))(v61, v35, v34);
  v38 = v36;
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v51;
  *(v40 + 16) = v68;
  *(v40 + 24) = v41;
  (*(v38 + 32))(v40 + v39, v37, v34);
  v43 = v65;
  v42 = v66;
  v44 = v55;
  v45 = v50;
  sub_1E5C9C750();

  v84 = v72;
  v85 = v73;
  v86 = v74;
  v87 = v75;
  sub_1E5C3177C(&v84, &qword_1ED053F80, &qword_1E5C9E528);
  (*(v58 + 8))(v45, v26);
  *&v76 = v26;
  *(&v76 + 1) = v42;
  *&v77 = v44;
  *(&v77 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v56;
  sub_1E5C28390();
  v47 = *(v57 + 8);
  v47(v31, v28);
  sub_1E5C28390();
  return (v47)(v46, v28);
}

unint64_t sub_1E5C2CAD0()
{
  result = qword_1ED053F88;
  if (!qword_1ED053F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
    sub_1E5C2B20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F88);
  }

  return result;
}

unint64_t sub_1E5C2CB54()
{
  result = qword_1ED053F90;
  if (!qword_1ED053F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F60, &qword_1E5C9E510);
    sub_1E5C2CC0C();
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F90);
  }

  return result;
}

unint64_t sub_1E5C2CC0C()
{
  result = qword_1ED053F98;
  if (!qword_1ED053F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C2CC98();
    sub_1E5C2CD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F98);
  }

  return result;
}

unint64_t sub_1E5C2CC98()
{
  result = qword_1ED053FA8;
  if (!qword_1ED053FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053FB0, &qword_1E5C9E538);
    sub_1E5C2CD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FA8);
  }

  return result;
}

unint64_t sub_1E5C2CD24()
{
  result = qword_1ED053FB8;
  if (!qword_1ED053FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FB8);
  }

  return result;
}

unint64_t sub_1E5C2CD78()
{
  result = qword_1ED053FC0;
  if (!qword_1ED053FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FC0);
  }

  return result;
}

unint64_t sub_1E5C2CDCC()
{
  result = qword_1ED053FC8;
  if (!qword_1ED053FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F68, &unk_1E5CA11D0);
    v1 = MEMORY[0x1E697C7C8];
    sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540, MEMORY[0x1E697C7C8]);
    sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053FC8);
  }

  return result;
}

uint64_t sub_1E5C2CEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v160 = a2;
  v161 = a3;
  v150 = a1;
  v159 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F70, &qword_1E5C9E518);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  sub_1E5C9BDB0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v5 = sub_1E5C2CAD0();
  swift_getOpaqueTypeMetadata2();
  *&v189 = OpaqueTypeConformance2;
  *(&v189 + 1) = v5;
  swift_getOpaqueTypeConformance2();
  sub_1E5C9C030();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v6 = sub_1E5C9CA60();
  WitnessTable = swift_getWitnessTable();
  v158 = v6;
  *&v188 = v6;
  *(&v188 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v133 = *(OpaqueTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v131 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v130 - v10;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FE8, &unk_1E5CA11E0);
  v130 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v134 = &v130 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FF8, &qword_1E5C9E5E8);
  MEMORY[0x1EEE9AC00](v137);
  v138 = &v130 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F68, &unk_1E5CA11D0);
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v130 - v14;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FD8, &qword_1E5C9E540);
  v135 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v142 = (&v130 - v15);
  v143 = v13;
  v145 = OpaqueTypeMetadata2;
  v16 = sub_1E5C9C290();
  v147 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  *&v146 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v144 = &v130 - v19;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E40, &qword_1E5C9DD30);
  v20 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v22 = &v130 - v21;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054000, &qword_1E5C9E5F0);
  MEMORY[0x1EEE9AC00](v148);
  v24 = &v130 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F60, &qword_1E5C9E510);
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v130 - v26;
  v28 = type metadata accessor for SearchView(0, v160, v161, v27);
  v136 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v130 - v29;
  v152 = v25;
  v156 = v16;
  v31 = sub_1E5C9C290();
  v154 = *(v31 - 8);
  v155 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v153 = &v130 - v32;
  v33 = v150;
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v212 = v209;
  *v213 = v210[0];
  *&v213[9] = *(v210 + 9);
  v211 = v208;
  if (!BYTE8(v210[1]))
  {
    sub_1E5C30CAC(&v211);
    sub_1E5C9BE00();
    v49 = v20;
    (*(v20 + 16))(v24, v22, v151);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C2CC0C();
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30, MEMORY[0x1E697BF38]);
    v50 = v149;
    sub_1E5C9C280();
    v51 = sub_1E5C2CB54();
    v52 = sub_1E5C2CDCC();
    v46 = WitnessTable;
    v45 = v158;
    *&v188 = v158;
    *(&v188 + 1) = WitnessTable;
    v53 = swift_getOpaqueTypeConformance2();
    v200 = v52;
    v201 = v53;
    v54 = v156;
    v55 = swift_getWitnessTable();
    v56 = v153;
    sub_1E5C45DEC(v50, v152, v54, v51, v55);
    sub_1E5C3177C(v50, &qword_1ED053F60, &qword_1E5C9E510);
    (*(v49 + 8))(v22, v151);
LABEL_17:
    v109 = v155;
    goto LABEL_20;
  }

  if (BYTE8(v210[1]) != 1)
  {
    v57 = v33;
    sub_1E5C2BE30();
    swift_getKeyPath();
    sub_1E5C9CAD0();

    v58 = v198;
    v59 = v199;

    v60 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v60 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v147 = v185;
      if (v185)
      {
        *&v146 = v187;
        v61 = v186;
        v62 = v184;
        v63 = v183;
        v64 = v147;

        v65 = v63;
        v57 = v33;
        sub_1E5C30DB8(v65, v62, v64, v61, v146);
      }

      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v66 = v189;
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v67 = v174[0];
      v68 = v136;
      (*(v136 + 16))(v30, v57, v28);
      v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v70 = swift_allocObject();
      v71 = v161;
      *(v70 + 16) = v160;
      *(v70 + 24) = v71;
      (*(v68 + 32))(v70 + v69, v30, v28);
      *&v174[0] = v147;
      *(&v174[0] + 1) = v66;
      v174[1] = v67;
      *&v175 = sub_1E5C30D20;
      *(&v175 + 1) = v70;
      sub_1E5C30DAC(v174);
      v170 = v179;
      v171 = v180;
      v172 = v181;
    }

    else
    {
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v147 = v164;
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      v146 = v188;
      v80 = v189;
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CB00();

      v144 = *(&v174[0] + 1);
      v145 = *&v174[0];
      LODWORD(v143) = LOBYTE(v174[1]);
      v82 = v160;
      v81 = v161;
      v142 = sub_1E5C2E5B4(v33, v160, v161, v83);
      v84 = v33;
      v86 = v85;
      v88 = sub_1E5C2E6EC(v57, v82, v81, v87);
      v90 = v89;
      v92 = sub_1E5C2E824(v84, v82, v81, v91);
      v94 = v93;
      LOBYTE(v82) = sub_1E5C9C440();
      sub_1E5C2BE30();
      swift_getKeyPath();
      sub_1E5C9CAD0();

      sub_1E5C9BDA0();
      *&v174[0] = v147;
      *(v174 + 8) = v146;
      *(&v174[1] + 1) = v80;
      *&v175 = v145;
      *(&v175 + 1) = v144;
      LOBYTE(v176) = v143;
      *(&v176 + 1) = v142;
      *&v177 = v86;
      *(&v177 + 1) = v88;
      *&v178 = v90;
      *(&v178 + 1) = v92;
      *&v179 = v94;
      BYTE8(v179) = v82;
      *&v180 = v95;
      *(&v180 + 1) = v96;
      *&v181 = v97;
      *(&v181 + 1) = v98;
      LOBYTE(v182) = 0;
      sub_1E5C30E08(v174);
      v170 = v179;
      v171 = v180;
      v172 = v181;
    }

    v173 = v182;
    v166 = v175;
    v167 = v176;
    v168 = v177;
    v169 = v178;
    v164 = v174[0];
    v165 = v174[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FB0, &qword_1E5C9E538);
    sub_1E5C2CC98();
    sub_1E5C2CD78();
    sub_1E5C9C280();
    v99 = v195;
    *(v24 + 6) = v194;
    *(v24 + 7) = v99;
    *(v24 + 8) = v196;
    *(v24 + 72) = v197;
    v100 = v191;
    *(v24 + 2) = v190;
    *(v24 + 3) = v100;
    v101 = v193;
    *(v24 + 4) = v192;
    *(v24 + 5) = v101;
    v102 = v189;
    *v24 = v188;
    *(v24 + 1) = v102;
    swift_storeEnumTagMultiPayload();
    sub_1E5C3165C(&v188, v174, &qword_1ED053FA0, &qword_1E5C9E530);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C2CC0C();
    sub_1E5C27F74(&qword_1ED053E38, &qword_1ED053E40, &qword_1E5C9DD30, MEMORY[0x1E697BF38]);
    v103 = v149;
    sub_1E5C9C280();
    v104 = sub_1E5C2CB54();
    v105 = sub_1E5C2CDCC();
    v46 = WitnessTable;
    v45 = v158;
    *&v174[0] = v158;
    *(&v174[0] + 1) = WitnessTable;
    v106 = swift_getOpaqueTypeConformance2();
    v162 = v105;
    v163 = v106;
    v107 = v156;
    v108 = swift_getWitnessTable();
    v56 = v153;
    sub_1E5C45DEC(v103, v152, v107, v104, v108);
    sub_1E5C3177C(&v188, &qword_1ED053FA0, &qword_1E5C9E530);
    sub_1E5C3177C(v103, &qword_1ED053F60, &qword_1E5C9E510);
    goto LABEL_17;
  }

  v34 = v212;
  v35 = *&v213[16];

  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  if (v188 == 1 && v35)
  {

    v36 = sub_1E5C30CAC(&v211);
    v37 = MEMORY[0x1EEE9AC00](v36);
    MEMORY[0x1EEE9AC00](v37);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054008, &unk_1E5CA1230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053E60, &qword_1E5C9DE20);
    sub_1E5C27F74(&qword_1ED054010, &qword_1ED054008, &unk_1E5CA1230, MEMORY[0x1E6981F48]);
    sub_1E5C27F74(&qword_1ED053E70, &qword_1ED053E60, &qword_1E5C9DE20, MEMORY[0x1E697D680]);
    v38 = v142;
    sub_1E5C9C300();

    v39 = v135;
    v40 = v38;
    v41 = v139;
    (*(v135 + 16))(v138, v40, v139);
    swift_storeEnumTagMultiPayload();
    v42 = MEMORY[0x1E697C7C8];
    sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540, MEMORY[0x1E697C7C8]);
    sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0, v42);
    v43 = v140;
    sub_1E5C9C280();
    v44 = sub_1E5C2CDCC();
    v46 = WitnessTable;
    v45 = v158;
    *&v188 = v158;
    *(&v188 + 1) = WitnessTable;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = v144;
    sub_1E5C45DEC(v43, v143, v145, v44, v47);
    sub_1E5C3177C(v43, &qword_1ED053F68, &unk_1E5CA11D0);
    (*(v39 + 8))(v142, v41);
  }

  else if (*(v34 + 16))
  {
    v72 = sub_1E5C30CAC(&v211);
    MEMORY[0x1EEE9AC00](v72);
    v45 = v158;
    v73 = swift_checkMetadataState();
    v74 = v131;
    v46 = WitnessTable;
    sub_1E5C9BBE0();

    *&v188 = v73;
    *(&v188 + 1) = v46;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = v132;
    v77 = v145;
    sub_1E5C28390();
    v78 = *(v133 + 8);
    v78(v74, v77);
    sub_1E5C28390();
    v79 = sub_1E5C2CDCC();
    v48 = v144;
    sub_1E5C45EE4(v74, v143, v77, v79, v75);
    v78(v74, v77);
    v78(v76, v77);
  }

  else
  {

    v110 = v134;
    sub_1E5C9C310();
    sub_1E5C30CAC(&v211);
    v111 = v130;
    v112 = v141;
    (*(v130 + 16))(v138, v110, v141);
    swift_storeEnumTagMultiPayload();
    v113 = MEMORY[0x1E697C7C8];
    sub_1E5C27F74(&qword_1ED053FD0, &qword_1ED053FD8, &qword_1E5C9E540, MEMORY[0x1E697C7C8]);
    sub_1E5C27F74(&qword_1ED053FE0, &qword_1ED053FE8, &unk_1E5CA11E0, v113);
    v114 = v140;
    sub_1E5C9C280();
    v115 = sub_1E5C2CDCC();
    v46 = WitnessTable;
    v45 = v158;
    *&v188 = v158;
    *(&v188 + 1) = WitnessTable;
    v116 = swift_getOpaqueTypeConformance2();
    v48 = v144;
    sub_1E5C45DEC(v114, v143, v145, v115, v116);
    sub_1E5C3177C(v114, &qword_1ED053F68, &unk_1E5CA11D0);
    (*(v111 + 8))(v134, v112);
  }

  v109 = v155;
  v56 = v153;
  v117 = sub_1E5C2CDCC();
  *&v188 = v45;
  *(&v188 + 1) = v46;
  v118 = swift_getOpaqueTypeConformance2();
  v206 = v117;
  v207 = v118;
  v119 = v156;
  v120 = swift_getWitnessTable();
  v121 = v146;
  sub_1E5C28390();
  v122 = sub_1E5C2CB54();
  sub_1E5C45EE4(v121, v152, v119, v122, v120);
  v123 = *(v147 + 8);
  v123(v121, v119);
  v123(v48, v119);
LABEL_20:
  v124 = v154;
  v125 = sub_1E5C2CB54();
  v126 = sub_1E5C2CDCC();
  *&v188 = v45;
  *(&v188 + 1) = v46;
  v127 = swift_getOpaqueTypeConformance2();
  v204 = v126;
  v205 = v127;
  v128 = swift_getWitnessTable();
  v202 = v125;
  v203 = v128;
  swift_getWitnessTable();
  sub_1E5C28390();
  return (*(v124 + 8))(v56, v109);
}

uint64_t (*sub_1E5C2E5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1E5C30E80;
}

uint64_t (*sub_1E5C2E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1E5C30E78;
}

uint64_t (*sub_1E5C2E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SearchView(0, a2, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);
  return sub_1E5C30E10;
}

uint64_t sub_1E5C2E95C(uint64_t a1)
{
  v2 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  sub_1E5C30EF0(a1, v4, type metadata accessor for SearchHint);
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v4);
}

uint64_t sub_1E5C2EA28@<X0>(uint64_t a1@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  result = sub_1E5C9C560();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1E5C2EB00@<X0>(uint64_t a3@<X8>)
{
  sub_1E5C9C1B0();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1E5C9C560();
  v23 = v7;
  v24 = v6;
  v22 = v8;
  v25 = v9;
  sub_1E5C28160();

  v10 = sub_1E5C9C580();
  v12 = v11;
  LOBYTE(ObjCClassFromMetadata) = v13;
  sub_1E5C9C4F0();
  v14 = sub_1E5C9C550();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_1E5C2824C(v10, v12, ObjCClassFromMetadata & 1);

  *a3 = v24;
  *(a3 + 8) = v23;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v25;
  *(a3 + 32) = v14;
  *(a3 + 40) = v16;
  *(a3 + 48) = v18 & 1;
  *(a3 + 56) = v20;
  sub_1E5C281B4(v24, v23, v22 & 1);

  sub_1E5C281B4(v14, v16, v18 & 1);

  sub_1E5C2824C(v14, v16, v18 & 1);

  sub_1E5C2824C(v24, v23, v22 & 1);
}

uint64_t sub_1E5C2ED04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[3] = a5;
  v8 = type metadata accessor for SearchView(0, a2, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  v12 = sub_1E5C9C1B0();
  v17[1] = v13;
  v17[2] = v12;
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v11, v8);
  return sub_1E5C9C8C0();
}

uint64_t sub_1E5C2EE88()
{
  v0 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v3 = v5[1];
  *v2 = v5[0];
  *(v2 + 1) = v3;
  v2[16] = 3;
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v2);
}

uint64_t sub_1E5C2EF80@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a4;
  v132 = a2;
  v110 = a1;
  v123 = a5;
  v7 = sub_1E5C9C3B0();
  v121 = *(v7 - 8);
  v122 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  v128 = a3;
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  swift_getWitnessTable();
  v9 = sub_1E5C9BDB0();
  WitnessTable = swift_getWitnessTable();
  v11 = MEMORY[0x1E69E6370];
  *&v140 = v9;
  *(&v140 + 1) = MEMORY[0x1E69E6370];
  v12 = MEMORY[0x1E69E6388];
  *&v141 = WitnessTable;
  *(&v141 + 1) = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  *&v140 = v9;
  *(&v140 + 1) = v11;
  *&v141 = WitnessTable;
  *(&v141 + 1) = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1E5C2CAD0();
  *&v140 = OpaqueTypeMetadata2;
  *(&v140 + 1) = v14;
  *&v141 = OpaqueTypeConformance2;
  *(&v141 + 1) = v16;
  v112 = swift_getOpaqueTypeMetadata2();
  *&v140 = OpaqueTypeMetadata2;
  *(&v140 + 1) = v14;
  *&v141 = OpaqueTypeConformance2;
  *(&v141 + 1) = v16;
  v114 = swift_getOpaqueTypeConformance2();
  v17 = sub_1E5C9C030();
  v115 = v17;
  v18 = swift_getWitnessTable();
  *&v140 = v17;
  *(&v140 + 1) = v18;
  v116 = v18;
  v117 = MEMORY[0x1E697D378];
  v19 = swift_getOpaqueTypeMetadata2();
  v118 = *(v19 - 8);
  v119 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v111 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v88 - v22;
  v23 = sub_1E5C9C9D0();
  v107 = *(v23 - 8);
  v108 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054018, &qword_1E5C9E6D8) - 8;
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v88 - v25;
  v26 = sub_1E5C9CBA0();
  v100 = *(v26 - 8);
  v101 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054020, &qword_1E5CA4DF0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v95 = &v88 - v29;
  v31 = type metadata accessor for SearchView(0, a3, a4, v30);
  v32 = *(v31 - 8);
  v127 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v88 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054028, &qword_1E5C9E6E0);
  v102 = *(v35 - 8);
  v103 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v94 = &v88 - v36;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054030, &qword_1E5C9E6E8);
  MEMORY[0x1EEE9AC00](v126);
  v98 = &v88 - v37;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F70, &qword_1E5C9E518);
  v133 = *(v109 - 8);
  v38 = MEMORY[0x1EEE9AC00](v109);
  v130 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v134 = &v88 - v40;
  v41 = sub_1E5C9BBA0();
  v124 = *(v41 - 8);
  v125 = v41;
  v99 = *(v124 + 64);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v96 = &v88 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v131 = &v88 - v44;
  sub_1E5C9BB90();
  v45 = v110;

  v46 = v132;
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CB00();

  v139[2] = v142;
  v139[3] = v143;
  v139[4] = v144;
  v139[0] = v140;
  v139[1] = v141;
  v47 = v32;
  v48 = *(v32 + 16);
  v90 = v32 + 16;
  v91 = v48;
  v49 = v31;
  v48(v34, v46, v31);
  v89 = *(v47 + 80);
  v50 = (v89 + 32) & ~v89;
  v92 = v89 | 7;
  v51 = swift_allocObject();
  v52 = v129;
  *(v51 + 16) = v128;
  *(v51 + 24) = v52;
  v88 = *(v47 + 32);
  v93 = v47 + 32;
  v53 = v51 + v50;
  v54 = v34;
  v88(v53, v34, v49);
  sub_1E5C78AC8(v45, v139, sub_1E5C31008, v51, v137);
  v55 = v95;
  static SearchResultScope.makeShelfImpression()();
  v56 = sub_1E5C9CB70();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v97;
  sub_1E5C9CB90();
  sub_1E5C31094();
  v58 = v94;
  sub_1E5C9C5C0();
  (*(v100 + 8))(v57, v101);
  sub_1E5C3177C(v55, &qword_1ED054020, &qword_1E5CA4DF0);
  v144 = v137[4];
  v145 = v137[5];
  v146 = v137[6];
  v147 = v138;
  v140 = v137[0];
  v141 = v137[1];
  v142 = v137[2];
  v143 = v137[3];
  sub_1E5C310E8(&v140);
  v59 = v132;
  LOBYTE(v47) = sub_1E5C2BF98(v49);
  v60 = v105;
  sub_1E5C9C9C0();
  if (v47)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = v104;
  (*(v107 + 32))(v104, v60, v108);
  *&v62[*(v106 + 44)] = v61;
  v63 = v62;
  LOBYTE(v62) = sub_1E5C9C450();
  v64 = v98;
  v65 = &v98[*(v126 + 36)];
  sub_1E5C3113C(v63, v65);
  *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054040, &qword_1E5C9E6F0) + 36)) = v62;
  (*(v102 + 32))(v64, v58, v103);
  v110 = sub_1E5C311AC();
  sub_1E5C9C5B0();
  sub_1E5C22D20(v64);
  v66 = v124;
  v67 = v125;
  v68 = v96;
  (*(v124 + 16))(v96, v131, v125);
  v91(v54, v59, v49);
  v69 = v66;
  v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v71 = (v99 + v89 + v70) & ~v89;
  v72 = swift_allocObject();
  v73 = v129;
  *(v72 + 16) = v128;
  *(v72 + 24) = v73;
  (*(v69 + 32))(v72 + v70, v68, v67);
  v88(v72 + v71, v54, v49);
  swift_checkMetadataState();
  *&v137[0] = sub_1E5C9C020();
  *(&v137[0] + 1) = v74;
  v75 = v120;
  sub_1E5C9C3A0();
  v76 = swift_checkMetadataState();
  v77 = v111;
  v78 = v116;
  sub_1E5C9C6F0();
  (*(v121 + 8))(v75, v122);

  *&v137[0] = v76;
  *(&v137[0] + 1) = v78;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v113;
  v81 = v119;
  sub_1E5C28390();
  v82 = v118;
  v83 = *(v118 + 8);
  v83(v77, v81);
  v84 = v130;
  v85 = v109;
  (*(v133 + 16))(v130, v134, v109);
  *&v137[0] = v84;
  (*(v82 + 16))(v77, v80, v81);
  *(&v137[0] + 1) = v77;
  *&v139[0] = v85;
  *(&v139[0] + 1) = v81;
  v135 = v126;
  v136 = v110;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = v79;
  sub_1E5C2BC60(v137, 2uLL, v139);
  v83(v80, v81);
  v86 = *(v133 + 8);
  v86(v134, v85);
  (*(v124 + 8))(v131, v125);
  v83(v77, v81);
  return (v86)(v130, v85);
}

uint64_t sub_1E5C2FCC8(_OWORD *a1)
{
  v2 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a1[3];
  v11[2] = a1[2];
  v11[3] = v6;
  sub_1E5C2BE30();
  v7 = a1[1];
  *v4 = *a1;
  v4[1] = v7;
  v8 = a1[3];
  v4[2] = a1[2];
  v4[3] = v8;
  swift_storeEnumTagMultiPayload();
  sub_1E5C2A1B8(v11, v10);
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v4);
}

uint64_t sub_1E5C2FDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a5;
  v88 = a3;
  v89 = a2;
  v90 = a1;
  v87 = a6;
  v8 = sub_1E5C9BBA0();
  v84 = *(v8 - 8);
  v85 = v8;
  v86 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5C9BFE0();
  v80 = *(v10 - 8);
  v81 = v10;
  v82 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a4;
  v69 = type metadata accessor for SearchView(0, a4, a5, v12);
  v65 = *(v69 - 8);
  v68 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v60 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
  swift_getTupleTypeMetadata2();
  sub_1E5C9CA60();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E5C9BDB0();
  v67 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  v17 = swift_getWitnessTable();
  v18 = MEMORY[0x1E69E6370];
  *&v105 = v14;
  *(&v105 + 1) = MEMORY[0x1E69E6370];
  v19 = MEMORY[0x1E69E6388];
  *&v106 = v17;
  *(&v106 + 1) = MEMORY[0x1E69E6388];
  v20 = v17;
  v60 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = OpaqueTypeMetadata2;
  v78 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v91 = &v60 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
  v72 = v23;
  *&v105 = v14;
  *(&v105 + 1) = v18;
  *&v106 = v20;
  *(&v106 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = OpaqueTypeConformance2;
  v70 = sub_1E5C2CAD0();
  *&v105 = OpaqueTypeMetadata2;
  *(&v105 + 1) = v23;
  *&v106 = OpaqueTypeConformance2;
  *(&v106 + 1) = v70;
  v75 = MEMORY[0x1E6981448];
  v25 = swift_getOpaqueTypeMetadata2();
  v26 = *(v25 - 8);
  v76 = v25;
  v77 = v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v64 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v74 = &v60 - v29;
  sub_1E5C9C430();
  v30 = v61;
  v31 = v63;
  v92 = v61;
  v93 = v63;
  v32 = v88;
  v94 = v89;
  v95 = v88;
  v96 = v90;
  v33 = v16;
  sub_1E5C9BDC0();
  v34 = v65;
  v35 = v66;
  v36 = v69;
  (*(v65 + 16))(v66, v32, v69);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v30;
  *(v38 + 24) = v31;
  (*(v34 + 32))(v38 + v37, v35, v36);
  sub_1E5C9C6E0();

  (*(v67 + 8))(v33, v14);
  sub_1E5C2BE30();
  swift_getKeyPath();
  sub_1E5C9CAD0();

  v97 = v101;
  v98 = v102;
  v99 = v103;
  v100 = v104;
  v40 = v79;
  v39 = v80;
  v41 = v81;
  (*(v80 + 16))(v79, v90, v81);
  v43 = v83;
  v42 = v84;
  v44 = v85;
  (*(v84 + 16))(v83, v89, v85);
  v45 = v39;
  v46 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v47 = v42;
  v48 = (v82 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v49 = swift_allocObject();
  (*(v45 + 32))(v49 + v46, v40, v41);
  (*(v47 + 32))(v49 + v48, v43, v44);
  v50 = v64;
  v52 = v72;
  v51 = v73;
  v54 = v70;
  v53 = v71;
  v55 = v91;
  sub_1E5C9C750();

  v105 = v97;
  v106 = v98;
  v107 = v99;
  v108 = v100;
  sub_1E5C3177C(&v105, &qword_1ED053F80, &qword_1E5C9E528);
  (*(v78 + 8))(v55, v51);
  *&v101 = v51;
  *(&v101 + 1) = v52;
  *&v102 = v53;
  *(&v102 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  v56 = v74;
  v57 = v76;
  sub_1E5C28390();
  v58 = *(v77 + 8);
  v58(v50, v57);
  sub_1E5C28390();
  return (v58)(v56, v57);
}

uint64_t sub_1E5C305A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v35 = a6;
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F78, &qword_1E5C9E520);
  v31 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v30 - v18);
  v20 = sub_1E5C9C7A0();
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054060, &qword_1E5C9E700) + 52);
  v22 = sub_1E5C9BBA0();
  (*(*(v22 - 8) + 16))(v19 + v21, v32, v22);
  *v19 = v20;
  sub_1E5C9C9F0();
  sub_1E5C9BE50();
  v23 = (v19 + *(v14 + 36));
  v24 = v41;
  *v23 = v40;
  v23[1] = v24;
  v23[2] = v42;
  v26 = type metadata accessor for SearchView(0, a4, a5, v25);
  v27 = sub_1E5C2BF2C(v26);
  v27(v34);

  sub_1E5C28390();
  v28 = *(v8 + 8);
  v28(v11, a4);
  v30 = v17;
  sub_1E5C3165C(v19, v17, &qword_1ED053F78, &qword_1E5C9E520);
  v39[0] = v17;
  (*(v8 + 16))(v11, v13, a4);
  v39[1] = v11;
  v38[0] = v31;
  v38[1] = a4;
  v36 = sub_1E5C316C4();
  v37 = a5;
  sub_1E5C2BC60(v39, 2uLL, v38);
  v28(v13, a4);
  sub_1E5C3177C(v19, &qword_1ED053F78, &qword_1E5C9E520);
  v28(v11, a4);
  return sub_1E5C3177C(v30, &qword_1ED053F78, &qword_1E5C9E520);
}

void sub_1E5C308C8(BOOL *a1@<X8>)
{
  sub_1E5C9BF40();
  v3 = v2;
  sub_1E5C9BF30();
  *a1 = v4 < v3;
}

uint64_t sub_1E5C3090C(uint64_t a1, uint64_t a2)
{
  sub_1E5C9BBA0();
  sub_1E5C31604();
  return sub_1E5C9BFD0();
}

uint64_t sub_1E5C30964()
{
  v0 = type metadata accessor for SearchAction(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C2BE30();
  swift_storeEnumTagMultiPayload();
  sub_1E5C9CAF0();

  return sub_1E5C30C50(v2);
}

void sub_1E5C30A74(uint64_t a1)
{
  sub_1E5C30B5C(319);
  if (v1 <= 0x3F)
  {
    sub_1E5C9BFE0();
    swift_getFunctionTypeMetadata1();
    sub_1E5C9BC20();
    if (v2 <= 0x3F)
    {
      sub_1E5C30C00();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5C30B5C(uint64_t a1)
{
  if (!qword_1EE2C40C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053FF0, qword_1E5C9E5D0);
    sub_1E5C27F74(&qword_1EE2C4098, &qword_1ED053FF0, qword_1E5C9E5D0, MEMORY[0x1E6999B78]);
    v1 = sub_1E5C9BDF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C40C8);
    }
  }
}

void sub_1E5C30C00()
{
  if (!qword_1EE2C40A8)
  {
    v0 = sub_1E5C9C880();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C40A8);
    }
  }
}

uint64_t sub_1E5C30C50(uint64_t a1)
{
  v2 = type metadata accessor for SearchAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C30D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchView(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_1E5C2E95C(a1);
}

void sub_1E5C30DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_1E5C30EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C30F70(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SearchView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

uint64_t sub_1E5C31008(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchView(0, *(v4 + 16), *(v4 + 24), a4);

  return sub_1E5C2FCC8(a1);
}

unint64_t sub_1E5C31094()
{
  result = qword_1ED054038;
  if (!qword_1ED054038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054038);
  }

  return result;
}

uint64_t sub_1E5C3113C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054018, &qword_1E5C9E6D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5C311AC()
{
  result = qword_1ED054048;
  if (!qword_1ED054048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054030, &qword_1E5C9E6E8);
    sub_1E5C31094();
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED054050, &qword_1ED054040, &qword_1E5C9E6F0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054048);
  }

  return result;
}

uint64_t sub_1E5C31290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_1E5C9BBA0() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v11 = *(type metadata accessor for SearchView(0, v5, v6, v10) - 8);
  v12 = v2 + ((v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1E5C2FDA4(a1, v2 + v8, v12, v5, v6, a2);
}

uint64_t objectdestroy_2Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for SearchView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80)));
  sub_1E5C277E8(*v6, v6[1]);
  v7 = v5[11];
  sub_1E5C9BFE0();
  swift_getFunctionTypeMetadata1();
  v8 = sub_1E5C9BC20();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E5C31538()
{
  v1 = *(sub_1E5C9BFE0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E5C9BBA0() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E5C3090C(v0 + v2, v5);
}

unint64_t sub_1E5C31604()
{
  result = qword_1ED053F58;
  if (!qword_1ED053F58)
  {
    sub_1E5C9BBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED053F58);
  }

  return result;
}

uint64_t sub_1E5C3165C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E5C316C4()
{
  result = qword_1ED054068;
  if (!qword_1ED054068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F78, &qword_1E5C9E520);
    sub_1E5C27F74(&qword_1ED054070, &qword_1ED054060, &qword_1E5C9E700, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054068);
  }

  return result;
}

uint64_t sub_1E5C3177C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SearchState.editorialContent.getter()
{
  v1 = *v0;
  sub_1E5C31824(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_1E5C31824(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t SearchState.editorialContent.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1E5C27EC4(*v3, *(v3 + 8), *(v3 + 16));
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

double SearchState.layout.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

double SearchState.layout.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = result;
  return result;
}

uint64_t SearchState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchState(0) + 40);
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchState.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchState(0) + 40);
  v4 = sub_1E5C9BBD0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchState.history.getter()
{
  type metadata accessor for SearchState(0);
}

uint64_t SearchState.history.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchState(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SearchState.platform.setter(char a1)
{
  result = type metadata accessor for SearchState(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t SearchState.results.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchState(0) + 52));
  *&v10[9] = *(v3 + 41);
  v4 = *&v10[9];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  *v10 = v3[2];
  v6 = *v10;
  *a1 = v9[0];
  a1[1] = v5;
  a1[2] = v6;
  *(a1 + 41) = v4;
  return sub_1E5C31CB0(v9, &v8);
}

__n128 SearchState.results.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SearchState(0) + 52));
  *&v8[9] = *(v3 + 41);
  v4 = v3[1];
  v7[0] = *v3;
  v7[1] = v4;
  *v8 = v3[2];
  sub_1E5C30CAC(v7);
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = *(a1 + 32);
  result = *(a1 + 41);
  *(v3 + 41) = result;
  return result;
}

uint64_t SearchState.searchText.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchState(0) + 56));

  return v1;
}

uint64_t SearchState.searchText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchState(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchState.selectedScope.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchState(0) + 60));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v10 = v3[2];
  v6 = v10;
  v11 = v5;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return sub_1E5C31EF0(v9, &v8);
}

uint64_t sub_1E5C31EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 SearchState.selectedScope.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SearchState(0) + 60));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v5 = v3[3];
  v9[2] = v3[2];
  v9[3] = v5;
  sub_1E5C3177C(v9, &qword_1ED053F80, &qword_1E5C9E528);
  v6 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v6;
  result = *(a1 + 32);
  v8 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v8;
  return result;
}

uint64_t SearchState.showingHistoryDeletionDialog.setter(char a1)
{
  result = type metadata accessor for SearchState(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

void SearchState.suggestions.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchState(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_1E5C3210C(v4, v5, v6, v7, v8);
}

void sub_1E5C3210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

__n128 SearchState.suggestions.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = (v1 + *(type metadata accessor for SearchState(0) + 68));
  sub_1E5C30DB8(*v4, v4[1], v4[2], v4[3], v4[4]);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v4[4] = v3;
  return result;
}

double SearchState.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = xmmword_1E5C9DEE0;
  *(a1 + 40) = 0x4018000000000000;
  v2 = type metadata accessor for SearchState(0);
  *(a1 + 48) = 0;
  sub_1E5C9BBC0();
  *(a1 + v2[11]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[12]) = 0;
  v3 = a1 + v2[13];
  *(v3 + 48) = 0;
  result = 0.0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 56) = 2;
  v5 = (a1 + v2[14]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (a1 + v2[15]);
  v6[2] = 0u;
  v6[3] = 0u;
  *v6 = 0u;
  v6[1] = 0u;
  *(a1 + v2[16]) = 0;
  v7 = a1 + v2[17];
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  return result;
}

unint64_t sub_1E5C322CC(char a1)
{
  result = 0x74756F79616CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6E7265746E497369;
      break;
    case 3:
      result = 0x6863726165537369;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7263736275537369;
      break;
    case 6:
      result = 0x656C61636F6CLL;
      break;
    case 7:
      result = 0x79726F74736968;
      break;
    case 8:
      result = 0x6D726F6674616C70;
      break;
    case 9:
      result = 0x73746C75736572;
      break;
    case 10:
      result = 0x6554686372616573;
      break;
    case 11:
      result = 0x64657463656C6573;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0x6974736567677573;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1E5C32478@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C34830(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C324AC(uint64_t a1)
{
  v2 = sub_1E5C32B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C324E8(uint64_t a1)
{
  v2 = sub_1E5C32B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054078, &qword_1E5C9E708);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C32B34();
  sub_1E5C9D130();
  v9 = *(v3 + 16);
  v39 = *v3;
  LOBYTE(v40) = v9;
  LOBYTE(v35) = 0;
  sub_1E5C32B88();
  sub_1E5C9D030();
  if (!v2)
  {
    v10 = *(v3 + 5);
    v39 = *(v3 + 24);
    *&v40 = v10;
    LOBYTE(v35) = 1;
    sub_1E5C32BDC();
    sub_1E5C9D030();
    LOBYTE(v39) = 2;
    sub_1E5C9D010();
    LOBYTE(v39) = 3;
    sub_1E5C9D010();
    LOBYTE(v39) = 4;
    sub_1E5C9D010();
    LOBYTE(v39) = 5;
    sub_1E5C9D010();
    v11 = type metadata accessor for SearchState(0);
    LOBYTE(v39) = 6;
    sub_1E5C9BBD0();
    sub_1E5C34568(&qword_1ED054098, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    sub_1E5C9D030();
    *&v39 = *(v3 + v11[11]);
    LOBYTE(v35) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
    sub_1E5C33628(&qword_1ED0540A8, &qword_1ED0540B0, &protocol conformance descriptor for SearchHistoryItem, MEMORY[0x1E69E6300]);
    sub_1E5C9D030();
    v53[0] = *(v3 + v11[12]);
    v52 = 8;
    sub_1E5C32C30();
    sub_1E5C9D030();
    v12 = (v3 + v11[13]);
    v13 = v12[1];
    v50[0] = *v12;
    v50[1] = v13;
    v15 = *v12;
    v14 = v12[1];
    *v51 = v12[2];
    *&v51[9] = *(v12 + 41);
    v47 = v15;
    v48 = v14;
    v49[0] = v12[2];
    *(v49 + 9) = *(v12 + 41);
    v46 = 9;
    sub_1E5C31CB0(v50, &v39);
    sub_1E5C32C84();
    sub_1E5C9D030();
    v44[0] = v47;
    v44[1] = v48;
    *v45 = v49[0];
    *&v45[9] = *(v49 + 9);
    sub_1E5C30CAC(v44);
    v43 = 10;
    sub_1E5C9D000();
    v16 = (v3 + v11[15]);
    v17 = *v16;
    v18 = v16[2];
    v40 = v16[1];
    v41 = v18;
    v19 = v16[2];
    v42 = v16[3];
    v35 = v17;
    v20 = *v16;
    v36 = v40;
    v37 = v19;
    v38 = v16[3];
    v39 = v20;
    v34 = 11;
    sub_1E5C31EF0(&v39, v33);
    sub_1E5C32CD8();
    sub_1E5C9CFF0();
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_1E5C3177C(v33, &qword_1ED053F80, &qword_1E5C9E528);
    LOBYTE(v28) = 12;
    sub_1E5C9D010();
    v21 = (v3 + v11[17]);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    v28 = *v21;
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v27[7] = 13;
    sub_1E5C3210C(v28, v22, v23, v24, v25);
    sub_1E5C32D2C();
    sub_1E5C9D030();
    sub_1E5C30DB8(v28, v29, v30, v31, v32);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1E5C32B34()
{
  result = qword_1ED054080;
  if (!qword_1ED054080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054080);
  }

  return result;
}

unint64_t sub_1E5C32B88()
{
  result = qword_1ED054088;
  if (!qword_1ED054088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054088);
  }

  return result;
}

unint64_t sub_1E5C32BDC()
{
  result = qword_1ED054090;
  if (!qword_1ED054090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054090);
  }

  return result;
}

unint64_t sub_1E5C32C30()
{
  result = qword_1ED0540B8;
  if (!qword_1ED0540B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540B8);
  }

  return result;
}

unint64_t sub_1E5C32C84()
{
  result = qword_1ED0540C0;
  if (!qword_1ED0540C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540C0);
  }

  return result;
}

unint64_t sub_1E5C32CD8()
{
  result = qword_1ED0540C8;
  if (!qword_1ED0540C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540C8);
  }

  return result;
}

unint64_t sub_1E5C32D2C()
{
  result = qword_1ED0540D0;
  if (!qword_1ED0540D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540D0);
  }

  return result;
}

uint64_t SearchState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_1E5C9BBD0();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540D8, &qword_1E5C9E710);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  *&v63 = &v49 - v6;
  v7 = type metadata accessor for SearchState(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 2;
  *(v10 + 24) = xmmword_1E5C9DEE0;
  *(v10 + 5) = 0x4018000000000000;
  *(v10 + 12) = 0;
  v55 = v8[12];
  sub_1E5C9BBC0();
  v11 = v8[13];
  *&v10[v11] = MEMORY[0x1E69E7CC0];
  v53 = v8[14];
  v54 = v11;
  v10[v53] = 0;
  v12 = &v10[v8[15]];
  *(v12 + 6) = 0;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  v12[56] = 2;
  v13 = &v10[v8[16]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v10[v8[17]];
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v15 = v8[18];
  v10[v15] = 0;
  v16 = v8[19];
  v87 = v10;
  v17 = &v10[v16];
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E5C32B34();
  v19 = v61;
  sub_1E5C9D120();
  if (v19)
  {
    v21 = v87;
    __swift_destroy_boxed_opaque_existential_1(v62);
    v48 = v21;
  }

  else
  {
    *&v61 = v12;
    v50 = v17;
    v51 = v13;
    v20 = v59;
    LOBYTE(v72[0]) = 0;
    sub_1E5C33580();
    sub_1E5C9CFA0();
    v23 = v75;
    v24 = v87;
    *v87 = v74;
    *(v24 + 16) = v23;
    LOBYTE(v72[0]) = 1;
    sub_1E5C335D4();
    sub_1E5C9CFA0();
    v25 = v75;
    *(v24 + 24) = v74;
    *(v24 + 5) = v25;
    LOBYTE(v74) = 2;
    *(v24 + 48) = sub_1E5C9CF80() & 1;
    LOBYTE(v74) = 3;
    *(v24 + 49) = sub_1E5C9CF80() & 1;
    LOBYTE(v74) = 4;
    *(v24 + 50) = sub_1E5C9CF80() & 1;
    LOBYTE(v74) = 5;
    *(v24 + 51) = sub_1E5C9CF80() & 1;
    LOBYTE(v74) = 6;
    sub_1E5C34568(&qword_1ED0540F0, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
    v26 = v57;
    sub_1E5C9CFA0();
    (*(v56 + 40))(v24 + v55, v58, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0540A0, &qword_1E5C9F950);
    LOBYTE(v72[0]) = 7;
    sub_1E5C33628(&qword_1ED0540F8, &qword_1ED054100, &protocol conformance descriptor for SearchHistoryItem, MEMORY[0x1E69E6330]);
    sub_1E5C9CFA0();
    *(v24 + v54) = v74;
    LOBYTE(v72[0]) = 8;
    sub_1E5C336C4();
    sub_1E5C9CFA0();
    *(v24 + v53) = v74;
    v83 = 9;
    sub_1E5C33718();
    sub_1E5C9CFA0();
    v78 = v84;
    v79 = v85;
    v80[0] = *v86;
    *(v80 + 9) = *&v86[9];
    v27 = v61;
    v28 = *(v61 + 16);
    v81[0] = *v61;
    v81[1] = v28;
    *v82 = *(v61 + 32);
    *&v82[9] = *(v61 + 41);
    sub_1E5C30CAC(v81);
    v29 = v79;
    *v27 = v78;
    v27[1] = v29;
    v27[2] = v80[0];
    *(v27 + 41) = *(v80 + 9);
    LOBYTE(v74) = 10;
    v30 = sub_1E5C9CF70();
    v31 = v51;
    *v51 = v30;
    v31[1] = v32;
    v73 = 11;
    sub_1E5C3376C();
    sub_1E5C9CF60();
    v68 = v74;
    v69 = v75;
    v70 = v76;
    v71 = v77;
    v33 = *(v14 + 1);
    v72[0] = *v14;
    v72[1] = v33;
    v34 = *(v14 + 3);
    v72[2] = *(v14 + 2);
    v72[3] = v34;
    sub_1E5C3177C(v72, &qword_1ED053F80, &qword_1E5C9E528);
    v35 = v69;
    *v14 = v68;
    *(v14 + 1) = v35;
    v36 = v71;
    *(v14 + 2) = v70;
    *(v14 + 3) = v36;
    LOBYTE(v65) = 12;
    *(v87 + v15) = sub_1E5C9CF80() & 1;
    v64 = 13;
    sub_1E5C337C0();
    v37 = v60;
    v38 = v63;
    sub_1E5C9CFA0();
    (*(v20 + 8))(v38, v37);
    v39 = v67;
    v40 = v50;
    v41 = *v50;
    v42 = v50[1];
    v43 = v50[2];
    v44 = v50[3];
    v45 = v50[4];
    v63 = v65;
    v61 = v66;
    sub_1E5C30DB8(v41, v42, v43, v44, v45);
    v46 = v61;
    *v40 = v63;
    *(v40 + 1) = v46;
    v40[4] = v39;
    v47 = v87;
    sub_1E5C33ED4(v87, v52, type metadata accessor for SearchState);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v48 = v47;
  }

  return sub_1E5C33F3C(v48, type metadata accessor for SearchState);
}

unint64_t sub_1E5C33580()
{
  result = qword_1ED0540E0;
  if (!qword_1ED0540E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540E0);
  }

  return result;
}

unint64_t sub_1E5C335D4()
{
  result = qword_1ED0540E8;
  if (!qword_1ED0540E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0540E8);
  }

  return result;
}

uint64_t sub_1E5C33628(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0540A0, &qword_1E5C9F950);
    sub_1E5C34568(a2, type metadata accessor for SearchHistoryItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C336C4()
{
  result = qword_1ED054108;
  if (!qword_1ED054108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054108);
  }

  return result;
}

unint64_t sub_1E5C33718()
{
  result = qword_1ED054110;
  if (!qword_1ED054110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054110);
  }

  return result;
}

unint64_t sub_1E5C3376C()
{
  result = qword_1ED054118;
  if (!qword_1ED054118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054118);
  }

  return result;
}

unint64_t sub_1E5C337C0()
{
  result = qword_1ED054120;
  if (!qword_1ED054120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054120);
  }

  return result;
}

uint64_t SearchState.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SearchHistoryItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(a1, v7);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  v8 = *(v1 + 40);
  v32 = *(v1 + 24);
  *&v33 = v8;
  SearchLayout.hash(into:)();
  sub_1E5C9D0F0();
  sub_1E5C9D0F0();
  sub_1E5C9D0F0();
  sub_1E5C9D0F0();
  v9 = type metadata accessor for SearchState(0);
  sub_1E5C9BBD0();
  sub_1E5C34568(&qword_1ED054128, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1E5C9CBB0();
  v30 = v9;
  v31 = v1;
  v10 = *(v1 + *(v9 + 44));
  MEMORY[0x1E69399F0](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v13 = *(v4 + 72);
    do
    {
      sub_1E5C33ED4(v12, v6, type metadata accessor for SearchHistoryItem);
      sub_1E5C9CC60();
      sub_1E5C9BB60();
      sub_1E5C34568(&qword_1ED054130, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1E5C9CBB0();
      sub_1E5C33F3C(v6, type metadata accessor for SearchHistoryItem);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v15 = v30;
  v14 = v31;
  MEMORY[0x1E69399F0](*(v31 + v30[12]));
  v16 = v14 + v15[13];
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  if (*(v16 + 56))
  {
    if (*(v16 + 56) == 1)
    {
      v19 = *(v16 + 48);
      *(&v29 + 1) = *(v16 + 40);
      MEMORY[0x1E69399F0](2);
      sub_1E5C9D0F0();
      if (v17)
      {
        sub_1E5C9CC60();
      }

      sub_1E5C2A580(a1, v18);
      sub_1E5C9CC60();
      sub_1E5C9D0F0();
      if (v19)
      {
        sub_1E5C9CC60();
      }
    }

    else
    {
      MEMORY[0x1E69399F0](0);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
    sub_1E5C9CC60();
  }

  sub_1E5C9CC60();
  v20 = (v14 + v15[15]);
  v21 = v20[1];
  v32 = *v20;
  v33 = v21;
  v22 = v20[3];
  v34 = v20[2];
  v35 = v22;
  if (*(&v21 + 1))
  {
    v23 = *(&v32 + 1);
    v29 = v34;
    v24 = *(&v35 + 1);
    sub_1E5C9D0F0();
    sub_1E5C9D0F0();

    if (v23)
    {

      sub_1E5C9CC60();
    }

    sub_1E5C9CC60();
    MEMORY[0x1E69399F0](v29);
    sub_1E5C9CC60();
    sub_1E5C2A6D0(a1, v24);
    sub_1E5C3177C(&v32, &qword_1ED053F80, &qword_1E5C9E528);
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9D0F0();
  v25 = v14 + v15[17];
  v26 = *(v25 + 16);
  if (!v26)
  {
    return MEMORY[0x1E69399F0](0);
  }

  v27 = *(v25 + 8);
  MEMORY[0x1E69399F0](1);
  sub_1E5C9D0F0();
  if (v27)
  {
    sub_1E5C9CC60();
  }

  sub_1E5C2AB00(a1, v26);
  return sub_1E5C9CC60();
}

uint64_t SearchState.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C33E4C()
{
  sub_1E5C9D0D0();
  SearchState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C33E90(uint64_t a1)
{
  sub_1E5C9D0D0();
  SearchState.hash(into:)(v2);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C33ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5C33F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13FitnessSearch0B5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      if (v4 != 2 || (v3 | v2) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_18;
    }

    if (v4 != 1)
    {
      goto LABEL_47;
    }

    v5 = a1;
    v6 = a2;
    v7 = sub_1E5C767A0(*a1, *a2);
    goto LABEL_11;
  }

  if (*(a2 + 16))
  {
    goto LABEL_47;
  }

  if (*a1 != v2 || *(a1 + 8) != v3)
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_1E5C9D060();
LABEL_11:
    a2 = v6;
    v9 = v7;
    a1 = v5;
    if ((v9 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_18:
  if (*(a1 + 24) != *(a2 + 3) || *(a1 + 32) != *(a2 + 4) || *(a1 + 40) != *(a2 + 5))
  {
    goto LABEL_47;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_47;
  }

  if (*(a1 + 49) != *(a2 + 49))
  {
    goto LABEL_47;
  }

  if (*(a1 + 50) != *(a2 + 50))
  {
    goto LABEL_47;
  }

  if (*(a1 + 51) != *(a2 + 51))
  {
    goto LABEL_47;
  }

  v13 = a1;
  v14 = a2;
  v15 = type metadata accessor for SearchState(0);
  v16 = v13;
  v17 = v14;
  if ((MEMORY[0x1E69384C0](v13 + v15[10], v14 + v15[10]) & 1) == 0)
  {
    goto LABEL_47;
  }

  if ((sub_1E5C76580(*(v13 + v15[11]), *(v14 + v15[11])) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*(v13 + v15[12]) != *(v14 + v15[12]))
  {
    goto LABEL_47;
  }

  v18 = v15[13];
  v19 = *(v13 + v18 + 16);
  v96[0] = *(v13 + v18);
  v96[1] = v19;
  v21 = *(v13 + v18);
  v20 = *(v13 + v18 + 16);
  v97[0] = *(v13 + v18 + 32);
  *(v97 + 9) = *(v13 + v18 + 41);
  *&v75[9] = *(v13 + v18 + 41);
  v73 = v21;
  v74 = v20;
  *v75 = *(v13 + v18 + 32);
  v22 = (v14 + v15[13]);
  *(v100 + 9) = *(v22 + 41);
  v23 = *v22;
  v24 = v22[2];
  v99 = v22[1];
  v100[0] = v24;
  v25 = *v22;
  v98 = v23;
  v93 = v25;
  v94 = v99;
  *v95 = v22[2];
  *&v95[9] = *(v22 + 41);
  sub_1E5C31CB0(v96, &v89);
  sub_1E5C31CB0(&v98, &v89);
  v26 = static SearchResultsState.== infix(_:_:)(&v73, &v93);
  v101[0] = v93;
  v101[1] = v94;
  v102[0] = *v95;
  *(v102 + 9) = *&v95[9];
  sub_1E5C30CAC(v101);
  v103[0] = v73;
  v103[1] = v74;
  v104[0] = *v75;
  *(v104 + 9) = *&v75[9];
  sub_1E5C30CAC(v103);
  if ((v26 & 1) == 0)
  {
    goto LABEL_47;
  }

  v27 = v15[14];
  v28 = *(v16 + v27);
  v29 = *(v16 + v27 + 8);
  v30 = (v14 + v27);
  if (v28 != *v30 || (v31 = v16, v32 = v14, v29 != v30[1]))
  {
    v33 = sub_1E5C9D060();
    v32 = v14;
    v31 = v16;
    if ((v33 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v34 = (v31 + v15[15]);
  v35 = v34[1];
  v89 = *v34;
  v90 = v35;
  v36 = v34[3];
  v91 = v34[2];
  v92 = v36;
  v37 = (v32 + v15[15]);
  v38 = v37[1];
  v93 = *v37;
  v94 = v38;
  v39 = v37[3];
  *v95 = v37[2];
  *&v95[16] = v39;
  v40 = v34[3];
  v85 = v34[2];
  v86 = v40;
  v87 = v89;
  v88 = *(v34 + 2);
  v41 = *(&v90 + 1);
  v84 = *(v37 + 2);
  v42 = *(&v94 + 1);
  v43 = v37[2];
  v82 = v37[3];
  v83 = v93;
  v81 = v43;
  if (*(&v90 + 1))
  {
    v44 = *v34;
    *&v74 = *(v34 + 2);
    *(&v74 + 1) = *(&v90 + 1);
    v45 = v34[3];
    *v75 = v34[2];
    *&v75[16] = v45;
    v72 = v45;
    v73 = v44;
    v69 = v44;
    v70 = v74;
    v71 = *v75;
    if (*(&v94 + 1))
    {
      v65 = *v37;
      v46 = *(v37 + 2);
      v47 = v37[3];
      v67 = v37[2];
      v68 = v47;
      *&v66 = v46;
      *(&v66 + 1) = *(&v94 + 1);
      sub_1E5C31EF0(&v89, v64);
      sub_1E5C31EF0(&v93, v64);
      sub_1E5C31EF0(&v73, v64);
      v48 = static SearchResultScope.== infix(_:_:)();
      v63[0] = v65;
      v63[1] = v66;
      v63[2] = v67;
      v63[3] = v68;
      sub_1E5C2A1F0(v63);
      v64[0] = v69;
      v64[1] = v70;
      v64[2] = v71;
      v64[3] = v72;
      sub_1E5C2A1F0(v64);
      v65 = v87;
      *&v66 = v88;
      *(&v66 + 1) = v41;
      v67 = v85;
      v68 = v86;
      sub_1E5C3177C(&v65, &qword_1ED053F80, &qword_1E5C9E528);
      if ((v48 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v65 = v73;
    v66 = v74;
    v67 = *v75;
    v68 = *&v75[16];
    sub_1E5C31EF0(&v89, v64);
    sub_1E5C31EF0(&v93, v64);
    sub_1E5C31EF0(&v73, v64);
    sub_1E5C2A1F0(&v65);
LABEL_44:
    v73 = v87;
    *&v74 = v88;
    *(&v74 + 1) = v41;
    *v75 = v85;
    *&v75[16] = v86;
    v76 = v83;
    v77 = v84;
    v78 = v42;
    v79 = v81;
    v80 = v82;
    sub_1E5C3177C(&v73, &qword_1ED054150, &unk_1E5CA3E30);
    goto LABEL_47;
  }

  if (*(&v94 + 1))
  {
    sub_1E5C31EF0(&v89, &v73);
    sub_1E5C31EF0(&v93, &v73);
    goto LABEL_44;
  }

  v73 = *v34;
  v74 = *(v34 + 2);
  v49 = v34[3];
  *v75 = v34[2];
  *&v75[16] = v49;
  sub_1E5C31EF0(&v89, &v69);
  sub_1E5C31EF0(&v93, &v69);
  sub_1E5C3177C(&v73, &qword_1ED053F80, &qword_1E5C9E528);
LABEL_46:
  if (*(v16 + v15[16]) == *(v17 + v15[16]))
  {
    v52 = v15[17];
    v53 = *(v16 + v52 + 8);
    v54 = *(v16 + v52 + 16);
    v55 = *(v16 + v52 + 24);
    v56 = *(v16 + v52 + 32);
    *&v73 = *(v16 + v52);
    *(&v73 + 1) = v53;
    *&v74 = v54;
    *(&v74 + 1) = v55;
    *v75 = v56;
    v57 = (v17 + v52);
    v59 = v57[1];
    v60 = v57[2];
    v61 = v57[3];
    v62 = v57[4];
    *&v69 = *v57;
    v58 = v69;
    *(&v69 + 1) = v59;
    *&v70 = v60;
    *(&v70 + 1) = v61;
    *&v71 = v62;
    sub_1E5C3210C(v73, v53, v54, v55, v56);
    sub_1E5C3210C(v58, v59, v60, v61, v62);
    v50 = _s13FitnessSearch0B10HintsStateO2eeoiySbAC_ACtFZ_0(&v73, &v69);
    sub_1E5C30DB8(v69, *(&v69 + 1), v70, *(&v70 + 1), v71);
    sub_1E5C30DB8(v73, *(&v73 + 1), v74, *(&v74 + 1), *v75);
    return v50 & 1;
  }

LABEL_47:
  v50 = 0;
  return v50 & 1;
}

uint64_t sub_1E5C34568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SearchState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5C3472C()
{
  result = qword_1ED054138;
  if (!qword_1ED054138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054138);
  }

  return result;
}

unint64_t sub_1E5C34784()
{
  result = qword_1ED054140;
  if (!qword_1ED054140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054140);
  }

  return result;
}

unint64_t sub_1E5C347DC()
{
  result = qword_1ED054148;
  if (!qword_1ED054148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054148);
  }

  return result;
}

uint64_t sub_1E5C34830(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5CA7C30 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEF646C6975426C61 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6863726165537369 && a2 == 0xEB00000000676E69 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5CA7C50 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000007478 || (sub_1E5C9D060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xED000065706F6353 || (sub_1E5C9D060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E5CA7C70 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    return 13;
  }

  else
  {
    v5 = sub_1E5C9D060();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t SearchHint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5C9BBA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchHint.datasetIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchHint(0) + 20));

  return v1;
}

uint64_t type metadata accessor for SearchHint(uint64_t a1)
{
  result = qword_1EE2C46C8;
  if (!qword_1EE2C46C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchHint.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchHint(0) + 24));

  return v1;
}

uint64_t SearchHint.searchQuery.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchHint(0) + 32));

  return v1;
}

int *SearchHint.init(label:searchQuery:datasetIdentifier:index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1E5C9BB90();
  result = type metadata accessor for SearchHint(0);
  v17 = (a8 + result[5]);
  *v17 = a5;
  v17[1] = a6;
  v18 = (a8 + result[6]);
  *v18 = a1;
  v18[1] = a2;
  *(a8 + result[7]) = a7;
  v19 = (a8 + result[8]);
  *v19 = a3;
  v19[1] = a4;
  return result;
}

unint64_t sub_1E5C34EDC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6C6562616CLL;
  v4 = 0x7865646E69;
  if (v1 != 3)
  {
    v4 = 0x7551686372616573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5C34F70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C360F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C34F98(uint64_t a1)
{
  v2 = sub_1E5C3525C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C34FD4(uint64_t a1)
{
  v2 = sub_1E5C3525C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054158, &qword_1E5C9E958);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C3525C();
  sub_1E5C9D130();
  v8[15] = 0;
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED054168, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1E5C9D030();
  if (!v1)
  {
    type metadata accessor for SearchHint(0);
    v8[14] = 1;
    sub_1E5C9CFD0();
    v8[13] = 2;
    sub_1E5C9D000();
    v8[12] = 3;
    sub_1E5C9D020();
    v8[11] = 4;
    sub_1E5C9D000();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5C3525C()
{
  result = qword_1ED054160;
  if (!qword_1ED054160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054160);
  }

  return result;
}

uint64_t SearchHint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E5C9BBA0();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054170, &qword_1E5C9E960);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for SearchHint(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C3525C();
  v30 = v8;
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v26;
  v35 = 0;
  sub_1E5C35E38(&qword_1ED054178, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v13 = v27;
  sub_1E5C9CFA0();
  (*(v12 + 32))(v11, v13, v4);
  v34 = 1;
  v14 = sub_1E5C9CF40();
  v15 = &v11[v9[5]];
  *v15 = v14;
  v15[1] = v16;
  v33 = 2;
  v17 = sub_1E5C9CF70();
  v18 = &v11[v9[6]];
  *v18 = v17;
  v18[1] = v19;
  v32 = 3;
  *&v11[v9[7]] = sub_1E5C9CF90();
  v31 = 4;
  v20 = sub_1E5C9CF70();
  v22 = v21;
  (*(v28 + 8))(v30, v29);
  v23 = &v11[v9[8]];
  *v23 = v20;
  v23[1] = v22;
  sub_1E5C35724(v11, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5C35788(v11);
}

uint64_t sub_1E5C35724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C35788(uint64_t a1)
{
  v2 = type metadata accessor for SearchHint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchHint.hash(into:)(uint64_t a1)
{
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5C9CBB0();
  v2 = type metadata accessor for SearchHint(0);
  if (*(v1 + *(v2 + 20) + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v1 + *(v2 + 28)));

  return sub_1E5C9CC60();
}

uint64_t SearchHint.hashValue.getter()
{
  sub_1E5C9D0D0();
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5C9CBB0();
  v1 = type metadata accessor for SearchHint(0);
  if (*(v0 + *(v1 + 20) + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v0 + *(v1 + 28)));
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C35A54(uint64_t a1, int *a2)
{
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5C9CBB0();
  if (*(v2 + a2[5] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + a2[7]));

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C35B60(uint64_t a1, int *a2)
{
  sub_1E5C9D0D0();
  sub_1E5C9BBA0();
  sub_1E5C35E38(&qword_1ED053F58, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1E5C9CBB0();
  if (*(v2 + a2[5] + 8))
  {
    sub_1E5C9D0F0();
    sub_1E5C9CC60();
  }

  else
  {
    sub_1E5C9D0F0();
  }

  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + a2[7]));
  sub_1E5C9CC60();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C35C74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5C9BBA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s13FitnessSearch0B4HintV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5C9BB80() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SearchHint(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v8 && v7 == v9;
  if (!v10 && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_1E5C9D060() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v16 = v4[8];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if (v17 == *v19 && v18 == v19[1])
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t sub_1E5C35E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E5C35EF0(uint64_t a1)
{
  sub_1E5C9BBA0();
  if (v1 <= 0x3F)
  {
    sub_1E5C35F88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5C35F88()
{
  if (!qword_1EE2C4088)
  {
    v0 = sub_1E5C9CE20();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C4088);
    }
  }
}

unint64_t sub_1E5C35FEC()
{
  result = qword_1ED054188;
  if (!qword_1ED054188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054188);
  }

  return result;
}

unint64_t sub_1E5C36044()
{
  result = qword_1ED054190;
  if (!qword_1ED054190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054190);
  }

  return result;
}

unint64_t sub_1E5C3609C()
{
  result = qword_1ED054198;
  if (!qword_1ED054198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054198);
  }

  return result;
}

uint64_t sub_1E5C360F0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5CA7C10 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7551686372616573 && a2 == 0xEB00000000797265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

unint64_t SearchScopeCategory.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F772D6F69647561;
    v6 = 0x6974696C61646F6DLL;
    if (a1 != 2)
    {
      v6 = 1701736302;
    }

    if (a1)
    {
      v5 = 0x697461746964656DLL;
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
    v1 = 0x7372656E69617274;
    v2 = 0x2D72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7374756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6C75736552706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5C363E0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SearchScopeCategory.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SearchScopeCategory.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E5C9D060();
  }

  return v8 & 1;
}

unint64_t sub_1E5C36468@<X0>(Swift::String *a1@<X0>, FitnessSearch::SearchScopeCategory_optional *a2@<X8>)
{
  result = _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_1E5C36498@<X0>(unint64_t *a1@<X8>)
{
  result = SearchScopeCategory.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E5C36574()
{
  v1 = *v0;
  sub_1E5C9D0D0();
  SearchScopeCategory.rawValue.getter(v1);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C365D8(uint64_t a1)
{
  SearchScopeCategory.rawValue.getter(*v1);
  sub_1E5C9CC60();
}

uint64_t sub_1E5C3662C(uint64_t a1)
{
  v2 = *v1;
  sub_1E5C9D0D0();
  SearchScopeCategory.rawValue.getter(v2);
  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

unint64_t _s13FitnessSearch0B13ScopeCategoryO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E5C9CF10();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5C366DC()
{
  result = qword_1ED0541A0;
  if (!qword_1ED0541A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541A0);
  }

  return result;
}

unint64_t sub_1E5C36740()
{
  result = qword_1ED0541A8;
  if (!qword_1ED0541A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541A8);
  }

  return result;
}

uint64_t SearchResultsRequest.term.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsRequest.init(term:method:mode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 17) = a4 & 1;
  return result;
}

uint64_t sub_1E5C367E8()
{
  v1 = 0x646F6874656DLL;
  if (*v0 != 1)
  {
    v1 = 1701080941;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836213620;
  }
}

uint64_t sub_1E5C36830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C374B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C36858(uint64_t a1)
{
  v2 = sub_1E5C36AA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C36894(uint64_t a1)
{
  v2 = sub_1E5C36AA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchResultsRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0541B0, &qword_1E5C9ECD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1E5C36AA4();
  sub_1E5C9D130();
  v22 = 0;
  sub_1E5C9D000();
  if (!v2)
  {
    v13 = v16;
    v21 = v17;
    v20 = 1;
    sub_1E5C36AF8();
    sub_1E5C9D030();
    v19 = v13;
    v18 = 2;
    sub_1E5C36B4C();
    sub_1E5C9D030();
  }

  return (*(v5 + 8))(v7, v12);
}

unint64_t sub_1E5C36AA4()
{
  result = qword_1ED0541B8;
  if (!qword_1ED0541B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541B8);
  }

  return result;
}

unint64_t sub_1E5C36AF8()
{
  result = qword_1ED0541C0;
  if (!qword_1ED0541C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541C0);
  }

  return result;
}

unint64_t sub_1E5C36B4C()
{
  result = qword_1ED0541C8;
  if (!qword_1ED0541C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541C8);
  }

  return result;
}

uint64_t SearchResultsRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0541D0, &qword_1E5C9ECD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C36AA4();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v9 = sub_1E5C9CF70();
  v11 = v10;
  v12 = v9;
  v19 = 1;
  sub_1E5C36DE4();
  sub_1E5C9CFA0();
  v16 = v20;
  v17 = 2;
  sub_1E5C36E38();
  sub_1E5C9CFA0();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 17) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5C36DE4()
{
  result = qword_1ED0541D8;
  if (!qword_1ED0541D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541D8);
  }

  return result;
}

unint64_t sub_1E5C36E38()
{
  result = qword_1ED0541E0;
  if (!qword_1ED0541E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541E0);
  }

  return result;
}

uint64_t SearchResultsRequest.hash(into:)(uint64_t a1)
{
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  sub_1E5C9CC60();
}

uint64_t SearchResultsRequest.hashValue.getter()
{
  sub_1E5C9D0D0();
  sub_1E5C9CC60();
  sub_1E5C9CC60();

  sub_1E5C9CC60();

  return sub_1E5C9D110();
}

uint64_t sub_1E5C370E0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v5[9] = *v0;
  v5[10] = v1;
  v6 = v2;
  v7 = v3;
  sub_1E5C9D0D0();
  SearchResultsRequest.hash(into:)(v5);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C37140(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v6[9] = *v1;
  v6[10] = v2;
  v7 = v3;
  v8 = v4;
  sub_1E5C9D0D0();
  SearchResultsRequest.hash(into:)(v6);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B14ResultsRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (sub_1E5C9D060()) && (sub_1E5C76194(v2, v4))
  {
    if (v3)
    {
      v7 = 0x6E656D6572636E69;
    }

    else
    {
      v7 = 0x6574656C706D6F63;
    }

    if (v3)
    {
      v8 = 0xEB000000006C6174;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v5)
    {
      v9 = 0x6E656D6572636E69;
    }

    else
    {
      v9 = 0x6574656C706D6F63;
    }

    if (v5)
    {
      v10 = 0xEB000000006C6174;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E5C9D060();
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1E5C3729C()
{
  result = qword_1ED0541E8;
  if (!qword_1ED0541E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541E8);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5C37304(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1E5C3734C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5C373B0()
{
  result = qword_1ED0541F0;
  if (!qword_1ED0541F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541F0);
  }

  return result;
}

unint64_t sub_1E5C37408()
{
  result = qword_1ED0541F8;
  if (!qword_1ED0541F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0541F8);
  }

  return result;
}

unint64_t sub_1E5C37460()
{
  result = qword_1ED054200;
  if (!qword_1ED054200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054200);
  }

  return result;
}

uint64_t sub_1E5C374B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C375D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4C676E69646E6570;
    v6 = 0x50676E69646E6570;
    if (a1 != 2)
    {
      v6 = 0x676E6973756170;
    }

    if (a1)
    {
      v5 = 0x676E6964616F6CLL;
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
    v1 = 0x64656C696166;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0x696C6C65636E6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x646573756170;
    if (a1 != 4)
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1E5C37710(uint64_t a1)
{
  v2 = sub_1E5C3854C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C3774C(uint64_t a1)
{
  v2 = sub_1E5C3854C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5C38910(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5C377C4(uint64_t a1)
{
  v2 = sub_1E5C384F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37800(uint64_t a1)
{
  v2 = sub_1E5C384F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3783C(uint64_t a1)
{
  v2 = sub_1E5C38648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37878(uint64_t a1)
{
  v2 = sub_1E5C38648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C378B4(uint64_t a1)
{
  v2 = sub_1E5C385F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C378F0(uint64_t a1)
{
  v2 = sub_1E5C385F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C3792C(uint64_t a1)
{
  v2 = sub_1E5C38798();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37968(uint64_t a1)
{
  v2 = sub_1E5C38798();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C379A4(uint64_t a1)
{
  v2 = sub_1E5C3869C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C379E0(uint64_t a1)
{
  v2 = sub_1E5C3869C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37A1C(uint64_t a1)
{
  v2 = sub_1E5C386F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37A58(uint64_t a1)
{
  v2 = sub_1E5C386F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37A94(uint64_t a1)
{
  v2 = sub_1E5C385A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37AD0(uint64_t a1)
{
  v2 = sub_1E5C385A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37B0C(uint64_t a1)
{
  v2 = sub_1E5C387EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37B48(uint64_t a1)
{
  v2 = sub_1E5C387EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C37B84(uint64_t a1)
{
  v2 = sub_1E5C38744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C37BC0(uint64_t a1)
{
  v2 = sub_1E5C38744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchContentAssetLoadStatus.encode(to:)(void *a1, int a2)
{
  LODWORD(v68) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054208, &qword_1E5C9EF00);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054210, &qword_1E5C9EF08);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054218, &qword_1E5C9EF10);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054220, &qword_1E5C9EF18);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054228, &qword_1E5C9EF20);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054230, &qword_1E5C9EF28);
  v67 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v66 = &v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054238, &qword_1E5C9EF30);
  v65 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v64 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054240, &qword_1E5C9EF38);
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054248, &qword_1E5C9EF40);
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054250, &qword_1E5C9EF48);
  v19 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C384F8();
  v69 = v21;
  sub_1E5C9D130();
  v22 = (v19 + 8);
  v23 = v68;
  if (v68 <= 3u)
  {
    v61 = v16;
    v68 = v22;
    v30 = v62;
    v29 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v73 = 2;
        sub_1E5C38744();
        v38 = v31;
        v40 = v69;
        v39 = v70;
        sub_1E5C9CFC0();
        (*(v32 + 8))(v38, v45);
      }

      else
      {
        v74 = 3;
        sub_1E5C386F0();
        v42 = v33;
        v40 = v69;
        v39 = v70;
        sub_1E5C9CFC0();
        (*(v34 + 8))(v42, v46);
      }
    }

    else
    {
      if (!v23)
      {
        v71[0] = 0;
        sub_1E5C387EC();
        v35 = v69;
        v36 = v70;
        sub_1E5C9CFC0();
        (*(v30 + 8))(v18, v61);
        return (*v68)(v35, v36);
      }

      v72 = 1;
      sub_1E5C38798();
      v40 = v69;
      v39 = v70;
      sub_1E5C9CFC0();
      (*(v29 + 8))(v15, v13);
    }

    return (*v68)(v40, v39);
  }

  else
  {
    if (v68 <= 5u)
    {
      if (v68 == 4)
      {
        v75 = 4;
        sub_1E5C3869C();
        v41 = v47;
        v25 = v69;
        v26 = v70;
        sub_1E5C9CFC0();
        (*(v48 + 8))(v41, v49);
      }

      else
      {
        v76 = 5;
        sub_1E5C38648();
        v43 = v50;
        v25 = v69;
        v26 = v70;
        sub_1E5C9CFC0();
        (*(v51 + 8))(v43, v52);
      }
    }

    else
    {
      if (v68 == 6)
      {
        v77 = 6;
        sub_1E5C385F4();
        v24 = v53;
        v25 = v69;
        v26 = v70;
        sub_1E5C9CFC0();
        v28 = v54;
        v27 = v55;
      }

      else if (v68 == 7)
      {
        v78 = 7;
        sub_1E5C385A0();
        v24 = v56;
        v25 = v69;
        v26 = v70;
        sub_1E5C9CFC0();
        v28 = v57;
        v27 = v58;
      }

      else
      {
        v79 = 8;
        sub_1E5C3854C();
        v24 = v59;
        v25 = v69;
        v26 = v70;
        sub_1E5C9CFC0();
        v28 = v60;
        v27 = v61;
      }

      (*(v28 + 8))(v24, v27);
    }

    return (*v22)(v25, v26);
  }
}

unint64_t sub_1E5C384F8()
{
  result = qword_1ED054258;
  if (!qword_1ED054258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054258);
  }

  return result;
}

unint64_t sub_1E5C3854C()
{
  result = qword_1ED054260;
  if (!qword_1ED054260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054260);
  }

  return result;
}

unint64_t sub_1E5C385A0()
{
  result = qword_1ED054268;
  if (!qword_1ED054268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054268);
  }

  return result;
}

unint64_t sub_1E5C385F4()
{
  result = qword_1ED054270;
  if (!qword_1ED054270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054270);
  }

  return result;
}

unint64_t sub_1E5C38648()
{
  result = qword_1ED054278;
  if (!qword_1ED054278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054278);
  }

  return result;
}

unint64_t sub_1E5C3869C()
{
  result = qword_1ED054280;
  if (!qword_1ED054280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054280);
  }

  return result;
}

unint64_t sub_1E5C386F0()
{
  result = qword_1ED054288;
  if (!qword_1ED054288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054288);
  }

  return result;
}

unint64_t sub_1E5C38744()
{
  result = qword_1ED054290;
  if (!qword_1ED054290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054290);
  }

  return result;
}

unint64_t sub_1E5C38798()
{
  result = qword_1ED054298;
  if (!qword_1ED054298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054298);
  }

  return result;
}

unint64_t sub_1E5C387EC()
{
  result = qword_1ED0542A0;
  if (!qword_1ED0542A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542A0);
  }

  return result;
}

char *sub_1E5C38858@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5C38C08(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SearchContentAssetLoadStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C38910(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C676E69646E6570 && a2 == 0xEB0000000064616FLL;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50676E69646E6570 && a2 == 0xEC00000065737561 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6973756170 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1E5C9D060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5CA7C90 == a2 || (sub_1E5C9D060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696C6C65636E6163 && a2 == 0xEA0000000000676ELL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

char *sub_1E5C38C08(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054358, &qword_1E5C9F800);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054360, &qword_1E5C9F808);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054368, &qword_1E5C9F810);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054370, &qword_1E5C9F818);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v47 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054378, &qword_1E5C9F820);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v72 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054380, &qword_1E5C9F828);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v71 = &v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054388, &qword_1E5C9F830);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v67 = &v47 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054390, &qword_1E5C9F838);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054398, &qword_1E5C9F840);
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A0, &qword_1E5C9F848);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  v22 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E5C384F8();
  v23 = v75;
  sub_1E5C9D120();
  if (!v23)
  {
    v48 = v17;
    v47 = v15;
    v24 = v14;
    v25 = v71;
    v26 = v72;
    v27 = v73;
    v75 = v19;
    v49 = v21;
    v28 = sub_1E5C9CFB0();
    v29 = (2 * *(v28 + 16)) | 1;
    v76 = v28;
    v77 = v28 + 32;
    v78 = 0;
    v79 = v29;
    v30 = sub_1E5C3AA24();
    if (v30 != 9 && v78 == v79 >> 1)
    {
      v21 = v30;
      if (v30 <= 3u)
      {
        v31 = v49;
        if (v30 > 1u)
        {
          if (v30 == 2)
          {
            v80 = 2;
            sub_1E5C38744();
            v45 = v67;
            sub_1E5C9CF20();
            (*(v53 + 8))(v45, v54);
          }

          else
          {
            v80 = 3;
            sub_1E5C386F0();
            sub_1E5C9CF20();
            (*(v55 + 8))(v25, v56);
          }

          (*(v75 + 8))(v31, v18);
          goto LABEL_29;
        }

        v32 = v75;
        if (v30)
        {
          v80 = 1;
          sub_1E5C38798();
          sub_1E5C9CF20();
          v42 = *(v51 + 8);
          v43 = v24;
          v44 = &v81;
        }

        else
        {
          v80 = 0;
          sub_1E5C387EC();
          v41 = v48;
          sub_1E5C9CF20();
          v42 = *(v50 + 8);
          v43 = v41;
          v44 = &v79;
        }
      }

      else
      {
        v31 = v49;
        if (v30 > 5u)
        {
          v32 = v75;
          if (v30 == 6)
          {
            v80 = 6;
            sub_1E5C385F4();
            v33 = v68;
            sub_1E5C9CF20();
            v35 = v61;
            v34 = v62;
          }

          else
          {
            if (v30 != 7)
            {
              v80 = 8;
              sub_1E5C3854C();
              v46 = v70;
              sub_1E5C9CF20();
              (*(v65 + 8))(v46, v66);
LABEL_28:
              (*(v32 + 8))(v31, v18);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v74);
              return v21;
            }

            v80 = 7;
            sub_1E5C385A0();
            v33 = v69;
            sub_1E5C9CF20();
            v35 = v63;
            v34 = v64;
          }

          goto LABEL_26;
        }

        v32 = v75;
        if (v30 != 4)
        {
          v80 = 5;
          sub_1E5C38648();
          v33 = v27;
          sub_1E5C9CF20();
          v35 = v59;
          v34 = v60;
LABEL_26:
          v42 = *(v35 + 8);
          v43 = v33;
          goto LABEL_27;
        }

        v80 = 4;
        sub_1E5C3869C();
        sub_1E5C9CF20();
        v42 = *(v58 + 8);
        v43 = v26;
        v44 = &v82;
      }

      v34 = *(v44 - 32);
LABEL_27:
      v42(v43, v34);
      goto LABEL_28;
    }

    v36 = sub_1E5C9CE90();
    v21 = swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850);
    *v38 = &type metadata for SearchContentAssetLoadStatus;
    v39 = v49;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    (*(v75 + 8))(v39, v18);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v21;
}

unint64_t sub_1E5C396D0()
{
  result = qword_1ED0542A8;
  if (!qword_1ED0542A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542A8);
  }

  return result;
}

unint64_t sub_1E5C397D8()
{
  result = qword_1ED0542B0;
  if (!qword_1ED0542B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542B0);
  }

  return result;
}

unint64_t sub_1E5C39830()
{
  result = qword_1ED0542B8;
  if (!qword_1ED0542B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542B8);
  }

  return result;
}

unint64_t sub_1E5C39888()
{
  result = qword_1ED0542C0;
  if (!qword_1ED0542C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542C0);
  }

  return result;
}

unint64_t sub_1E5C398E0()
{
  result = qword_1ED0542C8;
  if (!qword_1ED0542C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542C8);
  }

  return result;
}

unint64_t sub_1E5C39938()
{
  result = qword_1ED0542D0;
  if (!qword_1ED0542D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542D0);
  }

  return result;
}

unint64_t sub_1E5C39990()
{
  result = qword_1ED0542D8;
  if (!qword_1ED0542D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542D8);
  }

  return result;
}

unint64_t sub_1E5C399E8()
{
  result = qword_1ED0542E0;
  if (!qword_1ED0542E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542E0);
  }

  return result;
}

unint64_t sub_1E5C39A40()
{
  result = qword_1ED0542E8;
  if (!qword_1ED0542E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542E8);
  }

  return result;
}

unint64_t sub_1E5C39A98()
{
  result = qword_1ED0542F0;
  if (!qword_1ED0542F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542F0);
  }

  return result;
}

unint64_t sub_1E5C39AF0()
{
  result = qword_1ED0542F8;
  if (!qword_1ED0542F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0542F8);
  }

  return result;
}

unint64_t sub_1E5C39B48()
{
  result = qword_1ED054300;
  if (!qword_1ED054300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054300);
  }

  return result;
}

unint64_t sub_1E5C39BA0()
{
  result = qword_1ED054308;
  if (!qword_1ED054308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054308);
  }

  return result;
}

unint64_t sub_1E5C39BF8()
{
  result = qword_1ED054310;
  if (!qword_1ED054310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054310);
  }

  return result;
}

unint64_t sub_1E5C39C50()
{
  result = qword_1ED054318;
  if (!qword_1ED054318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054318);
  }

  return result;
}

unint64_t sub_1E5C39CA8()
{
  result = qword_1ED054320;
  if (!qword_1ED054320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054320);
  }

  return result;
}

unint64_t sub_1E5C39D00()
{
  result = qword_1ED054328;
  if (!qword_1ED054328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054328);
  }

  return result;
}

unint64_t sub_1E5C39D58()
{
  result = qword_1ED054330;
  if (!qword_1ED054330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054330);
  }

  return result;
}

unint64_t sub_1E5C39DB0()
{
  result = qword_1ED054338;
  if (!qword_1ED054338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054338);
  }

  return result;
}

unint64_t sub_1E5C39E08()
{
  result = qword_1ED054340;
  if (!qword_1ED054340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054340);
  }

  return result;
}

unint64_t sub_1E5C39E60()
{
  result = qword_1ED054348;
  if (!qword_1ED054348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054348);
  }

  return result;
}

unint64_t sub_1E5C39EB8()
{
  result = qword_1ED054350;
  if (!qword_1ED054350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054350);
  }

  return result;
}

Swift::Bool __swiftcall SearchState.isFetching(term:)(Swift::String term)
{
  object = term._object;
  countAndFlagsBits = term._countAndFlagsBits;
  v4 = v1 + *(type metadata accessor for SearchState(0) + 52);
  if (*(v4 + 56))
  {
    return 0;
  }

  if (*v4 == countAndFlagsBits && *(v4 + 8) == object)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

uint64_t SearchState.withLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E5C3A0B0(v2, a2);
  v5 = *(type metadata accessor for SearchState(0) + 40);
  v6 = sub_1E5C9BBD0();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t sub_1E5C3A0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double SearchState.withResults(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v10 = *a1;
  v11 = v4;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  sub_1E5C3A0B0(v2, a2);
  v5 = (a2 + *(type metadata accessor for SearchState(0) + 52));
  *&v14[9] = *(v5 + 41);
  v6 = v5[1];
  v13[0] = *v5;
  v13[1] = v6;
  *v14 = v5[2];
  sub_1E5C31CB0(&v10, &v9);
  sub_1E5C30CAC(v13);
  v7 = v11;
  *v5 = v10;
  v5[1] = v7;
  v5[2] = v12[0];
  result = *(v12 + 9);
  *(v5 + 41) = *(v12 + 9);
  return result;
}

__n128 SearchState.withLayout(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v4 = a1[1].n128_u64[0];
  sub_1E5C3A0B0(v2, a2);
  result = v6;
  *(a2 + 24) = v6;
  *(a2 + 40) = v4;
  return result;
}

uint64_t SearchState.withPlatform(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1E5C3A0B0(v2, a2);
  result = type metadata accessor for SearchState(0);
  *(a2 + *(result + 48)) = a1;
  return result;
}

uint64_t SearchState.withSubscription(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1E5C3A0B0(v2, a2);
  *(a2 + 51) = a1;
  return result;
}

uint64_t SearchState.withIsInternalBuild(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1E5C3A0B0(v2, a2);
  *(a2 + 48) = a1;
  return result;
}

Swift::Void __swiftcall SearchState.clearResults()()
{
  v1 = type metadata accessor for SearchState(0);
  v2 = v0 + *(v1 + 52);
  *&v8[9] = *(v2 + 41);
  v3 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v3;
  *v8 = *(v2 + 32);
  sub_1E5C30CAC(v7);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = 2;
  v4 = (v0 + *(v1 + 60));
  v5 = v4[1];
  v9[0] = *v4;
  v9[1] = v5;
  v6 = v4[3];
  v9[2] = v4[2];
  v9[3] = v6;
  sub_1E5C3A36C(v9);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
}

uint64_t sub_1E5C3A36C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchState.searchQuery.getter()
{
  v1 = 0;
  v2 = v0 + *(type metadata accessor for SearchState(0) + 52);
  if (*(v2 + 56) == 1)
  {
    v1 = *(v2 + 24);
  }

  return v1;
}

unint64_t SearchState.pageState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SearchState(0);
  if (*(v1 + *(result + 48)) == 2)
  {
    if (*(v1 + 49))
    {
      v4 = (v1 + *(result + 52));
      v5 = *v4;
      result = v4[1];
      v6 = v4[2];
      if (*(v4 + 56))
      {
        if (*(v4 + 56) == 1)
        {
          v8 = v4[3];
          v7 = v4[4];
          if (*(v6 + 16))
          {
            v9 = *(v6 + 48);
            v49 = *(v6 + 32);
            v50 = v9;
            v10 = *(v6 + 80);
            v51 = *(v6 + 64);
            v52 = v10;
            v40 = v50;
            v42 = v49;
            v36 = v10;
            v38 = v51;
            v11 = result;
            sub_1E5C2A1B8(&v49, &v45);
            v13 = v36;
            v12 = v38;
            v15 = v40;
            v14 = v42;
            result = v11;
          }

          else
          {
            v14 = 0uLL;
            v15 = 0uLL;
            v12 = 0uLL;
            v13 = 0uLL;
          }

          *a1 = v8;
          *(a1 + 8) = v7;
          *(a1 + 16) = v5;
          *(a1 + 24) = result;
          *(a1 + 32) = v14;
          *(a1 + 48) = v15;
          *(a1 + 64) = v12;
          *(a1 + 80) = v13;
          *(a1 + 96) = 2;
        }

        goto LABEL_12;
      }

      *a1 = v5;
      goto LABEL_16;
    }

LABEL_12:
    *a1 = 1;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0;
LABEL_13:
    *(a1 + 96) = 3;
    return result;
  }

  if (!*(v1 + 49))
  {
    goto LABEL_12;
  }

  v16 = result;
  v17 = (v1 + *(result + 52));
  v18 = *v17;
  result = v17[1];
  v6 = v17[2];
  if (!*(v17 + 56))
  {
    *a1 = v18;
LABEL_16:
    *(a1 + 8) = result;
    *(a1 + 16) = v6;
    *(a1 + 96) = 1;
    goto LABEL_27;
  }

  if (*(v17 + 56) == 1)
  {
    v20 = v17[3];
    v19 = v17[4];
    v21 = (v1 + v16[15]);
    v22 = v21[1];
    v49 = *v21;
    v50 = v22;
    v23 = v21[3];
    v51 = v21[2];
    v52 = v23;
    if (*(&v22 + 1))
    {
      v24 = v49;
      v26 = v51;
      v25 = v52;
      v27 = v50;
    }

    else if (*(v6 + 16))
    {
      v31 = *(v6 + 48);
      v45 = *(v6 + 32);
      v46 = v31;
      v32 = *(v6 + 80);
      v47 = *(v6 + 64);
      v48 = v32;
      v41 = v45;
      v43 = v46;
      v37 = v47;
      v39 = v32;
      v33 = result;
      sub_1E5C2A1B8(&v45, v44);
      v26 = v37;
      v25 = v39;
      v24 = v41;
      v27 = v43;
      result = v33;
    }

    else
    {
      v24 = 0uLL;
      v27 = 0uLL;
      v26 = 0uLL;
      v25 = 0uLL;
    }

    *a1 = v20;
    *(a1 + 8) = v19;
    *(a1 + 16) = v18;
    *(a1 + 24) = result;
    *(a1 + 32) = v24;
    *(a1 + 48) = v27;
    *(a1 + 64) = v26;
    *(a1 + 80) = v25;
    *(a1 + 96) = 2;
    sub_1E5C31EF0(&v49, &v45);
  }

  v28 = v1 + v16[17];
  if (*(v28 + 16))
  {
    v30 = v28 + 24;
    v29 = *(v28 + 24);
    result = *(v30 + 8);
  }

  else
  {
    v34 = (v1 + v16[14]);
    v29 = *v34;
    result = v34[1];
    v35 = HIBYTE(result) & 0xF;
    if ((result & 0x2000000000000000) == 0)
    {
      v35 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v35)
    {
      *a1 = 2;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      goto LABEL_13;
    }
  }

  *a1 = v29;
  *(a1 + 8) = result;
  *(a1 + 96) = 0;
LABEL_27:
}